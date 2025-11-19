void health::FormatImplementation<unsigned long &,long long &,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
{
  v34 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v34 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v34 = &v11->__r_.__value_.__s.__data_[2];
    v25 = v11->__r_.__value_.__s.__data_[2];
    if ((v25 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v26 = 0;
      v27 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v34 = v27;
        v26 = (v25 & 0xF) + 10 * v26;
        v28 = *v27++;
        LOBYTE(v25) = v28;
      }

      while ((v28 - 58) >= 0xFFFFFFF6);
      v34 = v27;
      if (*(v27 - 1) == 125)
      {
        health::FormatterParameters<0ul,unsigned long &,long long &,int &,char *>::formatOptionsAtIndex<unsigned long &,long long &,int &,char *>(v26);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_70;
  }

  health::FormatOptions::FormatOptions(&v30, &v34);
  v13 = v34;
  if (*(&v30 + 1) > 1)
  {
    if (*(&v30 + 1) == 2)
    {
      health::TypeFormatter<int &,void>::TypeFormatter(&__p, a4[1], &v30);
      v23 = BYTE7(v37);
      if (SBYTE7(v37) < 0)
      {
        v23 = v36;
      }

      v24 = *(&v31 + 1);
      if (*(&v31 + 1) <= v23)
      {
        v24 = v23;
      }

      if (v31)
      {
        v23 = v24;
      }

      health::FormatImplementation<unsigned long &,long long &,int &,char *>(v13, a2, &v23[a3 + v9], a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_58;
    }

    if (*(&v30 + 1) != 3)
    {
      goto LABEL_71;
    }

    v17 = **a4;
    __p = v17;
    if (v17)
    {
      v17 = strlen(v17);
    }

    v36 = v17;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v18 = *(&v31 + 1);
    if (*(&v31 + 1) <= v17)
    {
      v18 = v17;
    }

    if (v31)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    health::FormatImplementation<unsigned long &,long long &,int &,char *>(v34, a2, &v19[a3 + v9], a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v30, &v20[a3 + v9], &__p);
  }

  else
  {
    if (*(&v30 + 1))
    {
      if (*(&v30 + 1) == 1)
      {
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, a4[2], &v30);
        v14 = BYTE7(v37);
        if (SBYTE7(v37) < 0)
        {
          v14 = v36;
        }

        v15 = *(&v31 + 1);
        if (*(&v31 + 1) <= v14)
        {
          v15 = v14;
        }

        if (v31)
        {
          v14 = v15;
        }

        health::FormatImplementation<unsigned long &,long long &,int &,char *>(v13, a2, &v14[a3 + v9], a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_58;
      }

LABEL_71:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_70:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<unsigned long &,void>::TypeFormatter(&__p, a4[3], &v30);
    v21 = BYTE7(v37);
    if (SBYTE7(v37) < 0)
    {
      v21 = v36;
    }

    v22 = *(&v31 + 1);
    if (*(&v31 + 1) <= v21)
    {
      v22 = v21;
    }

    if (v31)
    {
      v21 = v22;
    }

    health::FormatImplementation<unsigned long &,long long &,int &,char *>(v13, a2, &v21[a3 + v9], a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_58:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v30, &v16[a3 + v9], &__p);
    if (SBYTE7(v37) < 0)
    {
      operator delete(__p);
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,unsigned long &,long long &,int &,char *>::formatOptionsAtIndex<unsigned long &,long long &,int &,char *>(uint64_t a1)
{
  if (!a1 || a1 == 1 || a1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    v3 = __cxa_allocate_exception(0x10uLL);
    exception = v3;
    if (a1 == 3)
    {
      std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
    }
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::TypeFormatter<unsigned long &,void>::TypeFormatter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v6 = v16;
  if (*(a3 + 16) == 1)
  {
    *(v19 + *(v16 - 24)) = *(a3 + 24);
  }

  if (*(a3 + 32) == 1)
  {
    *(&v18 + *(v6 - 24)) = *(a3 + 40);
  }

  v7 = (&v16 + *(v6 - 24));
  v8 = *(a3 + 52);
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v9 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v14);
  }

  v7[1].__fmtflags_ = v8;
  MEMORY[0x22AAC83C0](&v16, *a2);
  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    v12 = v19[3];
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_20;
    }

    v12 = v19[0];
    v11 = v19[2];
  }

  v10 = v11 - v12;
  if (v11 - v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v11 - v12;
  if (v10)
  {
    memmove(&v14, v12, v10);
  }

LABEL_20:
  *(&v14 + v10) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v18);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v25);
  return a1;
}

void sub_228FCEF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<health::POSIXMappedFileExtent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1D58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void health::FormatImplementation<long long &,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
{
  v32 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v32 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v32 = &v11->__r_.__value_.__s.__data_[2];
    v23 = v11->__r_.__value_.__s.__data_[2];
    if ((v23 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v24 = 0;
      v25 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v32 = v25;
        v24 = (v23 & 0xF) + 10 * v24;
        v26 = *v25++;
        LOBYTE(v23) = v26;
      }

      while ((v26 - 58) >= 0xFFFFFFF6);
      v32 = v25;
      if (*(v25 - 1) == 125)
      {
        health::FormatterParameters<0ul,long long &,int &,char *>::formatOptionsAtIndex<long long &,int &,char *>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_59;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        v14 = **a4;
        __p = v14;
        if (v14)
        {
          v14 = strlen(v14);
        }

        v34 = v14;
        v35 = v28;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= v14)
        {
          v15 = v14;
        }

        if (v29)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        health::FormatImplementation<long long &,int &,char *>(v32, a2, &v16[a3 + v9], a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = a2->__r_.__value_.__r.__words[0];
        }

        health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v28, &v17[a3 + v9], &__p);
        goto LABEL_49;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_59:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<int &,void>::TypeFormatter(&__p, a4[1], &v28);
    v18 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v18 = v34;
    }

    v19 = *(&v29 + 1);
    if (*(&v29 + 1) <= v18)
    {
      v19 = v18;
    }

    if (v29)
    {
      v18 = v19;
    }

    health::FormatImplementation<long long &,int &,char *>(v13, a2, &v18[a3 + v9], a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, a4[2], &v28);
    v21 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v21 = v34;
    }

    v22 = *(&v29 + 1);
    if (*(&v29 + 1) <= v21)
    {
      v22 = v21;
    }

    if (v29)
    {
      v21 = v22;
    }

    health::FormatImplementation<long long &,int &,char *>(v13, a2, &v21[a3 + v9], a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, &v20[a3 + v9], &__p);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_49:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long &,int &,char *>::formatOptionsAtIndex<long long &,int &,char *>(uint64_t a1)
{
  if (a1 && a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v2 = exception;
    if (a1 == 2)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v2, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<int const&,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v55 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v55 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v55 = &v11->__r_.__value_.__s.__data_[2];
    v45 = v11->__r_.__value_.__s.__data_[2];
    if ((v45 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v46 = 0;
      v47 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v55 = v47;
        v46 = (v45 & 0xF) + 10 * v46;
        v48 = *v47++;
        LOBYTE(v45) = v48;
      }

      while ((v48 - 58) >= 0xFFFFFFF6);
      v55 = v47;
      if (*(v47 - 1) == 125)
      {
        health::FormatterParameters<0ul,int const&,int &,char *>::formatOptionsAtIndex<int const&,int &,char *>(v46);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_125;
  }

  health::FormatOptions::FormatOptions(&v51, &v55);
  v13 = v55;
  if (!*(&v51 + 1))
  {
    v22 = *(a4 + 16);
    __p[1] = 0;
    v57 = 0;
    __p[0] = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v60);
    v23 = v60;
    if (v52 == 1)
    {
      *(&v62 + *(v60 - 3) + 8) = *(&v52 + 1);
    }

    v50 = v13;
    if (v53 == 1)
    {
      *(&v62 + *(v23 - 24)) = *(&v53 + 1);
    }

    v24 = (&v60 + *(v23 - 24));
    v25 = SLOBYTE(__c[1]);
    if (v24[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v24);
      v26 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
      (v26->__vftable[2].~facet_0)(v26, 32);
      std::locale::~locale(__dst);
    }

    v24[1].__fmtflags_ = v25;
    MEMORY[0x22AAC83A0](&v60, *v22);
    if ((v69 & 0x10) != 0)
    {
      v28 = v68;
      if (v68 < *(&__src + 1))
      {
        v68 = *(&__src + 1);
        v28 = *(&__src + 1);
      }

      v29 = __src;
    }

    else
    {
      if ((v69 & 8) == 0)
      {
        v27 = 0;
        HIBYTE(v59) = 0;
        goto LABEL_59;
      }

      v29 = *(&v62 + 1);
      v28 = *(&v63 + 1);
    }

    v27 = v28 - v29;
    if (v28 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v59) = v28 - v29;
    if (v27)
    {
      memmove(__dst, v29, v27);
    }

LABEL_59:
    *(&__dst[0].__locale_ + v27) = 0;
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *&__dst[0].__locale_;
    v57 = v59;
    v60 = *MEMORY[0x277D82828];
    *(&v60 + *(v60 - 3)) = *(MEMORY[0x277D82828] + 24);
    v61 = MEMORY[0x277D82878] + 16;
    if (v67 < 0)
    {
      operator delete(v66);
    }

    v61 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v62);
    std::ostream::~ostream();
    MEMORY[0x22AAC8550](&v70);
    v30 = SHIBYTE(v57);
    if (v57 >= 0)
    {
      v31 = HIBYTE(v57);
    }

    else
    {
      v31 = __p[1];
    }

    v32 = *(&v52 + 1);
    if (*(&v52 + 1) <= v31)
    {
      v32 = v31;
    }

    if (v52)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    health::FormatImplementation<int const&,int &,char *>(v50, a2, v33 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = a2;
    }

    else
    {
      v34 = a2->__r_.__value_.__r.__words[0];
    }

    v35 = v34 + a3 + v9;
    if (v52 == 1)
    {
      v36 = *(&v52 + 1) - v31;
      if (*(&v52 + 1) > v31)
      {
        if (v51)
        {
          if (v51 != 1)
          {
            if (v51 != 2 || (memset(v35, LOBYTE(__c[1]), *(&v52 + 1) - v31), !v31))
            {
LABEL_90:
              if ((v30 & 0x80000000) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_91;
            }

            if (v30 >= 0)
            {
              v37 = __p;
            }

            else
            {
              v37 = __p[0];
            }

            v38 = &v35[v36];
LABEL_89:
            memmove(v38, v37, v31);
            goto LABEL_90;
          }

          if (v36 >= 2)
          {
            if (v36 >> 1 <= 1)
            {
              v39 = 1;
            }

            else
            {
              v39 = v36 >> 1;
            }

            memset(v35, LOBYTE(__c[1]), v39);
            v35 += v39;
          }

          if (v31)
          {
            if (v30 >= 0)
            {
              v40 = __p;
            }

            else
            {
              v40 = __p[0];
            }

            memmove(v35, v40, v31);
          }

          if (v36 - (v36 >> 1) <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = v36 - (v36 >> 1);
          }

          v42 = LOBYTE(__c[1]);
          v43 = &v35[v31];
        }

        else
        {
          if (v31)
          {
            if (v30 >= 0)
            {
              v44 = __p;
            }

            else
            {
              v44 = __p[0];
            }

            memmove(v35, v44, v31);
          }

          v42 = LOBYTE(__c[1]);
          v43 = &v35[v31];
          v41 = v36;
        }

        memset(v43, v42, v41);
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_93;
        }

LABEL_91:
        v21 = __p[0];
        goto LABEL_92;
      }
    }

    if (!v31)
    {
      goto LABEL_90;
    }

    if (v30 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    v38 = v34 + a3 + v9;
    goto LABEL_89;
  }

  if (*(&v51 + 1) != 1)
  {
    if (*(&v51 + 1) == 2)
    {
      v14 = **a4;
      v60 = v14;
      if (v14)
      {
        v14 = strlen(v14);
      }

      v62 = v51;
      v63 = v52;
      __src = v53;
      v61 = v14;
      v65 = *__c;
      v15 = *(&v52 + 1);
      if (*(&v52 + 1) <= v14)
      {
        v15 = v14;
      }

      if (v52)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      health::FormatImplementation<int const&,int &,char *>(v55, a2, &v16[a3 + v9], a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0];
      }

      health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v51, &v17[a3 + v9], &v60);
      goto LABEL_93;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_125:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::TypeFormatter<int &,void>::TypeFormatter(&v60, *(a4 + 8), &v51);
  v18 = BYTE7(v62);
  if (SBYTE7(v62) < 0)
  {
    v18 = v61;
  }

  v19 = *(&v52 + 1);
  if (*(&v52 + 1) <= v18)
  {
    v19 = v18;
  }

  if (v52)
  {
    v18 = v19;
  }

  health::FormatImplementation<int const&,int &,char *>(v13, a2, v18 + a3 + v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v51, &v20[a3 + v9], &v60);
  if (SBYTE7(v62) < 0)
  {
    v21 = v60;
LABEL_92:
    operator delete(v21);
  }

LABEL_93:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,int const&,int &,char *>::formatOptionsAtIndex<int const&,int &,char *>(uint64_t a1)
{
  if (a1 && a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v2 = exception;
    if (a1 == 2)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v2, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<std::string const&,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
{
  v32 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v32 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v32 = &v11->__r_.__value_.__s.__data_[2];
    v23 = v11->__r_.__value_.__s.__data_[2];
    if ((v23 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v24 = 0;
      v25 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v32 = v25;
        v24 = (v23 & 0xF) + 10 * v24;
        v26 = *v25++;
        LOBYTE(v23) = v26;
      }

      while ((v26 - 58) >= 0xFFFFFFF6);
      v32 = v25;
      if (*(v25 - 1) == 125)
      {
        health::FormatterParameters<0ul,std::string const&,int &,char *>::formatOptionsAtIndex<std::string const&,int &,char *>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_59;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        v14 = **a4;
        __p = v14;
        if (v14)
        {
          v14 = strlen(v14);
        }

        v34 = v14;
        v35 = v28;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= v14)
        {
          v15 = v14;
        }

        if (v29)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        health::FormatImplementation<std::string const&,int &,char *>(v32, a2, &v16[a3 + v9], a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = a2->__r_.__value_.__r.__words[0];
        }

        health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v28, &v17[a3 + v9], &__p);
        goto LABEL_49;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_59:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<int &,void>::TypeFormatter(&__p, a4[1], &v28);
    v18 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v18 = v34;
    }

    v19 = *(&v29 + 1);
    if (*(&v29 + 1) <= v18)
    {
      v19 = v18;
    }

    if (v29)
    {
      v18 = v19;
    }

    health::FormatImplementation<std::string const&,int &,char *>(v13, a2, &v18[a3 + v9], a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, a4[2], &v28);
    v21 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v21 = v34;
    }

    v22 = *(&v29 + 1);
    if (*(&v29 + 1) <= v21)
    {
      v22 = v21;
    }

    if (v29)
    {
      v21 = v22;
    }

    health::FormatImplementation<std::string const&,int &,char *>(v13, a2, &v21[a3 + v9], a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, &v20[a3 + v9], &__p);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_49:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,std::string const&,int &,char *>::formatOptionsAtIndex<std::string const&,int &,char *>(uint64_t a1)
{
  if (a1 && a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v2 = exception;
    if (a1 == 2)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v2, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void std::__shared_ptr_emplace<health::POSIXFile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<health::InMemoryMappedFileExtent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void sub_228FD059C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<health::InMemoryFile>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<health::InMemoryFile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

uint64_t HDCodableWorkoutConfigurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v43 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v43 & 0x7F) << v23;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_59:
          v38 = 32;
LABEL_68:
          *(a1 + v38) = v22;
          break;
        case 4:
          *(a1 + 48) |= 4u;
          v41 = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 24) = v41;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = *(a1 + 40);
          *(a1 + 40) = v14;

          break;
        default:
          goto LABEL_54;
      }

LABEL_71:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 48) |= 1u;
      while (1)
      {
        v45 = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v45 & 0x7F) << v31;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v33;
      }

LABEL_63:
      v38 = 8;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_54:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_71;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 48) |= 2u;
      while (1)
      {
        v44 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v44 & 0x7F) << v16;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_67;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_67:
      v38 = 16;
    }

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableRoutineLocationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228FD39F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_228FD55B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

uint64_t statistics::Interval::Interval(uint64_t this)
{
  *this = &unk_283BF1F08;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_283BF1F08;
  *(this + 24) = 0;
  return this;
}

void statistics::Interval::~Interval(statistics::Interval *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x22AAC8590);
}

double statistics::Interval::Interval(statistics::Interval *this, const statistics::Interval *a2)
{
  *this = &unk_283BF1F08;
  *(this + 6) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 1) = result;
  }

  return result;
}

