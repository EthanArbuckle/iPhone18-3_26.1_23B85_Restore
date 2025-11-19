void sub_228D40E04(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(health::TransactionalFile::WriteTransaction &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::BlockAccessFile::performReadTransactionWithLambda(std::function<void ()(health::BlockAccessFile::ReadTransaction const&)>)::$_0,std::allocator<health::BlockAccessFile::performReadTransactionWithLambda(std::function<void ()(health::BlockAccessFile::ReadTransaction const&)>)::$_0>,void ()(health::TransactionalFile::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEA000;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::performReadTransactionWithLambda(std::function<void ()(health::BlockAccessFile::ReadTransaction const&)>)::$_0,std::allocator<health::BlockAccessFile::performReadTransactionWithLambda(std::function<void ()(health::BlockAccessFile::ReadTransaction const&)>)::$_0>,void ()(health::TransactionalFile::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8) + 792;
  v6[0] = a2;
  v6[1] = v3;
  v4 = *(v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v6);
}

uint64_t std::__function::__func<health::BlockAccessFile::performReadTransactionWithLambda(std::function<void ()(health::BlockAccessFile::ReadTransaction const&)>)::$_0,std::allocator<health::BlockAccessFile::performReadTransactionWithLambda(std::function<void ()(health::BlockAccessFile::ReadTransaction const&)>)::$_0>,void ()(health::TransactionalFile::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::BlockAccessFile::performWriteTransactionWithLambda(std::function<BOOL ()(health::BlockAccessFile::WriteTransaction &)>)::$_0,std::allocator<health::BlockAccessFile::performWriteTransactionWithLambda(std::function<BOOL ()(health::BlockAccessFile::WriteTransaction &)>)::$_0>,BOOL ()(health::TransactionalFile::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEA080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::performWriteTransactionWithLambda(std::function<BOOL ()(health::BlockAccessFile::WriteTransaction &)>)::$_0,std::allocator<health::BlockAccessFile::performWriteTransactionWithLambda(std::function<BOOL ()(health::BlockAccessFile::WriteTransaction &)>)::$_0>,BOOL ()(health::TransactionalFile::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8) + 792;
  v7[0] = a2;
  v7[1] = v3;
  v7[2] = a2;
  v7[3] = v3;
  v7[4] = 0;
  v7[5] = v7;
  v8 = 0;
  memset(v9, 0, sizeof(v9));
  v4 = *(v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v7);
  std::deque<health::BlockPointer>::~deque[abi:ne200100](v9);
  return v5;
}

uint64_t std::__function::__func<health::BlockAccessFile::performWriteTransactionWithLambda(std::function<BOOL ()(health::BlockAccessFile::WriteTransaction &)>)::$_0,std::allocator<health::BlockAccessFile::performWriteTransactionWithLambda(std::function<BOOL ()(health::BlockAccessFile::WriteTransaction &)>)::$_0>,BOOL ()(health::TransactionalFile::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::deque<health::BlockPointer>::~deque[abi:ne200100](void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
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

uint64_t std::__function::__func<health::BlockAccessFile::checkIntegrity(std::function<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>)::$_0,std::allocator<health::BlockAccessFile::checkIntegrity(std::function<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BEA100;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::checkIntegrity(std::function<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>)::$_0,std::allocator<health::BlockAccessFile::checkIntegrity(std::function<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    if (v4 == v3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  health::BlockAccessFile::ReadTransaction::_checkIntegrity(a2, v7);
  result = std::__function::__value_func<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::checkIntegrity(std::function<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>)::$_0,std::allocator<health::BlockAccessFile::checkIntegrity(std::function<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>)::$_0>,void ()(health::BlockAccessFile::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::BlockAccessFile::isBlockUsingFreeSpace(health::BlockPointer const&,health::BlockAccessFile::WriteTransaction &)::$_0,std::allocator<health::BlockAccessFile::isBlockUsingFreeSpace(health::BlockPointer const&,health::BlockAccessFile::WriteTransaction &)::$_0>,void ()(health::FileExtent const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEA190;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::isBlockUsingFreeSpace(health::BlockPointer const&,health::BlockAccessFile::WriteTransaction &)::$_0,std::allocator<health::BlockAccessFile::isBlockUsingFreeSpace(health::BlockPointer const&,health::BlockAccessFile::WriteTransaction &)::$_0>,void ()(health::FileExtent const&)>::operator()(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *v2;
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 < *v2 || v5 == 0;
  if (!v6 && v4 < v2[1] + v3 || ((v7 = v5 + v4, v4 <= v3) ? (v8 = v7 > v3) : (v8 = 0), v8))
  {
    **(result + 16) = 1;
  }

  return result;
}

uint64_t std::__function::__func<health::BlockAccessFile::isBlockUsingFreeSpace(health::BlockPointer const&,health::BlockAccessFile::WriteTransaction &)::$_0,std::allocator<health::BlockAccessFile::isBlockUsingFreeSpace(health::BlockPointer const&,health::BlockAccessFile::WriteTransaction &)::$_0>,void ()(health::FileExtent const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(health::FileExtent const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void health::FormatImplementation<unsigned long long &,unsigned long>(std::string *a1, std::string *a2, std::string::size_type a3, unint64_t **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = a1;
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
            v35 = &v11->__r_.__value_.__s.__data_[2];
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
                v35 = v27;
                v26 = (v25 & 0xF) + 10 * v26;
                v28 = *v27++;
                LOBYTE(v25) = v28;
              }

              while ((v28 - 58) >= 0xFFFFFFF6);
              v35 = v27;
              if (*(v27 - 1) == 125)
              {
                health::FormatterParameters<0ul,unsigned long long &,unsigned long>::formatOptionsAtIndex<unsigned long long &,unsigned long>(v26);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(&v31, &v35);
          v15 = v35;
          if (v32)
          {
            if (v32 != 1)
            {
              v30 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v30, "Parameter index out of bounds.");
              __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            health::TypeFormatter<unsigned long,void>::TypeFormatter(__p, **a4, &v31);
            if (v39 == 1 && *(__p[0] + 48) != 1)
            {
              v16 = 64;
            }

            else
            {
              v16 = 65;
            }

            v20 = v16 - v38;
            if (*(__p[0] + 50) == 1 && v20 <= *(__p[0] + 3))
            {
              v20 = *(__p[0] + 3);
            }

            v21 = v34;
            if (v34 <= v20)
            {
              v21 = v20;
            }

            if (v33)
            {
              v22 = v21;
            }

            else
            {
              v22 = v20;
            }

            health::FormatImplementation<unsigned long long &,unsigned long>(v15, a2, v22 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = a2->__r_.__value_.__r.__words[0];
            }

            health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long>(&v31, &v23[a3 - v9], __p);
          }

          else
          {
            health::TypeFormatter<unsigned long long &,void>::TypeFormatter(__p, a4[1], &v31);
            v17 = v37;
            if ((v37 & 0x80u) != 0)
            {
              v17 = __p[1];
            }

            v18 = v34;
            if (v34 <= v17)
            {
              v18 = v17;
            }

            if (v33)
            {
              v17 = v18;
            }

            health::FormatImplementation<unsigned long long &,unsigned long>(v15, a2, v17 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = a2;
            }

            else
            {
              v19 = a2->__r_.__value_.__r.__words[0];
            }

            health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v31, &v19[a3 - v9], __p);
            if (v37 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (v9)
          {
            health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          }

          goto LABEL_46;
        }

        v10 = 1;
        v11 = (v11 + 1);
      }

      v35 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      --v9;
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {
          v13 = *MEMORY[0x277D85DE8];

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          return;
        }

LABEL_46:
        v24 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,unsigned long long &,unsigned long>::formatOptionsAtIndex<unsigned long long &,unsigned long>(uint64_t a1)
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

void health::FormatImplementation<unsigned long long &,unsigned long long &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
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
        health::FormatterParameters<0ul,unsigned long long &,unsigned long long &>::formatOptionsAtIndex<unsigned long long &,unsigned long long &>(v20);
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
      health::TypeFormatter<unsigned long long &,void>::TypeFormatter(&__p, *a4, v24);
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

      health::FormatImplementation<unsigned long long &,unsigned long long &>(v13, a2, v14 + a3 - v9, a4);
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

  health::TypeFormatter<unsigned long long &,void>::TypeFormatter(&__p, a4[1], v24);
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

  health::FormatImplementation<unsigned long long &,unsigned long long &>(v13, a2, v17 + a3 - v9, a4);
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

void health::FormatterParameters<0ul,unsigned long long &,unsigned long long &>::formatOptionsAtIndex<unsigned long long &,unsigned long long &>(uint64_t a1)
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

void health::FormatImplementation<unsigned int &,unsigned int>(std::string *a1, std::string *a2, std::string::size_type a3, unsigned int **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = a1;
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
            v35 = &v11->__r_.__value_.__s.__data_[2];
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
                v35 = v27;
                v26 = (v25 & 0xF) + 10 * v26;
                v28 = *v27++;
                LOBYTE(v25) = v28;
              }

              while ((v28 - 58) >= 0xFFFFFFF6);
              v35 = v27;
              if (*(v27 - 1) == 125)
              {
                health::FormatterParameters<0ul,unsigned int &,unsigned int>::formatOptionsAtIndex<unsigned int &,unsigned int>(v26);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(&v31, &v35);
          v15 = v35;
          if (v32)
          {
            if (v32 != 1)
            {
              v30 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v30, "Parameter index out of bounds.");
              __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            health::TypeFormatter<unsigned int,void>::TypeFormatter(__p, **a4, &v31);
            if (v39 == 1 && *(__p[0] + 48) != 1)
            {
              v16 = 32;
            }

            else
            {
              v16 = 33;
            }

            v20 = v16 - v38;
            if (*(__p[0] + 50) == 1 && v20 <= *(__p[0] + 3))
            {
              v20 = *(__p[0] + 3);
            }

            v21 = v34;
            if (v34 <= v20)
            {
              v21 = v20;
            }

            if (v33)
            {
              v22 = v21;
            }

            else
            {
              v22 = v20;
            }

            health::FormatImplementation<unsigned int &,unsigned int>(v15, a2, v22 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = a2->__r_.__value_.__r.__words[0];
            }

            health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned int>(&v31, &v23[a3 - v9], __p);
          }

          else
          {
            health::TypeFormatter<unsigned int &,void>::TypeFormatter(__p, a4[1], &v31);
            v17 = v37;
            if ((v37 & 0x80u) != 0)
            {
              v17 = __p[1];
            }

            v18 = v34;
            if (v34 <= v17)
            {
              v18 = v17;
            }

            if (v33)
            {
              v17 = v18;
            }

            health::FormatImplementation<unsigned int &,unsigned int>(v15, a2, v17 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = a2;
            }

            else
            {
              v19 = a2->__r_.__value_.__r.__words[0];
            }

            health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v31, &v19[a3 - v9], __p);
            if (v37 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (v9)
          {
            health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          }

          goto LABEL_46;
        }

        v10 = 1;
        v11 = (v11 + 1);
      }

      v35 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      --v9;
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {
          v13 = *MEMORY[0x277D85DE8];

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          return;
        }

LABEL_46:
        v24 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,unsigned int &,unsigned int>::formatOptionsAtIndex<unsigned int &,unsigned int>(uint64_t a1)
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

uint64_t health::TypeFormatter<unsigned int &,void>::TypeFormatter(uint64_t a1, unsigned int *a2, uint64_t a3)
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
  MEMORY[0x22AAC83B0](&v13, *a2);
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

void sub_228D42710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::BlockAccessFileHeader::deserialize(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) <= 3uLL)
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v16, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v15, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v4, v16, v15, v14, 63, &__p);
  }

  v5 = *(a2 + 8);
  v6 = *v5;
  v7 = *(a2 + 16) - 4;
  *(a2 + 8) = v5 + 1;
  *(a2 + 16) = v7;
  *a1 = v6;
  if (v7 <= 3)
  {
    v8 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v16, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v15, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v8, v16, v15, v14, 63, &__p);
  }

  v9 = *(a2 + 8);
  v10 = *v9;
  v11 = *(a2 + 16) - 4;
  *(a2 + 8) = v9 + 1;
  *(a2 + 16) = v11;
  *(a1 + 4) = v10;
  LODWORD(v16[0]) = 0;
  health::DeserializationBuffer::extractRaw<unsigned int>(a2, v16);
  *(a1 + 8) = v16[0];
  v16[0] = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a2, v16);
  *(a1 + 16) = v16[0];
  if (*(a1 + 4) >= 3u)
  {
    v16[0] = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a2, v16);
    *(a1 + 24) = v16[0];
    v16[0] = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a2, v16);
    *(a1 + 32) = v16[0];
  }

  v16[0] = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a2, v16);
  *(a1 + 40) = v16[0];
  v16[0] = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a2, v16);
  *(a1 + 48) = v16[0];
  v16[0] = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a2, v16);
  *(a1 + 56) = v16[0];
  v16[0] = 0;
  result = health::DeserializationBuffer::extractRaw<unsigned long long>(a2, v16);
  *(a1 + 64) = v16[0];
  return result;
}

void sub_228D429DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<unsigned int,unsigned int>(std::string *a1, std::string *a2, std::string::size_type a3, unsigned int **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = a1;
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
            v36 = &v11->__r_.__value_.__s.__data_[2];
            v26 = v11->__r_.__value_.__s.__data_[2];
            if ((v26 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v27 = 0;
              v28 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v36 = v28;
                v27 = (v26 & 0xF) + 10 * v27;
                v29 = *v28++;
                LOBYTE(v26) = v29;
              }

              while ((v29 - 58) >= 0xFFFFFFF6);
              v36 = v28;
              if (*(v28 - 1) == 125)
              {
                health::FormatterParameters<0ul,unsigned int,unsigned int>::formatOptionsAtIndex<unsigned int,unsigned int>(v27);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(&v32, &v36);
          v15 = v36;
          if (v33)
          {
            if (v33 != 1)
            {
              v31 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v31, "Parameter index out of bounds.");
              __cxa_throw(v31, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            health::TypeFormatter<unsigned int,void>::TypeFormatter(v37, **a4, &v32);
            if (v39 == 1 && *(v37[0] + 48) != 1)
            {
              v16 = 32;
            }

            else
            {
              v16 = 33;
            }

            v22 = v16 - v38;
            if (*(v37[0] + 50) == 1 && v22 <= *(v37[0] + 24))
            {
              v22 = *(v37[0] + 24);
            }

            v23 = v35;
            if (v35 <= v22)
            {
              v23 = v22;
            }

            if (v34)
            {
              v24 = v23;
            }

            else
            {
              v24 = v22;
            }

            health::FormatImplementation<unsigned int,unsigned int>(v15, a2, v24 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = a2->__r_.__value_.__r.__words[0];
            }
          }

          else
          {
            health::TypeFormatter<unsigned int,void>::TypeFormatter(v37, *a4[1], &v32);
            if (v39 == 1 && *(v37[0] + 48) != 1)
            {
              v17 = 32;
            }

            else
            {
              v17 = 33;
            }

            v18 = v17 - v38;
            if (*(v37[0] + 50) == 1 && v18 <= *(v37[0] + 24))
            {
              v18 = *(v37[0] + 24);
            }

            v19 = v35;
            if (v35 <= v18)
            {
              v19 = v18;
            }

            if (v34)
            {
              v20 = v19;
            }

            else
            {
              v20 = v18;
            }

            health::FormatImplementation<unsigned int,unsigned int>(v15, a2, v20 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = a2->__r_.__value_.__r.__words[0];
            }
          }

          health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned int>(&v32, &v21[a3 - v9], v37);
          if (v9)
          {
            health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          }

          goto LABEL_49;
        }

        v10 = 1;
        v11 = (v11 + 1);
      }

      v36 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      --v9;
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {
          v13 = *MEMORY[0x277D85DE8];

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          return;
        }

LABEL_49:
        v25 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,unsigned int,unsigned int>::formatOptionsAtIndex<unsigned int,unsigned int>(uint64_t a1)
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

void health::FormatImplementation<unsigned int &,unsigned int &>(std::string *a1, std::string *a2, std::string::size_type a3, unsigned int **a4)
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
        health::FormatterParameters<0ul,unsigned int &,unsigned int &>::formatOptionsAtIndex<unsigned int &,unsigned int &>(v19);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_45;
  }

  health::FormatOptions::FormatOptions(v23, &v27);
  v13 = v27;
  if (v24)
  {
    if (v24 == 1)
    {
      health::TypeFormatter<unsigned int &,void>::TypeFormatter(&__p, *a4, v23);
      v14 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v14 = v29;
      }

      v15 = v26;
      if (v26 <= v14)
      {
        v15 = v14;
      }

      if (v25)
      {
        v14 = v15;
      }

      goto LABEL_30;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_45:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::TypeFormatter<unsigned int &,void>::TypeFormatter(&__p, a4[1], v23);
  v14 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v14 = v29;
  }

  v16 = v26;
  if (v26 <= v14)
  {
    v16 = v14;
  }

  if (v25)
  {
    v14 = v16;
  }

LABEL_30:
  health::FormatImplementation<unsigned int &,unsigned int &>(v13, a2, v14 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v23, &v17[a3 - v9], &__p);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,unsigned int &,unsigned int &>::formatOptionsAtIndex<unsigned int &,unsigned int &>(uint64_t a1)
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

uint64_t std::__function::__func<health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents(void)::$_0,std::allocator<health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents(void)::$_0>,void ()(health::FileExtent const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BEA220;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents(void)::$_0,std::allocator<health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents(void)::$_0>,void ()(health::FileExtent const&)>::operator()(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v5 = *v3;
  v4 = v3[1];
  if (*v3 == v4)
  {
LABEL_10:
    v10 = v3[2];
    if (v4 >= v10)
    {
      v13 = (v4 - *v3) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        goto LABEL_56;
      }

      v15 = v10 - *v3;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<health::FileExtent>>(v16);
      }

      v29 = (16 * v13);
      *v29 = *a2;
      v12 = 16 * v13 + 16;
      v30 = v3[1] - *v3;
      v31 = v29 - v30;
      memcpy(v29 - v30, *v3, v30);
      v32 = *v3;
      *v3 = v31;
      v3[1] = v12;
      v3[2] = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      result = *a2;
      *v4 = *a2;
      v12 = (v4 + 1);
    }

    v3[1] = v12;
    return result;
  }

  v6 = 0;
  v7 = *a2;
  while (1)
  {
    v8 = *(v5 + v6);
    if (v7 <= v8 && *(a2 + 8) + v7 > v8 || v8 <= v7 && *(v5 + v6 + 8) + v8 > v7)
    {
      v9 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v45, "!extent.overlaps(*i)");
      std::string::basic_string[abi:ne200100]<0>(v44, "operator()");
      std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBlockAccessFile.cpp");
      v46[0] = a2;
      v46[1] = v5 + v6;
      memset(&__p, 0, sizeof(__p));
      health::FormatImplementation<health::FileExtent &,health::FileExtent const&>("Found overlapping free space extents {0} and {1}", &__p, 0, v46);
      health::_HDAssertImplementation<health::data_corruption_error>(v9, v45, v44, v43, 192, &__p);
    }

    v7 = *a2;
    if (*a2 < *(v5 + v6))
    {
      break;
    }

    v3 = *(a1 + 8);
    v4 = v3[1];
    v6 += 16;
    if ((v5 + v6) == v4)
    {
      goto LABEL_10;
    }
  }

  v17 = *(a1 + 8);
  v18 = (v5 + v6);
  v19 = v17[1];
  v20 = v17[2];
  if (v19 < v20)
  {
    if (v18 == v19)
    {
      result = *a2;
      *v19 = *a2;
      v17[1] = v19 + 1;
    }

    else
    {
      v21 = v19[v6 / 0xFFFFFFFFFFFFFFF0 - 1].n128_u64 - v5;
      if ((v18 + v21) >= v19)
      {
        v22 = v17[1];
      }

      else
      {
        v22 = v19 + 1;
        *v19 = *(v18 + v21);
      }

      v17[1] = v22;
      if ((v5 + v6 + 16) != v19)
      {
        memmove((16 - (-v5 - v6)), (v5 + v6), v21);
        v22 = v17[1];
      }

      v39 = v22 <= a2 || v18 > a2;
      v40 = 16;
      if (v39)
      {
        v40 = 0;
      }

      result = *(a2 + v40);
      *v18 = result;
    }

    return result;
  }

  v23 = *v17;
  v24 = v19 - *v17 + 1;
  if (v24 >> 60)
  {
LABEL_56:
    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v25 = v18 - v23;
  v26 = v20 - v23;
  if (v26 >> 3 > v24)
  {
    v24 = v26 >> 3;
  }

  if (v26 >= 0x7FFFFFFFFFFFFFF0)
  {
    v27 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = v24;
  }

  v28 = v25 >> 4;
  if (v27)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<health::FileExtent>>(v27);
  }

  v33 = (16 * v28);
  if (!v28)
  {
    if (v25 < 1)
    {
      if (v18 == v23)
      {
        v41 = 1;
      }

      else
      {
        v41 = v25 >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<health::FileExtent>>(v41);
    }

    v33 = (v33 - (((v25 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
  }

  *v33 = *a2;
  memcpy(v33 + 1, (v5 + v6), v17[1]->n128_u64 - v5 - v6);
  v34 = *v17;
  v35 = &v17[1][1] + v33 - v5 - v6;
  v17[1] = v18;
  v36 = v5 - v34 + v6;
  v37 = (v33 - v36);
  memcpy(v33 - v36, v34, v36);
  v38 = *v17;
  *v17 = v37;
  v17[1] = v35;
  v17[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return result;
}

void sub_228D437A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents(void)::$_0,std::allocator<health::BlockAccessFile::ReadTransaction::_computeFreeSpaceExtents(void)::$_0>,void ()(health::FileExtent const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<health::FileExtent &,health::FileExtent const&>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t *a4)
{
  v47 = a1;
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
    v47 = &v11->__r_.__value_.__s.__data_[1];
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
    v47 = &v11->__r_.__value_.__s.__data_[2];
    v37 = v11->__r_.__value_.__s.__data_[2];
    if ((v37 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v38 = 0;
      v39 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v47 = v39;
        v38 = (v37 & 0xF) + 10 * v38;
        v40 = *v39++;
        LOBYTE(v37) = v40;
      }

      while ((v40 - 58) >= 0xFFFFFFF6);
      v47 = v39;
      if (*(v39 - 1) == 125)
      {
        health::FormatterParameters<0ul,health::FileExtent &,health::FileExtent const&>::formatOptionsAtIndex<health::FileExtent &,health::FileExtent const&>(v38);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

LABEL_94:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::FormatOptions::FormatOptions(&v42, &v47);
  v13 = v47;
  if (!v43)
  {
    health::FormatString<long long const&,unsigned long const&>(&__p, a4[1], a4[1] + 8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v27 = v45;
    if (v45 <= size)
    {
      v27 = size;
    }

    if (v44)
    {
      size = v27;
    }

    health::FormatImplementation<health::FileExtent &,health::FileExtent const&>(v13, a2, size + a3 - v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v42, &v28[a3 - v9], &__p);
    goto LABEL_58;
  }

  if (v43 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    goto LABEL_94;
  }

  health::FormatString<long long const&,unsigned long const&>(&__p, *a4, *a4 + 8);
  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  v15 = v45;
  if (v45 <= v14)
  {
    v15 = v14;
  }

  if (v44)
  {
    v14 = v15;
  }

  health::FormatImplementation<health::FileExtent &,health::FileExtent const&>(v13, a2, v14 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = a2->__r_.__value_.__r.__words[0];
  }

  v17 = v16 + a3 - v9;
  v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v20 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  if (v44 == 1)
  {
    v22 = v45 - v21;
    if (v45 > v21)
    {
      if (v42)
      {
        if (v42 != 1)
        {
          if (v42 == 2)
          {
            memset(v17, __c, v45 - v21);
            v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            if (v23)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              v25 = &v17[v22];
              goto LABEL_57;
            }
          }

          goto LABEL_58;
        }

        if (v22 >= 2)
        {
          if (v22 >> 1 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v22 >> 1;
          }

          memset(v17, __c, v29);
          v17 += v29;
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v20 = __p.__r_.__value_.__l.__size_;
          v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        v30 = v22 - (v22 >> 1);
        if (v19 >= 0)
        {
          v31 = v18;
        }

        else
        {
          v31 = v20;
        }

        if (v31)
        {
          if (v19 >= 0)
          {
            v32 = &__p;
          }

          else
          {
            v32 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v17, v32, v31);
        }

        if (v30 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v30;
        }

        v34 = __c;
        v35 = &v17[v21];
      }

      else
      {
        if (v21)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &__p;
          }

          else
          {
            v36 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v17, v36, v21);
        }

        v34 = __c;
        v35 = &v17[v21];
        v33 = v22;
      }

      memset(v35, v34, v33);
      goto LABEL_58;
    }
  }

  if (v21)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v25 = v17;
    v23 = v21;
LABEL_57:
    memmove(v25, p_p, v23);
  }

LABEL_58:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::FileExtent &,health::FileExtent const&>::formatOptionsAtIndex<health::FileExtent &,health::FileExtent const&>(uint64_t a1)
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

void health::FormatString<long long const&,unsigned long const&>(std::string *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a3;
  v3[1] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<long long const&,unsigned long const&>("({0}, {1})", a1, 0, v3);
}

void sub_228D43E14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<long long const&,unsigned long const&>(std::string *a1, std::string *a2, std::string::size_type a3, void *a4)
{
  v53 = a1;
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
    v53 = &v11->__r_.__value_.__s.__data_[1];
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
    v53 = &v11->__r_.__value_.__s.__data_[2];
    v41 = v11->__r_.__value_.__s.__data_[2];
    if ((v41 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v42 = 0;
      v43 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v53 = v43;
        v42 = (v41 & 0xF) + 10 * v42;
        v44 = *v43++;
        LOBYTE(v41) = v44;
      }

      while ((v44 - 58) >= 0xFFFFFFF6);
      v53 = v43;
      if (*(v43 - 1) == 125)
      {
        health::FormatterParameters<0ul,long long const&,unsigned long const&>::formatOptionsAtIndex<long long const&,unsigned long const&>(v42);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_102;
  }

  health::FormatOptions::FormatOptions(&v46, &v53);
  v13 = v53;
  if (v47)
  {
    if (v47 == 1)
    {
      v14 = *a4;
      v54[1] = 0;
      v55 = 0;
      v54[0] = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
      v15 = v58;
      if (v48 == 1)
      {
        *(&v60[1].__locale_ + *(v58 - 24)) = v49;
      }

      if (v50 == 1)
      {
        *(&v60[0].__locale_ + *(v15 - 24)) = v51;
      }

      v16 = (&v58 + *(v15 - 24));
      v17 = __c;
      if (v16[1].__fmtflags_ == -1)
      {
        std::ios_base::getloc(v16);
        v18 = std::locale::use_facet(v56, MEMORY[0x277D82680]);
        (v18->__vftable[2].~facet_0)(v18, 32);
        std::locale::~locale(v56);
      }

      v16[1].__fmtflags_ = v17;
      MEMORY[0x22AAC83C0](&v58, *v14);
      std::ostringstream::str[abi:ne200100](&v58, v56);
      *v54 = *&v56[0].__locale_;
      v55 = v57;
      v58 = *MEMORY[0x277D82828];
      *(&v58 + *(v58 - 24)) = *(MEMORY[0x277D82828] + 24);
      v59 = MEMORY[0x277D82878] + 16;
      if (v62 < 0)
      {
        operator delete(__p);
      }

      v59 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v60);
      std::ostream::~ostream();
      MEMORY[0x22AAC8550](v63);
      v19 = SHIBYTE(v55);
      if (v55 >= 0)
      {
        v20 = HIBYTE(v55);
      }

      else
      {
        v20 = v54[1];
      }

      v21 = v49;
      if (v49 <= v20)
      {
        v21 = v20;
      }

      if (v48)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      goto LABEL_49;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_102:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = a4[1];
  v54[1] = 0;
  v55 = 0;
  v54[0] = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
  v24 = v58;
  if (v48 == 1)
  {
    *(&v60[1].__locale_ + *(v58 - 24)) = v49;
  }

  if (v50 == 1)
  {
    *(&v60[0].__locale_ + *(v24 - 24)) = v51;
  }

  v25 = (&v58 + *(v24 - 24));
  v26 = __c;
  if (v25[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v25);
    v27 = std::locale::use_facet(v56, MEMORY[0x277D82680]);
    (v27->__vftable[2].~facet_0)(v27, 32);
    std::locale::~locale(v56);
  }

  v25[1].__fmtflags_ = v26;
  MEMORY[0x22AAC83E0](&v58, *v23);
  std::ostringstream::str[abi:ne200100](&v58, v56);
  *v54 = *&v56[0].__locale_;
  v55 = v57;
  v58 = *MEMORY[0x277D82828];
  *(&v58 + *(v58 - 24)) = *(MEMORY[0x277D82828] + 24);
  v59 = MEMORY[0x277D82878] + 16;
  if (v62 < 0)
  {
    operator delete(__p);
  }

  v59 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v60);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](v63);
  v19 = SHIBYTE(v55);
  if (v55 >= 0)
  {
    v20 = HIBYTE(v55);
  }

  else
  {
    v20 = v54[1];
  }

  v28 = v49;
  if (v49 <= v20)
  {
    v28 = v20;
  }

  if (v48)
  {
    v22 = v28;
  }

  else
  {
    v22 = v20;
  }

LABEL_49:
  health::FormatImplementation<long long const&,unsigned long const&>(v13, a2, v22 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = a2;
  }

  else
  {
    v29 = a2->__r_.__value_.__r.__words[0];
  }

  v30 = v29 + a3 - v9;
  if (v48 == 1 && (v31 = v49 - v20, v49 > v20))
  {
    if (v46)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          memset(v30, __c, v49 - v20);
          if (v20)
          {
            if (v19 >= 0)
            {
              v32 = v54;
            }

            else
            {
              v32 = v54[0];
            }

            v33 = &v30[v31];
            goto LABEL_67;
          }
        }

        goto LABEL_68;
      }

      if (v31 >= 2)
      {
        if (v31 >> 1 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v31 >> 1;
        }

        memset(v30, __c, v34);
        v30 += v34;
      }

      v35 = v31 - (v31 >> 1);
      if (v20)
      {
        if (v19 >= 0)
        {
          v36 = v54;
        }

        else
        {
          v36 = v54[0];
        }

        memmove(v30, v36, v20);
      }

      if (v35 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35;
      }

      v38 = __c;
      v39 = &v30[v20];
    }

    else
    {
      if (v20)
      {
        if (v19 >= 0)
        {
          v40 = v54;
        }

        else
        {
          v40 = v54[0];
        }

        memmove(v30, v40, v20);
      }

      v38 = __c;
      v39 = &v30[v20];
      v37 = v31;
    }

    memset(v39, v38, v37);
    if (v19 < 0)
    {
LABEL_69:
      operator delete(v54[0]);
    }
  }

  else
  {
    if (v20)
    {
      if (v19 >= 0)
      {
        v32 = v54;
      }

      else
      {
        v32 = v54[0];
      }

      v33 = v29 + a3 - v9;
LABEL_67:
      memmove(v33, v32, v20);
    }

LABEL_68:
    if (v19 < 0)
    {
      goto LABEL_69;
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long const&,unsigned long const&>::formatOptionsAtIndex<long long const&,unsigned long const&>(uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<health::FileExtent>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void health::FormatImplementation<health::FileExtent &,health::FileExtent &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t *a4)
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
        health::FormatterParameters<0ul,health::FileExtent &,health::FileExtent &>::formatOptionsAtIndex<health::FileExtent &,health::FileExtent &>(v19);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_45;
  }

  health::FormatOptions::FormatOptions(v23, &v27);
  v13 = v27;
  if (v24)
  {
    if (v24 == 1)
    {
      health::FormatString<long long const&,unsigned long const&>(&__p, *a4, *a4 + 8);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v15 = v26;
      if (v26 <= size)
      {
        v15 = size;
      }

      if (v25)
      {
        size = v15;
      }

      goto LABEL_30;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_45:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::FormatString<long long const&,unsigned long const&>(&__p, a4[1], a4[1] + 8);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v16 = v26;
  if (v26 <= size)
  {
    v16 = size;
  }

  if (v25)
  {
    size = v16;
  }

LABEL_30:
  health::FormatImplementation<health::FileExtent &,health::FileExtent &>(v13, a2, size + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v23, &v17[a3 - v9], &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::FileExtent &,health::FileExtent &>::formatOptionsAtIndex<health::FileExtent &,health::FileExtent &>(uint64_t a1)
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

uint64_t health::BTree<health::BlockAccessFile::ReadTransaction::FreeSpaceMapReadConfiguration>::_enumerateAllValues<health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(std::function<void ()(health::FileExtent const&)>)::$_0>(uint64_t result, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = result;
  v7 = *(a2 + 1632);
  v8 = **(result + 8);
  if (*(a2 + 1776))
  {
    v9 = 0;
    do
    {
      if (v7 != v8)
      {
        v10 = *(v6 + 8);
        v11 = health::StaticArray<unsigned long long,18ul>::operator[](a2 + 1632, v9);
        bzero(v26, 0x6F2uLL);
        health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>>(**(v10 + 8), v26, *v11);
        health::BTree<health::BlockAccessFile::ReadTransaction::FreeSpaceMapReadConfiguration>::_enumerateAllValues<health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(std::function<void ()(health::FileExtent const&)>)::$_0>(v6, v26, (a3 + 1), a4);
      }

      v12 = *health::StaticArray<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>::ValueEntry,17ul>::operator[](a2, v9);
      v13 = health::StaticArray<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>::ValueEntry,17ul>::operator[](a2, v9);
      v14 = 0;
      v15 = a4[1];
      do
      {
        result = health::StaticArray<unsigned long long,10ul>::operator[](v13 + 8, v14);
        if (*result)
        {
          v16 = *a4;
          *&v26[0] = *result;
          *(&v26[0] + 1) = v12;
          v17 = *(v16 + 24);
          if (!v17)
          {
LABEL_23:
            std::__throw_bad_function_call[abi:ne200100]();
          }

          result = (*(*v17 + 48))(v17, v26);
        }

        ++v14;
      }

      while (v14 != 10);
      v18 = *(v13 + 88);
      if (v18)
      {
        do
        {
          v27 = 0;
          memset(v26, 0, sizeof(v26));
          health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::FreeSpaceList>(*v15, v26, v18);
          for (i = 0; i != 10; ++i)
          {
            result = health::StaticArray<unsigned long long,10ul>::operator[](v26, i);
            if (*result)
            {
              v20 = *a4;
              v28[0] = *result;
              v28[1] = v12;
              v21 = *(v20 + 24);
              if (!v21)
              {
                goto LABEL_23;
              }

              result = (*(*v21 + 48))(v21, v28);
            }
          }

          v18 = v27;
        }

        while (v27);
      }

      ++v9;
      v22 = *(a2 + 1776);
    }

    while (v9 < v22);
  }

  else
  {
    v22 = 0;
  }

  if (v7 != v8)
  {
    v23 = *(v6 + 8);
    v24 = health::StaticArray<unsigned long long,18ul>::operator[](a2 + 1632, v22);
    bzero(v26, 0x6F2uLL);
    health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>>(**(v23 + 8), v26, *v24);
    return health::BTree<health::BlockAccessFile::ReadTransaction::FreeSpaceMapReadConfiguration>::_enumerateAllValues<health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(std::function<void ()(health::FileExtent const&)>)::$_0>(v6, v26, (a3 + 1), a4);
  }

  return result;
}

uint64_t health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::FreeSpaceList>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 88;
  v14[0] = v16;
  v14[1] = v16;
  v14[2] = 88;
  health::RawBuffer::RawBuffer(v13, v16, 88);
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  health::RawBuffer::RawBuffer(v15, v13[0], v13[1]);
  health::TransactionalFile::_readBufferAtOffset(v7, v6, v15, a3);
  for (i = 0; i != 10; ++i)
  {
    v10 = health::StaticArray<unsigned long long,10ul>::operator[](a2, i);
    v15[0] = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v14, v15);
    *v10 = v15[0];
  }

  v15[0] = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v14, v15);
  *(a2 + 80) = v15[0];
  result = v17;
  v17 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D44F14(_Unwind_Exception *a1)
{
  v2 = STACK[0x438];
  STACK[0x438] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::ByteRange<void const,unsigned long long>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = (a4 + 8);
  v8 = *(a4 + 8);
  health::SmartBuffer::SmartBuffer(v16, v8);
  if (v18 <= 0x3FF)
  {
    v10 = v16;
  }

  else
  {
    v10 = v17;
  }

  v15[0] = v10;
  v15[1] = v10;
  v15[2] = v8;
  health::SerializationBuffer::appendBytes(v15, *a4, *v9);
  if (v18 <= 0x3FF)
  {
    v11 = v16;
  }

  else
  {
    v11 = v17;
  }

  health::RawBuffer::RawBuffer(v14, v11, v18);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v14);
  result = v17;
  v17 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228D4504C(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void *health::SerializationBuffer::appendBytes(health::SerializationBuffer *this, const void *__src, size_t __n)
{
  if (*(this + 2) < __n)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "length <= _length");
    std::string::basic_string[abi:ne200100]<0>(v10, "appendBytes");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Append would overflow serialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v5, v11, v10, v9, 43, &__p);
  }

  result = memcpy(*(this + 1), __src, __n);
  v7 = *(this + 2) - __n;
  *(this + 1) += __n;
  *(this + 2) = v7;
  return result;
}

void sub_228D45190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::deque<health::BlockPointer>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<health::BlockPointer>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

void *std::deque<health::BlockPointer>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<health::BlockPointer *>::emplace_back<health::BlockPointer *&>(a1, &v10);
}

void sub_228D45408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<health::BlockPointer *>::emplace_back<health::BlockPointer *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(result, v11);
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

const void **std::__split_buffer<health::BlockPointer *>::emplace_front<health::BlockPointer *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(result, v9);
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

void *std::__split_buffer<health::BlockPointer *>::emplace_back<health::BlockPointer *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(result[4], v11);
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

const void **std::__split_buffer<health::BlockPointer *>::emplace_front<health::BlockPointer *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(result[4], v9);
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

uint64_t std::deque<health::BlockPointer>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
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
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t HDCloudSyncCodableAttachmentReferenceTombstonesReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HDCloudSyncCodableAttachmentReferenceTombstone);
        [a1 addAttachmentReferenceTombstone:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCloudSyncCodableAttachmentReferenceTombstoneReadFrom(v13, a2))
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

uint64_t HDCodableFHIRCredentialReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            *(a1 + 84) |= 2u;
            v35 = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v30 = v35;
            v31 = 16;
            goto LABEL_65;
          }

          if (v13 == 7)
          {
            *(a1 + 84) |= 1u;
            v35 = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v30 = v35;
            v31 = 8;
LABEL_65:
            *(a1 + v31) = v30;
            goto LABEL_66;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 84) |= 4u;
              while (1)
              {
                LOBYTE(v35) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v35 & 0x7F) << v21;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  LOBYTE(v27) = 0;
                  goto LABEL_60;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_60:
              *(a1 + 80) = v27;
              goto LABEL_66;
            case 9:
              v16 = objc_alloc_init(HDCodableMessageVersion);
              objc_storeStrong((a1 + 40), v16);
              v35 = 0;
              v36 = 0;
              if (!PBReaderPlaceMark() || !HDCodableMessageVersionReadFrom(v16, a2))
              {
LABEL_68:

                return 0;
              }

              goto LABEL_56;
            case 0xA:
              v16 = objc_alloc_init(HDCodableSyncIdentity);
              objc_storeStrong((a1 + 72), v16);
              v35 = 0;
              v36 = 0;
              if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
              {
                goto LABEL_68;
              }

LABEL_56:
              PBReaderRecallMark();

              goto LABEL_66;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = 32;
          goto LABEL_53;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 24;
          goto LABEL_53;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_53;
          case 4:
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_53;
          case 5:
            v14 = PBReaderReadString();
            v15 = 48;
LABEL_53:
            v28 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableOnboardingCompletionReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_59;
        }

        if (v13 == 6)
        {
          *(a1 + 76) |= 4u;
          v49[0] = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v49[0];
          v45 = 24;
LABEL_86:
          *(a1 + v45) = v44;
          goto LABEL_87;
        }

LABEL_69:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_87;
      }

      if (v13 == 7)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 76) |= 0x10u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v49[0] & 0x7F) << v28;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v34) = 0;
            goto LABEL_76;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_76:
        *(a1 + 72) = v34;
        goto LABEL_87;
      }

      if (v13 == 8)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 76) |= 2u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v49[0] & 0x7F) << v36;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v38;
        }

