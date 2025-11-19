void sub_1B545645C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  *(v41 - 128) = &a41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v41 - 128));
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ReadSymbolTable@<X0>(void *a1@<X0>, int a2@<W1>, const std::string *a3@<X2>, uint64_t *a4@<X8>)
{
  if (!a2)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v26);
    memset(&__p, 0, sizeof(__p));
    v7 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v8 = std::locale::use_facet(v24, v7);
      v9 = (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(v24);
      v10 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &__p, v9);
      if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
      {
        v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_32:
        if (v18 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        fst::SymbolTableTextOptions::SymbolTableTextOptions(&__p);
        fst::SymbolTable::ReadText();
      }

      kaldi::Trim(&__p);
      std::operator+<char>();
      v11 = std::string::append(&v23, ">");
      v25 = v11->__r_.__value_.__r.__words[2];
      *&v24[0].__locale_ = *&v11->__r_.__value_.__l.__data_;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      locale = HIBYTE(v25);
      v14 = SHIBYTE(v25);
      if (v25 < 0)
      {
        locale = v24[1].__locale_;
      }

      if (size != locale)
      {
        break;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v25 >= 0)
      {
        v16 = v24;
      }

      else
      {
        v16 = v24[0].__locale_;
      }

      v17 = memcmp(p_p, v16, size) == 0;
      if (v14 < 0)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v17)
      {
        goto LABEL_32;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
    }

    v17 = 0;
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    operator delete(v24[0].__locale_);
    goto LABEL_21;
  }

  result = fst::SymbolTable::Read(a1, a3);
  *a4 = result;
  return result;
}

void sub_1B54568FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::locale a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a30);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Encdec::ReadMapped(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 520))
  {
    kaldi::ReadMapped<kaldi::quasar::Encdec>(a2);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Nnet already mapped from a file");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::ReadMapped<kaldi::quasar::Encdec>(uint64_t a1)
{
  v18[34] = *MEMORY[0x1E69E9840];
  v8 = 0;
  kaldi::Input::Input(v7, a1, &v8);
  if (v8)
  {
    v2 = kaldi::Input::Stream(v7);
    std::istream::seekg();
    std::istream::tellg();
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    std::istream::seekg();
    fst::MappedFile::Map(v2, a1, v18[16]);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Memory mapping failed. Not a valid Kaldi binary file: ", 54);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
}

void sub_1B5456BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Encdec::SetMappedFile(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 520))
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v5, 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Nnet already mapped from a file - ignoring", 42);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v5);
    }
  }

  else
  {
    v2 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 520) = v2;
    v4 = *(a1 + 528);
    *(a1 + 528) = v3;
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1B5456CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Encdec::Read(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    fst::FstReadOptions::FstReadOptions(__p, a2, 0, 0, 0);
    v8 = 2;
    kaldi::quasar::Encdec::ReadMapped(a1, __p);
  }

  v6 = 0;
  kaldi::Input::Input(__p, a2, &v6);
  v4 = kaldi::Input::Stream(__p);
  kaldi::quasar::Encdec::Read(a1, v4, v6, 0, 0);
  kaldi::Input::~Input(__p);
  return 1;
}

void sub_1B5456DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v233 = *MEMORY[0x1E69E9840];
  memset(v229, 0, sizeof(v229));
  memset(&v228, 0, sizeof(v228));
  memset(&v227, 0, sizeof(v227));
  memset(&v226, 0, sizeof(v226));
  *(a1 + 1507) = 0;
  v8 = *(a1 + 552);
  *(a1 + 552) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 560);
  *(a1 + 560) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v205 = 0;
  v201 = (a1 + 1008);
  v202 = (a1 + 984);
  __str = (a1 + 960);
  while ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
  {
    kaldi::ReadToken(a2, a3, v229);
    if ((SHIBYTE(v229[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v229[2]) <= 0xFu)
      {
        if (HIBYTE(v229[2]) <= 0xBu)
        {
          if (HIBYTE(v229[2]) == 10)
          {
            if (v229[0] == 0x636F567475706E49 && LOWORD(v229[1]) == 25185)
            {
              goto LABEL_203;
            }
          }

          else if (HIBYTE(v229[2]) == 11 && v229[0] == 0x6F5674757074754FLL && *(v229 + 3) == 0x6261636F56747570)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (HIBYTE(v229[2]) != 12)
          {
            if (HIBYTE(v229[2]) != 14)
            {
              if (HIBYTE(v229[2]) == 15)
              {
                v17 = v229[0] == 0x5374756F64616552 && *(v229 + 7) == 0x7864497472617453;
                v18 = a1 + 2124;
                if (v17)
                {
                  goto LABEL_411;
                }

                v19 = v229[0] == 0x4974756F64616552 && *(v229 + 7) == 0x7274537475706E49;
                v20 = a1 + 1984;
                if (v19)
                {
                  goto LABEL_292;
                }
              }

              goto LABEL_395;
            }

            if (v229[0] == 0x6F73736572707345 && *(v229 + 6) == 0x656E69676E456F73)
            {
              goto LABEL_289;
            }

            if (v229[0] == 0x6E69646465626D45 && *(v229 + 6) == 0x6870617247676E69)
            {
              goto LABEL_151;
            }

LABEL_278:
            v68 = v229;
LABEL_391:
            v84 = *v68;
            v85 = *(v68 + 6);
            if (v84 == 0x6E614C7475706E49 && v85 == 0x6870617247676E61)
            {
              memset(&__s, 0, sizeof(__s));
              memset(&v225, 0, sizeof(v225));
              kaldi::ReadToken(a2, a3, &__s);
              kaldi::ReadToken(a2, a3, &v225);
              std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v225);
              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1 + 440, &__p.__r_.__value_.__l.__data_);
              goto LABEL_397;
            }

            goto LABEL_395;
          }

          if (v229[0] == 0x4774756F64616552 && LODWORD(v229[1]) == 1752195442)
          {
            goto LABEL_291;
          }

          v44 = v229[0] == 0x477265646F636E45 && LODWORD(v229[1]) == 1752195442;
          v20 = a1 + 80;
          if (v44)
          {
            goto LABEL_292;
          }

          v45 = v229[0] == 0x477265646F636544 && LODWORD(v229[1]) == 1752195442;
          v20 = a1 + 104;
          if (v45)
          {
            goto LABEL_292;
          }
        }
      }

      else if (HIBYTE(v229[2]) > 0x12u)
      {
        switch(HIBYTE(v229[2]))
        {
          case 0x13u:
            if (v229[0] == 0x5374757074754F3CLL && v229[1] == 0x6261546C6F626D79 && *(&v229[1] + 3) == 0x3E656C6261546C6FLL)
            {
              goto LABEL_192;
            }

            break;
          case 0x14u:
            if (v229[0] == 0x6D79537475706E49 && v229[1] == 0x656C6261546C6F62 && LODWORD(v229[2]) == 1701603654)
            {
              goto LABEL_287;
            }

            break;
          case 0x15u:
            if (v229[0] == 0x795374757074754FLL && v229[1] == 0x6C6261546C6F626DLL && *(&v229[1] + 5) == 0x656C6946656C6261)
            {
              goto LABEL_293;
            }

            if (v229[0] == 0x457265646F636E45 && v229[1] == 0x456F737365727073 && *(&v229[1] + 5) == 0x656E69676E456F73)
            {
              goto LABEL_295;
            }

            if (v229[0] == 0x457265646F636544 && v229[1] == 0x456F737365727073 && *(&v229[1] + 5) == 0x656E69676E456F73)
            {
              goto LABEL_134;
            }

            break;
        }
      }

      else if (HIBYTE(v229[2]) == 16)
      {
        v46 = v229[0] == 0x4F74756F64616552 && v229[1] == 0x7274537475707475;
        v20 = a1 + 2008;
        if (v46)
        {
          goto LABEL_292;
        }

        if (v229[0] == 0x4C7265646F636E45 && v229[1] == 0x6870617247676E61)
        {
LABEL_297:
          memset(&__s, 0, sizeof(__s));
          memset(&v225, 0, sizeof(v225));
          kaldi::ReadToken(a2, a3, &__s);
          kaldi::ReadToken(a2, a3, &v225);
          std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v225);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
          goto LABEL_385;
        }

        if (v229[0] == 0x4C7265646F636544 && v229[1] == 0x6870617247676E61)
        {
          goto LABEL_384;
        }
      }

      else if (HIBYTE(v229[2]) == 17)
      {
        if (v229[0] == 0x7265766F646E6148 && v229[1] == 0x70617247676E614CLL && LOBYTE(v229[2]) == 104)
        {
          goto LABEL_373;
        }
      }

      else
      {
        v10 = v229[0] == 0x79537475706E493CLL && v229[1] == 0x6C6261546C6F626DLL;
        if (v10 && LOWORD(v229[2]) == 15973)
        {
          goto LABEL_213;
        }

        v13 = v229[0] == 0x5774756F64616552 && v229[1] == 0x6D74666F53687469 && LOWORD(v229[2]) == 30817;
        v14 = (a1 + 2128);
        if (v13)
        {
          goto LABEL_409;
        }
      }

      goto LABEL_395;
    }

    v15 = v229[1];
    if (v229[1] <= 17)
    {
      if (v229[1] <= 11)
      {
        if (v229[1] == 10)
        {
          if (*v229[0] == 0x636F567475706E49 && *(v229[0] + 4) == 25185)
          {
LABEL_203:
            kaldi::ReadToken(a2, a3, &v228);
            v217[0] = 0;
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v225, a1);
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v224.__pn_, &v228);
            std::__fs::filesystem::operator/[abi:ne200100](&v224, &v225, &__s);
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __s;
            }

            kaldi::Input::Input(&v223, &__p, v217);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v224.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v224.__pn_.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
            }

            v73 = kaldi::Input::Stream(&v223);
            kaldi::quasar::Vocab::Vocab(&__s, v73, v217[0], 1);
            operator new();
          }

          goto LABEL_395;
        }

        if (v229[1] == 11)
        {
          if (*v229[0] == 0x6F5674757074754FLL && *(v229[0] + 3) == 0x6261636F56747570)
          {
LABEL_96:
            kaldi::ReadToken(a2, a3, &v227);
            v217[0] = 0;
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v225, a1);
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v224.__pn_, &v227);
            std::__fs::filesystem::operator/[abi:ne200100](&v224, &v225, &__s);
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __s;
            }

            kaldi::Input::Input(&v223, &__p, v217);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v224.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v224.__pn_.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
            }

            v74 = kaldi::Input::Stream(&v223);
            kaldi::quasar::Vocab::Vocab(&__s, v74, v217[0], 1);
            operator new();
          }

          goto LABEL_395;
        }

LABEL_224:
        if (v15 == 15)
        {
          v58 = *v229[0] == 0x5374756F64616552 && *(v229[0] + 7) == 0x7864497472617453;
          v18 = a1 + 2124;
          if (v58)
          {
            goto LABEL_411;
          }

          v15 = v229[1];
        }

        if (v15 != 18)
        {
          goto LABEL_238;
        }

        goto LABEL_231;
      }

      if (v229[1] == 12)
      {
        if (*v229[0] == 0x4774756F64616552 && *(v229[0] + 2) == 1752195442)
        {
LABEL_291:
          *(a1 + 1507) = 1;
          v20 = a1 + 128;
          goto LABEL_292;
        }
      }

      else
      {
        if (v229[1] != 14)
        {
          goto LABEL_224;
        }

        if (*v229[0] == 0x6F73736572707345 && *(v229[0] + 6) == 0x656E69676E456F73)
        {
LABEL_289:
          memset(&__s, 0, sizeof(__s));
          kaldi::ReadToken(a2, a3, &__s);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v222, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            v222 = __s;
          }

          kaldi::quasar::Encdec::ParseEnginePlatform(&v222, &__p);
          *(a1 + 1080) = __p.__r_.__value_.__r.__words[0];
          if (*(a1 + 983) < 0)
          {
            operator delete(__str->__r_.__value_.__l.__data_);
          }

          *&__str->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__r.__words[1];
          *(a1 + 976) = v231;
          HIBYTE(v231) = 0;
          __p.__r_.__value_.__s.__data_[8] = 0;
          if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
          {
            v72 = v222.__r_.__value_.__r.__words[0];
LABEL_400:
            operator delete(v72);
            goto LABEL_401;
          }

          goto LABEL_401;
        }

        if (*v229[0] == 0x6E69646465626D45 && *(v229[0] + 6) == 0x6870617247676E69)
        {
LABEL_151:
          *(a1 + 1508) = 1;
          v20 = a1 + 56;
LABEL_292:
          kaldi::ReadToken(a2, a3, v20);
          goto LABEL_412;
        }
      }

LABEL_223:
      v15 = v229[1];
      goto LABEL_224;
    }

    if (v229[1] > 19)
    {
      if (v229[1] == 20)
      {
        if (*v229[0] == 0x6D79537475706E49 && *(v229[0] + 1) == 0x656C6261546C6F62 && *(v229[0] + 4) == 1701603654)
        {
LABEL_287:
          kaldi::ReadToken(a2, a3, &v228);
          std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v224.__pn_, a1);
          std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v223.__pn_, &v228);
          std::__fs::filesystem::operator/[abi:ne200100](&v223, &v224, &v225);
          if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__s, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
          }

          else
          {
            __s = v225;
          }

          fst::SymbolTableTextOptions::SymbolTableTextOptions(&__p);
          Text = fst::SymbolTable::ReadText(&__s);
          v76 = *(a1 + 552);
          *(a1 + 552) = Text;
          if (v76)
          {
            (*(*v76 + 8))(v76);
          }

          if (SHIBYTE(v231) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v225.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v223.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v223.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v224.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v224.__pn_.__r_.__value_.__l.__data_);
          }

          *(a1 + 812) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<s>");
          *(a1 + 816) = (*(**(a1 + 552) + 104))(*(a1 + 552), "</s>");
          *(a1 + 820) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<unk>");
          if (kaldi::g_kaldi_verbose_level >= 1)
          {
LABEL_218:
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
            v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input symbol table size ", 24);
            v56 = (*(**(a1 + 552) + 120))(*(a1 + 552));
            MEMORY[0x1B8C84C30](v55, v56);
LABEL_359:
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
            goto LABEL_412;
          }

          goto LABEL_412;
        }

        goto LABEL_395;
      }

      if (v229[1] != 21)
      {
        goto LABEL_224;
      }

      if (*v229[0] == 0x795374757074754FLL && *(v229[0] + 1) == 0x6C6261546C6F626DLL && *(v229[0] + 13) == 0x656C6946656C6261)
      {
LABEL_293:
        kaldi::ReadToken(a2, a3, &v227);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v224.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v223.__pn_, &v227);
        std::__fs::filesystem::operator/[abi:ne200100](&v223, &v224, &v225);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__s, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
        }

        else
        {
          __s = v225;
        }

        fst::SymbolTableTextOptions::SymbolTableTextOptions(&__p);
        v77 = fst::SymbolTable::ReadText(&__s);
        v78 = *(a1 + 560);
        *(a1 + 560) = v77;
        if (v78)
        {
          (*(*v78 + 8))(v78);
        }

        if (SHIBYTE(v231) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v223.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__pn_.__r_.__value_.__l.__data_);
        }

        *(a1 + 824) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<s>");
        *(a1 + 828) = (*(**(a1 + 560) + 104))(*(a1 + 560), "</s>");
        *(a1 + 832) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<unk>");
        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          goto LABEL_358;
        }

        goto LABEL_412;
      }

      if (*v229[0] == 0x457265646F636E45 && *(v229[0] + 1) == 0x456F737365727073 && *(v229[0] + 13) == 0x656E69676E456F73)
      {
LABEL_295:
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v221, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v221 = __s;
        }

        kaldi::quasar::Encdec::ParseEnginePlatform(&v221, &__p);
        *(a1 + 1088) = __p.__r_.__value_.__r.__words[0];
        if (*(a1 + 1007) < 0)
        {
          operator delete(v202->__r_.__value_.__l.__data_);
        }

        *&v202->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__r.__words[1];
        *(a1 + 1000) = v231;
        HIBYTE(v231) = 0;
        __p.__r_.__value_.__s.__data_[8] = 0;
        if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
        {
          v72 = v221.__r_.__value_.__r.__words[0];
          goto LABEL_400;
        }

LABEL_401:
        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_412;
        }

        v87 = __s.__r_.__value_.__r.__words[0];
LABEL_403:
        operator delete(v87);
        goto LABEL_412;
      }

      if (*v229[0] == 0x457265646F636544 && *(v229[0] + 1) == 0x456F737365727073 && *(v229[0] + 13) == 0x656E69676E456F73)
      {
LABEL_134:
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v220, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v220 = __s;
        }

        kaldi::quasar::Encdec::ParseEnginePlatform(&v220, &__p);
        *(a1 + 1096) = __p.__r_.__value_.__r.__words[0];
        if (*(a1 + 1031) < 0)
        {
          operator delete(v201->__r_.__value_.__l.__data_);
        }

        *&v201->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__r.__words[1];
        *(a1 + 1024) = v231;
        HIBYTE(v231) = 0;
        __p.__r_.__value_.__s.__data_[8] = 0;
        if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
        {
          v72 = v220.__r_.__value_.__r.__words[0];
          goto LABEL_400;
        }

        goto LABEL_401;
      }

      goto LABEL_223;
    }

    if (v229[1] != 18)
    {
      if (*v229[0] == 0x5374757074754F3CLL && *(v229[0] + 1) == 0x6261546C6F626D79 && *(v229[0] + 11) == 0x3E656C6261546C6FLL)
      {
LABEL_192:
        std::string::basic_string[abi:ne200100]<0>(&__p, "OutputSymbolTable");
        kaldi::quasar::ReadSymbolTable(a2, a3, &__p, &__s);
        v50 = *(a1 + 560);
        *(a1 + 560) = __s.__r_.__value_.__r.__words[0];
        if (v50)
        {
          (*(*v50 + 8))(v50);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *(a1 + 824) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<s>");
        *(a1 + 828) = (*(**(a1 + 560) + 104))(*(a1 + 560), "</s>");
        *(a1 + 832) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<unk>");
        if (kaldi::g_kaldi_verbose_level >= 1)
        {
LABEL_358:
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Output symbol table size ", 25);
          v80 = (*(**(a1 + 560) + 120))(*(a1 + 560));
          MEMORY[0x1B8C84C30](v79, v80);
          goto LABEL_359;
        }

        goto LABEL_412;
      }

      goto LABEL_395;
    }

    if (*v229[0] == 0x79537475706E493CLL && *(v229[0] + 1) == 0x6C6261546C6F626DLL && *(v229[0] + 8) == 15973)
    {
LABEL_213:
      std::string::basic_string[abi:ne200100]<0>(&__p, "InputSymbolTable");
      kaldi::quasar::ReadSymbolTable(a2, a3, &__p, &__s);
      v54 = *(a1 + 552);
      *(a1 + 552) = __s.__r_.__value_.__r.__words[0];
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(a1 + 812) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<s>");
      *(a1 + 816) = (*(**(a1 + 552) + 104))(*(a1 + 552), "</s>");
      *(a1 + 820) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<unk>");
      if (kaldi::g_kaldi_verbose_level >= 1)
      {
        goto LABEL_218;
      }

      goto LABEL_412;
    }

LABEL_231:
    v60 = *v229[0] == 0x5774756F64616552 && *(v229[0] + 1) == 0x6D74666F53687469 && *(v229[0] + 8) == 30817;
    v14 = (a1 + 2128);
    if (v60)
    {
      goto LABEL_409;
    }

LABEL_238:
    if (v229[1] == 16)
    {
      v62 = *v229[0] == 0x4F74756F64616552 && *(v229[0] + 1) == 0x7274537475707475;
      v20 = a1 + 2008;
      if (v62)
      {
        goto LABEL_292;
      }
    }

    else if (v229[1] == 15)
    {
      v61 = *v229[0] == 0x4974756F64616552 && *(v229[0] + 7) == 0x7274537475706E49;
      v20 = a1 + 1984;
      if (v61)
      {
        goto LABEL_292;
      }
    }

    if (v229[1] == 16)
    {
      if (*v229[0] == 0x4C7265646F636E45 && *(v229[0] + 1) == 0x6870617247676E61)
      {
        goto LABEL_297;
      }
    }

    else if (v229[1] == 12)
    {
      v63 = *v229[0] == 0x477265646F636E45 && *(v229[0] + 2) == 1752195442;
      v20 = a1 + 80;
      if (v63)
      {
        goto LABEL_292;
      }
    }

    if (v229[1] != 12)
    {
      goto LABEL_276;
    }

    v71 = *v229[0] == 0x477265646F636544 && *(v229[0] + 2) == 1752195442;
    v20 = a1 + 104;
    if (v71)
    {
      goto LABEL_292;
    }

    if ((HIBYTE(v229[2]) & 0x80) != 0)
    {
LABEL_276:
      if (v229[1] == 16)
      {
        if (*v229[0] == 0x4C7265646F636544 && *(v229[0] + 1) == 0x6870617247676E61)
        {
LABEL_384:
          memset(&__s, 0, sizeof(__s));
          memset(&v225, 0, sizeof(v225));
          kaldi::ReadToken(a2, a3, &__s);
          kaldi::ReadToken(a2, a3, &v225);
          std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v225);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1 + 392, &__p.__r_.__value_.__l.__data_);
LABEL_385:
          if (v232 < 0)
          {
            operator delete(v231);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_398:
          if ((SHIBYTE(v225.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_401;
          }

          v72 = v225.__r_.__value_.__r.__words[0];
          goto LABEL_400;
        }

        if ((HIBYTE(v229[2]) & 0x80) == 0)
        {
          goto LABEL_277;
        }
      }

      if (v229[1] == 14)
      {
        v68 = v229[0];
        goto LABEL_391;
      }

      if (v229[1] == 17)
      {
        if (*v229[0] == 0x7265766F646E6148 && *(v229[0] + 1) == 0x70617247676E614CLL && *(v229[0] + 16) == 104)
        {
LABEL_373:
          memset(&__s, 0, sizeof(__s));
          memset(&v225, 0, sizeof(v225));
          kaldi::ReadToken(a2, a3, &__s);
          kaldi::ReadToken(a2, a3, &v225);
          std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v225);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1 + 416, &__p.__r_.__value_.__l.__data_);
          goto LABEL_385;
        }

        if ((HIBYTE(v229[2]) & 0x80) == 0)
        {
LABEL_277:
          if (HIBYTE(v229[2]) == 14)
          {
            goto LABEL_278;
          }
        }
      }
    }

