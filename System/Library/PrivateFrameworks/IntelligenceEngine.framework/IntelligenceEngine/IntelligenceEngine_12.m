void sub_254D2B73C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

FILE *siri::intelligence::OpenDataFile(std::string *a1, const char *a2)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  v3 = size;
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  if ((a2 - 1) >= 2)
  {
    if (a2)
    {
      siri::intelligence::Log::Error("Unsupported mode for OpenDataFile()", a2);
      return 0;
    }

    if (v3 < 0)
    {
      a1 = a1->__r_.__value_.__r.__words[0];
    }

    result = fopen(a1, "r");
    if (!result)
    {
      if (v5[23] >= 0)
      {
        v12 = v5;
      }

      else
      {
        v12 = *v5;
      }

      siri::intelligence::Log::Error("Failed to read data file: %s", v11, v12);
      return 0;
    }
  }

  else
  {
    siri::intelligence::MakeDirsForFile(a1);
    if (v5[23] >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    if (v4 == 1)
    {
      v7 = "w";
    }

    else
    {
      v7 = "a";
    }

    result = fopen(v6, v7);
    if (!result)
    {
      if (v5[23] >= 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = *v5;
      }

      siri::intelligence::Log::Error("Failed to write data file: %s", v9, v10);
      return 0;
    }
  }

  return result;
}

uint64_t siri::intelligence::MakeDirsForFile(std::string *a1)
{
  siri::intelligence::DirName(a1, 1, &__p);
  Dir = siri::intelligence::MakeDir(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return Dir;
}

void sub_254D2B8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::ReadFileToVector(char **a1, std::string *a2)
{
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (!a1)
  {
    if ((size & 0x80u) == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Cannot open file: %s. Data is NULL", a2, v11);
    return 0;
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return 0;
  }

  if (!siri::intelligence::FileExists(a2))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Cannot open file: %s. File does not exist.", v5, v12);
    return 0;
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if (stat(v6, &v21) == -1)
  {
    st_size = 0;
  }

  else
  {
    st_size = v21.st_size;
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v9 - *a1;
  if (st_size <= v10)
  {
    if (st_size < v10)
    {
      v9 = &v8[st_size];
      a1[1] = &v8[st_size];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, st_size - v10);
    v8 = *a1;
    v9 = a1[1];
  }

  if (v8 == v9)
  {
    return 1;
  }

  v15 = siri::intelligence::OpenDataFile(a2, 0);
  if (!v15)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Warning("Cannot open file: %s", v16, v20);
    return 0;
  }

  v17 = v15;
  v13 = 1;
  v18 = fread(*a1, 1uLL, st_size, v15);
  fclose(v17);
  if (v18 != st_size)
  {
    siri::intelligence::Log::Warning("ReadFileToVector: file size discrepancy!", v19);
    return 1;
  }

  return v13;
}

off_t siri::intelligence::GetFileSize(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v2) == -1)
  {
    return 0;
  }

  else
  {
    return v2.st_size;
  }
}

uint64_t siri::intelligence::ReadFileToLines@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14[19] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  std::ifstream::basic_ifstream(v12);
  __p = 0uLL;
  v10 = 0;
  v4 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((v12 + *(v12[0] - 24)));
    v5 = std::locale::use_facet(&v11, v4);
    v6 = (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v11);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, &__p, v6);
    if ((v13[*(v12[0] - 24) + 16] & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  v12[0] = *MEMORY[0x277D82808];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x259C29AC0](v13);
  std::istream::~istream();
  result = MEMORY[0x259C29CE0](v14);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x259C29AB0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_254D2BE5C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x259C29CE0](v1);
  _Unwind_Resume(a1);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x259C29AC0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x259C29CE0](a1 + 53);
  return a1;
}

void siri::intelligence::ReadFileToString(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v26[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  std::string::basic_string[abi:ne200100]<0>(a2, &str_5);
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, &str_5);
    v26[6] = 0;
    v5 = MEMORY[0x277D82858] + 64;
    v26[0] = MEMORY[0x277D82858] + 64;
    v6 = *(MEMORY[0x277D82808] + 16);
    v24[0] = *(MEMORY[0x277D82808] + 8);
    *(v24 + *(v24[0] - 24)) = v6;
    v24[1] = 0;
    v7 = (v24 + *(v24[0] - 24));
    std::ios_base::init(v7, v25);
    v8 = MEMORY[0x277D82858] + 24;
    v7[1].__vftable = 0;
    v7[1].__fmtflags_ = -1;
    v24[0] = v8;
    v26[0] = v5;
    MEMORY[0x259C29AB0](v25);
    if (*(a1 + 23) < 0)
    {
      v9 = *a1;
    }

    if (!std::filebuf::open())
    {
      std::ios_base::clear((v24 + *(v24[0] - 24)), *&v25[*(v24[0] - 24) + 16] | 4);
    }

    v10 = MEMORY[0x277D82680];
    while (1)
    {
      std::ios_base::getloc((v24 + *(v24[0] - 24)));
      v11 = std::locale::use_facet(&v19, v10);
      v12 = (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v19);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, __p, v12);
      if ((v25[*(v24[0] - 24) + 16] & 5) != 0)
      {
        break;
      }

      if ((v23 & 0x80u) == 0)
      {
        v13 = v23;
      }

      else
      {
        v13 = __p[1];
      }

      std::string::basic_string[abi:ne200100](&v19, v13 + 1);
      if ((v21 & 0x80u) == 0)
      {
        locale = &v19;
      }

      else
      {
        locale = v19.__locale_;
      }

      if (v13)
      {
        if ((v23 & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        memmove(locale, v15, v13);
      }

      *&locale[v13] = 10;
      if ((v21 & 0x80u) == 0)
      {
        v16 = &v19;
      }

      else
      {
        v16 = v19.__locale_;
      }

      if ((v21 & 0x80u) == 0)
      {
        v17 = v21;
      }

      else
      {
        v17 = v20;
      }

      std::string::append(a2, v16, v17);
      if (v21 < 0)
      {
        operator delete(v19.__locale_);
      }
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((v24 + *(v24[0] - 24)), *&v25[*(v24[0] - 24) + 16] | 4);
    }

    v24[0] = *MEMORY[0x277D82808];
    *(v24 + *(v24[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x259C29AC0](v25);
    std::istream::~istream();
    MEMORY[0x259C29CE0](v26);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_254D2C3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  std::istream::~istream();
  MEMORY[0x259C29CE0](a9);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(a1);
}

BOOL siri::intelligence::WriteFileFromVector(uint64_t a1, std::string *a2)
{
  v5 = siri::intelligence::OpenDataFile(a2, 1);
  if (v5)
  {
    v6 = *(a1 + 8);
    if (v6 != *a1)
    {
      fwrite(*a1, v6 - *a1, 1uLL, v5);
    }

    fclose(v5);
  }

  else
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Error saving to file %s", v4, v7);
  }

  return v5 != 0;
}

BOOL siri::intelligence::WriteFileFromLines(__int128 **a1, std::string *a2)
{
  v5 = siri::intelligence::OpenDataFile(a2, 1);
  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "\n");
    siri::intelligence::StringJoin(a1, __p, &v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    size = v16.__r_.__value_.__l.__size_;
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v16.__r_.__value_.__l.__size_;
    }

    if (v9)
    {
      std::string::append(&v16, "\n");
      v6 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      size = v16.__r_.__value_.__l.__size_;
      v7 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    if (v7 >= 0)
    {
      v10 = &v16;
    }

    else
    {
      v10 = v16.__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = size;
    }

    fwrite(v10, v11, 1uLL, v5);
    fclose(v5);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Error saving to file %s", v4, v12);
  }

  return v5 != 0;
}

void sub_254D2C5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::WriteFileFromString(uint64_t *a1, std::string *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v2 = *a1;
    v3 = a1[1];
  }

  memset(v5, 0, sizeof(v5));
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  return siri::intelligence::WriteFileFromVector(v5, a2);
}

