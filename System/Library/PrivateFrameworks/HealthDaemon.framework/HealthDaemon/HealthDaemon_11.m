void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 <= 1)
    {
LABEL_5:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
      goto LABEL_13;
    }
  }

  else if (a1 == 2 || a1 == 3 || a1 == 4)
  {
    goto LABEL_5;
  }

  v3 = __cxa_allocate_exception(0x10uLL);
  exception = v3;
  if (a1 == 5)
  {
    std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
  }

LABEL_13:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,char const*>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,char const*>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,char const*>(v22);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_49;
  }

  health::FormatOptions::FormatOptions(&v26, &v30);
  v13 = v30;
  if (*(&v26 + 1))
  {
    if (*(&v26 + 1) == 1)
    {
      v14 = **a4;
      __p = v14;
      if (v14)
      {
        v14 = strlen(v14);
      }

      v32 = v14;
      v33 = v26;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v15 = *(&v27 + 1);
      if (*(&v27 + 1) <= v14)
      {
        v15 = v14;
      }

      if (v27)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      health::FormatImplementation<health::DataStore::ObjectIdentifier &,char const*>(v30, a2, &v16[a3 - v9], a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0];
      }

      health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v26, &v17[a3 - v9], &__p);
      goto LABEL_39;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_49:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, a4[1], &v26);
  v18 = BYTE7(v33);
  if (SBYTE7(v33) < 0)
  {
    v18 = v32;
  }

  v19 = *(&v27 + 1);
  if (*(&v27 + 1) <= v18)
  {
    v19 = v18;
  }

  if (v27)
  {
    v18 = v19;
  }

  health::FormatImplementation<health::DataStore::ObjectIdentifier &,char const*>(v13, a2, &v18[a3 - v9], a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v26, &v20[a3 - v9], &__p);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p);
  }

LABEL_39:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,char const*>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,char const*>(uint64_t a1)
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

void health::FormatImplementation<std::string &,std::string const&>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t *a4)
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
        health::FormatterParameters<0ul,std::string &,std::string const&>::formatOptionsAtIndex<std::string &,std::string const&>(v20);
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
      health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *a4, v24);
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

      health::FormatImplementation<std::string &,std::string const&>(v13, a2, v14 + a3 - v9, a4);
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

  health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, a4[1], v24);
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

  health::FormatImplementation<std::string &,std::string const&>(v13, a2, v17 + a3 - v9, a4);
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

void health::FormatterParameters<0ul,std::string &,std::string const&>::formatOptionsAtIndex<std::string &,std::string const&>(uint64_t a1)
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

void health::FormatImplementation<std::string &,health::BlockPointer &,std::string const&>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,std::string &,health::BlockPointer &,std::string const&>::formatOptionsAtIndex<std::string &,health::BlockPointer &,std::string const&>(v22);
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
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *a4, v26);
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

        health::FormatImplementation<std::string &,health::BlockPointer &,std::string const&>(v13, a2, size + a3 + v9, a4);
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

    health::FormatString<unsigned long long const&,unsigned long long const&>("({0}: {1})", *(a4 + 8), (*(a4 + 8) + 8), &__p);
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

    health::FormatImplementation<std::string &,health::BlockPointer &,std::string const&>(v13, a2, v17 + a3 + v9, a4);
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
    health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 16), v26);
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

    health::FormatImplementation<std::string &,health::BlockPointer &,std::string const&>(v13, a2, v19 + a3 + v9, a4);
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

void health::FormatterParameters<0ul,std::string &,health::BlockPointer &,std::string const&>::formatOptionsAtIndex<std::string &,health::BlockPointer &,std::string const&>(uint64_t a1)
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

void health::FormatString<unsigned long long const&,unsigned long long const&>(std::string *a1@<X0>, void *a2@<X1>, void *a3@<X2>, std::string *a4@<X8>)
{
  v4[0] = a3;
  v4[1] = a2;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  a4->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned long long const&,unsigned long long const&>(a1, a4, 0, v4);
}

void sub_228C7BF84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<unsigned long long const&,unsigned long long const&>(std::string *a1, std::string *this, std::string::size_type __n, void **a4)
{
  v19 = a1;
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
            v19 = &i->__r_.__value_.__s.__data_[2];
            v13 = i->__r_.__value_.__s.__data_[2];
            if ((v13 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v14 = 0;
              v15 = &i->__r_.__value_.__s.__data_[3];
              do
              {
                v19 = v15;
                v14 = (v13 & 0xF) + 10 * v14;
                v16 = *v15++;
                LOBYTE(v13) = v16;
              }

              while ((v16 - 58) >= 0xFFFFFFF6);
              v19 = v15;
              if (*(v15 - 1) == 125)
              {
                health::FormatterParameters<0ul,unsigned long long const&,unsigned long long const&>::formatOptionsAtIndex<unsigned long long const&,unsigned long long const&>(a4, a4, v14);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(v18, &v19);
          health::FormatterParameters<0ul,unsigned long long const&,unsigned long long const&>::formatParameterAtIndex<unsigned long long const&,unsigned long long const&>(a4, a4, v18[1], v18, this, __n - v9, v19);
          if (v9)
          {
            health::CopyFormatSectionToResult(a1, this, __n, -v9, v10 & 1);
          }

          return;
        }

        v10 = 1;
        i = (i + 1);
      }

      v19 = &i->__r_.__value_.__s.__data_[1];
      v6 = i->__r_.__value_.__s.__data_[1];
      --v9;
      if (!v6)
      {
        std::string::resize(this, __n - v9, 0);
        if (v9)
        {

          health::CopyFormatSectionToResult(a1, this, __n, -v9, v10 & 1);
        }

        return;
      }
    }
  }

  std::string::resize(this, __n, 0);
}

void health::FormatterParameters<0ul,unsigned long long const&,unsigned long long const&>::formatOptionsAtIndex<unsigned long long const&,unsigned long long const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    health::FormatterParameters<1ul,unsigned long long const&>::formatOptionsAtIndex<unsigned long long const&,unsigned long long const&>(a1, a2, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<0ul,unsigned long long const&,unsigned long long const&>::formatParameterAtIndex<unsigned long long const&,unsigned long long const&>(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5, uint64_t a6, int a7)
{
  if (a3)
  {

    health::FormatterParameters<1ul,unsigned long long const&>::formatParameterAtIndex<unsigned long long const&,unsigned long long const&>(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    health::TypeFormatter<unsigned long long const&,void>::TypeFormatter(__p, a1[1], a4);
    v11 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v11 = __p[1];
    }

    v12 = *(a4 + 24);
    if (v12 <= v11)
    {
      v12 = v11;
    }

    if (*(a4 + 16))
    {
      v11 = v12;
    }

    health::FormatImplementation<unsigned long long const&,unsigned long long const&>(a7, a5, v11 + a6);
    if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = a5->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(a4, &v13[a6], __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_228C7C388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatterParameters<1ul,unsigned long long const&>::formatOptionsAtIndex<unsigned long long const&,unsigned long long const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {

    health::FormatterParameters<2ul>::formatOptionsAtIndex<unsigned long long const&,unsigned long long const&>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<2ul>::formatOptionsAtIndex<unsigned long long const&,unsigned long long const&>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<1ul,unsigned long long const&>::formatParameterAtIndex<unsigned long long const&,unsigned long long const&>(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5, uint64_t a6, int a7)
{
  if (a3 != 1)
  {

    health::FormatterParameters<2ul>::formatParameterAtIndex<health::FormatterParameters<0ul,unsigned long long const&,unsigned long long const&>>();
  }

  health::TypeFormatter<unsigned long long const&,void>::TypeFormatter(__p, *a1, a4);
  v11 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  v12 = *(a4 + 24);
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (*(a4 + 16))
  {
    v11 = v12;
  }

  health::FormatImplementation<unsigned long long const&,unsigned long long const&>(a7, a5, v11 + a6);
  if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(a4, &v13[a6], __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_228C7C590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatterParameters<2ul>::formatParameterAtIndex<health::FormatterParameters<0ul,unsigned long long const&,unsigned long long const&>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::TypeFormatter<unsigned long long const&,void>::TypeFormatter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v6 = v13;
  if (*(a3 + 16) == 1)
  {
    *(&v15[1] + *(v13 - 24)) = *(a3 + 24);
  }

  if (*(a3 + 32) == 1)
  {
    *(v15 + *(v6 - 24)) = *(a3 + 40);
  }

  v7 = (&v13 + *(v6 - 24));
  v8 = *(a3 + 52);
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v9 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v11);
  }

  v7[1].__fmtflags_ = v8;
  MEMORY[0x22AAC83F0](&v13, *a2);
  std::ostringstream::str[abi:ne200100](&v13, &v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v17);
  return a1;
}

void sub_228C7C870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t HDCodableUserDomainConceptLocalizedStringPropertyReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
        if (v13 == 5)
        {
          v30 = PBReaderReadString();
          v31 = 40;
LABEL_58:
          v39 = *(a1 + v31);
          *(a1 + v31) = v30;

          goto LABEL_72;
        }

        if (v13 == 6)
        {
          v30 = PBReaderReadString();
          v31 = 32;
          goto LABEL_58;
        }

        if (v13 != 7)
        {
LABEL_46:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_72;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 52) |= 8u;
        while (1)
        {
          v47 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v47 & 0x7F) << v16;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_64;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_64:
        *(a1 + 48) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v46 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v46 & 0x7F) << v23;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_62;
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

LABEL_62:
          v40 = 16;
          goto LABEL_69;
        }

        if (v13 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v45 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v45 & 0x7F) << v33;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_68;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v35;
          }

LABEL_68:
          v40 = 24;
LABEL_69:
          *(a1 + v40) = v29;
          goto LABEL_72;
        }

        if (v13 != 3)
        {
          goto LABEL_46;
        }

        *(a1 + 52) |= 1u;
        v43 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v43;
      }

LABEL_72:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCloudSyncCodableSequenceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v57) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v57 & 0x7F) << v5;
      if ((v57 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 108) |= 0x10u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v57 & 0x7F) << v13;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_99:
            *(a1 + 80) = v19;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_99;
      case 2u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 108) |= 0x20u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v57 & 0x7F) << v34;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            LOBYTE(v40) = 0;
            goto LABEL_105;
          }
        }

        v40 = (v36 != 0) & ~[a2 hasError];
LABEL_105:
        *(a1 + 104) = v40;
        goto LABEL_115;
      case 3u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v57 & 0x7F) << v28;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_103;
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

LABEL_103:
        v54 = 24;
        goto LABEL_114;
      case 4u:
        v27 = PBReaderReadData();
        if (v27)
        {
          [a1 addIncludedStoreIdentifiers:v27];
        }

        goto LABEL_91;
      case 5u:
        v27 = objc_alloc_init(HDCodableSyncIdentity);
        [a1 addIncludedSyncIdentities:v27];
        goto LABEL_41;
      case 6u:
        v27 = objc_alloc_init(HDCodableSyncIdentity);
        [a1 addIncludedChildSyncIdentities:v27];
LABEL_41:
        v57 = 0;
        v58 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v27, a2))
        {
          goto LABEL_117;
        }

        goto LABEL_90;
      case 0xAu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 108) |= 8u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v57 & 0x7F) << v41;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v43;
        }

LABEL_109:
        v54 = 32;
        goto LABEL_114;
      case 0xBu:
        v27 = objc_alloc_init(HDCodableSyncAnchorRangeMap);
        v47 = 40;
        goto LABEL_88;
      case 0xCu:
        v27 = objc_alloc_init(HDCodableSyncAnchorRangeMap);
        v47 = 48;
LABEL_88:
        objc_storeStrong((a1 + v47), v27);
        v57 = 0;
        v58 = 0;
        if (PBReaderPlaceMark() && [(HDCodableSyncIdentity *)v27 readFrom:a2])
        {
          goto LABEL_90;
        }

        goto LABEL_117;
      case 0x14u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v57 & 0x7F) << v48;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_113;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v50;
        }

LABEL_113:
        v54 = 8;
        goto LABEL_114;
      case 0x15u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v57) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v57 & 0x7F) << v20;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_95;
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

LABEL_95:
        v54 = 16;
LABEL_114:
        *(a1 + v54) = v26;
        goto LABEL_115;
      case 0x1Eu:
        v27 = PBReaderReadString();
        if (v27)
        {
          [a1 addUnfrozenChangeRecordNames:v27];
        }

        goto LABEL_91;
      case 0x1Fu:
        v27 = objc_alloc_init(HDCodableSyncEntityVersionMap);
        objc_storeStrong((a1 + 88), v27);
        v57 = 0;
        v58 = 0;
        if (PBReaderPlaceMark() && HDCodableSyncEntityVersionMapReadFrom(v27, a2))
        {
LABEL_90:
          PBReaderRecallMark();
LABEL_91:

LABEL_115:
          v55 = [a2 position];
          if (v55 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_117:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_115;
    }
  }
}

id HDHeartDailyAnalyticsProcessingIntervalForCurrentDateAndCalendar(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startOfDayForDate:a1];
  v5 = [v3 dateByAddingUnit:16 value:-1 toDate:v4 options:0];
  v6 = [v3 dateByAddingUnit:16 value:-1 toDate:v5 options:0];

  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v5];

  return v7;
}