LABEL_395:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "EncoderLangFunc"))
    {
      memset(&__s, 0, sizeof(__s));
      memset(&v225, 0, sizeof(v225));
      kaldi::ReadToken(a2, a3, &__s);
      kaldi::ReadToken(a2, a3, &v225);
      std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v225);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1 + 464, &__p.__r_.__value_.__l.__data_);
LABEL_397:
      std::pair<std::string,std::string>::~pair(&__p);
      goto LABEL_398;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "Mmap"))
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      kaldi::ReadBasicType<BOOL>(a2, a3, &__p);
      goto LABEL_412;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "AddSrcBos"))
    {
      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 1510));
      v205 = 1;
      goto LABEL_412;
    }

    v88 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "AddSrcEos");
    v14 = (a1 + 1511);
    if (v88)
    {
      goto LABEL_409;
    }

    v89 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "PadSrc");
    v18 = a1 + 848;
    if (v89)
    {
      goto LABEL_411;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "PadSrcConfigs"))
    {
      memset(&__p, 0, sizeof(__p));
      memset(&__s, 0, sizeof(__s));
      kaldi::ReadToken(a2, a3, &__p);
      kaldi::SplitStringToVector(&__p, ",", 1, &__s);
      size = __s.__r_.__value_.__l.__size_;
      for (i = __s.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        LODWORD(v225.__r_.__value_.__l.__data_) = std::stoi(i, 0, 10);
        std::vector<int>::push_back[abi:ne200100]((a1 + 856), &v225);
      }

      v225.__r_.__value_.__r.__words[0] = &__s;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v225);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ConfigNames"))
    {
      memset(&__p, 0, sizeof(__p));
      kaldi::ReadToken(a2, a3, &__p);
      kaldi::SplitStringToVector(&__p, ",", 1, a1 + 880);
    }

    else
    {
      v92 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "MaxSrcTokens");
      v18 = a1 + 904;
      if (v92)
      {
        goto LABEL_411;
      }

      v93 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "Reverse");
      v14 = (a1 + 1504);
      if (v93)
      {
        goto LABEL_409;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "IsRNN"))
      {
        __s.__r_.__value_.__s.__data_[0] = 0;
        kaldi::ReadBasicType<BOOL>(a2, a3, &__s);
        if (__s.__r_.__value_.__s.__data_[0] == 1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model type.", 35);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "UseAttention"))
      {
        __s.__r_.__value_.__s.__data_[0] = 0;
        kaldi::ReadBasicType<BOOL>(a2, a3, &__s);
        if (__s.__r_.__value_.__s.__data_[0] == 1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model type.", 35);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "UseTopK"))
      {
        __s.__r_.__value_.__s.__data_[0] = 0;
        kaldi::ReadBasicType<BOOL>(a2, a3, &__s);
        if (__s.__r_.__value_.__s.__data_[0] == 1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model type.", 35);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ModelBatchSize"))
      {
        kaldi::ReadBasicType<int>(a2, a3, a1 + 840);
        *(a1 + 844) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "BPEEncoder"))
      {
        kaldi::ReadToken(a2, a3, &v226);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v224.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v223.__pn_, &v226);
        std::__fs::filesystem::operator/[abi:ne200100](&v223, &v224, &v225);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__s, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
        }

        else
        {
          __s = v225;
        }

        std::ifstream::basic_ifstream(&__p);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v223.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__pn_.__r_.__value_.__l.__data_);
        }

        if ((kaldi::quasar::BPE::Read(a1 + 568, &__p, 1) & 1) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__s);
          v197 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__s, "Failed to read BPE model from : ", 32);
          if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v198 = &v226;
          }

          else
          {
            v198 = v226.__r_.__value_.__r.__words[0];
          }

          if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v199 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v199 = v226.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, v198, v199);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__s);
        }

        *(a1 + 1505) = 1;
        std::ifstream::~ifstream(&__p);
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "<BPE>"))
      {
        if ((kaldi::quasar::BPE::Read(a1 + 568, a2, a3) & 1) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to read embedded BPE model", 33);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
          v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "BPE read - entries: ", 20);
          MEMORY[0x1B8C84C00](v94, *(a1 + 616));
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        *(a1 + 1505) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "AddTag"))
      {
        kaldi::ReadToken(a2, a3, a1 + 2384);
LABEL_459:
        *(a1 + 2376) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "TagFormat"))
      {
        kaldi::ReadToken(a2, a3, a1 + 2408);
        goto LABEL_459;
      }

      v95 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "IsEspresso");
      v14 = (a1 + 1512);
      if (v95)
      {
        goto LABEL_409;
      }

      v96 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "SourceInputStr");
      v20 = a1 + 1744;
      if (v96)
      {
        goto LABEL_292;
      }

      v97 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "TargetInputStr");
      v20 = a1 + 1768;
      if (v97)
      {
        goto LABEL_292;
      }

      v98 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "EncoderValuesStr");
      v20 = a1 + 1672;
      if (v98)
      {
        goto LABEL_292;
      }

      v99 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "InputNetValuesStr");
      v20 = a1 + 1960;
      if (v99)
      {
        goto LABEL_292;
      }

      v100 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ScoresStr");
      v20 = a1 + 1720;
      if (v100)
      {
        goto LABEL_292;
      }

      v101 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ShortlistStr");
      v20 = a1 + 1888;
      if (v101)
      {
        goto LABEL_292;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ShortlistFile"))
      {
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s);
        v218 = 0;
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v224.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v223.__pn_, &__s);
        std::__fs::filesystem::operator/[abi:ne200100](&v223, &v224, &v225);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v225;
        }

        kaldi::Input::Input(v217, &__p, &v218);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v223.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__pn_.__r_.__value_.__l.__data_);
        }

        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading Shortlist file...", 25);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        v102 = kaldi::Input::Stream(v217);
        kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataInOneFile(v102, v218, 0);
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "<Shortlist>"))
      {
        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading Shortlist...", 20);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v216, a1);
        kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataBasedOnTagInInput(a2, a3, a4, &v216);
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ReadoutNnetFile"))
      {
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s);
        v218 = 0;
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v224.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v223.__pn_, &__s);
        std::__fs::filesystem::operator/[abi:ne200100](&v223, &v224, &v225);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v225;
        }

        kaldi::Input::Input(v217, &__p, &v218);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v223.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__pn_.__r_.__value_.__l.__data_);
        }

        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading readout Nnet file...", 28);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        v103 = kaldi::Input::Stream(v217);
        kaldi::nnet1::Nnet::Read((a1 + 1128), v103, v218);
        *(a1 + 1506) = 1;
        kaldi::Input::~Input(v217);
        goto LABEL_401;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "<ReadoutNnet>"))
      {
        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading readout Nnet...", 23);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        kaldi::nnet1::Nnet::Read((a1 + 1128), a2, a3);
        *(a1 + 1506) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "AlignmentLayerStr"))
      {
        kaldi::ReadToken(a2, a3, a1 + 1912);
        *(a1 + 2164) = 1;
        goto LABEL_412;
      }

      v104 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "AlignmentHeads");
      v18 = a1 + 2152;
      if (v104)
      {
        goto LABEL_411;
      }

      v105 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ShiftedAlignments");
      v14 = (a1 + 2165);
      if (v105)
      {
        goto LABEL_409;
      }

      v106 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "TransposeSourceInput");
      v14 = (a1 + 1513);
      if (v106)
      {
        goto LABEL_409;
      }

      v107 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "TwoDimSourceInput");
      v14 = (a1 + 1514);
      if (v107)
      {
        goto LABEL_409;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "HandoverStrings"))
      {
        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, a3, &__p);
        kaldi::SplitStringToVector(&__p, ",", 1, a1 + 2056);
      }

      else
      {
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "StateStrings"))
        {
          v108 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "StateWidth");
          v18 = a1 + 2456;
          if (!v108)
          {
            v109 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "StateLayoutND");
            v14 = (a1 + 2460);
            if (!v109)
            {
              v110 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "NeedsPosition");
              v14 = (a1 + 1515);
              if (!v110)
              {
                v111 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "NeedsEncoderPositions");
                v14 = (a1 + 1516);
                if (!v111)
                {
                  v112 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "NeedsEncoderOut");
                  v14 = (a1 + 1517);
                  if (!v112)
                  {
                    v113 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "PositionZeroBased");
                    v14 = (a1 + 1518);
                    if (!v113)
                    {
                      v114 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "ApplyLog");
                      v14 = (a1 + 1519);
                      if (!v114)
                      {
                        v115 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "PositionScaleStr");
                        v20 = a1 + 1864;
                        if (v115)
                        {
                          goto LABEL_292;
                        }

                        v116 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "NoSymbolTables");
                        v14 = (a1 + 2461);
                        if (!v116)
                        {
                          v117 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "EncoderExplicitConfigFunctions");
                          v14 = (a1 + 1520);
                          if (!v117)
                          {
                            v118 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v229, "EncoderLangSrcOnly");
                            v14 = (a1 + 1521);
                            if (!v118)
                            {
                              kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                              v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
                              if (SHIBYTE(v229[2]) >= 0)
                              {
                                v120 = v229;
                              }

                              else
                              {
                                v120 = v229[0];
                              }

                              if (SHIBYTE(v229[2]) >= 0)
                              {
                                v121 = HIBYTE(v229[2]);
                              }

                              else
                              {
                                v121 = v229[1];
                              }

                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v120, v121);
                              kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_409:
            kaldi::ReadBasicType<BOOL>(a2, a3, v14);
            goto LABEL_412;
          }

LABEL_411:
          kaldi::ReadBasicType<int>(a2, a3, v18);
          goto LABEL_412;
        }

        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, a3, &__p);
        kaldi::SplitStringToVector(&__p, ",", 1, a1 + 2080);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v87 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_403;
    }

LABEL_412:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (a5)
  {
    goto LABEL_534;
  }

  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_548;
    }

    goto LABEL_549;
  }

  if (*(a1 + 103))
  {
    goto LABEL_549;
  }

LABEL_548:
  if (!*(a1 + 456))
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      goto LABEL_558;
    }

    goto LABEL_557;
  }

LABEL_549:
  if ((*(a1 + 127) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 127))
    {
      goto LABEL_553;
    }

    goto LABEL_558;
  }

  if (*(a1 + 112))
  {
    goto LABEL_558;
  }

LABEL_553:
  if (!*(a1 + 408) && kaldi::g_kaldi_verbose_level > -2)
  {
LABEL_557:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Both EncoderGraph (or at least one InputLangGraph) and DecoderGraph (or at least one DecoderLangGraph) must be specified in model file", 134);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  }

LABEL_558:
  if (!*(a1 + 552))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input symbol table must be specified", 36);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    goto LABEL_534;
  }

  if (!*(a1 + 560))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Output symbol table must be specified", 37);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    goto LABEL_534;
  }

  if ((v205 & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "AddSrcBos must be set in model config file", 42);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

LABEL_534:
    v122 = 0;
    goto LABEL_535;
  }

  if ((*(a1 + 1517) & 1) == 0 && !*(a1 + 432))
  {
    v126 = (a1 + 1696);
    v128 = *(a1 + 1704);
    v206 = (a1 + 2104);
    v207 = (a1 + 432);
    *(a1 + 2104) = -1431655765 * ((v128 - *(a1 + 1696)) >> 3);
    goto LABEL_584;
  }

  if (*(a1 + 1695) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 1672), *(a1 + 1680));
  }

  else
  {
    __p = *(a1 + 1672);
  }

  if (*(a1 + 1088) == 1)
  {
    v124 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v124 = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    for (; v124; --v124)
    {
      if (p_p->__r_.__value_.__s.__data_[0] == 46)
      {
        p_p->__r_.__value_.__s.__data_[0] = 95;
      }

      p_p = (p_p + 1);
    }
  }

  v126 = (a1 + 1696);
  std::vector<std::string>::push_back[abi:ne200100](a1 + 1696, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v127 = *(a1 + 432);
  v128 = *(a1 + 1704);
  v206 = (a1 + 2104);
  v207 = (a1 + 432);
  *(a1 + 2104) = -1431655765 * ((v128 - *(a1 + 1696)) >> 3);
  if (!v127)
  {
LABEL_584:
    v129 = *(a1 + 2056);
    v130 = *(a1 + 2064);
    if (v129 != v130)
    {
      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(v126, v128, v129, v130, 0xAAAAAAAAAAAAAAABLL * ((v130 - v129) >> 3));
    }
  }

  std::vector<std::string>::push_back[abi:ne200100](a1 + 2032, (a1 + 1720));
  *(a1 + 2156) = 0;
  if (*(a1 + 2164) == 1)
  {
    std::vector<std::string>::push_back[abi:ne200100](a1 + 2032, (a1 + 1912));
    *(a1 + 2148) = 1;
  }

  v131 = *(a1 + 2080);
  v132 = *(a1 + 2088);
  if (v131 == v132)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model: Missing required StateStrings field!", 67);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  *(a1 + 2108) = -1431655765 * ((*(a1 + 2040) - *(a1 + 2032)) >> 3);
  do
  {
    if (*(v131 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v131, *(v131 + 1));
    }

    else
    {
      v133 = *v131;
      __p.__r_.__value_.__r.__words[2] = *(v131 + 2);
      *&__p.__r_.__value_.__l.__data_ = v133;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v134 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v134 = __p.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&__s, v134 + 5);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v134)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v136 = &__p;
      }

      else
      {
        v136 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(p_s, v136, v134);
    }

    strcpy(p_s + v134, ".next");
    std::vector<std::string>::push_back[abi:ne200100](a1 + 2032, &__s);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v131 = (v131 + 24);
  }

  while (v131 != v132);
  v137 = *(a1 + 1007);
  if (v137 < 0)
  {
    v137 = *(a1 + 992);
  }

  if (!v137 && *(a1 + 1088) == 2)
  {
    std::string::operator=(v202, __str);
    *(a1 + 1088) = *(a1 + 1080);
  }

  v138 = *(a1 + 1031);
  if (v138 < 0)
  {
    v138 = *(a1 + 1016);
  }

  if (!v138 && *(a1 + 1096) == 2)
  {
    std::string::operator=(v201, __str);
    *(a1 + 1096) = *(a1 + 1080);
  }

  if (*(a1 + 1506) == 1 && *(a1 + 1507) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Either Readout Espresso Graph or Readout Nnet is supported", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  if (*(a1 + 1512) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "TensorFlow not supported", 24);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v139 = *(a1 + 103);
  if (v139 < 0)
  {
    v139 = *(a1 + 88);
  }

  if (v139 && (*(a1 + 24) != 1 || !*(a1 + 408)))
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading ENCODER ", 16);
      v141 = *(a1 + 103);
      if (v141 >= 0)
      {
        v142 = a1 + 80;
      }

      else
      {
        v142 = *(a1 + 80);
      }

      if (v141 >= 0)
      {
        v143 = *(a1 + 103);
      }

      else
      {
        v143 = *(a1 + 88);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, v142, v143);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    memset(&__p, 0, sizeof(__p));
    v144 = *(a1 + 464);
    if (v144 != (a1 + 472))
    {
      do
      {
        std::vector<std::string>::push_back[abi:ne200100](&__p, (v144 + 7));
        v145 = v144[1];
        if (v145)
        {
          do
          {
            v146 = v145;
            v145 = *v145;
          }

          while (v145);
        }

        else
        {
          do
          {
            v146 = v144[2];
            v10 = *v146 == v144;
            v144 = v146;
          }

          while (!v10);
        }

        v144 = v146;
      }

      while (v146 != (a1 + 472));
    }

    v147 = *(a1 + 1088);
    memset(v215, 0, sizeof(v215));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v215, *(a1 + 880), *(a1 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - *(a1 + 880)) >> 3));
    memset(&v214, 0, sizeof(v214));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v214, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 80), v147, v202, v215, &v214, *(a1 + 1520), &__s);
    v148 = *&__s.__r_.__value_.__l.__data_;
    *&__s.__r_.__value_.__l.__data_ = 0uLL;
    v149 = *(a1 + 160);
    *(a1 + 152) = v148;
    if (v149)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v149);
      if (__s.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__s.__r_.__value_.__l.__size_);
      }
    }

    v225.__r_.__value_.__r.__words[0] = &v214;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v225);
    v225.__r_.__value_.__r.__words[0] = v215;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v225);
    v150 = *(a1 + 152);
    if (v150)
    {
    }

    else
    {
      v151 = 0;
    }

    *(a1 + 488) = v151;
    __s.__r_.__value_.__r.__words[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  if (*(a1 + 1508) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading EMBEDDING ", 18);
      v153 = *(a1 + 79);
      if (v153 >= 0)
      {
        v154 = a1 + 56;
      }

      else
      {
        v154 = *(a1 + 56);
      }

      if (v153 >= 0)
      {
        v155 = *(a1 + 79);
      }

      else
      {
        v155 = *(a1 + 64);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, v154, v155);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    v156 = *(a1 + 1096);
    memset(v213, 0, sizeof(v213));
    memset(&v212, 0, sizeof(v212));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 56), v156, v201, v213, &v212, 0, &__p);
    v157 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v158 = *(a1 + 176);
    *(a1 + 168) = v157;
    if (v158)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v158);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }
    }

    __s.__r_.__value_.__r.__words[0] = &v212;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
    __s.__r_.__value_.__r.__words[0] = v213;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  if (*(a1 + 1507) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v159 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading READOUT ", 16);
      v160 = *(a1 + 151);
      if (v160 >= 0)
      {
        v161 = a1 + 128;
      }

      else
      {
        v161 = *(a1 + 128);
      }

      if (v160 >= 0)
      {
        v162 = *(a1 + 151);
      }

      else
      {
        v162 = *(a1 + 136);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v159, v161, v162);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    v163 = *(a1 + 1096);
    memset(v211, 0, sizeof(v211));
    memset(&v210, 0, sizeof(v210));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 128), v163, v201, v211, &v210, 0, &__p);
    v164 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v165 = *(a1 + 208);
    *(a1 + 200) = v164;
    if (v165)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v165);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }
    }

    __s.__r_.__value_.__r.__words[0] = &v210;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
    __s.__r_.__value_.__r.__words[0] = v211;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  if (*(a1 + 408))
  {
    if (*(a1 + 24) == 1)
    {
      v166 = *(a1 + 192);
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      if (v166)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v166);
      }

      v167 = *(a1 + 224);
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      if (v167)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v167);
      }

      v168 = *(a1 + 240);
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      v169 = v207;
      if (v168)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v168);
      }
    }

    else
    {
      if (*(a1 + 456))
      {
        v177 = *(a1 + 440);
        if (*(v177 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v177 + 32), *(v177 + 40));
        }

        else
        {
          __p = *(v177 + 32);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
      }

      v178 = *(a1 + 392);
      if (v178 != (a1 + 400))
      {
        do
        {
          kaldi::quasar::Encdec::LoadSubmodels(a1, &__p, (v178 + 4));
          v179 = v178[1];
          if (v179)
          {
            do
            {
              v180 = v179;
              v179 = *v179;
            }

            while (v179);
          }

          else
          {
            do
            {
              v180 = v178[2];
              v10 = *v180 == v178;
              v178 = v180;
            }

            while (!v10);
          }

          v178 = v180;
        }

        while (v180 != (a1 + 400));
      }

      v181 = *(a1 + 272);
      v182 = *(v181 + 64);
      if (v182 && (v182 = std::__shared_weak_count::lock(v182)) != 0)
      {
        v183 = *(v181 + 56);
      }

      else
      {
        v183 = 0;
      }

      v184 = *(a1 + 192);
      *(a1 + 184) = v183;
      *(a1 + 192) = v182;
      if (v184)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v184);
      }

      if (*(a1 + 312))
      {
        v185 = *(a1 + 296);
        v186 = *(v185 + 64);
        if (v186 && (v186 = std::__shared_weak_count::lock(v186)) != 0)
        {
          v187 = *(v185 + 56);
        }

        else
        {
          v187 = 0;
        }

        v188 = *(a1 + 224);
        *(a1 + 216) = v187;
        *(a1 + 224) = v186;
        if (v188)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v188);
        }
      }

      if (*(a1 + 456))
      {
        v189 = *(a1 + 392);
        if (*(v189 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__s, *(v189 + 32), *(v189 + 40));
        }

        else
        {
          __s = *(v189 + 32);
        }

        v190 = *(a1 + 440);
        if (v190 != (a1 + 448))
        {
          do
          {
            kaldi::quasar::Encdec::LoadSubmodels(a1, (v190 + 4), &__s);
            v191 = v190[1];
            if (v191)
            {
              do
              {
                v192 = v191;
                v191 = *v191;
              }

              while (v191);
            }

            else
            {
              do
              {
                v192 = v190[2];
                v10 = *v192 == v190;
                v190 = v192;
              }

              while (!v10);
            }

            v190 = v192;
          }

          while (v192 != (a1 + 448));
        }

        v193 = *(a1 + 320);
        v194 = *(v193 + 64);
        if (v194 && (v194 = std::__shared_weak_count::lock(v194)) != 0)
        {
          v195 = *(v193 + 56);
        }

        else
        {
          v195 = 0;
        }

        v196 = *(a1 + 240);
        *(a1 + 232) = v195;
        *(a1 + 240) = v194;
        if (v196)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v196);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v169 = v207;
    }

    if (*v169)
    {
      *v206 = 0;
    }
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v170 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading DECODER ", 16);
      v171 = *(a1 + 127);
      if (v171 >= 0)
      {
        v172 = a1 + 104;
      }

      else
      {
        v172 = *(a1 + 104);
      }

      if (v171 >= 0)
      {
        v173 = *(a1 + 127);
      }

      else
      {
        v173 = *(a1 + 112);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v170, v172, v173);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    v174 = *(a1 + 1096);
    memset(v209, 0, sizeof(v209));
    memset(&v208, 0, sizeof(v208));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 104), v174, v201, v209, &v208, 0, &__p);
    v175 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v176 = *(a1 + 192);
    *(a1 + 184) = v175;
    if (v176)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v176);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }
    }

    __s.__r_.__value_.__r.__words[0] = &v208;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
    __s.__r_.__value_.__r.__words[0] = v209;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  v122 = 1;
LABEL_535:
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v229[2]) < 0)
  {
    operator delete(v229[0]);
  }

  return v122;
}