void sub_254D2C6E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::WriteTempFileFromString(const void **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  strcpy(__s, "/tmp/flowtmpfile_XXXXXX");
  v6 = mkstemp(__s);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  siri::intelligence::AddExtension(__p, a2, &v16);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  close(v6);
  v8 = siri::intelligence::OpenDataFile(&v16, 1);
  if (v8)
  {
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
      v11 = a1[1];
    }

    fwrite(v10, 1uLL, v11, v8);
    fclose(v8);
    *a3 = v16;
  }

  else
  {
    v12 = &v16;
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v16.__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Failed to create a temporary file: %s", v7, v12);
    std::string::basic_string[abi:ne200100]<0>(a3, &str_5);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_254D2C854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::AddExtension(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
LABEL_7:

      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, a3);
      return;
    }

    v6 = *a2;
  }

  else
  {
    v6 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_7;
    }
  }

  if (*v6 == 46)
  {
    goto LABEL_7;
  }

  if (*(a1 + 23) >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v7 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    memmove(p_p, v9, v7);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v7) = 46;
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::string::append(&__p, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v13->__r_.__value_.__l + 2);
  *a3 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D2C9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::CopyFile(std::string *a1, std::string *a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = (siri::intelligence::ReadFileToVector(&__p, a1) & 1) != 0 && siri::intelligence::WriteFileFromVector(&__p, a2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_254D2CA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::DeleteFile(const char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v2 = unlink(a1);
  if (v2 == -1)
  {
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v3 = __error();
    v4 = strerror(*v3);
    siri::intelligence::Log::Warning("unlink(2) failed on %s:  %s\n", v5, v1, v4);
  }

  return v2 != -1;
}

void siri::intelligence::ChangeExtension(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    v6 = std::string::rfind(&__p, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v6 != -1)
    {
      std::string::erase(&__p, v6, 0xFFFFFFFFFFFFFFFFLL);
    }

    v7 = *(a2 + 23);
    v8 = *a2;
    if (v7 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (*v9 != 46)
    {
      std::string::append(&__p, ".");
      LOBYTE(v7) = *(a2 + 23);
      v8 = *a2;
    }

    if ((v7 & 0x80u) == 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::string::append(&__p, v10, v11);
    if (SHIBYTE(v12->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v12->__r_.__value_.__l.__data_, v12->__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = *&v12->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&a3->__r_.__value_.__l.__data_ = v13;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else if (*(a1 + 23) < 0)
  {
    v14 = *a1;
    v15 = *(a1 + 8);

    std::string::__init_copy_ctor_external(a3, v14, v15);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void sub_254D2CC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

std::string *siri::intelligence::GetExtension@<X0>(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v4 = std::string::rfind(a1, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v4 != -1)
  {
    return std::string::basic_string(a2, a1, v4 + 1, 0xFFFFFFFFFFFFFFFFLL, &v6);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, &str_5);
}

BOOL siri::intelligence::HasExtension(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  siri::intelligence::GetExtension(a1, &__p);
  siri::intelligence::StringToLower(&__p, &v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::intelligence::StringTrim(".", a2, &v13);
  siri::intelligence::StringToLower(&v13, &__p);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v5 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v7)
  {
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v11 = memcmp(v9, p_p, size) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v11 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v5 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
LABEL_28:
  if (v5 < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_254D2CF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::RemoveExtension(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = std::string::rfind(a1, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v4 == -1)
  {
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
      v6 = *(a1 + 8);

      std::string::__init_copy_ctor_external(a2, v5, v6);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    std::string::basic_string(a2, a1, 0, v4, &v7);
  }
}

BOOL siri::intelligence::IsUrl(std::string *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "http:");
  if (siri::intelligence::StringStartsWith(a1, v6))
  {
    v2 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "https:");
    v2 = siri::intelligence::StringStartsWith(a1, __p);
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

void sub_254D2D084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t siri::intelligence::AreFilesEqual(uint64_t a1, uint64_t a2)
{
  if (!siri::intelligence::FileExists(a1) || !siri::intelligence::FileExists(a2))
  {
    return 0;
  }

  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a1 : *a1;
    v9 = *a2;
    v10 = v7 >= 0 ? a2 : *a2;
    if (!memcmp(v8, v10, v5))
    {
      return 1;
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  siri::intelligence::ReadFileToVector(&v18, a1);
  siri::intelligence::ReadFileToVector(&v15, a2);
  v11 = v18;
  v12 = v15;
  if (v19 - v18 != v16 - v15)
  {
    v13 = 0;
    if (!v15)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v13 = memcmp(v18, v15, v19 - v18) == 0;
  if (v12)
  {
LABEL_22:
    v16 = v12;
    operator delete(v12);
    v11 = v18;
  }

LABEL_23:
  if (v11)
  {
    v19 = v11;
    operator delete(v11);
  }

  return v13;
}

void sub_254D2D1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::AreFilesEqualIgnoringFirstNLines(uint64_t a1, uint64_t a2, int a3)
{
  if (!siri::intelligence::FileExists(a1) || !siri::intelligence::FileExists(a2))
  {
    return 0;
  }

  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v7 == v8)
  {
    v10 = v6 >= 0 ? a1 : *a1;
    v11 = *a2;
    v12 = v9 >= 0 ? a2 : *a2;
    if (!memcmp(v10, v12, v7))
    {
      return 1;
    }
  }

  siri::intelligence::ReadFileToLines(a1, &v23);
  siri::intelligence::ReadFileToLines(a2, &v22);
  if (a3 >= 1)
  {
    v13.__i_ = v23.__begin_;
    v14.__i_ = &v23.__begin_[a3];
    std::vector<std::string>::erase(&v23, v13, v14);
    v15.__i_ = v22.__begin_;
    v16.__i_ = &v22.__begin_[a3];
    std::vector<std::string>::erase(&v22, v15, v16);
  }

  begin = v23.__begin_;
  end = v23.__end_;
  v19 = v22.__begin_;
  if (v23.__end_ - v23.__begin_ == v22.__end_ - v22.__begin_)
  {
    if (v23.__begin_ == v23.__end_)
    {
      v20 = 1;
    }

    else
    {
      do
      {
        v20 = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v24, &begin->__r_.__value_.__l.__data_, &v19->__r_.__value_.__l.__data_);
        if (!v20)
        {
          break;
        }

        ++begin;
        ++v19;
      }

      while (begin != end);
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  v22.__begin_ = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  return v20;
}

void sub_254D2D388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

std::vector<std::string>::iterator std::vector<std::string>::erase(std::vector<std::string> *this, std::vector<std::string>::const_iterator __first, std::vector<std::string>::const_iterator __last)
{
  if (__last.__i_ != __first.__i_)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v10, __last.__i_, this->__end_, __first.__i_);
    v6 = v5;
    end = this->__end_;
    if (end != v5)
    {
      do
      {
        v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v8 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      while (end != v6);
    }

    this->__end_ = v6;
  }

  return __first.__i_;
}

uint64_t siri::intelligence::IsAbsPath(std::string *a1)
{
  if (siri::intelligence::IsUrl(a1))
  {
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/");
  v2 = siri::intelligence::StringStartsWith(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_254D2D4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::GetAbsPath(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!siri::intelligence::IsAbsPath(a1))
  {
    getcwd(__s, 0x400uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    siri::intelligence::JoinPath(__p, a1, a2);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_6;
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
LABEL_6:
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v5, v6);
}

void sub_254D2D5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *siri::intelligence::GetCurrentDir@<X0>(_BYTE *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  getcwd(__s, 0x400uLL);
  result = std::string::basic_string[abi:ne200100]<0>(a1, __s);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double siri::intelligence::JoinPath@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  siri::intelligence::JoinPath(a1, a2, a6);
  v11 = *(a3 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 8);
  }

  if (v11)
  {
    siri::intelligence::JoinPath(a6, a3, &v14);
    if (*(a6 + 23) < 0)
    {
      operator delete(*a6);
    }

    result = *&v14;
    *a6 = v14;
    *(a6 + 16) = v15;
  }

  v12 = *(a4 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a4 + 8);
  }

  if (v12)
  {
    siri::intelligence::JoinPath(a6, a4, &v14);
    if (*(a6 + 23) < 0)
    {
      operator delete(*a6);
    }

    result = *&v14;
    *a6 = v14;
    *(a6 + 16) = v15;
  }

  v13 = *(a5 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a5 + 8);
  }

  if (v13)
  {
    siri::intelligence::JoinPath(a6, a5, &v14);
    if (*(a6 + 23) < 0)
    {
      operator delete(*a6);
    }

    result = *&v14;
    *a6 = v14;
    *(a6 + 16) = v15;
  }

  return result;
}

void sub_254D2D778(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::AddQueryStringParam(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    if (*(a1 + 23) < 0)
    {
      v34 = *a1;
      v35 = *(a1 + 8);

      std::string::__init_copy_ctor_external(a4, v34, v35);
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a1;
      a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v50, "?");
  v9 = siri::intelligence::StringContains(a1, &v50);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (v9)
  {
    if (v10)
    {
      if (*(a1 + 23) >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      v12 = &v48;
      std::string::basic_string[abi:ne200100](&v48, v11 + 1);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v48.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        if (*(a1 + 23) >= 0)
        {
          v13 = a1;
        }

        else
        {
          v13 = *a1;
        }

        memmove(v12, v13, v11);
      }

      *(&v12->__r_.__value_.__l.__data_ + v11) = 38;
      siri::intelligence::StringUriEscape(a2, &v47);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v47;
      }

      else
      {
        v14 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v47.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v48, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v49, "=");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      siri::intelligence::StringUriEscape(a3, &__p);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      goto LABEL_57;
    }

    if (*(a1 + 23) >= 0)
    {
      v36 = *(a1 + 23);
    }

    else
    {
      v36 = *(a1 + 8);
    }

    v37 = &v50;
    std::string::basic_string[abi:ne200100](&v50, v36 + 1);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v50.__r_.__value_.__r.__words[0];
    }

    if (v36)
    {
      if (*(a1 + 23) >= 0)
      {
        v38 = a1;
      }

      else
      {
        v38 = *a1;
      }

      memmove(v37, v38, v36);
    }

    *(&v37->__r_.__value_.__l.__data_ + v36) = 38;
    siri::intelligence::StringUriEscape(a2, &v49);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v49;
    }

    else
    {
      v39 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v49.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (v10)
    {
      if (*(a1 + 23) >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 8);
      }

      v23 = &v48;
      std::string::basic_string[abi:ne200100](&v48, v22 + 1);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v48.__r_.__value_.__r.__words[0];
      }

      if (v22)
      {
        if (*(a1 + 23) >= 0)
        {
          v24 = a1;
        }

        else
        {
          v24 = *a1;
        }

        memmove(v23, v24, v22);
      }

      *(&v23->__r_.__value_.__l.__data_ + v22) = 63;
      siri::intelligence::StringUriEscape(a2, &v47);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v47;
      }

      else
      {
        v25 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v47.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v48, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v49, "=");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      siri::intelligence::StringUriEscape(a3, &__p);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

LABEL_57:
      v31 = std::string::append(&v50, p_p, v21);
      v32 = *&v31->__r_.__value_.__l.__data_;
      a4->__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&a4->__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        v33 = v48.__r_.__value_.__r.__words[0];
LABEL_106:
        operator delete(v33);
        return;
      }

      return;
    }

    if (*(a1 + 23) >= 0)
    {
      v41 = *(a1 + 23);
    }

    else
    {
      v41 = *(a1 + 8);
    }

    v42 = &v50;
    std::string::basic_string[abi:ne200100](&v50, v41 + 1);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v50.__r_.__value_.__r.__words[0];
    }

    if (v41)
    {
      if (*(a1 + 23) >= 0)
      {
        v43 = a1;
      }

      else
      {
        v43 = *a1;
      }

      memmove(v42, v43, v41);
    }

    *(&v42->__r_.__value_.__l.__data_ + v41) = 63;
    siri::intelligence::StringUriEscape(a2, &v49);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v49;
    }

    else
    {
      v39 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v49.__r_.__value_.__l.__size_;
    }
  }

  v44 = std::string::append(&v50, v39, v40);
  v45 = *&v44->__r_.__value_.__l.__data_;
  a4->__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&a4->__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    v33 = v50.__r_.__value_.__r.__words[0];
    goto LABEL_106;
  }
}

void sub_254D2DC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::DirName@<D0>(std::string *__str@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size)
    {
      v7 = __str->__r_.__value_.__r.__words[0];
      goto LABEL_6;
    }

LABEL_24:

    std::string::basic_string[abi:ne200100]<0>(a3, &str_5);
    return result;
  }

  if (!*(&__str->__r_.__value_.__s + 23))
  {
    goto LABEL_24;
  }

  v7 = __str;
LABEL_6:
  v8 = v7 + size;
  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v9;
    v12 = v9;
    while (1)
    {
      v13 = *v12++;
      if (v13 == 47)
      {
        break;
      }

      v11 = v12;
      if (v12 == v8)
      {
        v11 = v10;
        goto LABEL_12;
      }
    }

    v9 = (&v11->__r_.__value_.__l.__data_ + 1);
    v10 = v11;
  }

  while (v12 != v8);
LABEL_12:
  if (v11 == v8)
  {
    goto LABEL_24;
  }

  v14 = v11 - v7;
  if (v14 == -1)
  {
    goto LABEL_24;
  }

  std::string::basic_string(a3, __str, 0, v14 + 1, &v21);
  if (a2)
  {
    v16 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((v16 & 0x80u) == 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = a3->__r_.__value_.__r.__words[0];
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = a3->__r_.__value_.__l.__size_;
    }

    v18 = &v17[-1].__r_.__value_.__r.__words[2] + 7;
    while (v16)
    {
      v19 = *(v18 + v16--);
      if (v19 != 47)
      {
        v20 = v16 + 1;
        goto LABEL_28;
      }
    }

    v20 = 0;
LABEL_28:
    std::string::basic_string(&v21, a3, 0, v20, &v22);
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a3->__r_.__value_.__l.__data_);
    }

    result = *&v21.__r_.__value_.__l.__data_;
    *a3 = v21;
  }

  return result;
}