uint64_t statistics::Interval::operator=(uint64_t a1, const statistics::Interval *a2)
{
  if (a1 != a2)
  {
    statistics::Interval::Interval(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double statistics::swap(statistics *this, statistics::Interval *a2, statistics::Interval *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double statistics::Interval::Interval(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283BF1F08;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_283BF1F08;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t statistics::Interval::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_283BF1F08;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t statistics::Interval::formatText(statistics::Interval *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "end", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "start", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t statistics::Interval::readFrom(statistics::Interval *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 24) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t statistics::Interval::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL statistics::Interval::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t statistics::Interval::hash_value(statistics::Interval *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

void sub_228FE1BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__166(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FE2A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__167(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FE2DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE2FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE3364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE36E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE3ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE3F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE4498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE4854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE6070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::DataStore(uint64_t a1, __int128 *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return health::DataStore::DataStore(a1, a2, v3, 0);
}

{
  v3[0] = 0;
  v3[1] = 0;
  return health::DataStore::DataStore(a1, a2, v3, 0);
}

uint64_t health::DataStore::DataStore(uint64_t a1, __int128 *a2, void *a3, int a4)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  health::BlockAccessFile::BlockAccessFile(a1, a2, v8, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *(a1 + 864) = 0u;
  v10[0] = &unk_283BF1FB8;
  v10[1] = a1;
  v10[3] = v10;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v10);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v10);
  if (!*(a1 + 864))
  {
    v9[0] = &unk_283BF2038;
    v9[1] = a1;
    v9[3] = v9;
    health::BlockAccessFile::performWriteTransactionWithLambda(a1, v9);
    std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_228FE74FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  health::TransactionalFile::~TransactionalFile(v4);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::performReadTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_283BF20C8;
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = v4;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v4);
  result = std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228FE75FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::checkIntegrity(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_283BF21C8;
  v7[1] = a2;
  v7[3] = v7;
  health::BlockAccessFile::checkIntegrity(a1, v7);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::~__value_func[abi:ne200100](v7);
  v6[0] = &unk_283BF2258;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v6;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v6);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v6);
  result = 1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228FE76E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](&a17);
  if (a2 == 1)
  {
    v24 = *__cxa_begin_catch(a1);
    a10 = *(*(v24 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
    a9 = (*(v24 + 16))();
    health::FormatString<char const*,char const*>(&__p, &a10, &a9);
    v25 = *(v21 + 24);
    if (v25)
    {
      (*(*v25 + 48))(v25, &__p);
      if (a16 < 0)
      {
        operator delete(__p);
      }

      __cxa_end_catch();
      JUMPOUT(0x228FE76B0);
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  _Unwind_Resume(a1);
}

void health::FormatString<char const*,char const*>(std::string *a1, const char **a2, const char **a3)
{
  v3[0] = a3;
  v3[1] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<char const*,char const*>("Integrity checking failed due to caught exception: {0} {1}", a1, 0, v3);
}

void sub_228FE7860(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DataStore::rebuildIndex(health::DataStore *this)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283BF22D8;
  v3[1] = this;
  v3[3] = v3;
  health::BlockAccessFile::performWriteTransactionWithLambda(this, v3);
  result = std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228FE7900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::enumerateObjectTreeForInspecting(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_283BF23E8;
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = v4;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v4);
  result = std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228FE7998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void health::DataStore::checkIntegrityForInspecting(uint64_t a1, uint64_t a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 327) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a1 + 304), *(a1 + 312));
  }

  else
  {
    v21 = *(a1 + 304);
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v5 = v19;
  std::string::basic_string[abi:ne200100](v19, size + 4);
  if (v20 < 0)
  {
    v5 = v19[0];
  }

  if (size)
  {
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v21;
    }

    else
    {
      v6 = v21.__r_.__value_.__r.__words[0];
    }

    memmove(v5, v6, size);
  }

  strcpy(v5 + size, "-wal");
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v21;
  }

  else
  {
    v7 = v21.__r_.__value_.__r.__words[0];
  }

  v8 = stat(v7, &v18);
  st_size = v18.st_size;
  if (v20 >= 0)
  {
    v10 = v19;
  }

  else
  {
    v10 = v19[0];
  }

  v11 = stat(v10, &v16);
  if (v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = st_size;
  }

  v13 = v16.st_size;
  if (v11)
  {
    v13 = 0;
  }

  v14 = v13 + v12;
  v17 = v14;
  if (v14 < 0)
  {
    v22[0] = __error();
    v22[1] = &v21;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<std::string &,int &>("HFD file [{0}] size cannot be determined (error {1}).", &__p, 0, v22);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a2 + 24), 0, 0, 0, &__p);
  }

  else
  {
    if (v14)
    {
      goto LABEL_31;
    }

    health::FormatString<std::string &>(&__p, "HFD file [{0}] is empty.", &v21);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a2 + 24), 0, 0, 0, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_31:
  v23[0] = &unk_283BF2468;
  v23[1] = a2;
  v23[3] = v23;
  health::BlockAccessFile::checkIntegrity(a1, v23);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::~__value_func[abi:ne200100](v23);
  v22[5] = 0;
  operator new();
}

void sub_228FE7C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 161) < 0)
  {
    operator delete(*(v15 - 184));
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

void health::FormatString<std::string &>(std::string *a1, std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<std::string &>(a2, a1, 0, &v3);
}

void sub_228FE7D70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStore::_checkBlockIntegrity(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v16 = a3;
  v17 = a4;
  if (a3 + a4 > a6)
  {
    health::FormatString<std::string &>(&__p, "HFD block [{0}] is not strictly within file bounds.", a5);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a7 + 24), 2, a3, a4, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (health::BlockAccessFile::isBlockUsingFreeSpace(a1, &v16, a2))
  {
    v13 = v16;
    v14 = v17;
    health::FormatString<std::string &>(&__p, "HFD block [{0}] is using space that is marked free.", a5);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a7 + 24), 3, v13, v14, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_228FE7E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *health::DataStore::ReadTransaction::ReadTransaction(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = a4;
  result[3] = a4;
  result[4] = a2;
  result[5] = a3;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = a4;
  result[3] = a4;
  result[4] = a2;
  result[5] = a3;
  return result;
}

void health::DataStore::ReadTransaction::_pointerForObject(health::DataStore::ReadTransaction *this@<X0>, ObjectIdentifier *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  v7 = this;
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v6, a2, 0, v4);
  if (v5 == 1)
  {
    *a3 = *(health::Optional<health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v4) + 16);
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t health::DataStore::ReadTransaction::retrieveBytesWithIdentifier(uint64_t **this, health::RawBuffer *a2, ObjectIdentifier *a3)
{
  health::DataStore::ReadTransaction::_pointerForObject(this, a3, v12);
  v5 = v13;
  if (v13 == 1)
  {
    v6 = this[3];
    v7 = health::Optional<health::BlockPointer>::get(v12);
    v8 = *v7;
    v9 = v7[1];
    health::RawBuffer::RawBuffer(v11, *a2, *(a2 + 1));
    health::BlockAccessFile::ReadTransaction::retrieveBlock(v6, v8, v9, v11);
  }

  return v5;
}

uint64_t health::DataStore::ReadTransaction::objectExistsForIdentifier(health::DataStore::ReadTransaction *this, ObjectIdentifier *a2)
{
  v5 = *(this + 2);
  v6 = this;
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v5, a2, 0, &v3);
  return v4;
}

void *health::DataStore::ReadTransaction::enumerateIdentifiersForObjectType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v9[0] = *(a1 + 32);
  v9[1] = v4;
  v9[2] = a1;
  v8[0] = a2;
  v8[1] = 0;
  v7[0] = a2;
  v7[1] = -1;
  v6 = a3;
  bzero(v10, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(a1 + 16), v9[0], v4, v10);
  return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateValuesInRange<health::DataStore::ReadTransaction::enumerateIdentifiersForObjectType(long long,std::function<void ()(health::DataStore::ObjectIdentifier)>)::$_0>(v9, 0, v10, &v6, v8, v7);
}

uint64_t health::DataStore::WriteTransaction::WriteTransaction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 24) = a4;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  *(a1 + 72) = a4;
  *(a1 + 80) = *a4;
  v5 = *(a4 + 16);
  v6 = *(a4 + 32);
  *(a1 + 128) = *(a4 + 48);
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  std::deque<health::BlockPointer>::deque(a1 + 136, (a4 + 56));
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 24) = a4;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  *(a1 + 72) = a4;
  *(a1 + 80) = *a4;
  v5 = *(a4 + 16);
  v6 = *(a4 + 32);
  *(a1 + 128) = *(a4 + 48);
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  std::deque<health::BlockPointer>::deque(a1 + 136, (a4 + 56));
  return a1;
}

uint64_t health::DataStore::WriteTransaction::storeBytesWithIdentifier(health::DataStore::WriteTransaction *this, const void *a2, unint64_t a3, __n128 *a4)
{
  v17 = a2;
  v18 = a3;
  v22 = *(this + 2);
  v23 = this + 48;
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v22, a4, 0, v20);
  if (v21)
  {
    v7 = *(health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v20) + 24);
    v8 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v20);
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v7 == v18)
    {
      return health::BlockAccessFile::WriteTransaction::updateObject<health::ByteRange<void const,unsigned long long>>(this + 80, v9, v10, &v17);
    }

    health::BlockAccessFile::WriteTransaction::freeBlock(this + 80, v9, v10);
    v13 = v18;
    v12 = (this + 80);
  }

  else
  {
    v12 = (this + 80);
    v13 = a3;
  }

  v14 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v12, v13);
  v16 = v15;
  health::BlockAccessFile::WriteTransaction::updateObject<health::ByteRange<void const,unsigned long long>>(this + 80, v14, v15, &v17);
  v19.n128_u64[0] = v14;
  v19.n128_u64[1] = v16;
  return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v22, a4, &v19);
}

void health::DataStore::WriteTransaction::removeObjectWithIdentifier(health::DataStore::WriteTransaction *this, ObjectIdentifier *a2)
{
  v7 = *(this + 2);
  v8 = this + 48;
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v7, a2, 0, v5);
  if (v6 == 1)
  {
    v4 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v5);
    health::BlockAccessFile::WriteTransaction::freeBlock(this + 80, *(v4 + 16), *(v4 + 24));
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::removeValueForKey(&v7, a2);
  }
}

BOOL health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::removeValueForKey(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  bzero(v6, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v4 + 24), *a1, *(a1 + 8), v6);
  return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_removeValueForKey(a1, 0, a2, a1, v6) != 2;
}

BOOL health::DataStore::WriteTransaction::renameObjectWithIdentifier(health::DataStore::WriteTransaction *this, ObjectIdentifier *a2, __n128 *a3)
{
  v14 = *(this + 2);
  v15 = this + 48;
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v14, a2, 0, v12);
  if ((v13 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Existing object not found when attempting to rename.");
    v8 = off_278612E80;
    v9 = MEMORY[0x277D825F8];
    goto LABEL_6;
  }

  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v14, a3, 0, &v10);
  if (v11 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to rename an object would result in a collision.");
    v8 = MEMORY[0x277D82750];
    v9 = MEMORY[0x277D825D8];
LABEL_6:
    __cxa_throw(exception, v8, v9);
  }

  v5 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v12);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v14, a3, v5 + 1);
  return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::removeValueForKey(&v14, a2);
}

void *health::operator<<(void *a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{", 1);
  v4 = MEMORY[0x22AAC83E0](v3, *a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v6 = MEMORY[0x22AAC83F0](v5, a2[1]);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "}", 1);
}

uint64_t std::__function::__func<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BF1FB8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = 0x348424146;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v5 = 68;
  v6 = 68;
  health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader>(*a2, &v4, 0);
  result = *&v8;
  *(v2 + 864) = v8;
  return result;
}

uint64_t std::__function::__func<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BF2038;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  bzero(v8, 0x223uLL);
  v4 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(a2, 547);
  v6 = v5;
  health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(a2, v4, v5, v8);
  *(v3 + 864) = v4;
  *(v3 + 872) = v6;
  *(*(a2 + 24) + 40) = *(v3 + 864);
  health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader &>(*(a2 + 16), *(a2 + 24), 0);
  return 1;
}

uint64_t std::__function::__func<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::DataStore::DataStore(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::DataStore::performReadTransactionWithLambda(std::function<void ()(health::DataStore::ReadTransaction const&)>)::$_0,std::allocator<health::DataStore::performReadTransactionWithLambda(std::function<void ()(health::DataStore::ReadTransaction const&)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BF20C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::DataStore::performReadTransactionWithLambda(std::function<void ()(health::DataStore::ReadTransaction const&)>)::$_0,std::allocator<health::DataStore::performReadTransactionWithLambda(std::function<void ()(health::DataStore::ReadTransaction const&)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = a2;
  v5[3] = a2;
  v2 = *(a1 + 16);
  v6 = *(*(a1 + 8) + 864);
  v3 = *(v2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, v5);
}

uint64_t std::__function::__func<health::DataStore::performReadTransactionWithLambda(std::function<void ()(health::DataStore::ReadTransaction const&)>)::$_0,std::allocator<health::DataStore::performReadTransactionWithLambda(std::function<void ()(health::DataStore::ReadTransaction const&)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::DataStore::performWriteTransactionWithLambda(std::function<BOOL ()(health::DataStore::WriteTransaction &)>)::$_0,std::allocator<health::DataStore::performWriteTransactionWithLambda(std::function<BOOL ()(health::DataStore::WriteTransaction &)>)::$_0>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BF2148;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::DataStore::performWriteTransactionWithLambda(std::function<BOOL ()(health::DataStore::WriteTransaction &)>)::$_0,std::allocator<health::DataStore::performWriteTransactionWithLambda(std::function<BOOL ()(health::DataStore::WriteTransaction &)>)::$_0>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::operator()(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = a2;
  v8[3] = a2;
  v9 = *(v3 + 864);
  v10 = 0;
  v11 = 0;
  v12 = a2;
  v13 = a2;
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  v16 = a2[2];
  v17 = *(a2 + 48);
  std::deque<health::BlockPointer>::deque(v18, a2 + 7);
  v5 = *(*(a1 + 16) + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v5 + 48))(v5, v8);
  std::deque<health::BlockPointer>::~deque[abi:ne200100](v18);
  return v6;
}

uint64_t std::__function::__func<health::DataStore::performWriteTransactionWithLambda(std::function<BOOL ()(health::DataStore::WriteTransaction &)>)::$_0,std::allocator<health::DataStore::performWriteTransactionWithLambda(std::function<BOOL ()(health::DataStore::WriteTransaction &)>)::$_0>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_0,std::allocator<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_0>,BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BF21C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_0,std::allocator<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_0>,BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::operator()(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v19 = *a4;
  v20 = v8;
  std::string::basic_string[abi:ne200100]<0>(&v16, "Unknown");
  if (v7 == 1)
  {
    if (v18 < 0)
    {
      v17 = 21;
      v10 = v16;
    }

    else
    {
      v18 = 21;
      v10 = &v16;
    }

    qmemcpy(v10, "Free Space Corruption", 21);
    v11 = v10 + 21;
  }

  else
  {
    if (v7)
    {
      goto LABEL_12;
    }

    if (v18 < 0)
    {
      v17 = 14;
      v9 = v16;
    }

    else
    {
      v18 = 14;
      v9 = &v16;
    }

    qmemcpy(v9, "Corrupt Header", 14);
    v11 = v9 + 14;
  }

  *v11 = 0;
LABEL_12:
  v12 = *(a1 + 8);
  v21[0] = a5;
  v21[1] = &v19;
  v21[2] = &v20;
  v21[3] = &v16;
  memset(&__p, 0, sizeof(__p));
  health::FormatImplementation<std::string &,long long &,unsigned long &,std::string const&>("{0}: [{1}, {2}] {3}", &__p, 0, v21);
  v13 = *(v12 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(v13, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v16);
  }

  return 1;
}

void sub_228FE8D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t std::__function::__func<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_0,std::allocator<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_0>,BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<std::string &,long long &,unsigned long &,std::string const&>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v32 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v32 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v32 = &v11->__r_.__value_.__s.__data_[2];
    v23 = v11->__r_.__value_.__s.__data_[2];
    if ((v23 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v24 = 0;
      v25 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v32 = v25;
        v24 = (v23 & 0xF) + 10 * v24;
        v26 = *v25++;
        LOBYTE(v23) = v26;
      }

      while ((v26 - 58) >= 0xFFFFFFF6);
      v32 = v25;
      if (*(v25 - 1) == 125)
      {
        health::FormatterParameters<0ul,std::string &,long long &,unsigned long &,std::string const&>::formatOptionsAtIndex<std::string &,long long &,unsigned long &,std::string const&>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_68;
  }

  health::FormatOptions::FormatOptions(v28, &v32);
  v13 = v32;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      health::TypeFormatter<unsigned long &,void>::TypeFormatter(&__p, *(a4 + 8), v28);
      v21 = v35;
      if ((v35 & 0x80u) != 0)
      {
        v21 = v34;
      }

      v22 = v31;
      if (v31 <= v21)
      {
        v22 = v21;
      }

      if (v30)
      {
        v21 = v22;
      }

      health::FormatImplementation<std::string &,long long &,unsigned long &,std::string const&>(v13, a2, v21 + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      if (v29 != 3)
      {
        goto LABEL_69;
      }

      health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *a4, v28);
      v17 = v35;
      if ((v35 & 0x80u) != 0)
      {
        v17 = v34;
      }

      v18 = v31;
      if (v31 <= v17)
      {
        v18 = v17;
      }

      if (v30)
      {
        v17 = v18;
      }

      health::FormatImplementation<std::string &,long long &,unsigned long &,std::string const&>(v13, a2, v17 + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }
    }
  }

  else
  {
    if (v29)
    {
      if (v29 == 1)
      {
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), v28);
        v14 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v14 = v34;
        }

        v15 = v31;
        if (v31 <= v14)
        {
          v15 = v14;
        }

        if (v30)
        {
          v14 = v15;
        }

        health::FormatImplementation<std::string &,long long &,unsigned long &,std::string const&>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_56;
      }

LABEL_69:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_68:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 24), v28);
    v19 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v19 = v34;
    }

    v20 = v31;
    if (v31 <= v19)
    {
      v20 = v19;
    }

    if (v30)
    {
      v19 = v20;
    }

    health::FormatImplementation<std::string &,long long &,unsigned long &,std::string const&>(v13, a2, v19 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }
  }

LABEL_56:
  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v28, &v16[a3 + v9], &__p);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,std::string &,long long &,unsigned long &,std::string const&>::formatOptionsAtIndex<std::string &,long long &,unsigned long &,std::string const&>(uint64_t a1)
{
  if (!a1 || a1 == 1 || a1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    v3 = __cxa_allocate_exception(0x10uLL);
    exception = v3;
    if (a1 == 3)
    {
      std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
    }
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

double health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (*(a3 + 544))
  {
    v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a3, a4);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>(a1, (a2 + 1), a3, v12, a4, a5, v15);
    if ((BYTE8(v16) & 1) != 0 || *(a3 + 544) - 1 <= v12)
    {
      v14 = v15[1];
      *a6 = v15[0];
      a6[1] = v14;
      result = *&v16;
      a6[2] = v16;
    }

    else
    {
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>(a1, (a2 + 1), a3, (v12 + 1), a4, a5, a6);
    }
  }

  else
  {
    result = 0.0;
    *(a6 + 25) = 0u;
    *a6 = 0u;
    a6[1] = 0u;
  }

  return result;
}

double health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a3 + 544) <= a4)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v30, "_valueForKeyInChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v28);
    health::_HDAssertImplementation<health::btree_access_error>(v31, v30, v29, 158, &v28);
  }

  if (*(a3 + 546) != 1)
  {
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(v24, a1, a2, a3, a4);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>(a1, a2, v24, a5, a6);
    return *&v16;
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = *(a1 + 16);
  bzero(v24, 0x222uLL);
  v26 = 0u;
  v27 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v14 + 16), v12, v13, v24);
  if (!v25)
  {
    goto LABEL_19;
  }

  v15 = health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::indexForKey(v24, a5);
  v17 = HIDWORD(v15);
  if (HIDWORD(v15))
  {
    if (a6 == 2)
    {
      if (v17 == 2)
      {
        v21 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v24, v15);
        v16 = v21[1];
        *a7 = *v21;
        *(a7 + 16) = v16;
        *(a7 + 32) = 2;
        goto LABEL_6;
      }
    }

    else
    {
      if (a6 == 1)
      {
        if (v17 == 1)
        {
          v20 = v15;
        }

        else
        {
          if (v15 >= v25 - 1)
          {
            goto LABEL_19;
          }

          v20 = v15 + 1;
        }

        v22 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v24, v20);
        v16 = v22[1];
        *a7 = *v22;
        *(a7 + 16) = v16;
        *(a7 + 32) = 1;
        goto LABEL_6;
      }

      if (a6)
      {
        return *&v16;
      }
    }

LABEL_19:
    *&v16 = 0;
    *(a7 + 25) = 0u;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return *&v16;
  }

  v18 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v24, v15);
  v16 = v18[1];
  *a7 = *v18;
  *(a7 + 16) = v16;
  *(a7 + 32) = 0;
LABEL_6:
  *(a7 + 40) = 1;
  return *&v16;
}

void sub_228FE95FC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(exception_object);
}

void health::_HDAssertImplementation<health::btree_access_error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  memset(v38, 0, sizeof(v38));
  v10 = backtrace(v38, 20);
  v11 = backtrace_symbols(v38, v10);
  std::ostringstream::basic_ostringstream[abi:ne200100](v37);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Critical Error: ", 16);
  v13 = *(a5 + 23);
  if (v13 >= 0)
  {
    v14 = a5;
  }

  else
  {
    v14 = *a5;
  }

  if (v13 >= 0)
  {
    v15 = *(a5 + 23);
  }

  else
  {
    v15 = *(a5 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Failed assertion '", 18);
  v18 = *(a1 + 23);
  if (v18 >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 23);
  }

  else
  {
    v20 = *(a1 + 8);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "' in '", 6);
  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = *(a2 + 8);
  }

  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "' at ", 5);
  v28 = *(a3 + 23);
  if (v28 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v28 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ":", 1);
  v33 = MEMORY[0x22AAC83A0](v32, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "\n", 1);
  if (!v10)
  {
    free(v11);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v37, &v36);
    std::runtime_error::runtime_error(exception, &v36);
    exception->__vftable = &unk_283BE6650;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v11);
  health::HDDemangleBacktraceLine();
}