void sub_1B545A764(_Unwind_Exception *a1)
{
  STACK[0x220] = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545A7BC(_Unwind_Exception *a1)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&STACK[0x430]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545A7D0(_Unwind_Exception *a1)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&STACK[0x430]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545A7F4(_Unwind_Exception *a1)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&STACK[0x430]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545A808(_Unwind_Exception *a1)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&STACK[0x430]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545A82C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B545ABB8);
}

void sub_1B545A850(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545A878()
{
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    JUMPOUT(0x1B545AB50);
  }

  JUMPOUT(0x1B545AB78);
}

void sub_1B545A8B8()
{
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    JUMPOUT(0x1B545AB50);
  }

  JUMPOUT(0x1B545AB78);
}

void sub_1B545A8FC()
{
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    JUMPOUT(0x1B545AB50);
  }

  JUMPOUT(0x1B545AB78);
}

void sub_1B545A944()
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    JUMPOUT(0x1B545AB50);
  }

  JUMPOUT(0x1B545AB78);
}

void sub_1B545A95C()
{
  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  JUMPOUT(0x1B545A9C4);
}

void sub_1B545A998(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    JUMPOUT(0x1B545AB50);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545AA1C()
{
  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  JUMPOUT(0x1B545AB68);
}

void sub_1B545AA38()
{
  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  JUMPOUT(0x1B545AA5CLL);
}

void sub_1B545AAA8(_Unwind_Exception *a1)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&STACK[0x430]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545AAD4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545AADC()
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    JUMPOUT(0x1B545AB50);
  }

  JUMPOUT(0x1B545AB78);
}

void sub_1B545AAFC()
{
  std::pair<std::string,std::string>::~pair(&STACK[0x430]);
  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    JUMPOUT(0x1B545AB40);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    JUMPOUT(0x1B545AB50);
  }

  JUMPOUT(0x1B545AB78);
}

void sub_1B545AB0C()
{
  STACK[0x3B8] = &STACK[0x220];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B8]);
  JUMPOUT(0x1B545AB20);
}

void sub_1B545AB58(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

void sub_1B545AB64()
{
  kaldi::quasar::Vocab::~Vocab(&STACK[0x220]);
  kaldi::Input::~Input(&STACK[0x388]);
  JUMPOUT(0x1B545AB78);
}

void kaldi::quasar::Encdec::ParseEnginePlatform(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  kaldi::SplitStringToVector(a1, ":", 1, &v38);
  v4 = v38;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (*(v38 + 23) < 0)
        {
          if (*(v38 + 8) != 2 || **v38 != 13637)
          {
            if (*(v38 + 8) != 10)
            {
              goto LABEL_66;
            }

            v6 = *v38;
LABEL_20:
            v11 = *v6;
            v12 = v6[4];
            if (v11 != 0x6F73736572707345 || v12 != 12630)
            {
LABEL_66:
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
              v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unsupported engine: ", 20);
              v26 = *(v38 + 23);
              if (v26 >= 0)
              {
                v27 = v38;
              }

              else
              {
                v27 = *v38;
              }

              if (v26 >= 0)
              {
                v28 = *(v38 + 23);
              }

              else
              {
                v28 = *(v38 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v37);
            }

            v14 = 0;
LABEL_39:
            v18 = (v38 + 24);
            v19 = *(v38 + 47);
            if (v19 < 0)
            {
              if (*(v38 + 32) == 4 && **v18 == 909201478)
              {
                goto LABEL_52;
              }

              if (*(v38 + 32) != 4)
              {
LABEL_59:
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
                v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unsupported precision: ", 23);
                v22 = *(v38 + 47);
                if (v22 >= 0)
                {
                  v23 = v38 + 24;
                }

                else
                {
                  v23 = *(v38 + 24);
                }

                if (v22 >= 0)
                {
                  v24 = *(v38 + 47);
                }

                else
                {
                  v24 = *(v38 + 32);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v37);
              }

              v18 = *v18;
            }

            else
            {
              if (v19 != 4)
              {
                goto LABEL_59;
              }

              if (*v18 == 909201478)
              {
LABEL_52:
                v20 = 0;
                goto LABEL_53;
              }
            }

            if (*v18 == 842223686)
            {
              v20 = 0x100000000;
LABEL_53:
              *a2 = v20 | v14;
              v7 = (a2 + 1);
              if (*(v4 + 71) < 0)
              {
                std::string::__init_copy_ctor_external(v7, *(v4 + 48), *(v4 + 56));
                goto LABEL_56;
              }

              v8 = *(v4 + 48);
              v9 = *(v4 + 64);
              goto LABEL_55;
            }

            goto LABEL_59;
          }
        }

        else
        {
          if (*(v38 + 23) != 2)
          {
            v6 = v38;
            if (*(v38 + 23) != 10)
            {
              goto LABEL_66;
            }

            goto LABEL_20;
          }

          if (*v38 != 13637)
          {
            goto LABEL_66;
          }
        }

        v14 = 1;
        goto LABEL_39;
      }

LABEL_82:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Invalid platform spec: ", 23);
      v34 = *(a1 + 23);
      if (v34 >= 0)
      {
        v35 = a1;
      }

      else
      {
        v35 = *a1;
      }

      if (v34 >= 0)
      {
        v36 = *(a1 + 23);
      }

      else
      {
        v36 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v37);
    }

    if (*(v38 + 23) < 0)
    {
      if (*(v38 + 8) != 2 || **v38 != 13637)
      {
        if (*(v38 + 8) != 10)
        {
          goto LABEL_73;
        }

        v10 = *v38;
        goto LABEL_30;
      }
    }

    else
    {
      if (*(v38 + 23) != 2)
      {
        v10 = v38;
        if (*(v38 + 23) != 10)
        {
          goto LABEL_73;
        }

LABEL_30:
        v15 = *v10;
        v16 = *(v10 + 8);
        if (v15 != 0x6F73736572707345 || v16 != 12630)
        {
LABEL_73:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unsupported engine: ", 20);
          v30 = *(v38 + 23);
          if (v30 >= 0)
          {
            v31 = v38;
          }

          else
          {
            v31 = *v38;
          }

          if (v30 >= 0)
          {
            v32 = *(v38 + 23);
          }

          else
          {
            v32 = *(v38 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v37);
        }

        *a2 = 0x100000000;
        v7 = (a2 + 1);
        if (*(v4 + 47) < 0)
        {
          goto LABEL_36;
        }

LABEL_51:
        v8 = *(v4 + 24);
        v9 = *(v4 + 40);
        goto LABEL_55;
      }

      if (*v38 != 13637)
      {
        goto LABEL_73;
      }
    }

    *a2 = 0x100000001;
    v7 = (a2 + 1);
    if (*(v4 + 47) < 0)
    {
LABEL_36:
      std::string::__init_copy_ctor_external(v7, *(v4 + 24), *(v4 + 32));
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v5 != 1)
  {
    if (!v5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Invalid empty platform spec.", 28);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v37);
    }

    goto LABEL_82;
  }

  *a2 = 0x100000000;
  v7 = (a2 + 1);
  if ((*(v4 + 23) & 0x80000000) == 0)
  {
    v8 = *v4;
    v9 = *(v4 + 16);
LABEL_55:
    v7->__r_.__value_.__r.__words[2] = v9;
    *&v7->__r_.__value_.__l.__data_ = v8;
    goto LABEL_56;
  }

  std::string::__init_copy_ctor_external(v7, *v4, *(v4 + 8));
LABEL_56:
  v37[0] = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v37);
}

void sub_1B545B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Vocab::~Vocab(kaldi::quasar::Vocab *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t kaldi::quasar::BPE::Read(uint64_t a1, uint64_t *a2, int a3)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(a1 + 24);
  std::vector<std::string>::clear[abi:ne200100]((a1 + 64));
  v52 = 0;
  v53 = 0;
  v54 = 0;
  kaldi::ReadToken(a2, a3, &v52);
  v6 = HIBYTE(v54);
  if (SHIBYTE(v54) < 0)
  {
    if (v53 != 9)
    {
      goto LABEL_16;
    }

    v7 = v52;
  }

  else
  {
    if (HIBYTE(v54) != 9)
    {
LABEL_11:
      if (v6 != 10)
      {
LABEL_23:
        if (v6 != 9)
        {
LABEL_33:
          if (v6 != 8)
          {
            goto LABEL_73;
          }

          v19 = &v52;
          goto LABEL_38;
        }

        v15 = &v52;
        goto LABEL_28;
      }

      v11 = &v52;
      goto LABEL_18;
    }

    v7 = &v52;
  }

  v8 = *v7;
  v9 = *(v7 + 8);
  if (v8 == 0x65646F4D6B6E553CLL && v9 == 62)
  {
    __p = 0uLL;
    v51 = 0;
    kaldi::ReadToken(a2, a3, &__p);
    *(a1 + 184) = kaldi::quasar::BPE::StringToUnkMode(&__p);
    kaldi::ReadToken(a2, a3, &v52);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p);
    }

    v6 = HIBYTE(v54);
    if ((v54 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v54 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (v53 != 10)
  {
    goto LABEL_26;
  }

  v11 = v52;
LABEL_18:
  v12 = *v11;
  v13 = *(v11 + 4);
  if (v12 == 0x656B6F546B6E553CLL && v13 == 15982)
  {
    kaldi::ReadToken(a2, a3, a1 + 192);
    kaldi::ReadToken(a2, a3, &v52);
    v6 = HIBYTE(v54);
    if ((v54 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  if (v53 != 9)
  {
    goto LABEL_36;
  }

  v15 = v52;
LABEL_28:
  v16 = *v15;
  v17 = *(v15 + 8);
  if (v16 == 0x6E6F69737265563CLL && v17 == 62)
  {
    kaldi::ReadToken(a2, a3, a1 + 216);
    kaldi::ReadToken(a2, a3, &v52);
    v6 = HIBYTE(v54);
    if ((v54 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_36:
  if (v53 != 8)
  {
    goto LABEL_73;
  }

  v19 = v52;
LABEL_38:
  if (*v19 != 0x3E6570426D754E3CLL)
  {
LABEL_73:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Expected to read number of BPE units now, but got ", 50);
    if (v54 >= 0)
    {
      v44 = &v52;
    }

    else
    {
      v44 = v52;
    }

    if (v54 >= 0)
    {
      v45 = HIBYTE(v54);
    }

    else
    {
      v45 = v53;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v49 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v49);
  if ((a3 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v49)
  {
    v20 = 0;
    v21 = MEMORY[0x1E69E5318];
    do
    {
      __p = 0uLL;
      v51 = 0;
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v22 = std::locale::use_facet(&v46, v21);
      v23 = (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v46);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, v23);
      std::vector<std::string>::push_back[abi:ne200100](a1 + 64, &__p);
      kaldi::quasar::BPE::ProcessLine(a1, &__p, v20);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p);
      }

      ++v20;
    }

    while (v20 != v49);
  }

  kaldi::quasar::BPE::GetUniqueChars(a1);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "BPE model version: ", 19);
    v25 = *(a1 + 239);
    v26 = v25 >= 0 ? a1 + 216 : *(a1 + 216);
    v27 = v25 >= 0 ? *(a1 + 239) : *(a1 + 224);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "# of BPE model entries : ", 25);
      v29 = MEMORY[0x1B8C84C30](v28, *(a1 + 48));
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " # of chars ", 12);
      MEMORY[0x1B8C84C30](v30, *(a1 + 16));
      kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "BPE model unk mode = ", 21);
        kaldi::quasar::BPE::UnkModeToString(*(a1 + 184), &v46);
        if ((v48 & 0x80u) == 0)
        {
          locale = &v46;
        }

        else
        {
          locale = v46.__locale_;
        }

        if ((v48 & 0x80u) == 0)
        {
          v33 = v48;
        }

        else
        {
          v33 = v47;
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, locale, v33);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", unk token = ", 14);
        v38 = *(a1 + 192);
        v37 = a1 + 192;
        v36 = v38;
        v39 = *(v37 + 23);
        if (v39 >= 0)
        {
          v40 = v37;
        }

        else
        {
          v40 = v36;
        }

        if (v39 >= 0)
        {
          v41 = *(v37 + 23);
        }

        else
        {
          v41 = *(v37 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v40, v41);
        if (v48 < 0)
        {
          operator delete(v46.__locale_);
        }

        kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
      }
    }
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v52);
  }

  return 1;
}

void sub_1B545B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  if (*(v6 - 49) < 0)
  {
    operator delete(*(v6 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1B545B5EC(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1B545B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    kaldi::quasar::Encdec::Read();
  }

  MEMORY[0x1B8C85350](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Encdec::LoadSubmodels(uint64_t a1, std::string::size_type a2, std::string::size_type a3)
{
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 45, &v144);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::string::append(&v144, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v146 = v9->__r_.__value_.__r.__words[2];
  v145 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_36;
    }
  }

  else if (!*(a1 + 103))
  {
    goto LABEL_36;
  }

  if (!*(a1 + 152))
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Loading ENCODER ", 16);
      v12 = *(a1 + 103);
      if (v12 >= 0)
      {
        v13 = a1 + 80;
      }

      else
      {
        v13 = *(a1 + 80);
      }

      if (v12 >= 0)
      {
        v14 = *(a1 + 103);
      }

      else
      {
        v14 = *(a1 + 88);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
    }

    memset(&v144, 0, sizeof(v144));
    v15 = *(a1 + 464);
    if (v15 != (a1 + 472))
    {
      do
      {
        std::vector<std::string>::push_back[abi:ne200100](&v144, (v15 + 7));
        v16 = v15[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v15[2];
            v18 = *v17 == v15;
            v15 = v17;
          }

          while (!v18);
        }

        v15 = v17;
      }

      while (v17 != (a1 + 472));
    }

    v19 = *(a1 + 1088);
    memset(v142, 0, sizeof(v142));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v142, *(a1 + 880), *(a1 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - *(a1 + 880)) >> 3));
    memset(&v141, 0, sizeof(v141));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v141, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v144.__r_.__value_.__l.__size_ - v144.__r_.__value_.__r.__words[0]) >> 3));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 80), v19, a1 + 984, v142, &v141, *(a1 + 1520), &v143);
    v20 = v143;
    v143 = 0uLL;
    v21 = *(a1 + 160);
    *(a1 + 152) = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      if (*(&v143 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v143 + 1));
      }
    }

    v147[0] = &v141;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v147);
    v147[0] = v142;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v147);
    v22 = *(a1 + 152);
    if (v22)
    {
    }

    else
    {
      v23 = 0;
    }

    *(a1 + 488) = v23;
    v147[0] = &v145;
    v24 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 496, &v145);
    v25 = (v24 + 64);
    std::__tree<std::string>::destroy(v24 + 56, *(v24 + 64));
    *v25 = 0;
    v25[1] = 0;
    *(v25 - 1) = v25;
    *&v143 = &v144;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
  }

LABEL_36:
  if (*(a1 + 408))
  {
    v26 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 392, a3);
    if (a1 + 400 == v26)
    {
      v38 = 0;
      goto LABEL_202;
    }

    v144.__r_.__value_.__r.__words[0] = a3;
    v27 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 272, a3);
    v28 = *(v27 + 64);
    if (v28 && (v28 = std::__shared_weak_count::lock(v28)) != 0)
    {
      v29 = *(v27 + 56);
    }

    else
    {
      v29 = 0;
    }

    v30 = *(a1 + 192);
    *(a1 + 184) = v29;
    *(a1 + 192) = v28;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      v29 = *(a1 + 184);
    }

    if (v29)
    {
      if (kaldi::g_kaldi_verbose_level >= 1)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Using loaded decoder net for: ", 30);
        v32 = *(a3 + 23);
        if (v32 >= 0)
        {
          v33 = a3;
        }

        else
        {
          v33 = *a3;
        }

        if (v32 >= 0)
        {
          v34 = *(a3 + 23);
        }

        else
        {
          v34 = *(a3 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
      }

      if (a1 + 424 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 416, a3))
      {
        v144.__r_.__value_.__r.__words[0] = a3;
        v35 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 296, a3);
        v36 = *(v35 + 64);
        if (v36 && (v36 = std::__shared_weak_count::lock(v36)) != 0)
        {
          v37 = *(v35 + 56);
        }

        else
        {
          v37 = 0;
        }

        v39 = *(a1 + 224);
        *(a1 + 216) = v37;
        *(a1 + 224) = v36;
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          v37 = *(a1 + 216);
        }

        if (!v37)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v144);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Handover plan required but not loaded!", 38);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v144);
        }
      }
    }

    if (a1 + 448 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 440, a2))
    {
      v144.__r_.__value_.__r.__words[0] = a2;
      v40 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 320, a2);
      v41 = *(v40 + 64);
      if (v41 && (v41 = std::__shared_weak_count::lock(v41)) != 0)
      {
        v42 = *(v40 + 56);
      }

      else
      {
        v42 = 0;
      }

      v43 = *(a1 + 240);
      *(a1 + 232) = v42;
      *(a1 + 240) = v41;
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        v42 = *(a1 + 232);
      }

      if (v42 && kaldi::g_kaldi_verbose_level >= 1)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Using loaded input net for: ", 28);
        v45 = *(a2 + 23);
        if (v45 >= 0)
        {
          v46 = a2;
        }

        else
        {
          v46 = *a2;
        }

        if (v45 >= 0)
        {
          v47 = *(a2 + 23);
        }

        else
        {
          v47 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
      }
    }

    if (a1 + 376 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 368, &v145))
    {
      v144.__r_.__value_.__r.__words[0] = &v145;
      v48 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 248, &v145);
      v49 = *(v48 + 64);
      if (v49 && (v49 = std::__shared_weak_count::lock(v49)) != 0)
      {
        v50 = *(v48 + 56);
      }

      else
      {
        v50 = 0;
      }

      v51 = *(a1 + 160);
      *(a1 + 152) = v50;
      *(a1 + 160) = v49;
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        v50 = *(a1 + 152);
      }

      if (v50 && kaldi::g_kaldi_verbose_level >= 1)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Using loaded encoder for: ", 26);
        v53 = *(a2 + 23);
        if (v53 >= 0)
        {
          v54 = a2;
        }

        else
        {
          v54 = *a2;
        }

        if (v53 >= 0)
        {
          v55 = *(a2 + 23);
        }

        else
        {
          v55 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v54, v55);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
      }
    }

    if (*(a1 + 456))
    {
      v56 = *(a1 + 232) == 0;
    }

    else
    {
      v56 = 0;
    }

    v57 = *(a1 + 184);
    v58 = *(a1 + 152);
    if (v56 || !v57 || !v58)
    {
      if (!v57)
      {
        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
          v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Loading DECODER for '", 21);
          v98 = *(a3 + 23);
          if (v98 >= 0)
          {
            v99 = a3;
          }

          else
          {
            v99 = *a3;
          }

          if (v98 >= 0)
          {
            v100 = *(a3 + 23);
          }

          else
          {
            v100 = *(a3 + 8);
          }

          v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, v99, v100);
          v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, ": ", 2);
          v103 = *(v26 + 79);
          if (v103 >= 0)
          {
            v104 = v26 + 56;
          }

          else
          {
            v104 = *(v26 + 56);
          }

          if (v103 >= 0)
          {
            v105 = *(v26 + 79);
          }

          else
          {
            v105 = *(v26 + 64);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, v104, v105);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
        }

        v106 = *(a1 + 1096);
        memset(v140, 0, sizeof(v140));
        memset(&v139, 0, sizeof(v139));
        kaldi::quasar::Encdec::CreateEspressoModel(a1, (v26 + 56), v106, a1 + 1008, v140, &v139, 0, &v144);
        v107 = *&v144.__r_.__value_.__l.__data_;
        *&v144.__r_.__value_.__l.__data_ = 0uLL;
        v108 = *(a1 + 192);
        *(a1 + 184) = v107;
        if (v108)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v108);
          if (v144.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v144.__r_.__value_.__l.__size_);
          }
        }

        *&v143 = &v139;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
        *&v143 = v140;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
        v144.__r_.__value_.__r.__words[0] = a3;
        v109 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 272, a3);
        v111 = *(a1 + 184);
        v110 = *(a1 + 192);
        if (v110)
        {
          atomic_fetch_add_explicit((v110 + 16), 1uLL, memory_order_relaxed);
        }

        v112 = *(v109 + 64);
        *(v109 + 56) = v111;
        *(v109 + 64) = v110;
        if (v112)
        {
          std::__shared_weak_count::__release_weak(v112);
        }

        v113 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 416, a3);
        if (a1 + 424 != v113)
        {
          if (kaldi::g_kaldi_verbose_level >= 1)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
            v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Loading HANDOVER for '", 22);
            v115 = *(a3 + 23);
            if (v115 >= 0)
            {
              v116 = a3;
            }

            else
            {
              v116 = *a3;
            }

            if (v115 >= 0)
            {
              v117 = *(a3 + 23);
            }

            else
            {
              v117 = *(a3 + 8);
            }

            v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, v116, v117);
            v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, ": ", 2);
            v120 = *(v113 + 79);
            if (v120 >= 0)
            {
              v121 = v113 + 56;
            }

            else
            {
              v121 = *(v113 + 56);
            }

            if (v120 >= 0)
            {
              v122 = *(v113 + 79);
            }

            else
            {
              v122 = *(v113 + 64);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v121, v122);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
          }

          v123 = *(a1 + 1096);
          memset(v138, 0, sizeof(v138));
          memset(&v137, 0, sizeof(v137));
          kaldi::quasar::Encdec::CreateEspressoModel(a1, (v113 + 56), v123, a1 + 1008, v138, &v137, 0, &v144);
          v124 = *&v144.__r_.__value_.__l.__data_;
          *&v144.__r_.__value_.__l.__data_ = 0uLL;
          v125 = *(a1 + 224);
          *(a1 + 216) = v124;
          if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v125);
            if (v144.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v144.__r_.__value_.__l.__size_);
            }
          }

          *&v143 = &v137;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
          *&v143 = v138;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
          v144.__r_.__value_.__r.__words[0] = a3;
          v126 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 296, a3);
          v128 = *(a1 + 216);
          v127 = *(a1 + 224);
          if (v127)
          {
            atomic_fetch_add_explicit((v127 + 16), 1uLL, memory_order_relaxed);
          }

          v129 = *(v126 + 64);
          *(v126 + 56) = v128;
          *(v126 + 64) = v127;
          if (v129)
          {
            std::__shared_weak_count::__release_weak(v129);
          }
        }
      }

      if (v56)
      {
        v59 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 440, a2);
        if (a1 + 448 != v59)
        {
          if (kaldi::g_kaldi_verbose_level >= 1)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
            v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Loading INPUT NET for '", 23);
            v61 = *(a2 + 23);
            if (v61 >= 0)
            {
              v62 = a2;
            }

            else
            {
              v62 = *a2;
            }

            if (v61 >= 0)
            {
              v63 = *(a2 + 23);
            }

            else
            {
              v63 = *(a2 + 8);
            }

            v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v62, v63);
            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "': ", 3);
            v66 = *(v59 + 79);
            if (v66 >= 0)
            {
              v67 = v59 + 56;
            }

            else
            {
              v67 = *(v59 + 56);
            }

            if (v66 >= 0)
            {
              v68 = *(v59 + 79);
            }

            else
            {
              v68 = *(v59 + 64);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
          }

          v69 = *(a1 + 1096);
          memset(v136, 0, sizeof(v136));
          memset(&v135, 0, sizeof(v135));
          kaldi::quasar::Encdec::CreateEspressoModel(a1, (v59 + 56), v69, a1 + 1008, v136, &v135, 0, &v144);
          v70 = *&v144.__r_.__value_.__l.__data_;
          *&v144.__r_.__value_.__l.__data_ = 0uLL;
          v71 = *(a1 + 240);
          *(a1 + 232) = v70;
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
            if (v144.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v144.__r_.__value_.__l.__size_);
            }
          }

          *&v143 = &v135;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
          *&v143 = v136;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
          v144.__r_.__value_.__r.__words[0] = a2;
          v72 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 320, a2);
          v74 = *(a1 + 232);
          v73 = *(a1 + 240);
          if (v73)
          {
            atomic_fetch_add_explicit((v73 + 16), 1uLL, memory_order_relaxed);
          }

          v75 = *(v72 + 64);
          *(v72 + 56) = v74;
          *(v72 + 64) = v73;
          if (v75)
          {
            std::__shared_weak_count::__release_weak(v75);
          }
        }
      }

      if (!v58)
      {
        v76 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 368, &v145);
        if (a1 + 376 != v76)
        {
          if (kaldi::g_kaldi_verbose_level >= 1)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 1);
            v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Loading ENCODER for '", 21);
            if (v146 >= 0)
            {
              v78 = &v145;
            }

            else
            {
              v78 = v145;
            }

            if (v146 >= 0)
            {
              v79 = HIBYTE(v146);
            }

            else
            {
              v79 = *(&v145 + 1);
            }

            v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
            v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "': ", 3);
            v82 = *(v76 + 79);
            if (v82 >= 0)
            {
              v83 = v76 + 56;
            }

            else
            {
              v83 = *(v76 + 56);
            }

            if (v82 >= 0)
            {
              v84 = *(v76 + 79);
            }

            else
            {
              v84 = *(v76 + 64);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v83, v84);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
          }

          memset(&v144, 0, sizeof(v144));
          v85 = *(a1 + 464);
          if (v85 != (a1 + 472))
          {
            do
            {
              std::vector<std::string>::push_back[abi:ne200100](&v144, (v85 + 7));
              v86 = v85[1];
              if (v86)
              {
                do
                {
                  v87 = v86;
                  v86 = *v86;
                }

                while (v86);
              }

              else
              {
                do
                {
                  v87 = v85[2];
                  v18 = *v87 == v85;
                  v85 = v87;
                }

                while (!v18);
              }

              v85 = v87;
            }

            while (v87 != (a1 + 472));
          }

          v88 = *(a1 + 1088);
          memset(v134, 0, sizeof(v134));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v134, *(a1 + 880), *(a1 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - *(a1 + 880)) >> 3));
          memset(&v133, 0, sizeof(v133));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v133, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v144.__r_.__value_.__l.__size_ - v144.__r_.__value_.__r.__words[0]) >> 3));
          kaldi::quasar::Encdec::CreateEspressoModel(a1, (v76 + 56), v88, a1 + 984, v134, &v133, *(a1 + 1520), &v143);
          v89 = v143;
          v143 = 0uLL;
          v90 = *(a1 + 160);
          *(a1 + 152) = v89;
          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
            if (*(&v143 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v143 + 1));
            }
          }

          v147[0] = &v133;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v147);
          v147[0] = v134;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v147);
          v147[0] = &v145;
          v91 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 248, &v145);
          v93 = *(a1 + 152);
          v92 = *(a1 + 160);
          if (v92)
          {
            atomic_fetch_add_explicit((v92 + 16), 1uLL, memory_order_relaxed);
          }

          v94 = *(v91 + 64);
          *(v91 + 56) = v93;
          *(v91 + 64) = v92;
          if (v94)
          {
            std::__shared_weak_count::__release_weak(v94);
          }

          v95 = *(a1 + 152);
          if (v95)
          {
          }

          else
          {
            v96 = 0;
          }

          *(a1 + 488) = v96;
          v147[0] = &v145;
          v130 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 496, &v145);
          v131 = (v130 + 64);
          std::__tree<std::string>::destroy(v130 + 56, *(v130 + 64));
          *v131 = 0;
          v131[1] = 0;
          *(v131 - 1) = v131;
          *&v143 = &v144;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
        }
      }
    }
  }

  v38 = 1;