void sub_254D2DE80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::BaseName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v8 = *a1;
      v9 = a2;
      v10 = 0;
LABEL_30:

      std::string::__init_copy_ctor_external(v9, v8, v10);
      return;
    }
  }

  else
  {
    if (!*(a1 + 23))
    {
LABEL_25:
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      return;
    }

    v5 = *(a1 + 23);
  }

  v6 = v5 - 1;
  if ((v4 & 0x80000000) != 0)
  {
    v8 = *a1;
    if (*(*a1 + v6) != 47)
    {
      v11 = *(a1 + 8);
      if (!v11)
      {
        v10 = 0;
LABEL_29:
        v9 = a2;
        goto LABEL_30;
      }

      v7 = &v8[v11];
LABEL_15:
      v12 = v8;
      v13 = v7;
      do
      {
        v14 = v12;
        v15 = v12;
        while (1)
        {
          v16 = *v15++;
          if (v16 == 47)
          {
            break;
          }

          v14 = v15;
          if (v15 == v7)
          {
            v14 = v13;
            goto LABEL_21;
          }
        }

        v12 = (v14 + 1);
        v13 = v14;
      }

      while (v15 != v7);
LABEL_21:
      if (v14 != v7 && v14 - v8 != -1)
      {
        std::string::basic_string(a2, a1, v14 - v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &__p);
        return;
      }

      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v8 = *a1;
      v10 = *(a1 + 8);
      goto LABEL_29;
    }

    v4 = *(a1 + 8);
  }

  else if (*(a1 + v6) != 47)
  {
    v7 = (a1 + v4);
    v8 = a1;
    goto LABEL_15;
  }

  std::string::basic_string(&__p, a1, 0, v4 - 1, &v18);
  siri::intelligence::BaseName(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D2E024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::PopPath(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "/");
  v4 = *(a1 + 23);
  v5 = *(a1 + 8);
  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7 && (v4 >= 0 ? (v8 = a1) : (v8 = *a1), (v17 & 0x80u) == 0 ? (v9 = __p) : (v9 = __p[0]), !memcmp(v8, v9, v6)) || !siri::intelligence::SubStringCount(a1, __p))
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(a2, &str_5);
    goto LABEL_43;
  }

  if (v4 < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, v5);
  }

  else
  {
    __str = *a1;
  }

  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_str = &__str;
  }

  if (p_str->__r_.__value_.__s.__data_[size - 1] == 47)
  {
    std::string::basic_string(&v14, &__str, 0, size - 1, &v18);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v14;
  }

  if (!siri::intelligence::StringStartsWith(&__str, __p) || siri::intelligence::SubStringCount(&__str, __p) != 1)
  {
    siri::intelligence::DirName(&__str, 0, &v14);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v14;
    v12 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v12 = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v13 = __str.__r_.__value_.__r.__words[0];
LABEL_38:
        if (v13->__r_.__value_.__s.__data_[v12 - 1] == 47)
        {
          std::string::basic_string(&v14, &__str, 0, v12 - 1, &v18);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v14;
        }
      }
    }

    else if (*(&v14.__r_.__value_.__s + 23))
    {
      v13 = &__str;
      goto LABEL_38;
    }

    *a2 = __str;
    goto LABEL_43;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "/");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_43:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254D2E284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::MakeDir(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1 && !siri::intelligence::DirExists(a1))
  {
    memset(&v4, 0, sizeof(v4));
    siri::intelligence::StringSplit(a1, "/");
  }

  return 1;
}

void sub_254D2E46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

_BYTE *siri::intelligence::ExecuteShellCommand@<X0>(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v12 = *MEMORY[0x277D85DE8];
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = popen(a1, "r");
  if (v4)
  {
    v6 = v4;
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    while (fgets(__s, 256, v6))
    {
      std::string::append(a2, __s);
    }

    result = pclose(v6);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (*(v2 + 23) >= 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = *v2;
    }

    siri::intelligence::Log::Error("Failed to execute shell command: %s", v5, v9);
    v10 = *MEMORY[0x277D85DE8];

    return std::string::basic_string[abi:ne200100]<0>(a2, &str_5);
  }

  return result;
}

void sub_254D2E5E8(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  pclose(v2);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::DeleteDir(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, &str_5);
  v2 = siri::intelligence::InnerDeleteDir(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  rmdir(v3);
  return v2;
}

void sub_254D2E67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::InnerDeleteDir(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  siri::intelligence::ListDir(a1, 1, 0, &v14);
  v5 = v14;
  if (v15 != v14)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      siri::intelligence::JoinPath(a1, v5 + v6, v12);
      siri::intelligence::JoinPath(a2, v14 + v6, __p);
      if (siri::intelligence::DirExists(v12))
      {
        v4 = siri::intelligence::InnerDeleteDir(v12, __p) & v4;
        if (v13 >= 0)
        {
          v8 = v12;
        }

        else
        {
          v8 = v12[0];
        }

        rmdir(v8);
      }

      else
      {
        v4 = siri::intelligence::DeleteFile(v12) & v4;
      }

      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      ++v7;
      v5 = v14;
      v6 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
  }

  v12[0] = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  return v4;
}

void sub_254D2E7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::ListDir(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v26, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "..");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v26, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = opendir(v8);
  v11 = v9;
  if (v9)
  {
    for (i = readdir(v9); ; i = readdir(v11))
    {
      if (!i)
      {
        closedir(v11);
        goto LABEL_49;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, i->d_name);
      v13 = std::__tree<std::string>::find<std::string>(&v26, __p);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 != v13)
      {
        continue;
      }

      if (a3)
      {
        break;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, i->d_name);
      std::vector<std::string>::push_back[abi:ne200100](a4, __p);
      if (v25 < 0)
      {
        v14 = __p[0];
LABEL_21:
        operator delete(v14);
      }

LABEL_22:
      if (a2)
      {
        continue;
      }

      std::string::basic_string[abi:ne200100]<0>(v22, i->d_name);
      siri::intelligence::JoinPath(a1, v22, __p);
      v15 = siri::intelligence::DirExists(__p);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
        if (!v15)
        {
          continue;
        }
      }

      else if (!v15)
      {
        continue;
      }

      std::string::basic_string[abi:ne200100]<0>(v20, i->d_name);
      siri::intelligence::JoinPath(a1, v20, v22);
      siri::intelligence::ListDir(__p, v22, 0, a3);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v16 = __p[0];
      if (__p[1] != __p[0])
      {
        v17 = 0;
        v18 = 0;
        do
        {
          if (a3)
          {
            std::vector<std::string>::push_back[abi:ne200100](a4, &v16[v17]);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v20, i->d_name);
            siri::intelligence::JoinPath(v20, __p[0] + v17, v22);
            std::vector<std::string>::push_back[abi:ne200100](a4, v22);
            if (v23 < 0)
            {
              operator delete(v22[0]);
            }

            if (v21 < 0)
            {
              operator delete(v20[0]);
            }
          }

          ++v18;
          v16 = __p[0];
          v17 += 24;
        }

        while (v18 < 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3));
      }

      v22[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v22);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, i->d_name);
    siri::intelligence::JoinPath(a1, v22, __p);
    std::vector<std::string>::push_back[abi:ne200100](a4, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v14 = v22[0];
    goto LABEL_21;
  }

  if (*(a1 + 23) >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  siri::intelligence::Log::Warning("Failed to opendir for %s", v10, v19);
LABEL_49:
  std::__tree<std::string>::destroy(&v26, v27[0]);
}

void sub_254D2EB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char *a30)
{
  std::__tree<std::string>::destroy(&a29, a30);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::CopyTree(uint64_t *a1, uint64_t a2)
{
  if (siri::intelligence::DirExists(a1))
  {
    siri::intelligence::BaseName(a1, &v19);
    siri::intelligence::ListDir(a1, 0, 0, &v17);
    v4 = v17;
    v5 = v18;
    v6 = 1;
    if (v17 != v18)
    {
      while (1)
      {
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v16, *v4, *(v4 + 1));
        }

        else
        {
          v7 = *v4;
          v16.__r_.__value_.__r.__words[2] = *(v4 + 2);
          *&v16.__r_.__value_.__l.__data_ = v7;
        }

        siri::intelligence::JoinPath(a1, &v16, &v15);
        std::string::basic_string[abi:ne200100]<0>(v12, &str_5);
        std::string::basic_string[abi:ne200100]<0>(__p, &str_5);
        siri::intelligence::JoinPath(a2, &v19, &v16, v12, __p, &v14);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        if (v13 < 0)
        {
          operator delete(v12[0]);
        }

        if (siri::intelligence::DirExists(&v15))
        {
          break;
        }

        if (siri::intelligence::FileExists(&v15))
        {
          Dir = siri::intelligence::CopyFile(&v15, &v14);
          goto LABEL_14;
        }

LABEL_15:
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v4 = (v4 + 24);
        if (v4 == v5)
        {
          goto LABEL_22;
        }
      }

      Dir = siri::intelligence::MakeDir(&v14);
LABEL_14:
      v6 &= Dir;
      goto LABEL_15;
    }

LABEL_22:
    v16.__r_.__value_.__r.__words[0] = &v17;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_254D2EE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x259C29AF0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_254D2F150(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x254D2F110);
  }

  __cxa_rethrow();
}

BOOL std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_254D2F3D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_254D2F678(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](v1);
  _Unwind_Resume(a1);
}

void sub_254D2F750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  YAML::NodeBuilder::~NodeBuilder(&a9);
  YAML::Parser::~Parser((v9 - 32));
  _Unwind_Resume(a1);
}

void YAML::Load(YAML *this, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, this);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v3, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  YAML::Load();
}

void YAML::LoadFile(uint64_t *a1)
{
  v3[72] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  std::ifstream::basic_ifstream(v3);
  if ((*(&v3[4] + *(v3[0] - 24)) & 5) == 0)
  {
    YAML::Load();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  YAML::BadFile::BadFile(exception);
}

void sub_254D2FAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  std::ifstream::~ifstream(&a10);
  _Unwind_Resume(a1);
}