LABEL_80:
        v42 = 16;
LABEL_81:
        *(a1 + v42) = v27;
        goto LABEL_87;
      }

      if (v13 != 9)
      {
        goto LABEL_69;
      }

      v14 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 56), v14);
      v49[0] = 0;
      v49[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_87:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 76) |= 8u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v49[0] & 0x7F) << v21;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_74;
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

LABEL_74:
        v42 = 32;
        goto LABEL_81;
      }

      if (v13 == 4)
      {
        *(a1 + 76) |= 1u;
        v49[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v44 = v49[0];
        v45 = 8;
        goto LABEL_86;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v15 = PBReaderReadData();
        v16 = 64;
        goto LABEL_59;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 48;
LABEL_59:
        v35 = *(a1 + v16);
        *(a1 + v16) = v15;

        goto LABEL_87;
      }
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _HDMakeSleepStagesInfo@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

double HDStatisticsSleepStages::splitSampleAtTime@<D0>(double *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  HDRawQuantitySample::splitAtTime(a1, a2, a3, a4);
  result = *a1;
  *a3 = *a1;
  *(a3 + 40) = result;
  return result;
}

void HDStatisticsSleepStages::splitSampleAtTime(__n128 *a1, __n128 *a2, int a3, __n128 a4)
{
  v6 = a1->n128_u64[0];
  HDRawQuantitySample::splitAtTime(a1, a2, a3, a4);
  a1->n128_u64[0] = v6;
  a2->n128_u64[0] = v6;
}

double HDStatisticsSleepStages::addSample(HDStatisticsSleepStages *this, const HDRawQuantitySample *a2, int a3)
{
  if (a3)
  {
    ++*this;
  }

  var1 = a2->var1;
  v4 = (this + 24 * a2->var0);
  v5 = v4[3];
  v6 = *(v4 + 4);
  var2 = a2->var2;
  v8 = *(this + 1);
  if (v8 < v6)
  {
    v6 = v8 + 1;
    *(this + 1) = v8 + 1;
  }

  result = v5 + var2 - var1;
  v4[3] = result;
  *(v4 + 4) = v6;
  return result;
}

uint64_t HDStatisticsSleepStages::prevailingSleepStage(HDStatisticsSleepStages *this)
{
  v1 = (this + 32);
  v2 = 0.0;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 144;
  result = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v6 = *(v1 - 1);
    if (v6 > 2.22507386e-308 && v6 >= v2)
    {
      if (v6 <= v2)
      {
        if (*v1 < v3)
        {
          result = *(v1 - 2);
          v2 = *(v1 - 1);
          v3 = *v1;
        }
      }

      else
      {
        result = *(v1 - 2);
        v3 = *v1;
        v2 = *(v1 - 1);
      }
    }

    v1 += 3;
    v4 -= 24;
  }

  while (v4);
  return result;
}