void sub_228C88908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C88AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C88CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C88EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C89050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C899A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C8B240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C8C4E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__89(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromHKBiologicalSex(unint64_t a1)
{
  if (a1 < 4)
  {
    return off_2786207C0[a1];
  }

  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromHKBiologicalSex(HKBiologicalSex)"];
  [v2 handleFailureInFunction:v3 file:@"HDDemoDataDefines.m" lineNumber:26 description:@"Invalid biological sex"];

  return 0;
}

__CFString *NSStringFromHDDemoDataFoodType(uint64_t a1)
{
  if ((a1 - 1) < 6)
  {
    return off_2786207E0[a1 - 1];
  }

  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromHDDemoDataFoodType(HDDemoDataFoodType)"];
  [v2 handleFailureInFunction:v3 file:@"HDDemoDataDefines.m" lineNumber:46 description:@"Invalid demo data food type"];

  return 0;
}

__CFString *NSStringFromHDDemoDataGenerationPeriod(uint64_t a1)
{
  if (a1 > 59)
  {
    if (a1 > 179)
    {
      if (a1 == 180)
      {
        return @"6 Months";
      }

      if (a1 == 365)
      {
        return @"1 Year";
      }
    }

    else
    {
      if (a1 == 60)
      {
        return @"2 Months";
      }

      if (a1 == 90)
      {
        return @"3 Months";
      }
    }
  }

  else if (a1 > 6)
  {
    if (a1 == 7)
    {
      return @"1 Week";
    }

    if (a1 == 30)
    {
      return @"1 Month";
    }
  }

  else
  {
    if (a1 == -1)
    {
      return @"Year to Date";
    }

    if (a1 == 1)
    {
      return @"1 Day";
    }
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromHDDemoDataGenerationPeriod(HDDemoDataGenerationPeriod)"];
  [v6 handleFailureInFunction:v7 file:@"HDDemoDataDefines.m" lineNumber:70 description:@"Invalid demo data generation period"];

  return 0;
}

uint64_t HDDemoDataIsValidGenerationPeriod(uint64_t a1)
{
  result = 1;
  if (a1 <= 89)
  {
    v7 = a1 + 1;
    if (v7 <= 0x3D && ((1 << v7) & 0x2000000080000105) != 0)
    {
      return result;
    }

LABEL_8:
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL HDDemoDataIsValidGenerationPeriod(HDDemoDataGenerationPeriod)"];
    [v8 handleFailureInFunction:v9 file:@"HDDemoDataDefines.m" lineNumber:87 description:@"Invalid demo data initial generation period"];

    return 0;
  }

  if (a1 != 90 && a1 != 180 && a1 != 365)
  {
    goto LABEL_8;
  }

  return result;
}

__CFString *DisplayNameForHDDemoDataProfileType(uint64_t a1)
{
  if ((a1 - 1) < 4)
  {
    return off_278620810[a1 - 1];
  }

  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *DisplayNameForHDDemoDataProfileType(HDDemoDataProfileType)"];
  [v2 handleFailureInFunction:v3 file:@"HDDemoDataDefines.m" lineNumber:103 description:@"Invalid demo data profile type"];

  return 0;
}

__CFString *DirectoryPathForHDDemoDataProfileType(uint64_t a1)
{
  if ((a1 - 1) < 4)
  {
    return off_278620830[a1 - 1];
  }

  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *DirectoryPathForHDDemoDataProfileType(HDDemoDataProfileType)"];
  [v2 handleFailureInFunction:v3 file:@"HDDemoDataDefines.m" lineNumber:119 description:@"Invalid demo data profile type"];

  return 0;
}

__CFString *NSStringFromHDDemoDataSampleTrackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Typical";
  }

  if (a1 == 2)
  {
    return @"Inclusive";
  }

  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromHDDemoDataSampleTrackingType(HDDemoDataSampleTrackingType)"];
  [v2 handleFailureInFunction:v3 file:@"HDDemoDataDefines.m" lineNumber:131 description:@"Invalid demo data sample tracking type"];

  return 0;
}