void sub_254D2FC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void YAML::LoadAll(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  YAML::Parser::Parser(&v1);
}

void sub_254D30010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<YAML::Node>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void YAML::LoadAll(YAML *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, this);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v5, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  YAML::LoadAll(a2);
}

void YAML::LoadAllFromFile(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5[72] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  std::ifstream::basic_ifstream(v5);
  if ((*(&v5[4] + *(v5[0] - 24)) & 5) == 0)
  {
    YAML::LoadAll(a2);
  }

  exception = __cxa_allocate_exception(0x38uLL);
  YAML::BadFile::BadFile(exception);
}

void sub_254D303EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  std::ifstream::~ifstream(&a10);
  _Unwind_Resume(a1);
}

YAML::BadFile *YAML::BadFile::BadFile(YAML::BadFile *this)
{
  v5 = -1;
  v6 = -1;
  std::string::basic_string[abi:ne200100]<0>(__p, "bad file");
  YAML::Exception::Exception(this, &v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_28671C4B8;
  return this;
}

void sub_254D304A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C29C90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_254D30568(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::vector<YAML::Node>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<YAML::Node>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<YAML::Node>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<YAML::Node>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::allocator<YAML::Node>::destroy[abi:ne200100](i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL siri::intelligence::StringStartsWith(std::string *__str, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  std::string::basic_string(&__p, __str, 0, v3, &v13);
  v4 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a2[1];
  }

  if (size == v6)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = memcmp(p_p, v9, size) == 0;
    if (v4 < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_19:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v10;
}

BOOL siri::intelligence::StringEndsWith(std::string *__str, const void **a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v3 > size)
  {
    return 0;
  }

  std::string::basic_string(&__p, __str, size - v3, 0xFFFFFFFFFFFFFFFFLL, &v14);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if (v8 < 0)
  {
    v8 = a2[1];
  }

  if (v7 != v8)
  {
    v5 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_22:
    operator delete(__p.__r_.__value_.__l.__data_);
    return v5;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v9 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v5 = memcmp(p_p, v11, v7) == 0;
  if (v6 < 0)
  {
    goto LABEL_22;
  }

  return v5;
}

uint64_t siri::intelligence::StringContains(char **a1, char *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 < 0)
  {
    v2 = a1[1];
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  if (!v6)
  {
    return 1;
  }

  v7 = &v2[v3];
  if (v2 >= v6)
  {
    v11 = *v5;
    v12 = v3;
    do
    {
      v13 = &v2[-v6];
      if (v13 == -1)
      {
        break;
      }

      v14 = memchr(v12, v11, (v13 + 1));
      if (!v14)
      {
        break;
      }

      v8 = v14;
      if (!memcmp(v14, v5, v6))
      {
        return v8 != v7 && v8 - v3 != -1;
      }

      v12 = v8 + 1;
      v2 = (v7 - (v8 + 1));
    }

    while (v2 >= v6);
  }

  v8 = v7;
  return v8 != v7 && v8 - v3 != -1;
}

BOOL siri::intelligence::VectorContains(const std::string **a1, const std::string *a2)
{
  siri::intelligence::StringTrim(" \t\n\r", a2, &v14);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (1)
    {
      siri::intelligence::StringTrim(" \t\n\r", v3, &__p);
      v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v7 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v14.__r_.__value_.__l.__size_;
      }

      if (size == v7)
      {
        break;
      }

      v10 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      v11 = ++v3 == v4 || v10;
      if (v11)
      {
        goto LABEL_24;
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    v10 = memcmp(p_p, v9, size) == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

  v10 = 0;
LABEL_24:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_254D30A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringTrim(char *__s@<X1>, const std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v9 = strlen(__s);
  if (!size)
  {
    goto LABEL_14;
  }

  v10 = v7;
  v11 = v9;
  if (v9)
  {
    while (memchr(__s, v10->__r_.__value_.__s.__data_[0], v11))
    {
      v10 = (v10 + 1);
      if (!--size)
      {
        goto LABEL_14;
      }
    }
  }

  if (v10 - v7 == -1)
  {
LABEL_14:
    v13 = 0;
    v14 = 0;
    v12 = 0;
    memset(&__p, 0, sizeof(__p));
  }

  else
  {
    std::string::basic_string(&__p, a2, v10 - v7, 0xFFFFFFFFFFFFFFFFLL, &v22);
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v13 = __p.__r_.__value_.__l.__size_;
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v14;
  }

  if ((v12 & 0x80u) == 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  v17 = strlen(__s);
  v18 = &p_p[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    v19 = v16;
    if (!v16)
    {
      break;
    }

    if (!v17)
    {
      break;
    }
  }

  while (memchr(__s, v18[v16--], v17));
  std::string::basic_string(a3, &__p, 0, v19, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D30BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::SubStringCount(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v4 = *(a1 + 23);
    v5 = v4 >= 0 ? a1 : *a1;
    v6 = v4 >= 0 ? *(a1 + 23) : *(a1 + 8);
    v7 = v2 >= 0 ? a2 : *a2;
    if (v6 >= v3)
    {
      v10 = &v5[v6];
      v11 = *v7;
      v12 = v6;
      v13 = v5;
      do
      {
        v14 = v12 - v3;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v13, v11, v14 + 1);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (!memcmp(v15, v7, v3))
        {
          v8 = 0;
          if (v16 != v10)
          {
            v17 = v16 - v5;
            if (v16 - v5 != -1)
            {
              LODWORD(v8) = 0;
LABEL_26:
              v8 = (v8 + 1);
              v18 = v17 + v3;
              v19 = v6 >= (v17 + v3);
              v20 = v6 - (v17 + v3);
              if (v19 && v20 >= v3)
              {
                v21 = &v5[v18];
                while (1)
                {
                  v22 = v20 - v3;
                  if (v22 == -1)
                  {
                    break;
                  }

                  v23 = memchr(v21, v11, v22 + 1);
                  if (!v23)
                  {
                    break;
                  }

                  v24 = v23;
                  if (!memcmp(v23, v7, v3))
                  {
                    if (v24 != v10)
                    {
                      v17 = v24 - v5;
                      if (v24 - v5 != -1)
                      {
                        goto LABEL_26;
                      }
                    }

                    return v8;
                  }

                  v21 = v24 + 1;
                  v20 = v10 - (v24 + 1);
                  if (v20 < v3)
                  {
                    return v8;
                  }
                }
              }
            }
          }

          return v8;
        }

        v13 = v16 + 1;
        v12 = v10 - (v16 + 1);
      }

      while (v12 >= v3);
    }
  }

  return 0;
}

uint64_t siri::intelligence::StringToIntegralType<int>(const std::string *a1, BOOL *a2)
{
  v13 = 0;
  siri::intelligence::StringTrim(" \t\n\r", a1, &v12);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7, &v12, 24);
  MEMORY[0x259C29B20](v7, &v13);
  v3 = *(&v9[0].__locale_ + *(v7[0] - 24)) & 5;
  v7[0] = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v7[2] = v4;
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v11);
  if (a2)
  {
    *a2 = v3 == 0;
  }

  if (v3)
  {
    v5 = 0;
    v13 = 0;
  }

  else
  {
    v5 = v13;
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_254D30F3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::StringToIntegralType<long long>(const std::string *a1, BOOL *a2)
{
  v13 = 0;
  siri::intelligence::StringTrim(" \t\n\r", a1, &v12);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7, &v12, 24);
  MEMORY[0x259C29B40](v7, &v13);
  v3 = *(&v9[0].__locale_ + *(v7[0] - 24)) & 5;
  v7[0] = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v7[2] = v4;
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v11);
  if (a2)
  {
    *a2 = v3 == 0;
  }

  if (v3)
  {
    v5 = 0;
    v13 = 0;
  }

  else
  {
    v5 = v13;
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_254D31164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::StringToUInt32(const std::string *a1, _BYTE *a2)
{
  v14 = 0;
  siri::intelligence::StringTrim(" \t\n\r", a1, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v13.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    v3 = v13.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v13.__r_.__value_.__s + 23))
    {
      goto LABEL_9;
    }

    v3 = &v13;
  }

  if (v3->__r_.__value_.__s.__data_[0] == 45)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a2 = v4;
    goto LABEL_13;
  }

LABEL_9:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8, &v13, 24);
  MEMORY[0x259C29B30](v8, &v14);
  v4 = (*(&v10[0].__locale_ + *(v8[0] - 24)) & 5) == 0;
  v8[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8[2] = v5;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v12);
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v4)
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_254D313B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::StringToIntegralType<unsigned long long>(const std::string *a1, _BYTE *a2)
{
  v14 = 0;
  siri::intelligence::StringTrim(" \t\n\r", a1, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v13.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    v3 = v13.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v13.__r_.__value_.__s + 23))
    {
      goto LABEL_9;
    }

    v3 = &v13;
  }

  if (v3->__r_.__value_.__s.__data_[0] == 45)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a2 = v4;
    goto LABEL_13;
  }

LABEL_9:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8, &v13, 24);
  MEMORY[0x259C29B50](v8, &v14);
  v4 = (*(&v10[0].__locale_ + *(v8[0] - 24)) & 5) == 0;
  v8[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8[2] = v5;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v12);
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v4)
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_254D31610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::StringIsANumber(const std::string *a1)
{
  if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_12))
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&unk_280AF4480, "[0-9]", 0);
  }

  if ((atomic_load_explicit(&qword_280AF4458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4458))
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&unk_280AF44C0, "[+-]?[0-9]*(\\.[0-9]+)?([Ee][+-]?[0-9]+)?", 0);
  }

  siri::intelligence::StringTrim(" \t\n\r", a1, &v9);
  size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v4 = 0;
    if ((*(&v9.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v4;
    }

LABEL_24:
    operator delete(v9.__r_.__value_.__l.__data_);
    return v4;
  }

  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 32);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v9;
  }

  else
  {
    v3 = v9.__r_.__value_.__r.__words[0];
  }

  *(&__p.__unmatched_.std::pair<const char *, const char *> + 1) = 0uLL;
  v4 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&unk_280AF4480, v3, v3 + size, &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  v5 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if (v4)
  {
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = v9.__r_.__value_.__l.__size_;
    }

    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v4 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v6, v6 + v7, &__p, &unk_280AF44C0, 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    v5 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  if (v5 < 0)
  {
    goto LABEL_24;
  }

  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