void sub_228FE98D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void *health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(void *a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (*(a4 + 544) <= a5)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v30, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v28);
    health::_HDAssertImplementation<health::btree_access_error>(v31, v30, v29, 137, &v28);
  }

  if (a3 >= 64)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v26, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &v24);
    health::_HDAssertImplementation<health::btree_access_error>(v27, v26, v25, 138, &v24);
  }

  v9 = a5;
  v10 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = *(a2 + 16);
  bzero(a1, 0x223uLL);
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v13 + 16), v11, v12, a1);
  if (*(a1 + 272))
  {
    result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v9);
    if (*a1 <= *result && (*a1 < *result || a1[1] < result[1]))
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v22, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v20);
      health::_HDAssertImplementation<health::btree_access_error>(v23, v22, v21, 144, &v20);
    }

    if (*(a4 + 544) - 1 > a5)
    {
      v15 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, *(a1 + 272) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5 + 1);
      if (*v15 >= *result && (*v15 > *result || v15[1] >= result[1]))
      {
        std::string::basic_string[abi:ne200100]<0>(v19, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v18, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v16);
        health::_HDAssertImplementation<health::btree_access_error>(v19, v18, v17, 146, &v16);
      }
    }
  }

  return result;
}

void sub_228FE9CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1,std::allocator<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1>,void ()(health::BlockAccessFile::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BF2258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1,std::allocator<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1>,void ()(health::BlockAccessFile::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v13[1] = 0;
  v14 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(v5 + 872);
  v10 = *(v5 + 864);
  v11 = v6;
  v12 = v13;
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v16, v4);
  bzero(v15, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(v14, v10, v6, v15);
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::verifyInteriorNode(v15);
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v17, v16);
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_checkInteriorNodeIntegrity(&v10, 0, v15, v17);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v16);
  v7 = *(a1 + 16);
  v17[0] = &v10;
  v17[1] = v7;
  v17[2] = a2;
  v8 = v12;
  bzero(v15, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(v8[2], v10, v11, v15);
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(&v10, 0, v15, v17);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_228FEA02C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v1 - 88);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1,std::allocator<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1>,void ()(health::BlockAccessFile::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::verifyInteriorNode(uint64_t result)
{
  v1 = *(result + 544);
  if (v1 >= 0x12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Node contains too many values!");
    goto LABEL_13;
  }

  if (v1 >= 2)
  {
    v2 = result;
    v3 = 1;
    while (1)
    {
      v5 = *result;
      v4 = *(result + 8);
      v6 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v2, v3);
      if (*v6 < v5)
      {
        break;
      }

      if (*v6 <= v5 && v6[1] <= v4)
      {
        break;
      }

      result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v2, v3++);
      if (v3 >= *(v2 + 544))
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Node values are out of order!");
LABEL_13:
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_checkInteriorNodeIntegrity(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  if (*(a3 + 544))
  {
    v7 = result;
    v8 = 0;
    do
    {
      result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v8);
      v9 = *(v7 + 16);
      if (*(result + 16) != *v9 || *(result + 24) != *(v9 + 8))
      {
        if (*(a3 + 546) == 1)
        {
          v10 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v24);
          bzero(v20, 0x222uLL);
          v22 = 0u;
          v23 = 0u;
          health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v9 + 16), *(v10 + 16), *(v10 + 24), v20);
          if (v21 >= 0x12u)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Node contains too many values!");
            goto LABEL_22;
          }

          if (v21 >= 2u)
          {
            v11 = v20;
            v12 = 1;
            while (1)
            {
              v14 = *v11;
              v13 = v11[1];
              v15 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v20, v12);
              if (*v15 < v14)
              {
                break;
              }

              if (*v15 <= v14 && v15[1] <= v13)
              {
                break;
              }

              v11 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v20, v12++);
              if (v12 >= v21)
              {
                goto LABEL_16;
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Node values are out of order!");
LABEL_22:
            __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
          }

LABEL_16:
          v17 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v26, a4);
        }

        else
        {
          health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(v20, v7, a2, a3, v24);
          health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::verifyInteriorNode(v20);
          std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v25, a4);
          health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_checkInteriorNodeIntegrity(v7, (a2 + 1), v20, v25);
          v17 = v25;
        }

        result = std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v17);
      }

      v8 = ++v24;
    }

    while (*(a3 + 544) > v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228FEA60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_228FEA634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_228FEA65C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void health::FormatString<unsigned short &,char const*>(std::string *a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a4;
  v4[1] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned short &,char const*>(a2, a1, 0, v4);
}

void sub_228FEA6D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<unsigned short &,char const*>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v48 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v48 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v48 = &v11->__r_.__value_.__s.__data_[2];
    v39 = v11->__r_.__value_.__s.__data_[2];
    if ((v39 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v40 = 0;
      v41 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v48 = v41;
        v40 = (v39 & 0xF) + 10 * v40;
        v42 = *v41++;
        LOBYTE(v39) = v42;
      }

      while ((v42 - 58) >= 0xFFFFFFF6);
      v48 = v41;
      if (*(v41 - 1) == 125)
      {
        health::FormatterParameters<0ul,unsigned short &,char const*>::formatOptionsAtIndex<unsigned short &,char const*>(v40);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

LABEL_97:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::FormatOptions::FormatOptions(&v44, &v48);
  v13 = v48;
  if (!*(&v44 + 1))
  {
    v18 = *(a4 + 8);
    v49[1] = 0;
    v50 = 0;
    v49[0] = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v53);
    v19 = v53;
    if (v45 == 1)
    {
      *(v55 + *(v53 - 3) + 8) = *(&v45 + 1);
    }

    if (v46 == 1)
    {
      *(v55 + *(v19 - 24)) = *(&v46 + 1);
    }

    v20 = (&v53 + *(v19 - 24));
    v21 = SLOBYTE(__c[1]);
    if (v20[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v20);
      v22 = std::locale::use_facet(v51, MEMORY[0x277D82680]);
      (v22->__vftable[2].~facet_0)(v22, 32);
      std::locale::~locale(v51);
    }

    v20[1].__fmtflags_ = v21;
    MEMORY[0x22AAC83D0](&v53, *v18);
    std::ostringstream::str[abi:ne200100](&v53, v51);
    *v49 = *&v51[0].__locale_;
    v50 = v52;
    v53 = *MEMORY[0x277D82828];
    *(&v53 + *(v53 - 3)) = *(MEMORY[0x277D82828] + 24);
    v54 = MEMORY[0x277D82878] + 16;
    if (v58 < 0)
    {
      operator delete(__p);
    }

    v54 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v55);
    std::ostream::~ostream();
    MEMORY[0x22AAC8550](&v59);
    v23 = SHIBYTE(v50);
    if (v50 >= 0)
    {
      v24 = HIBYTE(v50);
    }

    else
    {
      v24 = v49[1];
    }

    v25 = *(&v45 + 1);
    if (*(&v45 + 1) <= v24)
    {
      v25 = v24;
    }

    if (v45)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    health::FormatImplementation<unsigned short &,char const*>(v13, a2, v26 + a3 - v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = a2->__r_.__value_.__r.__words[0];
    }

    v28 = v27 + a3 - v9;
    if (v45 == 1)
    {
      v29 = *(&v45 + 1) - v24;
      if (*(&v45 + 1) > v24)
      {
        if (v44)
        {
          if (v44 != 1)
          {
            if (v44 != 2 || (memset(v28, LOBYTE(__c[1]), *(&v45 + 1) - v24), !v24))
            {
LABEL_63:
              if ((v23 & 0x80000000) == 0)
              {
                goto LABEL_65;
              }

LABEL_64:
              operator delete(v49[0]);
              goto LABEL_65;
            }

            if (v23 >= 0)
            {
              v30 = v49;
            }

            else
            {
              v30 = v49[0];
            }

            v31 = &v28[v29];
LABEL_62:
            memmove(v31, v30, v24);
            goto LABEL_63;
          }

          if (v29 >= 2)
          {
            if (v29 >> 1 <= 1)
            {
              v32 = 1;
            }

            else
            {
              v32 = v29 >> 1;
            }

            memset(v28, LOBYTE(__c[1]), v32);
            v28 += v32;
          }

          v33 = v29 - (v29 >> 1);
          if (v24)
          {
            if (v23 >= 0)
            {
              v34 = v49;
            }

            else
            {
              v34 = v49[0];
            }

            memmove(v28, v34, v24);
          }

          if (v33 <= 1)
          {
            v35 = 1;
          }

          else
          {
            v35 = v33;
          }

          v36 = LOBYTE(__c[1]);
          v37 = &v28[v24];
        }

        else
        {
          if (v24)
          {
            if (v23 >= 0)
            {
              v38 = v49;
            }

            else
            {
              v38 = v49[0];
            }

            memmove(v28, v38, v24);
          }

          v36 = LOBYTE(__c[1]);
          v37 = &v28[v24];
          v35 = v29;
        }

        memset(v37, v36, v35);
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    if (!v24)
    {
      goto LABEL_63;
    }

    if (v23 >= 0)
    {
      v30 = v49;
    }

    else
    {
      v30 = v49[0];
    }

    v31 = v27 + a3 - v9;
    goto LABEL_62;
  }

  if (*(&v44 + 1) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    goto LABEL_97;
  }

  v14 = **a4;
  v53 = v14;
  if (v14)
  {
    v14 = strlen(v14);
  }

  v55[0] = v44;
  v55[1] = v45;
  v55[2] = v46;
  v54 = v14;
  v56 = *__c;
  v15 = *(&v45 + 1);
  if (*(&v45 + 1) <= v14)
  {
    v15 = v14;
  }

  if (v45)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  health::FormatImplementation<unsigned short &,char const*>(v48, a2, &v16[a3 - v9], a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v44, &v17[a3 - v9], &v53);
LABEL_65:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,unsigned short &,char const*>::formatOptionsAtIndex<unsigned short &,char const*>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 544))
  {
    if (*(a3 + 546) == 1)
    {
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
      v8 = *(a1 + 16);
      bzero(v25, 0x222uLL);
      v27 = 0u;
      v28 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v8 + 16), v6, v7, v25);
      if (v26)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v14 = *v12;
          if (v9 && v14 <= v11 && (v14 < v11 || v12[1] <= v10))
          {
            std::string::basic_string[abi:ne200100]<0>(v30, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v36, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v35, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v34);
            health::_HDAssertImplementation<health::btree_access_error>(v30, v36, v35, 382, &v34);
          }

          v10 = v12[1];
          health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(int,health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17> const&,health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1} const&,health::bplustree::EnumerationDirection)const::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer const&)#1}::operator()(a4, v12, *(v13 + 16), *(v13 + 24));
          ++v9;
          v11 = v14;
        }

        while (v9 < v26);
      }

      else
      {
        v14 = 0;
        v10 = 0;
      }

      v18 = *(&v28 + 1);
      for (i = v28; ; i = v33)
      {
        v19 = *(a1 + 16);
        if (i == *v19 && v18 == *(v19 + 8))
        {
          break;
        }

        bzero(v30, 0x222uLL);
        v32 = 0u;
        v33 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v19 + 16), i, v18, v30);
        if (!v31)
        {
          std::string::basic_string[abi:ne200100]<0>(v36, "leaf.valueCount > 0");
          std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Empty leaf encountered during enumeration.", &v29);
          health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 392, &v29);
        }

        for (j = 0; j < v31; ++j)
        {
          v21 = v14;
          v22 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v23 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v14 = *v22;
          if (*v22 <= v21)
          {
            v24 = *v22 >= v21 && v22[1] > v10;
            v10 = v22[1];
            if (!v24)
            {
              std::string::basic_string[abi:ne200100]<0>(v36, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v29);
              health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 396, &v29);
            }
          }

          else
          {
            v10 = v22[1];
          }

          health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(int,health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17> const&,health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1} const&,health::bplustree::EnumerationDirection)const::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer const&)#1}::operator()(a4, v22, *(v23 + 16), *(v23 + 24));
        }

        v18 = *(&v33 + 1);
      }
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(v30, a1, a2, a3, 0);
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(a1, (a2 + 1), v30, a4);
    }
  }
}

void sub_228FEB17C(_Unwind_Exception *a1)
{
  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  _Unwind_Resume(a1);
}

void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(int,health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17> const&,health::DataStore::checkIntegrity(std::function<void ()(std::string const&)>)::$_1::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1} const&,health::bplustree::EnumerationDirection)const::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer const&)#1}::operator()(uint64_t *a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v23 = a3;
  v24 = a4;
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(*a1, a2, 0, &v20);
  if (v22 != 1)
  {
    v10 = a1[1];
    v19.__r_.__value_.__r.__words[0] = &v23;
    v19.__r_.__value_.__l.__size_ = a2;
    memset(&v25, 0, sizeof(v25));
    health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &>("Value retrieval failed for {0}: enumerated value {1} but lookup failed.", &v25, 0, &v19);
    v11 = *(v10 + 24);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v11 + 48))(v11, &v25);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    v9 = v25.__r_.__value_.__r.__words[0];
    goto LABEL_10;
  }

  health::Optional<health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::get(&v20);
  if (v23 != v21[0] || (v6 = v24, v24 != v21[1]))
  {
    v7 = a1[1];
    health::Optional<health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::get(&v20);
    v25.__r_.__value_.__r.__words[0] = v21;
    v25.__r_.__value_.__l.__size_ = &v23;
    v25.__r_.__value_.__r.__words[2] = a2;
    memset(&v19, 0, sizeof(v19));
    health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>("Value retrieval failed for {0}: enumerated value {1} but lookup value is {2}.", &v19, 0, &v25);
    v8 = *(v7 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8, &v19);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    v9 = v19.__r_.__value_.__r.__words[0];
LABEL_10:
    operator delete(v9);
LABEL_11:
    v6 = v24;
  }

  if (v6)
  {
    if (v6 >> 20 <= 4)
    {
      std::vector<unsigned char>::vector[abi:ne200100](&v25, v6);
      health::RawBuffer::RawBuffer(&v19, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_ - v25.__r_.__value_.__r.__words[0]);
      v12 = a1[2];
      v13 = v23;
      v14 = v24;
      health::RawBuffer::RawBuffer(v18, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
      health::BlockAccessFile::ReadTransaction::retrieveBlock(v12, v13, v14, v18);
      v15 = v25.__r_.__value_.__r.__words[0];
      if (v25.__r_.__value_.__r.__words[0])
      {
        v25.__r_.__value_.__l.__size_ = v25.__r_.__value_.__r.__words[0];
LABEL_19:
        operator delete(v15);
      }
    }
  }

  else
  {
    v16 = a1[1];
    health::FormatString<health::DataStore::ObjectIdentifier const&>("Target block for {0} has 0 length", a2, &v25);
    v17 = *(v16 + 24);
    if (!v17)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v17 + 48))(v17, &v25);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      v15 = v25.__r_.__value_.__r.__words[0];
      goto LABEL_19;
    }
  }
}