LABEL_202:
  if (SHIBYTE(v146) < 0)
  {
    operator delete(v145);
  }

  return v38;
}

void sub_1B545C43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v13 - 96) = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 96));
  *(v13 - 96) = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 96));
  JUMPOUT(0x1B545C574);
}

void sub_1B545C534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a41);
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1B545C550(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1B545C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    JUMPOUT(0x1B545C590);
  }

  JUMPOUT(0x1B545C594);
}

void sub_1B545C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, uint64_t a40, char a41)
{
  a39 = &a41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a39);
  JUMPOUT(0x1B545C584);
}

BOOL kaldi::quasar::Encdec::SelectSubmodelsToCompile(uint64_t a1, const void **a2, uint64_t a3)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v6 = *(a1 + 464);
  v7 = (a1 + 472);
  if (v6 != (a1 + 472))
  {
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](&v32, (v6 + 7));
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 88))
    {
      goto LABEL_10;
    }
  }

  else if (*(a1 + 103))
  {
LABEL_10:
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 1);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Setting compilation spec for ENCODER ", 37);
      v12 = *(a1 + 103);
      if (v12 >= 0)
      {
        v13 = a1 + 80;
      }

      else
      {
        v13 = *(a1 + 80);
      }

      if (v12 >= 0)
      {
        v14 = *(a1 + 103);
      }

      else
      {
        v14 = *(a1 + 88);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    v15 = *(a1 + 1088);
    memset(v29, 0, sizeof(v29));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v29, *(a1 + 880), *(a1 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - *(a1 + 880)) >> 3));
    memset(v28, 0, sizeof(v28));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v28, v32, v33, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
    kaldi::quasar::Encdec::RegisterEspressoModelForCompilation(a1, (a1 + 80), v15, a1 + 984, v29, v28, *(a1 + 1520));
    __p[0] = v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    v16 = 1;
    goto LABEL_32;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 45, &v27);
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = *(a3 + 8);
  }

  v20 = std::string::append(&v27, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v31 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v22 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 368, __p);
  v16 = a1 + 376 != v22;
  if (a1 + 376 != v22)
  {
    v23 = *(a1 + 1088);
    memset(v26, 0, sizeof(v26));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v26, *(a1 + 880), *(a1 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - *(a1 + 880)) >> 3));
    memset(v25, 0, sizeof(v25));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v25, v32, v33, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
    kaldi::quasar::Encdec::RegisterEspressoModelForCompilation(a1, (v22 + 56), v23, a1 + 984, v26, v25, *(a1 + 1520));
    v27.__r_.__value_.__r.__words[0] = v25;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
    v27.__r_.__value_.__r.__words[0] = v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_32:
  __p[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return v16;
}

void sub_1B545C874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  __p = (v33 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BPE::StringToUnkMode(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (v1 != 4)
    {
      if (v1 != 8)
      {
        goto LABEL_26;
      }

      v2 = *a1;
      if (*a1 != 0x6B6E753264726F77)
      {
        if (v2 != 0x6B6E753272616863)
        {
          v3 = a1;
          if (v2 == 0x72616863706F7264)
          {
            return 3;
          }

LABEL_19:
          if (*v3 == 0x64726F77706F7264)
          {
            return 4;
          }

LABEL_26:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
          v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unknown unk mode : ", 19);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
        }

        return 1;
      }

      return 2;
    }

    if (*a1 != 1885693291)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (*(a1 + 8) == 4 && **a1 == 1885693291)
  {
    return 0;
  }

  if (*(a1 + 8) == 8 && **a1 == 0x6B6E753272616863)
  {
    return 1;
  }

  if (*(a1 + 8) == 8 && **a1 == 0x6B6E753264726F77)
  {
    return 2;
  }

  if (*(a1 + 8) != 8)
  {
LABEL_17:
    if (*(a1 + 8) != 8)
    {
      goto LABEL_26;
    }

    v3 = *a1;
    goto LABEL_19;
  }

  if (**a1 != 0x72616863706F7264)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  return 3;
}

uint64_t kaldi::quasar::Encdec::Symbolize(uint64_t a1, __int128 **a2, const void **a3, int a4, char a5)
{
  v5 = 552;
  if (a4)
  {
    v5 = 560;
  }

  v6 = 820;
  if (a4)
  {
    v6 = 832;
  }

  v7 = *(a1 + v6);
  if (v7 == -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v29, "Unknown label not described in the model");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v29);
  }

  v8 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = *(a1 + v5);
  do
  {
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *v8, *(v8 + 1));
    }

    else
    {
      v13 = *v8;
      v29.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v29.__r_.__value_.__l.__data_ = v13;
    }

    v14 = (*(*v12 + 96))(v12, &v29);
    if (v14 == -1)
    {
      v15 = v7;
    }

    else
    {
      v15 = v14;
    }

    if (v15 != v7 || (v11 = (v11 + 1), (a5 & 1) == 0))
    {
      v17 = a3[1];
      v16 = a3[2];
      if (v17 >= v16)
      {
        v19 = *a3;
        v20 = v17 - *a3;
        v21 = v20 >> 2;
        v22 = (v20 >> 2) + 1;
        if (v22 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
        v25 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v24)
        {
          v25 = v22;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v25);
        }

        *(4 * v21) = v15;
        v18 = 4 * v21 + 4;
        memcpy(0, v19, v20);
        v26 = *a3;
        *a3 = 0;
        a3[1] = v18;
        a3[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v15;
        v18 = (v17 + 4);
      }

      a3[1] = v18;
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v8 = (v8 + 24);
  }

  while (v8 != v9);
  return v11;
}

void sub_1B545CD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::Encdec::ResetHistoryState(kaldi::quasar::Encdec *this)
{
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 191);
  v2 = *(this + 195);
  v3 = *(this + 194);
  while (v2 != v3)
  {
    v2 -= 32;
    std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::destroy[abi:ne200100](this + 1552, v2);
  }

  *(this + 195) = v3;
  v4 = *(this + 198);
  v5 = *(this + 197);
  while (v4 != v5)
  {
    v4 -= 32;
    std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::destroy[abi:ne200100](this + 1576, v4);
  }

  *(this + 198) = v5;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 200);
  v6 = *(this + 305);
  v7 = *(this + 304);
  if (v6 != v7)
  {
    do
    {
      v6 -= 3;
      v9 = v6;
      std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v9);
    }

    while (v6 != v7);
    v8 = *(this + 304);
    *(this + 305) = v7;
    while (v7 != v8)
    {
      v7 -= 3;
      v9 = v7;
      std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v9);
    }

    v7 = v8;
  }

  *(this + 305) = v7;
}

void kaldi::quasar::Encdec::GetHistoryState(uint64_t a1, uint64_t *a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v10, (a1 + 2256), a1 + 2336, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(a1 + 2432) + 24 * a3);
  if (v7 != a2)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__assign_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>(a2, *v7, v7[1], (v7[1] - *v7) >> 4);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v10, v6);
}

void kaldi::quasar::Encdec::SetHistoryState(uint64_t a1, uint64_t **a2, int a3, int a4)
{
  std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::resize(a1 + 2432, a4);
  v7 = (*(a1 + 2432) + 24 * a3);
  if (v7 != a2)
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = (v9 - *a2) >> 4;

    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__assign_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>(v7, v8, v9, v10);
  }
}

void std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void kaldi::quasar::Encdec::Start(uint64_t a1, int a2, const std::string *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *(a1 + 836) = a2;
  v5 = *(a1 + 160);
  v21[0] = *(a1 + 152);
  v21[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 176);
  v21[2] = *(a1 + 168);
  v21[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 192);
  v21[4] = *(a1 + 184);
  v21[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 208);
  v21[6] = *(a1 + 200);
  v21[7] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 224);
  v21[8] = *(a1 + 216);
  v21[9] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 240);
  v21[10] = *(a1 + 232);
  v21[11] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*>(&v18, v21, &v22, 6uLL);
  for (i = 11; i != -1; i -= 2)
  {
    v13 = v21[i];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = v18;
  for (j = v19; v14 != j; v14 += 16)
  {
    if (*v14)
    {
      if (v16)
      {
        v17 = *(v14 + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::operator=((v16 + 352), a3);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }
    }
  }

  kaldi::Timer::Reset((a1 + 2256), v11);
  v21[0] = &v18;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v21);
}

void sub_1B545D1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Encdec::StartFeedforward(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v180[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Model does not support n-best inputs");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v168, (a1 + 2256), a1 + 2304, __p);
  if (v176.i8[7] < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (a1 + 152);
  if (*(a1 + 152))
  {
    v8 = 152;
  }

  else
  {
    v8 = 232;
  }

  if (*(a1 + 152))
  {
    v9 = (a1 + 152);
  }

  else
  {
    v9 = (a1 + 232);
  }

  if (a4)
  {
    kaldi::quasar::Encdec::prepareInputsUsingCustomEmbedding(a1, v9, a2, &v158);
  }

  else
  {
    kaldi::quasar::Encdec::prepareInputsAndRunEmbeddingPlan(a1, v9, a2, &v158);
  }

  if (v158)
  {
    v10 = *(a1 + v8);
    v173.__r_.__value_.__r.__words[0] = ((v160 - v159) >> 2);
    v173.__r_.__value_.__l.__size_ = 1;
    v179.i64[0] = 0;
    v178 = 0uLL;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, &v173, &v173.__r_.__value_.__r.__words[2], 2uLL);
    (*(*v10 + 64))(&v170, v10, &v178);
    v11 = (a1 + 1816);
    if (*(a1 + 1839) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(a1 + 1816), *(a1 + 1824));
    }

    else
    {
      *__p = *v11;
      v176.i64[0] = *(a1 + 1832);
    }

    v12 = v170;
    v170 = 0;
    v176.i64[1] = v12;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](&v166, __p);
    v13 = v176.i64[1];
    v176.i64[1] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v176.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

    v14 = v170;
    v170 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (v178)
    {
      *(&v178 + 1) = v178;
      operator delete(v178);
    }

    (*(**(v167 - 1) + 88))(*(v167 - 1));
    if (!*(a1 + 1092))
    {
      if (*(a1 + 488) == 1)
      {
        if (v164 != 1)
        {
          v19 = *(a1 + 152);
          v20 = *(v167 - 1);
          __p[0] = v162;
          v21 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1624, v162);
          (*(*v19 + 80))(v19, v20, *(**(v21 + 56) + 56));
          goto LABEL_42;
        }

        __p[0] = v162;
        v15 = *(std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1624, v162) + 56);
        (*(**v9 + 88))(&v178);
        if (*(a1 + 1839) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(a1 + 1816), *(a1 + 1824));
        }

        else
        {
          *__p = *v11;
          v176.i64[0] = *(a1 + 1832);
        }

        v22 = v178;
        *&v178 = 0;
        v176.i64[1] = v22;
        std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](v15, __p);
        v23 = v176.i64[1];
        v176.i64[1] = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }

        if (v176.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v18 = v178;
        *&v178 = 0;
        if (v18)
        {
          goto LABEL_41;
        }
      }

      else
      {
        (*(**v9 + 88))(__p);
        v16 = __p[0];
        __p[0] = 0;
        v17 = *(v167 - 1);
        *(v167 - 1) = v16;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        v18 = __p[0];
        __p[0] = 0;
        if (v18)
        {
LABEL_41:
          (*(*v18 + 8))(v18);
        }
      }
    }
  }