BOOL siri::intelligence::StringIsGUID(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1 < 7)
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_280AF4460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4460))
  {
    std::string::basic_string[abi:ne200100]<0>(&stru_280AF4468, "0123456789abcdefABCDEF-");
    __cxa_atexit(MEMORY[0x277D82640], &stru_280AF4468, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4460);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (!v4)
  {
    return 1;
  }

  v6 = v4 - 1;
  do
  {
    v7 = *v5++;
    v8 = std::string::find(&stru_280AF4468, v7, 0);
    v9 = v8 == -1;
    result = v8 != -1;
    v9 = v9 || v6-- == 0;
  }

  while (!v9);
  return result;
}

uint64_t siri::intelligence::StringToBool(const std::string *a1, int a2)
{
  siri::intelligence::StringTrim(" \t\n\r", a1, &__p);
  siri::intelligence::StringToLower(&__p, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v16.__r_.__value_.__l.__size_ <= 2)
    {
      if (v16.__r_.__value_.__l.__size_ == 1)
      {
        v8 = v16.__r_.__value_.__r.__words[0];
        if (*v16.__r_.__value_.__l.__data_ == 49)
        {
          goto LABEL_64;
        }
      }

      else if (v16.__r_.__value_.__l.__size_ == 2)
      {
        v8 = v16.__r_.__value_.__r.__words[0];
        if (*v16.__r_.__value_.__l.__data_ == 28271)
        {
          goto LABEL_64;
        }

        if (*v16.__r_.__value_.__l.__data_ == 28526)
        {
          v3 = 0;
LABEL_65:
          operator delete(v8);
          return v3;
        }
      }
    }

    else if (v16.__r_.__value_.__l.__size_ == 3)
    {
      v8 = v16.__r_.__value_.__r.__words[0];
      if (*v16.__r_.__value_.__l.__data_ == 25977 && *(v16.__r_.__value_.__r.__words[0] + 2) == 115)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v16.__r_.__value_.__l.__size_ != 4)
      {
        if (v16.__r_.__value_.__l.__size_ == 5 && *v16.__r_.__value_.__l.__data_ == 1936482662 && *(v16.__r_.__value_.__r.__words[0] + 4) == 101)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v8 = v16.__r_.__value_.__r.__words[0];
      if (*v16.__r_.__value_.__l.__data_ == 1702195828)
      {
LABEL_64:
        v3 = 1;
        goto LABEL_65;
      }
    }

LABEL_48:
    if (v16.__r_.__value_.__l.__size_ != 3 || (*v16.__r_.__value_.__l.__data_ == 26223 ? (v13 = *(v16.__r_.__value_.__r.__words[0] + 2) == 102) : (v13 = 0), !v13))
    {
      if (v16.__r_.__value_.__l.__size_ != 1)
      {
        LODWORD(v3) = 1;
        goto LABEL_57;
      }

      v11 = v16.__r_.__value_.__r.__words[0];
      goto LABEL_55;
    }

LABEL_59:
    v3 = 0;
    if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_58;
    }

    return v3;
  }

  v3 = 1;
  if (HIBYTE(v16.__r_.__value_.__r.__words[2]) <= 2u)
  {
    if (HIBYTE(v16.__r_.__value_.__r.__words[2]) != 1)
    {
      if (HIBYTE(v16.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_57;
      }

      if (LOWORD(v16.__r_.__value_.__l.__data_) == 28271)
      {
        return v3;
      }

      if (LOWORD(v16.__r_.__value_.__l.__data_) != 28526)
      {
        goto LABEL_57;
      }

      return 0;
    }

    if (v16.__r_.__value_.__s.__data_[0] == 49)
    {
      return v3;
    }

    v11 = &v16;
LABEL_55:
    LODWORD(v3) = v11->__r_.__value_.__s.__data_[0] != 48;
    goto LABEL_57;
  }

  if (HIBYTE(v16.__r_.__value_.__r.__words[2]) == 3)
  {
    if (LOWORD(v16.__r_.__value_.__l.__data_) == 25977 && v16.__r_.__value_.__s.__data_[2] == 115)
    {
      return v3;
    }

    v4 = v16.__r_.__value_.__s.__data_[2];
    v5 = LOWORD(v16.__r_.__value_.__l.__data_) == 26223;
    v6 = 102;
    goto LABEL_34;
  }

  if (HIBYTE(v16.__r_.__value_.__r.__words[2]) != 4)
  {
    if (HIBYTE(v16.__r_.__value_.__r.__words[2]) != 5)
    {
      goto LABEL_57;
    }

    v4 = v16.__r_.__value_.__s.__data_[4];
    v5 = LODWORD(v16.__r_.__value_.__l.__data_) == 1936482662;
    v6 = 101;
LABEL_34:
    if (!v5 || v4 != v6)
    {
      goto LABEL_57;
    }

    return 0;
  }

  if (LODWORD(v16.__r_.__value_.__l.__data_) == 1702195828)
  {
    return v3;
  }

LABEL_57:
  v3 = v3 & a2;
  if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_58:
    v8 = v16.__r_.__value_.__r.__words[0];
    goto LABEL_65;
  }

  return v3;
}

void sub_254D31C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringToLower(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    for (i = 0; i != size; ++i)
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2->__r_.__value_.__r.__words[0];
      }

      v6 = __tolower(v5->__r_.__value_.__s.__data_[i]);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = a2->__r_.__value_.__r.__words[0];
      }

      v7->__r_.__value_.__s.__data_[i] = v6;
    }
  }
}

void sub_254D31D5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *siri::intelligence::StringFromBool@<X0>(siri::intelligence *this@<X0>, _BYTE *a2@<X8>)
{
  if (this)
  {
    v2 = "true";
  }

  else
  {
    v2 = "false";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void siri::intelligence::StringToFloat(const char *a1, BOOL *a2)
{
  v3 = a1;
  v6 = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  strtof(a1, &v6);
  if (a2)
  {
    if (*v6)
    {
      v4 = 0;
    }

    else
    {
      v5 = *(v3 + 23);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(v3 + 1);
      }

      v4 = v5 != 0;
    }

    *a2 = v4;
  }
}

uint64_t siri::intelligence::StringFromDouble@<X0>(siri::intelligence *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v3 = this;
  v33[6] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  v33[0] = MEMORY[0x277D82890] + 104;
  v7 = MEMORY[0x277D82890] + 64;
  v29 = MEMORY[0x277D82890] + 64;
  v8 = MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 24);
  v28[0] = *(MEMORY[0x277D82818] + 16);
  *(v28 + *(v28[0] - 24)) = v9;
  v28[1] = 0;
  v10 = (v28 + *(v28[0] - 24));
  std::ios_base::init(v10, &v30);
  v11 = MEMORY[0x277D82890] + 24;
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v12 = v8[5];
  v29 = v8[4];
  *(&v29 + *(v29 - 24)) = v12;
  v28[0] = v8[1];
  *(v28 + *(v28[0] - 24)) = v8[6];
  v33[0] = v6;
  v28[0] = v11;
  v29 = v7;
  std::stringbuf::basic_stringbuf[abi:ne200100](&v30, 16);
  v13 = v29;
  *(&v29 + *(v29 - 24) + 8) = *(&v29 + *(v29 - 24) + 8) & 0xFFFFFEFB | 4;
  if ((v3 & 0x80000000) == 0)
  {
    *(&v31[0].__locale_ + *(v13 - 24)) = v3;
  }

  MEMORY[0x259C29BB0](&v29, a2);
  std::stringbuf::str();
  std::string::basic_string[abi:ne200100]<0>(v26, ".");
  if (siri::intelligence::StringContains(a3, v26))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "e");
    v14 = siri::intelligence::StringContains(a3, __p) ^ 1;
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((v27 & 0x80000000) == 0)
  {
    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  operator delete(v26[0]);
  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_11:
  while (1)
  {
    v15 = *(a3 + 23);
    if (v15 < 0)
    {
      break;
    }

    if (!*(a3 + 23))
    {
      goto LABEL_24;
    }

    v16 = *(a3 - 1 + v15);
    if (v16 != 48)
    {
      if (v16 != 46)
      {
        goto LABEL_24;
      }

      v21 = v15 - 1;
      *(a3 + 23) = v15 - 1;
      v18 = a3;
      goto LABEL_23;
    }

    v17 = v15 - 1;
    *(a3 + 23) = v15 - 1;
    v18 = a3;
LABEL_18:
    v18[v17] = 0;
  }

  v19 = *(a3 + 8);
  if (!v19)
  {
    goto LABEL_24;
  }

  v18 = *a3;
  v20 = *(*a3 + v19 - 1);
  if (v20 == 48)
  {
    v17 = v19 - 1;
    *(a3 + 8) = v17;
    goto LABEL_18;
  }

  if (v20 != 46)
  {
    goto LABEL_24;
  }

  v21 = v19 - 1;
  *(a3 + 8) = v19 - 1;
LABEL_23:
  v18[v21] = 0;
LABEL_24:
  v28[0] = *v8;
  v22 = v8[9];
  *(v28 + *(v28[0] - 24)) = v8[8];
  v29 = v22;
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](v33);
}

void sub_254D32354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a20);
  _Unwind_Resume(a1);
}