void sub_228C90830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C9147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableAuthorizationCompleteMessageReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 10)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___HDCodableAuthorizationCompleteMessage__errorDescription;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___HDCodableAuthorizationCompleteMessage__appBundleIdentifier;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v15 = &OBJC_IVAR___HDCodableAuthorizationCompleteMessage__requestIdentifier;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_228C99018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C9DD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__93(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C9DF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C9E0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C9EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__94(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_228C9F570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CA076C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228CA2F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a59);
  objc_destroyWeak(&a64);
  objc_destroyWeak(&a69);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_228CA4204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228CA7C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228CA83F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228CAC08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228CAC468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _HDAddWorkoutBuilderTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEC80 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutSessionControllerTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS workout_session_controllers (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{workout_session_id INTEGER NOT NULL REFERENCES workout_sessions(ROWID) ON DELETE CASCADE, recovery_identifier TEXT NOT NULL, archived_state BLOB)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddClientBundleIdentifierToWorkoutSession(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 unprotectedDatabase];
  v9[0] = @"ALTER TABLE workout_sessions ADD COLUMN client_bundle_id TEXT;";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddAuthorizationMode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEC98 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddClientApplicationIdentifierToWorkoutSession(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 unprotectedDatabase];
  v9[0] = @"ALTER TABLE workout_sessions ADD COLUMN client_application_id TEXT;";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDRemoveExistingWorkoutBuildersAndSessions(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAECB0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDSplitAuthorizationAnchors(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAECC8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSyncProtocolVersionToCloudSyncStore(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAECE0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMakeStatisticsColumnNullable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAECF8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddRequestedTargetStateToWorkoutSession(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 unprotectedDatabase];
  v9[0] = @"ALTER TABLE workout_sessions ADD COLUMN requested_target_state INTEGER NOT NULL DEFAULT 1;";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddHasFailedToWorkoutSession(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 unprotectedDatabase];
  v9[0] = @"ALTER TABLE workout_sessions ADD COLUMN has_failed INTEGER NOT NULL DEFAULT 0;";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddWorkoutEventForeignKey(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAED10 error:a4] ^ 1;

  return v6;
}

uint64_t _CreateQuantitySampleSeriesEntityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS quantity_sample_series (data_id INTEGER PRIMARY KEY REFERENCES samples (data_id) ON DELETE CASCADE error:{count INTEGER NOT NULL DEFAULT 0, insertion_era INTEGER, hfd_key INTEGER NOT NULL, min REAL, max REAL, most_recent REAL, most_recent_date REAL)", a4}] ^ 1;

  return v6;
}

uint64_t _AddCondenserVersionToWorkoutEntityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE workouts ADD condenser_version INTEGER" error:a4] ^ 1;

  return v6;
}

uint64_t _AddTemplateUniqueNameToFitnessFriendAchievements(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v5 = [a2 protectedDatabase];
  v9[0] = @"DROP TABLE fitness_friend_achievements";
  v9[1] = @"CREATE TABLE fitness_friend_achievements (data_id INTEGER PRIMARY KEY, friend_uuid BLOB, template_unique_name TEXT, completed_date REAL, value)";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _AddiOSVersionToFHIRResources(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v5 = [a2 protectedDatabase];
  v9[0] = @"CREATE TABLE original_fhir_resources (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, type TEXT NOT NULL, account_id INTEGER NOT NULL REFERENCES clinical_accounts (ROWID) ON DELETE CASCADE, id TEXT NOT NULL, sync_provenance INTEGER NOT NULL, raw_content BLOB NOT NULL, received_date REAL NOT NULL, received_date_timezone TEXT NOT NULL, fhir_version TEXT NOT NULL, source_url TEXT, extraction_hints INTEGER, origin_major_version INTEGER NOT NULL, origin_minor_version INTEGER NOT NULL, origin_patch_version INTEGER NOT NULL, origin_build TEXT NOT NULL, UNIQUE(type, account_id, id))";
  v9[1] = @"CREATE TABLE IF NOT EXISTS original_fhir_resources_last_seen (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, resource_id INTEGER NOT NULL REFERENCES original_fhir_resources(ROWID) ON DELETE CASCADE, last_seen_date REAL NOT NULL)";
  v9[2] = @"INSERT INTO original_fhir_resources (rowid, type, account_id, id, sync_provenance, raw_content, received_date, received_date_timezone, fhir_version, source_url, extraction_hints, origin_major_version, origin_minor_version, origin_patch_version, origin_build) SELECT rowid, type, account_id, id, sync_provenance, raw_content, received_date, received_date_timezone, fhir_version, source_url, extraction_hints, 11, 3, 0, '15E216' FROM fhir_resources";
  v9[3] = @"INSERT INTO original_fhir_resources_last_seen (rowid, resource_id, last_seen_date) SELECT rowid, resource_id, last_seen_date FROM fhir_resources_last_seen";
  v9[4] = @"DROP TABLE fhir_resources";
  v9[5] = @"DROP TABLE fhir_resources_last_seen";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _AddCondenserDateToWorkoutEntityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE workouts ADD condenser_date REAL" error:a4] ^ 1;

  return v6;
}

uint64_t _AddHFDKeyToSeriesSampleEntityTable(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v15 = 0;
  v7 = [v6 table:@"data_series" hasColumnWithName:@"count" error:&v15];
  v8 = v15;

  if (v7)
  {
    goto LABEL_2;
  }

  if (v8)
  {
    if (a4)
    {
      v11 = v8;
      *a4 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_9;
  }

  v12 = [v5 protectedDatabase];
  v13 = [v12 executeUncachedSQL:@"ALTER TABLE data_series ADD COLUMN count INTEGER NOT NULL DEFAULT 0" error:a4];

  if (!v13)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

LABEL_2:
  v9 = [v5 protectedDatabase];
  v10 = [v9 executeSQLStatements:&unk_283CAED28 error:a4] ^ 1;

LABEL_10:
  return v10;
}

uint64_t _CreateClinicalRecordEntityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS clinical_record_samples (data_id INTEGER PRIMARY KEY error:{display_name TEXT NOT NULL, fhir_resource_resource_type TEXT, fhir_resource_identifier TEXT, fhir_resource_data BLOB, fhir_resource_source_url TEXT, fhir_resource_last_updated_date REAL)", a4}] ^ 1;

  return v6;
}

uint64_t _MakeQuantitySampleSeriesEntityHFDKeyUnique(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAED40 error:a4] ^ 1;

  return v6;
}

uint64_t _CreateQuantitySampleSeriesUnfrozenIndex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAED58 error:a4] ^ 1;

  return v6;
}

uint64_t _RemoveLegacyAchievements(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAED70 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateClinicalSources(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v7 unprotectedDatabase];
  v9 = [v8 executeSQLStatements:&unk_283CAED88 error:a4];

  if (v9)
  {
    v10 = [v7 unprotectedDatabase];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___HDMigrateClinicalSources_block_invoke;
    v26[3] = &unk_278614098;
    v11 = v7;
    v27 = v11;
    v12 = [v10 executeUncachedSQL:@"SELECT account_id FROM public_clinical_sources" error:a4 bindingHandler:0 enumerationHandler:v26];

    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = [v6 fetchLegacySyncIdentity:v11 error:a4];
    if (v13 == -1)
    {
      goto LABEL_9;
    }

    v14 = v13;
    v15 = [v11 unprotectedDatabase];
    v16 = [v15 executeSQLStatements:&unk_283CAEDA0 error:a4];

    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = [v11 unprotectedDatabase];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___HDMigrateClinicalSources_block_invoke_5;
    v25[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v25[4] = v14;
    v18 = [v17 executeSQL:@"INSERT INTO sources (uuid error:logical_source_id bindingHandler:name enumerationHandler:{source_options, local_device, product_type, mod_date, provenance, sync_anchor, deleted, sync_identity)                                             SELECT RANDOMBLOB(16), l.ROWID, name, source_options, local_device, product_type, mod_date, 0, COALESCE((SELECT MAX(sync_anchor) + 1 FROM sources), 1) + p.ROWID, 0, ?                                             FROM public_clinical_sources p JOIN logical_sources l WHERE p.stable_bundle_id = l.bundle_id", a4, v25, 0}];

    if (!v18)
    {
      goto LABEL_9;
    }

    v19 = [v11 unprotectedDatabase];
    v20 = [v19 executeSQLStatements:&unk_283CAEDB8 error:a4];

    if (v20)
    {
      v21 = [v11 protectedDatabase];
      v22 = _deleteRowsFromDataEntitySubclassTables(v21, a4);

      v23 = v22 ^ 1u;
    }

    else
    {
LABEL_9:
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

uint64_t _MakeSeriesSampleEntityHFDKeyUnique(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEE00 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddHealthRecordsAccountCount(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___HDAddHealthRecordsAccountCount_block_invoke;
  aBlock[3] = &unk_278614620;
  aBlock[4] = v18;
  v8 = _Block_copy(aBlock);
  v9 = [v7 protectedDatabase];
  v10 = [v9 executeSQL:@"SELECT COUNT(*) FROM clinical_accounts" error:a4 bindingHandler:0 enumerationHandler:v8];

  if ((v10 & 1) == 0 || (v11 = [v6 fetchLegacySyncIdentity:v7 error:a4], v11 == -1))
  {
    v14 = 1;
  }

  else
  {
    v12 = [v7 unprotectedDatabase];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___HDAddHealthRecordsAccountCount_block_invoke_2;
    v16[3] = &unk_27861B7A8;
    v16[4] = v18;
    v16[5] = v11;
    v13 = [v12 executeUncachedSQL:@"INSERT OR REPLACE INTO key_value (domain error:key bindingHandler:value enumerationHandler:{mod_date, category, provenance, sync_identity) VALUES (?, ?, ?, ?, ?, ?, ?);", a4, v16, 0}];

    v14 = v13 ^ 1u;
  }

  _Block_object_dispose(v18, 8);
  return v14;
}

void sub_228CADE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _deleteRowsFromDataEntitySubclassTables(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 dumpSchemaWithError:a2];
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [&unk_283CAEDD0 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v17;
      *&v6 = 138412290;
      v15 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(&unk_283CAEDD0);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([MEMORY[0x277D10B30] databaseSchemas:v4 containTable:{v10, v15}])
          {
            if (![v3 deleteRowsFromDataEntitySubclassTable:v10 intermediateTables:&unk_283CAEDE8 error:a2])
            {
              goto LABEL_15;
            }
          }

          else
          {
            _HKInitializeLogging();
            v11 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
            {
              *buf = v15;
              v21 = v10;
              _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Skipping deletion from nonexistent table %@", buf, 0xCu);
            }
          }
        }

        v7 = [&unk_283CAEDD0 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }

    v12 = 1;
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t HDCloudSyncCodableRegisteredStoreReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
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

void sub_228CB74A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__95(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228CB847C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 8);
  objc_exception_rethrow();
}

void sub_228CB8788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CB962C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CB9F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromJournalProcessingResult(unsigned int a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_278621478[a1];
  }

  return v2;
}

void sub_228CBB914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableActivityGoalScheduleReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v49[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49[0] & 0x7F) << v5;
        if ((v49[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        break;
      }

      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            v30 = PBReaderReadString();
            v31 = *(a1 + 80);
            *(a1 + 80) = v30;

            goto LABEL_85;
          case 4:
            *(a1 + 88) |= 4u;
            v49[0] = 0;
            v34 = [a2 position] + 8;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v39 = v49[0];
            v40 = 24;
            goto LABEL_84;
          case 5:
            *(a1 + 88) |= 0x40u;
            v49[0] = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v39 = v49[0];
            v40 = 56;
LABEL_84:
            *(a1 + v40) = v39;
            goto LABEL_85;
        }

        goto LABEL_64;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            LOBYTE(v49[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v49[0] & 0x7F) << v18;
            if ((v49[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_69:
          *(a1 + 16) = v24;
          goto LABEL_85;
        }

LABEL_64:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_85;
      }

      v27 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 72), v27);
      v49[0] = 0;
      v49[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_85:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        *(a1 + 88) |= 0x80u;
        v49[0] = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v49[0];
        v40 = 64;
        goto LABEL_84;
      }

      if (v13 == 7)
      {
        *(a1 + 88) |= 0x20u;
        v49[0] = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v49[0];
        v40 = 48;
        goto LABEL_84;
      }
    }

    else
    {
      switch(v13)
      {
        case 8:
          *(a1 + 88) |= 1u;
          v49[0] = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v39 = v49[0];
          v40 = 8;
          goto LABEL_84;
        case 9:
          *(a1 + 88) |= 8u;
          v49[0] = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v39 = v49[0];
          v40 = 32;
          goto LABEL_84;
        case 0xA:
          *(a1 + 88) |= 0x10u;
          v49[0] = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v39 = v49[0];
          v40 = 40;
          goto LABEL_84;
      }
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCheckAutomaticAppUpdatesAllowed()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 isAutomaticAppUpdatesAllowed];

  return v1;
}

uint64_t _HDUpdateClientSideDataCollectionLastCollectedDatum(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEE18 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddShouldCollectEventsColumnToWorkoutBuildersTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEE30 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddOnboardingCompletionTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS onboarding_completions (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{uuid BLOB NOT NULL UNIQUE, feature_identifier TEXT NOT NULL, version INTEGER NOT NULL, completion_date REAL NOT NULL, country_code TEXT, mod_date REAL NOT NULL, deleted INTEGER NOT NULL DEFAULT 0, sync_provenance INTEGER NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDResetAnchorsForCloudSyncStoresWithGaps(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"DELETE FROM sync_anchors WHERE store IN (SELECT ROWID FROM sync_stores INNER JOIN cloud_sync_stores on (sync_stores.ROWID=cloud_sync_stores.sync_store) WHERE has_gap)" error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetReceivedNanoSyncAnchorsForCategoryAndQuantitySamples(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = [v6 unprotectedDatabase];
    v10 = [v9 executeSQLStatements:&unk_283CAEE48 error:a4] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _HDAddSleepScheduleTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 addObject:{@"CREATE TABLE IF NOT EXISTS sleep_schedule_samples (data_id INTEGER PRIMARY KEY, monday INTEGER NOT NULL, tuesday INTEGER NOT NULL, wednesday INTEGER NOT NULL, thursday INTEGER NOT NULL, friday INTEGER NOT NULL, saturday INTEGER NOT NULL, sunday INTEGER NOT NULL, wake_hour INTEGER, wake_minute INTEGER, bed_hour INTEGER, bed_minute INTEGER, wind_down_seconds REAL)"}];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_monday ON sleep_schedule_samples (monday) WHERE monday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_tuesday ON sleep_schedule_samples (tuesday) WHERE tuesday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_wednesday ON sleep_schedule_samples (wednesday) WHERE wednesday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_thursday ON sleep_schedule_samples (thursday) WHERE thursday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_friday ON sleep_schedule_samples (friday) WHERE friday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_saturday ON sleep_schedule_samples (saturday) WHERE saturday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_sunday ON sleep_schedule_samples (sunday) WHERE sunday = 1;"];
  v8 = [v6 protectedDatabase];

  v9 = [v8 executeSQLStatements:v7 error:a4] ^ 1;
  return v9;
}

uint64_t _HDAddContributorsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 protectedDatabase];
  v9[0] = @"CREATE TABLE IF NOT EXISTS contributors (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid BLOB UNIQUE NOT NULL, payload BLOB, deleted INTEGER NOT NULL, placeholder INTEGER NOT NULL, mod_date REAL NOT NULL, sync_anchor INTEGER UNIQUE NOT NULL)";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddFHIRVersionToClinicalRecordSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEE60 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddContributorsColumnToProvenance(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v7 initWithFormat:@"INSERT INTO contributors (ROWID, uuid, payload, deleted, placeholder, mod_date, sync_anchor) VALUES (1, %@('00000000-0000-0000-0000-000000000000'), NULL, 0, 0, %lf, 0)", *MEMORY[0x277D10A68], CFAbsoluteTimeGetCurrent()];
  v13[0] = v8;
  v13[1] = @"CREATE TABLE IF NOT EXISTS data_provenances_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, sync_provenance INTEGER NOT NULL, origin_product_type TEXT NOT NULL, origin_build TEXT NOT NULL, local_product_type TEXT NOT NULL, local_build TEXT NOT NULL, source_id INTEGER NOT NULL, device_id INTEGER NOT NULL, contributor_id INTEGER NOT NULL, source_version TEXT NOT NULL, tz_name TEXT NOT NULL, origin_major_version INTEGER NOT NULL, origin_minor_version INTEGER NOT NULL, origin_patch_version INTEGER NOT NULL, derived_flags INTEGER NOT NULL, UNIQUE(sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, contributor_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version))";
  v13[2] = @"INSERT INTO data_provenances_new (ROWID, sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, contributor_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version, derived_flags) SELECT ROWID, sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, 1, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version, derived_flags FROM data_provenances";
  v13[3] = @"DROP TABLE IF EXISTS data_provenances";
  v13[4] = @"ALTER TABLE data_provenances_new RENAME TO data_provenances";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  v10 = [v6 protectedDatabase];

  LODWORD(a4) = [v10 executeSQLStatements:v9 error:a4];
  v11 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDCreatePartialIndexForDeletedObjects(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEE78 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddAppleIDAndCallerIDToContributorsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEE90 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddECGSymptomsColumnToECGSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEEA8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateECGClassificationAverageHRAndPayload(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke;
  v9[3] = &unk_2786214D0;
  v10 = v5;
  v11 = @"DELETE FROM binary_samples WHERE data_id=?";
  v12 = @"INSERT INTO ecg_samples (data_id, voltage_payload, private_classification, average_heart_rate, symptoms_status) VALUES (?, ?, ?, ?, ?)";
  v13 = @"DELETE FROM metadata_values WHERE key_id IN (SELECT rowid FROM metadata_keys WHERE key LIKE '_HKPrivateMetadataKeyClassification' OR key LIKE '_HKPrivateMetadataKeyElectrocardiogramHeartRate') AND object_id=?";
  v7 = v5;
  LODWORD(a4) = [v6 executeUncachedSQL:@"SELECT samples.data_id error:uuid bindingHandler:creation_date enumerationHandler:{provenance, start_date, end_date, binary_samples.payload, a.numerical_value, b.numerical_value, c.numerical_value                                     FROM objects                                     INNER JOIN samples USING (data_id)                                     INNER JOIN binary_samples USING (data_id)                                     LEFT JOIN metadata_values a ON ((a.object_id = samples.data_id) AND (a.key_id=(SELECT rowid FROM metadata_keys WHERE key='_HKPrivateMetadataKeyClassification')))                                     LEFT JOIN metadata_values b ON ((b.object_id = samples.data_id) AND (b.key_id=(SELECT rowid FROM metadata_keys WHERE key='_HKPrivateMetadataKeyElectrocardiogramHeartRate')))                                     LEFT JOIN metadata_values c ON ((c.object_id = samples.data_id) AND (c.key_id=(SELECT rowid FROM metadata_keys WHERE key='_HKPrivateMetadataKeyElectrocardiogramSymptoms')))                                     WHERE data_type = 144", a4, 0, v9}];

  return a4 ^ 1;
}

uint64_t _HDRemovePlaceholderAndAddSyncProvenanceToContributorsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEED8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddFirstSeenDateToOriginalFHIRResourcesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEF08 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSCWIColumnToFriendWorkoutTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEF20 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddRequestedScopeToClinicalCredentialsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEEF0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDFixInvalidContributorInDataProvenancesTable(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v6 = a2;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = -1;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM data_provenances WHERE contributor_id NOT IN (%@)", @"SELECT ROWID from contributors"];
  v10 = [v6 protectedDatabase];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = ___HDFixInvalidContributorInDataProvenancesTable_block_invoke;
  v34 = &unk_278621520;
  v38 = &v39;
  v11 = v6;
  v35 = v11;
  v12 = v7;
  v36 = v12;
  v13 = v8;
  v37 = v13;
  v14 = [v10 executeUncachedSQL:v9 error:a4 bindingHandler:0 enumerationHandler:&v31];

  if ((v14 & 1) == 0)
  {
    goto LABEL_7;
  }

  if ([v13 count])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = v40[3];
    v17 = [v13 componentsJoinedByString:{@", "}];
    v18 = [v15 stringWithFormat:@"UPDATE data_provenances SET contributor_id = %lld WHERE ROWID IN (%@)", v16, v17, v30, v31, v32, v33, v34, v35, v36];

    v19 = [v11 protectedDatabase];
    v44[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    LOBYTE(v16) = [v19 executeSQLStatements:v20 error:a4];

    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (![v12 count])
  {
    goto LABEL_6;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = [v12 componentsJoinedByString:{@", "}];
  v23 = [v21 stringWithFormat:@"DELETE FROM data_provenances WHERE ROWID IN (%@)", v22];

  v24 = [v11 protectedDatabase];
  v43 = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v26 = [v24 executeSQLStatements:v25 error:a4];

  if (v26)
  {
LABEL_6:
    v27 = 0;
  }

  else
  {
LABEL_7:
    v27 = 1;
  }

  _Block_object_dispose(&v39, 8);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void sub_228CBF9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDAddOverrideDayIndexRemoveWindDownFromSleepScheduleTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 addObject:@"ALTER TABLE sleep_schedule_samples RENAME TO sleep_schedule_samples_old;"];
  [v7 addObject:{@"CREATE TABLE IF NOT EXISTS sleep_schedule_samples (data_id INTEGER PRIMARY KEY, monday INTEGER NOT NULL, tuesday INTEGER NOT NULL, wednesday INTEGER NOT NULL, thursday INTEGER NOT NULL, friday INTEGER NOT NULL, saturday INTEGER NOT NULL, sunday INTEGER NOT NULL, wake_hour INTEGER, wake_minute INTEGER, bed_hour INTEGER, bed_minute INTEGER, override_day_index INTEGER)"}];
  [v7 addObject:{@"INSERT INTO sleep_schedule_samples (data_id, monday, tuesday, wednesday, thursday, friday, saturday, sunday, wake_hour, wake_minute, bed_hour, bed_minute) SELECT data_id, monday, tuesday, wednesday, thursday, friday, saturday, sunday, wake_hour, wake_minute, bed_hour, bed_minute FROM sleep_schedule_samples_old;"}];
  [v7 addObject:@"DROP TABLE sleep_schedule_samples_old;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_monday ON sleep_schedule_samples (monday) WHERE monday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_tuesday ON sleep_schedule_samples (tuesday) WHERE tuesday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_wednesday ON sleep_schedule_samples (wednesday) WHERE wednesday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_thursday ON sleep_schedule_samples (thursday) WHERE thursday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_friday ON sleep_schedule_samples (friday) WHERE friday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_saturday ON sleep_schedule_samples (saturday) WHERE saturday = 1;"];
  [v7 addObject:@"CREATE INDEX IF NOT EXISTS sleep_schedule_samples_sunday ON sleep_schedule_samples (sunday) WHERE sunday = 1;"];
  v8 = [v6 protectedDatabase];

  v9 = [v8 executeSQLStatements:v7 error:a4] ^ 1;
  return v9;
}

uint64_t _HDUpdateMedicalRecordsCoverageDiagnosticreportProcedureTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteDataEntitySubclassTablesIfExist:&unk_283CAEF38 intermediateTables:&unk_283CAEF50 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v9 = [v8 executeSQLStatements:&unk_283CAEF68 error:a4] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _HDRepairECGSymptomsStatus(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___HDRepairECGSymptomsStatus_block_invoke;
  v9[3] = &unk_2786140C0;
  v10 = v5;
  v11 = @"UPDATE ecg_samples SET symptoms_status = ? WHERE data_id = ?;";
  v7 = v5;
  LODWORD(a4) = [v6 executeUncachedSQL:@"SELECT objects.data_id error:a.numerical_value                                     FROM objects                                     INNER JOIN ecg_samples USING (data_id)                                     LEFT JOIN metadata_values a ON ((a.object_id = objects.data_id) AND (a.key_id=(SELECT rowid FROM metadata_keys WHERE key='_HKPrivateMetadataKeyElectrocardiogramSymptoms')));" bindingHandler:a4 enumerationHandler:{0, v9}];

  return a4 ^ 1;
}

uint64_t _HDMigrateAndDeleteProtectedOnboardingCompletionTable(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  v9 = [v8 dumpSchemaWithError:a4];

  if (!v9)
  {
    goto LABEL_7;
  }

  if (![MEMORY[0x277D10B30] databaseSchemas:v9 containTable:@"onboarding_completions"])
  {
    v17 = 0;
    goto LABEL_11;
  }

  v10 = [v6 fetchLegacySyncIdentity:v7 error:a4];
  if (v10 == -1)
  {
LABEL_7:
    v17 = 1;
  }

  else
  {
    v11 = v10;
    v12 = [v7 protectedDatabase];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___HDMigrateAndDeleteProtectedOnboardingCompletionTable_block_invoke;
    v19[3] = &unk_278619E70;
    v13 = v7;
    v20 = v13;
    v21 = @"INSERT OR REPLACE INTO onboarding_completions (uuid, feature_identifier, version, completion_date, country_code, mod_date, deleted, sync_provenance, sync_identity) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    v22 = v11;
    LODWORD(v11) = [v12 executeUncachedSQL:@"SELECT uuid error:feature_identifier bindingHandler:version enumerationHandler:{completion_date, country_code, mod_date, deleted, sync_provenance FROM onboarding_completions", a4, 0, v19}];

    if (v11 && ([v13 unprotectedDatabase], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"DELETE FROM sync_anchors WHERE schema='main' and type=?", a4, &__block_literal_global_105, 0), v14, v15))
    {
      v16 = [v13 protectedDatabase];
      v17 = [v16 executeUncachedSQL:@"DROP TABLE IF EXISTS onboarding_completions" error:a4] ^ 1;
    }

    else
    {
      v17 = 1;
    }
  }

LABEL_11:

  return v17;
}

uint64_t _HDRecreateCHRConditionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteDataEntitySubclassTablesIfExist:&unk_283CAEF80 intermediateTables:&unk_283CAEF98 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v13[0] = @"CREATE TABLE condition_record_samples (data_id INTEGER PRIMARY KEY, condition_coding_collection BLOB NOT NULL, categories_coding_collections BLOB NOT NULL, asserter TEXT, abatement BLOB, onset BLOB, recorded_date BLOB, clinical_status_coding BLOB, verification_status_coding BLOB, severity_coding_collection BLOB, body_sites_coding_collections BLOB)";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v8 executeSQLStatements:v9 error:a4] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _HDUpdateSleepAndAppetiteChangesCategoryValues(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = *MEMORY[0x277D10A50];
  v7 = a2;
  v8 = [v5 stringWithFormat:@"UPDATE category_samples SET value = 0 WHERE data_id IN (SELECT objects.data_id FROM objects INNER JOIN samples USING (data_id) INNER JOIN data_provenances ON (objects.provenance = data_provenances.rowid) WHERE (data_type=164 OR data_type=169 OR data_type=170) AND NOT (%@(origin_build, '17G41') > 0 AND %@(origin_build, '18A1') < 0))", v6, v6];;
  v9 = [v7 protectedDatabase];

  v10 = [v9 executeUncachedSQL:v8 error:a4] ^ 1;
  return v10;
}

uint64_t _HDRepairECGSymptomsStatusForNilSymptomsMetadata(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___HDRepairECGSymptomsStatusForNilSymptomsMetadata_block_invoke;
  v9[3] = &unk_2786140C0;
  v10 = v5;
  v11 = @"UPDATE ecg_samples SET symptoms_status = ? WHERE data_id = ?;";
  v7 = v5;
  LODWORD(a4) = [v6 executeUncachedSQL:@"SELECT objects.data_id error:a.numerical_value                                     FROM objects                                     INNER JOIN ecg_samples USING (data_id)                                     LEFT JOIN metadata_values a ON ((a.object_id = objects.data_id) AND (a.key_id=(SELECT rowid FROM metadata_keys WHERE key='_HKPrivateMetadataKeyElectrocardiogramSymptoms')));" bindingHandler:a4 enumerationHandler:{0, v9}];

  return a4 ^ 1;
}

uint64_t _HDUpdateNullTypeValesInObjectsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"UPDATE objects SET type=1 WHERE type IS NULL" error:a4] ^ 1;

  return v6;
}