void HDStatisticsSleepStages::unarchive(HDStatisticsSleepStages *this, const statistics::Statistics *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unarchiving sleep stage statistics is not currently supported.");
  __cxa_throw(exception, off_278612E88, MEMORY[0x277D82610]);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void HDStatisticsSleepStages::archive(HDStatisticsSleepStages *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Archiving sleep stage statistics is not currently supported.");
  __cxa_throw(exception, off_278612E88, MEMORY[0x277D82610]);
}

uint64_t HDCodableWorkoutZonesReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableTinkerEndToEndCloudSyncRequestReadFrom(uint64_t a1, void *a2)
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

void sub_228D58C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__115(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D59FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__116(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCloudSyncCodableStoreReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
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
      if ((v12 >> 3) <= 19)
      {
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v23 = PBReaderReadString();
              v24 = 32;
              goto LABEL_106;
            case 2:
              v23 = PBReaderReadString();
              v24 = 40;
              goto LABEL_106;
            case 3:
              v25 = 0;
              v26 = 0;
              v27 = 0;
              *(a1 + 116) |= 1u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v28 = [a2 position] + 1;
                if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
                {
                  v30 = [a2 data];
                  [v30 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v27 |= (v62 & 0x7F) << v25;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v11 = v26++ >= 9;
                if (v11)
                {
                  v31 = 0;
                  goto LABEL_128;
                }
              }

              if ([a2 hasError])
              {
                v31 = 0;
              }

              else
              {
                v31 = v27;
              }

LABEL_128:
              *(a1 + 8) = v31;
              goto LABEL_129;
          }
        }

        else
        {
          if (v13 <= 5)
          {
            if (v13 == 4)
            {
              v21 = objc_alloc_init(HDCodableSyncIdentity);
              v22 = 96;
            }

            else
            {
              v21 = objc_alloc_init(HDCodableSyncIdentity);
              v22 = 48;
            }

            objc_storeStrong((a1 + v22), v21);
            v62 = 0;
            v63 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v21, a2))
            {
LABEL_131:

              return 0;
            }

            goto LABEL_72;
          }

          if (v13 == 6)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 116) |= 0x20u;
            while (1)
            {
              LOBYTE(v62) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v62 & 0x7F) << v38;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                LOBYTE(v44) = 0;
                goto LABEL_116;
              }
            }

            v44 = (v40 != 0) & ~[a2 hasError];