LABEL_42:
  if (*(a1 + 336))
  {
    if (*(a1 + 488) == 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Cannot use ModelChain prepare run with input net", 48);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    kaldi::quasar::TimeBlock::TimeBlock(&v178, (a1 + 2256), a1 + 2320, __p);
    if (v176.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ModelSharing: inference with Espresso compute engine, id: ", 58);
      MEMORY[0x1B8C84BB0](v24, *(a1 + 232));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    v25 = *(a1 + 232);
    v26 = (a1 + 1960);
    if (*(a1 + 1983) < 0)
    {
      std::string::__init_copy_ctor_external(&v173, *(a1 + 1960), *(a1 + 1968));
    }

    else
    {
      *&v173.__r_.__value_.__l.__data_ = *v26;
      v173.__r_.__value_.__r.__words[2] = *(a1 + 1976);
    }

    __p[0] = 0;
    __p[1] = 0;
    v176.i64[0] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, &v173, &v174, 1uLL);
    v170 = 0;
    v171 = 0;
    v172 = 0;
    (*(*v25 + 128))(v25, &v166, __p, &v170, a1 + 1528);
    v169 = &v170;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v169);
    v170 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v170);
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v173.__r_.__value_.__l.__data_);
    }

    if (*v7)
    {
      v29 = v166;
      for (i = v167; i != v29; std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::destroy[abi:ne200100](&v166, i))
      {
        i -= 32;
      }

      v167 = v29;
      v30 = *(a1 + 1528);
      if (*(a1 + 1983) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(a1 + 1960), *(a1 + 1968));
      }

      else
      {
        *__p = *v26;
        v176.i64[0] = *(a1 + 1976);
      }

      v31 = *v30;
      *v30 = 0;
      v176.i64[1] = v31;
      std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](&v166, __p);
      v32 = v176.i64[1];
      v176.i64[1] = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      if (v176.i8[7] < 0)
      {
        operator delete(__p[0]);
      }
    }

    kaldi::quasar::TimeBlock::~TimeBlock(&v178, v27);
  }

  if (*v7)
  {
    if (*(a1 + 880) == *(a1 + 888))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      kaldi::quasar::TimeBlock::TimeBlock(&v178, (a1 + 2256), a1 + 2312, __p);
      if (v176.i8[7] < 0)
      {
        operator delete(__p[0]);
      }

      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ModelSharing: inference with Espresso compute engine, id: ", 58);
        MEMORY[0x1B8C84BB0](v39, *v9);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
      }

      v40 = *(a1 + v8);
      __p[0] = 0;
      __p[1] = 0;
      v176.i64[0] = 0;
      (*(*v40 + 128))(v40, &v166, a1 + 1696, __p, a1 + 1528);
      v173.__r_.__value_.__r.__words[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v173);
      v41 = &v178;
    }

    else
    {
      if (*(a1 + 488) == 1)
      {
        if (v164 == 1)
        {
          operator new();
        }

        if (v165 == 1)
        {
          v33 = *(a1 + v8);
          __p[0] = v162;
          v34 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1624, v162);
          v35 = *(v34 + 64);
          v156 = *(v34 + 56);
          v157 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          __p[0] = 0;
          __p[1] = 0;
          v176.i64[0] = 0;
          v173.__r_.__value_.__r.__words[0] = v162;
          v36 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1648, v162);
          v37 = *(v36 + 64);
          v154 = *(v36 + 56);
          v155 = v37;
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v33 + 168))(v33, v162, &v156, a1 + 1696, __p, &v154);
          if (v155)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v155);
          }

          *&v178 = __p;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v178);
          if (v157)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v157);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v178, "");
        kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 2256), a1 + 2312, &v178);
        if (v179.i8[7] < 0)
        {
          operator delete(v178);
        }

        (*(**v9 + 176))(*v9, v162);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v178, "");
        kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 2256), a1 + 2312, &v178);
        if (v179.i8[7] < 0)
        {
          operator delete(v178);
        }

        v42 = *(a1 + v8);
        v178 = 0uLL;
        v179.i64[0] = 0;
        (*(*v42 + 152))(v42, v162, &v166, a1 + 1696, &v178, a1 + 1528);
        v173.__r_.__value_.__r.__words[0] = &v178;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v173);
      }

      v41 = __p;
    }

    kaldi::quasar::TimeBlock::~TimeBlock(v41, v38);
  }

  if (*(a1 + 312))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    kaldi::quasar::TimeBlock::TimeBlock(&v178, (a1 + 2256), a1 + 2328, __p);
    if (v176.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

    v43 = 0;
    memset(&v173, 0, sizeof(v173));
    if (*(a1 + 1092) || ((v44 = *(a1 + v8), *(a1 + 488) != 1) ? (v45 = (a1 + 1528)) : (v170 = v162, v45 = *(std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1648, v162) + 56)), (*(*v44 + 96))(__p, v44, **v45), v43 = __p[0], v46 = __p[0], *(a1 + 1092)))
    {
      v46 = **(a1 + 1528);
    }

    v152 = v43;
    if (kaldi::g_kaldi_verbose_level > 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Encoder Out: ", 13);
      kaldi::quasar::ComputeEngineBufferItf::GetShapeString(v46, &v170);
      if (v172 >= 0)
      {
        v48 = &v170;
      }

      else
      {
        v48 = v170;
      }

      if (v172 >= 0)
      {
        v49 = HIBYTE(v172);
      }

      else
      {
        v49 = v171;
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " [ ", 3);
      (*(*v46 + 112))(v46, 0);
      v51 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " ", 1);
      (*(*v46 + 112))(v46, 1);
      v52 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " ", 1);
      (*(*v46 + 112))(v46, 2);
      v53 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " ...", 4);
      if (SHIBYTE(v172) < 0)
      {
        operator delete(v170);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    if ((*(*v46 + 176))(v46) != 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unexpected tensor rank ", 23);
      v150 = (*(*v46 + 176))(v46);
      v151 = MEMORY[0x1B8C84C00](v149, v150);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, " for encoder output", 19);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v54 = (*(*v46 + 184))(v46, 0);
    v55 = (*(*v46 + 184))(v46, 1);
    v56 = (*(*v46 + 184))(v46, 2);
    v57 = *(a1 + 216);
    v170 = v54;
    v171 = v161;
    v172 = v56;
    __p[1] = 0;
    v176.i64[0] = 0;
    __p[0] = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v170, &v173, 3uLL);
    (*(*v57 + 64))(&v169, v57, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v54 >= 1)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      do
      {
        (*(*v169 + 9))(v169, v46, v58, ((v59 + v161) * v56), (v60 * v161));
        v60 += v56;
        v59 += v55;
        v58 = (v58 + v55 * v56);
        --v54;
      }

      while (v54);
    }

    if (*(a1 + 1695) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(a1 + 1672), *(a1 + 1680));
    }

    else
    {
      *__p = *(a1 + 1672);
      v176.i64[0] = *(a1 + 1688);
    }

    v61 = v169;
    v169 = 0;
    v176.i64[1] = v61;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](&v173.__r_.__value_.__l.__data_, __p);
    v62 = v176.i64[1];
    v176.i64[1] = 0;
    if (v62)
    {
      (*(*v62 + 8))(v62);
    }

    if (v176.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ModelSharing: inference with Espresso compute engine, id: ", 58);
      MEMORY[0x1B8C84BB0](v63, *(a1 + 216));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    v64 = *(a1 + 216);
    __p[0] = 0;
    __p[1] = 0;
    v176.i64[0] = 0;
    (*(*v64 + 128))(v64, &v173, a1 + 2056, __p, a1 + 1528);
    v170 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v170);
    v65 = v169;
    v169 = 0;
    if (v65)
    {
      (*(*v65 + 1))(v65);
    }

    if (v152)
    {
      (*(*v152 + 8))(v152);
    }

    __p[0] = &v173;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](__p);
    kaldi::quasar::TimeBlock::~TimeBlock(&v178, v66);
  }

  *(a1 + 2132) = (*(a1 + 1560) - *(a1 + 1552)) >> 5;
  if (*(a1 + 1508) == 1)
  {
    v67 = *(a1 + 184);
    v170 = 1;
    v179.i64[0] = 0;
    v178 = 0uLL;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, &v170, &v171, 1uLL);
    (*(*v67 + 64))(&v173, v67, &v178);
    if (*(a1 + 1767) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(a1 + 1744), *(a1 + 1752));
    }

    else
    {
      *__p = *(a1 + 1744);
      v176.i64[0] = *(a1 + 1760);
    }

    v69 = v173.__r_.__value_.__r.__words[0];
    v173.__r_.__value_.__r.__words[0] = 0;
    v176.i64[1] = v69;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1576), __p);
    v70 = v176.i64[1];
    v176.i64[1] = 0;
    if (v70)
    {
      (*(*v70 + 8))(v70);
    }

    if (v176.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

    v71 = v173.__r_.__value_.__r.__words[0];
    v173.__r_.__value_.__r.__words[0] = 0;
    if (v71)
    {
      (*(*v71 + 8))(v71);
    }

    if (v178)
    {
      *(&v178 + 1) = v178;
      operator delete(v178);
    }

    v72 = *(a1 + 184);
    v170 = 1;
    v179.i64[0] = 0;
    v178 = 0uLL;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, &v170, &v171, 1uLL);
    (*(*v72 + 64))(&v173, v72, &v178);
    if (*(a1 + 1959) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(a1 + 1936), *(a1 + 1944));
    }

    else
    {
      *__p = *(a1 + 1936);
      v176.i64[0] = *(a1 + 1952);
    }
  }

  else
  {
    v68 = *(a1 + 184);
    v170 = 1;
    v179.i64[0] = 0;
    v178 = 0uLL;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, &v170, &v171, 1uLL);
    (*(*v68 + 64))(&v173, v68, &v178);
    if (*(a1 + 1791) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(a1 + 1768), *(a1 + 1776));
    }

    else
    {
      *__p = *(a1 + 1768);
      v176.i64[0] = *(a1 + 1784);
    }
  }

  v73 = v173.__r_.__value_.__r.__words[0];
  v173.__r_.__value_.__r.__words[0] = 0;
  v176.i64[1] = v73;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
  v74 = v176.i64[1];
  v176.i64[1] = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  if (v176.i8[7] < 0)
  {
    operator delete(__p[0]);
  }

  v75 = v173.__r_.__value_.__r.__words[0];
  v173.__r_.__value_.__r.__words[0] = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  if (v178)
  {
    *(&v178 + 1) = v178;
    operator delete(v178);
  }

  *(a1 + 2136) = (*(a1 + 1560) - *(a1 + 1552)) >> 5;
  if (*(a1 + 1515) == 1)
  {
    v76 = *(a1 + 184);
    v170 = 1;
    v179.i64[0] = 0;
    v178 = 0uLL;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, &v170, &v171, 1uLL);
    (*(*v76 + 64))(&v173, v76, &v178);
    if (*(a1 + 1863) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(a1 + 1840), *(a1 + 1848));
    }

    else
    {
      *__p = *(a1 + 1840);
      v176.i64[0] = *(a1 + 1856);
    }

    v77 = v173.__r_.__value_.__r.__words[0];
    v173.__r_.__value_.__r.__words[0] = 0;
    v176.i64[1] = v77;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
    v78 = v176.i64[1];
    v176.i64[1] = 0;
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }

    if (v176.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

    v79 = v173.__r_.__value_.__r.__words[0];
    v173.__r_.__value_.__r.__words[0] = 0;
    if (v79)
    {
      (*(*v79 + 8))(v79);
    }

    if (v178)
    {
      *(&v178 + 1) = v178;
      operator delete(v178);
    }

    if (*(a1 + 1508) == 1)
    {
      v80 = *(a1 + 184);
      v170 = 1;
      v179.i64[0] = 0;
      v178 = 0uLL;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, &v170, &v171, 1uLL);
      (*(*v80 + 64))(&v173, v80, &v178);
      if (*(a1 + 1815) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(a1 + 1792), *(a1 + 1800));
      }

      else
      {
        *__p = *(a1 + 1792);
        v176.i64[0] = *(a1 + 1808);
      }

      v81 = v173.__r_.__value_.__r.__words[0];
      v173.__r_.__value_.__r.__words[0] = 0;
      v176.i64[1] = v81;
      std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1576), __p);
      v82 = v176.i64[1];
      v176.i64[1] = 0;
      if (v82)
      {
        (*(*v82 + 8))(v82);
      }

      if (v176.i8[7] < 0)
      {
        operator delete(__p[0]);
      }

      v83 = v173.__r_.__value_.__r.__words[0];
      v173.__r_.__value_.__r.__words[0] = 0;
      if (v83)
      {
        (*(*v83 + 8))(v83);
      }

      if (v178)
      {
        *(&v178 + 1) = v178;
        operator delete(v178);
      }
    }
  }

  v84 = (*(a1 + 1560) - *(a1 + 1552)) >> 5;
  *(a1 + 2144) = v84;
  if ((*(a1 + 1887) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 1872))
    {
      goto LABEL_197;
    }
  }

  else if (!*(a1 + 1887))
  {
    goto LABEL_197;
  }

  v85 = *(a1 + 184);
  v170 = 1;
  v179.i64[0] = 0;
  v178 = 0uLL;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, &v170, &v171, 1uLL);
  (*(*v85 + 64))(&v173, v85, &v178);
  if (*(a1 + 1887) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *(a1 + 1864), *(a1 + 1872));
  }

  else
  {
    *__p = *(a1 + 1864);
    v176.i64[0] = *(a1 + 1880);
  }

  v86 = v173.__r_.__value_.__r.__words[0];
  v173.__r_.__value_.__r.__words[0] = 0;
  v176.i64[1] = v86;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
  v87 = v176.i64[1];
  v176.i64[1] = 0;
  if (v87)
  {
    (*(*v87 + 8))(v87);
  }

  if (v176.i8[7] < 0)
  {
    operator delete(__p[0]);
  }

  v88 = v173.__r_.__value_.__r.__words[0];
  v173.__r_.__value_.__r.__words[0] = 0;
  if (v88)
  {
    (*(*v88 + 8))(v88);
  }

  if (v178)
  {
    *(&v178 + 1) = v178;
    operator delete(v178);
  }

  v84 = (*(a1 + 1560) - *(a1 + 1552)) >> 5;
LABEL_197:
  *(a1 + 2140) = v84;
  if (*(a1 + 2240) && (*(a1 + 1506) & 1) == 0 && (*(a1 + 1507) & 1) == 0)
  {
    if ((*(a1 + 1509) & 1) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Espresso shortlist models require active shortlist!", 51);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    (*(**(a1 + 184) + 24))(&v178);
    if (*(a1 + 1911) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(a1 + 1888), *(a1 + 1896));
    }

    else
    {
      *__p = *(a1 + 1888);
      v176.i64[0] = *(a1 + 1904);
    }

    v89 = v178;
    *&v178 = 0;
    v176.i64[1] = v89;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
    v90 = v176.i64[1];
    v176.i64[1] = 0;
    if (v90)
    {
      (*(*v90 + 8))(v90);
    }

    if (v176.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

    v91 = v178;
    *&v178 = 0;
    if (v91)
    {
      (*(*v91 + 8))(v91);
    }
  }

  std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::resize(a1 + 2432, 1uLL);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](*(a1 + 2432));
  *(a1 + 2112) = (*(a1 + 1560) - *(a1 + 1552)) >> 5;
  v92 = *(a1 + 2080);
  v93 = *(a1 + 2088);
  if (v92 != v93)
  {
    v153 = vdupq_n_s64(1uLL);
    do
    {
      if (*(a1 + 2460) == 1)
      {
        v94 = *(a1 + 2456);
        LODWORD(__p[0]) = 0;
        std::vector<float>::vector[abi:ne200100](&v173, v94);
        v95 = *(a1 + 184);
        v96 = *(a1 + 2456);
        *&v178 = 1;
        *(&v178 + 1) = v96;
        v179 = v153;
        v171 = 0;
        v172 = 0;
        v170 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v170, &v178, v180, 4uLL);
        (*(*v95 + 64))(&v169, v95, &v170);
        if (*(v92 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *v92, *(v92 + 1));
        }

        else
        {
          v97 = *v92;
          v176.i64[0] = *(v92 + 2);
          *__p = v97;
        }

        v107 = v169;
        v169 = 0;
        v176.i64[1] = v107;
        std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
        v108 = v176.i64[1];
        v176.i64[1] = 0;
        if (v108)
        {
          (*(*v108 + 8))(v108);
        }

        if (v176.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v109 = v169;
        v169 = 0;
        if (v109)
        {
          (*(*v109 + 1))(v109);
        }

        if (v170)
        {
          v171 = v170;
          operator delete(v170);
        }

        (*(**(*(a1 + 1560) - 8) + 88))(*(*(a1 + 1560) - 8));
        v110 = *(a1 + 2432);
        v111 = *(a1 + 184);
        v112 = *(a1 + 2456);
        __p[0] = 1;
        __p[1] = v112;
        v176 = vdupq_n_s64(1uLL);
        v179.i64[0] = 0;
        v178 = 0uLL;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v178, __p, &v177, 4uLL);
        (*(*v111 + 64))(&v169, v111, &v178);
        v170 = v169;
        if (v169)
        {
          operator new();
        }

        v171 = 0;
        v169 = 0;
        std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v110, &v170);
        if (v171)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v171);
        }

        v115 = v169;
        v169 = 0;
        if (v115)
        {
          (*(*v115 + 1))(v115);
        }

        if (v178)
        {
          *(&v178 + 1) = v178;
          operator delete(v178);
        }

        v116 = *(*(*(a1 + 2432) + 8) - 16);
        (*(*v116 + 88))(v116);
        v114 = v173.__r_.__value_.__r.__words[0];
        if (!v173.__r_.__value_.__r.__words[0])
        {
          goto LABEL_254;
        }

        v173.__r_.__value_.__l.__size_ = v173.__r_.__value_.__r.__words[0];
      }

      else
      {
        v98 = *(a1 + 184);
        v99 = *(a1 + 2456);
        LODWORD(v170) = 0;
        std::vector<float>::vector[abi:ne200100](&v178, v99);
        (*(*v98 + 32))(&v173, v98, &v178, 0);
        if (*(v92 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *v92, *(v92 + 1));
        }

        else
        {
          v100 = *v92;
          v176.i64[0] = *(v92 + 2);
          *__p = v100;
        }

        v101 = v173.__r_.__value_.__r.__words[0];
        v173.__r_.__value_.__r.__words[0] = 0;
        v176.i64[1] = v101;
        std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
        v102 = v176.i64[1];
        v176.i64[1] = 0;
        if (v102)
        {
          (*(*v102 + 8))(v102);
        }

        if (v176.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v103 = v173.__r_.__value_.__r.__words[0];
        v173.__r_.__value_.__r.__words[0] = 0;
        if (v103)
        {
          (*(*v103 + 8))(v103);
        }

        if (v178)
        {
          *(&v178 + 1) = v178;
          operator delete(v178);
        }

        v104 = *(a1 + 2432);
        v105 = *(a1 + 184);
        v106 = *(a1 + 2456);
        LODWORD(v170) = 0;
        std::vector<float>::vector[abi:ne200100](__p, v106);
        (*(*v105 + 32))(&v173, v105, __p, 0);
        *&v178 = v173.__r_.__value_.__r.__words[0];
        if (v173.__r_.__value_.__r.__words[0])
        {
          operator new();
        }

        v178 = 0uLL;
        v173.__r_.__value_.__r.__words[0] = 0;
        std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v104, &v178);
        if (*(&v178 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v178 + 1));
        }

        v113 = v173.__r_.__value_.__r.__words[0];
        v173.__r_.__value_.__r.__words[0] = 0;
        if (v113)
        {
          (*(*v113 + 8))(v113);
        }

        v114 = __p[0];
        if (!__p[0])
        {
          goto LABEL_254;
        }

        __p[1] = __p[0];
      }

      operator delete(v114);
LABEL_254:
      v92 = (v92 + 24);
    }

    while (v92 != v93);
  }

  if (*(a1 + 1515))
  {
    v117 = *(a1 + 2432);
    if (*(a1 + 1518) == 1)
    {
      v118 = *(a1 + 184);
      LODWORD(v170) = 0;
      __p[1] = 0;
      v176.i64[0] = 0;
      __p[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v170, &v170 + 4, 1uLL);
      (*(*v118 + 24))(&v173, v118, __p, 0);
      *&v178 = v173.__r_.__value_.__r.__words[0];
      if (v173.__r_.__value_.__r.__words[0])
      {
        operator new();
      }
    }

    else
    {
      v119 = *(a1 + 184);
      LODWORD(v170) = 1;
      __p[1] = 0;
      v176.i64[0] = 0;
      __p[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v170, &v170 + 4, 1uLL);
      (*(*v119 + 24))(&v173, v119, __p, 0);
      *&v178 = v173.__r_.__value_.__r.__words[0];
      if (v173.__r_.__value_.__r.__words[0])
      {
        operator new();
      }
    }

    v178 = 0uLL;
    v173.__r_.__value_.__r.__words[0] = 0;
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v117, &v178);
    if (*(&v178 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v178 + 1));
    }

    v120 = v173.__r_.__value_.__r.__words[0];
    v173.__r_.__value_.__r.__words[0] = 0;
    if (v120)
    {
      (*(*v120 + 8))(v120);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v121 = *(a1 + 2056);
  if (v121 != *(a1 + 2064))
  {
    for (j = 0; 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2064) - v121) >> 3) > j; ++j)
    {
      if (v158 < 1 || *(a1 + 432))
      {
        (*(**(*(a1 + 1528) + 8 * (*(a1 + 2104) + j)) + 16))(&v178);
        v123 = (v121 + 24 * j);
        if (*(v123 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *v123, *(v123 + 1));
        }

        else
        {
          v124 = *v123;
          v176.i64[0] = *(v123 + 2);
          *__p = v124;
        }

        v125 = v178;
        *&v178 = 0;
        v176.i64[1] = v125;
        std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
        v126 = v176.i64[1];
        v176.i64[1] = 0;
        if (v126)
        {
          (*(*v126 + 8))(v126);
        }

        if (v176.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v127 = v178;
        *&v178 = 0;
        if (!v127)
        {
          goto LABEL_280;
        }
      }

      else
      {
        v128 = *(*(a1 + 1528) + 8 * (*(a1 + 2104) + j));
        if ((*(*v128 + 176))(v128) != 3)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unexpected tensor rank ", 23);
          v142 = (*(*v128 + 176))(v128);
          v143 = MEMORY[0x1B8C84C00](v141, v142);
          v144 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, " for handover ", 14);
          v145 = *(a1 + 2056) + 24 * j;
          v146 = *(v145 + 23);
          if (v146 >= 0)
          {
            v147 = *(a1 + 2056) + 24 * j;
          }

          else
          {
            v147 = *v145;
          }

          if (v146 >= 0)
          {
            v148 = *(v145 + 23);
          }

          else
          {
            v148 = *(v145 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, v147, v148);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        v129 = (*(*v128 + 184))(v128, 0);
        v130 = (*(*v128 + 184))(v128, 1);
        v131 = (*(*v128 + 184))(v128, 2);
        v132 = *(a1 + 184);
        *&v178 = v129;
        *(&v178 + 1) = v161;
        v179.i64[0] = v131;
        __p[1] = 0;
        v176.i64[0] = 0;
        __p[0] = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v178, &v179.i64[1], 3uLL);
        (*(*v132 + 64))(&v173, v132, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v129 >= 1)
        {
          v133 = 0;
          v134 = 0;
          v135 = 0;
          do
          {
            (*(*v173.__r_.__value_.__l.__data_ + 72))(v173.__r_.__value_.__r.__words[0], v128, v133, ((v134 + v161) * v131), (v135 * v161));
            v135 += v131;
            v134 += v130;
            v133 = (v133 + v130 * v131);
            --v129;
          }

          while (v129);
        }

        v136 = *(a1 + 2056) + 24 * j;
        if (*(v136 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *v136, *(v136 + 8));
        }

        else
        {
          v137 = *v136;
          v176.i64[0] = *(v136 + 16);
          *__p = v137;
        }

        v138 = v173.__r_.__value_.__r.__words[0];
        v173.__r_.__value_.__r.__words[0] = 0;
        v176.i64[1] = v138;
        std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100]((a1 + 1552), __p);
        v139 = v176.i64[1];
        v176.i64[1] = 0;
        if (v139)
        {
          (*(*v139 + 8))(v139);
        }

        if (v176.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v127 = v173.__r_.__value_.__r.__words[0];
        v173.__r_.__value_.__r.__words[0] = 0;
        if (!v127)
        {
          goto LABEL_280;
        }
      }

      (*(*v127 + 8))(v127);
LABEL_280:
      v121 = *(a1 + 2056);
    }
  }

  __p[0] = &v166;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v163 < 0)
  {
    operator delete(v162[0]);
  }

  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v168, v140);
}

void sub_1B545F91C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B545FC0CLL);
}

void sub_1B545F92C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v39);
  JUMPOUT(0x1B545FB40);
}

void sub_1B545F954(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a33)
  {
    (*(*a33 + 8))(a33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    JUMPOUT(0x1B545FBC0);
  }

  JUMPOUT(0x1B545FBFCLL);
}

void sub_1B545F98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a33)
  {
    (*(*a33 + 8))(a33);
  }

  v38 = *(v37 - 144);
  if (v38)
  {
    *(v37 - 136) = v38;
    JUMPOUT(0x1B545FB04);
  }

  if (a37)
  {
    JUMPOUT(0x1B545FBC0);
  }

  JUMPOUT(0x1B545FBFCLL);
}

void sub_1B545FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a33)
  {
    (*(*a33 + 8))(a33);
  }

  v36 = *(v35 - 144);
  if (v36)
  {
    *(v35 - 136) = v36;
    JUMPOUT(0x1B545FB04);
  }

  JUMPOUT(0x1B545FBB4);
}