uint64_t _HDRenameSCWIAndAddSeymourMediaTypeColumnToFriendWorkoutTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEFB0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateCoverageAddIdentifierColumnsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAEFC8 error:a4] ^ 1;

  return v6;
}

void sub_228CC1440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CC269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__96(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228CC393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228CC4928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_228CC664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CC7E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CC9B68(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_228CCCC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228CCF718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CCFE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 256), 8);
  _Block_object_dispose((v51 - 224), 8);
  _Block_object_dispose((v51 - 192), 8);
  _Block_object_dispose((v51 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_228CD0314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228CD4708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_228CD77D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_228CDA4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getUIHealthAuthorizationActionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!qword_280D67C18)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278621C90;
    v9 = 0;
    qword_280D67C18 = _sl_dlopen();
  }

  if (!qword_280D67C18)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"HDAuthorizationManager.m" lineNumber:63 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UIHealthAuthorizationAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIHealthAuthorizationActionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"HDAuthorizationManager.m" lineNumber:64 description:{@"Unable to find class %s", "UIHealthAuthorizationAction"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_203 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_280D67C18 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HDCodableUserDomainConceptNamedQuantityReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v48) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = PBReaderReadString();
            v22 = 40;
            break;
          case 2:
            *(a1 + 60) |= 4u;
            v48 = 0;
            v40 = [a2 position] + 8;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 8, v41 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v44 = v48;
            v45 = 24;
            goto LABEL_79;
          case 3:
            v21 = PBReaderReadString();
            v22 = 48;
            break;
          default:
            goto LABEL_47;
        }

        v30 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          *(a1 + 60) |= 1u;
          v48 = 0;
          v38 = [a2 position] + 8;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v48;
          v45 = 8;
LABEL_79:
          *(a1 + v45) = v44;
          goto LABEL_80;
        }

        if (v13 != 7)
        {
LABEL_47:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_80;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 60) |= 0x10u;
        while (1)
        {
          LOBYTE(v48) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v48 & 0x7F) << v23;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_74;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_74:
        *(a1 + 56) = v29;
      }

      else
      {
        if (v13 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v48 & 0x7F) << v32;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v34;
          }

LABEL_67:
          v42 = 16;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_47;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v48 & 0x7F) << v14;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_71;
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

LABEL_71:
          v42 = 32;
        }

        *(a1 + v42) = v20;
      }

LABEL_80:
      v47 = [a2 position];
    }

    while (v47 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228CE4D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228CE5B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableSharingSetupInvitationTokenReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___HDCodableSharingSetupInvitationToken__shareURL;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___HDCodableSharingSetupInvitationToken__token;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_228CEB000(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

HDAssociatableObjectReference *HDReferenceForAssociatableObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [HDAssociatableObjectReference alloc];
    v3 = [v1 UUID];
    v4 = [(HDAssociatableObjectReference *)v2 initWithUUID:v3 objectClass:objc_opt_class()];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

HDAssociatableObjectReference *HDReferenceForUnknownAssociatableObjectWithUUID(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [[HDAssociatableObjectReference alloc] initWithUUID:v1 objectClass:objc_opt_class()];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

HDAssociatableObjectReference *HDReferenceForUnknownAssociatableObjectWithPersistentID(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [(HDSQLiteEntity *)[HDWorkoutActivityEntity alloc] initWithPersistentID:a1];
  v7 = v6;
  if (v6)
  {
    v8 = [(HDWorkoutActivityEntity *)v6 UUIDInTransaction:v5 error:a3];
    v9 = [[HDAssociatableObjectReference alloc] initWithUUID:v8 objectClass:objc_opt_class()];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"No entity found for persistentID"];
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        *a3 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  return v9;
}

void sub_228CF2B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  std::unique_ptr<health::DataStore>::reset[abi:ne200100]((v11 + 48), 0);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__101(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void sub_228CF2D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x22AAC8590](v18, v17);
  _Unwind_Resume(a1);
}

health::TransactionalFile *std::unique_ptr<health::DataStore>::reset[abi:ne200100](health::TransactionalFile **a1, health::TransactionalFile *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    health::TransactionalFile::~TransactionalFile(result);

    JUMPOUT(0x22AAC8590);
  }

  return result;
}

void sub_228CF32F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228CF3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__102(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDIsValidTinkerEventIdentifier(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = a1;
  v3 = [v1 setWithObjects:{@"TinkerPrivacyAlertEventSharingSetUp", @"TinkerPrivacyAlertEventBirthday", @"TinkerPrivacyAlertEventTesting", 0}];
  v4 = [v3 containsObject:v2];

  return v4;
}

void sub_228CF3FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_228CF4848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_228CF4A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableStaticSyncChangeSetReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(HDCodableNanoSyncChange);
        [a1 addChanges:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableNanoSyncChangeReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__103(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _HDAddCloudSyncStoreShardColumns(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF0E8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddCKRecordCacheTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF100 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddOnboardingCompletionsCountryCodeProvenanceColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF118 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddAppSDKVersionFlagColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF130 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddNeedsFetchColumnToCachedCKRecordZoneEntity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF148 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetUnprotectedCKRecordCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF160 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddZoneStateColumnToCachedCKRecordZoneEntity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF178 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddUserRecordIDToCKDatabaseCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF190 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddEpochManagementForCloudCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF1A8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutBuilderActivitiesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF1C0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDFixWorkoutBuilderActivitiesForeignKey(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF1D8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMakeWorkoutBuilderActivityEndDateNullable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF1F0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetUnprotectedInconsistentCloudCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF208 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRemoveOtherCardioFitnessMedications(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v8 = [v7 protectedDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___HDRemoveOtherCardioFitnessMedications_block_invoke;
  v21[3] = &unk_278614620;
  v21[4] = &v22;
  v9 = [v8 executeUncachedSQL:@"SELECT value FROM key_value_secure WHERE key = 'cardio_fitness_medications_use' AND category = 101;" error:a4 bindingHandler:0 enumerationHandler:v21];

  if (v9)
  {
    v23[3] &= ~4uLL;
    v10 = [v7 protectedDatabase];
    v11 = [v10 executeSQL:@"DELETE FROM key_value_secure WHERE key = 'cardio_fitness_medications_use';" error:a4 bindingHandler:0 enumerationHandler:0];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEAA8] date];
      v13 = [v7 protectedDatabase];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = ___HDRemoveOtherCardioFitnessMedications_block_invoke_2;
      v18[3] = &unk_278622118;
      v20 = &v22;
      v14 = v12;
      v19 = v14;
      v15 = [v13 executeSQL:@"INSERT INTO key_value_secure (category error:domain bindingHandler:key enumerationHandler:{value, provenance, mod_date) values (101, '', 'cardio_fitness_medications_use', ?, 0, ?);", a4, v18, 0}];

      v16 = v15 ^ 1u;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

void sub_228CF9124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDAddAdHocConceptTable(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  v9 = [v8 executeSQLStatements:&unk_283CAF220 error:a4];

  if (v9)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__104;
    v36 = __Block_byref_object_dispose__104;
    v37 = 0;
    v10 = [v7 unprotectedDatabase];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ___HDAddAdHocConceptTable_block_invoke;
    v29[3] = &unk_278613038;
    v30 = @"com.apple.health.records";
    v31 = @"Indexer-State";
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = ___HDAddAdHocConceptTable_block_invoke_2;
    v28[3] = &unk_278614620;
    v28[4] = &v32;
    v11 = [v10 executeUncachedSQL:@"SELECT value FROM key_value WHERE ((category = ?) AND (domain = ?) AND (key = ?))" error:a4 bindingHandler:v29 enumerationHandler:v28];

    if ((v11 & 1) == 0)
    {
      v17 = 1;
LABEL_16:

      _Block_object_dispose(&v32, 8);
      goto LABEL_17;
    }

    if (v33[5])
    {
      v12 = objc_alloc(MEMORY[0x277CCAAC8]);
      v13 = [v12 initForReadingFromData:v33[5] error:a4];
      [(HDConceptIndexState *)v13 setClass:objc_opt_class() forClassName:@"HDConceptIndexManagerState"];
      v14 = [(HDConceptIndexState *)v13 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      v15 = v14;
      if (!v14)
      {
        v17 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v16 = +[HDConceptIndexState stateWithGeneration:](HDConceptIndexState, "stateWithGeneration:", [v14 generation] + 1);

      v13 = v16;
    }

    else
    {
      v13 = objc_alloc_init(HDConceptIndexState);
    }

    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:a4];
    if (!v18 || (v19 = [v6 fetchLegacySyncIdentity:v7 error:a4], v19 == -1))
    {
      v17 = 1;
    }

    else
    {
      v20 = [v7 unprotectedDatabase];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = ___HDAddAdHocConceptTable_block_invoke_3;
      v23[3] = &unk_2786144E0;
      v24 = v18;
      v25 = @"Indexer-State";
      v26 = @"com.apple.health.records";
      v27 = v19;
      v21 = [v20 executeUncachedSQL:@"INSERT OR REPLACE INTO key_value (value error:key bindingHandler:domain enumerationHandler:{category, provenance, mod_date, sync_identity) VALUES (?, ?, ?, ?, ?, ?, ?)", a4, v23, 0}];

      v17 = v21 ^ 1u;
    }

    goto LABEL_15;
  }

  v17 = 1;
LABEL_17:

  return v17;
}

uint64_t _HDAddSecureCKRecordCacheTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS ck_record_cache_secure (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{record_id INTEGER UNIQUE NOT NULL, record_data BLOB)", a4}] ^ 1;

  return v6;
}

uint64_t _HDUpdateMedicalRecordsDiagnosticResultTableAddReferenceRangeStatus(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteDataEntitySubclassTablesIfExist:&unk_283CAF238 intermediateTables:&unk_283CAF250 error:a4];

  if (v7 && ([v5 protectedDatabase], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "executeUncachedSQL:error:", @"UPDATE clinical_accounts SET last_extracted_rowid = NULL", a4), v8, v9))
  {
    v10 = [v5 protectedDatabase];
    v15[0] = @"CREATE TABLE IF NOT EXISTS diagnostic_test_result_samples (data_id INTEGER PRIMARY KEY, diagnostic_test_coding_collection BLOB NOT NULL, value BLOB, reference_ranges BLOB, effective_start_date BLOB, category TEXT NOT NULL, categories_coding_collections BLOB NOT NULL, issue_date BLOB, effective_end_date BLOB, status_coding BLOB NOT NULL, interpretation_coding_collections BLOB, comments TEXT, body_site_coding_collection BLOB, method_coding_collection BLOB, performers BLOB, reference_range_status INTEGER NOT NULL);";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v10 executeSQLStatements:v11 error:a4] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t _HDRecreateCHRMedicationTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteDataEntitySubclassTablesIfExist:&unk_283CAF268 intermediateTables:&unk_283CAF280 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v9 = [v8 executeSQLStatements:&unk_283CAF298 error:a4] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _HDAddSampleAggregateCacheEntitiesTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF2B0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateAllergyRecordSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteDataEntitySubclassTablesIfExist:&unk_283CAF2C8 intermediateTables:&unk_283CAF2E0 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v13[0] = @"CREATE TABLE allergy_record_samples (data_id INTEGER PRIMARY KEY, allergy_coding_collection BLOB NOT NULL, onset_date BLOB, asserter TEXT, reactions BLOB, criticality_coding BLOB, last_occurrence_date BLOB, recorded_date BLOB, verification_status_coding BLOB, clinical_status_coding BLOB, allergy_type_coding BLOB, category_coding BLOB)";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v8 executeSQLStatements:v9 error:a4] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _HDAddUserDomainConceptEntities(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 executeSQLStatements:&unk_283CAF2F8 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v9 = [v8 executeUncachedSQL:@"UPDATE clinical_accounts SET last_extracted_rowid = NULL" error:a4];

    if (v9)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [&unk_283CAF328 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v10)
      {
        v16 = 0;
        goto LABEL_13;
      }

      v11 = v10;
      v12 = *v20;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(&unk_283CAF328);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [v5 protectedDatabase];
        LODWORD(v14) = [v15 deleteRowsFromDataEntitySubclassTable:v14 intermediateTables:&unk_283CAF310 error:a4];

        if (!v14)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [&unk_283CAF328 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v16 = 0;
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }
    }
  }

  v16 = 1;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t _HDAddSharingAuthorizationAndRelationshipTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF340 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddAnchorDateToCachedQueriesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF358 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSummarySharingTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF370 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddQuantitySeriesDataTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF388 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddLocationSeriesDataTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF3A0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSignedClinicalDataIssuerEntitiesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF3B8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateClinicalAccountsTableForIssuerBackingAndOsloStatus(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF3D0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddOriginalSignedClinicalDataRecordEntitiesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF3E8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSignedClinicalDataRecordEntitiesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF400 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateMedicalRecordEntitiesTableForSCD(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAF418 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddSessionColumnToObjectAuthorizationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE object_authorizations ADD COLUMN session BLOB" error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddDateAcceptedToSummarySharingEntryTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF430 error:a4] ^ 1;

  return v6;
}

uint64_t _HDPurgeDeletedUserDomainConcepts(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"DELETE FROM user_domain_concepts WHERE deleted" error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddClinicalAccountColumnsForFetchFailureTracking(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAF448 error:a4];

  return a4 ^ 1;
}

uint64_t _HDRemoveDeletedAndSyncedColumnFromSharedSummaryTransactionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF460 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddCategoryColumnToUserDomainConceptPropertyTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF478 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddDisplayNameAndRenameAuthorizationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF490 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRenameSignedClinicalDataToVerifiableClinicalRecordsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteDataEntitySubclassTablesIfExist:&unk_283CAF4A8 intermediateTables:&unk_283CAF4C0 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v9 = [v8 executeSQLStatements:&unk_283CAF4D8 error:a4] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _HDAddUniquenessChecksumToOriginalSignedClinicalDataTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF4F0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateRecordSamplesAddReferenceColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAF508 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddInvitationUUIDToSummarySharingEntryTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF520 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddRelevantDateAndDataValueToSignedClinicalDataTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF538 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRemoveInvitationNotNullConstraintFromSummarySharingEntryTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF550 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddOwnerParticipantToSummarySharingEntryTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF568 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddNotificationStatusToSummarySharingEntryTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF580 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetProtectedCKRecordCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF5B0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddDeletedAndLastModifiedDateColumnsToOriginalSignedClinicalDataTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF598 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateCycleTrackingOnboarding(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__104;
  v41 = __Block_byref_object_dispose__104;
  v42 = 0;
  v8 = [v7 protectedDatabase];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = ___HDMigrateCycleTrackingOnboarding_block_invoke;
  v36[3] = &unk_278614620;
  v36[4] = &v37;
  v9 = [v8 executeUncachedSQL:@"SELECT value FROM key_value_secure WHERE domain=com.apple.private.health.menstrual-cycles AND key=OnboardingCompleted" error:a4 bindingHandler:0 enumerationHandler:v36];

  if (v9)
  {
    if (v38[5])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__104;
      v34 = __Block_byref_object_dispose__104;
      v35 = 0;
      v10 = [v7 protectedDatabase];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = ___HDMigrateCycleTrackingOnboarding_block_invoke_2;
      v29[3] = &unk_278614620;
      v29[4] = &v30;
      v11 = [v10 executeUncachedSQL:@"SELECT value FROM key_value_secure WHERE domain=com.apple.private.health.menstrual-cycles AND key=OnboardingFirstCompletedDate" error:a4 bindingHandler:0 enumerationHandler:v29];

      if ((v11 & 1) == 0)
      {
        v19 = 1;
LABEL_17:
        _Block_object_dispose(&v30, 8);

        goto LABEL_18;
      }

      if (!v31[5])
      {
        v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:581274000.0];
        v13 = v31[5];
        v31[5] = v12;

        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "Found a Cycle Tracking onboarding version without a date, assuming WWDC 2019!", buf, 2u);
        }
      }

      v15 = [MEMORY[0x277CBEB58] set];
      v16 = [v7 unprotectedDatabase];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ___HDMigrateCycleTrackingOnboarding_block_invoke_966;
      v26[3] = &unk_278614098;
      v17 = v15;
      v27 = v17;
      v18 = [v16 executeUncachedSQL:@"SELECT completion_date FROM onboarding_completions WHERE feature_identifier=MenstrualCycles AND version=2 AND deleted=0" error:a4 bindingHandler:0 enumerationHandler:v26];

      if (v18)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = ___HDMigrateCycleTrackingOnboarding_block_invoke_2_967;
        v25[3] = &unk_278622140;
        v25[4] = &v30;
        if ([v17 hk_containsObjectPassingTest:v25])
        {
          v19 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v20 = [v6 fetchLegacySyncIdentity:v7 error:a4];
        if (v20 != -1)
        {
          v21 = [v7 unprotectedDatabase];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = ___HDMigrateCycleTrackingOnboarding_block_invoke_3;
          v24[3] = &unk_27861B7A8;
          v24[4] = &v30;
          v24[5] = v20;
          v22 = [v21 executeUncachedSQL:@"INSERT OR REPLACE INTO onboarding_completions (uuid error:feature_identifier bindingHandler:version enumerationHandler:{completion_date, mod_date, deleted, sync_provenance, sync_identity) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", a4, v24, 0}];

          v19 = v22 ^ 1u;
          goto LABEL_16;
        }
      }

      v19 = 1;
      goto LABEL_16;
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

LABEL_18:
  _Block_object_dispose(&v37, 8);

  return v19;
}