LABEL_116:
            v59 = 113;
            goto LABEL_119;
          }

          if (v13 == 10)
          {
            v23 = PBReaderReadData();
            v24 = 80;
LABEL_106:
            v57 = *(a1 + v24);
            *(a1 + v24) = v23;

            goto LABEL_129;
          }
        }
      }

      else if (v13 > 39)
      {
        if (v13 <= 41)
        {
          if (v13 == 40)
          {
            v23 = PBReaderReadString();
            v24 = 104;
          }

          else
          {
            v23 = PBReaderReadString();
            v24 = 56;
          }

          goto LABEL_106;
        }

        if (v13 == 42)
        {
          v23 = PBReaderReadString();
          v24 = 24;
          goto LABEL_106;
        }

        if (v13 == 50)
        {
          v21 = objc_alloc_init(HDCloudSyncCodableShardPredicate);
          objc_storeStrong((a1 + 72), v21);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !HDCloudSyncCodableShardPredicateReadFrom(v21, a2))
          {
            goto LABEL_131;
          }

LABEL_72:
          PBReaderRecallMark();

          goto LABEL_129;
        }
      }

      else if (v13 > 29)
      {
        if (v13 == 30)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 116) |= 8u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v62 & 0x7F) << v51;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v53;
          }

LABEL_123:
          v58 = 88;
          goto LABEL_124;
        }

        if (v13 == 31)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 116) |= 4u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v62 & 0x7F) << v32;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_114;
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

LABEL_114:
          v58 = 64;
          goto LABEL_124;
        }
      }

      else
      {
        if (v13 == 20)
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 116) |= 0x10u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v62 & 0x7F) << v45;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              LOBYTE(v44) = 0;
              goto LABEL_118;
            }
          }

          v44 = (v47 != 0) & ~[a2 hasError];
LABEL_118:
          v59 = 112;
LABEL_119:
          *(a1 + v59) = v44;
          goto LABEL_129;
        }

        if (v13 == 21)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 116) |= 2u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v62 & 0x7F) << v14;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
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

LABEL_110:
          v58 = 16;
LABEL_124:
          *(a1 + v58) = v20;
          goto LABEL_129;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_129:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableNotificationInstructionCriteriaReadFrom(uint64_t a1, void *a2)
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
        v23 = 0;
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v22 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_30;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__117(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableActivityStatisticsQuantityInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_28:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(a1 + 40) |= 4u;
        v29 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v24 = v29;
        v25 = 24;
        goto LABEL_40;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 32);
      *(a1 + 32) = v21;

LABEL_41:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 40) |= 2u;
      v29 = 0;
      v19 = [a2 position] + 8;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 16;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_28;
      }

      *(a1 + 40) |= 1u;
      v29 = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v23 = [a2 data];
        [v23 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 8;
    }

LABEL_40:
    *(a1 + v25) = v24;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSyncIdentityReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___HDCodableSyncIdentity__instanceDiscriminator;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___HDCodableSyncIdentity__hardwareIdentifier;
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
    v15 = &OBJC_IVAR___HDCodableSyncIdentity__databaseIdentifier;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_228D61A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDFitnessFriendAchievementEntityPredicateForFriendUUID()
{
  v0 = MEMORY[0x277D10B18];
  v1 = _HDSQLiteValueForUUID();
  v2 = [v0 predicateWithProperty:@"friend_uuid" equalToValue:v1];

  return v2;
}