void kaldi::quasar::Encdec::prepareInputsUsingCustomEmbedding(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  (*(**a2 + 40))(&v13);
  v7 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v10, (a1 + 1936), &v13);
  v8 = v13;
  v11 = v7;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 1))(v8);
    v7 = v11;
  }

  *a4 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 32) = *(a3 + 20);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 40) = 0;
  *(a4 + 64) = 0;
  v9 = v12;
  *(a4 + 72) = v10;
  *(a4 + 80) = v7;
  *(a4 + 88) = v9;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = &v10;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1B545FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  a12 = &a9;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Encdec::prepareInputsAndRunEmbeddingPlan(uint64_t a1@<X0>, kaldi::quasar::ComputeEngineItf **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84[1] = *MEMORY[0x1E69E9840];
  memset(&v78, 0, sizeof(v78));
  v8 = *(a1 + 1510);
  if (v8 == 1)
  {
    LODWORD(v71.__r_.__value_.__l.__data_) = *(a1 + 812) - 1;
    std::vector<int>::push_back[abi:ne200100](&v78.__begin_, &v71);
    LOBYTE(v8) = *(a1 + 1510);
  }

  v9 = *(a1 + 904) - (*(a1 + 1511) + v8);
  if (v9 >= *(a3 + 20))
  {
    v9 = *(a3 + 20);
  }

  if (v9 < 1)
  {
    if ((*(a1 + 1511) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = 0;
  do
  {
    LODWORD(v71.__r_.__value_.__l.__data_) = *(*(a3 + 8) + 4 * *(a3 + 24) * v10);
    std::vector<int>::push_back[abi:ne200100](&v78.__begin_, &v71);
    ++v10;
    v11 = *(a3 + 20);
    v12 = *(a1 + 1511);
    if (*(a1 + 904) - (v12 + *(a1 + 1510)) < v11)
    {
      v11 = *(a1 + 904) - (v12 + *(a1 + 1510));
    }
  }

  while (v10 < v11);
  if (v12)
  {
LABEL_13:
    LODWORD(v71.__r_.__value_.__l.__data_) = *(a1 + 816) - 1;
    std::vector<int>::push_back[abi:ne200100](&v78.__begin_, &v71);
  }

LABEL_14:
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v13 = v78.__end_ - v78.__begin_;
  v14 = (v78.__end_ - v78.__begin_) >> 2;
  v15 = *(a1 + 856);
  v16 = *(a1 + 864);
  if (v15 == v16)
  {
    v17 = 0;
    v19 = *(a1 + 848);
  }

  else
  {
    v17 = 0;
    v18 = *(a1 + 856);
    do
    {
      v19 = *v18;
      if (*v18 >= v14)
      {
        break;
      }

      ++v17;
      ++v18;
    }

    while (v18 != v16);
  }

  v20 = v17 == v16 - v15;
  if (*(a1 + 880) == *(a1 + 888))
  {
    if (*(a1 + 935) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, *(a1 + 912), *(a1 + 920));
    }

    else
    {
      v74 = *(a1 + 912);
    }
  }

  else
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 912), 95, &v71);
    v21 = *(a1 + 880) + 24 * (v17 - v20);
    v22 = *(v21 + 23);
    if (v22 >= 0)
    {
      v23 = (*(a1 + 880) + 24 * (v17 - v20));
    }

    else
    {
      v23 = *v21;
    }

    if (v22 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    v25 = std::string::append(&v71, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  v27 = *(a1 + 488) == 1 && std::__tree<std::string>::__count_unique<std::string>(a1 + 1624, &v74.__r_.__value_.__l.__data_) == 0;
  v71.__r_.__value_.__r.__words[0] = a1 + 936;
  v28 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 496, (a1 + 936));
  v69 = std::__tree<std::string>::__count_unique<std::string>(v28 + 56, &v74.__r_.__value_.__l.__data_);
  v71.__r_.__value_.__r.__words[0] = a1 + 936;
  v29 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 496, (a1 + 936));
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v29 + 56, &v74.__r_.__value_.__l.__data_);
  if (v19)
  {
    LODWORD(v71.__r_.__value_.__l.__data_) = 0;
    std::vector<float>::resize(&v75, (v13 >> 2), &v71, v30);
    if (v19 >= 1)
    {
      if (v19 < v14)
      {
        LODWORD(v14) = v19;
      }

      std::vector<float>::resize(&v75, v19, &kaldi::quasar::kSmallLogProb, v31);
      LODWORD(v71.__r_.__value_.__l.__data_) = 0;
      std::vector<int>::resize(&v78, v19, &v71);
    }
  }

  if (*(a1 + 168))
  {
    v32 = (a1 + 168);
  }

  else
  {
    v32 = a2;
  }

  v72 = 0uLL;
  v73 = 0;
  if (*(a1 + 1513) == 1)
  {
    v33 = *v32;
    v82 = (v78.__end_ - v78.__begin_);
    v83 = 1;
    memset(&v71, 0, sizeof(v71));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v71, &v82, v84, 2uLL);
    (*(*v33 + 56))(&v80, v33, &v71);
    v34 = (a1 + 1744);
    v35 = *(&v72 + 1);
    if (*(&v72 + 1) >= v73)
    {
      v42 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v72, v34, &v80);
      v43 = v80.__r_.__value_.__r.__words[0];
      *(&v72 + 1) = v42;
      v80.__r_.__value_.__r.__words[0] = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }
    }

    else
    {
      if (*(a1 + 1767) < 0)
      {
        std::string::__init_copy_ctor_external(*(&v72 + 1), *(a1 + 1744), *(a1 + 1752));
      }

      else
      {
        v36 = *v34;
        *(*(&v72 + 1) + 16) = *(a1 + 1760);
        *v35 = v36;
      }

      *(v35 + 24) = v80.__r_.__value_.__r.__words[0];
      *(&v72 + 1) = v35 + 32;
      v80.__r_.__value_.__r.__words[0] = 0;
    }

    if (v71.__r_.__value_.__r.__words[0])
    {
      v71.__r_.__value_.__l.__size_ = v71.__r_.__value_.__r.__words[0];
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    (*(**(*(&v72 + 1) - 8) + 80))(*(*(&v72 + 1) - 8));
  }

  else
  {
    (*(**v32 + 24))(&v71);
    v37 = (a1 + 1744);
    v38 = *(&v72 + 1);
    if (*(&v72 + 1) >= v73)
    {
      v40 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v72, v37, &v71);
      v41 = v71.__r_.__value_.__r.__words[0];
      *(&v72 + 1) = v40;
      v71.__r_.__value_.__r.__words[0] = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }
    }

    else
    {
      if (*(a1 + 1767) < 0)
      {
        std::string::__init_copy_ctor_external(*(&v72 + 1), *(a1 + 1744), *(a1 + 1752));
      }

      else
      {
        v39 = *v37;
        *(*(&v72 + 1) + 16) = *(a1 + 1760);
        *v38 = v39;
      }

      *(v38 + 24) = v71.__r_.__value_.__r.__words[0];
      *(&v72 + 1) = v38 + 32;
    }
  }

  if (*(a1 + 1516) == 1)
  {
    std::vector<int>::vector[abi:ne200100](&v71, v78.__end_ - v78.__begin_);
    if (v71.__r_.__value_.__r.__words[0] != v71.__r_.__value_.__l.__size_)
    {
      v44 = 0;
      v45 = (v71.__r_.__value_.__l.__size_ - v71.__r_.__value_.__r.__words[0] - 4) >> 2;
      v46 = vdupq_n_s64(v45);
      v47 = (v45 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v48 = (v71.__r_.__value_.__r.__words[0] + 8);
      do
      {
        v49 = vdupq_n_s64(v44);
        v50 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1B5AE0060)));
        if (vuzp1_s16(v50, *v46.i8).u8[0])
        {
          *(v48 - 2) = v44;
        }

        if (vuzp1_s16(v50, *&v46).i8[2])
        {
          *(v48 - 1) = v44 + 1;
        }

        if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1B5AE0050)))).i32[1])
        {
          *v48 = v44 + 2;
          v48[1] = v44 + 3;
        }

        v44 += 4;
        v48 += 4;
      }

      while (v47 != v44);
    }

    (*(**v32 + 24))(&v82);
    v51 = (a1 + 1792);
    v52 = *(&v72 + 1);
    if (*(&v72 + 1) >= v73)
    {
      v54 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v72, v51, &v82);
      v55 = v82;
      *(&v72 + 1) = v54;
      v82 = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }
    }

    else
    {
      if (*(a1 + 1815) < 0)
      {
        std::string::__init_copy_ctor_external(*(&v72 + 1), *(a1 + 1792), *(a1 + 1800));
      }

      else
      {
        v53 = *v51;
        *(*(&v72 + 1) + 16) = *(a1 + 1808);
        *v52 = v53;
      }

      *(v52 + 24) = v82;
      *(&v72 + 1) = v52 + 32;
    }

    if (v71.__r_.__value_.__r.__words[0])
    {
      v71.__r_.__value_.__l.__size_ = v71.__r_.__value_.__r.__words[0];
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 1508) == 1)
  {
    v82 = 0;
    v83 = 0;
    v84[0] = 0;
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v71, 5);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "ModelSharing: inference with Espresso compute engine, id: ", 58);
      MEMORY[0x1B8C84BB0](v56, *v32);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v71);
    }

    v57 = *(a1 + 168);
    v58 = (a1 + 1936);
    if (*(a1 + 1959) < 0)
    {
      std::string::__init_copy_ctor_external(&v80, *(a1 + 1936), *(a1 + 1944));
    }

    else
    {
      *&v80.__r_.__value_.__l.__data_ = *v58;
      v80.__r_.__value_.__r.__words[2] = *(a1 + 1952);
    }

    memset(&v71, 0, sizeof(v71));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v71, &v80, &v81, 1uLL);
    memset(v70, 0, sizeof(v70));
    (*(*v57 + 128))(v57, &v72, &v71, v70, &v82);
    v79 = v70;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v79);
    v70[0] = &v71;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v70);
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    v59 = *(&v72 + 1);
    v60 = v72;
    while (v59 != v60)
    {
      v59 -= 32;
      std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::destroy[abi:ne200100](&v72, v59);
    }

    *(&v72 + 1) = v60;
    if (*(a1 + 1092))
    {
      if (*(a1 + 1088) == *(a1 + 1096))
      {
        if (v60 >= v73)
        {
          v61 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v72, (a1 + 1936), v82);
        }

        else
        {
          std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__construct_one_at_end[abi:ne200100]<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v72, (a1 + 1936), v82);
          v61 = (v60 + 32);
        }

        *(&v72 + 1) = v61;
        goto LABEL_110;
      }

      kaldi::quasar::ComputeEngineItf::CreateCopyFloat(*a2, *v82, &v71);
      v62 = *(&v72 + 1);
      if (*(&v72 + 1) < v73)
      {
        if (*(a1 + 1959) < 0)
        {
LABEL_99:
          std::string::__init_copy_ctor_external(*(&v72 + 1), *(a1 + 1936), *(a1 + 1944));
LABEL_103:
          *(v62 + 24) = v71.__r_.__value_.__r.__words[0];
          *(&v72 + 1) = v62 + 32;
LABEL_110:
          v71.__r_.__value_.__r.__words[0] = &v82;
          std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v71);
          goto LABEL_111;
        }

LABEL_102:
        v63 = *v58;
        *(v62 + 16) = *(a1 + 1952);
        *v62 = v63;
        goto LABEL_103;
      }
    }

    else
    {
      if (*(a1 + 488) == 1)
      {
        if (v27)
        {
          operator new();
        }

        v64 = *(a1 + 152);
        v65 = *v82;
        v80.__r_.__value_.__r.__words[0] = &v74;
        v66 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1624, &v74.__r_.__value_.__l.__data_);
        (*(*v64 + 80))(v64, v65, *(**(v66 + 56) + 24));
        goto LABEL_110;
      }

      (*(**a2 + 88))(&v71);
      v62 = *(&v72 + 1);
      if (*(&v72 + 1) < v73)
      {
        if (*(a1 + 1959) < 0)
        {
          goto LABEL_99;
        }

        goto LABEL_102;
      }
    }

    v67 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v72, (a1 + 1936), &v71);
    v68 = v71.__r_.__value_.__r.__words[0];
    *(&v72 + 1) = v67;
    v71.__r_.__value_.__r.__words[0] = 0;
    if (v68)
    {
      (*(*v68 + 8))(v68);
    }

    goto LABEL_110;
  }

LABEL_111:
  *a4 = v19;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a4 + 8, v75, v76, (v76 - v75) >> 2);
  *(a4 + 32) = v14;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a4 + 40), v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a4 + 40) = v74;
  }

  *(a4 + 64) = v27;
  *(a4 + 65) = v69 == 0;
  *(a4 + 72) = v72;
  *(a4 + 88) = v73;
  v72 = 0uLL;
  v73 = 0;
  v71.__r_.__value_.__r.__words[0] = &v72;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v71);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78.__begin_)
  {
    v78.__end_ = v78.__begin_;
    operator delete(v78.__begin_);
  }
}

void sub_1B54609E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53)
{
  v55 = *(v53 - 160);
  *(v53 - 160) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  __p = (v53 - 128);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a52;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v53 - 217) < 0)
  {
    operator delete(*(v53 - 240));
  }

  v56 = *(v53 - 216);
  if (v56)
  {
    *(v53 - 208) = v56;
    operator delete(v56);
  }

  v57 = *(v53 - 192);
  if (v57)
  {
    *(v53 - 184) = v57;
    operator delete(v57);
  }

  _Unwind_Resume(a1);
}

void **std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = (v4 - *result) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - *result;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(result, v12);
    }

    v13 = 32 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v13 + 24) = v15;
    v8 = 32 * v9 + 32;
    v16 = result[1] - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *a2 = 0;
    *(a2 + 1) = 0;
    v7 = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v4 + 3) = v7;
    v8 = (v4 + 32);
  }

  v3[1] = v8;
  return result;
}

uint64_t std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void kaldi::quasar::Encdec::EncFeedforward()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Model does not support stream-decoding");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::Encdec::Feedforward(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  v292 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v281, (a1 + 2256), a1 + 2352, &__p);
  if (SHIBYTE(__src[1]) < 0)
  {
    operator delete(__p);
  }

  v6 = *(a2 + 20);
  if (*(a1 + 1509) == 1)
  {
    v7 = (*(*(a1 + 2240) + 8) - **(a1 + 2240)) >> 2;
  }

  else
  {
    v7 = (*(**(a1 + 560) + 120))(*(a1 + 560)) - 1;
  }

  kaldi::CuMatrix<float>::Resize(a3, v6, v7, 0, 0);
  v272 = v6;
  v270 = a3;
  v271 = v6;
  if (*(a1 + 836) == -1)
  {
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Beam batched, batch size: ", 26);
      MEMORY[0x1B8C84C00](v61, v6);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    if (*(a1 + 1508) == 1)
    {
      v62 = *(a1 + 2116);
      v63 = *(a1 + 1576);
      v64 = *(a1 + 168);
      v285.__r_.__value_.__r.__words[0] = v6;
      __src[0] = 0;
      __src[1] = 0;
      __p = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v285, &v285.__r_.__value_.__l.__size_, 1uLL);
      (*(*v64 + 64))(&v288, v64, &__p);
      v65 = v63 + 32 * v62;
      v66 = v288;
      v288 = 0;
      v67 = *(v65 + 24);
      *(v65 + 24) = v66;
      if (v67)
      {
        (*(*v67 + 8))(v67);
      }

      v68 = v288;
      v288 = 0;
      if (v68)
      {
        (*(*v68 + 8))(v68);
      }

      if (__p)
      {
        __src[0] = __p;
        operator delete(__p);
      }

      if (v6 >= 1)
      {
        v69 = 0;
        do
        {
          (*(**(v65 + 24) + 104))(*(v65 + 24), v69, *(*(a2 + 8) + 4 * *(a2 + 24) * v69));
          v69 = (v69 + 1);
        }

        while (v6 != v69);
      }

      v70 = *(a1 + 2120);
      v71 = *(a1 + 1576);
      v72 = *(a1 + 168);
      v285.__r_.__value_.__r.__words[0] = v6;
      __src[0] = 0;
      __src[1] = 0;
      __p = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v285, &v285.__r_.__value_.__l.__size_, 1uLL);
      (*(*v72 + 64))(&v288, v72, &__p);
      v73 = v71 + 32 * v70;
      v74 = v288;
      v288 = 0;
      v75 = *(v73 + 24);
      *(v73 + 24) = v74;
      if (v75)
      {
        (*(*v75 + 8))(v75);
      }

      v76 = v288;
      v288 = 0;
      if (v76)
      {
        (*(*v76 + 8))(v76);
      }

      if (__p)
      {
        __src[0] = __p;
        operator delete(__p);
      }

      if (v6 >= 1)
      {
        v77 = 0;
        v78 = 8;
        do
        {
          v79 = *(v73 + 24);
          v80 = *(*(*(a1 + 2432) + v78) - 16);
          v81 = (*(*v80 + 112))(v80, 0);
          (*(*v79 + 104))(v79, v77++, v81 - (*(a1 + 1518) ^ 1u));
          v78 += 24;
        }

        while (v6 != v77);
      }

      v288 = 0;
      v289 = 0uLL;
      if (kaldi::g_kaldi_verbose_level > 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Embedding Inputs:", 17);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        v82 = *(a1 + 1576);
        v83 = *(a1 + 1584);
        if (v82 != v83)
        {
          while ((*(v82 + 23) & 0x80000000) == 0)
          {
            if (*(v82 + 23) != 18)
            {
              v84 = v82;
              if (*(v82 + 23) != 8)
              {
                goto LABEL_113;
              }

LABEL_112:
              if (*v84 != 0x6E6F697469736F70)
              {
                goto LABEL_113;
              }

              goto LABEL_135;
            }

            if (*v82 != 0x74756F5F76657270 || *(v82 + 8) != 0x656B6F745F747570 || *(v82 + 16) != 29550)
            {
LABEL_113:
              if (kaldi::g_kaldi_verbose_level >= 3)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
                v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "  ", 2);
                v88 = *(v82 + 23);
                if (v88 >= 0)
                {
                  v89 = v82;
                }

                else
                {
                  v89 = *v82;
                }

                if (v88 >= 0)
                {
                  v90 = *(v82 + 23);
                }

                else
                {
                  v90 = *(v82 + 8);
                }

                v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, v89, v90);
                v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, ": ", 2);
                kaldi::quasar::ComputeEngineBufferItf::GetShapeString(*(v82 + 24), &v285);
                if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v93 = &v285;
                }

                else
                {
                  v93 = v285.__r_.__value_.__r.__words[0];
                }

                if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v285.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v285.__r_.__value_.__l.__size_;
                }

                v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v93, size);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, " [ ", 3);
                (*(**(v82 + 24) + 112))(*(v82 + 24), 0);
                v96 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, " ", 1);
                (*(**(v82 + 24) + 112))(*(v82 + 24), 1);
                v97 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, " ", 1);
                (*(**(v82 + 24) + 112))(*(v82 + 24), 2);
                v98 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, " ...", 4);
LABEL_149:
                if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v285.__r_.__value_.__l.__data_);
                }

                kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
                goto LABEL_152;
              }

              goto LABEL_152;
            }

LABEL_135:
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
              v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "  ", 2);
              v102 = *(v82 + 23);
              if (v102 >= 0)
              {
                v103 = v82;
              }

              else
              {
                v103 = *v82;
              }

              if (v102 >= 0)
              {
                v104 = *(v82 + 23);
              }

              else
              {
                v104 = *(v82 + 8);
              }

              v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v103, v104);
              v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, ": ", 2);
              kaldi::quasar::ComputeEngineBufferItf::GetShapeString(*(v82 + 24), &v285);
              if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v107 = &v285;
              }

              else
              {
                v107 = v285.__r_.__value_.__r.__words[0];
              }

              if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v108 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v108 = v285.__r_.__value_.__l.__size_;
              }

              v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, v107, v108);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, " [ ", 3);
              (*(**(v82 + 24) + 112))(*(v82 + 24), 0);
              v110 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, " ...", 4);
              goto LABEL_149;
            }

LABEL_152:
            v82 += 32;
            if (v82 == v83)
            {
              goto LABEL_153;
            }
          }

          if (*(v82 + 8) == 18)
          {
            v85 = **v82 == 0x74756F5F76657270 && *(*v82 + 8) == 0x656B6F745F747570;
            if (v85 && *(*v82 + 16) == 29550)
            {
              goto LABEL_135;
            }
          }

          if (*(v82 + 8) != 8)
          {
            goto LABEL_113;
          }

          v84 = *v82;
          goto LABEL_112;
        }

LABEL_153:
        if (kaldi::g_kaldi_verbose_level >= 5)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
          v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ModelSharing: inference with Espresso compute engine, id: ", 58);
          MEMORY[0x1B8C84BB0](v111, *(a1 + 168));
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }
      }

      v112 = *(a1 + 168);
      if (*(a1 + 1959) < 0)
      {
        std::string::__init_copy_ctor_external(&v285, *(a1 + 1936), *(a1 + 1944));
      }

      else
      {
        v285 = *(a1 + 1936);
      }

      __p = 0;
      __src[0] = 0;
      __src[1] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v285, &v286, 1uLL);
      v282 = 0uLL;
      v283 = 0;
      (*(*v112 + 128))(v112, a1 + 1576, &__p, &v282, &v288);
      v275[0] = &v282;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v275);
      v282.i64[0] = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v282);
      if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v285.__r_.__value_.__l.__data_);
      }

      if (kaldi::g_kaldi_verbose_level <= 2)
      {
        v121 = v288;
      }

      else
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Embedding Outputs:", 18);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        v121 = v288;
        v122 = v289;
        if (v289 != v288)
        {
          v123 = 0;
          v124 = kaldi::g_kaldi_verbose_level;
          do
          {
            if (v124 >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
              v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "  ", 2);
              v126 = *(a1 + 1959);
              if (v126 >= 0)
              {
                v127 = a1 + 1936;
              }

              else
              {
                v127 = *(a1 + 1936);
              }

              if (v126 >= 0)
              {
                v128 = *(a1 + 1959);
              }

              else
              {
                v128 = *(a1 + 1944);
              }

              v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, v127, v128);
              v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, ": ", 2);
              kaldi::quasar::ComputeEngineBufferItf::GetShapeString(*(v288 + 8 * v123), &v285);
              if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = &v285;
              }

              else
              {
                v131 = v285.__r_.__value_.__r.__words[0];
              }

              if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v132 = v285.__r_.__value_.__l.__size_;
              }

              v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, v131, v132);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, " [ ", 3);
              (*(**(v288 + 8 * v123) + 112))(*(v288 + 8 * v123), 0);
              v134 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, " ", 1);
              (*(**(v288 + 8 * v123) + 112))(*(v288 + 8 * v123), 1);
              v135 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, " ", 1);
              (*(**(v288 + 8 * v123) + 112))(*(v288 + 8 * v123), 2);
              v136 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, " ...", 4);
              if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v285.__r_.__value_.__l.__data_);
              }

              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
              v124 = kaldi::g_kaldi_verbose_level;
              v121 = v288;
              v122 = v289;
            }

            ++v123;
          }

          while (v123 < (v122 - v121) >> 3);
        }
      }

      v137 = *(a1 + 1552);
      v138 = *v121;
      *v121 = 0;
      v139 = *(v137 + 24);
      *(v137 + 24) = v138;
      if (v139)
      {
        (*(*v139 + 8))(v139);
      }

      __p = &v288;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
    }

    else
    {
      v113 = *(a1 + 2132);
      v114 = *(a1 + 1552);
      v115 = *(a1 + 184);
      v285.__r_.__value_.__r.__words[0] = v6;
      __src[0] = 0;
      __src[1] = 0;
      __p = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v285, &v285.__r_.__value_.__l.__size_, 1uLL);
      (*(*v115 + 64))(&v288, v115, &__p);
      v116 = v114 + 32 * v113;
      v117 = v288;
      v288 = 0;
      v118 = *(v116 + 24);
      *(v116 + 24) = v117;
      if (v118)
      {
        (*(*v118 + 8))(v118);
      }

      v119 = v288;
      v288 = 0;
      if (v119)
      {
        (*(*v119 + 8))(v119);
      }

      if (__p)
      {
        __src[0] = __p;
        operator delete(__p);
      }

      if (v6 >= 1)
      {
        v120 = 0;
        do
        {
          (*(**(v116 + 24) + 104))(*(v116 + 24), v120, *(*(a2 + 8) + 4 * *(a2 + 24) * v120));
          v120 = (v120 + 1);
        }

        while (v6 != v120);
      }
    }

    if (*(a1 + 2088) != *(a1 + 2080))
    {
      v140 = 0;
      do
      {
        v141 = *(a1 + 2112);
        v142 = *(a1 + 1552);
        v143 = *(a1 + 184);
        v288 = 1;
        *&v289 = v271;
        *(&v289 + 1) = *(a1 + 2456);
        __src[0] = 0;
        __src[1] = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v288, &v290, 3uLL);
        (*(*v143 + 64))(&v285, v143, &__p);
        v144 = v142 + 32 * (v141 + v140);
        v145 = v285.__r_.__value_.__r.__words[0];
        v285.__r_.__value_.__r.__words[0] = 0;
        v146 = *(v144 + 24);
        *(v144 + 24) = v145;
        if (v146)
        {
          (*(*v146 + 8))(v146);
        }

        v147 = v285.__r_.__value_.__r.__words[0];
        v285.__r_.__value_.__r.__words[0] = 0;
        if (v147)
        {
          (*(*v147 + 8))(v147);
        }

        if (__p)
        {
          __src[0] = __p;
          operator delete(__p);
        }

        if (v272 >= 1)
        {
          v148 = 0;
          v149 = 0;
          do
          {
            (*(**(v144 + 24) + 72))(*(v144 + 24), *(*(*(a1 + 2432) + v148) + 16 * v140), 0, *(a1 + 2456), (*(a1 + 2456) * v149++));
            v148 += 24;
          }

          while (24 * v272 != v148);
        }

        ++v140;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2088) - *(a1 + 2080)) >> 3) > v140);
    }

    if ((*(a1 + 1515) & 1) == 0)
    {
      goto LABEL_232;
    }

    v150 = *(a1 + 2136);
    v151 = *(a1 + 1552);
    v152 = *(a1 + 184);
    v285.__r_.__value_.__r.__words[0] = v271;
    __src[0] = 0;
    __src[1] = 0;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v285, &v285.__r_.__value_.__l.__size_, 1uLL);
    (*(*v152 + 64))(&v288, v152, &__p);
    v153 = v151 + 32 * v150;
    v154 = v288;
    v288 = 0;
    v155 = *(v153 + 24);
    *(v153 + 24) = v154;
    if (v155)
    {
      (*(*v155 + 8))(v155);
    }

    v156 = v288;
    v288 = 0;
    if (v156)
    {
      (*(*v156 + 8))(v156);
    }

    if (__p)
    {
      __src[0] = __p;
      operator delete(__p);
    }

    if ((*(a1 + 1887) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 1872))
      {
        goto LABEL_224;
      }
    }

    else if (!*(a1 + 1887))
    {
      goto LABEL_224;
    }

    v157 = *(a1 + 184);
    v285.__r_.__value_.__r.__words[0] = v271;
    __src[0] = 0;
    __src[1] = 0;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v285, &v285.__r_.__value_.__l.__size_, 1uLL);
    (*(*v157 + 64))(&v288, v157, &__p);
    v158 = *(a1 + 1552) + 32 * *(a1 + 2144);
    v159 = v288;
    v288 = 0;
    v160 = *(v158 + 24);
    *(v158 + 24) = v159;
    if (v160)
    {
      (*(*v160 + 8))(v160);
    }

    v161 = v288;
    v288 = 0;
    if (v161)
    {
      (*(*v161 + 8))(v161);
    }

    if (__p)
    {
      __src[0] = __p;
      operator delete(__p);
    }