void siri::intelligence::StringToDouble(uint64_t a1, BOOL *a2)
{
  if (siri::intelligence::StringIsANumber(a1))
  {
    v7 = 0;
    if (*(a1 + 23) >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    strtod(v4, &v7);
    if (a2)
    {
      if (*v7)
      {
        v5 = 0;
      }

      else
      {
        v6 = *(a1 + 23);
        if ((v6 & 0x80u) != 0)
        {
          v6 = *(a1 + 8);
        }

        v5 = v6 != 0;
      }

      *a2 = v5;
    }
  }

  else if (a2)
  {
    *a2 = 0;
  }
}

BOOL siri::intelligence::StringIsBool(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  siri::intelligence::StringTrim(" \t\n\r", a1, &__p);
  siri::intelligence::StringToLower(&__p, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v16.__r_.__value_.__l.__size_ > 2)
    {
      if (v16.__r_.__value_.__l.__size_ == 3)
      {
        v6 = v16.__r_.__value_.__r.__words[0];
        if (*v16.__r_.__value_.__l.__data_ == 25977 && *(v16.__r_.__value_.__r.__words[0] + 2) == 115)
        {
          goto LABEL_56;
        }
      }

      else if (v16.__r_.__value_.__l.__size_ == 4)
      {
        v6 = v16.__r_.__value_.__r.__words[0];
        if (*v16.__r_.__value_.__l.__data_ == 1702195828)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v16.__r_.__value_.__l.__size_ == 1)
    {
      v6 = v16.__r_.__value_.__r.__words[0];
      if (*v16.__r_.__value_.__l.__data_ == 49)
      {
        goto LABEL_56;
      }
    }

    else if (v16.__r_.__value_.__l.__size_ == 2)
    {
      v6 = v16.__r_.__value_.__r.__words[0];
      if (*v16.__r_.__value_.__l.__data_ != 28271)
      {
        if (*v16.__r_.__value_.__l.__data_ == 28526)
        {
          goto LABEL_53;
        }

        goto LABEL_25;
      }

LABEL_56:
      v2 = 1;
      goto LABEL_66;
    }

LABEL_25:
    if (v16.__r_.__value_.__l.__size_ == 5 && (*v16.__r_.__value_.__l.__data_ == 1936482662 ? (v9 = *(v16.__r_.__value_.__r.__words[0] + 4) == 101) : (v9 = 0), v9) || v16.__r_.__value_.__l.__size_ == 3 && (*v16.__r_.__value_.__l.__data_ == 26223 ? (v10 = *(v16.__r_.__value_.__r.__words[0] + 2) == 102) : (v10 = 0), v10))
    {
LABEL_53:
      v2 = 1;
      if ((*(&v16.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        return v2;
      }

      goto LABEL_65;
    }

    v6 = v16.__r_.__value_.__r.__words[0];
    if (v16.__r_.__value_.__l.__size_ == 1)
    {
LABEL_64:
      v2 = v6->__r_.__value_.__s.__data_[0] == 48;
      if ((*(&v16.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        return v2;
      }

LABEL_65:
      v6 = v16.__r_.__value_.__r.__words[0];
      goto LABEL_66;
    }

    v2 = 0;
LABEL_66:
    operator delete(v6);
    return v2;
  }

  v2 = 0;
  if (HIBYTE(v16.__r_.__value_.__r.__words[2]) <= 2u)
  {
    if (HIBYTE(v16.__r_.__value_.__r.__words[2]) != 1)
    {
      if (HIBYTE(v16.__r_.__value_.__r.__words[2]) != 2)
      {
        return v2;
      }

      if (LOWORD(v16.__r_.__value_.__l.__data_) == 28271)
      {
        return 1;
      }

      data_low = LOWORD(v16.__r_.__value_.__l.__data_);
      v8 = 28526;
      return data_low == v8;
    }

    if (v16.__r_.__value_.__s.__data_[0] == 49)
    {
      return 1;
    }

    v6 = &v16;
    goto LABEL_64;
  }

  switch(HIBYTE(v16.__r_.__value_.__r.__words[2]))
  {
    case 3u:
      if (LOWORD(v16.__r_.__value_.__l.__data_) == 25977 && v16.__r_.__value_.__s.__data_[2] == 115)
      {
        return 1;
      }

      v3 = v16.__r_.__value_.__s.__data_[2];
      v4 = LOWORD(v16.__r_.__value_.__l.__data_) == 26223;
      v5 = 102;
      return v4 && v3 == v5;
    case 4u:
      data_low = v16.__r_.__value_.__l.__data_;
      v8 = 1702195828;
      return data_low == v8;
    case 5u:
      v3 = v16.__r_.__value_.__s.__data_[4];
      v4 = LODWORD(v16.__r_.__value_.__l.__data_) == 1936482662;
      v5 = 101;
      return v4 && v3 == v5;
  }

  return v2;
}

void sub_254D326E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *siri::intelligence::StringTrimLeft@<X0>(char *__s@<X1>, const std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  result = strlen(__s);
  if (size)
  {
    v10 = v7;
    v11 = result;
    if (result)
    {
      while (1)
      {
        result = memchr(__s, v10->__r_.__value_.__s.__data_[0], v11);
        if (!result)
        {
          break;
        }

        v10 = (v10 + 1);
        if (!--size)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 - v7 != -1)
    {
      return std::string::basic_string(a3, a2, v10 - v7, 0xFFFFFFFFFFFFFFFFLL, &v12);
    }
  }

LABEL_14:
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  return result;
}

std::string *siri::intelligence::StringTrimRight@<X0>(char *__s@<X1>, const std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v9 = strlen(__s);
  v10 = &v7[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    v11 = size;
    if (!size)
    {
      break;
    }

    if (!v9)
    {
      break;
    }
  }

  while (memchr(__s, *(v10 + size--), v9));
  return std::string::basic_string(a3, a2, 0, v11, &v14);
}

std::string *siri::intelligence::StringAfter@<X0>(std::string *__str@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v7 = a2[23];
  v8 = *(a2 + 1);
  if ((v7 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v7 & 0x80u) == 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (v10)
  {
    if (size >= v10)
    {
      v11 = v6 + size;
      v12 = *v9;
      v13 = v6;
      while (1)
      {
        v14 = size - v10;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v13, v12, v14 + 1);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (!memcmp(v15, v9, v10))
        {
          if (v16 != v11)
          {
            v17 = v16 - v6;
            if (v16 - v6 != -1)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_28;
        }

        v13 = (v16 + 1);
        size = v11 - (v16 + 1);
        if (size < v10)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_28;
  }

  v17 = 0;
LABEL_21:
  if ((v7 & 0x80) == 0)
  {
    if (!v7)
    {
      goto LABEL_28;
    }

    return std::string::basic_string(a3, __str, v7 + v17, 0xFFFFFFFFFFFFFFFFLL, &v19);
  }

  v7 = v8;
  if (v8)
  {
    return std::string::basic_string(a3, __str, v7 + v17, 0xFFFFFFFFFFFFFFFFLL, &v19);
  }

LABEL_28:

  return std::string::basic_string[abi:ne200100]<0>(a3, &str_14_1);
}

std::string *siri::intelligence::StringBefore@<X0>(const std::string *a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = a2[23];
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a2[23];
  }

  else
  {
    v8 = *(a2 + 1);
  }

  if (v8)
  {
    v9 = size < v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v12 = v5 + size;
    v13 = *v7;
    v14 = v5;
    do
    {
      v15 = size - v8;
      if (v15 == -1)
      {
        break;
      }

      v16 = memchr(v14, v13, v15 + 1);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (!memcmp(v16, v7, v8))
      {
        if (v17 != v12 && v17 - v5 != -1)
        {
          return std::string::basic_string(a3, a1, 0, v17 - v5, &v18);
        }

        break;
      }

      v14 = (v17 + 1);
      size = v12 - (v17 + 1);
    }

    while (size >= v8);
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, &str_14_1);
}

void siri::intelligence::StringReplace(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, std::string *a5@<X8>)
{
  if (a2[23] >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = *(a1 + 23);
  if (!v6)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v11 = *(a1 + 8);
    goto LABEL_62;
  }

  LODWORD(v8) = a4;
  if ((v7 & 0x80) == 0)
  {
    if (v7 > a4)
    {
      *&a5->__r_.__value_.__l.__data_ = *a1;
      a5->__r_.__value_.__r.__words[2] = *(a1 + 16);
      goto LABEL_12;
    }

LABEL_9:
    *&a5->__r_.__value_.__l.__data_ = *a1;
    a5->__r_.__value_.__r.__words[2] = *(a1 + 16);
    return;
  }

  v11 = *(a1 + 8);
  if (v11 <= a4)
  {
LABEL_62:
    v30 = *a1;

    std::string::__init_copy_ctor_external(a5, v30, v11);
    return;
  }

  std::string::__init_copy_ctor_external(a5, *a1, v11);
LABEL_12:
  size = HIBYTE(a5->__r_.__value_.__r.__words[2]);
  v13 = size;
  if ((size & 0x80u) != 0)
  {
    size = a5->__r_.__value_.__l.__size_;
  }

  if (size >= v8)
  {
    v8 = v8;
    v14 = a2[23];
    if ((v14 & 0x80000000) == 0)
    {
      v15 = a2[23];
    }

    else
    {
      v15 = *(a2 + 1);
    }

    if ((v14 & 0x80000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v13 >= 0)
    {
      v17 = a5;
    }

    else
    {
      v17 = a5->__r_.__value_.__r.__words[0];
    }

    v31 = v14 >> 63;
    v32 = *(a2 + 1);
    while (!v15)
    {
LABEL_36:
      if (v8 != -1)
      {
        if (v31)
        {
          v24 = v32;
        }

        else
        {
          v24 = v14;
        }

        v25 = *(a3 + 23);
        if (v25 >= 0)
        {
          v26 = a3;
        }

        else
        {
          v26 = *a3;
        }

        if (v25 >= 0)
        {
          v27 = *(a3 + 23);
        }

        else
        {
          v27 = *(a3 + 8);
        }

        std::string::replace(a5, v8, v24, v26, v27);
        v28 = *(a3 + 23);
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(a3 + 8);
        }

        v8 += v28;
        size = HIBYTE(a5->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v17 = a5;
        }

        else
        {
          v17 = a5->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = a5->__r_.__value_.__l.__size_;
        }

        v14 = a2[23];
        v29 = *(a2 + 1);
        v16 = (v14 & 0x80000000) == 0 ? a2 : *a2;
        v31 = v14 >> 63;
        v32 = *(a2 + 1);
        v15 = (v14 & 0x80000000) == 0 ? a2[23] : *(a2 + 1);
        if (size >= v8)
        {
          continue;
        }
      }

      return;
    }

    v18 = size - v8;
    if ((size - v8) >= v15)
    {
      v19 = (v17 + size);
      v20 = (v17 + v8);
      v21 = *v16;
      do
      {
        if (v18 - v15 == -1)
        {
          break;
        }

        v22 = memchr(v20, v21, v18 - v15 + 1);
        if (!v22)
        {
          break;
        }

        v23 = v22;
        if (!memcmp(v22, v16, v15))
        {
          if (v23 == v19)
          {
            return;
          }

          v8 = &v23[-v17];
          goto LABEL_36;
        }

        v20 = v23 + 1;
        v18 = v19 - (v23 + 1);
      }

      while (v18 >= v15);
    }
  }
}

void sub_254D32D2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringSplit(uint64_t a1, _BYTE *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v2 = *a2;
  if (*a2)
  {
    v3 = a2 + 1;
    do
    {
      *(v5 + v2) = 1;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  operator new();
}

void sub_254D33188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringSplit(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 8))
      {
        goto LABEL_8;
      }

LABEL_7:
      std::vector<std::string>::push_back[abi:ne200100](v14, v5);
      goto LABEL_8;
    }

    if (*(v5 + 23))
    {
      goto LABEL_7;
    }

LABEL_8:
    v5 += 24;
  }

  v13 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  FirstOf = siri::intelligence::StringFindFirstOf(a1, v14, &v13, 0);
  if (FirstOf == -1)
  {
    v9 = 0;
  }

  else
  {
    v8 = FirstOf;
    v9 = 0;
    do
    {
      std::string::basic_string(&__p, a1, v9, v8 - v9, &v15);
      std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = *(v13 + 23);
      if (v10 < 0)
      {
        v10 = *(v13 + 8);
      }

      v9 = v10 + v8;
      v8 = siri::intelligence::StringFindFirstOf(a1, v14, &v13, v10 + v8);
    }

    while (v8 != -1);
  }

  v11 = *(a1 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 8);
  }

  if (v9 != v11)
  {
    std::string::basic_string(&__p, a1, v9, 0xFFFFFFFFFFFFFFFFLL, &v15);
    std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_254D33344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

unint64_t siri::intelligence::StringFindFirstOf(uint64_t *a1, uint64_t *a2, void *a3, unint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 == *a2)
  {
    return -1;
  }

  v7 = 0;
  result = -1;
  v26 = a3;
  v27 = a4;
  do
  {
    v9 = (v5 + 24 * v7);
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = a1[1];
    }

    v13 = *(v9 + 23);
    if (v13 >= 0)
    {
      v14 = (v5 + 24 * v7);
    }

    else
    {
      v14 = *v9;
    }

    if (v13 >= 0)
    {
      v15 = *(v9 + 23);
    }

    else
    {
      v15 = v9[1];
    }

    v16 = v12 - a4;
    if (v12 >= a4)
    {
      v17 = a4;
      if (v15)
      {
        if (v16 >= v15)
        {
          v28 = result;
          v29 = v4;
          v18 = (v11 + v12);
          v19 = (v11 + a4);
          v20 = *v14;
          do
          {
            if (v16 - v15 == -1)
            {
              break;
            }

            v21 = memchr(v19, v20, v16 - v15 + 1);
            if (!v21)
            {
              break;
            }

            v22 = v21;
            if (!memcmp(v21, v14, v15))
            {
              if (v22 != v18)
              {
                v17 = &v22[-v11];
                a3 = v26;
                a4 = v27;
                result = v28;
                v4 = v29;
                goto LABEL_26;
              }

              break;
            }

            v19 = v22 + 1;
            v16 = v18 - (v22 + 1);
          }

          while (v16 >= v15);
          a3 = v26;
          a4 = v27;
          result = v28;
          v4 = v29;
        }
      }

      else
      {
LABEL_26:
        v24 = v17 == -1 || v17 >= result;
        if (!v24)
        {
          result = v17;
        }

        if (a3)
        {
          if (!v24)
          {
            *a3 = v9;
            v5 = *a2;
            v4 = a2[1];
            result = v17;
          }
        }
      }
    }

    ++v7;
  }

  while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3));
  return result;
}

void siri::intelligence::StringJoin(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {

    std::string::basic_string[abi:ne200100]<0>(a3, &str_14_1);
  }

  else if (v5 - v4 == 24)
  {
    if (*(v4 + 23) < 0)
    {
      v19 = *v4;
      v20 = *(v4 + 1);

      std::string::__init_copy_ctor_external(a3, v19, v20);
    }

    else
    {
      v6 = *v4;
      *(a3 + 16) = *(v4 + 2);
      *a3 = v6;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    do
    {
      v11 = *(a3 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a3 + 8);
      }

      if (v11)
      {
        v12 = *(a2 + 23);
        if (v12 >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        if (v12 >= 0)
        {
          v14 = *(a2 + 23);
        }

        else
        {
          v14 = *(a2 + 8);
        }

        std::string::append(a3, v13, v14);
        v4 = *a1;
      }

      v15 = v4 + v9;
      v16 = *(v15 + 23);
      if (v16 >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= 0)
      {
        v18 = *(v15 + 23);
      }

      else
      {
        v18 = *(v15 + 8);
      }

      std::string::append(a3, v17, v18);
      ++v10;
      v4 = *a1;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_254D33684(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringToUpper(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    for (i = 0; i != size; ++i)
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2->__r_.__value_.__r.__words[0];
      }

      v6 = __toupper(v5->__r_.__value_.__s.__data_[i]);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = a2->__r_.__value_.__r.__words[0];
      }

      v7->__r_.__value_.__s.__data_[i] = v6;
    }
  }
}

void sub_254D33744(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringToCapitalized(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v4 = 0;
    v5 = 1;
    v6 = MEMORY[0x277D85DE0];
    do
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = a2->__r_.__value_.__r.__words[0];
      }

      v8 = v7->__r_.__value_.__s.__data_[v4];
      if (v5)
      {
        v9 = __toupper(v8);
      }

      else
      {
        v9 = __tolower(v8);
      }

      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2->__r_.__value_.__r.__words[0];
      }

      v10->__r_.__value_.__s.__data_[v4] = v9;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = a2->__r_.__value_.__r.__words[0];
      }

      v12 = v11->__r_.__value_.__s.__data_[v4];
      if ((v12 & 0x80000000) != 0)
      {
        v13 = __maskrune(v12, 0x4000uLL);
      }

      else
      {
        v13 = *(v6 + 4 * v12 + 60) & 0x4000;
      }

      v5 = v13 != 0;
      if (v4 >= 2)
      {
        v14 = (a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a2 : a2->__r_.__value_.__r.__words[0];
        if (*(v14 + v4 - 2) == 77 && *(v14 + v4 - 1) == 99)
        {
          v15 = __toupper(*(v14 + v4));
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = a2->__r_.__value_.__r.__words[0];
          }

          v16->__r_.__value_.__s.__data_[v4] = v15;
        }
      }

      ++v4;
    }

    while (size != v4);
  }
}