void sub_228FEB48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::Optional<health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::get(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to get the value from an invalid optional.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
{
  v30 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v30 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v30 = &v11->__r_.__value_.__s.__data_[2];
    v21 = v11->__r_.__value_.__s.__data_[2];
    if ((v21 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v22 = 0;
      v23 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v30 = v23;
        v22 = (v21 & 0xF) + 10 * v22;
        v24 = *v23++;
        LOBYTE(v21) = v24;
      }

      while ((v24 - 58) >= 0xFFFFFFF6);
      v30 = v23;
      if (*(v23 - 1) == 125)
      {
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>(v22);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_57;
  }

  health::FormatOptions::FormatOptions(v26, &v30);
  v13 = v30;
  if (v27)
  {
    if (v27 != 1)
    {
      if (v27 == 2)
      {
        health::FormatString<unsigned long long const&,unsigned long long const&>("({0}: {1})", *a4, *a4 + 1, &__p);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v15 = v29;
        if (v29 <= size)
        {
          v15 = size;
        }

        if (v28)
        {
          size = v15;
        }

        health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>(v13, a2, size + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_45;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_57:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::FormatString<unsigned long long const&,unsigned long long const&>("({0}: {1})", a4[1], a4[1] + 1, &__p);
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    v18 = v29;
    if (v29 <= v17)
    {
      v18 = v17;
    }

    if (v28)
    {
      v17 = v18;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>(v13, a2, v17 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    health::TypeFormatter<health::DataStore::ObjectIdentifier const&,void>::TypeFormatter(&__p, a4[2], v26);
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = v29;
    if (v29 <= v19)
    {
      v20 = v19;
    }

    if (v28)
    {
      v19 = v20;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>(v13, a2, v19 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }
  }

LABEL_45:
  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v26, &v16[a3 + v9], &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&,health::BlockPointer &,health::BlockPointer &>(uint64_t a1)
{
  if (a1 && a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v2 = exception;
    if (a1 == 2)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v2, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
{
  v28 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v28 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v28 = &v11->__r_.__value_.__s.__data_[2];
    v19 = v11->__r_.__value_.__s.__data_[2];
    if ((v19 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v20 = 0;
      v21 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v28 = v21;
        v20 = (v19 & 0xF) + 10 * v20;
        v22 = *v21++;
        LOBYTE(v19) = v22;
      }

      while ((v22 - 58) >= 0xFFFFFFF6);
      v28 = v21;
      if (*(v21 - 1) == 125)
      {
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&,health::BlockPointer &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&,health::BlockPointer &>(v20);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_47;
  }

  health::FormatOptions::FormatOptions(v24, &v28);
  v13 = v28;
  if (v25)
  {
    if (v25 == 1)
    {
      health::FormatString<unsigned long long const&,unsigned long long const&>("({0}: {1})", *a4, *a4 + 1, &__p);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v15 = v27;
      if (v27 <= size)
      {
        v15 = size;
      }

      if (v26)
      {
        size = v15;
      }

      health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &>(v13, a2, size + a3 - v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_35;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_47:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::TypeFormatter<health::DataStore::ObjectIdentifier const&,void>::TypeFormatter(&__p, a4[1], v24);
  v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v27;
  if (v27 <= v17)
  {
    v18 = v17;
  }

  if (v26)
  {
    v17 = v18;
  }

  health::FormatImplementation<health::DataStore::ObjectIdentifier const&,health::BlockPointer &>(v13, a2, v17 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = a2->__r_.__value_.__r.__words[0];
  }

LABEL_35:
  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v24, &v16[a3 - v9], &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&,health::BlockPointer &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&,health::BlockPointer &>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<char const*,char const*>(std::string *a1, std::string *a2, std::string::size_type a3, const char ***a4)
{
  v27 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v27 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v27 = &v11->__r_.__value_.__s.__data_[2];
    v18 = v11->__r_.__value_.__s.__data_[2];
    if ((v18 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v19 = 0;
      v20 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v27 = v20;
        v19 = (v18 & 0xF) + 10 * v19;
        v21 = *v20++;
        LOBYTE(v18) = v21;
      }

      while ((v21 - 58) >= 0xFFFFFFF6);
      v27 = v20;
      if (*(v20 - 1) == 125)
      {
        health::FormatterParameters<0ul,char const*,char const*>::formatOptionsAtIndex<char const*,char const*>(v19);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_39;
  }

  health::FormatOptions::FormatOptions(&v23, &v27);
  if (*(&v23 + 1))
  {
    if (*(&v23 + 1) == 1)
    {
      v13 = *a4;
      goto LABEL_19;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_39:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = a4[1];
LABEL_19:
  v14 = *v13;
  v28[0] = v14;
  if (v14)
  {
    v14 = strlen(v14);
  }

  v28[1] = v14;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v15 = *(&v24 + 1);
  if (*(&v24 + 1) <= v14)
  {
    v15 = v14;
  }

  if (v24)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  health::FormatImplementation<char const*,char const*>(v27, a2, &v16[a3 - v9], a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v23, &v17[a3 - v9], v28);
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,char const*,char const*>::formatOptionsAtIndex<char const*,char const*>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t std::__function::__func<health::DataStore::rebuildIndex(void)::$_0,std::allocator<health::DataStore::rebuildIndex(void)::$_0>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BF22D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::DataStore::rebuildIndex(void)::$_0,std::allocator<health::DataStore::rebuildIndex(void)::$_0>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v18[1] = 0;
  v18[0] = 0;
  v19 = a2;
  v20 = a2;
  v5 = *(v3 + 872);
  v17[0] = *(v3 + 864);
  v4 = v17[0];
  v17[1] = v5;
  v17[2] = v18;
  bzero(v16, 0x223uLL);
  v6 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(a2, 547);
  v8 = v7;
  health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(a2, v6, v7, v16);
  v15[0] = v6;
  v15[1] = v8;
  v15[2] = v18;
  v22[0] = v15;
  bzero(v21, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(v19, v4, v5, v21);
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::rebuildIndex(void)::$_0::operator() const(health::BlockAccessFile::WriteTransaction &)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(v17, 0, v21, v22);
  v14 = 1;
  v13 = *(v3 + 864);
  *(v3 + 864) = v6;
  *(v3 + 872) = v8;
  v22[0] = &unk_283BF2348;
  v22[1] = &v14;
  v22[3] = v22;
  health::DataStore::checkIntegrity(v3, v22);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v22);
  v9 = v14;
  if (v14 == 1)
  {
    v10 = *(a2 + 24);
    *(v10 + 40) = v6;
    *(v10 + 48) = v8;
    health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader &>(*(a2 + 16), *(a2 + 24), 0);
  }

  else
  {
    *(v3 + 864) = v13;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t std::__function::__func<health::DataStore::rebuildIndex(void)::$_0,std::allocator<health::DataStore::rebuildIndex(void)::$_0>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::rebuildIndex(void)::$_0::operator() const(health::BlockAccessFile::WriteTransaction &)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 544))
  {
    v5 = result;
    if (*(a3 + 546) == 1)
    {
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
      v8 = *(result + 16);
      bzero(v25, 0x222uLL);
      v27 = 0u;
      v28 = 0u;
      result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v8 + 16), v6, v7, v25);
      if (v26)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v14 = v12->n128_u64[0];
          if (v9 && v14 <= v11 && (v14 < v11 || v12->n128_u64[1] <= v10))
          {
            std::string::basic_string[abi:ne200100]<0>(v30, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v36, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v35, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v34);
            health::_HDAssertImplementation<health::btree_access_error>(v30, v36, v35, 382, &v34);
          }

          v10 = v12->n128_u64[1];
          v30[0] = v13[1];
          result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(*a4, v12, v30);
          ++v9;
          v11 = v14;
        }

        while (v9 < v26);
      }

      else
      {
        v14 = 0;
        v10 = 0;
      }

      v18 = *(&v28 + 1);
      for (i = v28; ; i = v33)
      {
        v19 = *(v5 + 16);
        if (i == *v19 && v18 == *(v19 + 8))
        {
          break;
        }

        bzero(v30, 0x222uLL);
        v32 = 0u;
        v33 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v19 + 16), i, v18, v30);
        if (!v31)
        {
          std::string::basic_string[abi:ne200100]<0>(v36, "leaf.valueCount > 0");
          std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Empty leaf encountered during enumeration.", &v29);
          health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 392, &v29);
        }

        for (j = 0; j < v31; ++j)
        {
          v21 = v14;
          v22 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v23 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v14 = v22->n128_u64[0];
          if (v22->n128_u64[0] <= v21)
          {
            v24 = v22->n128_u64[0] >= v21 && v22->n128_u64[1] > v10;
            v10 = v22->n128_u64[1];
            if (!v24)
            {
              std::string::basic_string[abi:ne200100]<0>(v36, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v29);
              health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 396, &v29);
            }
          }

          else
          {
            v10 = v22->n128_u64[1];
          }

          v36[0] = v23[1];
          result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(*a4, v22, v36);
        }

        v18 = *(&v33 + 1);
      }
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(v30, result, a2, a3, 0);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::rebuildIndex(void)::$_0::operator() const(health::BlockAccessFile::WriteTransaction &)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(v5, (a2 + 1), v30, a4);
    }
  }

  return result;
}

void sub_228FEC810(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStore::rebuildIndex(void)::$_0::operator() const(health::BlockAccessFile::WriteTransaction &)::{lambda(std::string const&)#1},std::allocator<health::DataStore::rebuildIndex(void)::$_0::operator() const(health::BlockAccessFile::WriteTransaction &)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BF2348;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::DataStore::rebuildIndex(void)::$_0::operator() const(health::BlockAccessFile::WriteTransaction &)::{lambda(std::string const&)#1},std::allocator<health::DataStore::rebuildIndex(void)::$_0::operator() const(health::BlockAccessFile::WriteTransaction &)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0,std::allocator<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BF23E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0,std::allocator<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v9[2] = a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v3 + 872);
  v8[0] = *(v3 + 864);
  v8[1] = v5;
  v8[2] = v9;
  v7 = v4;
  bzero(v10, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(a2, v8[0], v5, v10);
  return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(v8, 0, v10, &v7);
}

uint64_t std::__function::__func<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0,std::allocator<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 544))
  {
    v5 = result;
    if (*(a3 + 546) == 1)
    {
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
      v8 = *(result + 16);
      bzero(v25, 0x222uLL);
      v27 = 0u;
      v28 = 0u;
      result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v8 + 16), v6, v7, v25);
      if (v26)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v14 = *v12;
          if (v9 && v14 <= v11 && (v14 < v11 || v12[1] <= v10))
          {
            std::string::basic_string[abi:ne200100]<0>(v30, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v36, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v35, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v34);
            health::_HDAssertImplementation<health::btree_access_error>(v30, v36, v35, 382, &v34);
          }

          v10 = v12[1];
          result = std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>::operator()(*(*a4 + 24), v12, *(v13 + 16), *(v13 + 24));
          ++v9;
          v11 = v14;
        }

        while (v9 < v26);
      }

      else
      {
        v14 = 0;
        v10 = 0;
      }

      v18 = *(&v28 + 1);
      for (i = v28; ; i = v33)
      {
        v19 = *(v5 + 16);
        if (i == *v19 && v18 == *(v19 + 8))
        {
          break;
        }

        bzero(v30, 0x222uLL);
        v32 = 0u;
        v33 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v19 + 16), i, v18, v30);
        if (!v31)
        {
          std::string::basic_string[abi:ne200100]<0>(v36, "leaf.valueCount > 0");
          std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Empty leaf encountered during enumeration.", &v29);
          health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 392, &v29);
        }

        for (j = 0; j < v31; ++j)
        {
          v21 = v14;
          v22 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v23 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v14 = *v22;
          if (*v22 <= v21)
          {
            v24 = *v22 >= v21 && v22[1] > v10;
            v10 = v22[1];
            if (!v24)
            {
              std::string::basic_string[abi:ne200100]<0>(v36, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v29);
              health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 396, &v29);
            }
          }

          else
          {
            v10 = v22[1];
          }

          result = std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>::operator()(*(*a4 + 24), v22, *(v23 + 16), *(v23 + 24));
        }

        v18 = *(&v33 + 1);
      }
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(v30, result, a2, a3, 0);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::enumerateObjectTreeForInspecting(std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>)::$_0::operator() const(health::BlockAccessFile::ReadTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(v5, (a2 + 1), v30, a4);
    }
  }

  return result;
}

void sub_228FECE84(_Unwind_Exception *a1)
{
  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, a2, v5);
}

void health::FormatImplementation<std::string &,int &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v28 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v28 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v28 = &v11->__r_.__value_.__s.__data_[2];
    v19 = v11->__r_.__value_.__s.__data_[2];
    if ((v19 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v20 = 0;
      v21 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v28 = v21;
        v20 = (v19 & 0xF) + 10 * v20;
        v22 = *v21++;
        LOBYTE(v19) = v22;
      }

      while ((v22 - 58) >= 0xFFFFFFF6);
      v28 = v21;
      if (*(v21 - 1) == 125)
      {
        health::FormatterParameters<0ul,std::string &,int &>::formatOptionsAtIndex<std::string &,int &>(v20);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_47;
  }

  health::FormatOptions::FormatOptions(v24, &v28);
  v13 = v28;
  if (v25)
  {
    if (v25 == 1)
    {
      health::TypeFormatter<int &,void>::TypeFormatter(&__p, *a4, v24);
      v14 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v14 = v30;
      }

      v15 = v27;
      if (v27 <= v14)
      {
        v15 = v14;
      }

      if (v26)
      {
        v14 = v15;
      }

      health::FormatImplementation<std::string &,int &>(v13, a2, v14 + a3 - v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_35;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_47:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 8), v24);
  v17 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v17 = v30;
  }

  v18 = v27;
  if (v27 <= v17)
  {
    v18 = v17;
  }

  if (v26)
  {
    v17 = v18;
  }

  health::FormatImplementation<std::string &,int &>(v13, a2, v17 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = a2->__r_.__value_.__r.__words[0];
  }

LABEL_35:
  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v24, &v16[a3 - v9], &__p);
  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,std::string &,int &>::formatOptionsAtIndex<std::string &,int &>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<std::string &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t *a4)
{
  v26 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    for (i = a1; ; i = (i + 1))
    {
      if (v6 == 123)
      {
        v12 = i->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v26 = &i->__r_.__value_.__s.__data_[2];
            v17 = i->__r_.__value_.__s.__data_[2];
            if ((v17 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v18 = 0;
              v19 = &i->__r_.__value_.__s.__data_[3];
              do
              {
                v26 = v19;
                v18 = (v17 & 0xF) + 10 * v18;
                v20 = *v19++;
                LOBYTE(v17) = v20;
              }

              while ((v20 - 58) >= 0xFFFFFFF6);
              v26 = v19;
              if (*(v19 - 1) == 125)
              {
                health::FormatterParameters<0ul,std::string &>::formatOptionsAtIndex<std::string &>(v18);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }
          }

          else
          {
            health::FormatOptions::FormatOptions(v22, &v26);
            if (!v23)
            {
              v13 = v26;
              health::TypeFormatter<std::string &,void>::TypeFormatter(__p, *a4, v22);
              v14 = v28;
              if ((v28 & 0x80u) != 0)
              {
                v14 = __p[1];
              }

              v15 = v25;
              if (v25 <= v14)
              {
                v15 = v14;
              }

              if (v24)
              {
                v14 = v15;
              }

              health::FormatImplementation<std::string &>(v13, a2, v14 + a3 - v9, a4);
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = a2;
              }

              else
              {
                v16 = a2->__r_.__value_.__r.__words[0];
              }

              health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v22, &v16[a3 - v9], __p);
              if (v28 < 0)
              {
                operator delete(__p[0]);
              }

              if (v9)
              {
                health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
              }

              return;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
          }

          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v10 = 1;
        i = (i + 1);
      }

      v26 = &i->__r_.__value_.__s.__data_[1];
      v6 = i->__r_.__value_.__s.__data_[1];
      --v9;
      if (!v6)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
        }

        return;
      }
    }
  }

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,std::string &>::formatOptionsAtIndex<std::string &>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = exception;
  if (a1)
  {
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  }

  else
  {
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v3, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t std::__function::__func<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_0,std::allocator<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_0>,BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BF2468;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_0,std::allocator<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_0>,BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1,std::allocator<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BF24E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1,std::allocator<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v5;
  v18[2] = *(a2 + 32);
  v19 = *(a2 + 48);
  std::deque<health::BlockPointer>::deque(v20, (a2 + 56));
  v6 = *(v4 + 864);
  v7 = *(v4 + 872);
  std::string::basic_string[abi:ne200100]<0>(__p, "Object Store");
  v8 = **(a1 + 16);
  std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::__value_func[abi:ne200100](v22, *(a1 + 24));
  health::DataStore::_checkBlockIntegrity(v4, v18, v6, v7, __p, v8, v22);
  std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::~__value_func[abi:ne200100](v22);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::deque<health::BlockPointer>::~deque[abi:ne200100](v20);
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = a2;
  v9 = *(v4 + 872);
  v14[0] = *(v4 + 864);
  v14[1] = v9;
  v14[2] = v15;
  v12[0] = v4;
  v12[1] = a2;
  v13 = *(a1 + 16);
  bzero(v21, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(a2, v14[0], v9, v21);
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(v14, 0, v21, v12);
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_228FEDA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::~__value_func[abi:ne200100](v26 - 104);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::deque<health::BlockPointer>::~deque[abi:ne200100]((v25 + 56));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1,std::allocator<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1>,BOOL ()(health::BlockAccessFile::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 544))
  {
    v5 = result;
    if (*(a3 + 546) == 1)
    {
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
      v8 = *(result + 16);
      bzero(v25, 0x222uLL);
      v27 = 0u;
      v28 = 0u;
      result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v8 + 16), v6, v7, v25);
      if (v26)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v25, v9);
          v14 = *v12;
          if (v9 && v14 <= v11 && (v14 < v11 || v12[1] <= v10))
          {
            std::string::basic_string[abi:ne200100]<0>(v30, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v36, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v35, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v34);
            health::_HDAssertImplementation<health::btree_access_error>(v30, v36, v35, 382, &v34);
          }

          v10 = v12[1];
          result = health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(int,health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17> const&,health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1} const&,health::bplustree::EnumerationDirection)const::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer const&)#1}::operator()(a4, v12, *(v13 + 16), *(v13 + 24));
          ++v9;
          v11 = v14;
        }

        while (v9 < v26);
      }

      else
      {
        v14 = 0;
        v10 = 0;
      }

      v18 = *(&v28 + 1);
      for (i = v28; ; i = v33)
      {
        v19 = *(v5 + 16);
        if (i == *v19 && v18 == *(v19 + 8))
        {
          break;
        }

        bzero(v30, 0x222uLL);
        v32 = 0u;
        v33 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v19 + 16), i, v18, v30);
        if (!v31)
        {
          std::string::basic_string[abi:ne200100]<0>(v36, "leaf.valueCount > 0");
          std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Empty leaf encountered during enumeration.", &v29);
          health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 392, &v29);
        }

        for (j = 0; j < v31; ++j)
        {
          v21 = v14;
          v22 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v23 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v30, j);
          v14 = *v22;
          if (*v22 <= v21)
          {
            v24 = *v22 >= v21 && v22[1] > v10;
            v10 = v22[1];
            if (!v24)
            {
              std::string::basic_string[abi:ne200100]<0>(v36, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v35, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v29);
              health::_HDAssertImplementation<health::btree_access_error>(v36, v35, &v34, 396, &v29);
            }
          }

          else
          {
            v10 = v22[1];
          }

          result = health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(int,health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17> const&,health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1} const&,health::bplustree::EnumerationDirection)const::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer const&)#1}::operator()(a4, v22, *(v23 + 16), *(v23 + 24));
        }

        v18 = *(&v33 + 1);
      }
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(v30, result, a2, a3, 0);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(v5, (a2 + 1), v30, a4);
    }
  }

  return result;
}

void sub_228FEDEB0(_Unwind_Exception *a1)
{
  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateAllValues<health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1}>(int,health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17> const&,health::DataStore::checkIntegrityForInspecting(std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>)::$_1::operator() const(health::BlockAccessFile::WriteTransaction const&)::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer)#1} const&,health::bplustree::EnumerationDirection)const::{lambda(health::DataStore::ObjectIdentifier const&,health::BlockPointer const&)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(v8 + 48);
  v12 = *(v8 + 16);
  v11 = *(v8 + 32);
  v18[0] = *v8;
  v18[1] = v12;
  v18[2] = v11;
  v19 = v10;
  std::deque<health::BlockPointer>::deque(v20, (v8 + 56));
  health::FormatString<health::DataStore::ObjectIdentifier const&>("HFD object [ID: {0}]", a2, &__p);
  v13 = *(a1 + 24);
  v14 = **(a1 + 16);
  std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::__value_func[abi:ne200100](v21, v13);
  health::DataStore::_checkBlockIntegrity(v9, v18, a3, a4, &__p, v14, v21);
  std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::~__value_func[abi:ne200100](v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = std::deque<health::BlockPointer>::~deque[abi:ne200100](v20);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228FEE084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::~__value_func[abi:ne200100](v16 - 88);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::deque<health::BlockPointer>::~deque[abi:ne200100]((v15 + 56));
  _Unwind_Resume(a1);
}

void *health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateValuesInRange<health::DataStore::ReadTransaction::enumerateIdentifiersForObjectType(long long,std::function<void ()(health::DataStore::ObjectIdentifier)>)::$_0>(void *result, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  if (*(a3 + 544))
  {
    v11 = result;
    v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a3, a5);
    if (*(a3 + 546) == 1)
    {
      v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v12);
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = v11[2];
      bzero(v17, 0x222uLL);
      v18 = 0u;
      v19 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v16 + 16), v14, v15, v17);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateValuesInRange<health::DataStore::ReadTransaction::enumerateIdentifiersForObjectType(long long,std::function<void ()(health::DataStore::ObjectIdentifier)>)::$_0>(v11, v17, a4, a5, a6);
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(v17, v11, a2, a3, v12);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateValuesInRange<health::DataStore::ReadTransaction::enumerateIdentifiersForObjectType(long long,std::function<void ()(health::DataStore::ObjectIdentifier)>)::$_0>(v11, (a2 + 1), v17, a4, a5, a6);
    }
  }

  return result;
}

void *health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_enumerateValuesInRange<health::DataStore::ReadTransaction::enumerateIdentifiersForObjectType(long long,std::function<void ()(health::DataStore::ObjectIdentifier)>)::$_0>(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = result;
  v9 = *(a2 + 544);
  if (*(a2 + 544))
  {
    v11 = 0;
    while (1)
    {
      result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, v11);
      if (*result > *a4 || *result >= *a4 && result[1] >= a4[1])
      {
        break;
      }

      if (++v11 >= *(a2 + 544))
      {
        v11 = v9;
        break;
      }
    }

    while (v11 < *(a2 + 544))
    {
      v12 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, v11);
      result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, v11);
      v13 = *v12;
      if (*v12 > *a5)
      {
        return result;
      }

      v14 = v12[1];
      if (v13 >= *a5 && v14 > a5[1])
      {
        return result;
      }

      result = std::function<void ()(health::DataStore::ObjectIdentifier)>::operator()(*(*a3 + 24), v13, v14);
      ++v11;
    }
  }

  v16 = *(a2 + 568);
  v17 = *(a2 + 576);
  v18 = v8[2];
  if (v16 != *v18 || v17 != *(v18 + 8))
  {
    bzero(v34, 0x222uLL);
    v36 = 0u;
    v37 = 0u;
    result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v18 + 16), v16, v17, v34);
    if (v35)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v34, v19);
        result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v34, v19);
        v23 = *v22;
        if (v19 && v23 <= v21 && (v23 < v21 || v22[1] <= v20))
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "key > lastKey");
          std::string::basic_string[abi:ne200100]<0>(v45, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v44, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v43);
          health::_HDAssertImplementation<health::btree_access_error>(v39, v45, v44, 382, &v43);
        }

        if (v23 > *a5)
        {
          break;
        }

        v20 = v22[1];
        if (v23 >= *a5 && v20 > a5[1])
        {
          break;
        }

        result = std::function<void ()(health::DataStore::ObjectIdentifier)>::operator()(*(*a3 + 24), *v22, v22[1]);
        ++v19;
        v21 = v23;
        if (v19 >= v35)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v23 = 0;
      v20 = 0;