LABEL_224:
    if (v271 >= 1)
    {
      v162 = 0;
      v163 = 8;
      while (1)
      {
        v164 = *(v153 + 24);
        v165 = *(*(*(a1 + 2432) + v163) - 16);
        (*(*v165 + 112))(v165, 0);
        (*(*v164 + 104))(v164, v162);
        if ((*(a1 + 1887) & 0x8000000000000000) == 0)
        {
          break;
        }

        if (*(a1 + 1872))
        {
          goto LABEL_230;
        }

LABEL_231:
        ++v162;
        v163 += 24;
        if (v272 == v162)
        {
          goto LABEL_232;
        }
      }

      if (!*(a1 + 1887))
      {
        goto LABEL_231;
      }

LABEL_230:
      v166 = *(*(a1 + 1552) + 32 * *(a1 + 2136) + 24);
      v167 = 1.0 / ((*(*v166 + 112))(v166, v162) + 1.0);
      v168 = *(*(a1 + 1552) + 32 * *(a1 + 2144) + 24);
      (*(*v168 + 104))(v168, v162, v167);
      goto LABEL_231;
    }

LABEL_232:
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    kaldi::quasar::TimeBlock::TimeBlock(&v288, (a1 + 2256), a1 + 2360, &__p);
    if (SHIBYTE(__src[1]) < 0)
    {
      operator delete(__p);
    }

    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Inputs:", 7);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
      v169 = *(a1 + 1552);
      v170 = *(a1 + 1560);
      if (v169 != v170)
      {
        while ((*(v169 + 23) & 0x80000000) == 0)
        {
          if (*(v169 + 23) != 18)
          {
            v171 = v169;
            if (*(v169 + 23) != 8)
            {
              goto LABEL_251;
            }

LABEL_250:
            if (*v171 != 0x6E6F697469736F70)
            {
              goto LABEL_251;
            }

            goto LABEL_273;
          }

          if (*v169 != 0x74756F5F76657270 || *(v169 + 8) != 0x656B6F745F747570 || *(v169 + 16) != 29550)
          {
LABEL_251:
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
              v174 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "  ", 2);
              v175 = *(v169 + 23);
              if (v175 >= 0)
              {
                v176 = v169;
              }

              else
              {
                v176 = *v169;
              }

              if (v175 >= 0)
              {
                v177 = *(v169 + 23);
              }

              else
              {
                v177 = *(v169 + 8);
              }

              v178 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v174, v176, v177);
              v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v178, ": ", 2);
              kaldi::quasar::ComputeEngineBufferItf::GetShapeString(*(v169 + 24), &v285);
              if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v180 = &v285;
              }

              else
              {
                v180 = v285.__r_.__value_.__r.__words[0];
              }

              if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v181 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v181 = v285.__r_.__value_.__l.__size_;
              }

              v182 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v179, v180, v181);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v182, " [ ", 3);
              (*(**(v169 + 24) + 112))(*(v169 + 24), 0);
              v183 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, " ", 1);
              (*(**(v169 + 24) + 112))(*(v169 + 24), 1);
              v184 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v184, " ", 1);
              (*(**(v169 + 24) + 112))(*(v169 + 24), 2);
              v185 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v185, " ...", 4);
LABEL_287:
              if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v285.__r_.__value_.__l.__data_);
              }

              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
              goto LABEL_290;
            }

            goto LABEL_290;
          }

LABEL_273:
          if (kaldi::g_kaldi_verbose_level >= 3)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
            v188 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "  ", 2);
            v189 = *(v169 + 23);
            if (v189 >= 0)
            {
              v190 = v169;
            }

            else
            {
              v190 = *v169;
            }

            if (v189 >= 0)
            {
              v191 = *(v169 + 23);
            }

            else
            {
              v191 = *(v169 + 8);
            }

            v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v188, v190, v191);
            v193 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v192, ": ", 2);
            kaldi::quasar::ComputeEngineBufferItf::GetShapeString(*(v169 + 24), &v285);
            if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v194 = &v285;
            }

            else
            {
              v194 = v285.__r_.__value_.__r.__words[0];
            }

            if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v195 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v195 = v285.__r_.__value_.__l.__size_;
            }

            v196 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v193, v194, v195);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v196, " [ ", 3);
            (*(**(v169 + 24) + 112))(*(v169 + 24), 0);
            v197 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, " ...", 4);
            goto LABEL_287;
          }

LABEL_290:
          v169 += 32;
          if (v169 == v170)
          {
            goto LABEL_291;
          }
        }

        if (*(v169 + 8) == 18)
        {
          v172 = **v169 == 0x74756F5F76657270 && *(*v169 + 8) == 0x656B6F745F747570;
          if (v172 && *(*v169 + 16) == 29550)
          {
            goto LABEL_273;
          }
        }

        if (*(v169 + 8) != 8)
        {
          goto LABEL_251;
        }

        v171 = *v169;
        goto LABEL_250;
      }

LABEL_291:
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
        v198 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ModelSharing: inference with Espresso compute engine, id: ", 58);
        MEMORY[0x1B8C84BB0](v198, *(a1 + 184));
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
      }
    }

    v199 = *(a1 + 184);
    __p = 0;
    __src[0] = 0;
    __src[1] = 0;
    v200 = (a1 + 1600);
    (*(*v199 + 128))(v199, a1 + 1552, a1 + 2032, &__p, a1 + 1600);
    v285.__r_.__value_.__r.__words[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v285);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Outputs:", 8);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
      v202 = *(a1 + 1608);
      v203 = *(a1 + 1600);
      if (v202 != v203)
      {
        v204 = 0;
        v205 = 0;
        v206 = kaldi::g_kaldi_verbose_level;
        do
        {
          if (v206 >= 3)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
            v207 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "  ", 2);
            v208 = *(a1 + 2032) + v204;
            v209 = *(v208 + 23);
            if (v209 >= 0)
            {
              v210 = *(a1 + 2032) + v204;
            }

            else
            {
              v210 = *v208;
            }

            if (v209 >= 0)
            {
              v211 = *(v208 + 23);
            }

            else
            {
              v211 = *(v208 + 8);
            }

            v212 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v207, v210, v211);
            v213 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v212, ": ", 2);
            kaldi::quasar::ComputeEngineBufferItf::GetShapeString(*(*v200 + 8 * v205), &v285);
            if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v214 = &v285;
            }

            else
            {
              v214 = v285.__r_.__value_.__r.__words[0];
            }

            if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v215 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v215 = v285.__r_.__value_.__l.__size_;
            }

            v216 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, v214, v215);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v216, " [ ", 3);
            (*(**(*v200 + 8 * v205) + 112))(*(*v200 + 8 * v205), 0);
            v217 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v217, " ", 1);
            (*(**(*v200 + 8 * v205) + 112))(*(*v200 + 8 * v205), 1);
            v218 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v218, " ", 1);
            (*(**(*v200 + 8 * v205) + 112))(*(*v200 + 8 * v205), 2);
            v219 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v219, " ...", 4);
            if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v285.__r_.__value_.__l.__data_);
            }

            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
            v206 = kaldi::g_kaldi_verbose_level;
            v202 = *(a1 + 1608);
            v203 = *(a1 + 1600);
          }

          ++v205;
          v204 += 24;
        }

        while (v205 < (v202 - v203) >> 3);
      }
    }

    kaldi::quasar::TimeBlock::~TimeBlock(&v288, v201);
    if (*(a1 + 2088) != *(a1 + 2080))
    {
      v220 = 0;
      v274 = vdupq_n_s64(1uLL);
      do
      {
        v221 = 0;
        v222 = *(a1 + 1600);
        v223 = *(a1 + 2108) + v220;
        v288 = 0;
        v289 = 0uLL;
        while ((v272 & ~(v272 >> 31)) != v221)
        {
          v224 = *(a1 + 184);
          v282 = v274;
          v283 = *(a1 + 2456);
          memset(&v285, 0, sizeof(v285));
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v285, &v282, &v284, 3uLL);
          (*(*v224 + 64))(v275, v224, &v285);
          v225 = v289;
          if (v289 >= *(&v289 + 1))
          {
            v228 = v288;
            v229 = v289 - v288;
            v230 = (v289 - v288) >> 3;
            v231 = v230 + 1;
            if ((v230 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v232 = *(&v289 + 1) - v288;
            if ((*(&v289 + 1) - v288) >> 2 > v231)
            {
              v231 = v232 >> 2;
            }

            v233 = v232 >= 0x7FFFFFFFFFFFFFF8;
            v234 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v233)
            {
              v234 = v231;
            }

            __src[3] = &v288;
            if (v234)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v288, v234);
            }

            v235 = v275[0];
            v275[0] = 0;
            *(8 * v230) = v235;
            v227 = 8 * v230 + 8;
            memcpy(0, v228, v229);
            v236 = v288;
            v237 = *(&v289 + 1);
            v288 = 0;
            v289 = v227;
            __src[1] = v236;
            __src[2] = v237;
            __p = v236;
            __src[0] = v236;
            std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&__p);
          }

          else
          {
            v226 = v275[0];
            v275[0] = 0;
            *v289 = v226;
            v227 = v225 + 8;
          }

          *&v289 = v227;
          v238 = v275[0];
          v275[0] = 0;
          if (v238)
          {
            (*(*v238 + 1))(v238);
          }

          if (v285.__r_.__value_.__r.__words[0])
          {
            v285.__r_.__value_.__l.__size_ = v285.__r_.__value_.__r.__words[0];
            operator delete(v285.__r_.__value_.__l.__data_);
          }

          v239 = *(a1 + 2456);
          v240 = (v239 * v221++);
          (*(**(v289 - 8) + 72))(*(v289 - 8), *(v222 + 8 * v223), v240, (v239 * v221), 0);
        }

        if (v272 >= 1)
        {
          v241 = 0;
          do
          {
            std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>::operator=[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf,std::default_delete<kaldi::quasar::ComputeEngineBufferItf>,0>((*(*(a1 + 2432) + 24 * v241) + 16 * v220), (v288 + 8 * v241));
            ++v241;
          }

          while (v241 != v271);
        }

        __p = &v288;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
        ++v220;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2088) - *(a1 + 2080)) >> 3) > v220);
    }

    if ((*(a1 + 1506) & 1) == 0 && *(a1 + 1507) != 1)
    {
      v245 = *(*(a1 + 1600) + 8 * *(a1 + 2156));
      (*(*v245 + 32))(v245, v270);
      goto LABEL_346;
    }

    v289 = 0u;
    v290 = 0u;
    v288 = &unk_1F2D0EE38;
    v291 = 0;
    v242 = *(*(a1 + 1600) + 8 * *(a1 + 2156));
    (*(*v242 + 32))(v242, &v288);
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    kaldi::quasar::TimeBlock::TimeBlock(&v285, (a1 + 2256), a1 + 2368, &__p);
    if (SHIBYTE(__src[1]) < 0)
    {
      operator delete(__p);
    }

    v244 = *(a1 + 2248);
    if (!v244)
    {
      if (*(a1 + 1506) != 1)
      {
        if (*(a1 + 1507) == 1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Not implemented yet", 19);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        goto LABEL_344;
      }

      v244 = (a1 + 1128);
    }

    kaldi::nnet1::Nnet::Feedforward(v244, &v288, v270, 0xFFFFFFFF, 0);
LABEL_344:
    kaldi::quasar::TimeBlock::~TimeBlock(&v285, v243);
    kaldi::CuMatrix<float>::~CuMatrix(&v288);
LABEL_346:
    if (*(a1 + 2164) == 1)
    {
      v289 = 0uLL;
      *&v290 = 0;
      v288 = &unk_1F2D3AC18;
      v246 = *(a1 + 2148);
      v247 = *(a1 + 1600);
      (*(**(v247 + 8 * v246) + 40))(*(v247 + 8 * v246), &v288);
      v248 = (*(**(v247 + 8 * v246) + 184))(*(v247 + 8 * v246), 2);
      kaldi::CuMatrix<float>::Resize((a1 + 2192), v272, v248, 1, 0);
      v249 = v248 * v272;
      __p = &unk_1F2CFCA48;
      __src[0] = v289;
      __src[1] = (v248 * v272);
      __src[2] = v290;
      kaldi::CuMatrixBase<float>::CopyRowsFromVec(a1 + 2192, &__p);
      if (*(a1 + 2152) >= 2)
      {
        v250 = 1;
        v251 = 4 * v249;
        do
        {
          kaldi::CuMatrix<float>::CuMatrix(&__p, v272, v248, 1, 0, 0);
          v285.__r_.__value_.__r.__words[0] = &unk_1F2CFCA48;
          v285.__r_.__value_.__l.__size_ = v289 + v251;
          v285.__r_.__value_.__r.__words[2] = v249;
          *&v286 = v290;
          kaldi::CuMatrixBase<float>::CopyRowsFromVec(&__p, &v285);
          kaldi::CuMatrixBase<float>::AddMat(a1 + 2192, &__p, 111, 1.0, 1.0);
          kaldi::CuMatrix<float>::~CuMatrix(&__p);
          ++v250;
          v251 += 4 * v249;
        }

        while (v250 < *(a1 + 2152));
      }

      v252 = *(a1 + 1510);
      if (v252 & 1) != 0 || (*(a1 + 1511))
      {
        v253 = v248 - (*(a1 + 1511) + v252);
        v254 = (*(a1 + 2200) + 4 * *(a1 + 1510));
        v255 = *(a1 + 2220) - v252;
        v256 = *(a1 + 2224);
        LODWORD(__src[1]) = v253;
        *(&__src[1] + 4) = *(a1 + 2212);
        HIDWORD(__src[2]) = v255;
        __src[3] = v256;
        __p = &unk_1F2CFA908;
        __src[0] = v254;
        kaldi::CuMatrix<float>::operator=((a1 + 2192), &__p);
        __p = &unk_1F2CFA908;
        memset(__src, 0, sizeof(__src));
        quasar::Bitmap::~Bitmap(&__p);
      }

      kaldi::CuVector<float>::~CuVector(&v288);
    }

LABEL_354:
    v257 = v271;
    if (*(a1 + 1515) == 1 && v272 >= 1)
    {
      v258 = 8;
      do
      {
        v259 = *(*(a1 + 2432) + v258);
        v261 = *(v259 - 16);
        v260 = (v259 - 16);
        (*(*v261 + 16))(&__p);
        std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>::operator=[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf,std::default_delete<kaldi::quasar::ComputeEngineBufferItf>,0>(v260, &__p);
        v262 = __p;
        __p = 0;
        if (v262)
        {
          (*(*v262 + 8))(v262);
        }

        v263 = *v260;
        v264 = (*(*v263 + 112))(v263, 0);
        (*(*v263 + 104))(v263, 0, v264 + 1.0);
        v258 += 24;
        --v257;
      }

      while (v257);
    }

    goto LABEL_360;
  }

  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Iterating over batch, batch size: ", 34);
    MEMORY[0x1B8C84C00](v9, v6);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  if (v6)
  {
    v10 = 0;
    v11 = (a1 + 1552);
    v273 = a2;
    while (1)
    {
      if (*(a1 + 1508) == 1)
      {
        v12 = *(*(a1 + 1576) + 32 * *(a1 + 2116) + 24);
        (*(*v12 + 104))(v12, 0, *(*(a2 + 8) + 4 * *(a2 + 24) * v10));
        v13 = *(*(a1 + 1576) + 32 * *(a1 + 2120) + 24);
        v14 = *(*(*(a1 + 2432) + 24 * v10 + 8) - 16);
        v15 = (*(*v14 + 112))(v14, 0);
        (*(*v13 + 104))(v13, 0, v15 - (*(a1 + 1518) ^ 1u));
        v288 = 0;
        v289 = 0uLL;
        if (kaldi::g_kaldi_verbose_level >= 5)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ModelSharing: inference with Espresso compute engine, id: ", 58);
          MEMORY[0x1B8C84BB0](v16, *(a1 + 168));
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        v17 = *(a1 + 168);
        if (*(a1 + 1959) < 0)
        {
          std::string::__init_copy_ctor_external(&v285, *(a1 + 1936), *(a1 + 1944));
        }

        else
        {
          v285 = *(a1 + 1936);
        }

        __p = 0;
        __src[0] = 0;
        __src[1] = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v285, &v286, 1uLL);
        v282 = 0uLL;
        v283 = 0;
        (*(*v17 + 128))(v17, a1 + 1576, &__p, &v282, &v288);
        v275[0] = &v282;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v275);
        v282.i64[0] = &__p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v282);
        if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v285.__r_.__value_.__l.__data_);
        }

        v19 = *v11;
        v20 = *v288;
        *v288 = 0;
        v21 = *(v19 + 24);
        *(v19 + 24) = v20;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

        __p = &v288;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      else
      {
        v18 = *(*(a1 + 1552) + 32 * *(a1 + 2132) + 24);
        (*(*v18 + 104))(v18, 0, *(*(a2 + 8) + 4 * *(a2 + 24) * v10));
      }

      if (*(a1 + 2088) != *(a1 + 2080))
      {
        v22 = 0;
        v23 = 0;
        do
        {
          (*(**(*(*(a1 + 2432) + 24 * v10) + v22) + 16))(&__p);
          v24 = *(a1 + 1552) + 32 * (v23 + *(a1 + 2112));
          v25 = __p;
          __p = 0;
          v26 = *(v24 + 24);
          *(v24 + 24) = v25;
          if (v26)
          {
            (*(*v26 + 8))(v26);
          }

          v27 = __p;
          __p = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          ++v23;
          v22 += 16;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2088) - *(a1 + 2080)) >> 3) > v23);
      }

      if ((*(a1 + 1515) & 1) == 0)
      {
        goto LABEL_42;
      }

      (*(**(*(*(a1 + 2432) + 24 * v10 + 8) - 16) + 16))(&__p);
      v28 = *(a1 + 1552) + 32 * *(a1 + 2136);
      v29 = __p;
      __p = 0;
      v30 = *(v28 + 24);
      *(v28 + 24) = v29;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      v31 = __p;
      __p = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      if ((*(a1 + 1887) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(a1 + 1887))
      {
        goto LABEL_39;
      }

LABEL_40:
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Position input: ", 16);
        v35 = *(*(a1 + 1552) + 32 * *(a1 + 2136) + 24);
        (*(*v35 + 112))(v35, 0);
        std::ostream::operator<<();
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
      }