void sub_254D338AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringToPlural(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  siri::intelligence::StringTrim(" \t\n\r", a1, &v23);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v23.__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
    }

    return;
  }

  size = v23.__r_.__value_.__l.__size_;
  operator delete(v23.__r_.__value_.__l.__data_);
  if (!size)
  {
    goto LABEL_11;
  }

LABEL_3:
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  std::string::basic_string(&v22, a1, v4 - 1, 1uLL, &v21);
  siri::intelligence::StringToLower(&v22, &v23);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, &str_14_1);
  std::string::basic_string[abi:ne200100]<0>(&v21, &str_14_1);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 8);
    if (v5 <= 1)
    {
      goto LABEL_24;
    }
  }

  else if (v5 <= 1)
  {
    goto LABEL_24;
  }

  std::string::basic_string(&__p, a1, v5 - 2, 1uLL, &v24);
  siri::intelligence::StringToLower(&__p, &v20);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v22 = v20;
  *(&v20.__r_.__value_.__s + 23) = 0;
  v20.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *(a1 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  std::string::basic_string(&__p, a1, v7 - 2, 2uLL, &v24);
  siri::intelligence::StringToLower(&__p, &v20);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v21 = v20;
  *(&v20.__r_.__value_.__s + 23) = 0;
  v20.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_24:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_ != 1)
    {
      goto LABEL_32;
    }

    v8 = *v23.__r_.__value_.__l.__data_;
  }

  else
  {
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_32;
    }

    v8 = v23.__r_.__value_.__s.__data_[0];
  }

  if (v8 == 115 || v8 == 120 || v8 == 122)
  {
    goto LABEL_43;
  }

LABEL_32:
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_40;
    }

    if (LOWORD(v21.__r_.__value_.__l.__data_) != 26723)
    {
      v9 = &v21;
      goto LABEL_39;
    }

LABEL_43:
    if (*(a1 + 23) >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    std::string::basic_string[abi:ne200100](a2, v11 + 2);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    if (v11)
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      memmove(a2, v12, v11);
    }

    strcpy((a2 + v11), "es");
    goto LABEL_71;
  }

  if (v21.__r_.__value_.__l.__size_ != 2)
  {
    goto LABEL_40;
  }

  v9 = v21.__r_.__value_.__r.__words[0];
  if (*v21.__r_.__value_.__l.__data_ == 26723)
  {
    goto LABEL_43;
  }

LABEL_39:
  if (LOWORD(v9->__r_.__value_.__l.__data_) == 26739)
  {
    goto LABEL_43;
  }

LABEL_40:
  if ((*(&v23.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v23.__r_.__value_.__l.__size_ != 1)
    {
      goto LABEL_60;
    }

    v10 = v23.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_60;
    }

    v10 = &v23;
  }

  if (v10->__r_.__value_.__s.__data_[0] == 121)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "aeiou");
    v13 = siri::intelligence::StringContains(&v20.__r_.__value_.__l.__data_, &v22);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if ((v13 & 1) == 0)
    {
      v16 = *(a1 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(a1 + 8);
      }

      std::string::basic_string(&v20, a1, 0, v16 - 1, &__p);
      v17 = std::string::append(&v20, "ies");
      v18 = *&v17->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v17->__r_.__value_.__l + 2);
      *a2 = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      goto LABEL_71;
    }
  }

LABEL_60:
  if (*(a1 + 23) >= 0)
  {
    v14 = *(a1 + 23);
  }

  else
  {
    v14 = *(a1 + 8);
  }

  std::string::basic_string[abi:ne200100](a2, v14 + 1);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (v14)
  {
    if (*(a1 + 23) >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    memmove(a2, v15, v14);
  }

  *(a2 + v14) = 115;
LABEL_71:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_254D33D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_254D33D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x254D33D84);
  }

  JUMPOUT(0x254D33D88);
}

void siri::intelligence::StringAbbreviate(std::string *__str@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 <= a2)
    {
      *a3 = *__str;
      return;
    }

    goto LABEL_5;
  }

  size = __str->__r_.__value_.__l.__size_;
  if (size > a2)
  {
LABEL_5:
    std::string::basic_string(&__p, __str, 0, (a2 - 3), &v10);
    v6 = std::string::append(&__p, "...");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&a3->__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v8 = __str->__r_.__value_.__r.__words[0];

  std::string::__init_copy_ctor_external(a3, v8, size);
}