void sub_228CFA654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDDeleteMedicalRecordsDiagnosticResultTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteRowsFromDataEntitySubclassTable:@"diagnostic_test_result_samples" intermediateTables:&unk_283CAF5C8 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v9 = [v8 executeUncachedSQL:@"UPDATE clinical_accounts SET last_extracted_rowid = NULL" error:a4];

    v10 = v9 ^ 1u;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t _HDAddForeignKeyReferenceFromConceptIndexToObjects(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF5E0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDClearResumableQueryCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF610 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddToBeDeletedColumnToSharingAuthorizationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF628 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMakeOriginalRecordsRawContentNullable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF5F8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddUserWheelchairModeColumnToSummarySharingEntryTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF640 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddDeletedColumnToClinicalCredentials(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF658 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutActivitiesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF670 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRenameWorkoutActivityForeignKey(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF6A0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDFixWorkoutActivityForeignKey(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF6B8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDSourceTypeToSignedClinicalDataTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF6E8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddAttachmentAndReferencesEntities(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF688 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddVisionPrescriptionEntityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF6D0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddLotNumberToVaccinationRecordSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF700 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetProtectedInconsistentCloudCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF718 error:a4] ^ 1;

  return v6;
}

uint64_t __Block_byref_object_copy__104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double HDDemoData_timeFromNSDateComponents(void *a1)
{
  v1 = a1;
  v2 = [v1 hour];
  v3 = [v1 minute];
  v4 = [v1 second];

  return (v3 * 60.0 + v2 * 3600.0 + v4) * 0.0000115740741;
}

uint64_t HDDemoData_ageBetweenNSDateComponentsAndDate(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v8 = [v7 dateFromComponents:v5];

  v9 = [v7 components:4 fromDate:v8 toDate:v4 options:0];

  v10 = [v9 year];
  return v10;
}

uint64_t HDDemoData_currentDayOfYearFromNSDateComponents(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = [v4 dateFromComponents:v2];

  v6 = [v4 ordinalityOfUnit:16 inUnit:4 forDate:v5];
  return v6;
}

void sub_228CFBDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id HDFitnessFriendActivitySnapshotEntityPredicateForFriendUUID()
{
  v0 = MEMORY[0x277D10B18];
  v1 = _HDSQLiteValueForUUID();
  v2 = [v0 predicateWithProperty:@"friend_uuid" equalToValue:v1];

  return v2;
}

uint64_t __Block_byref_object_copy__105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228CFC164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HDFilterSharesBySharingType_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v3 recordID];
    v7 = [v6 zoneID];
    v17 = 0;
    v8 = [v7 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v17];

    if (v8)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 32);
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = [v4 recordID];
  v10 = [v9 zoneID];
  v15 = 0;
  v16 = 0;
  v11 = [v10 hd_isSharedSummaryZoneIDForUserIdentifier:&v16 syncCircleIdentifier:&v15];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v13 = 1;
LABEL_8:

  return v13;
}

void sub_228D01984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = MEMORY[0x277CCA9B8];
    v13 = [v11 reason];
    [v12 hk_assignError:v10 code:100 format:@"%@: Failed to create cloud sync container: %@"];

    objc_end_catch();
    JUMPOUT(0x228D01948);
  }

  _Unwind_Resume(exception_object);
}

void sub_228D022E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__106(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__107(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 __Block_byref_object_copy__310(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__313(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D084CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D088F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D08EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D098F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D09B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableEntityIdentifierReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228D0CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D0DAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__109(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDMedicationDoseEventEntityPredicateForLogOrigin(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = [v3 predicateWithProperty:@"log_origin" value:v4 comparisonType:v2];

  return v5;
}

uint64_t HDMedicationDoseEventEntityPredicateForMedicationIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"medication_identifier" value:a1 comparisonType:v2];
}

id HDMedicationDoseEventEntityPredicateForStatus(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = [v3 predicateWithProperty:@"status" value:v4 comparisonType:v2];

  return v5;
}

uint64_t HDMedicationDoseEventEntityPredicateForScheduleItemIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"schedule_item_identifier" value:a1 comparisonType:v2];
}

uint64_t HDMedicationDoseEventEntityPredicateForMedicationUUID(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"medication_uuid" value:a1 comparisonType:v2];
}

id HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifier(void *a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D10B18];
  v4 = [a1 underlyingIdentifier];
  v5 = [v3 predicateWithProperty:@"hashed_medication_identifier" value:v4 comparisonType:v2];

  return v5;
}

id HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifiers(void *a1)
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

        v8 = [*(*(&v12 + 1) + 8 * i) underlyingIdentifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"hashed_medication_identifier" values:v2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id HDMedicationDoseEventEntityPredicateForScheduledDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"scheduled_date" value:v3 comparisonType:a1];

  return v4;
}

id HDMedicationDoseEventEntityPredicateForMedicationConceptIdentifier(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC190]];

  if (v5)
  {
    if (a2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = MEMORY[0x277D10B18];
    v8 = [v3 underlyingIdentifier];
    v9 = [v7 predicateWithProperty:@"hashed_medication_identifier" value:v8 comparisonType:v6];
  }

  else
  {
    v9 = [MEMORY[0x277D10B70] BOOLeanPredicateWithValue:a2 ^ 1u];
  }

  return v9;
}

id HDMedicationDoseEventEntityPredicateForMedicationConceptIdentifiers(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = *MEMORY[0x277CCC190];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 domain];
        v11 = [v10 isEqualToString:v7];

        if (v11)
        {
          v12 = [v9 underlyingIdentifier];
          [v2 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"hashed_medication_identifier" values:v2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_228D11710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D123E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_228D134E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableDeviceReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 6)
      {
        break;
      }

      if (v13 <= 9)
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_45;
          case 8:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_45;
          case 9:
            v14 = PBReaderReadData();
            v15 = 96;
            goto LABEL_45;
        }

        goto LABEL_51;
      }

      if (v13 == 10)
      {
        *(a1 + 104) |= 1u;
        v23[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v23[0];
        goto LABEL_46;
      }

      if (v13 != 11)
      {
        if (v13 == 12)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_45;
        }

LABEL_51:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      v20 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 88), v20);
      v23[0] = 0;
      v23[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v20, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      v19 = [a2 position];
      if (v19 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 3)
    {
      switch(v13)
      {
        case 4:
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_45;
        case 5:
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_45;
        case 6:
          v14 = PBReaderReadString();
          v15 = 80;
          goto LABEL_45;
      }
    }

    else
    {
      switch(v13)
      {
        case 1:
          v14 = PBReaderReadString();
          v15 = 72;
          goto LABEL_45;
        case 2:
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_45;
        case 3:
          v14 = PBReaderReadString();
          v15 = 64;
LABEL_45:
          v18 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_46;
      }
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

id HDAssetFileHandleForFileURL(void *a1, void *a2, uint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    v31 = v8;
    v32 = [v5 path];
    *buf = 138543362;
    v48 = v32;
    _os_log_debug_impl(&dword_228986000, v31, OS_LOG_TYPE_DEBUG, "Creating new asset file %{public}@", buf, 0xCu);
  }

  v9 = [v5 path];
  v10 = [v6 createFileAtPath:v9 contents:0 attributes:0];

  if (v10)
  {
    v44 = 0;
    v11 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingURL:v5 error:&v44];
    v12 = v44;
    if (v11)
    {
      if (fcntl([v11 fileDescriptor], 48, 1))
      {
        _HKInitializeLogging();
        v13 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          v33 = v13;
          v34 = [v5 path];
          v35 = *__error();
          v36 = __error();
          v37 = strerror(*v36);
          *buf = 138543874;
          v48 = v34;
          v49 = 1024;
          v50 = v35;
          v51 = 2082;
          v52 = v37;
          _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Error setting F_NOCACHE on file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
        }
      }

      v14 = *MEMORY[0x277CCA198];
      v15 = *MEMORY[0x277CCA180];
      v45[0] = *MEMORY[0x277CCA1B0];
      v45[1] = v15;
      v46[0] = v14;
      v46[1] = &unk_283CB2F40;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      v17 = v16;
      if (_HDIsUnitTesting)
      {

        v17 = MEMORY[0x277CBEC10];
      }

      v18 = [v5 path];
      v43 = 0;
      v19 = [v6 setAttributes:v17 ofItemAtPath:v18 error:&v43];
      v20 = v43;

      if (v19)
      {
        if (unlink([v5 fileSystemRepresentation]))
        {
          _HKInitializeLogging();
          v21 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            v38 = v21;
            v39 = [v5 path];
            v40 = *__error();
            v41 = __error();
            v42 = strerror(*v41);
            *buf = 138543874;
            v48 = v39;
            v49 = 1024;
            v50 = v40;
            v51 = 2082;
            v52 = v42;
            _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Error unlinking file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
          }
        }

        v22 = v11;
      }

      else
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = [v5 path];
        v28 = [v26 stringWithFormat:@"Error setting protection class for %@", v27];

        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:102 description:v28 underlyingError:v20];
        v22 = 0;
      }
    }

    else
    {
      [v6 removeItemAtURL:v5 error:0];
      v24 = MEMORY[0x277CCACA8];
      v25 = [v5 path];
      v17 = [v24 stringWithFormat:@"Failed to create fileHandle at %@", v25];

      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:102 description:v17 underlyingError:v12];
      v22 = 0;
    }
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v12 = [v5 path];
    [v23 hk_assignError:a3 code:102 format:{@"Error creating file at %@", v12}];
    v22 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

void setUnderlyingDeviceContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 syncIdentity];
  v6 = [v5 codableSyncIdentity];
  [v3 setSyncIdentity:v6];

  [v3 setType:{objc_msgSend(v4, "type")}];
  v7 = [v4 productTypeName];
  [v3 setProductTypeName:v7];

  v8 = [v4 currentOSName];
  [v3 setCurrentOSName:v8];

  if (v4)
  {
    [v4 currentOSVersion];
  }

  v9 = HKNSOperatingSystemVersionString();
  [v3 setCurrentOSVersion:v9];

  v10 = [v4 modificationDate];
  [v10 timeIntervalSinceReferenceDate];
  [v3 setModificationDate:?];
}

__CFString *HDCloudSyncTargetPurposeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Pull";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", a1];
    }
  }

  else
  {
    v2 = @"Push";
  }

  return v2;
}