void sub_228D6201C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_228D62A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D62FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D63204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D63390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D63C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D63E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D640E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D6450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D64728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D649BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D64DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D6523C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D65674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D69EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D6A2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _HDPredicateForOwnerAndType(void *a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithLongLong:{objc_msgSend(a1, "persistentID")}];
  v7 = [v3 predicateWithProperty:@"owner_id" equalToValue:v6];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v5 code];

  v11 = [v9 numberWithInteger:v10];
  v12 = [v8 predicateWithProperty:@"quantity_type" equalToValue:v11];

  v13 = MEMORY[0x277D10B20];
  v18[0] = v7;
  v18[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v15 = [v13 predicateMatchingAllPredicates:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_228D6A754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHDQuantitySeriesBuilderTaskServerState(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown state (%ld)", a1];
  }

  else
  {
    v2 = off_2786242E0[a1];
  }

  return v2;
}

__n128 HDQuantitySampleAttenuationEngineSplit@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *(a1 + 8);
  result = *(a2 + 8);
  *(a3 + 8) = result;
  v4 = *(a2 + 24);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 24) = v4;
  return result;
}

uint64_t *HDStatisticsDiscrete::splitSampleAtTime@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = result[3];
  v7 = *(result + 32);
  v8 = 0;
  v9 = *(result + 33);
  if ((v7 & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
LABEL_9:
    v13 = *(result + 32);
    v14 = 0.0;
    a4 = 0.0;
    v7 = 0;
    goto LABEL_13;
  }

  v10 = v4 <= a4;
  if (a2)
  {
    v10 = v4 < a4;
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    if (v5 > a4)
    {
      v5 = a4;
    }

    goto LABEL_9;
  }

  v13 = 0;
  if (v4 >= a4)
  {
    a4 = *(result + 1);
  }

  v11 = *(result + 33);
  v12 = result[3];
  v8 = result[2];
  v14 = *result;
LABEL_13:
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v13;
  *(a3 + 33) = v9;
  *(a3 + 34) = *(result + 34);
  *(a3 + 38) = *(result + 19);
  *(a3 + 40) = v14;
  *(a3 + 48) = a4;
  *(a3 + 56) = v8;
  *(a3 + 64) = v12;
  *(a3 + 72) = v7;
  *(a3 + 73) = v11;
  return result;
}

double *HDStatisticsDiscrete::splitSampleAtTime(double *result, uint64_t a2, int a3, double a4)
{
  if (result[4])
  {
    v4 = result[1];
    v5 = v4 <= a4;
    if (a3)
    {
      v5 = v4 < a4;
    }

    if (v5)
    {
      *(a2 + 32) = 0;
      if (result[2] <= a4)
      {
        a4 = result[2];
      }

      result[2] = a4;
    }

    else
    {
      v6 = *result;
      v7 = *(result + 1);
      *(a2 + 32) = *(result + 16);
      *a2 = v6;
      *(a2 + 16) = v7;
      if (result[1] >= a4)
      {
        a4 = result[1];
      }

      *(a2 + 8) = a4;
      *(result + 32) = 0;
    }
  }

  else
  {
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t HDStatisticsDiscrete::applyMaskToSample(uint64_t result, double **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(result + 8);
    while (v4 >= *v2)
    {
      if (v4 < v2[1])
      {
        *(result + 32) = 0;
        return result;
      }

      v2 += 2;
      if (v2 == v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t HDStatisticsDiscrete::addSample(uint64_t this, const HDRawQuantitySample *a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    var0 = *(this + 16);
    if (var0 >= a2->var0)
    {
      var0 = a2->var0;
    }

    *(this + 16) = var0;
    v4 = *(this + 8);
    if (a2->var0 >= v4)
    {
      v4 = a2->var0;
    }

    v5 = v2 + 1;
    *this = *this + (a2->var0 - *this) / v5;
    *(this + 8) = v4;
  }

  else
  {
    v6 = a2->var0;
    *(this + 8) = a2->var0;
    *(this + 16) = v6;
    *this = v6;
    v5 = 1;
  }

  *(this + 24) = v5;
  return this;
}

__n128 HDStatisticsDiscrete::updateMostRecentSample(__n128 *this, const HDRawQuantitySample *a2)
{
  if (!this[4].n128_u8[0] || (result.n128_u64[0] = this[2].n128_u64[1], result.n128_f64[0] <= a2->var1))
  {
    result = *&a2->var0;
    v3 = *&a2->var2;
    this[4].n128_u16[0] = *&a2->var4;
    this[2] = result;
    this[3] = v3;
  }

  return result;
}

double HDStatisticsDiscrete::unarchive@<D0>(HDStatisticsDiscrete *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 24) = *(this + 3);
  *a2 = vextq_s8(*(this + 88), *(this + 88), 8uLL);
  result = *(this + 13);
  *(a2 + 16) = result;
  v4 = *(this + 14);
  if (v4)
  {
    result = *(v4 + 8);
    v5 = *(v4 + 16);
    *(a2 + 32) = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    *(a2 + 48) = result;
    *(a2 + 56) = v5;
    *(a2 + 64) = 1;
  }

  return result;
}

void HDStatisticsDiscrete::archive(int8x16_t *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 112) = 0;
  v4 = (a2 + 112);
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v5 = this[1].i64[1];
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 88) = vextq_s8(*this, *this, 8uLL);
  v6 = this[1].i64[0];
  *(a2 + 204) = 225;
  *(a2 + 104) = v6;
  statistics::Statistics::makeMostRecentDatum(a2);
  v7[0] = &unk_283BEB0A8;
  v11 = 127;
  v8 = vextq_s8(this[2], this[2], 8uLL);
  v7[1] = this[3].i64[0];
  v7[2] = this[3].i64[1];
  v9 = 0;
  v10 = 0;
  statistics::RawQuantitySample::operator=(*v4, v7);
  PB::Base::~Base(v7);
}

uint64_t HDCodableLocationSeriesReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(HDCodableSample);
          objc_storeStrong((a1 + 24), v14);
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v14, a2))
          {
LABEL_57:

            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v33) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v33 & 0x7F) << v15;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_53;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_53:
          v30 = 33;
          goto LABEL_54;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = PBReaderReadData();
            v23 = *(a1 + 8);
            *(a1 + 8) = v22;

            goto LABEL_55;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_51;
              }
            }

            v21 = (v26 != 0) & ~[a2 hasError];
LABEL_51:
            v30 = 32;