LABEL_35:
      v27 = *(&v37 + 1);
      v26 = v37;
LABEL_36:
      v28 = v8[2];
      if (v26 != *v28 || v27 != *(v28 + 8))
      {
        bzero(v39, 0x222uLL);
        v41 = 0u;
        v42 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v28 + 16), v26, v27, v39);
        if (!v40)
        {
          std::string::basic_string[abi:ne200100]<0>(v45, "leaf.valueCount > 0");
          std::string::basic_string[abi:ne200100]<0>(v44, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(&v43, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Empty leaf encountered during enumeration.", &v38);
          health::_HDAssertImplementation<health::btree_access_error>(v45, v44, &v43, 392, &v38);
        }

        v29 = 0;
        while (1)
        {
          v30 = v23;
          v31 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v39, v29);
          result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v39, v29);
          v23 = *v31;
          if (*v31 <= v30)
          {
            v32 = *v31 >= v30 && v31[1] > v20;
            v20 = v31[1];
            if (!v32)
            {
              std::string::basic_string[abi:ne200100]<0>(v45, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v44, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v43, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v38);
              health::_HDAssertImplementation<health::btree_access_error>(v45, v44, &v43, 396, &v38);
            }
          }

          else
          {
            v20 = v31[1];
          }

          if (v23 > *a5)
          {
            break;
          }

          if (v23 >= *a5 && v20 > a5[1])
          {
            break;
          }

          result = std::function<void ()(health::DataStore::ObjectIdentifier)>::operator()(*(*a3 + 24), *v31, v20);
          if (++v29 >= v40)
          {
            v27 = *(&v42 + 1);
            v26 = v42;
            goto LABEL_36;
          }
        }
      }
    }
  }

  return result;
}

void sub_228FEE5D4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(health::DataStore::ObjectIdentifier)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, v4);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_removeValueForKey(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 544))
  {
    return 2;
  }

  v5 = (a2 + 1);
  if (*(a5 + 546) == 1)
  {
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_removeValueForKeyWithLeafChildren(a1, v5, a3, a4, a5);
  }

  else
  {
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_removeValueForKeyWithInteriorChildren(a1, v5, a3, a4, a5);
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_removeValueForKeyWithLeafChildren(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 544))
  {
    std::string::basic_string[abi:ne200100]<0>(v78, "node.childCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v77, "_removeValueForKeyWithLeafChildren");
    std::string::basic_string[abi:ne200100]<0>(v76, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Attempt to remove from empty interior node.", &v75);
    health::_HDAssertImplementation<health::btree_access_error>(v78, v77, v76, 749, &v75);
  }

  v9 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a5, a3);
  v10 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v9);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = *(a1 + 16);
  bzero(v71, 0x222uLL);
  v73 = 0u;
  v74 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v13 + 24), v12, v11, v71);
  v14 = health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::indexForKey(v71, a3);
  if (HIDWORD(v14))
  {
    return 2;
  }

  if (v14 >= 0x11uLL)
  {
    v15 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v79, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(__p, "deleteElementAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v84, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &v83);
    health::_HDAssertImplementation<std::out_of_range>(v15, v79, __p, v84, 65, &v83);
  }

  memmove(&v71[2 * v14], &v71[2 * v14 + 2], 512 - 32 * v14);
  --v72;
  health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v12, v11, v71);
  if (v72 >= 9u)
  {
    v16 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v9);
    if (*v16 != v71[0])
    {
      v17 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v9);
      *v17 = v71[0];
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a4, *(a4 + 8), a5);
    }

LABEL_22:
    v29 = v9 == 0;
    return !v29;
  }

  if (!v72)
  {
    v25 = *(a1 + 16);
    v27 = *(&v74 + 1);
    v26 = v74;
    if (v74 != *v25)
    {
      bzero(v79, 0x222uLL);
      v80 = 0u;
      v81 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v25 + 24), v26, v27, v79);
      v80 = v73;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v74, *(&v74 + 1), v79);
      v25 = *(a1 + 16);
      v26 = *v25;
    }

    v28 = v73;
    if (v73 != __PAIR128__(*(v25 + 8), v26))
    {
      bzero(v79, 0x222uLL);
      v80 = 0u;
      v81 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v25 + 24), v28, *(&v28 + 1), v79);
      v81 = v74;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v73, *(&v73 + 1), v79);
      v25 = *(a1 + 16);
    }

    health::BlockAccessFile::WriteTransaction::freeBlock(*(v25 + 24), v12, v11);
    health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::deleteElementAtIndex(a5, v9);
    --*(a5 + 544);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a4, *(a4 + 8), a5);
    if (*(a5 + 544))
    {
      goto LABEL_22;
    }

    return 3;
  }

  v19 = *(a5 + 544);
  if (v19 < 2)
  {
    return 3;
  }

  v63 = a4;
  v20 = v19 - 1;
  v21 = v9 - (v20 == v9);
  v22 = v20 == v9;
  if (v20 == v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = v9 + 1;
  }

  v59 = v23;
  v60 = v21;
  if (v22)
  {
    v58 = &v81;
    v24 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v21);
    v33 = v11;
    v34 = v12;
    v12 = *(v24 + 16);
    v11 = *(v24 + 24);
    v31 = &v70;
    v32 = &v69;
    v35 = v79;
    v70 = v12;
    v69 = v11;
    v36 = v71;
    v57 = &v74;
  }

  else
  {
    v70 = v12;
    v69 = v11;
    v30 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v23);
    v31 = &v68;
    v32 = &v67;
    v34 = *(v30 + 16);
    v33 = *(v30 + 24);
    v35 = v71;
    v36 = v79;
    v57 = &v81;
    v58 = &v74;
  }

  v61 = v34;
  v62 = v33;
  v68 = v34;
  v67 = v33;
  v37 = *(a1 + 16);
  bzero(v79, 0x222uLL);
  v80 = 0u;
  v81 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v37 + 24), *v31, *v32, v79);
  v38 = *(v35 + 272);
  v39 = *(v36 + 272);
  v40 = v39 + v38;
  v41 = v35;
  if ((v39 + v38) > 0x11u)
  {
    v45 = v36;
    v46 = v38 + v39 + 1;
    v47 = v46 >> 1;
    if (v46 >> 1 >= v38)
    {
      v53 = (v47 - v38);
      v54 = (v47 - v38);
      v51 = v45;
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v41, v38, v45, 0, v54);
      v55 = v53 >= 0x12;
      v48 = v63;
      if (v55)
      {
        v56 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(__p, "startingIndex + count <= Length");
        std::string::basic_string[abi:ne200100]<0>(v84, "deleteElementsInRange");
        std::string::basic_string[abi:ne200100]<0>(&v83, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
        health::FormatString<>("Delete would overflow array bounds.", &v82);
        health::_HDAssertImplementation<std::out_of_range>(v56, __p, v84, &v83, 72, &v82);
      }

      memmove(v45, &v45[4 * v54], 544 - 32 * v54);
      *(v41 + 544) = v47;
      v52 = *(v45 + 272) - v54;
    }

    else
    {
      v48 = v63;
      if ((v38 - (v46 >> 1)) >= 0x12u)
      {
        v49 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(__p, "index + count <= Length");
        std::string::basic_string[abi:ne200100]<0>(v84, "insertSpaceForElementsAtIndex");
        std::string::basic_string[abi:ne200100]<0>(&v83, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
        health::FormatString<>("Array too small for requested space.", &v82);
        health::_HDAssertImplementation<std::out_of_range>(v49, __p, v84, &v83, 87, &v82);
      }

      v50 = (v38 - (v46 >> 1));
      v51 = v45;
      memmove(&v45[4 * v50], v45, 544 - 32 * v50);
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v45, 0, v41, *(v41 + 544) - v50, v50);
      *(v41 + 544) = v47;
      v52 = *(v45 + 272) + v50;
    }

    *(v51 + 544) = v52;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v12, v11, v41);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v61, v62, v51);
    *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v60) = *v41;
    *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v59) = *v51;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *v48, *(v48 + 8), a5);
    v29 = v60 == 0;
    return !v29;
  }

  health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v35, v38, v36, 0, v39);
  *(v35 + 272) = v40;
  *v58 = *v57;
  health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v12, v11, v35);
  health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::deleteElementAtIndex(a5, v59);
  --*(a5 + 544);
  *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v60) = *v35;
  health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *v63, *(v63 + 8), a5);
  v42 = *(a1 + 16);
  v43 = v35[71];
  v44 = *(v58 + 1);
  if (v43 != *v42 || v44 != *(v42 + 8))
  {
    bzero(__p, 0x222uLL);
    v65 = 0u;
    v66 = 0u;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v42 + 24), v43, v44, __p);
    *&v65 = v12;
    *(&v65 + 1) = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *(v41 + 568), *(v58 + 1), __p);
    v42 = *(a1 + 16);
  }

  health::BlockAccessFile::WriteTransaction::freeBlock(*(v42 + 24), v61, v62);
  if (*(a5 + 544) >= 9u)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void sub_228FEEFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 137) < 0)
  {
    operator delete(*(v21 - 160));
  }

  if (*(v21 - 113) < 0)
  {
    operator delete(*(v21 - 136));
  }

  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_removeValueForKeyWithInteriorChildren(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 544))
  {
    std::string::basic_string[abi:ne200100]<0>(v54, "node.childCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v53, "_removeValueForKeyWithInteriorChildren");
    std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Attempt to remove from empty interior node.", &v51);
    health::_HDAssertImplementation<health::btree_access_error>(v54, v53, v52, 847, &v51);
  }

  v10 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a5, a3);
  v11 = v10;
  v50 = *(health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v10) + 16);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(a1, a2, a5, v10, v49);
  v12 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_removeValueForKey(a1, (a2 + 1), a3, &v50, v49);
  if (v12 <= 1)
  {
    v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v10);
    if (*v13 != v49[0])
    {
      v14 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v10);
      *v14 = v49[0];
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a4, *(a4 + 8), a5);
    }

    v15 = v10 == 0;
    return !v15;
  }

  v16 = v12;
  if (v12 == 2)
  {
    return v16;
  }

  if (v12 != 3)
  {
    v17 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v48, "result == RemovalResult::MergeRequired");
    std::string::basic_string[abi:ne200100]<0>(v47, "_removeValueForKeyWithInteriorChildren");
    std::string::basic_string[abi:ne200100]<0>(v46, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    LODWORD(v44[0]) = v16;
    health::FormatString<int>("Unexpected removal result {0} after handling non-merge cases.", v44, &__p);
    health::_HDAssertImplementation<std::logic_error>(v17, v48, v47, v46, 871, &__p);
  }

  v18 = *(a5 + 544) - 1;
  if (*(a5 + 544) == 1)
  {
    return 3;
  }

  v19 = v10 - (v18 == v10);
  if (v18 != v10)
  {
    LOWORD(v10) = v10 + 1;
  }

  if (v18 == v11)
  {
    v20 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, (v11 - (v18 == v11)));
    v41 = *(v20 + 24);
    v42 = *(v20 + 16);
    v21 = &v50;
    v22 = v44;
    v23 = v49;
    v24 = v19;
  }

  else
  {
    v41 = *(&v50 + 1);
    v42 = v50;
    v21 = (health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v10) + 16);
    v22 = v49;
    v23 = v44;
    v24 = v10;
  }

  v25 = v21[1];
  v43 = *v21;
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(a1, a2, a5, v24, v44);
  v26 = *(v22 + 272);
  v27 = v23[272];
  v28 = v27 + v26;
  if ((v27 + v26) > 0x11u)
  {
    v30 = v25;
    v31 = v26 + v27 + 1;
    v32 = v31 >> 1;
    if (v31 >> 1 >= v26)
    {
      v40 = v31 >> 1;
      v35 = v32 - v26;
      v36 = (v32 - v26);
      v37 = v35;
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v22, v26, v23, 0, v35);
      if (v36 >= 0x12)
      {
        v38 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v58, "startingIndex + count <= Length");
        std::string::basic_string[abi:ne200100]<0>(v57, "deleteElementsInRange");
        std::string::basic_string[abi:ne200100]<0>(v56, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
        health::FormatString<>("Delete would overflow array bounds.", &v55);
        health::_HDAssertImplementation<std::out_of_range>(v38, v58, v57, v56, 72, &v55);
      }

      memmove(v23, &v23[16 * v37], 544 - 32 * v37);
      *(v22 + 272) = v40;
      v34 = v23[272] - v37;
    }

    else
    {
      if ((v26 - (v31 >> 1)) >= 0x12u)
      {
        v39 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v58, "index + count <= Length");
        std::string::basic_string[abi:ne200100]<0>(v57, "insertSpaceForElementsAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v56, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
        health::FormatString<>("Array too small for requested space.", &v55);
        health::_HDAssertImplementation<std::out_of_range>(v39, v58, v57, v56, 87, &v55);
      }

      v33 = (v26 - (v31 >> 1));
      memmove(&v23[16 * v33], v23, 544 - 32 * v33);
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v23, 0, v22, *(v22 + 272) - v33, v33);
      *(v22 + 272) = v32;
      v34 = v23[272] + v33;
    }

    v23[272] = v34;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v42, v41, v22);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v43, v30, v23);
    *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v19) = *v22;
    *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v10) = *v23;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a4, *(a4 + 8), a5);
    v15 = v19 == 0;
    return !v15;
  }

  health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v22, v26, v23, 0, v27);
  *(v22 + 272) = v28;
  health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v42, v41, v22);
  health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::deleteElementAtIndex(a5, v10);
  --*(a5 + 544);
  *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, v19) = *v22;
  health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a4, *(a4 + 8), a5);
  health::BlockAccessFile::WriteTransaction::freeBlock(*(*(a1 + 16) + 24), v43, v25);
  if (*(a5 + 544) >= 9u)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void sub_228FEF6E4(_Unwind_Exception *a1)
{
  if (*(v1 - 161) < 0)
  {
    operator delete(*(v1 - 184));
  }

  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_228FF03F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__168(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FF1064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__169(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FF752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

id HDLocationSeriesDataEntityAllProperties(void)
{
  v3[12] = *MEMORY[0x277D85DE8];
  v3[0] = @"series_identifier";
  v3[1] = @"timestamp";
  v3[2] = @"latitude";
  v3[3] = @"longitude";
  v3[4] = @"altitude";
  v3[5] = @"speed";
  v3[6] = @"course";
  v3[7] = @"horizontal_accuracy";
  v3[8] = @"vertical_accuracy";
  v3[9] = @"speed_accuracy";
  v3[10] = @"course_accuracy";
  v3[11] = @"signal_environment";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:12];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void __cxx_global_array_dtor_3()
{
  v0 = &off_27D869B50;
  v1 = -288;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

uint64_t HDCodableSampleOriginCollectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableDevice);
        [a1 addDevice:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HDCodableDeviceReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HDCodableContributor);
    [a1 addContributor:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HDCodableContributorReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _HDAddProfileAuthorizationTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS profile_authorization (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{source_bundle_id TEXT NOT NULL UNIQUE, status INTEGER NOT NULL, date_modified REAL NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutBuilderZonesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB0168 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutZonesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB0180 error:a4] ^ 1;

  return v6;
}

uint64_t HDRawQuantitySample::splitAtTime@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = *(result + 32);
  v9 = *(result + 33);
  v10 = a4 - v4;
  v11 = v6 - v4 - (a4 - v4);
  if (a2 != 1)
  {
    if (v11 < 0.01)
    {
      goto LABEL_6;
    }

    if (v10 >= 0.01)
    {
LABEL_9:
      v17 = v5 * (v10 / (v6 - v4));
      v15 = *(result + 32);
      v14 = v5 - v17;
      v5 = v17;
      v16 = a4;
      goto LABEL_10;
    }

LABEL_8:
    v15 = 0;
    a4 = *(result + 16);
    v14 = *result;
    v16 = *(result + 8);
LABEL_10:
    v12 = *(result + 24);
    v13 = *(result + 33);
    goto LABEL_11;
  }

  if (v10 < 0.01)
  {
    goto LABEL_8;
  }

  if (v11 >= 0.01)
  {
    goto LABEL_9;
  }

LABEL_6:
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  a4 = *(result + 16);
  v15 = *(result + 32);
  v16 = 0.0;
  v6 = 0.0;
  v8 = 0;
LABEL_11:
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = a4;
  *(a3 + 24) = v7;
  *(a3 + 32) = v15;
  *(a3 + 33) = v9;
  *(a3 + 34) = *(result + 34);
  *(a3 + 38) = *(result + 38);
  *(a3 + 40) = v14;
  *(a3 + 48) = v16;
  *(a3 + 56) = v6;
  *(a3 + 64) = v12;
  *(a3 + 72) = v8;
  *(a3 + 73) = v13;
  return result;
}

double HDRawQuantitySample::splitAtTime(__n128 *a1, __n128 *a2, int a3, __n128 a4)
{
  v5 = a1->n128_f64[1];
  v4 = a1[1].n128_f64[0];
  v6 = a4.n128_f64[0] - v5;
  v7 = v4 - v5;
  v8 = v7 - v6;
  if (a3 == 1)
  {
    if (v6 >= 0.01)
    {
      if (v8 >= 0.01)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

LABEL_8:
    a4 = *a1;
    v9 = a1[1];
    a2[2].n128_u16[0] = a1[2].n128_u16[0];
    *a2 = a4;
    a2[1] = v9;
    a1[2].n128_u8[0] = 0;
    return a4.n128_f64[0];
  }

  if (v8 >= 0.01)
  {
    if (v6 >= 0.01)
    {
LABEL_9:
      v10 = v6 / v7 * a1->n128_f64[0];
      a2->n128_f64[0] = a1->n128_f64[0] - v10;
      a2->n128_u64[1] = a4.n128_u64[0];
      a2[1].n128_f64[0] = v4;
      a2[1].n128_u64[1] = a1[1].n128_u64[1];
      a2[2].n128_u16[0] = a1[2].n128_u16[0];
      a1->n128_f64[0] = v10;
      a1[1].n128_u64[0] = a4.n128_u64[0];
      return a4.n128_f64[0];
    }

    goto LABEL_8;
  }

LABEL_6:
  a2[2].n128_u8[0] = 0;
  return a4.n128_f64[0];
}

uint64_t HDRawQuantitySample::applyMask(uint64_t result, double **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *a2;
  if (v3 != *a2)
  {
    v5 = *(result + 16);
    v6 = *(result + 8);
    v7 = v5 - v6;
    if (v5 - v6 >= 0.01)
    {
      v8 = v4 + 1;
      v9 = 0.0;
      do
      {
        v10 = v8 - 1;
        if (*v8 > v6)
        {
          v11 = *v10;
          if (*v10 >= v5)
          {
            break;
          }

          if (v11 > v6)
          {
            if (v5 < v11)
            {
              v10 = (result + 16);
            }

            v9 = v9 + *v10 - v6;
          }

          if (*v8 >= v5)
          {
            v12 = (result + 16);
          }

          else
          {
            v12 = v8;
          }

          v6 = *v12;
        }

        v13 = v8 + 1;
        v8 += 2;
      }

      while (v13 != v3);
      if (v6 >= v5)
      {
        v14 = v9;
      }

      else
      {
        v14 = v9 + v5 - v6;
      }

      if (v14 <= 0.0)
      {
LABEL_25:
        *(result + 32) = 0;
      }

      else
      {
        *result = v14 * *result / v7;
      }
    }

    else
    {
      while (v6 >= *v4)
      {
        if (v6 < v4[1])
        {
          *result = 0;
          goto LABEL_25;
        }

        v4 += 2;
        if (v4 == v3)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t HDRawQuantitySample::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return *(a2 + 32) ^ 1u;
  }

  if (*(a2 + 32) && *(a1 + 33) == *(a2 + 33) && *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return 0;
}

void sub_228FFEECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__170(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FFF75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t HKWorkoutBuilderConstructionStateFromBuilderServerState(unint64_t a1)
{
  if (a1 > 8)
  {
    return 4;
  }

  else
  {
    return qword_229181400[a1];
  }
}

void sub_229003654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose((v63 - 240), 8);
  _Block_object_dispose((v63 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_22900AC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_22900E17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22901030C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290115B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t HDEntityCategoryForKeyValueCategory(unint64_t a1)
{
  if (a1 > 4)
  {
    return -1;
  }

  else
  {
    return qword_229181470[a1];
  }
}

void sub_229012768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__171(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290161BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229017214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_229017A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22901E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__172(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290244AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__173(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableHealthObjectReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = PBReaderReadData();
        v23 = 40;
        goto LABEL_40;
      }

      if (v13 != 2)
      {
        goto LABEL_41;
      }

      v21 = objc_alloc_init(HDCodableMetadataDictionary);
      objc_storeStrong((a1 + 24), v21);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableMetadataDictionaryReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_49:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = PBReaderReadString();
        v23 = 32;
LABEL_40:
        v26 = *(a1 + v23);
        *(a1 + v23) = v22;

        goto LABEL_49;
      case 4:
        *(a1 + 48) |= 1u;
        v30[0] = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v30[0];
        goto LABEL_49;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v30[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30[0] & 0x7F) << v14;
          if ((v30[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_46:
        *(a1 + 16) = v20;
        goto LABEL_49;
    }

LABEL_41:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_49;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSleepScheduleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v92[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v92[0] & 0x7F) << v5;
        if ((v92[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = objc_alloc_init(HDCodableSample);
          objc_storeStrong((a1 + 48), v13);
          v92[0] = 0;
          v92[1] = 0;
          if (PBReaderPlaceMark() && HDCodableSampleReadFrom(v13, a2))
          {
            PBReaderRecallMark();

            goto LABEL_167;
          }

          return 0;
        case 2u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v92[0] & 0x7F) << v58;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_152;
            }
          }

          v27 = (v60 != 0) & ~[a2 hasError];
LABEL_152:
          v89 = 57;
          goto LABEL_157;
        case 3u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 64) |= 0x400u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v92[0] & 0x7F) << v52;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_150;
            }
          }

          v27 = (v54 != 0) & ~[a2 hasError];
LABEL_150:
          v89 = 61;
          goto LABEL_157;
        case 4u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 64) |= 0x800u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v92[0] & 0x7F) << v46;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_148;
            }
          }

          v27 = (v48 != 0) & ~[a2 hasError];
LABEL_148:
          v89 = 62;
          goto LABEL_157;
        case 5u:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 64) |= 0x200u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v92[0] & 0x7F) << v21;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_136;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_136:
          v89 = 60;
          goto LABEL_157;
        case 6u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v92[0] & 0x7F) << v34;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_142;
            }
          }

          v27 = (v36 != 0) & ~[a2 hasError];
LABEL_142:
          v89 = 56;
          goto LABEL_157;
        case 7u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v92[0] & 0x7F) << v64;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_154;
            }
          }

          v27 = (v66 != 0) & ~[a2 hasError];