__CFString *HDCloudSyncTargetOptionsToString(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = @"()";
    goto LABEL_16;
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    [v3 addObject:@"seize"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v2 addObject:@"rebase"];
  if ((a1 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 4) != 0)
  {
LABEL_5:
    [v3 addObject:@"obsolete"];
  }

LABEL_6:
  if ([v3 count])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"(%@)", v5];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v11 = a1;
      _os_log_fault_impl(&dword_228986000, v7, OS_LOG_TYPE_FAULT, "Cloud sync target options %ld did not produce any option strings", buf, 0xCu);
    }

    v6 = @"()";
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __Block_byref_object_copy__112(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D196A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_228D1A088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__113(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableNotificationInstructionMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v48[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48[0] & 0x7F) << v5;
        if ((v48[0] & 0x80) == 0)
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
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            LOBYTE(v48[0]) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v48[0] & 0x7F) << v33;
            if ((v48[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v35;
          }

LABEL_82:
          v41 = 8;
LABEL_83:
          *(a1 + v41) = v21;
          goto LABEL_89;
        }

        if (v13 == 6)
        {
          v22 = PBReaderReadString();
          v23 = 56;
          goto LABEL_56;
        }

LABEL_69:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_89;
      }

      if (v13 == 7)
      {
        v22 = PBReaderReadString();
        v23 = 48;
        goto LABEL_56;
      }

      if (v13 == 8)
      {
        *(a1 + 80) |= 8u;
        v48[0] = 0;
        v39 = [a2 position] + 8;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:v48 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v48[0];
        v44 = 32;
LABEL_88:
        *(a1 + v44) = v43;
        goto LABEL_89;
      }

      if (v13 != 9)
      {
        goto LABEL_69;
      }

      v14 = objc_alloc_init(HDCodableNotificationInstructionCriteria);
      objc_storeStrong((a1 + 64), v14);
      v48[0] = 0;
      v48[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableNotificationInstructionCriteriaReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_89:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        *(a1 + 80) |= 2u;
        v48[0] = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:v48 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v48[0];
        v44 = 16;
        goto LABEL_88;
      }

      if (v13 == 4)
      {
        v22 = PBReaderReadString();
        v23 = 72;
LABEL_56:
        v32 = *(a1 + v23);
        *(a1 + v23) = v22;

        goto LABEL_89;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 80) |= 4u;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v48[0] & 0x7F) << v24;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_78;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v26;
        }

LABEL_78:
        v41 = 24;
        goto LABEL_83;
      }

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 80) |= 0x10u;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v48[0] & 0x7F) << v15;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_74;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_74:
        v41 = 40;
        goto LABEL_83;
      }
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

void sub_228D2139C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228D22C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D22FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __HDStringForIndexTriggerReasons_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 stringWithFormat:@"(%@, %ld)", v4, objc_msgSend(v3, "countForObject:", v4)];

  return v5;
}

__CFString *HDDatabaseMigrationForeignKeyStatusToString(uint64_t a1)
{
  v1 = @"<UNKNOWN>";
  if (a1 == 1)
  {
    v1 = @"disabled";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"enabled";
  }
}

__CFString *HDDatabaseMigrationStatusToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"<UNKNOWN>";
  }

  else
  {
    return off_278623630[a1];
  }
}

uint64_t HDCloudSyncCodableAttachmentReferenceReadFrom(uint64_t a1, void *a2)
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
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 > 99)
        {
          switch(v13)
          {
            case 'd':
              v23 = PBReaderReadString();
              v24 = 88;
              break;
            case 'e':
              v23 = PBReaderReadString();
              v24 = 72;
              break;
            case 'f':
              v23 = PBReaderReadString();
              v24 = 48;
              break;
            default:
              goto LABEL_69;
          }
        }

        else
        {
          if (v13 == 6)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 96) |= 2u;
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
                v20 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v33;
            }

LABEL_82:
            v39 = 16;
LABEL_83:
            *(a1 + v39) = v20;
            goto LABEL_86;
          }

          if (v13 != 7)
          {
            if (v13 != 8)
            {
              goto LABEL_69;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 96) |= 4u;
            while (1)
            {
              v44 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v44 & 0x7F) << v14;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_78;
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

LABEL_78:
            v39 = 24;
            goto LABEL_83;
          }

          v23 = PBReaderReadData();
          v24 = 56;
        }

        goto LABEL_68;
      }

      if (v13 <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v23 = PBReaderReadString();
        v24 = 40;
LABEL_68:
        v37 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_86;
      }

      if (v13 == 4)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 96) |= 8u;
        while (1)
        {
          v46 = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v46 & 0x7F) << v25;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_74;
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

LABEL_74:
        v39 = 32;
        goto LABEL_83;
      }

      if (v13 != 5)
      {
        goto LABEL_69;
      }

      *(a1 + 96) |= 1u;
      v42 = 0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v40 = [a2 data];
        [v40 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v42;
LABEL_86:
      v41 = [a2 position];
      if (v41 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v23 = PBReaderReadString();
      v24 = 64;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_69:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_86;
      }

      v23 = PBReaderReadString();
      v24 = 80;
    }

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableQuantitySeriesDatumReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
        *(a1 + 32) |= 2u;
        v27 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v27;
        v22 = &OBJC_IVAR___HDCodableQuantitySeriesDatum__startDate;
        goto LABEL_37;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        *(a1 + 32) |= 1u;
        v27 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v27;
        v22 = &OBJC_IVAR___HDCodableQuantitySeriesDatum__endDate;
LABEL_37:
        *(a1 + *v22) = v21;
        goto LABEL_38;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 32) |= 4u;
    v27 = 0;
    v16 = [a2 position] + 8;
    if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v21 = v27;
    v22 = &OBJC_IVAR___HDCodableQuantitySeriesDatum__value;
    goto LABEL_37;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D2E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_228D2E870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDUserDomainMedicalCodingEntityPredicateForCoding(void *a1)
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

double health::FormatOptions::FormatOptions(health::FormatOptions *this)
{
  *this = 2;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *&result = 0x2B0000002B00;
  *(this + 12) = 11008;
  *(this + 26) = 32;
  return result;
}

{
  *this = 2;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *&result = 0x2B0000002B00;
  *(this + 12) = 11008;
  *(this + 26) = 32;
  return result;
}

uint64_t health::FormatOptions::FormatOptions(uint64_t this, const char **a2)
{
  *this = 2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 11008;
  *(this + 52) = 32;
  v2 = *a2;
  v3 = *a2 + 1;
  *a2 = v3;
  if (*v2 != 123)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid format options string (must begin with '{').");
    goto LABEL_69;
  }

  v4 = *v3;
  if ((v4 - 48) > 9)
  {
LABEL_71:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    goto LABEL_69;
  }

  v5 = 0;
  v6 = v2 + 2;
  do
  {
    *a2 = v6;
    v5 = (v4 & 0xF) + 10 * v5;
    v7 = *v6++;
    LOBYTE(v4) = v7;
  }

  while ((v7 - 58) >= 0xFFFFFFF6);
  *(this + 8) = v5;
  v10 = *(v6 - 1);
  v9 = v6 - 1;
  v8 = v10;
  if (v10 == 58)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9++;
        *a2 = v9;
        v12 = *(v11 + 1);
        if (v12 > 0x57)
        {
          break;
        }

        if (*(v11 + 1) > 0x42u)
        {
          if (*(v11 + 1) > 0x4Fu)
          {
            if (v12 == 80)
            {
              goto LABEL_48;
            }

            if (v12 == 82)
            {
              goto LABEL_50;
            }

            if (v12 != 87)
            {
              goto LABEL_68;
            }

LABEL_44:
            *(this + 16) = 1;
            *a2 = v11 + 2;
            v14 = *(v11 + 2);
            if ((v14 - 48) > 9)
            {
              goto LABEL_71;
            }

            v15 = 0;
            v16 = v11 + 3;
            do
            {
              *a2 = v16;
              v15 = (v14 & 0xF) + 10 * v15;
              v17 = *v16++;
              LOBYTE(v14) = v17;
            }

            while ((v17 - 58) > 0xFFFFFFF5);
            *(this + 24) = v15;
            goto LABEL_56;
          }

          if (v12 == 67)
          {
LABEL_51:
            *this = 1;
          }

          else
          {
            if (v12 != 76)
            {
              goto LABEL_68;
            }

LABEL_40:
            *this = 0;
          }
        }

        else if (*(v11 + 1) <= 0x2Bu)
        {
          if (v12 == 38)
          {
            *(this + 53) = 1;
          }

          else
          {
            if (v12 != 43)
            {
              if (!v11[1])
              {
                goto LABEL_66;
              }

LABEL_68:
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string (unexpected formatting specifier)");
LABEL_69:
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            *(this + 48) = 1;
            v9 = v11 + 2;
            *a2 = v11 + 2;
            v13 = *(v11 + 2);
            *(this + 49) = v13;
            if (!v13)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string (no positive number indicator character after +)");
              goto LABEL_69;
            }
          }
        }

        else if (v12 != 44)
        {
          if (v12 == 46)
          {
            *(this + 32) = 1;
            *a2 = v11 + 2;
            v19 = *(v11 + 2);
            if ((v19 - 48) > 9)
            {
              goto LABEL_71;
            }

            v20 = 0;
            v16 = v11 + 3;
            do
            {
              *a2 = v16;
              v20 = (v19 & 0xF) + 10 * v20;
              v21 = *v16++;
              LOBYTE(v19) = v21;
            }

            while ((v21 - 58) > 0xFFFFFFF5);
            *(this + 40) = v20;
LABEL_56:
            v9 = v16 - 2;
            *a2 = v16 - 2;
          }

          else
          {
            if (v12 != 48)
            {
              goto LABEL_68;
            }

            *(this + 50) = 1;
          }
        }
      }

      if (*(v11 + 1) <= 0x6Eu)
      {
        if (*(v11 + 1) <= 0x62u)
        {
          if (v12 == 88)
          {
            *(this + 51) = 1;
            goto LABEL_60;
          }

          if (v12 != 98)
          {
            goto LABEL_68;
          }

          *(this + 4) = 3;
        }

        else
        {
          if (v12 == 99)
          {
            goto LABEL_51;
          }

          if (v12 != 100)
          {
            if (v12 != 108)
            {
              goto LABEL_68;
            }

            goto LABEL_40;
          }

          *(this + 4) = 0;
        }
      }

      else if (*(v11 + 1) > 0x76u)
      {
        if (v12 == 119)
        {
          goto LABEL_44;
        }

        if (v12 != 120)
        {
          if (v12 != 125)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

LABEL_60:
        *(this + 4) = 2;
      }

      else
      {
        switch(v12)
        {
          case 'o':
            *(this + 4) = 1;
            break;
          case 'p':
LABEL_48:
            v9 = v11 + 2;
            *a2 = v11 + 2;
            v18 = *(v11 + 2);
            *(this + 52) = v18;
            if (!v18)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string (no padding character after p)");
              goto LABEL_69;
            }

            break;
          case 'r':
LABEL_50:
            *this = 2;
            break;
          default:
            goto LABEL_68;
        }
      }
    }
  }

  if (v8 != 125)
  {
    if (v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options string (no : separator after index).");
    }

    else
    {
LABEL_66:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options string (no terminating } found).");
    }

    goto LABEL_69;
  }

  v11 = v9 - 1;
LABEL_63:
  *a2 = v11 + 2;
  return this;
}

{
  *this = 2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 11008;
  *(this + 52) = 32;
  v2 = *a2;
  v3 = *a2 + 1;
  *a2 = v3;
  if (*v2 != 123)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid format options string (must begin with '{').");
    goto LABEL_69;
  }

  v4 = *v3;
  if ((v4 - 48) > 9)
  {
LABEL_71:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    goto LABEL_69;
  }

  v5 = 0;
  v6 = v2 + 2;
  do
  {
    *a2 = v6;
    v5 = (v4 & 0xF) + 10 * v5;
    v7 = *v6++;
    LOBYTE(v4) = v7;
  }

  while ((v7 - 58) >= 0xFFFFFFF6);
  *(this + 8) = v5;
  v10 = *(v6 - 1);
  v9 = v6 - 1;
  v8 = v10;
  if (v10 == 58)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9++;
        *a2 = v9;
        v12 = *(v11 + 1);
        if (v12 > 0x57)
        {
          break;
        }

        if (*(v11 + 1) > 0x42u)
        {
          if (*(v11 + 1) > 0x4Fu)
          {
            if (v12 == 80)
            {
              goto LABEL_48;
            }

            if (v12 == 82)
            {
              goto LABEL_50;
            }

            if (v12 != 87)
            {
              goto LABEL_68;
            }

LABEL_44:
            *(this + 16) = 1;
            *a2 = v11 + 2;
            v14 = *(v11 + 2);
            if ((v14 - 48) > 9)
            {
              goto LABEL_71;
            }

            v15 = 0;
            v16 = v11 + 3;
            do
            {
              *a2 = v16;
              v15 = (v14 & 0xF) + 10 * v15;
              v17 = *v16++;
              LOBYTE(v14) = v17;
            }

            while ((v17 - 58) > 0xFFFFFFF5);
            *(this + 24) = v15;
            goto LABEL_56;
          }

          if (v12 == 67)
          {
LABEL_51:
            *this = 1;
          }

          else
          {
            if (v12 != 76)
            {
              goto LABEL_68;
            }

LABEL_40:
            *this = 0;
          }
        }

        else if (*(v11 + 1) <= 0x2Bu)
        {
          if (v12 == 38)
          {
            *(this + 53) = 1;
          }

          else
          {
            if (v12 != 43)
            {
              if (!v11[1])
              {
                goto LABEL_66;
              }

LABEL_68:
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string (unexpected formatting specifier)");
LABEL_69:
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            *(this + 48) = 1;
            v9 = v11 + 2;
            *a2 = v11 + 2;
            v13 = *(v11 + 2);
            *(this + 49) = v13;
            if (!v13)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string (no positive number indicator character after +)");
              goto LABEL_69;
            }
          }
        }

        else if (v12 != 44)
        {
          if (v12 == 46)
          {
            *(this + 32) = 1;
            *a2 = v11 + 2;
            v19 = *(v11 + 2);
            if ((v19 - 48) > 9)
            {
              goto LABEL_71;
            }

            v20 = 0;
            v16 = v11 + 3;
            do
            {
              *a2 = v16;
              v20 = (v19 & 0xF) + 10 * v20;
              v21 = *v16++;
              LOBYTE(v19) = v21;
            }

            while ((v21 - 58) > 0xFFFFFFF5);
            *(this + 40) = v20;
LABEL_56:
            v9 = v16 - 2;
            *a2 = v16 - 2;
          }

          else
          {
            if (v12 != 48)
            {
              goto LABEL_68;
            }

            *(this + 50) = 1;
          }
        }
      }

      if (*(v11 + 1) <= 0x6Eu)
      {
        if (*(v11 + 1) <= 0x62u)
        {
          if (v12 == 88)
          {
            *(this + 51) = 1;
            goto LABEL_60;
          }

          if (v12 != 98)
          {
            goto LABEL_68;
          }

          *(this + 4) = 3;
        }

        else
        {
          if (v12 == 99)
          {
            goto LABEL_51;
          }

          if (v12 != 100)
          {
            if (v12 != 108)
            {
              goto LABEL_68;
            }

            goto LABEL_40;
          }

          *(this + 4) = 0;
        }
      }

      else if (*(v11 + 1) > 0x76u)
      {
        if (v12 == 119)
        {
          goto LABEL_44;
        }

        if (v12 != 120)
        {
          if (v12 != 125)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

LABEL_60:
        *(this + 4) = 2;
      }

      else
      {
        switch(v12)
        {
          case 'o':
            *(this + 4) = 1;
            break;
          case 'p':
LABEL_48:
            v9 = v11 + 2;
            *a2 = v11 + 2;
            v18 = *(v11 + 2);
            *(this + 52) = v18;
            if (!v18)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string (no padding character after p)");
              goto LABEL_69;
            }

            break;
          case 'r':
LABEL_50:
            *this = 2;
            break;
          default:
            goto LABEL_68;
        }
      }
    }
  }

  if (v8 != 125)
  {
    if (v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options string (no : separator after index).");
    }

    else
    {
LABEL_66:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options string (no terminating } found).");
    }

    goto LABEL_69;
  }

  v11 = v9 - 1;