LABEL_54:
            *(a1 + v30) = v21;
            goto LABEL_55;
          case 0xA:
            v14 = objc_alloc_init(HDCodableLocationDatum);
            [a1 addLocationData:v14];
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !HDCodableLocationDatumReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228D73D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__121(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableClinicalDeletedAccountReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        if (v13 == 1)
        {
          v24 = PBReaderReadData();
          v25 = *(a1 + 32);
          *(a1 + 32) = v24;

          goto LABEL_50;
        }

        if (v13 == 2)
        {
          *(a1 + 48) |= 1u;
          v29 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(HDCodableMessageVersion);
            objc_storeStrong((a1 + 24), v14);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HDCodableMessageVersionReadFrom(v14, a2))
            {
LABEL_52:

              return 0;
            }

            goto LABEL_31;
          case 4:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v29) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v29 & 0x7F) << v17;
              if ((v29 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_47;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_47:
            *(a1 + 16) = v23;
            goto LABEL_50;
          case 5:
            v14 = objc_alloc_init(HDCodableSyncIdentity);
            objc_storeStrong((a1 + 40), v14);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

LABEL_31:
            PBReaderRecallMark();

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _HDAddDeviceContextTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS device_context (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identity_id INTEGER NOT NULL UNIQUE REFERENCES sync_identities(ROWID) ON DELETE CASCADE, device_type INTEGER NOT NULL, currentOS_name TEXT NOT NULL, currentOS_version TEXT NOT NULL, product_type_name TEXT NOT NULL, date_modified REAL NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddUnprotectedDeviceKeyValueStorageTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS kv_device_storage (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identity_id INTEGER NOT NULL, device_record_id INTEGER NOT NULL REFERENCES device_context(ROWID) ON DELETE CASCADE, domain TEXT NOT NULL, key TEXT NOT NULL, value BLOB NOT NULL, date_modified REAL NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddIsMirroringToWorkoutSessionTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF778 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateCycleTrackingOvulationConfirmationNotificationStateKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value", @"com.apple.private.health.menstrual-cycles.ovulation-confirmation-notification-state", 0, 1, 0);
  v7 = [v5 unprotectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDMigrateCycleTrackingUnconfirmedDeviationNotificationStateKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value", @"com.apple.private.health.menstrual-cycles.unconfirmed-deviation-notification-state", 0, 1, 0);
  v7 = [v5 unprotectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDMigrateCycleTrackingUpdatedFertileWindowNotificationFireDateKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value", @"com.apple.private.health.menstrual-cycles", 0, 1, &unk_283CAF850);
  v7 = [v5 unprotectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDAddChildSyncIdentityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF7A8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetAnchorsForAssociationsForNanoSync(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 unprotectedDatabase];
    v9 = [v10 executeSQLStatements:&unk_283CAF7C0 error:a4] ^ 1;
  }

  return v9;
}

uint64_t _HDAddNotificationInstructionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAF790 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddTableForCloudSyncRequests(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF7D8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddFirstActivityConfigToWorkoutSessionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF7F0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetLocalDeviceSource(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v6 behavior];
  if ([v8 isiPad])
  {
  }

  else
  {
    v9 = [v6 behavior];
    v10 = [v9 isRealityDevice];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  v11 = [v7 unprotectedDatabase];
  v12 = [v11 executeSQLStatements:&unk_283CAF808 error:a4] ^ 1;

LABEL_6:
  return v12;
}

uint64_t _HDAddAdditionalColumnsToCloudSyncRequests(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAF820 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddLinkCollectionDataColumnToUDCTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  if ([v5 executeUncachedSQL:@"ALTER TABLE user_domain_concepts ADD COLUMN link_collection_data BLOB" error:a4])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___HDAddLinkCollectionDataColumnToUDCTable_block_invoke;
    v8[3] = &unk_278614098;
    v9 = v5;
    v6 = [v9 executeUncachedSQL:@"SELECT udc_id FROM user_domain_concepts WHERE udc_id IN (SELECT DISTINCT udc_id FROM user_domain_concept_links)" error:a4 bindingHandler:0 enumerationHandler:v8] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t _HDAddProtectedDeviceKeyValueStorageTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS secure_kv_device_storage (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identity_id INTEGER NOT NULL, domain TEXT NOT NULL, key TEXT NOT NULL, value BLOB NOT NULL, date_modified REAL NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutZonesSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS workout_zones_samples (data_id INTEGER PRIMARY KEY AUTOINCREMENT error:{zones BLOB NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutZonesAssociationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS workout_zones_associations (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{workout_id INTEGER NOT NULL REFERENCES workouts(data_id), zones_sample_id INTEGER NOT NULL REFERENCES workout_zones_samples(data_id), sync_provenance INTEGER, sync_identity INTEGER NOT NULL, UNIQUE(workout_id, zones_sample_id));", a4}] ^ 1;

  return v6;
}

uint64_t _HDMigrateCycleTrackingKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value_secure", @"com.apple.private.health.menstrual-cycles", 100, 105, &unk_283CAF838);
  v7 = [v5 protectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDAddHashedMedicationIdentifierToMedicationDoseEventTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v5 protectedDatabase];
  v8 = [v7 executeSQLStatements:&unk_283CAF868 error:a4];

  if (v8)
  {
    v19 = 0;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = ___HDAddHashedMedicationIdentifierToMedicationDoseEventTable_block_invoke;
    v17 = &unk_278614098;
    v18 = v6;
    v9 = [v18 executeUncachedSQL:@"SELECT DISTINCT medication_identifier FROM medication_dose_event_samples_new" error:&v19 bindingHandler:0 enumerationHandler:&v14];
    v10 = v19;
    if (v9)
    {
      v11 = [v5 protectedDatabase];
      v12 = [v11 executeSQLStatements:&unk_283CAF880 error:a4] ^ 1;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t _HDAddStateOfMindSamplesTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF8B0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddScoredAssessmentSamplesTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF8C8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRemoveOnDeleteCascadeFromAssociationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF898 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateClinicalAccountSyncAnchors(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v8 = [v7 protectedDatabase];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke;
  v42[3] = &unk_278614620;
  v42[4] = &v43;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_accounts" error:a4 bindingHandler:0 enumerationHandler:v42];

  if (v9)
  {
    v44[3] += 10000;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v10 = [v7 protectedDatabase];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_2;
    v40[3] = &unk_278614620;
    v40[4] = v41;
    v11 = [v10 executeUncachedSQL:@"SELECT MAX(ROWID) FROM clinical_credentials" error:a4 bindingHandler:0 enumerationHandler:v40];

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

    v12 = [v7 protectedDatabase];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_3;
    v39[3] = &unk_2786140E8;
    v39[4] = v41;
    v13 = [v12 executeUncachedSQL:@"UPDATE clinical_credentials SET ROWID = ROWID + ?" error:a4 bindingHandler:v39 enumerationHandler:0];

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    v14 = [v7 protectedDatabase];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_4;
    v38[3] = &unk_2786140E8;
    v38[4] = v41;
    v15 = [v14 executeUncachedSQL:@"UPDATE clinical_accounts SET credential_id = credential_id + ? WHERE credential_id IS NOT NULL" error:a4 bindingHandler:v38 enumerationHandler:0];

    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }

    v16 = [v7 protectedDatabase];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_5;
    v37[3] = &unk_2786140E8;
    v37[4] = &v43;
    v17 = [v16 executeUncachedSQL:@"UPDATE clinical_accounts SET sync_anchor = sync_anchor + ?" error:a4 bindingHandler:v37 enumerationHandler:0];

    if (v17)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v18 = [v7 protectedDatabase];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_6;
      v32[3] = &unk_278614620;
      v32[4] = &v33;
      v19 = [v18 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_accounts" error:a4 bindingHandler:0 enumerationHandler:v32];

      if ((v19 & 1) == 0 || (v20 = [v6 fetchLegacySyncIdentity:v7 error:a4], v20 == -1))
      {
        v26 = 1;
      }

      else
      {
        v21 = v34[3];
        if (v21 <= 0x2710)
        {
          v21 = 10000;
        }

        v34[3] = v21 + 1;
        v22 = [MEMORY[0x277CBEAA8] date];
        v23 = [v7 protectedDatabase];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_7;
        v28[3] = &unk_278624510;
        v30 = &v33;
        v24 = v22;
        v29 = v24;
        v31 = v20;
        v25 = [v23 executeUncachedSQL:@"INSERT INTO key_value_secure (category error:domain bindingHandler:key enumerationHandler:{value, provenance, mod_date, sync_identity) values (100, 'com.apple.health.records.syncanchors', 'ClinicalAccountNextSyncAnchor', ?, 0, ?, ?)", a4, v28, 0}];

        v26 = v25 ^ 1u;
      }

      _Block_object_dispose(&v33, 8);
    }

    else
    {
LABEL_12:
      v26 = 1;
    }

    _Block_object_dispose(v41, 8);
  }

  else
  {
    v26 = 1;
  }

  _Block_object_dispose(&v43, 8);

  return v26;
}

void sub_228D78118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 184), 8);
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDMigrateClinicalGatewaySyncAnchors(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v8 = [v7 protectedDatabase];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke;
  v32[3] = &unk_278614620;
  v32[4] = &v33;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_gateways" error:a4 bindingHandler:0 enumerationHandler:v32];

  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v34[3] += 10000;
  v10 = [v7 protectedDatabase];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke_2;
  v31[3] = &unk_2786140E8;
  v31[4] = &v33;
  v11 = [v10 executeUncachedSQL:@"UPDATE clinical_gateways SET sync_anchor = sync_anchor + ?" error:a4 bindingHandler:v31 enumerationHandler:0];

  if (v11)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v12 = [v7 protectedDatabase];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke_3;
    v26[3] = &unk_278614620;
    v26[4] = &v27;
    v13 = [v12 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_gateways" error:a4 bindingHandler:0 enumerationHandler:v26];

    if ((v13 & 1) == 0 || (v14 = [v6 fetchLegacySyncIdentity:v7 error:a4], v14 == -1))
    {
      v20 = 1;
    }

    else
    {
      v15 = v28[3];
      if (v15 <= 0x2710)
      {
        v15 = 10000;
      }

      v28[3] = v15 + 1;
      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [v7 protectedDatabase];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke_4;
      v22[3] = &unk_278624510;
      v24 = &v27;
      v18 = v16;
      v23 = v18;
      v25 = v14;
      v19 = [v17 executeUncachedSQL:@"INSERT INTO key_value_secure (category error:domain bindingHandler:key enumerationHandler:{value, provenance, mod_date, sync_identity) values (100, 'com.apple.health.records.syncanchors', 'ClinicalGatewayNextSyncAnchor', ?, 0, ?, ?)", a4, v22, 0}];

      v20 = v19 ^ 1u;
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
LABEL_8:
    v20 = 1;
  }

  _Block_object_dispose(&v33, 8);

  return v20;
}

void sub_228D7847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDMigrateOriginalResources(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v8 = [v7 protectedDatabase];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___HDMigrateOriginalResources_block_invoke;
  v30[3] = &unk_278614620;
  v30[4] = v31;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(ROWID) FROM original_fhir_resources" error:a4 bindingHandler:0 enumerationHandler:v30];

  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = [v7 protectedDatabase];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___HDMigrateOriginalResources_block_invoke_2;
  v29[3] = &unk_2786140E8;
  v29[4] = v31;
  v11 = [v10 executeUncachedSQL:@"UPDATE original_fhir_resources SET ROWID = ROWID + ?" error:a4 bindingHandler:v29 enumerationHandler:0];

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = [v7 protectedDatabase];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = ___HDMigrateOriginalResources_block_invoke_3;
  v28[3] = &unk_2786140E8;
  v28[4] = v31;
  v13 = [v12 executeUncachedSQL:@"UPDATE clinical_record_samples SET original_fhir_resource_ROWID = original_fhir_resource_ROWID + ? WHERE original_fhir_resource_ROWID IS NOT NULL" error:a4 bindingHandler:v28 enumerationHandler:0];

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = [v7 protectedDatabase];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = ___HDMigrateOriginalResources_block_invoke_4;
  v27[3] = &unk_2786140E8;
  v27[4] = v31;
  v15 = [v14 executeUncachedSQL:@"UPDATE medical_records SET original_fhir_resource_ROWID = original_fhir_resource_ROWID + ? WHERE original_fhir_resource_ROWID IS NOT NULL" error:a4 bindingHandler:v27 enumerationHandler:0];

  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = [v7 protectedDatabase];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___HDMigrateOriginalResources_block_invoke_5;
  v26[3] = &unk_2786140E8;
  v26[4] = v31;
  v17 = [v16 executeUncachedSQL:@"UPDATE original_fhir_resources_last_seen SET resource_id = resource_id + ?" error:a4 bindingHandler:v26 enumerationHandler:0];

  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

  v18 = [v7 protectedDatabase];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = ___HDMigrateOriginalResources_block_invoke_6;
  v25[3] = &unk_2786140E8;
  v25[4] = v31;
  v19 = [v18 executeUncachedSQL:@"UPDATE clinical_accounts SET last_extracted_rowid = last_extracted_rowid + ? WHERE last_extracted_rowid IS NOT NULL AND last_extracted_rowid > 0" error:a4 bindingHandler:v25 enumerationHandler:0];

  if (v19)
  {
    v20 = [v7 protectedDatabase];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___HDMigrateOriginalResources_block_invoke_7;
    v24[3] = &unk_2786140E8;
    v24[4] = v31;
    v21 = [v20 executeUncachedSQL:@"UPDATE clinical_accounts SET last_submitted_rowid = last_submitted_rowid + ? WHERE last_submitted_rowid IS NOT NULL AND last_submitted_rowid > 0" error:a4 bindingHandler:v24 enumerationHandler:0];

    v22 = v21 ^ 1u;
  }

  else
  {
LABEL_8:
    v22 = 1;
  }

  _Block_object_dispose(v31, 8);

  return v22;
}

uint64_t _HDMigrateOriginalSignedClinicalDataRecords(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v8 = [v7 protectedDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke;
  v21[3] = &unk_278614620;
  v21[4] = v22;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(ROWID) FROM original_signed_clinical_data_records" error:a4 bindingHandler:0 enumerationHandler:v21];

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [v7 protectedDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke_2;
  v20[3] = &unk_2786140E8;
  v20[4] = v22;
  v11 = [v10 executeUncachedSQL:@"UPDATE original_signed_clinical_data_records SET ROWID = ROWID + ?" error:a4 bindingHandler:v20 enumerationHandler:0];

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [v7 protectedDatabase];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke_3;
  v19[3] = &unk_2786140E8;
  v19[4] = v22;
  v13 = [v12 executeUncachedSQL:@"UPDATE clinical_record_samples SET original_signed_clinical_data_rowid = original_signed_clinical_data_rowid + ? WHERE original_signed_clinical_data_rowid IS NOT NULL" error:a4 bindingHandler:v19 enumerationHandler:0];

  if (v13)
  {
    v14 = [v7 protectedDatabase];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke_4;
    v18[3] = &unk_2786140E8;
    v18[4] = v22;
    v15 = [v14 executeUncachedSQL:@"UPDATE medical_records SET original_signed_clinical_data_rowid = original_signed_clinical_data_rowid + ? WHERE original_signed_clinical_data_rowid IS NOT NULL" error:a4 bindingHandler:v18 enumerationHandler:0];

    v16 = v15 ^ 1u;
  }

  else
  {
LABEL_5:
    v16 = 1;
  }

  _Block_object_dispose(v22, 8);

  return v16;
}

id _HDKeyValueDomainCategoryMigrationStatement(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a1;
  v11 = [a5 hk_map:&__block_literal_global_421];
  v12 = [v11 componentsJoinedByString:{@", "}];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR IGNORE INTO %@ (value, key, domain, category, provenance, mod_date, sync_identity)", v10];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value, key, domain, %ld, provenance, mod_date, sync_identity FROM %@", a4, v10];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"WHERE domain = '%@' AND category = %ld", v9, a3];

  if (v12)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" AND key in (%@)", v12];
  }

  else
  {
    v16 = &stru_283BF39C8;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@%@", v13, v14, v15, v16];

  return v17;
}

void sub_228D79AC8(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D7C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__122(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D7D6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v30 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_228D7E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v41 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_228D7ED68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_228D7FD3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_228D80F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_228D81514(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_228D8175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D82DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, id);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_228D83808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

void sub_228D83E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D843E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_228D84678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D85900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D85B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_228D87D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a30, 8);

  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v42 - 232), 8);
  _Block_object_dispose((v42 - 200), 8);

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_1()
{
  v0 = &off_27D8686C8;
  v1 = -120;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

void health::HDDemangleSymbol(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = __cxa_demangle(a1, 0, 0, 0);
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, v4);

    JUMPOUT(0x22AAC8590);
  }

  if (v2[23] < 0)
  {
    v5 = *v2;
    v6 = *(v2 + 1);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }
}

void health::HDRegexReplace(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
  }

  else
  {
    v7 = a1;
  }

  v8 = v7 + v6;
  *v76 = v7;
  *&v76[8] = v7 + v6;
  *&v76[16] = a2;
  *&v76[24] = 0;
  *&v78 = 0;
  *&v77[48] = 0;
  BYTE8(v78) = 0;
  v79 = 0uLL;
  LOBYTE(v80) = 0;
  BYTE8(v80) = 0;
  v81 = 0;
  memset(v77, 0, 41);
  memset(v71, 0, 17);
  *&v71[24] = 0;
  *&v71[32] = 0;
  LOBYTE(v72) = 0;
  BYTE8(v72) = 0;
  *&v73 = 0;
  memset(__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v7, (v7 + v6), __p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v77, v7, v8, __p, 0);
  if (*__p)
  {
    operator delete(*__p);
  }

  *__p = *v76;
  *&__p[12] = *&v76[12];
  *&__p[40] = 0;
  *v71 = 0;
  *&__p[32] = 0;
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&__p[32], *v77, *&v77[8], 0xAAAAAAAAAAAAAAABLL * ((*&v77[8] - *v77) >> 3));
  v72 = v78;
  v73 = v79;
  v74 = v80;
  v75 = v81;
  *&v71[8] = *&v77[24];
  *&v71[24] = *&v77[40];
  v9 = *&__p[32];
  v10 = *&__p[40];
  while (*&__p[40] != *&__p[32])
  {
    memset(v83, 0, 24);
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(v83, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    *&v83[24] = *&v71[8];
    *&v83[40] = *&v71[24];
    v60 = 0;
    v61 = 0;
    v11 = *v83;
    v59 = 0;
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v59, *v83, *&v83[8], 0xAAAAAAAAAAAAAAABLL * ((*&v83[8] - *v83) >> 3));
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v67 = v75;
    v62 = *&v71[8];
    v63 = *&v71[24];
    v12 = *(a3 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v68);
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (*(&v11 + 1) == v11)
    {
      v13 = &v83[24];
    }

    else
    {
      v13 = v11;
    }

    v14 = *v13;
    v15 = *(a4 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a4 + 8);
    }

    std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v16 + v15, v7, v14, v14 - v7);
    v17 = *(a4 + 23);
    v19 = *a4;
    v18 = *(a4 + 8);
    if (v17 >= 0)
    {
      v20 = a4;
    }

    else
    {
      v20 = *a4;
    }

    if (v17 >= 0)
    {
      v21 = *(a4 + 23);
    }

    else
    {
      v21 = *(a4 + 8);
    }

    v22 = v20 + v21;
    if ((v69 & 0x80u) == 0)
    {
      v23 = v68;
    }

    else
    {
      v23 = v68[0];
    }

    if ((v69 & 0x80u) == 0)
    {
      v24 = v69;
    }

    else
    {
      v24 = v68[1];
    }

    if (v17 < 0)
    {
      if (!v24)
      {
        goto LABEL_56;
      }

      v25 = v22 - v19;
      if (v19 > v23 || v19 + v18 + 1 <= v23)
      {
        v26 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v26 - v18 >= v24)
        {
          goto LABEL_49;
        }

LABEL_35:
        std::string::__grow_by(a4, v26, v18 + v24 - v26, v18, v25, 0, v24);
        *(a4 + 8) = v18 + v24;
        v19 = *a4;
LABEL_52:
        v30 = v18 + v24;
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = v30;
        }

        else
        {
          *(a4 + 23) = v30 & 0x7F;
        }

        *(v19 + v30) = 0;
        memmove((v19 + v25), v23, v24);
        goto LABEL_56;
      }
    }

    else
    {
      if (!v24)
      {
        goto LABEL_56;
      }

      v25 = v22 - a4;
      if (v23 < a4 || a4 + 1 + v17 <= v23)
      {
        v18 = *(a4 + 23);
        v19 = a4;
        v26 = 22;
        if (22 - v17 < v24)
        {
          goto LABEL_35;
        }

LABEL_49:
        if (v18 == v25)
        {
          v18 = v25;
        }

        else
        {
          memmove((v19 + v25 + v24), (v19 + v25), v18 - v25);
        }

        goto LABEL_52;
      }
    }

    v27 = 0;
    memset(&v82, 0, sizeof(v82));
    do
    {
      std::string::push_back(&v82, *(v23 + v27++));
    }

    while (v24 != v27);
    size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v82;
    }

    else
    {
      v29 = v82.__r_.__value_.__r.__words[0];
    }

    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v82.__r_.__value_.__l.__size_;
    }

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v24, v25, v29, v29 + size);
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