LABEL_154:
          v89 = 58;
          goto LABEL_157;
        case 8u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v92[0] & 0x7F) << v70;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_156;
            }
          }

          v27 = (v72 != 0) & ~[a2 hasError];
LABEL_156:
          v89 = 59;
LABEL_157:
          *(a1 + v89) = v27;
          goto LABEL_167;
        case 9u:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v92[0] & 0x7F) << v82;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v11 = v83++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v84;
          }

LABEL_165:
          v88 = 32;
          goto LABEL_166;
        case 0xAu:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v92[0] & 0x7F) << v76;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v78;
          }

LABEL_161:
          v88 = 40;
          goto LABEL_166;
        case 0xBu:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v92[0] & 0x7F) << v14;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_134;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_134:
          v88 = 8;
          goto LABEL_166;
        case 0xCu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v92[0]) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v92[0] & 0x7F) << v40;
            if ((v92[0] & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_146;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_146:
          v88 = 16;
          goto LABEL_166;
        case 0xEu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 64) |= 4u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_167;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v92[0]) = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v92[0] & 0x7F) << v28;
        if ((v92[0] & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_140;
        }
      }

      v20 = [a2 hasError] ? 0 : v30;
LABEL_140:
      v88 = 24;
LABEL_166:
      *(a1 + v88) = v20;
LABEL_167:
      v90 = [a2 position];
    }

    while (v90 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_229028F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229029FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__174(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22902A254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22902A5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22902A9E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22902DD24(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_22902DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22902E514(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::deque<HDRawQuantitySample>::~deque[abi:ne200100]((v1 + 3));

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::deque<HDRawQuantitySample>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 51;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 102;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::find<NSString * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>::operator()[abi:ne200100](i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [v3 isEqualToString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
    std::deque<HDRawQuantitySample>::~deque[abi:ne200100]((a2 + 3));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t __Block_byref_object_copy__175(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t HDCurrentSyncVersionForSyncEntity(void *a1)
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 currentSyncVersion];
  }

  else if (objc_opt_respondsToSelector())
  {
    return [a1 supportedSyncVersionRange] >> 32;
  }

  else
  {
    return 0;
  }
}

void sub_229030378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__176(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229030C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_229031EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2290320C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229033410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_2290360D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__177(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22903A2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22903A7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22903AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDWorkoutSessionCanReplaceSession(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 startDate];

  v6 = [v4 startDate];
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  v9 = v8;
  if (v5 && v6)
  {
    v10 = [v4 startDate];
    v11 = [v3 startDate];
    v9 = [v10 hk_isAfterOrEqualToDate:v11];
  }

  return v9;
}

void sub_22903DA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22903DBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22904213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229042248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZL23_HDSortedMigrationStepsP7NSArrayIP23HDDatabaseMigrationStepE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 finalSchemaVersion];
  v7 = [v5 finalSchemaVersion];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7 < v6;
  }

  return v8;
}

uint64_t ___ZL23_HDSortedMigrationStepsP7NSArrayIP23HDDatabaseMigrationStepE_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 finalSchemaVersion];
  v7 = [v5 finalSchemaVersion];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7 < v6;
  }

  return v8;
}

BOOL ___ZL23_HDSortedMigrationStepsP7NSArrayIP23HDDatabaseMigrationStepE_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 schemaName];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 finalSchemaVersion] == *(a1 + 32);
  }

  return v5;
}

__n128 _ZNKSt3__110__function6__funcIZZZ65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error__EUb_EUb0_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BF28E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZZZ65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error__EUb_EUb0_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEEclES8_(uint64_t **a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = xmmword_22916DD30;
  v29 = *(a2 + 32);
  v30 = a2;
  v4.n128_f64[0] = health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v29, &v27, 0, v31);
  if (v32 != 1)
  {
    goto LABEL_10;
  }

  health::DataStore::ReadTransaction::_pointerForObject(a2, &v27, &v29);
  if (v30 == 1)
  {
    v5 = *(a2 + 24);
    v6 = health::Optional<health::BlockPointer>::get(&v29);
    v7 = *v6;
    v8 = v6[1];
    v33 = 0;
    v34 = 8;
    v28.n128_u64[0] = v31;
    v28.n128_u64[1] = 8;
    health::BlockAccessFile::ReadTransaction::retrieveBlock(v5, v7, v8, &v28);
    v9 = v33;
    if (v34 <= 0x3FF)
    {
      v10 = v31;
    }

    else
    {
      v10 = v33;
    }

    v11 = *v10;
    v33 = 0;
    if (v9)
    {
      MEMORY[0x22AAC8570](v9, 0x1000C8077774924);
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= *a1[1])
  {
    *a1[2] = 0;
    result = 1;
  }

  else
  {
LABEL_10:
    v12 = *a1[4];
    v13 = *a1[5];
    *a1[2] = (*(*a1[3] + 16))(v4);
    v14 = a1[1];
    v29 = *(a2 + 32);
    v30 = a2 + 48;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v29, &v27, 0, v31);
    if (v32)
    {
      v15 = *(health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v31) + 24) == 8;
      v16 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v31);
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v15)
      {
        health::BlockAccessFile::WriteTransaction::updateObject<long>(a2 + 80, v17, v18, *v14);
      }

      else
      {
        health::BlockAccessFile::WriteTransaction::freeBlock(a2 + 80, v17, v18);
        v23 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength((a2 + 80), 8);
        v25 = v24;
        health::BlockAccessFile::WriteTransaction::updateObject<long>(a2 + 80, v23, v24, *v14);
        v28.n128_u64[0] = v23;
        v28.n128_u64[1] = v25;
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v29, &v27, &v28);
      }
    }

    else
    {
      v19 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength((a2 + 80), 8);
      v21 = v20;
      health::BlockAccessFile::WriteTransaction::updateObject<long>(a2 + 80, v19, v20, *v14);
      v28.n128_u64[0] = v19;
      v28.n128_u64[1] = v21;
      health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v29, &v27, &v28);
    }

    result = *a1[2] == 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_229042B30(_Unwind_Exception *a1)
{
  v2 = STACK[0x438];
  STACK[0x438] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error__EUb_EUb0_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZ65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error__EUb_EUb0_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<long>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 8;
  v11[0] = v12;
  v11[1] = v12;
  v11[2] = 8;
  v10[0] = a4;
  health::SerializationBuffer::appendRaw<unsigned long long>(v11, v10);
  if (v14 <= 0x3FF)
  {
    v7 = v12;
  }

  else
  {
    v7 = v13;
  }

  health::RawBuffer::RawBuffer(v10, v7, v14);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v10);
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_229042C90(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t HDCodableRoutineLocationVisitReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___HDCodableRoutineLocationVisit__entryTime;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 2u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___HDCodableRoutineLocationVisit__exitTime;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

void sub_2290438A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__178(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22904565C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_229047874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_229048338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__179(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229049954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22904A5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDDoseEventUUIDsFromCodableObjectCollection(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 hasGeneratedObjectCollection])
  {
    v17 = v1;
    v3 = [v1 generatedObjectCollection];
    v4 = [v3 medicationDoseEvents];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MEMORY[0x277CCAD78];
          v11 = [*(*(&v18 + 1) + 8 * i) sample];
          v12 = [v11 object];
          v13 = [v12 uuid];
          v14 = [v10 hk_UUIDWithData:v13];
          [v2 hk_addNonNilObject:v14];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v1 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::QuantitySampleAttenuationEngineSample(uint64_t this)
{
  *this = &unk_283BF29E8;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_283BF29E8;
  *(this + 44) = 0;
  return this;
}

void statistics::QuantitySampleAttenuationEngineSample::~QuantitySampleAttenuationEngineSample(statistics::QuantitySampleAttenuationEngineSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x22AAC8590);
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::QuantitySampleAttenuationEngineSample(uint64_t this, const statistics::QuantitySampleAttenuationEngineSample *a2)
{
  *this = &unk_283BF29E8;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 8;
    *(this + 44) = 8;
    *(this + 32) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 44))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 44) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 3);
      *(this + 44) = v3 | 4;
      *(this + 24) = v8;
      return this;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 40);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 40) = v7;
  if ((*(a2 + 44) & 4) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::operator=(uint64_t a1, const statistics::QuantitySampleAttenuationEngineSample *a2)
{
  if (a1 != a2)
  {
    statistics::QuantitySampleAttenuationEngineSample::QuantitySampleAttenuationEngineSample(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double statistics::swap(statistics *this, statistics::QuantitySampleAttenuationEngineSample *a2, statistics::QuantitySampleAttenuationEngineSample *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LOBYTE(v3) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v3;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  return result;
}

double statistics::QuantitySampleAttenuationEngineSample::QuantitySampleAttenuationEngineSample(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283BF29E8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

{
  *a1 = &unk_283BF29E8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_283BF29E8;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    v6 = *(a2 + 24);
    v16 = *(a1 + 44);
    v14 = *(a1 + 32);
    v7 = *(a1 + 8);
    v8 = *(a2 + 8);
    *(a1 + 44) = v3;
    *(a1 + 32) = v4;
    *(a1 + 8) = v8;
    v12 = v7;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v5;
    v15 = v3;
    v9 = *(a1 + 24);
    *(a1 + 24) = v6;
    v13 = v9;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::formatText(statistics::QuantitySampleAttenuationEngineSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "endTime", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "sampleValue", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = *(this + 40);
  PB::TextFormatter::format(a2, "shouldContributeToCount");
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v7 = *(this + 3);
  PB::TextFormatter::format(a2, "sourceID");
  if ((*(this + 44) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "startTime", *(this + 4));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::readFrom(statistics::QuantitySampleAttenuationEngineSample *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 44) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_43:
          *(a2 + 24) = 1;
          goto LABEL_61;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_55;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_43;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_55;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_43;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_55:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_61;
        case 4:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v32 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v31 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v32 = v31 != 0;
          }

          *(this + 40) = v32;
          goto LABEL_61;
        case 5:
          *(this + 44) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v35 = (v24 + v23);
            v36 = v2 - v23;
            v37 = v23 + 1;
            while (1)
            {
              if (!v36)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_60;
              }

              v38 = v37;
              v39 = *v35;
              *(a2 + 1) = v38;
              v27 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v35;
              --v36;
              v37 = v38 + 1;
              v14 = v34++ > 8;
              if (v14)
              {
                v27 = 0;
                goto LABEL_59;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_59:
            v2 = v38;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                v27 = 0;
                break;
              }
            }
          }

LABEL_60:
          *(this + 3) = v27;
          goto LABEL_61;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v40 = 0;
      return v40 & 1;
    }

    v2 = *(a2 + 1);
LABEL_61:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 44);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = *(v3 + 40);
    this = PB::Writer::write(a2);
    if ((*(v3 + 44) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2);
}

BOOL statistics::QuantitySampleAttenuationEngineSample::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if ((*(a2 + 44) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 44) & 4) == 0;
  if ((*(a1 + 44) & 4) != 0)
  {
    return (*(a2 + 44) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t statistics::QuantitySampleAttenuationEngineSample::hash_value(statistics::QuantitySampleAttenuationEngineSample *this)
{
  if ((*(this + 44) & 8) == 0)
  {
    v1 = 0.0;
    if (*(this + 44))
    {
      goto LABEL_3;
    }

LABEL_14:
    v2 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v3 = 0.0;
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v4 = 0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v5 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v4 = *(this + 40);
  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v5 = *(this + 3);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5;
}

void sub_22904F8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__181(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableTinkerPairingRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v34 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v34 & 0x7F) << v23;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_66:
            *(a1 + 56) = v29;
            goto LABEL_55;
          }

          if (v13 == 4)
          {
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_54;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_54;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_54;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_54;
        }

        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_62:
          *(a1 + 8) = v22;
          goto LABEL_55;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_54;
          case 8:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_54;
          case 9:
            v14 = PBReaderReadString();
            v15 = 72;
LABEL_54:
            v30 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_55;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_55:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22905373C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2290591DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_229059A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__182(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDUserDomainConceptEntityPredicateForConceptsWithCreationDateBefore()
{
  v0 = MEMORY[0x277D10B18];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v2 = [v0 predicateWithProperty:@"creation_date" lessThanValue:v1];

  return v2;
}

void sub_22905A14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDUserDomainConceptEntityPredicateForPropertyType(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v3 = [v1 predicateWithProperty:@"user_domain_concept_properties.property_type" equalToValue:v2];

  return v3;
}

void sub_22905A51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDUserDomainConceptEntityPredicateForConceptUUID(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" value:a1 comparisonType:v2];
}

void sub_22905AF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22905C838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromUserDomainConceptEntityInsertMethod(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_27862C688[a1 - 1];
  }

  return v2;
}

__CFString *HDStringFromUserDomainConceptEntityInsertResult(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_27862C6A0[a1];
  }

  return v2;
}

id HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifiers(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier(*(*(&v12 + 1) + 8 * i));
        [v2 addObject:{v8, v12}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier(void *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277D10B18];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "code")}];
  v4 = [v2 predicateWithProperty:@"type" equalToValue:v3];

  v5 = [v1 schema];
  if (v5)
  {
    v6 = MEMORY[0x277D10B18];
    v7 = [v1 schema];
    v8 = [v6 predicateWithProperty:@"schema" equalToValue:v7];
  }

  else
  {
    v8 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"schema"];
  }

  v9 = MEMORY[0x277D10B20];
  v14[0] = v4;
  v14[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v9 predicateMatchingAllPredicates:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id HDUserDomainConceptEntityPredicateForMedicalCoding(void *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D10B20];
  v2 = MEMORY[0x277D10B18];
  v3 = a1;
  v4 = [v3 codingSystem];
  v5 = [v4 identifier];
  v6 = [v2 predicateWithProperty:@"medical_coding_system.string" equalToValue:v5];
  v14[0] = v6;
  v7 = MEMORY[0x277D10B18];
  v8 = [v3 code];

  v9 = [v7 predicateWithProperty:@"medical_coding_code.string" equalToValue:v8];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v1 predicateMatchingAllPredicates:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id HDUserDomainConceptEntityPredicateForMedicalCodingSystem(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [a1 identifier];
  v3 = [v1 predicateWithProperty:@"medical_coding_system.string" equalToValue:v2];

  return v3;
}

id HDUserDomainConceptEntityPredicateWithCodingCollection(void *a1)
{
  v1 = MEMORY[0x277D10B20];
  v2 = [a1 codings];
  v3 = [v2 hk_map:&__block_literal_global_625];
  v4 = [v1 predicateMatchingAllPredicates:v3];

  return v4;
}

id __HDUserDomainConceptEntityPredicateWithCodingCollection_block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D10B80];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  [v4 setEntityClass:objc_opt_class()];
  v5 = HDUserDomainMedicalCodingEntityPredicateForCoding(v3);

  [v4 setPredicate:v5];
  v6 = MEMORY[0x277D10B18];
  v11[0] = @"udc_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v6 predicateWithProperty:@"udc_id" comparisonType:7 subqueryDescriptor:v4 subqueryProperties:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_22905D9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _HDSyncAnchorPropertyForType(unint64_t a1)
{
  if (a1 >= 6)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _HDSyncAnchorPropertyForType(HDSyncAnchorType)"];
    [v3 handleFailureInFunction:v4 file:@"HDSyncAnchorEntity.m" lineNumber:71 description:{@"Invalid anchor type %ld", a1}];
  }

  else
  {
    v2 = off_27862CAA8[a1];
  }
}

void _HDSyncAnchorUpdateOptionsForType(unint64_t a1)
{
  if (a1 >= 6)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSUInteger _HDSyncAnchorUpdateOptionsForType(HDSyncAnchorType)"];
    [v3 handleFailureInFunction:v4 file:@"HDSyncAnchorEntity.m" lineNumber:95 description:{@"Invalid anchor type %ld", a1}];
  }

  else
  {
    v2 = qword_229181610[a1];
  }
}