void sub_254D33E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringToId(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  siri::intelligence::StringTrim(" \t\n\r", a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  std::string::reserve(a2, size);
  if (size)
  {
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D85DE0];
    do
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v8 = __tolower(p_p->__r_.__value_.__s.__data_[v4]);
      if (v8 == 95)
      {
        v9 = 32;
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;
      if (v9 < 0)
      {
        v12 = __maskrune(v9, 0x4000uLL);
        if (v5 != 95 || !v12)
        {
          v11 = __maskrune(v10, 0x4000uLL);
LABEL_20:
          if (v11)
          {
            v13 = 95;
          }

          else
          {
            v13 = v10;
          }

          if ((v13 & 0x80000000) != 0)
          {
            if (!__maskrune(v13, 0x100uLL))
            {
              v15 = 0;
              goto LABEL_28;
            }
          }

          else
          {
            v14 = *(v6 + 4 * v13 + 60);
            if ((v14 & 0x100) == 0)
            {
              v15 = (v14 >> 10) & 1;
LABEL_28:
              v16 = v13 != 95 && v15 == 0;
              v5 = v10;
              if (v16)
              {
                goto LABEL_33;
              }
            }
          }

          std::string::push_back(a2, v13);
          v5 = v13;
          goto LABEL_33;
        }
      }

      else
      {
        v11 = *(v6 + 4 * v9 + 60) & 0x4000;
        if (v5 != 95 || !v11)
        {
          goto LABEL_20;
        }
      }

      v5 = 95;
LABEL_33:
      ++v4;
    }

    while (size != v4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D34028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::StringDistance(const std::string *a1, std::string *__str)
{
  v2 = __str;
  v3 = a1;
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  size = a1->__r_.__value_.__l.__size_;
  if (v4 >= 0)
  {
    v6 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = a1->__r_.__value_.__l.__size_;
  }

  v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = __str->__r_.__value_.__l.__size_;
  }

  if (v6 == v7)
  {
    if (v4 < 0)
    {
      a1 = a1->__r_.__value_.__r.__words[0];
    }

    v9 = __str->__r_.__value_.__r.__words[0];
    if (v8 < 0)
    {
      __str = __str->__r_.__value_.__r.__words[0];
    }

    if (!memcmp(a1, __str, v6))
    {
      return 0;
    }
  }

  if (v4 < 0)
  {
    std::string::__init_copy_ctor_external(&v38, v3->__r_.__value_.__l.__data_, size);
    if ((*(&v2->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v38 = *v3;
    if ((v8 & 0x80) == 0)
    {
LABEL_14:
      __p = *v2;
      goto LABEL_17;
    }
  }

  std::string::__init_copy_ctor_external(&__p, v2->__r_.__value_.__l.__data_, v2->__r_.__value_.__l.__size_);
LABEL_17:
  v10 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  v11 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  v12 = v38.__r_.__value_.__r.__words[1];
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v38.__r_.__value_.__l.__size_;
  }

  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v16 = __p.__r_.__value_.__r.__words[1];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  if (v13 > v17)
  {
    std::string::operator=(&v38, v2);
    std::string::operator=(&__p, v3);
    v10 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    v12 = v38.__r_.__value_.__r.__words[1];
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v16 = __p.__r_.__value_.__r.__words[1];
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  if (v11 >= 0)
  {
    v12 = v10;
  }

  if (v15 >= 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  v19 = v12 < 1 || v18 < 1;
  if (v19)
  {
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v12 & 0x7FFFFFFF;
    v26 = &v38;
    if (v11 < 0)
    {
      v26 = v38.__r_.__value_.__r.__words[0];
    }

    p_p = &__p;
    if (v15 < 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    do
    {
      if (v24 + 1 > (v18 & 0x7FFFFFFFu))
      {
        v28 = v24 + 1;
      }

      else
      {
        v28 = v18 & 0x7FFFFFFF;
      }

      v29 = v28 - v24;
      v30 = (p_p + v24++);
      while (1)
      {
        v31 = v30->__r_.__value_.__s.__data_[0];
        v30 = (v30 + 1);
        if (v26->__r_.__value_.__s.__data_[v22] == v31)
        {
          break;
        }

        ++v23;
        ++v24;
        if (!--v29)
        {
          v24 = v28;
          break;
        }
      }

      ++v22;
    }

    while (v22 < v25 && v18 > v24);
    v20 = 0;
    v21 = v18 - v24 + v23;
    do
    {
      v32 = v18 + v20;
      while (1)
      {
        v33 = v18 - 1;
        if (v26->__r_.__value_.__s.__data_[v25 - 1] == p_p->__r_.__value_.__s.__data_[v18 - 1])
        {
          break;
        }

        ++v20;
        --v18;
        if (!v33)
        {
          v20 = v32;
          goto LABEL_58;
        }
      }

      if (v25 < 2)
      {
        break;
      }

      --v25;
      v19 = v18-- <= 1;
    }

    while (!v19);
    v18 = v33;
  }

LABEL_58:
  v34 = v20 + v18;
  if (v21 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v21;
  }

  if (v15 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((*(&v38.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_65:
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  else if (v11 < 0)
  {
    goto LABEL_65;
  }

  return v35;
}

void sub_254D34308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringEscapeQuotes(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v10, "\");
  std::string::basic_string[abi:ne200100]<0>(v8, "\\\");
  siri::intelligence::StringReplace(a1, v10, v8, 0, &v12);
  std::string::basic_string[abi:ne200100]<0>(v6, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "\\"");
  siri::intelligence::StringReplace(&v12, v6, __p, 0, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_254D34428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringUnescapeQuotes(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v10, "\\"");
  std::string::basic_string[abi:ne200100]<0>(v8, "");
  siri::intelligence::StringReplace(a1, v10, v8, 0, &v12);
  std::string::basic_string[abi:ne200100]<0>(v6, "\\\");
  std::string::basic_string[abi:ne200100]<0>(__p, "\");
  siri::intelligence::StringReplace(&v12, v6, __p, 0, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_254D34590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::StringUriEscape(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
  }

  if (v4)
  {
    v6 = 0;
    v7 = v3 >> 63;
    do
    {
      if (v7)
      {
        v8 = *a1;
      }

      else
      {
        v8 = a1;
      }

      if (*(v8 + v6) - 65 < 0x1A || *(v8 + v6) - 97 < 0x1A || *(v8 + v6) - 48 < 0xA || ((v9 = *(v8 + v6), (v9 - 36) <= 0x3B) ? (v10 = ((1 << (v9 - 36)) & 0x800000012C00785) == 0) : (v10 = 1), !v10 || v9 == 126))
      {
        std::string::push_back(a2, *(v8 + v6));
      }

      else
      {
        *__str = 0;
        snprintf(__str, 4uLL, "%%%hhx", *(v8 + v6));
        std::string::append(a2, __str);
      }

      ++v6;
      v11 = *(a1 + 23);
      v7 = v11 >> 63;
      if ((v11 & 0x80000000) != 0)
      {
        v11 = a1[1];
      }
    }

    while (v6 < v11);
  }
}

void sub_254D34740(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ParseStringList(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v4)
  {
    v7 = 0;
    v8 = MEMORY[0x277D85DE0];
    while (1)
    {
      while (1)
      {
        v9 = *(a1 + 23) >= 0 ? a1 : *a1;
        v10 = *(v9 + v7);
        v11 = (v10 & 0x80000000) != 0 ? __maskrune(v10, 0x4000uLL) : *(v8 + 4 * v10 + 60) & 0x4000;
        if (v7 >= v4 || !v11)
        {
          break;
        }

        ++v7;
      }

      if (v7 >= v4)
      {
        return;
      }

      memset(&__str, 0, sizeof(__str));
      v12 = *(a1 + 23) >= 0 ? a1 : *a1;
      v13 = *(v12 + v7);
      if (v13 == 39 || v13 == 34)
      {
        v14 = *(v12 + v7);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v12 + v7);
      if (v15 != 44)
      {
        break;
      }

      ++v7;
LABEL_66:
      if (v7 >= v4)
      {
        return;
      }
    }

    std::string::push_back(&__str, v15);
    ++v7;
    while (v7 < v4)
    {
      if (*(a1 + 23) >= 0)
      {
        v16 = a1;
      }

      else
      {
        v16 = *a1;
      }

      v17 = *(v16 + v7);
      if (v17 == 39 || v17 == 34)
      {
        if (v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = *(v16 + v7);
        }

        if (v14 == *(v16 + v7))
        {
          v14 = 0;
        }

        else
        {
          v14 = v18;
        }
      }

      v19 = *(v16 + v7++);
      if (v19 == 44 && v14 == 0)
      {
        break;
      }

      std::string::push_back(&__str, v19);
    }

    siri::intelligence::StringTrim(" \t\n\r", &__str, &v26);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v26;
    if (a2 == 1)
    {
      LOBYTE(size) = *(&__str.__r_.__value_.__s + 23);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_)
        {
          v22 = *__str.__r_.__value_.__l.__data_;
LABEL_51:
          if (v22 == 34 || v22 == 39)
          {
            std::string::basic_string(&v26, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v28);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v26;
            LOBYTE(size) = *(&v26.__r_.__value_.__s + 23);
          }

          size = size;
          if ((size & 0x80u) == 0)
          {
            p_str = &__str;
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v24 = size - 1;
          v25 = p_str->__r_.__value_.__s.__data_[size - 1];
          if (v25 == 39 || v25 == 34)
          {
            std::string::basic_string(&v26, &__str, 0, v24, &v28);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v26;
          }
        }
      }

      else if (*(&__str.__r_.__value_.__s + 23))
      {
        v22 = __str.__r_.__value_.__s.__data_[0];
        goto LABEL_51;
      }
    }

    std::vector<std::string>::push_back[abi:ne200100](a3, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_66;
  }
}

void sub_254D34A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_254D34AD4(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x259C29C90]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_254D35478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x259C29D90);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x259C29D90);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x259C29D90);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x259C29D90);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_28671B3C0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_28671B3C0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_28671B408;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_28671B408;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_28671B408;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x259C29D90);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_254D36B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](&v41, (v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_254D36F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_254D37500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v5);
      v5 += 12;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<std::__state<char>>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 12;
      std::allocator<std::__state<char>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::__state<char>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::__state<char>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](v4, (i - 96));
  }
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D37B0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D37B80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x259C29D90);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          v10 = 13;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v10 = 9;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_72;
        }

        v11 = a2[1];
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
        {
          goto LABEL_72;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_72;
        }

        v12 = *v4;
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v13 = -87;
        }

        v6 = 16 * (v13 + v12);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_72;
        }

        v14 = v4[1];
        v15 = -48;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          v14 |= 0x20u;
          if ((v14 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v15 = -87;
        }

        if (v4 + 2 != a3)
        {
          v16 = v4[2];
          v17 = -48;
          if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
          {
LABEL_49:
            v18 = v16 + 16 * (v6 + v15 + v14) + v17;
            if (this)
            {
              std::string::operator=(this, v18);
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
            }

            v4 += 3;
            return v4;
          }

          v16 |= 0x20u;
          if ((v16 - 97) < 6)
          {
            v17 = -87;
            goto LABEL_49;
          }
        }

LABEL_72:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v10 = *a2;
        if (this)
        {
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v10);
        return ++v4;
      }

      if (!this)
      {
        v10 = 11;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 11;
    }

LABEL_68:
    std::string::operator=(v9, v10);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v10 = 12;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v10 = 10;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 10;
    }

    goto LABEL_68;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v10 = 0;
      goto LABEL_69;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_68;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_72;
  }

  v8 = v7 & 0x1F;
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}