LABEL_63:
  *a2 = v11 + 2;
  return this;
}

std::string *health::CopyFormatSectionToResult(std::string *__s, std::string *this, std::string::size_type __pos, std::string::size_type __n1, int a5)
{
  v6 = __s;
  if (a5)
  {
    while (1)
    {
      v7 = v6->__r_.__value_.__s.__data_[0];
      if (v7 == 123)
      {
        v8 = v6->__r_.__value_.__s.__data_[1];
        v6 = (v6 + 1);
        if (v8 != 123)
        {
          return __s;
        }
      }

      else if (!v6->__r_.__value_.__s.__data_[0])
      {
        return __s;
      }

      v9 = this->__r_.__value_.__r.__words[0];
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = this;
      }

      v9->__r_.__value_.__s.__data_[__pos++] = v7;
      v6 = (v6 + 1);
    }
  }

  return std::string::replace(this, __pos, __n1, __s, __n1);
}

void health::FormatPointerImplementation(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  health::HDDemangleSymbol(a1, &__p);
  v5 = a2;
  v7[0] = &v5;
  v7[1] = &__p;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<std::string,unsigned long>("<{0}: {1:x}>", a3, 0, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_228D305F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void health::FormatImplementation<std::string,unsigned long>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    v11 = a1;
    while (1)
    {
      if (v6 == 123)
      {
        v12 = v11->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v38 = &v11->__r_.__value_.__s.__data_[2];
            v27 = v11->__r_.__value_.__s.__data_[2];
            if ((v27 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v28 = 0;
              v29 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v38 = v29;
                v28 = (v27 & 0xF) + 10 * v28;
                v30 = *v29++;
                LOBYTE(v27) = v30;
              }

              while ((v30 - 58) >= 0xFFFFFFF6);
              v38 = v29;
              if (*(v29 - 1) == 125)
              {
                health::FormatterParameters<0ul,std::string,unsigned long>::formatOptionsAtIndex<std::string,unsigned long>(v28);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v38 = v11;
          health::FormatOptions::FormatOptions(&v33, &v38);
          v16 = v38;
          if (v34)
          {
            if (v34 != 1)
            {
              v32 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v32, "Parameter index out of bounds.");
              __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            health::TypeFormatter<unsigned long,void>::TypeFormatter(&v39, **a4, &v33);
            if (v45 == 1 && *(v39 + 48) != 1)
            {
              v17 = 64;
            }

            else
            {
              v17 = 65;
            }

            v22 = v17 - v44;
            if (*(v39 + 50) == 1 && v22 <= *(v39 + 24))
            {
              v22 = *(v39 + 24);
            }

            v23 = *(&v35 + 1);
            if (*(&v35 + 1) <= v22)
            {
              v23 = v22;
            }

            if (v35)
            {
              v24 = v23;
            }

            else
            {
              v24 = v22;
            }

            health::FormatImplementation<std::string,unsigned long>(v16, a2, v24 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = a2;
            }

            else
            {
              v25 = a2->__r_.__value_.__r.__words[0];
            }

            health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long>(&v33, &v25[a3 - v9], &v39);
          }

          else
          {
            v18 = *(a4 + 8);
            v39 = v18;
            v43 = v37;
            v42 = v36;
            v41 = v35;
            v40 = v33;
            v19 = *(v18 + 23);
            if ((v19 & 0x8000000000000000) != 0)
            {
              v19 = *(v18 + 8);
            }

            v20 = *(&v35 + 1);
            if (*(&v35 + 1) <= v19)
            {
              v20 = v19;
            }

            if (v35)
            {
              v19 = v20;
            }

            health::FormatImplementation<std::string,unsigned long>(v38, a2, v19 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = a2->__r_.__value_.__r.__words[0];
            }

            health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v33, &v21[a3 - v9], &v39);
          }

          if (v9)
          {
            health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          }

          goto LABEL_45;
        }

        v10 = 1;
        v11 = (v11 + 1);
      }

      v13 = v11->__r_.__value_.__s.__data_[1];
      v11 = (v11 + 1);
      v6 = v13;
      --v9;
      if (!v13)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {
          v14 = *MEMORY[0x277D85DE8];

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          return;
        }

LABEL_45:
        v26 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,std::string,unsigned long>::formatOptionsAtIndex<std::string,unsigned long>(uint64_t a1)
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

__CFString *HDCKDatabaseScopeToString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"UnknownScope(%ld)", a1];
  }

  else
  {
    v2 = off_278623968[a1 - 1];
  }

  return v2;
}

__CFString *HDCloudSyncZoneTypeToString(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_278623980[a1];
  }

  return v2;
}

__CFString *HDCloudSyncZonePurposeToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_2786239C0[a1];
  }

  return v2;
}

void sub_228D3C588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::BlockAccessFile(uint64_t a1, __int128 *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return health::BlockAccessFile::BlockAccessFile(a1, a2, v3, 0);
}

{
  v3[0] = 0;
  v3[1] = 0;
  return health::BlockAccessFile::BlockAccessFile(a1, a2, v3, 0);
}

uint64_t health::BlockAccessFile::BlockAccessFile(uint64_t a1, __int128 *a2, void *a3, int a4)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v6 = a3[1];
  v10[0] = *a3;
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  health::TransactionalFile::TransactionalFile(a1, a2, v10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 792) = 0x348424146;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 800) = 68;
  *(a1 + 808) = 68;
  health::TransactionalFile::open(a1, a4);
  v9 = 0;
  v12[0] = &unk_283BE9EE0;
  v12[1] = &v9;
  v12[2] = a1;
  v12[3] = v12;
  health::TransactionalFile::readTransactionWithLambda(a1, v12);
  std::__function::__value_func<void ()(health::TransactionalFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v12);
  if (v9 == 1)
  {
    v11[0] = &unk_283BE9F70;
    v11[1] = a1;
    v11[3] = v11;
    health::TransactionalFile::writeTransactionWithLambda(a1, v11);
    std::__function::__value_func<BOOL ()(health::TransactionalFile::WriteTransaction &)>::~__value_func[abi:ne200100](v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_228D3EC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(health::TransactionalFile::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  health::TransactionalFile::~TransactionalFile(v4);
  _Unwind_Resume(a1);
}

void sub_228D3EC98()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x228D3EC90);
}