void _HDSyncAnchorUpdateDatePropertyForType(unint64_t a1)
{
  if (a1 >= 6)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _HDSyncAnchorUpdateDatePropertyForType(HDSyncAnchorType)"];
    [v3 handleFailureInFunction:v4 file:@"HDSyncAnchorEntity.m" lineNumber:83 description:{@"Invalid anchor type %ld", a1}];
  }

  else
  {
    v2 = off_27862CAD8[a1];
  }
}

void sub_22905FC80(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x378], 8);
  _Block_object_dispose(&STACK[0x398], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x3F8], 8);
  _Block_object_dispose(&STACK[0x418], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__183(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229061870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableRacingClusterReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 20)
        {
          switch(v13)
          {
            case 0x15:
              v16 = objc_alloc_init(HDCodableRacingMetrics);
              v17 = 24;
LABEL_51:
              objc_storeStrong((a1 + v17), v16);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !HDCodableRacingMetricsReadFrom(v16, a2))
              {
                goto LABEL_95;
              }

LABEL_58:
              PBReaderRecallMark();
LABEL_59:

              goto LABEL_93;
            case 0x1E:
              v34 = 0;
              v35 = 0;
              v36 = 0;
              *(a1 + 100) |= 8u;
              while (1)
              {
                LOBYTE(v45) = 0;
                v37 = [a2 position] + 1;
                if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
                {
                  v39 = [a2 data];
                  [v39 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v36 |= (v45 & 0x7F) << v34;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v34 += 7;
                v11 = v35++ >= 9;
                if (v11)
                {
                  LOBYTE(v40) = 0;
                  goto LABEL_90;
                }
              }

              v40 = (v36 != 0) & ~[a2 hasError];
LABEL_90:
              *(a1 + 96) = v40;
              goto LABEL_93;
            case 0x64:
              v16 = PBReaderReadData();
              if (v16)
              {
                [a1 addEligibleClusterUUIDs:v16];
              }

              goto LABEL_59;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v18 = PBReaderReadString();
              v19 = 56;
              goto LABEL_55;
            case 8:
              v16 = objc_alloc_init(HDCodableSyncIdentity);
              objc_storeStrong((a1 + 72), v16);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
              {
LABEL_95:

                return 0;
              }

              goto LABEL_58;
            case 0x14:
              v16 = objc_alloc_init(HDCodableRacingMetrics);
              v17 = 48;
              goto LABEL_51;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              LOBYTE(v45) = 0;
              v23 = [a2 position] + 1;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
              {
                v25 = [a2 data];
                [v25 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v22 |= (v45 & 0x7F) << v20;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v11 = v21++ >= 9;
              if (v11)
              {
                v26 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v22;
            }

LABEL_83:
            v41 = 32;
            goto LABEL_88;
          case 5:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              LOBYTE(v45) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v45 & 0x7F) << v28;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v26 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v30;
            }

LABEL_87:
            v41 = 16;
LABEL_88:
            *(a1 + v41) = v26;
            goto LABEL_93;
          case 6:
            v18 = PBReaderReadData();
            v19 = 64;
LABEL_55:
            v27 = *(a1 + v19);
            *(a1 + v19) = v18;

            goto LABEL_93;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v18 = PBReaderReadData();
            v19 = 80;
            goto LABEL_55;
          case 2:
            v18 = PBReaderReadData();
            v19 = 88;
            goto LABEL_55;
          case 3:
            *(a1 + 100) |= 1u;
            v45 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v45;
            goto LABEL_93;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_93:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_229065694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229066680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__185(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229068A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_229068D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229069A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22906B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22906C8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22906D920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22906F8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2290700E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_229070694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"%@"];
    [(HDWorkoutSessionServer *)v9 _queue_generateError:v11];
    v12 = v11;
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    objc_end_catch();
    JUMPOUT(0x22907037CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_229070ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_229074738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableWorkoutZoneReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
LABEL_48:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_64;
          }

          *(a1 + 48) |= 4u;
          v40 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v40;
          v37 = 24;
          goto LABEL_63;
        }

        v31 = PBReaderReadString();
        v32 = *(a1 + 40);
        *(a1 + 40) = v31;
      }

      else
      {
        switch(v13)
        {
          case 3:
            *(a1 + 48) |= 1u;
            v40 = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v40;
            v37 = 8;
LABEL_63:
            *(a1 + v37) = v36;
            goto LABEL_64;
          case 4:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v40 & 0x7F) << v25;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_53;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v27;
            }

LABEL_53:
            v34 = 16;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v40 & 0x7F) << v14;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_57;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_57:
            v34 = 32;
            break;
          default:
            goto LABEL_48;
        }

        *(a1 + v34) = v20;
      }

LABEL_64:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__186(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22907DF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

__CFString *HDDataAggregationRequestModeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"exclusive";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = @"inclusive";
  }

  return v2;
}

void sub_229081AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HDConceptAuthorizationEntityPredicateForHealthConceptIdentifiers(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = HDConceptAuthorizationEntityPredicateForHealthConceptIdentifier(*(*(&v12 + 1) + 8 * i), 1);
        [v2 addObject:{v8, v12}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id HDConceptAuthorizationEntityPredicateForHealthConceptIdentifier(void *a1, char a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = a1;
  v5 = [v4 domain];
  v6 = [v3 predicateWithProperty:@"concept_identifier_domain" equalToValue:v5];

  v7 = MEMORY[0x277D10B18];
  v8 = [v4 underlyingIdentifier];

  v9 = [v7 predicateWithProperty:@"concept_identifier_underlying_identifier" equalToValue:v8];

  v10 = MEMORY[0x277D10B20];
  v17[0] = v6;
  v17[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = [MEMORY[0x277D10B20] negatedPredicate:v12];
  }

  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_229088608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDConceptAuthorizationEntityPredicateForStatus(uint64_t a1, int a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v3 predicateWithProperty:@"status" value:v4 comparisonType:v5];

  return v6;
}

uint64_t __Block_byref_object_copy__187(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDConceptAuthorizationEntityPredicateForSemanticIdentifierString(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"semantic_identifier_string" value:a1 comparisonType:v2];
}

void sub_22908989C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__188(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229089EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22908A0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22908A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22908ADCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose((v72 - 248), 8);
  _Block_object_dispose((v72 - 200), 8);
  _Block_object_dispose((v72 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_22908B2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22908BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v44 - 232), 8);
  _Block_object_dispose((v44 - 200), 8);
  _Block_object_dispose((v44 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22908C390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22908CED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22908FA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__189(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22909163C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

id HDLogicalOrderSourceEntityPredicateWithDataType(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "code")}];
  v3 = [v1 predicateWithProperty:@"data_type" equalToValue:v2];

  return v3;
}

id HDLogicalOrderSourceEntityPredicateWithSourceIDs(uint64_t a1)
{
  v1 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"sources.ROWID" values:a1];
  v2 = [MEMORY[0x277D10B18] predicateWithProperty:@"sources.deleted" notEqualToValue:MEMORY[0x277CBEC38]];
  v3 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v1 otherPredicate:v2];

  return v3;
}

uint64_t HDCodableSectionDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            v43 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v43 & 0x7F) << v28;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_61;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }

LABEL_61:
          v38 = 24;
LABEL_68:
          *(a1 + v38) = v27;
          break;
        case 4:
          *(a1 + 44) |= 2u;
          v41 = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 16) = v41;
          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            v45 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v45 & 0x7F) << v14;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_63;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_63:
          *(a1 + 40) = v20;
          break;
        default:
          goto LABEL_56;
      }

LABEL_71:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v36 = PBReaderReadString();
      if (v36)
      {
        [a1 addStringValues:v36];
      }

      goto LABEL_71;
    }

    if (v13 != 2)
    {
LABEL_56:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_71;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 44) |= 1u;
    while (1)
    {
      v44 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v44 & 0x7F) << v21;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        v27 = 0;
        goto LABEL_67;
      }
    }

    if ([a2 hasError])
    {
      v27 = 0;
    }

    else
    {
      v27 = v23;
    }

LABEL_67:
    v38 = 8;
    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMedicalIDMedicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HDStringFromHDHFDDatabaseFailureType(uint64_t a1)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          v2 = @"systemException";

          break;
        case 11:
          v2 = @"notFoundError";

          break;
        case 100:
          v2 = @"unknownException";

          break;
        default:
LABEL_50:
          v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown failure type (%ld)", a1];

          return v2;
      }
    }

    else if (a1 == 7)
    {
      v2 = @"logicError";
    }

    else if (a1 == 8)
    {
      v2 = @"runtimeError";
    }

    else
    {
      v2 = @"ioException";
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      v2 = @"BTreeCorruption";
    }

    else if (a1 == 5)
    {
      v2 = @"OutOfRangeError";
    }

    else
    {
      v2 = @"OtherException - historical";
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v2 = @"corruption";

        break;
      case 2:
        v2 = @"transactionError";

        break;
      case 3:
        v2 = @"fileAccessError";

        return v2;
      default:
        goto LABEL_50;
    }
  }

  return v2;
}

void sub_22909519C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290964A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229097730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290A1F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__192(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290A3218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290A4B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2290A5258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2290A56A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSleepScheduleEntityPredicateForWeekday(uint64_t a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277D10B18];
    v2 = _PropertyForWeekday(a1);
    [v1 predicateWithProperty:v2 value:MEMORY[0x277CBEC38] comparisonType:1];
  }

  else
  {
    v3 = *MEMORY[0x277CCCDD0];
    v4 = HKSleepScheduleWeekdayArrayFromWeekdays();
    v2 = [v4 hk_map:&__block_literal_global_232];

    [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v2];
  }
  v5 = ;

  return v5;
}

__CFString *_PropertyForWeekday(uint64_t a1)
{
  if ((HKSleepScheduleWeekdaysIsSingleDay() & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nullable _PropertyForWeekday(HKSleepScheduleWeekdays)"];
    [v7 handleFailureInFunction:v8 file:@"HDSleepScheduleEntity.m" lineNumber:172 description:{@"Only one weekday can be converted to property: %ld", a1}];
  }

  v2 = @"saturday";
  v3 = @"sunday";
  if (a1 != 64)
  {
    v3 = 0;
  }

  if (a1 != 32)
  {
    v2 = v3;
  }

  v4 = @"friday";
  if (a1 != 16)
  {
    v4 = 0;
  }

  if (a1 == 8)
  {
    v4 = @"thursday";
  }

  if (a1 <= 31)
  {
    v2 = v4;
  }

  v5 = @"wednesday";
  if (a1 != 4)
  {
    v5 = 0;
  }

  if (a1 == 2)
  {
    v5 = @"tuesday";
  }

  if (a1 == 1)
  {
    v5 = @"monday";
  }

  if (a1 <= 7)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

id __HDSleepScheduleEntityPredicateForWeekday_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _PropertyForWeekday([a2 integerValue]);
  v4 = [v2 predicateWithProperty:v3 value:MEMORY[0x277CBEC28] comparisonType:1];

  return v4;
}

id HDSleepScheduleEntityPredicateForWeekdayBeforeDate(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B20];
  v4 = a2;
  v5 = HDSleepScheduleEntityPredicateForWeekday(a1);
  v11[0] = v5;
  v6 = HDSampleEntityPredicateForStartDate(3);

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 predicateMatchingAllPredicates:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_2290ABAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _HDSampleHistoryDescriptionForObjectType@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 14;
  strcpy(a2, "Unknown Series");
  if (result > 1)
  {
    if (result == 2)
    {
      v2 = 21;
      *(a2 + 23) = 21;
      v3 = "Quantity Samples (v1)";
LABEL_11:
      *a2 = *v3;
      *(a2 + 13) = *(v3 + 13);
      goto LABEL_12;
    }

    if (result != 3)
    {
      return result;
    }

    v2 = 20;
    *(a2 + 23) = 20;
    *(a2 + 16) = 691172904;
    v4 = "Location Series (v2)";
  }

  else
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v2 = 21;
      *(a2 + 23) = 21;
      v3 = "Quantity Samples (v0)";
      goto LABEL_11;
    }

    v2 = 20;
    *(a2 + 23) = 20;
    *(a2 + 16) = 691107368;
    v4 = "Location Series (v1)";
  }

  *a2 = *v4;
LABEL_12:
  *(a2 + v2) = 0;
  return result;
}

uint64_t HDCodableFitnessFriendWorkoutReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v68[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v68[0] & 0x7F) << v5;
        if ((v68[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = objc_alloc_init(HDCodableSample);
          objc_storeStrong((a1 + 120), v13);
          v68[0] = 0;
          v68[1] = 0;
          if (PBReaderPlaceMark() && HDCodableSampleReadFrom(v13, a2))
          {
            PBReaderRecallMark();

            goto LABEL_122;
          }

          return 0;
        case 2u:
          v14 = PBReaderReadData();
          v15 = 112;
          goto LABEL_89;
        case 3u:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 144) |= 0x200u;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v68[0] & 0x7F) << v35;
            if ((v68[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v37;
          }

LABEL_101:
          v58 = 80;
          goto LABEL_110;
        case 5u:
          *(a1 + 144) |= 2u;
          v68[0] = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v60 = v68[0];
          v61 = 16;
          goto LABEL_121;
        case 6u:
          *(a1 + 144) |= 0x100u;
          v68[0] = 0;
          v23 = [a2 position] + 8;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v60 = v68[0];
          v61 = 72;
          goto LABEL_121;
        case 7u:
          *(a1 + 144) |= 0x40u;
          v68[0] = 0;
          v25 = [a2 position] + 8;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v60 = v68[0];
          v61 = 56;
          goto LABEL_121;
        case 8u:
          *(a1 + 144) |= 0x80u;
          v68[0] = 0;
          v41 = [a2 position] + 8;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v60 = v68[0];
          v61 = 64;
          goto LABEL_121;
        case 9u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 144) |= 8u;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v68[0] & 0x7F) << v43;
            if ((v68[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v45;
          }

LABEL_105:
          v58 = 32;
          goto LABEL_110;
        case 0xAu:
          *(a1 + 144) |= 4u;
          v68[0] = 0;
          v55 = [a2 position] + 8;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v60 = v68[0];
          v61 = 24;
LABEL_121:
          *(a1 + v61) = v60;
          goto LABEL_122;
        case 0xBu:
          v14 = PBReaderReadString();
          v15 = 88;
          goto LABEL_89;
        case 0xCu:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 144) |= 0x20u;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v68[0] & 0x7F) << v16;
            if ((v68[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_93;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_93:
          v58 = 48;
          goto LABEL_110;
        case 0xDu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 144) |= 0x10u;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v68[0] & 0x7F) << v27;
            if ((v68[0] & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_97;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v29;
          }

LABEL_97:
          v58 = 40;
          goto LABEL_110;
        case 0xEu:
          v14 = PBReaderReadString();
          v15 = 96;
          goto LABEL_89;
        case 0xFu:
          v14 = PBReaderReadString();
          v15 = 104;
          goto LABEL_89;
        case 0x10u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 144) |= 1u;
          break;
        case 0x11u:
          v14 = PBReaderReadString();
          v15 = 128;
          goto LABEL_89;
        case 0x12u:
          v14 = PBReaderReadString();
          v15 = 136;
LABEL_89:
          v57 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_122;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_122;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v68[0]) = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v68[0] & 0x7F) << v49;
        if ((v68[0] & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_109;
        }
      }

      v22 = [a2 hasError] ? 0 : v51;
LABEL_109:
      v58 = 8;
LABEL_110:
      *(a1 + v58) = v22;
LABEL_122:
      v66 = [a2 position];
    }

    while (v66 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2290B04D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__193(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290B1874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2290B26F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290B3BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableClinicalContactReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 6)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_27862E480[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HKStringFromStateSyncMergeResult(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    v2 = off_27862E4B0[a1];
  }

  return v2;
}

uint64_t HDCodableWorkoutZonesAssociationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadData();
        v15 = 24;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 16;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(HDCodableSyncIdentity);
    objc_storeStrong((a1 + 8), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_2290C0A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__195(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290C3850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290C43A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__196(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromHDProtectedDataOperationState(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"HDProtectedDataOperationStateUnknown-%ld", a1];
  }

  else
  {
    v2 = off_27862E710[a1 - 1];
  }

  return v2;
}

uint64_t HDCodableAuthorizationRequestMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v46) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 9)
      {
        if (v14 == 10)
        {
          if (v13 != 2)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v46 & 0x7F) << v39;
              if ((v46 & 0x80) == 0)
              {
                goto LABEL_76;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                goto LABEL_77;
              }
            }
          }

          v46 = 0;
          v47 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v26 = [a2 position];
            if (v26 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_57;
            }

            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              v48 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v48 & 0x7F) << v27;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                goto LABEL_56;
              }
            }

            [a2 hasError];
LABEL_56:
            PBRepeatedInt64Add();
          }
        }

        if (v14 == 11)
        {
          if (v13 != 2)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v46 & 0x7F) << v33;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                goto LABEL_77;
              }
            }

LABEL_76:
            [a2 hasError];
LABEL_77:
            PBRepeatedInt64Add();
            goto LABEL_78;
          }

          v46 = 0;
          v47 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v18 = [a2 position];
            if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v19 = 0;
            v20 = 0;
            v21 = 0;
            while (1)
            {
              v48 = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v48 & 0x7F) << v19;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                goto LABEL_37;
              }
            }

            [a2 hasError];
LABEL_37:
            PBRepeatedInt64Add();
          }

LABEL_57:
          PBReaderRecallMark();
          goto LABEL_78;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_41;
        }

        if (v14 == 2)
        {
          v15 = PBReaderReadData();
          v16 = 64;
LABEL_41:
          v25 = *(a1 + v16);
          *(a1 + v16) = v15;

          goto LABEL_78;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2290CA43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__197(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

HDKeyValueDomain *HDMirroredWorkoutSessionKeyValueDomainWithProfile(void *a1)
{
  v1 = a1;
  v2 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"MirroredWorkoutSession" profile:v1];

  return v2;
}

uint64_t HDCodableWorkoutSessionGlobalStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v20 = objc_alloc_init(HDCodableWorkoutActivity);
            objc_storeStrong((a1 + 56), v20);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !HDCodableWorkoutActivityReadFrom(v20, a2))
            {
LABEL_86:

              return 0;
            }

            goto LABEL_63;
          }

          if (v13 == 8)
          {
            v20 = objc_alloc_init(HDCodableWorkoutEvent);
            [a1 addEvents:v20];
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !HDCodableWorkoutEventReadFrom(v20, a2))
            {
              goto LABEL_86;
            }

LABEL_63:
            PBReaderRecallMark();

            goto LABEL_84;
          }
        }

        else
        {
          if (v13 == 5)
          {
            *(a1 + 72) |= 0x20u;
            v45 = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v38 = v45;
            v39 = 48;
            goto LABEL_83;
          }

          if (v13 == 6)
          {
            *(a1 + 72) |= 1u;
            v45 = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v38 = v45;
            v39 = 8;
            goto LABEL_83;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v45 & 0x7F) << v30;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v32;
          }