LABEL_42:
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      kaldi::quasar::TimeBlock::TimeBlock(&v288, (a1 + 2256), a1 + 2360, &__p);
      if (SHIBYTE(__src[1]) < 0)
      {
        operator delete(__p);
      }

      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ModelSharing: inference with Espresso compute engine, id: ", 58);
        MEMORY[0x1B8C84BB0](v36, *(a1 + 184));
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
      }

      v37 = *(a1 + 184);
      __p = 0;
      __src[0] = 0;
      __src[1] = 0;
      (*(*v37 + 128))(v37, v11, a1 + 2032, &__p, a1 + 1600);
      v285.__r_.__value_.__r.__words[0] = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v285);
      kaldi::quasar::TimeBlock::~TimeBlock(&v288, v38);
      if (*(a1 + 2088) != *(a1 + 2080))
      {
        v39 = 0;
        v40 = 0;
        do
        {
          (*(**(*(a1 + 1600) + 8 * (v40 + *(a1 + 2108))) + 16))(&__p);
          std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>::operator=[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf,std::default_delete<kaldi::quasar::ComputeEngineBufferItf>,0>((*(*(a1 + 2432) + 24 * v10) + v39), &__p);
          v41 = __p;
          __p = 0;
          if (v41)
          {
            (*(*v41 + 8))(v41);
          }

          ++v40;
          v39 += 16;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2088) - *(a1 + 2080)) >> 3) > v40);
      }

      v275[1] = 0;
      v276 = 0;
      v277 = 0;
      v275[0] = &unk_1F2D3AC18;
      if ((*(a1 + 1506) & 1) != 0 || *(a1 + 1507) == 1)
      {
        v290 = 0u;
        v289 = 0u;
        v288 = &unk_1F2D0EE38;
        v291 = 0;
        v286 = 0u;
        *&v285.__r_.__value_.__r.__words[1] = 0u;
        v285.__r_.__value_.__r.__words[0] = &unk_1F2D0EE38;
        v287 = 0;
        v42 = *(*(a1 + 1600) + 8 * *(a1 + 2156));
        (*(*v42 + 32))(v42, &v288);
        v43 = v270;
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        kaldi::quasar::TimeBlock::TimeBlock(&v282, (a1 + 2256), a1 + 2368, &__p);
        if (SHIBYTE(__src[1]) < 0)
        {
          operator delete(__p);
        }

        v44 = *(a1 + 2248);
        if (v44 || (v44 = (a1 + 1128), *(a1 + 1506) == 1))
        {
          kaldi::nnet1::Nnet::Feedforward(v44, &v288, &v285, 0xFFFFFFFF, 0);
        }

        else if (*(a1 + 1507) == 1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Not implemented yet", 19);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        __src[0] = v285.__r_.__value_.__l.__size_;
        __p = &unk_1F2CFCA48;
        __src[1] = LODWORD(v285.__r_.__value_.__r.__words[2]);
        __src[2] = *(&v286 + 1);
        kaldi::CuVector<float>::operator=(v275, &__p);
        kaldi::quasar::TimeBlock::~TimeBlock(&v282, v45);
        kaldi::CuMatrix<float>::~CuMatrix(&v285);
        kaldi::CuMatrix<float>::~CuMatrix(&v288);
      }

      else
      {
        v46 = *(*(a1 + 1600) + 8 * *(a1 + 2156));
        (*(*v46 + 40))(v46, v275);
        v43 = v270;
      }

      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "readout layer size: ", 20);
        MEMORY[0x1B8C84C00](v47, v276);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
      }

      v48 = v43[2].i32[0];
      if (v48 < v276)
      {
        kaldi::CuMatrix<float>::Resize(v43, v6, v276, 2, 0);
        v48 = v43[2].i32[0];
      }

      v49 = v43[4];
      __src[0] = (*&v43[1] + 4 * v43[3].i32[0] * v10);
      __p = &unk_1F2CFCA48;
      __src[1] = v48;
      __src[2] = v49;
      kaldi::CuVectorBase<float>::CopyFromVec(&__p, v275);
      if (*(a1 + 2164) == 1)
      {
        memset(__src, 0, sizeof(__src));
        __p = &unk_1F2D0EE38;
        v280 = 0;
        v50 = *(*(a1 + 1600) + 8 * *(a1 + 2148));
        (*(*v50 + 32))(v50, &__p);
        v51 = *(a1 + 1510);
        v52 = __src[1];
        v53 = LODWORD(__src[1]) - *(a1 + 1511);
        v54 = v53 - v51;
        if (*(a1 + 2208) != __PAIR64__(v6, v54))
        {
          kaldi::CuMatrix<float>::Resize((a1 + 2192), v6, v54, 2, 0);
          LODWORD(v54) = *(a1 + 2208);
          v52 = __src[1];
        }

        v55 = *(a1 + 2224);
        *&v289 = *(a1 + 2200) + 4 * *(a1 + 2216) * v10;
        v288 = &unk_1F2CFCA48;
        *(&v289 + 1) = v54;
        *&v290 = v55;
        v282.i64[1] = __src[0];
        v282.i64[0] = &unk_1F2CFCA48;
        v283 = v52;
        v284 = __src[3];
        v285.__r_.__value_.__r.__words[0] = &unk_1F2CFCA48;
        v285.__r_.__value_.__l.__size_ = __src[0] + 4 * v51;
        v285.__r_.__value_.__r.__words[2] = v53;
        *&v286 = __src[3];
        kaldi::CuVectorBase<float>::CopyFromVec(&v288, &v285);
        if (*(a1 + 2152) >= 2)
        {
          v57 = 1;
          do
          {
            v58 = *(a1 + 2200) + 4 * *(a1 + 2216) * v10;
            v59 = *(a1 + 2208);
            v60 = *(a1 + 2224);
            v288 = &unk_1F2CFCA48;
            *&v289 = v58;
            *&v290 = v60;
            *(&v289 + 1) = v59;
            v282.i64[0] = &unk_1F2CFCA48;
            v282.i64[1] = __src[0] + 4 * LODWORD(__src[2]) * v57;
            v284 = __src[3];
            v283 = LODWORD(__src[1]);
            v285.__r_.__value_.__r.__words[0] = &unk_1F2CFCA48;
            v285.__r_.__value_.__l.__size_ = v282.i64[1] + 4 * v51;
            *&v286 = __src[3];
            v285.__r_.__value_.__r.__words[2] = v53;
            LODWORD(v56) = 1.0;
            kaldi::CuVectorBase<float>::AddVec(v56, 1.0);
            ++v57;
          }

          while (v57 < *(a1 + 2152));
        }

        kaldi::CuMatrix<float>::~CuMatrix(&__p);
        a2 = v273;
        v11 = (a1 + 1552);
      }

      kaldi::CuVector<float>::~CuVector(v275);
      if (++v10 == v6)
      {
        goto LABEL_354;
      }
    }

    if (!*(a1 + 1872))
    {
      goto LABEL_40;
    }

LABEL_39:
    v32 = *(*(a1 + 1552) + 32 * *(a1 + 2136) + 24);
    v33 = 1.0 / ((*(*v32 + 112))(v32, 0) + 1.0);
    v34 = *(*(a1 + 1552) + 32 * *(a1 + 2144) + 24);
    (*(*v34 + 104))(v34, 0, v33);
    goto LABEL_40;
  }

LABEL_360:
  if (*(a1 + 2164) == 1)
  {
    v265 = *(a1 + 2152);
    if (v265 >= 2)
    {
      v266 = 1.0 / v265;
      kaldi::CuMatrixBase<float>::Scale(a1 + 2192, v266);
    }

    __p = 0;
    __src[0] = 0;
    __src[1] = 0;
    kaldi::CuMatrixBase<float>::FindRowMaxId(a1 + 2192, &__p);
    begin = *(a1 + 2168);
    v268 = (*(a1 + 2176) - begin) >> 2;
    if (__p != v268)
    {
      v269 = (a1 + 2168);
      std::vector<int>::resize(v269, __p);
      begin = v269->__begin_;
      LODWORD(v268) = __p;
    }

    memcpy(begin, __src[0], 4 * v268);
    if (__src[0])
    {
      free(__src[0]);
    }
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v281, v8);
}

void sub_1B5463B1C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5463E64);
}

void sub_1B5463B40(_Unwind_Exception *a1, clockid_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a23)
  {
    free(a23);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(&a57, a2);
  _Unwind_Resume(a1);
}

void sub_1B5463B60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5463E64);
}

void sub_1B5463BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  JUMPOUT(0x1B5463BC0);
}

void sub_1B5463BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char **a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char *a63)
{
  a18 = &a63;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  a63 = &a22;
  JUMPOUT(0x1B5463C18);
}

void sub_1B5463C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a22);
  a22.__locale_ = (v57 - 168);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a22);
  kaldi::quasar::TimeBlock::~TimeBlock(&a57, v59);
  _Unwind_Resume(a1);
}

void sub_1B5463C84(uint64_t a1, clockid_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  kaldi::quasar::TimeBlock::~TimeBlock(&a63, a2);
  kaldi::CuMatrix<float>::~CuMatrix(v63 - 224);
  kaldi::CuMatrix<float>::~CuMatrix(v63 - 168);
  JUMPOUT(0x1B5463DB8);
}

void sub_1B5463CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a22);
  kaldi::quasar::TimeBlock::~TimeBlock(&a57, v58);
  _Unwind_Resume(a1);
}

void sub_1B5463CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22)
{
  if (*(v22 - 201) < 0)
  {
    operator delete(*(v22 - 224));
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a22);
  a22.__locale_ = (v22 - 168);
  JUMPOUT(0x1B5463E2CLL);
}

void sub_1B5463D04(_Unwind_Exception *a1, clockid_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a22)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  kaldi::quasar::TimeBlock::~TimeBlock(&a57, a2);
  _Unwind_Resume(a1);
}

void sub_1B5463D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5463DB4);
}

void sub_1B5463D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a22);
  kaldi::quasar::TimeBlock::~TimeBlock((v57 - 168), v59);
  kaldi::quasar::TimeBlock::~TimeBlock(&a57, v60);
  _Unwind_Resume(a1);
}

void sub_1B5463D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v13 - 201) < 0)
  {
    operator delete(*(v13 - 224));
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  kaldi::quasar::TimeBlock::~TimeBlock((v13 - 168), v14);
  JUMPOUT(0x1B5463E5CLL);
}

void sub_1B5463DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  v19 = *(v18 - 224);
  if (v19)
  {
    *(v18 - 216) = v19;
    operator delete(v19);
  }

  *(v18 - 224) = v18 - 168;
  JUMPOUT(0x1B5463E2CLL);
}

void sub_1B5463E34(_Unwind_Exception *a1, clockid_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a22)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  kaldi::quasar::TimeBlock::~TimeBlock(&a57, a2);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>::operator=[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf,std::default_delete<kaldi::quasar::ComputeEngineBufferItf>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>::shared_ptr[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf,std::default_delete<kaldi::quasar::ComputeEngineBufferItf>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

double kaldi::quasar::Encdec::Finish(kaldi::quasar::Encdec *this, clockid_t a2)
{
  result = *(this + 287) + kaldi::Timer::GetSeconds(5, a2) - *(this + 282);
  *(this + 287) = result;
  return result;
}

void kaldi::quasar::Encdec::ConstrainSoftmax(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 **a5, __int128 **a6)
{
  if (*(a1 + 2240))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    kaldi::quasar::Encdec::Symbolize(a1, a5, &v20, 0, 0);
    __p = 0;
    v18 = 0;
    v19 = 0;
    kaldi::quasar::Encdec::Symbolize(a1, a6, &__p, 1, 0);
    v11 = v20;
    v12 = v21;
    while (v11 != v12)
    {
      --*v11++;
    }

    v13 = __p;
    v14 = v18;
    while (v13 != v14)
    {
      --*v13++;
    }

    v16[0] = 0;
    v16[1] = 0;
    v15 = v16;
    kaldi::quasar::Encdec::ConstrainSoftmax(a1, a2, a3, a4, &v20, &__p, &v15);
    std::__tree<int>::destroy(&v15, v16[0]);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }
}

void sub_1B5464014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  std::__tree<int>::destroy(&a10, a11);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

unsigned int **kaldi::quasar::Encdec::ConstrainSoftmax(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5, int **a6, void *a7)
{
  v38 = *MEMORY[0x1E69E9840];
  result = *(a1 + 2240);
  if (result)
  {
    if (*(a1 + 1506) == 1)
    {
      v13 = kaldi::quasar::Shortlist::MapShortlist(result, a2, *(a1 + 828) - 1, *(a1 + 832) - 1, a3, a4, a5, a6, a7, 0);
      *(a1 + 1509) = v13;
      if (v13)
      {
        kaldi::quasar::ShortlistNnetBuilder::ConstrainSoftmax((a1 + 1128));
      }

      std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((a1 + 2248), 0);
      result = 0;
      v26.__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
      v14 = *(a1 + 828) - 1;
      v15 = *(a1 + 832) - 1;
      if (*(a1 + 1507) == 1)
      {
        if (kaldi::quasar::Shortlist::MapShortlist(result, a2, v14, v15, a3, a4, a5, a6, a7, 1))
        {
          v16 = *(a1 + 2240);
          v34 = 0;
          v35 = 0;
          v33 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *v16, v16[1], (v16[1] - *v16) >> 2);
          v17.n128_f64[0] = kaldi::Matrix<float>::Matrix(v32);
          v18 = *(a1 + 200);
          v29 = 0;
          v30 = 0;
          v31 = 0;
          if (*(a1 + 2124))
          {
            v19 = v33;
            if (v34 != v33)
            {
              v20 = v34 - v33;
              if (v20 <= 1)
              {
                v20 = 1;
              }

              do
              {
                *v19++ += *(a1 + 2124);
                --v20;
              }

              while (v20);
            }
          }

          (*(*v18 + 24))(v28, v18, &v33, 0, v17);
          if (*(a1 + 2007) < 0)
          {
            std::string::__init_copy_ctor_external(&v26, *(a1 + 1984), *(a1 + 1992));
          }

          else
          {
            v26 = *(a1 + 1984);
          }

          v21 = v28[0];
          v28[0] = 0;
          v27 = v21;
          std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](&v29, &v26);
          v22 = v27;
          v27 = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          v23 = v28[0];
          v28[0] = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          (*(**(v30 - 8) + 80))(*(v30 - 8));
          memset(v28, 0, sizeof(v28));
          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v26, 5);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "ModelSharing: inference with Espresso compute engine, id: ", 58);
            MEMORY[0x1B8C84BB0](v24, v18);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v26);
          }

          if (*(a1 + 2031) < 0)
          {
            std::string::__init_copy_ctor_external(&v37, *(a1 + 2008), *(a1 + 2016));
          }

          else
          {
            v37 = *(a1 + 2008);
          }

          memset(&v26, 0, sizeof(v26));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, &v37, &v38, 1uLL);
          memset(v25, 0, sizeof(v25));
          (*(*v18 + 128))(v18, &v29, &v26, v25, v28);
          v36 = v25;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
          v25[0] = &v26;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v25);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          (*(**v28[0] + 24))(*v28[0], v32);
          v26.__r_.__value_.__r.__words[0] = v28;
          std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v26);
          v26.__r_.__value_.__r.__words[0] = &v29;
          std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v26);
          kaldi::quasar::ShortlistNnetBuilder::ConstructNnet(v32);
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v26, "Map shortlist error!");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v26);
      }

      result = kaldi::quasar::Shortlist::MapShortlist(result, a2, v14, v15, a3, a4, a5, a6, a7, 0);
      *(a1 + 1509) = result;
    }
  }

  return result;
}

void sub_1B546452C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::GetSoftmaxEosId(kaldi::quasar::Encdec *this)
{
  if (*(this + 1509) == 1)
  {
    return *(*(this + 280) + 24);
  }

  else
  {
    return (*(this + 207) - 1);
  }
}

uint64_t kaldi::quasar::Encdec::GetVocabWordIdx(kaldi::quasar::Encdec *this, uint64_t a2)
{
  if (*(this + 1509) == 1)
  {
    return *(**(this + 280) + 4 * a2);
  }

  return a2;
}

unint64_t kaldi::quasar::Encdec::GetSoftmaxIdx(kaldi::quasar::Shortlist **this, uint64_t a2)
{
  if (*(this + 1509) == 1)
  {
    return kaldi::quasar::Shortlist::GetSoftmaxIdx(this[280], a2);
  }

  else
  {
    return a2;
  }
}

void kaldi::quasar::ComputeEngineItf::CreateCopyFloat(kaldi::quasar::ComputeEngineItf *this@<X0>, const kaldi::quasar::ComputeEngineBufferItf *a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*a2 + 176))(a2);
  std::vector<long long>::vector[abi:ne200100](__p, v6);
  if (v6 < 1)
  {
    v9 = 1;
  }

  else
  {
    v7 = 0;
    v8 = v6;
    LODWORD(v9) = 1;
    do
    {
      v10 = (*(*a2 + 184))(a2, v7);
      *(__p[0] + v7) = v10;
      v9 = (v10 * v9);
      ++v7;
    }

    while (v8 != v7);
  }

  (*(*this + 64))(this, __p);
  (*(**a3 + 72))(*a3, a2, 0, v9, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B54647F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  *v11 = 0;
  if (v13)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::Encdec::ModelCompilationSpec::~ModelCompilationSpec(void **this)
{
  *this = &unk_1F2D12E50;
  v2 = this + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F2D12E50;
  v2 = this + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  MEMORY[0x1B8C85350](this, 0x10B3C4071281136);
}

uint64_t kaldi::quasar::BPE::BPE(uint64_t a1, int a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 2139095039;
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "@@");
  std::string::basic_string[abi:ne200100]<0>((a1 + 160), "</w>");
  *(a1 + 184) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 192), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 208) = *(a3 + 2);
    *(a1 + 192) = v6;
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 216), "0.1");
  return a1;
}

void sub_1B5464A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 183) < 0)
  {
    operator delete(*(v2 + 160));
  }

  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
  std::__tree<std::string>::destroy(v2, *(v2 + 8));
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(void **this)
{
  *this = &unk_1F2D361F0;
  v2 = this + 23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  v2 = this + 14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 11), this[12]);
  v2 = this + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(this);
}

{
  kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::MTESNetworkPlan::~MTESNetworkPlan(void **this)
{
  *this = &unk_1F2D12E90;
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
  }

  kaldi::quasar::ESNetworkPlan::~ESNetworkPlan(this);
}

{
  *this = &unk_1F2D12E90;
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
  }

  kaldi::quasar::ESNetworkPlan::~ESNetworkPlan(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::ComputeEngineItf::CreateZeroedDataFloat16()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::ComputeEngineItf::CopyFloat16(kaldi::quasar::ComputeEngineItf *this, const kaldi::quasar::ComputeEngineBufferItf *a2, kaldi::quasar::ComputeEngineBufferItf *a3)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Not implemented.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

void kaldi::quasar::ComputeEngineItf::CreateCopyFloat16(kaldi::quasar::ComputeEngineItf *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Not implemented.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::quasar::ComputeEngineItf::CreateCopyFloat32(kaldi::quasar::ComputeEngineItf *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Not implemented.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::quasar::MTESNetworkPlan::Run(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t a4, void *a5)
{
  kaldi::quasar::MTESNetworkPlan::prepare_network(a1);

  kaldi::quasar::ESNetworkPlan::Run(a1, a2, a3, a4, a5);
}

{
  kaldi::quasar::MTESNetworkPlan::prepare_network(a1);

  kaldi::quasar::ESNetworkPlan::Run(a1, a2, a3, a4, a5);
}

void kaldi::quasar::ComputeEngineItf::RunFunction()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::ComputeEngineItf::PrepareRun()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::ComputeEngineItf::GetSharedInputOutputNames(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t kaldi::quasar::MTESNetworkPlan::prepare_network(uint64_t this)
{
  if ((*(this + 375) & 0x80000000) == 0)
  {
    if (!*(this + 375))
    {
      return this;
    }

LABEL_5:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "Dynamic switch is not support in this platform");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
  }

  if (*(this + 360))
  {
    goto LABEL_5;
  }

  return this;
}

void kaldi::quasar::ESNetworkConfig::~ESNetworkConfig(void **this)
{
  *this = &unk_1F2D3B0B0;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 8), this[9]);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(this);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

void sub_1B5465084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::BPE::ProcessLine(uint64_t a1, uint64_t a2, float a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::SplitStringToVector(a2, " ", 1, &v12);
  if (v13 - v12 == 48)
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, v12 + 3, __p);
    v15 = __p;
    *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 24), __p) + 10) = a3;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Wrong number of fields, ignoring : ", 35);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
  }

  __p[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B54651BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __p = (v15 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BPE::GetUniqueChars(kaldi::quasar::BPE *this)
{
  v1 = *(this + 8);
  for (i = *(this + 9); v1 != i; ++v1)
  {
    kaldi::quasar::BPE::StripSeparator(this, v1, &__p);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    kaldi::quasar::BPE::SplitUtfString(this, &__p, &v6);
    v4 = v6;
    v5 = v7;
    while (v4 != v5)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this, v4);
      v4 += 3;
    }

    v10 = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B54652C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  a19 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *kaldi::quasar::BPE::UnkModeToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 >= 5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Unknown BPE unknown mode");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = off_1E7C1AB38[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void kaldi::quasar::BPE::StripSeparator(uint64_t a1@<X0>, const std::string *a2@<X1>, std::string *a3@<X8>)
{
  v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if ((v5 & 0x80u) == 0)
  {
    v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = a2->__r_.__value_.__l.__size_;
  }

  v8 = *(a1 + 159);
  if (v8 >= 0)
  {
    v9 = *(a1 + 159);
  }

  else
  {
    v9 = *(a1 + 144);
  }

  v10 = v7 - v9;
  if (v7 < v9)
  {
    goto LABEL_34;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v9 == -1 || size < v10)
    {
LABEL_41:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = size - v10 >= v9 ? v9 : size - v10;
    v13 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v9 == -1 || v5 < v10)
    {
      goto LABEL_41;
    }

    v12 = v5 - v10 >= v9 ? v9 : v5 - v10;
    v13 = a2;
  }

  v15 = v8 >= 0 ? (a1 + 136) : *(a1 + 136);
  v16 = memcmp(v13 + v10, v15, v12);
  if (v12 >= v9 && v16 == 0)
  {
    std::string::basic_string(a3, a2, 0, v10, &v19);
  }

  else
  {
LABEL_34:
    if ((v5 & 0x80) != 0)
    {
      v18 = a2->__r_.__value_.__r.__words[0];

      std::string::__init_copy_ctor_external(a3, v18, size);
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    }
  }
}

unint64_t kaldi::quasar::BPE::SplitUtfString(int a1, std::string *__str, void *a3)
{
  v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v5 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  size = __str->__r_.__value_.__l.__size_;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __str->__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = __str->__r_.__value_.__r.__words[0];
      if (!v5)
      {
        v10 = __str;
      }

      v11 = v10->__r_.__value_.__s.__data_[v9];
      if ((v11 & 0xF8) == 0xF0)
      {
        v12 = 4;
      }

      else if ((v11 & 0xF0) == 0xE0)
      {
        v12 = 3;
      }

      else if ((v11 & 0xE0) == 0xC0)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if (v5)
      {
        v4 = size;
      }

      if (v12 + v9 > v4)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::string::basic_string(&__p, __str, v9, v13, &v17);
      std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 += v13;
      v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v5 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = __str->__r_.__value_.__l.__size_;
      }
    }

    while (v9 < v14);
  }

  return 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
}