uint64_t health::BlockAccessFile::performReadTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_283BEA000;
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = v4;
  health::TransactionalFile::readTransactionWithLambda(a1, v4);
  result = std::__function::__value_func<void ()(health::TransactionalFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D3ED68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::TransactionalFile::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::checkIntegrity(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_283BEA100;
  v4[1] = a2;
  v4[3] = v4;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v4);
  result = std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D3EE00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::isBlockUsingFreeSpace(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = &unk_283BEA190;
  v6[1] = a2;
  v6[2] = &v5;
  v6[3] = v6;
  health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(a3, v6);
  std::__function::__value_func<void ()(health::FileExtent const&)>::~__value_func[abi:ne200100](v6);
  result = v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D3EEA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::FileExtent const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(uint64_t *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = a1;
  v5[0] = *(a1[1] + 24);
  v5[1] = v6;
  v4[0] = a2;
  v4[1] = a1;
  bzero(v7, 0x6F2uLL);
  health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>>(*a1, v7, v5[0]);
  return health::BTree<health::BlockAccessFile::ReadTransaction::FreeSpaceMapReadConfiguration>::_enumerateAllValues<health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(std::function<void ()(health::FileExtent const&)>)::$_0>(v5, v7, 0, v4);
}

void *health::BlockAccessFile::ReadTransaction::ReadTransaction(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

void health::BlockAccessFile::ReadTransaction::retrieveBlock(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v39 = a2;
  v40 = a3;
  if (*(a1[1] + 4) < 2u)
  {
    if (a3 != *(a4 + 8))
    {
      v15 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v23, "pointer.length == destination.size()");
      std::string::basic_string[abi:ne200100]<0>(v22, "retrieveBlock");
      std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      v41[0] = *(a4 + 8);
      health::FormatString<unsigned long long &,unsigned long>(&v20, "Attempt to retrieve a block of length {0} into a buffer of size {1}.", &v40, v41);
      health::_HDAssertImplementation<health::file_access_error>(v15, v23, v22, v21, 151, &v20);
    }

    v16 = *a1;
    health::RawBuffer::RawBuffer(&v37, *a4, *(a4 + 8));
    v19 = v16 + 8;
    v18 = *(v16 + 8);
    v17 = *(v19 + 8);
    health::RawBuffer::RawBuffer(v41, v37, v38);
    health::TransactionalFile::_readBufferAtOffset(v17, v18, v41, a2);
  }

  else
  {
    v37 = 0;
    LODWORD(v38) = 0;
    health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockHeader>(*a1, &v37, a2);
    if (v37 != *(a4 + 8))
    {
      v7 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v36, "blockHeader.blockLength == destination.size()");
      std::string::basic_string[abi:ne200100]<0>(v35, "retrieveBlock");
      std::string::basic_string[abi:ne200100]<0>(v34, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      v41[0] = *(a4 + 8);
      health::FormatString<unsigned long long &,unsigned long>(&v33, "blockHeader.blockLength {0} differs from destination.size() {1}", &v37, v41);
      health::_HDAssertImplementation<health::file_access_error>(v7, v36, v35, v34, 146, &v33);
    }

    if (v37 != v40)
    {
      v8 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v32, "blockHeader.blockLength == pointer.length");
      std::string::basic_string[abi:ne200100]<0>(v31, "retrieveBlock");
      std::string::basic_string[abi:ne200100]<0>(v30, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      health::FormatString<unsigned long long &,unsigned long long &>(&__p, &v37, &v40);
      health::_HDAssertImplementation<health::file_access_error>(v8, v32, v31, v30, 147, &__p);
    }

    v9 = *a1;
    health::RawBuffer::RawBuffer(v28, *a4, *(a4 + 8));
    v10 = v39;
    v13 = v9 + 8;
    v12 = *(v9 + 8);
    v11 = *(v13 + 8);
    health::RawBuffer::RawBuffer(v41, v28[0], v28[1]);
    health::TransactionalFile::_readBufferAtOffset(v11, v12, v41, v10 + 12);
    LODWORD(v11) = v38;
    if (v11 != health::FletcherChecksum(*a4, *(a4 + 8)))
    {
      v14 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "blockHeader.checksum == destination.checksum()");
      std::string::basic_string[abi:ne200100]<0>(v26, "retrieveBlock");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      LODWORD(v28[0]) = health::FletcherChecksum(*a4, *(a4 + 8));
      v41[0] = v28;
      v41[1] = &v38;
      memset(&v24, 0, sizeof(v24));
      health::FormatImplementation<unsigned int &,unsigned int>("Block checksum {0} does not match retrieved buffer checksum {1}", &v24, 0, v41);
      health::_HDAssertImplementation<health::data_corruption_error>(v14, v27, v26, v25, 149, &v24);
    }
  }
}

void sub_228D3F354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

uint64_t health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockHeader>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 12;
  v12[0] = v14;
  v12[1] = v14;
  v12[2] = 12;
  health::RawBuffer::RawBuffer(v11, v14, 12);
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  health::RawBuffer::RawBuffer(v13, v11[0], v11[1]);
  health::TransactionalFile::_readBufferAtOffset(v7, v6, v13, a3);
  v13[0] = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v12, v13);
  *a2 = v13[0];
  LODWORD(v13[0]) = 0;
  health::DeserializationBuffer::extractRaw<unsigned int>(v12, v13);
  *(a2 + 8) = v13[0];
  result = v15;
  v15 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D3F5D4(_Unwind_Exception *a1)
{
  v2 = STACK[0x438];
  STACK[0x438] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void health::FormatString<unsigned long long &,unsigned long>(std::string *a1, std::string *a2, unint64_t *a3, unint64_t *a4)
{
  v4[0] = a4;
  v4[1] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned long long &,unsigned long>(a2, a1, 0, v4);
}

void sub_228D3F648(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatString<unsigned long long &,unsigned long long &>(std::string *a1, void *a2, void *a3)
{
  v3[0] = a3;
  v3[1] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned long long &,unsigned long long &>("blockHeader.blockLength {0} does not match pointer.length {1}.", a1, 0, v3);
}

void sub_228D3F6B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::ReadTransaction::rootUserPointer(health::BlockAccessFile::ReadTransaction *this)
{
  v2 = 0x348424146;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v3 = 68;
  v4 = 68;
  health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader>(*this, &v2, 0);
  return v6;
}

uint64_t health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 68;
  v12[0] = v14;
  v12[1] = v14;
  v12[2] = 68;
  health::RawBuffer::RawBuffer(v11, v14, 68);
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  health::RawBuffer::RawBuffer(v13, v11[0], v11[1]);
  health::TransactionalFile::_readBufferAtOffset(v7, v6, v13, a3);
  health::BlockAccessFile::BlockAccessFileHeader::deserialize(a2, v12);
  result = v15;
  v15 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D3F804(_Unwind_Exception *a1)
{
  v2 = STACK[0x438];
  STACK[0x438] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void health::BlockAccessFile::ReadTransaction::_checkIntegrity(uint64_t *a1, uint64_t a2)
{
  v11 = 0x348424146;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12 = 68;
  v13 = 68;
  health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader>(*a1, &v11, 0);
  if (v11 != 1212301638)
  {
    v8 = 1212301638;
    v9 = v11;
    health::FormatString<unsigned int,unsigned int>(&__p, "Header has invalid magic word {0} (expected {1})", &v9, &v8);
    v18 = 0;
    v19[0] = 0;
    v17 = 72;
    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v4 + 48))(v4, &v18, v19, &v17, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((HIDWORD(v11) - 4) <= 0xFFFFFFFC)
  {
    v9 = HIDWORD(v11);
    v8 = 3;
    health::FormatString<unsigned int,unsigned int>(&__p, "Header has invalid version {0} (expected {1})", &v9, &v8);
    v18 = 0;
    v19[0] = 0;
    v17 = 72;
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, &v18, v19, &v17, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = 68;
  if (v12 != 68)
  {
    v19[0] = &v9;
    v19[1] = &v12;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<unsigned int &,unsigned int &>("Header's internal reported length {0} does not match expected header length {1}", &__p, 0, v19);
    v18 = 0;
    v19[0] = 0;
    v17 = 72;
    v6 = *(a2 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v18, v19, &v17, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents(a1, v7);
  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_228D3FB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatString<unsigned int,unsigned int>(std::string *a1, std::string *a2, unsigned int *a3, unsigned int *a4)
{
  v4[0] = a4;
  v4[1] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned int,unsigned int>(a2, a1, 0, v4);
}

void sub_228D3FBD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents@<X0>(health::BlockAccessFile::ReadTransaction *this@<X0>, uint64_t *a2@<X8>)
{
  v22[4] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v22[0] = &unk_283BEA220;
  v22[1] = a2;
  v22[3] = v22;
  health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(this, v22);
  result = std::__function::__value_func<void ()(health::FileExtent const&)>::~__value_func[abi:ne200100](v22);
  v4 = *a2;
  if ((a2[1] - *a2) >= 0x11)
  {
    v5 = 1;
    v6 = 1;
    do
    {
      v7 = (v4 + 16 * (v6 - 1));
      v8 = (v4 + 16 * v5);
      v9 = *v7;
      v10 = *v8;
      if (*v7 <= *v8 && v7[1] + v9 > v10 || v10 <= v9 && v8[1] + v10 > v9)
      {
        v11 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v20, "!left.overlaps(right)");
        std::string::basic_string[abi:ne200100]<0>(v19, "_computeFreeSpaceExtents");
        std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
        v21[0] = v8;
        v21[1] = v7;
        memset(&__p, 0, sizeof(__p));
        health::FormatImplementation<health::FileExtent &,health::FileExtent &>("Found overlapping free space extents {0} and {1}", &__p, 0, v21);
        health::_HDAssertImplementation<health::data_corruption_error>(v11, v20, v19, v18, 205, &__p);
      }

      v12 = v7[1];
      v4 = *a2;
      v13 = a2[1];
      if (v12 + *v7 == *v8)
      {
        v7[1] = v8[1] + v12;
        v14 = v4 + 16 * v5;
        v15 = v13 - (v14 + 16);
        if (v13 != v14 + 16)
        {
          result = memmove(v14, (v14 + 16), v13 - (v14 + 16));
          v4 = *a2;
        }

        v13 = v14 + v15;
        a2[1] = v14 + v15;
        --v6;
      }

      v5 = ++v6;
    }

    while (v6 < ((v13 - v4) >> 4));
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D3FE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__function::__value_func<void ()(health::FileExtent const&)>::~__value_func[abi:ne200100](&a35);
  v37 = *v35;
  if (*v35)
  {
    *(v35 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

double health::BlockAccessFile::WriteTransaction::WriteTransaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t health::BlockAccessFile::WriteTransaction::storeBlock(health::BlockAccessFile::WriteTransaction *this, uint64_t a2, const void *a3)
{
  v7[0] = a3;
  v7[1] = a2;
  v4 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(this, a2);
  health::BlockAccessFile::WriteTransaction::updateObject<health::ByteRange<void const,unsigned long long>>(this, v4, v5, v7);
  return v4;
}

void health::BlockAccessFile::WriteTransaction::updateBlock(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  if (*(*(a1 + 24) + 4) < 2u)
  {
    if (a3 != *(a4 + 8))
    {
      v10 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v14, "pointer.length == updatedData.size()");
      std::string::basic_string[abi:ne200100]<0>(v13, "updateBlock");
      std::string::basic_string[abi:ne200100]<0>(v12, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      v24 = *(a4 + 8);
      health::FormatString<unsigned long long &,unsigned long>(&v11, "Attempt to update a block of length {0} from a buffer of size {1}.", &v27, &v24);
      health::_HDAssertImplementation<health::file_access_error>(v10, v14, v13, v12, 273, &v11);
    }

    v8 = *(a1 + 16);
    v9 = v26;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockHeader>(*(a1 + 16), &v24, a2);
    if (v24 != *(a4 + 8))
    {
      v6 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v23, "blockHeader.blockLength == updatedData.size()");
      std::string::basic_string[abi:ne200100]<0>(v22, "updateBlock");
      std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      v19 = *(a4 + 8);
      health::FormatString<unsigned long long &,unsigned long>(&v20, "blockHeader.blockLength {0} differs from updatedData.size() {1}", &v24, &v19);
      health::_HDAssertImplementation<health::file_access_error>(v6, v23, v22, v21, 266, &v20);
    }

    if (v24 != v27)
    {
      v7 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v18, "blockHeader.blockLength == pointer.length");
      std::string::basic_string[abi:ne200100]<0>(v17, "updateBlock");
      std::string::basic_string[abi:ne200100]<0>(v16, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      health::FormatString<unsigned long long &,unsigned long long &>(&__p, &v24, &v27);
      health::_HDAssertImplementation<health::file_access_error>(v7, v18, v17, v16, 267, &__p);
    }

    v25 = health::FletcherChecksum(*a4, *(a4 + 8));
    health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockHeader &>(*(a1 + 16), &v24, v26);
    v8 = *(a1 + 16);
    v9 = v26 + 12;
  }

  health::TransactionalFile::WriteTransaction::writeBufferAtOffset(v8, a4, v9);
}

void sub_228D40240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockHeader &>(health::TransactionalFile::WriteTransaction *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 12;
  v10[0] = v11;
  v10[1] = v11;
  v10[2] = 12;
  v9[0] = *a2;
  health::SerializationBuffer::appendRaw<unsigned long long>(v10, v9);
  LODWORD(v9[0]) = *(a2 + 8);
  health::SerializationBuffer::appendRaw<unsigned int>(v10, v9);
  if (v13 <= 0x3FF)
  {
    v6 = v11;
  }

  else
  {
    v6 = v12;
  }

  health::RawBuffer::RawBuffer(v9, v6, v13);
  health::TransactionalFile::WriteTransaction::writeBufferAtOffset(a1, v9, a3);
  result = v12;
  v12 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D40450(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::WriteTransaction::freeBlock(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5.n128_u64[0] = a2;
  v5.n128_u64[1] = a3;
  if (*(*(a1 + 24) + 4) >= 2u)
  {
    v5.n128_u64[1] = a3 + 12;
  }

  std::deque<health::BlockPointer>::push_back(a1 + 56, &v5);
  return health::BlockAccessFile::WriteTransaction::_flushFreedBlockQueue(a1);
}

uint64_t health::BlockAccessFile::WriteTransaction::_flushFreedBlockQueue(uint64_t this)
{
  if ((*(this + 48) & 1) == 0)
  {
    v1 = this;
    *(this + 48) = 1;
    while (1)
    {
      v2 = *(v1 + 96);
      if (!v2)
      {
        break;
      }

      ++*(v1 + 88);
      *(v1 + 96) = v2 - 1;
      this = std::deque<health::BlockPointer>::__maybe_remove_front_spare[abi:ne200100](v1 + 56, 1);
    }

    *(v1 + 48) = 0;
  }

  return this;
}

void health::TransactionalFile::~TransactionalFile(health::TransactionalFile *this)
{
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(this + 768, *(this + 97));
  std::deque<std::__thread_id>::~deque[abi:ne200100](this + 90);
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(this + 696, *(this + 88));
  std::condition_variable::~condition_variable((this + 648));
  std::mutex::~mutex((this + 584));
  std::__function::__value_func<BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::~__value_func[abi:ne200100](this + 552);
  std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::~__hash_table(this + 496);
  std::mutex::~mutex((this + 416));
  v2 = *(this + 42);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  health::WriteAheadLog::~WriteAheadLog((this + 16));
  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 std::__function::__func<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0>,void ()(health::TransactionalFile::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9EE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0>,void ()(health::TransactionalFile::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t (***a2)(void))
{
  v4 = *(a1 + 16);
  result = (**a2)(a2);
  if (!result)
  {
    goto LABEL_6;
  }

  result = health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader>(a2, v4 + 792, 0);
  if (*(v4 + 792) != 1212301638)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _ZN6health21data_corruption_errorCI1St13runtime_errorEPKc(exception, "Block access file header appears to be corrupted (invalid magic word).");
  }

  v6 = *(v4 + 796);
  if (v6 == 2)
  {
LABEL_6:
    **(a1 + 8) = 1;
  }

  else if (v6 == 1)
  {
    *(v4 + 816) = xmmword_22916D190;
  }

  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_0>,void ()(health::TransactionalFile::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(health::TransactionalFile::ReadTransaction const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t health::SmartBuffer::SmartBuffer(uint64_t this, unint64_t a2)
{
  *(this + 1024) = 0;
  *(this + 1032) = a2;
  if (a2 >= 0x400)
  {
    operator new[]();
  }

  return this;
}

void sub_228D408F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 1024);
  *(v1 + 1024) = 0;
  if (v3)
  {
    MEMORY[0x22AAC8570](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::BlockAccessFileHeader::serialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) < 3u)
  {
    LODWORD(v6) = *a1;
    health::SerializationBuffer::appendRaw<unsigned int>(a2, &v6);
    LODWORD(v6) = *(a1 + 4);
    health::SerializationBuffer::appendRaw<unsigned int>(a2, &v6);
    LODWORD(v6) = *(a1 + 8);
    health::SerializationBuffer::appendRaw<unsigned int>(a2, &v6);
    v4 = *(a1 + 16);
  }

  else
  {
    LODWORD(v6) = *a1;
    health::SerializationBuffer::appendRaw<unsigned int>(a2, &v6);
    LODWORD(v6) = *(a1 + 4);
    health::SerializationBuffer::appendRaw<unsigned int>(a2, &v6);
    LODWORD(v6) = *(a1 + 8);
    health::SerializationBuffer::appendRaw<unsigned int>(a2, &v6);
    v6 = *(a1 + 16);
    health::SerializationBuffer::appendRaw<unsigned long long>(a2, &v6);
    v6 = *(a1 + 24);
    health::SerializationBuffer::appendRaw<unsigned long long>(a2, &v6);
    v4 = *(a1 + 32);
  }

  v6 = v4;
  health::SerializationBuffer::appendRaw<unsigned long long>(a2, &v6);
  v6 = *(a1 + 40);
  health::SerializationBuffer::appendRaw<unsigned long long>(a2, &v6);
  v6 = *(a1 + 48);
  health::SerializationBuffer::appendRaw<unsigned long long>(a2, &v6);
  v6 = *(a1 + 56);
  health::SerializationBuffer::appendRaw<unsigned long long>(a2, &v6);
  v6 = *(a1 + 64);
  return health::SerializationBuffer::appendRaw<unsigned long long>(a2, &v6);
}

uint64_t std::__function::__func<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1>,BOOL ()(health::TransactionalFile::WriteTransaction &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE9F70;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1>,BOOL ()(health::TransactionalFile::WriteTransaction &)>::operator()(uint64_t a1, health::TransactionalFile::WriteTransaction *a2)
{
  v3 = *(a1 + 8);
  if ((**a2)(a2) < 1)
  {
    bzero(v6, 0x6F2uLL);
    *(v3 + 792) = 0x348424146;
    *(v3 + 800) = 68;
    *(v3 + 824) = 1778;
    *(v3 + 808) = xmmword_22916D1A0;
    health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader &>(a2, v3 + 792, 0);
    health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17> &>(a2, v6, *(v3 + 816));
  }

  else if (*(v3 + 796) == 2)
  {
    bzero(v6, 0x6F2uLL);
    v4 = *(v3 + 808);
    *(v3 + 816) = v4;
    *(v3 + 824) = 1778;
    *(v3 + 808) = v4 + 1778;
    health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17> &>(a2, v6, v4);
    *(v3 + 796) = 0x4400000003;
    health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader &>(a2, v3 + 792, 0);
  }

  return 1;
}

uint64_t std::__function::__func<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::BlockAccessFile::BlockAccessFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>,health::TransactionalFile::OpenMethod)::$_1>,BOOL ()(health::TransactionalFile::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17> &>(health::TransactionalFile::WriteTransaction *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  health::SmartBuffer::SmartBuffer(v17, 0x6F2uLL);
  v6 = 0;
  if (v19 <= 0x3FF)
  {
    v7 = v17;
  }

  else
  {
    v7 = v18;
  }

  v16[0] = v7;
  v16[1] = v7;
  v16[2] = 1778;
  v8 = a2;
  do
  {
    v9 = (a2 + 96 * v6);
    v15[0] = *v9;
    health::SerializationBuffer::appendRaw<unsigned long long>(v16, v15);
    for (i = 8; i != 88; i += 8)
    {
      v15[0] = *(v8 + i);
      health::SerializationBuffer::appendRaw<unsigned long long>(v16, v15);
    }

    v15[0] = v9[11];
    health::SerializationBuffer::appendRaw<unsigned long long>(v16, v15);
    ++v6;
    v8 += 96;
  }

  while (v6 != 17);
  for (j = 0; j != 144; j += 8)
  {
    v15[0] = *(a2 + 1632 + j);
    health::SerializationBuffer::appendRaw<unsigned long long>(v16, v15);
  }

  LOWORD(v15[0]) = *(a2 + 1776);
  health::SerializationBuffer::appendRaw<unsigned short>(v16, v15);
  if (v19 <= 0x3FF)
  {
    v12 = v17;
  }

  else
  {
    v12 = v18;
  }

  health::RawBuffer::RawBuffer(v15, v12, v19);
  health::TransactionalFile::WriteTransaction::writeBufferAtOffset(a1, v15, a3);
  result = v18;
  v18 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}