LABEL_56:
    v31 = *v83;
    v32 = &v83[32];
    if (*&v83[8] != *v83)
    {
      v32 = (*v83 + 8);
    }

    v7 = *v32;
    if ((v69 & 0x80000000) == 0)
    {
      if (!*v83)
      {
        goto LABEL_61;
      }

LABEL_60:
      operator delete(v31);
      goto LABEL_61;
    }

    operator delete(v68[0]);
    if (v31)
    {
      goto LABEL_60;
    }

LABEL_61:
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v34 = *&__p[32];
    v33 = *&__p[40];
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v50, *&__p[32], *&__p[40], 0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3));
    v55 = v72;
    v56 = v73;
    v57 = v74;
    v53 = *&v71[8];
    v58 = v75;
    v54 = *&v71[24];
    v35 = *&__p[24];
    v36 = *&__p[24] | 0x800;
    *&__p[24] |= 0x800u;
    if (v33 == v34)
    {
      v37 = &v71[8];
    }

    else
    {
      v37 = v34;
    }

    v38 = v34 + 1;
    if (v33 == v34)
    {
      v38 = &v71[16];
    }

    v39 = *v38;
    v40 = *&__p[8];
    if (*v37 == *v38)
    {
      if (*&__p[8] == v39)
      {
        if (v34)
        {
          v44 = v34;
          goto LABEL_83;
        }

LABEL_84:
        BYTE8(v74) = 0;
        *&__p[32] = 0u;
        memset(v71, 0, 25);
        *&v71[32] = 0;
        *&v72 = 0;
        BYTE8(v72) = 0;
        v73 = 0uLL;
        LOBYTE(v74) = 0;
        v75 = 0;
        goto LABEL_85;
      }

      *&v83[48] = 0;
      *&v84 = 0;
      BYTE8(v84) = 0;
      v85 = 0uLL;
      LOBYTE(v86) = 0;
      BYTE8(v86) = 0;
      v87 = 0;
      memset(v83, 0, 41);
      v43 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&__p[16], v39, *&__p[8], v83, v35 | 0x860u);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&__p[32], v39, v40, v83, 1);
      if (*v83)
      {
        operator delete(*v83);
      }

      if (v43)
      {
        goto LABEL_85;
      }

      v41 = (&v39->first + 1);
      v36 = *&__p[24];
      v40 = *&__p[8];
    }

    else
    {
      v41 = *v38;
    }

    *&__p[24] = v36 | 0x80;
    *&v83[48] = 0;
    *&v84 = 0;
    BYTE8(v84) = 0;
    v85 = 0uLL;
    LOBYTE(v86) = 0;
    BYTE8(v86) = 0;
    v87 = 0;
    memset(v83, 0, 41);
    v42 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&__p[16], v41, v40, v83, v36 | 0x80u);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&__p[32], v41, v40, v83, (v36 & 0x800) != 0);
    if (*v83)
    {
      operator delete(*v83);
    }

    if ((v42 & 1) == 0)
    {
      v44 = *&__p[32];
      if (!*&__p[32])
      {
        goto LABEL_84;
      }

LABEL_83:
      operator delete(v44);
      goto LABEL_84;
    }

    *&v71[32] = v39;
    BYTE8(v72) = v72 != v39;
LABEL_85:
    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    v9 = *&__p[32];
    v10 = *&__p[40];
  }

  if (v9)
  {
    operator delete(v9);
  }

  v45 = *(a4 + 23);
  if ((v45 & 0x80u) == 0)
  {
    v46 = a4;
  }

  else
  {
    v46 = *a4;
  }

  if ((v45 & 0x80u) != 0)
  {
    v45 = *(a4 + 8);
  }

  v47 = a1;
  v48 = *(a1 + 23);
  if (v48 < 0)
  {
    v47 = *a1;
    v48 = *(a1 + 8);
  }

  std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v46 + v45, v7, v47 + v48, v47 + v48 - v7);
  if (*v77)
  {
    operator delete(*v77);
  }
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

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(a4);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_228D89098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, uint64_t a2, std::string *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (!__n_add)
    {
      return;
    }

    v10 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    if (!__n_add)
    {
      return;
    }

    v10 = this;
  }

  v11 = a2 - v10;
  if (v10 > a3 || (&v10->__r_.__value_.__l.__data_ + size + 1) <= a3)
  {

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v11, a3, a4);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
    if (a3 == a4)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      do
      {
        std::string::push_back(&v16, *v7++);
      }

      while (v7 != a4);
      v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      v12 = v16.__r_.__value_.__l.__size_;
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v15 = &v16;
    }

    else
    {
      v15 = v13;
    }

    if ((v14 & 0x80u) == 0)
    {
      v12 = v14;
    }

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v11, v15, v15 + v12);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_228D89240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v10 = *result;
  v9 = result[1];
  v11 = v9 - *result;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v13 = v8 - v12;
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      v9 = v10 + v7;
      result[1] = v10 + v7;
    }
  }

  else
  {
    v14 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3) < v13)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 3);
        v16 = 2 * v15;
        if (2 * v15 <= v8)
        {
          v16 = v8;
        }

        if (v15 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v17);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v18 = v9 + 24 * v13;
    v19 = 24 * v8 - 8 * (v11 >> 3);
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v19 -= 24;
    }

    while (v19);
    result[1] = v18;
    v9 = v18;
  }

  v20 = *result;
  if (v9 == *result)
  {
    v23 = a2 - v6;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = a2 - v6;
    v25 = *a4;
    v24 = a4[1];
    do
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
      v27 = (v25 + v21);
      if (v26 <= v22)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = v27;
      }

      *(v20 + v21) = v23 + *v28;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v22)
      {
        v29 = a4 + 3;
      }

      else
      {
        v29 = (*a4 + v21);
      }

      *(*v5 + v21 + 8) = v23 + v29[1];
      v25 = *a4;
      v24 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v24 - *a4) >> 3) <= v22)
      {
        v30 = a4 + 3;
      }

      else
      {
        v30 = (*a4 + v21);
      }

      v31 = *(v30 + 16);
      v20 = *v5;
      v32 = v5[1];
      result = (*v5 + v21);
      *(result + 16) = v31;
      ++v22;
      v21 += 24;
    }

    while (v22 < 0xAAAAAAAAAAAAAAABLL * ((v32 - v20) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v33 = v23 + a4[6];
  v5[6] = v33;
  v5[7] = v23 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v23 + a4[9];
  v5[10] = v23 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v33;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v7 = a5;
  v10 = a2;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v118, 0, 48);
    v63 = *(a1 + 40);
    if (!v63)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v118);
      return v63;
    }

    *v122 = 0;
    memset(&v122[8], 0, 32);
    v123 = 0uLL;
    memset(v124, 0, 37);
    std::deque<std::__state<char>>::push_back(v118, v122);
    if (v124[0])
    {
      operator delete(v124[0]);
    }

    if (*&v122[32])
    {
      operator delete(*&v122[32]);
    }

    v112 = a4;
    v64 = *&v118[8];
    v65 = *&v118[40] + *&v118[32] - 1;
    v66 = v65 / 0x2A;
    v67 = *(*&v118[8] + 8 * (v65 / 0x2A));
    v68 = 3 * (v65 % 0x2A);
    v69 = v67 + 32 * v68;
    *v69 = 0;
    *(v69 + 8) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 16) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v64 + 8 * v66) + 32 * v68 + 56), *(a1 + 32));
    v114 = 0;
    v70 = 0;
    v113 = 0;
    v71 = *&v118[40];
    v72 = *&v118[8];
    v73 = *&v118[40] + *&v118[32] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(*&v118[8] + 8 * v74) + 32 * v75 + 80) = v63;
    v117 = (a3 - v10);
    v76 = *(v72 + 8 * v74) + 32 * v75;
    *(v76 + 88) = v7;
    *(v76 + 92) = a6;
    while (1)
    {
      if ((++v70 & 0xFFF) == 0 && (v70 >> 12) >= v117)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v78 = *(*&v118[8] + 8 * ((v71 + *&v118[32] - 1) / 0x2AuLL)) + 96 * ((v71 + *&v118[32] - 1) % 0x2AuLL);
      v80 = (v78 + 80);
      v79 = *(v78 + 80);
      if (v79)
      {
        (*(*v79 + 16))(v79, v78);
      }

      v81 = *v78;
      if (*v78 <= -995)
      {
        switch(v81)
        {
          case -1000:
            v86 = *(v78 + 16);
            v88 = (v7 & 0x1000) == 0 || v86 == a3;
            v89 = v86 != v10 || (v7 & 0x20) == 0;
            if (!v89 || !v88)
            {
              goto LABEL_181;
            }

            v90 = &v86[-*(v78 + 8)];
            v91 = v113;
            if (v113 <= v90)
            {
              v91 = v90;
            }

            if ((v114 & 1) == 0)
            {
              v91 = v90;
            }

            if (v91 == v117)
            {
              v92 = *&v118[8];
              v93 = *&v118[16];
              if (*&v118[16] == *&v118[8])
              {
                v93 = *&v118[8];
              }

              else
              {
                v94 = v7;
                v95 = v10;
                v96 = (*&v118[8] + 8 * (*&v118[32] / 0x2AuLL));
                v97 = (*v96 + 96 * (*&v118[32] % 0x2AuLL));
                v98 = *(*&v118[8] + 8 * ((*&v118[40] + *&v118[32]) / 0x2AuLL)) + 96 * ((*&v118[40] + *&v118[32]) % 0x2AuLL);
                if (v97 != v98)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v97);
                    v97 += 12;
                    if ((v97 - *v96) == 4032)
                    {
                      v99 = v96[1];
                      ++v96;
                      v97 = v99;
                    }
                  }

                  while (v97 != v98);
                  v92 = *&v118[8];
                  v93 = *&v118[16];
                }

                v10 = v95;
                v7 = v94;
              }

              *&v118[40] = 0;
              v102 = (v93 - v92) >> 3;
              if (v102 >= 3)
              {
                do
                {
                  operator delete(*v92);
                  v92 = (*&v118[8] + 8);
                  *&v118[8] = v92;
                  v102 = (*&v118[16] - v92) >> 3;
                }

                while (v102 > 2);
              }

              if (v102 == 1)
              {
                v103 = 21;
LABEL_172:
                *&v118[32] = v103;
              }

              else if (v102 == 2)
              {
                v103 = 42;
                goto LABEL_172;
              }

              v114 = 1;
              v113 = v117;
              break;
            }

            v113 = v91;
            std::deque<std::__state<char>>::pop_back(v118);
            v114 = 1;
            break;
          case -999:
            break;
          case -995:
            v82 = *&v118[32];
            v83 = *&v118[8];
            v84 = *&v118[16];
            if (!*&v118[32])
            {
              v85 = 42 * ((*&v118[16] - *&v118[8]) >> 3) - 1;
              if (*&v118[16] == *&v118[8])
              {
                v85 = 0;
              }

              if ((v85 - *&v118[40]) < 0x2A)
              {
                if (*&v118[16] - *&v118[8] < *&v118[24] - *v118)
                {
                  if (*&v118[8] != *v118)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v118[24] == *v118)
                {
                  v104 = 1;
                }

                else
                {
                  v104 = (*&v118[24] - *v118) >> 2;
                }

                *&v122[32] = v118;
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v104);
              }

              *&v118[32] = 42;
              *v122 = *(*&v118[16] - 8);
              *&v118[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v118, v122);
              v82 = *&v118[32];
              v83 = *&v118[8];
              v84 = *&v118[16];
            }

            v105 = (v83 + 8 * (v82 / 0x2A));
            v106 = *v105 + 96 * (v82 % 0x2A);
            if (v84 == v83)
            {
              v107 = 0;
            }

            else
            {
              v107 = v106;
            }

            if (v107 == *v105)
            {
              v107 = *(v105 - 1) + 4032;
            }

            v108 = *(v78 + 16);
            *(v107 - 96) = *v78;
            *(v107 - 80) = v108;
            *(v107 - 56) = 0;
            *(v107 - 48) = 0;
            *(v107 - 64) = 0;
            *(v107 - 64) = *(v78 + 32);
            *(v107 - 48) = *(v78 + 48);
            *(v78 + 32) = 0;
            *(v78 + 40) = 0;
            *(v78 + 48) = 0;
            *(v107 - 40) = 0;
            *(v107 - 32) = 0;
            *(v107 - 24) = 0;
            *(v107 - 40) = *(v78 + 56);
            *(v107 - 24) = *(v78 + 72);
            *(v78 + 56) = 0;
            *(v78 + 64) = 0;
            *(v78 + 72) = 0;
            v109 = *v80;
            *(v107 - 11) = *(v78 + 85);
            *(v107 - 16) = v109;
            *&v118[32] = vaddq_s64(*&v118[32], xmmword_22916DDB0);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v81 > -993)
        {
          if (v81 == -992)
          {
            v100 = *(v78 + 16);
            *v122 = *v78;
            *&v122[16] = v100;
            v123 = 0uLL;
            *&v122[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v122[32], *(v78 + 32), *(v78 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v78 + 40) - *(v78 + 32)) >> 3));
            memset(v124, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v124, *(v78 + 56), *(v78 + 64), (*(v78 + 64) - *(v78 + 56)) >> 4);
            v101 = *v80;
            *(&v124[3] + 5) = *(v78 + 85);
            v124[3] = v101;
            (*(**(v78 + 80) + 24))(*(v78 + 80), 1, v78);
            (*(*v124[3] + 24))(v124[3], 0, v122);
            std::deque<std::__state<char>>::push_back(v118, v122);
            if (v124[0])
            {
              v124[1] = v124[0];
              operator delete(v124[0]);
            }

            if (*&v122[32])
            {
              *&v123 = *&v122[32];
              operator delete(*&v122[32]);
            }
          }

          else if (v81 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v81 != -994)
        {
          if (v81 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v118);
        }
      }