LABEL_73:
          v36 = 32;
          goto LABEL_74;
        }

        if (v13 == 4)
        {
          *(a1 + 72) |= 0x10u;
          v45 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v38 = v45;
          v39 = 40;
          goto LABEL_83;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_69:
          v36 = 16;
LABEL_74:
          *(a1 + v36) = v27;
          goto LABEL_84;
        }

        if (v13 == 2)
        {
          *(a1 + 72) |= 4u;
          v45 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v38 = v45;
          v39 = 24;
LABEL_83:
          *(a1 + v39) = v38;
          goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_84:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2290CE95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 std::deque<HDQuantitySampleAttenuationEngineSample>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 102 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x66)
    {
      v10 = a1[3];
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17 = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v12);
    }

    a1[4] = v8 - 102;
    *&v16 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(a1, &v16);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v9 / 0x66)] + 40 * (v9 % 0x66);
  result = *a2;
  v15 = *(a2 + 16);
  *(v13 + 32) = *(a2 + 32);
  *v13 = result;
  *(v13 + 16) = v15;
  ++a1[5];
  return result;
}

void sub_2290CF660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<HDQuantitySampleAttenuationEngineSample>::__append_with_size[abi:ne200100]<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>>(void *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = (v9 - v8) >> 3;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 102 * v10 - 1;
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = v12 + v13;
  v15 = v11 - (v12 + v13);
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (v17 != 0 && v16)
  {
    if (v9 == v8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v17;
    }

    if (v18 % 0x66)
    {
      v19 = v18 / 0x66 + 1;
    }

    else
    {
      v19 = v18 / 0x66;
    }

    if (v19 >= v13 / 0x66)
    {
      v20 = v13 / 0x66;
    }

    else
    {
      v20 = v19;
    }

    if (v19 <= v13 / 0x66)
    {
      for (a1[4] = v13 - 102 * v20; v20; --v20)
      {
        v26 = a1[1];
        v40 = *v26;
        a1[1] = v26 + 1;
        std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(a1, &v40);
      }
    }

    else
    {
      v21 = v19 - v20;
      v22 = a1[3] - *a1;
      if (v19 - v20 > (v22 >> 3) - v10)
      {
        v23 = v22 >> 2;
        if (v23 <= v21 + v10)
        {
          v24 = v21 + v10;
        }

        else
        {
          v24 = v23;
        }

        v25 = v10 - v20;
        v43 = a1;
        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v24);
        }

        v40 = 0;
        v41 = 8 * v25;
        v42 = 8 * v25;
        operator new();
      }

      if (v21)
      {
        if (a1[3] != a1[2])
        {
          operator new();
        }

        operator new();
      }

      for (a1[4] = v13 - 102 * v20; v20; --v20)
      {
        v27 = a1[1];
        v40 = *v27;
        a1[1] = v27 + 1;
        std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(a1, &v40);
      }
    }

    v12 = a1[5];
    v8 = a1[1];
    v9 = a1[2];
    v14 = a1[4] + v12;
  }

  v28 = (v8 + 8 * (v14 / 0x66));
  if (v9 == v8)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = *v28 + 40 * (v14 % 0x66);
    v30 = v29;
  }

  v40 = (v8 + 8 * (v14 / 0x66));
  v41 = v30;
  result = std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>::operator+=[abi:ne200100](&v40, a4);
  v32 = v41;
  if (v29 != v41)
  {
    v33 = v40;
    do
    {
      if (v28 == v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = *v28 + 4080;
      }

      if (v29 == v34)
      {
        v34 = v29;
      }

      else
      {
        v35 = v29;
        do
        {
          v36 = *a3;
          v37 = a3[1];
          *(v35 + 32) = *(a3 + 4);
          *v35 = v36;
          *(v35 + 16) = v37;
          a3 = (a3 + 40);
          if ((a3 - *a2) == 4080)
          {
            v38 = a2[1];
            ++a2;
            a3 = v38;
          }

          v35 += 40;
        }

        while (v35 != v34);
        v12 = a1[5];
      }

      v12 -= 0x3333333333333333 * ((v34 - v29) >> 3);
      a1[5] = v12;
      if (v28 == v33)
      {
        break;
      }

      v39 = v28[1];
      ++v28;
      v29 = v39;
    }

    while (v39 != v32);
  }

  return result;
}

void sub_2290D0468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>,std::__copy_impl::_CopySegment<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>,std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>>>(void *a1, _BYTE *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  v5 = a5;
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = a4;
  }

  else
  {
    v10 = a3;
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const*,std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>,0>(&v26, a2, (*a1 + 4080), *a5, *(a5 + 8));
    *v5 = v27;
    v12 = *v5;
    v13 = v5[1];
    if (v11 != v10)
    {
      v24 = a4;
      v25 = v5;
      do
      {
        v14 = v10;
        v15 = 0;
        v16 = *v11;
        v18 = *v12++;
        v17 = v18;
        while (1)
        {
          v19 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v13 + 4080) >> 3);
          if ((0xCCCCCCCCCCCCCCCDLL * ((4080 - v15) >> 3)) < v19)
          {
            v19 = 0xCCCCCCCCCCCCCCCDLL * ((4080 - v15) >> 3);
          }

          v20 = 5 * v19;
          v21 = 40 * v19;
          if (v19)
          {
            memmove(v13, &v16[v15], 40 * v19);
          }

          v15 += 8 * v20;
          if (v15 == 4080)
          {
            break;
          }

          v22 = *v12++;
          v17 = v22;
          v13 = v22;
        }

        v13 = (v13 + v21);
        if (*(v12 - 1) + 4080 == v13)
        {
          v13 = *v12;
        }

        else
        {
          --v12;
        }

        v10 = v14;
        v5 = v25;
        *v25 = v12;
        v25[1] = v13;
        ++v11;
      }

      while (v11 != v10);
      a4 = v24;
    }

    a2 = *v11;
    v9 = a4;
    v7 = v12;
    v8 = v13;
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const*,std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>,0>(&v26, a2, v9, v7, v8);
  result = *&v27;
  *v5 = v27;
  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const*,std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4080) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((a3 - v9) >> 3)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v9) >> 3);
      }

      v12 = 5 * v11;
      v13 = 40 * v11;
      if (v11)
      {
        result = memmove(__dst, v9, 40 * v11);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4080 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

uint64_t std::deque<HDQuantitySampleAttenuationEngineSample>::~deque[abi:ne200100](void *a1)
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
    v5 = 51;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 102;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::__thread_id *>::~__split_buffer(a1);
}

void sub_2290D12D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDAttachmentReferencePredicateForUnsynchronizedReferences()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D10B18] predicateWithProperty:@"type" equalToValue:&unk_283CB4080];
  v1 = [MEMORY[0x277D10B18] predicateWithProperty:@"cloud_status" equalToValue:&unk_283CB4080];
  v2 = MEMORY[0x277D10B20];
  v7[0] = v0;
  v7[1] = v1;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 predicateMatchingAllPredicates:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id HDAttachmentReferencePredicateForUnsynchronizedTombstones()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D10B18] predicateWithProperty:@"type" equalToValue:&unk_283CB4098];
  v1 = [MEMORY[0x277D10B18] predicateWithProperty:@"cloud_status" equalToValue:&unk_283CB4080];
  v2 = MEMORY[0x277D10B20];
  v7[0] = v0;
  v7[1] = v1;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 predicateMatchingAllPredicates:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id HDAttachmentReferencePredicateForObjectAndSchemaIdentifier(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = a2;
  v5 = [v3 predicateWithProperty:@"object_identifier" equalToValue:a1];
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_identifier" equalToValue:v4];

  v7 = MEMORY[0x277D10B20];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v7 predicateMatchingAllPredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id HDAttachmentReferencePredicateForNonTombstoneAttachmentIdentifier(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277D10B18] predicateWithProperty:@"attachment_identifier" equalToValue:a1];
  v2 = [MEMORY[0x277D10B18] predicateWithProperty:@"type" notEqualToValue:&unk_283CB4098];
  v3 = MEMORY[0x277D10B20];
  v8[0] = v1;
  v8[1] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v3 predicateMatchingAllPredicates:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_2290D7378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290D77E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__199(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290DBA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__200(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290DCC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290DFFD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x2290DFBFCLL);
  }

  _Unwind_Resume(a1);
}

void sub_2290E0000(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x2290E000CLL);
}

void sub_2290E3084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290E3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2290E4770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__201(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableObjectAssociationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadData();
        v15 = 16;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 8;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(HDCodableSyncIdentity);
    objc_storeStrong((a1 + 24), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession(void *a1)
{
  v1 = a1;
  v2 = [v1 syncStore];
  v3 = [v2 profile];
  v4 = [v3 daemon];
  v5 = [v4 behavior];
  v6 = [v5 isCompanionCapable];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v1 syncStore];
  v8 = [v7 syncStoreType];

  if (v8 != 1)
  {
    goto LABEL_5;
  }

  v9 = [v1 syncStore];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [v1 syncStore];
    v12 = [v11 remoteDeviceSupportsUSLegallyCompliantOxygenSaturation];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

void sub_2290EE628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__202(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDQuantitySampleStatisticsEntityPredicateForMinValue(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"min";
  v9[1] = @"quantity";
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [MEMORY[0x277D10B18] predicateWithCoalescedProperties:v5 value:v4 comparisonType:a1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id HDQuantitySampleStatisticsEntityPredicateForMaxValue(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"max";
  v9[1] = @"quantity";
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [MEMORY[0x277D10B18] predicateWithCoalescedProperties:v5 value:v4 comparisonType:a1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id HDQuantitySampleStatisticsEntityPredicateForMostRecentValue(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"most_recent";
  v9[1] = @"quantity";
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [MEMORY[0x277D10B18] predicateWithCoalescedProperties:v5 value:v4 comparisonType:a1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id HDQuantitySampleStatisticsEntityPredicateForMostRecentStartDate(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"most_recent_date";
  v9[1] = @"start_date";
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [MEMORY[0x277D10B18] predicateWithCoalescedProperties:v5 value:v4 comparisonType:a1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id HDQuantitySampleStatisticsEntityPredicateForMostRecentEndDate(uint64_t a1, void *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity];
  v5 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity];
  v6 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v7 = HDSQLOperatorForComparisonType();
  v8 = [v2 stringWithFormat:@"(IFNULL((%@.%@ + %@.%@), %@.%@) %@ ?)", v4, @"most_recent_date", v5, @"most_recent_duration", v6, @"end_date", v7];

  v16[0] = @"most_recent_date";
  v16[1] = @"most_recent_duration";
  v16[2] = @"end_date";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v10 = MEMORY[0x277D10B90];
  v15 = v3;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 predicateWithSQL:v8 overProperties:v9 values:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id HDQuantitySampleStatisticsEntityPredicateForMostRecentDuration(uint64_t a1, void *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity];
  v5 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v6 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v7 = HDSQLOperatorForComparisonType();
  v8 = [v2 stringWithFormat:@"(IFNULL(%@.%@, (%@.%@ - %@.%@)) %@ ?)", v4, @"most_recent_duration", v5, @"end_date", v6, @"start_date", v7];

  v16[0] = @"most_recent_duration";
  v16[1] = @"end_date";
  v16[2] = @"start_date";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v10 = MEMORY[0x277D10B90];
  v15 = v3;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 predicateWithSQL:v8 overProperties:v9 values:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_2290F110C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromPeriodicActivityResult(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_27862F348[a1];
  }

  return v2;
}

id HDECGEntityPredicateForPrivateClassification(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v5 = _HDSQLiteValueForNumber();
  if (a2)
  {
    [v3 predicateWithProperty:@"private_classification" equalToValue:v5];
  }

  else
  {
    [v3 predicateWithProperty:@"private_classification" notEqualToValue:v5];
  }
  v6 = ;

  return v6;
}

id HDECGEntityPredicateForPublicClassification(uint64_t a1, int a2)
{
  v2 = &unk_283CB0360;
  if (a1 <= 3)
  {
    v3 = &unk_283CB0378;
    v4 = &unk_283CB0390;
    v6 = &unk_283CB03A8;
    if (a1 != 3)
    {
      v6 = &unk_283CB0360;
    }

    if (a1 != 2)
    {
      v4 = v6;
    }

    v5 = a1 == 1;
    goto LABEL_11;
  }

  if (a1 <= 5)
  {
    v3 = &unk_283CB03C0;
    v4 = &unk_283CB03D8;
    if (a1 != 5)
    {
      v4 = &unk_283CB0360;
    }

    v5 = a1 == 4;
LABEL_11:
    if (v5)
    {
      v2 = v3;
    }

    else
    {
      v2 = v4;
    }

LABEL_14:
    if ((a2 & 1) == 0)
    {
      v9 = [MEMORY[0x277D10B20] predicateWithProperty:@"private_classification" notEqualToValues:v2];
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (a1 == 6)
  {
    v2 = &unk_283CB03F0;
    goto LABEL_14;
  }

  if (a1 != 100)
  {
    goto LABEL_14;
  }

  v2 = &unk_283CB0408;
  if (a2)
  {
LABEL_15:
    if (a1 == 100)
    {
      v7 = 5;
    }

    else
    {
      v7 = 1;
    }

    v8 = MEMORY[0x277D10B20];
    goto LABEL_24;
  }

  v8 = MEMORY[0x277D10B20];
  v7 = 4;
LABEL_24:
  v9 = [v8 predicateWithProperty:@"private_classification" values:v2 comparisonType:v7];
LABEL_25:

  return v9;
}

id HDECGEntityPredicateForAverageHeartRate(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = MEMORY[0x277CCABB0];
  v5 = MEMORY[0x277CCDAB0];
  v6 = a2;
  v7 = [v5 _countPerMinuteUnit];
  [v6 doubleValueForUnit:v7];
  v9 = v8;

  v10 = [v4 numberWithDouble:v9];
  v11 = [v3 predicateWithProperty:@"average_heart_rate" value:v10 comparisonType:a1];

  return v11;
}

id HDECGEntityPredicateForSymptomsStatus(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = _HDSQLiteValueForNumber();
  if (a2)
  {
    [v3 predicateWithProperty:@"symptoms_status" equalToValue:v5];
  }

  else
  {
    [v3 predicateWithProperty:@"symptoms_status" notEqualToValue:v5];
  }
  v6 = ;

  return v6;
}

void sub_2290F46C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__203(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290F50A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290F56E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290F6DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2290F8160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableObjectTypeSourceOrderReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v22 = PBReaderReadData();
        v23 = *(a1 + 40);
        *(a1 + 40) = v22;

        goto LABEL_68;
      }

      if (v13 == 4)
      {
        if ((v12 & 7) == 2)
        {
          v40 = 0;
          v41 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v25 = [a2 position];
            if (v25 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v42 = 0;
            v26 = [a2 position] + 8;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedDoubleAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          v40 = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedDoubleAdd();
        }

        goto LABEL_68;
      }

      if (v13 != 5)
      {
        goto LABEL_54;
      }

      v14 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 48), v14);
      v40 = 0;
      v41 = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_68:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        LOBYTE(v40) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v40 & 0x7F) << v29;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_59:
      *(a1 + 32) = v35;
      goto LABEL_68;
    }

    if (v13 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 60) |= 2u;
      while (1)
      {
        LOBYTE(v40) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v40 & 0x7F) << v15;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          LOBYTE(v21) = 0;
          goto LABEL_61;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_61:
      *(a1 + 56) = v21;
      goto LABEL_68;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

void sub_2290FEAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2290FF104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_2290FF5F8(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__erase_unique<long>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *a1;
  v6 = *(*a1 + 8 * v4);
  if (!v6)
  {
    return;
  }

  v7 = *v6;
  if (!v7)
  {
    return;
  }

  v8 = *&v2 - 1;
  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v9 >= *&v2)
      {
        v9 %= *&v2;
      }
    }

    else
    {
      v9 &= v8;
    }

    if (v9 != v4)
    {
      return;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      return;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  v10 = *v7;
  if (v3.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= v8;
  }

  v11 = *(v5 + 8 * v9);
  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 != v7);
  if (v12 == a1 + 2)
  {
    goto LABEL_36;
  }

  v13 = v12[1];
  if (v3.u32[0] > 1uLL)
  {
    if (v13 >= *&v2)
    {
      v13 %= *&v2;
    }
  }

  else
  {
    v13 &= v8;
  }

  if (v13 == v9)
  {
LABEL_38:
    if (v10)
    {
      v14 = v10[1];
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
    if (!v10)
    {
      goto LABEL_37;
    }

    v14 = v10[1];
    if (v3.u32[0] > 1uLL)
    {
      v15 = v10[1];
      if (v14 >= *&v2)
      {
        v15 = v14 % *&v2;
      }
    }

    else
    {
      v15 = v14 & v8;
    }

    if (v15 != v9)
    {
LABEL_37:
      *(v5 + 8 * v9) = 0;
      v10 = *v7;
      goto LABEL_38;
    }

LABEL_40:
    if (v3.u32[0] > 1uLL)
    {
      if (v14 >= *&v2)
      {
        v14 %= *&v2;
      }
    }

    else
    {
      v14 &= v8;
    }

    if (v14 != v9)
    {
      *(*a1 + 8 * v14) = v12;
      v10 = *v7;
    }
  }

  *v12 = v10;
  *v7 = 0;
  --a1[3];
  operator delete(v7);
}

uint64_t HDCodableMedicalUserDomainConceptReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        if ((v12 & 7) == 2)
        {
          v30[0] = 0;
          v30[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v31 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v31 & 0x7F) << v17;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_34;
              }
            }

            [a2 hasError];
LABEL_34:
            PBRepeatedInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v30[0] & 0x7F) << v23;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              goto LABEL_48;
            }
          }

          [a2 hasError];
LABEL_48:
          PBRepeatedInt64Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 32);
        *(a1 + 32) = v13;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_229105280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__205(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229106164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229106B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229107FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229108790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__206(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDCachedQueryMetadataEntityAllProperties()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[0] = @"query_identifier";
  v3[1] = @"source_id";
  v3[2] = @"generation_number";
  v3[3] = @"max_anchor";
  v3[4] = @"last_query_start_index";
  v3[5] = @"last_query_end_index";
  v3[6] = @"last_updated_date";
  v3[7] = @"creation_date";
  v3[8] = @"build_version";
  v3[9] = @"anchor_date";
  v3[10] = @"interval_components";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_22910C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDCachedQueryMetadataEntityPredicateForQueryIdentifierAndSource(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = a2;
  v5 = [v3 predicateWithProperty:@"query_identifier" equalToValue:a1];
  v6 = MEMORY[0x277D10B18];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 persistentID];

  v9 = [v7 numberWithLongLong:v8];
  v10 = [v6 predicateWithProperty:@"source_id" equalToValue:v9];

  v11 = MEMORY[0x277D10B20];
  v16[0] = v5;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 predicateMatchingAllPredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __Block_byref_object_copy__207(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22910C9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22910CBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22910CF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableTinkerOptInResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(HDCodableError);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HDQuantitySampleEntityPredicateForQuantity(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForNumber();
  v4 = [v2 predicateWithProperty:@"quantity" value:v3 comparisonType:a1];

  return v4;
}

void sub_229111438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__208(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2291127A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229114618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v71 - 152), 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

void sub_2291153D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229117B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2291181F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 216), 8);
  _Block_object_dispose((v46 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__209(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22911AC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__210(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x2821A4528](this, a2);
}

{
  return MEMORY[0x2821A4550](this, a2);
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7480](this, a2);
}

{
  return MEMORY[0x2821F7498](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}