LABEL_182:
      v71 = *&v118[40];
      if (!*&v118[40])
      {
        if (v114)
        {
          v110 = *v112;
          *v110 = v10;
          *(v110 + 8) = &v113[v10];
          v63 = 1;
          *(v110 + 16) = 1;
        }

        else
        {
          v63 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v12 = a5;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  *v122 = 0;
  memset(&v122[8], 0, 32);
  v123 = 0u;
  memset(v124, 0, 37);
  v13 = *(a1 + 40);
  if (!v13)
  {
LABEL_94:
    v63 = 0;
    goto LABEL_95;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v118 = 0;
  memset(&v118[8], 0, 48);
  *__p = 0uLL;
  memset(v120, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v125, v118);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v118[32])
  {
    operator delete(*&v118[32]);
  }

  v111 = a4;
  v14 = v126;
  *(v126 - 24) = 0;
  *(v14 - 11) = v10;
  *(v14 - 10) = v10;
  v115 = v10;
  *(v14 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v14 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v126 - 5), *(a1 + 32));
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v116 = a3;
  v18 = (a3 - v115);
  v19 = v126;
  *(v126 - 2) = v13;
  *(v19 - 2) = v12;
  *(v19 - 4) = a6;
  do
  {
    v20 = (++v17 & 0xFFF) != 0 || (v17 >> 12) < v18;
    if (!v20)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v22 = v19 - 2;
    v21 = *(v19 - 2);
    v23 = v19 - 12;
    if (v21)
    {
      (*(*v21 + 16))(v21, v19 - 12);
    }

    v24 = *v23;
    if (*v23 > -994)
    {
      switch(v24)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v37 = *(v19 - 5);
          *v118 = *v23;
          *&v118[16] = v37;
          memset(&v118[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v118[32], *(v19 - 8), *(v19 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v19 - 7) - *(v19 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v120[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v19 - 5), *(v19 - 4), (*(v19 - 4) - *(v19 - 5)) >> 4);
          v38 = *v22;
          *(&v120[1] + 5) = *(v19 - 11);
          v120[1] = v38;
          (*(**v22 + 24))(*v22, 1, v19 - 12);
          (*(*v120[1] + 24))(v120[1], 0, v118);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v125, v118);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v118[32])
          {
            *&v118[40] = *&v118[32];
            operator delete(*&v118[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v24 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v24 != -1000)
      {
        goto LABEL_188;
      }

      v25 = *(v19 - 10);
      if ((v12 & 0x20) != 0 && v25 == v115 || (v12 & 0x1000) != 0 && v25 != v116)
      {
LABEL_40:
        v36 = v126 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v126 - 12);
        v126 = v36;
        goto LABEL_45;
      }

      v26 = &v25[-*(v19 - 11)];
      if ((v16 & (v15 >= v26)) == 0)
      {
        v27 = *(v19 - 5);
        *v122 = *v23;
        *&v122[16] = v27;
        if (v122 != v23)
        {
          v29 = *(v19 - 8);
          v28 = *(v19 - 7);
          v30 = v28 - v29;
          v31 = *(&v123 + 1);
          v32 = *&v122[32];
          if (*(&v123 + 1) - *&v122[32] < v28 - v29)
          {
            if (*&v122[32])
            {
              *&v123 = *&v122[32];
              operator delete(*&v122[32]);
              v31 = 0;
              *&v122[32] = 0;
              v123 = 0uLL;
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
            if (v33 <= 0xAAAAAAAAAAAAAAALL)
            {
              v34 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 3);
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

              if (v35 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v35);
              }
            }

            std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
          }

          v39 = v123;
          if (v123 - *&v122[32] >= v30)
          {
            while (v29 != v28)
            {
              *v32 = *v29;
              *(v32 + 16) = *(v29 + 16);
              v29 += 24;
              v32 += 24;
            }
          }

          else
          {
            v40 = (v29 + v123 - *&v122[32]);
            if (v123 != *&v122[32])
            {
              do
              {
                *v32 = *v29;
                *(v32 + 16) = *(v29 + 16);
                v29 += 24;
                v32 += 24;
              }

              while (v29 != v40);
            }

            if (v40 == v28)
            {
              v32 = v39;
            }

            else
            {
              v32 = v39;
              do
              {
                v41 = *v40;
                *(v39 + 16) = *(v40 + 2);
                *v39 = v41;
                v39 += 24;
                v40 = (v40 + 24);
                v32 += 24;
              }

              while (v40 != v28);
            }
          }

          *&v123 = v32;
          v43 = *(v19 - 5);
          v42 = *(v19 - 4);
          v44 = v42 - v43;
          v45 = v124[2];
          v46 = v124[0];
          if ((v124[2] - v124[0]) < (v42 - v43))
          {
            if (v124[0])
            {
              v124[1] = v124[0];
              operator delete(v124[0]);
              v45 = 0;
              memset(v124, 0, 24);
            }

            v47 = v44 >> 4;
            if (!((v44 >> 4) >> 60))
            {
              if (v45 >> 3 > v47)
              {
                v47 = v45 >> 3;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF0)
              {
                v48 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v47;
              }

              if (!(v48 >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v48);
              }
            }

            std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
          }

          v49 = v124[1];
          if ((v124[1] - v124[0]) >= v44)
          {
            while (v43 != v42)
            {
              *v46 = *v43;
              v46[1] = *(v43 + 1);
              v43 += 16;
              v46 += 2;
            }
          }

          else
          {
            v50 = &v43[v124[1] - v124[0]];
            if (v124[1] != v124[0])
            {
              do
              {
                *v46 = *v43;
                v46[1] = *(v43 + 1);
                v43 += 16;
                v46 += 2;
              }

              while (v43 != v50);
            }

            if (v50 == v42)
            {
              v46 = v49;
            }

            else
            {
              v46 = v49;
              do
              {
                v51 = *v50;
                v50 += 16;
                *v49++ = v51;
                v46 += 2;
              }

              while (v50 != v42);
            }
          }

          v124[1] = v46;
        }

        v52 = *v22;
        *(&v124[3] + 5) = *(v22 + 5);
        v124[3] = v52;
        v15 = v26;
      }

      v53 = v126;
      if (v15 == v18)
      {
        v54 = v125;
        while (v53 != v54)
        {
          v53 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53);
        }

        v126 = v54;
        v16 = 1;
        v15 = v18;
      }

      else
      {
        v55 = v126 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v126 - 12);
        v126 = v55;
        v16 = 1;
      }
    }

LABEL_45:
    v19 = v126;
  }

  while (v125 != v126);
  if ((v16 & 1) == 0)
  {
    goto LABEL_94;
  }

  v57 = *v111;
  *v57 = v115;
  *(v57 + 8) = &v15[v115];
  *(v57 + 16) = 1;
  if (v123 != *&v122[32])
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *&v122[32]) >> 3);
    v59 = (*&v122[32] + 16);
    v60 = 1;
    do
    {
      v61 = v57 + 24 * v60;
      *v61 = *(v59 - 1);
      v62 = *v59;
      v59 += 24;
      *(v61 + 16) = v62;
      v20 = v58 > v60++;
    }

    while (v20);
  }

  v63 = 1;
LABEL_95:
  if (v124[0])
  {
    v124[1] = v124[0];
    operator delete(v124[0]);
  }

  if (*&v122[32])
  {
    *&v123 = *&v122[32];
    operator delete(*&v122[32]);
  }

  *v122 = &v125;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v122);
  return v63;
}

void sub_228D8A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
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

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
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
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
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
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
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

void sub_228D8AD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v16 = *a1;
    v17 = a1[1];
    v18 = v13 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v13 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v7 = v13 + 96;
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
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
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
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
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz < v6)
    {
      this->__end_ = &begin[__sz];
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v11);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
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
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
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

void sub_228D8B47C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_228D8B540(_Unwind_Exception *exception_object)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
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
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
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
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
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

      v17[4] = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v9 / 0x2A)] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_228D8B91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v9);
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

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
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

void sub_228D8BDAC(_Unwind_Exception *a1)
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
  v2 = MEMORY[0x22AAC8500]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 17);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
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

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_228D8C750(_Unwind_Exception *exception_object)
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

  JUMPOUT(0x22AAC8590);
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