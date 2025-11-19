void sub_228C6B518(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_errorHandler(uint64_t a1, int a2, uint64_t a3, uint64_t a4, std::string::size_type a5, uint64_t a6)
{
  v22[0] = a3;
  v22[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(&v21, "Unknown Error");
  if (a2 <= 2)
  {
    if (!a2)
    {
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        v21.__r_.__value_.__l.__size_ = 15;
        v14 = v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v21.__r_.__value_.__s + 23) = 15;
        v14 = &v21;
      }

      qmemcpy(v14, "File Corruption", 15);
      v16 = &v14->__r_.__value_.__s.__data_[15];
      goto LABEL_26;
    }

    if (a2 == 1)
    {
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        v21.__r_.__value_.__l.__size_ = 22;
        v15 = v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v21.__r_.__value_.__s + 23) = 22;
        v15 = &v21;
      }

      qmemcpy(v15, "Unexpected Object Type", 22);
      v16 = &v15->__r_.__value_.__s.__data_[22];
      goto LABEL_26;
    }

    if (a2 != 2)
    {
      goto LABEL_27;
    }

    v12 = "Unable to Traverse History";
    v13 = 26;
LABEL_17:
    std::string::__assign_external(&v21, v12, v13);
    goto LABEL_27;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v12 = "Orphaned HFD Object (no reference in SQLite)";
      v13 = 44;
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_27;
      }

      v12 = "Orphaned SQLite Row (no matching object in HFD)";
      v13 = 47;
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v12 = "Sample History Root Mismatch";
    v13 = 28;
    goto LABEL_17;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    v21.__r_.__value_.__l.__size_ = 19;
    v11 = v21.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v21.__r_.__value_.__s + 23) = 19;
    v11 = &v21;
  }

  *(&v11->__r_.__value_.__r.__words[1] + 7) = 1751348321;
  *&v11->__r_.__value_.__l.__data_ = *"SQLite Row Mismatch";
  v16 = &v11->__r_.__value_.__s.__data_[19];
LABEL_26:
  *v16 = 0;
LABEL_27:
  if (a3 | a4)
  {
    v23.__r_.__value_.__r.__words[0] = a5;
    v23.__r_.__value_.__l.__size_ = v22;
    v23.__r_.__value_.__r.__words[2] = &v21;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<std::string &,health::BlockPointer &,std::string const&>("{0}: [{1}] {2}", &__p, 0, &v23);
    v19 = *(a6 + 24);
    if (!v19)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v19 + 48))(v19, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_34;
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = a5;
    __p.__r_.__value_.__l.__size_ = &v21;
    memset(&v23, 0, sizeof(v23));
    health::FormatImplementation<std::string &,std::string const&>("{0}: {1}", &v23, 0, &__p);
    v17 = *(a6 + 24);
    if (!v17)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v17 + 48))(v17, &v23);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = v23.__r_.__value_.__r.__words[0];
LABEL_34:
      operator delete(v18);
    }
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_228C6B7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void health::timestampToDate(double a1@<D0>, _BYTE *a2@<X8>)
{
  if (a1 <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  v6 = v4;
  v5 = HKDiagnosticStringFromDate();
  std::string::basic_string[abi:ne200100]<0>(a2, [v5 UTF8String]);
}

void health::FormatString<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(std::string *a1, std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[0] = a5;
  v5[1] = a4;
  v5[2] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(a2, a1, 0, v5);
}

void sub_228C6B928(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::doubleToString@<X0>(health *this@<X0>, double a2@<D0>, _BYTE *a3@<X8>)
{
  v3 = this;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  *(&v9[0].__locale_ + *(v7 - 24)) = v3;
  MEMORY[0x22AAC8380](&v7, a2);
  std::ostringstream::str[abi:ne200100](&v7, a3);
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x22AAC8550](&v11);
}

void sub_228C6BAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,unsigned long long,std::__identity const,std::__less<void,void>>(void *a1, void *a2, unint64_t a3)
{
  if (a1 != a2)
  {
    if (a1[4] >= a3)
    {
      return a1;
    }

    v3 = 1;
LABEL_4:
    if (v3)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        if (v5 == a2)
        {
          v9 = v3;
          goto LABEL_26;
        }

        v6 = v5[1];
        v7 = v5;
        if (v6)
        {
          do
          {
            v5 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v5 = v7[2];
            v8 = *v5 == v7;
            v7 = v5;
          }

          while (!v8);
        }

        ++v4;
      }

      while (v4 != v3);
      v9 = v3;
      v4 = v3;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      v5 = a1;
    }

LABEL_26:
    while (v5 != a2 && v5[4] < a3)
    {
      v3 *= 2;
      a1 = v5;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      v4 = 0;
      v9 = -v3;
      if (-v3 > 1)
      {
        v10 = -v3;
      }

      else
      {
        v10 = 1;
      }

      while (v5 != a2)
      {
        v11 = *v5;
        v12 = v5;
        if (*v5)
        {
          do
          {
            v5 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = v12[2];
            v8 = *v5 == v12;
            v12 = v5;
          }

          while (v8);
        }

        if (++v4 == v10)
        {
          v4 = v10;
          goto LABEL_26;
        }
      }
    }

    v13 = v4 - v9 + v3;
    if (!v13)
    {
      return a1;
    }

    a2 = v5;
    if (v13 != 1)
    {
      do
      {
        v14 = v13 >> 1;
        v15 = a1;
        if (v13 >= 2)
        {
          v16 = v13 >> 1;
          v17 = a1;
          do
          {
            v18 = v17[1];
            if (v18)
            {
              do
              {
                v15 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v15 = v17[2];
                v8 = *v15 == v17;
                v17 = v15;
              }

              while (!v8);
            }

            v17 = v15;
          }

          while (v16-- > 1);
        }

        if (v15[4] < a3)
        {
          v20 = v15[1];
          if (v20)
          {
            do
            {
              a1 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a1 = v15[2];
              v8 = *a1 == v15;
              v15 = a1;
            }

            while (!v8);
          }

          v14 = v13 + ~v14;
        }

        v13 = v14;
      }

      while (v14);
      return a1;
    }
  }

  return a2;
}

void **std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::insert_iterator<std::set<unsigned long long>>>(void **result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
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
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void **std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](void **a1, unint64_t *a2)
{
  v3 = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(*a1, a1[1], *a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void *std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, void *a2, unint64_t a3)
{
  v3 = a2;
  v4 = a1 + 1;
  if (a1 + 1 == a2 || (v5 = a2[4], v5 > a3))
  {
    v6 = *a2;
    if (*a1 == a2)
    {
      v8 = a2;
    }

    else
    {
      if (v6)
      {
        v7 = *a2;
        do
        {
          v8 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        v12 = a2;
        do
        {
          v8 = v12[2];
          v13 = *v8 == v12;
          v12 = v8;
        }

        while (v13);
      }

      if (v8[4] >= a3)
      {
        v15 = *v4;
        if (!*v4)
        {
          goto LABEL_38;
        }

        while (1)
        {
          while (1)
          {
            v3 = v15;
            v16 = v15[4];
            if (v16 <= a3)
            {
              break;
            }

            v15 = *v15;
            if (!*v3)
            {
              goto LABEL_38;
            }
          }

          if (v16 >= a3)
          {
            return v3;
          }

          v15 = v15[1];
          if (!v15)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (v6)
    {
      v14 = (v8 + 1);
    }

    else
    {
      v14 = a2;
    }

    v3 = *v14;
    if (!*v14)
    {
      goto LABEL_38;
    }
  }

  else if (v5 < a3)
  {
    v9 = a2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
        v11 = v10;
      }

      while (v9);
    }

    else
    {
      v11 = a2;
      do
      {
        v17 = v11;
        v11 = v11[2];
      }

      while (*v11 != v17);
    }

    if (v11 == v4 || v11[4] > a3 || (v18 = *v4) == 0)
    {
LABEL_38:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v18;
        v19 = v18[4];
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        if (!*v3)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

  return v3;
}

uint64_t *std::__tree<unsigned long long>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void **std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::insert_iterator<std::set<unsigned long long>> &>(void **result, uint64_t a2, void *a3, uint64_t a4, void *a5, void **a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v27 = *a6;
    v9 = v8;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = v8[4];
    v16 = i[4];
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      result = std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](a6, v8 + 4);
      v17 = *a2;
      v18 = *(*a2 + 8);
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
          v19 = v17[2];
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v27 = *a6;
  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      result = std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](&v30, v8 + 4);
      v28 = v8[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v8[2];
          v20 = *v29 == v8;
          v8 = v29;
        }

        while (!v20);
      }

      v8 = v29;
    }

    while (v29 != v9);
    v27 = v30;
  }

LABEL_39:
  *v7 = v9;
  *(v7 + 1) = v27;
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v7 = 22;
LABEL_5:
    std::string::__grow_by_and_replace(this, v7, __n - v7, size, 0, size, __n, __s);
    return this;
  }

  v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 < __n)
  {
    size = this->__r_.__value_.__l.__size_;
    goto LABEL_5;
  }

  v9 = this->__r_.__value_.__r.__words[0];
  memmove(this->__r_.__value_.__l.__data_, __s, __n);
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  *(v9 + __n) = 0;
  return this;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0>,BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE8F20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0>,BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, std::string::size_type a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v7 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v10, *(a1 + 16));
  health::DataStoreInspector::_errorHandler(v7, 0, v5, v6, a4, v10);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v10);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_228C6C500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0>,BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_228C6C6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void health::FormatString<health::DataStore::ObjectIdentifier &>(std::string *a1, std::string *a2, void *a3)
{
  v3 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &>(a2, a1, 0, &v3);
}

void sub_228C6C704(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatString<long long &>(std::string *a1, void *a2)
{
  v2 = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<long long &>("\nTotal # of samples = {0}", a1, 0, &v2);
}

void sub_228C6C76C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE8FB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v5[16], 0, 32);
  memset(&v5[56], 0, 32);
  v6 = a2;
  result = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(v5, *(a1 + 8));
  if (result)
  {
    v4 = *(*(a1 + 16) + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v4 + 48))(v4, v5);
    **(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9030;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::operator()(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v20 = v6;
  if (v6 < 1)
  {
    v7 = **(a1 + 16);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 1;
    }

    if (v8)
    {
      health::FormatString<health::DataStore::ObjectIdentifier &>(&v23, "HFD sample history root [ID: {0}] reports an empty sample count.", *(a1 + 24));
      v14 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v24, *(a1 + 40));
      health::DataStoreInspector::_errorHandler(v14, 2, v4, v5, &v23, v24);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v24);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v13 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_23;
    }
  }

  else
  {
    *(*(a1 + 8) + 40) = health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::firstSampleKey(a2);
    *(*(a1 + 8) + 48) = health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::lastSampleKey(a2);
    v7 = **(a1 + 16);
  }

  if (v7 == 2)
  {
    if (**(a1 + 48) != 1)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(v24, "object_id \t sample_number \t timestamp \t data");
    v12 = *(v11 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12, v24);
  }

  else
  {
    if (v7)
    {
      goto LABEL_24;
    }

    _HDSampleHistoryDescriptionForObjectType(**(a1 + 24), v24);
    health::timestampToDate(*(*(a1 + 8) + 40), &v23);
    health::timestampToDate(*(*(a1 + 8) + 48), v21);
    v9 = *(a1 + 40);
    health::FormatString<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(&__p, v24, *(a1 + 24), &v20, &v23, v21);
    v10 = *(v9 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if ((v25 & 0x80000000) == 0)
  {
LABEL_24:
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    operator new();
  }

  v13 = v24[0];
LABEL_23:
  operator delete(v13);
  goto LABEL_24;
}

void sub_228C6CD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a31);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::firstSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_6;
  }

  v1 = *(a1[11] + 24);
  v2 = a1[2];
  v3 = a1[3];
  memset(v6, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v2, v3, v6);
  if (!WORD4(v6[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_6:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  return *v6;
}

double health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::lastSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_11;
  }

  v1 = *(a1[11] + 24);
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = v1;
  v2 = a1[3];
  v9[0] = a1[2];
  v9[1] = v2;
  v10 = v11;
  memset(__dst, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v9[0], v2, __dst);
  v3 = __dst[204];
  if (!__dst[204])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
    goto LABEL_11;
  }

  if ((__dst[205] & 1) == 0)
  {
    v5 = 0;
    while (__dst[204])
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(v9, v5, __dst, (__dst[204] - 1), __src);
      memcpy(__dst, __src, 0x19BuLL);
      ++v5;
      if (LOBYTE(__dst[205]) == 1)
      {
        v3 = __dst[204];
        v4 = v10;
        goto LABEL_9;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_11:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  v4 = v11;
LABEL_9:
  v6 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](__dst, v3 - 1);
  bzero(__src, 0x332uLL);
  v14 = 0u;
  v15 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v4[2], *(v6 + 8), *(v6 + 16), __src);
  return *health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__src, v13 - 1);
}

void health::FormatString<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[0] = a6;
  v6[1] = a5;
  v6[2] = a4;
  v6[3] = a3;
  v6[4] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>("'{0}' [ID: {1} | Count: {2} | {3} to {4}]\n", a1, 0, v6);
}

void sub_228C6D174(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 48))
  {
    v2 = *(*(result + 88) + 24);
    v6[0] = 0;
    v6[1] = 0;
    v6[2] = v2;
    v4 = *(result + 16);
    v5 = v6;
    std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::__value_func[abi:ne200100](v7, a2);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(&v4, v7, 0);
    result = std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::~__value_func[abi:ne200100](v7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228C6D228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>::formatOptionsAtIndex<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v26);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_78;
  }

  health::FormatOptions::FormatOptions(v30, &v34);
  v13 = v34;
  if (v31 <= 1)
  {
    if (v31)
    {
      if (v31 != 1)
      {
        goto LABEL_79;
      }

      health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 24), v30);
      v17 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v17 = v36;
      }

      v18 = v33;
      if (v33 <= v17)
      {
        v18 = v17;
      }

      if (v32)
      {
        v17 = v18;
      }

      health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v17 + a3 + v9, a4);
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
      health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 32), v30);
      v23 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v23 = v36;
      }

      v24 = v33;
      if (v33 <= v23)
      {
        v24 = v23;
      }

      if (v32)
      {
        v23 = v24;
      }

      health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v23 + a3 + v9, a4);
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
    switch(v31)
    {
      case 2:
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), v30);
        v19 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v19 = v36;
        }

        v20 = v33;
        if (v33 <= v19)
        {
          v20 = v19;
        }

        if (v32)
        {
          v19 = v20;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v19 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 3:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 8), v30);
        v21 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v21 = v36;
        }

        v22 = v33;
        if (v33 <= v21)
        {
          v22 = v21;
        }

        if (v32)
        {
          v21 = v22;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v21 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 4:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *a4, v30);
        v14 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v14 = v36;
        }

        v15 = v33;
        if (v33 <= v14)
        {
          v15 = v14;
        }

        if (v32)
        {
          v14 = v15;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      default:
LABEL_79:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_78:
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v30, &v16[a3 + v9], &__p);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>::formatOptionsAtIndex<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_3;
    }
  }

  else if (a1 <= 1)
  {
LABEL_3:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    goto LABEL_10;
  }

  v3 = __cxa_allocate_exception(0x10uLL);
  exception = v3;
  if (a1 == 4)
  {
    std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
  }

LABEL_10:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(uint64_t a1, void *a2, uint64_t a3)
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
  health::operator<<(&v13, a2);
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

void sub_228C6DAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t health::TypeFormatter<std::string &,void>::TypeFormatter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v6 = v16;
  if (*(a3 + 16) == 1)
  {
    *(&v18[1] + *(v16 - 24)) = *(a3 + 24);
  }

  if (*(a3 + 32) == 1)
  {
    *(v18 + *(v6 - 24)) = *(a3 + 40);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v11, v12);
  std::ostringstream::str[abi:ne200100](&v16, &v14);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v20);
  return a1;
}

void sub_228C6DD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  memset(v8, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 16), *a1, *(a1 + 8), v8);
  return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(a1, 0, v8, a2, a3);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 408))
  {
    v7 = result;
    if (a5)
    {
      v8 = *(a3 + 408) - 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(a3 + 410) == 1)
    {
      v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v8);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v7 + 16);
      bzero(v14, 0x332uLL);
      *&v14[824] = 0u;
      v15 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v12 + 16), v10, v11, v14);
      v16 = a4;
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(int,health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17> const&,health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(v7, v14, &v16, a5);
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(result, a2, a3, v8, v14);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(v7, (a2 + 1), v14, a4, a5);
    }
  }

  return result;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(int,health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17> const&,health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v43 = result;
  if (a4 == 1)
  {
    if (*(a2 + 816))
    {
      v14 = *(a2 + 816) - 1;
      v15 = 1;
      v16 = 0.0;
      while (1)
      {
        v17 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v14);
        v18 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v14);
        if (v15 >= 2)
        {
          v19.n128_u64[0] = *v17;
          if (*v17 >= v16)
          {
            v20 = *MEMORY[0x277CCC2A0];
            std::string::basic_string[abi:ne200100]<0>(v55, "key < lastKey");
            std::string::basic_string[abi:ne200100]<0>(v54, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v53, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &__p);
            health::_HDAssertImplementation<health::btree_access_error>(v20, v55, v54, v53, 412, &__p);
          }
        }

        v21 = *(*a3 + 24);
        if (!v21)
        {
          break;
        }

        v16 = *v17;
        result = (*(*v21 + 48))(v21, v17, v18 + 8, v19);
        if ((result & 1) == 0)
        {
          return result;
        }

        ++v15;
        if (--v14 == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_48:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v16 = 0.0;
LABEL_35:
    v32 = *(a2 + 824);
    v33 = MEMORY[0x277CCC2A0];
    v34 = *(a2 + 832);
    while (1)
    {
      v35 = *(v43 + 16);
      if (v32 == *v35 && v34 == *(v35 + 8))
      {
        break;
      }

      bzero(v64, 0x332uLL);
      v66 = 0u;
      v67 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v35 + 16), v32, v34, v64);
      if (!v65)
      {
        v36 = *v33;
        std::string::basic_string[abi:ne200100]<0>(v51, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v50, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v49, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v48);
        health::_HDAssertImplementation<health::btree_access_error>(v36, v51, v50, v49, 422, &v48);
      }

      v37 = v65 - 1;
      do
      {
        v38 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, v37);
        v39 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, v37);
        if (*v38 >= v16)
        {
          v41 = *v33;
          std::string::basic_string[abi:ne200100]<0>(v47, "key < lastKey");
          std::string::basic_string[abi:ne200100]<0>(v46, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v44);
          health::_HDAssertImplementation<health::btree_access_error>(v41, v47, v46, v45, 427, &v44);
        }

        v42 = *(*a3 + 24);
        if (!v42)
        {
          goto LABEL_48;
        }

        v16 = *v38;
        v40.n128_f64[0] = *v38;
        result = (*(*v42 + 48))(v42, v38, v39 + 8, v40);
        if ((result & 1) == 0)
        {
          return result;
        }

        --v37;
      }

      while (v37 != -1);
      v34 = *(&v66 + 1);
      v32 = v66;
    }
  }

  else if (!a4)
  {
    v6 = MEMORY[0x277CCC2A0];
    if (*(a2 + 816))
    {
      v7 = 0;
      v8 = 0.0;
      while (1)
      {
        v9 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v7);
        v10 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v7);
        if (v7)
        {
          v11.n128_u64[0] = *v9;
          if (*v9 <= v8)
          {
            v12 = *v6;
            std::string::basic_string[abi:ne200100]<0>(v71, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v70, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v69, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v68);
            health::_HDAssertImplementation<health::btree_access_error>(v12, v71, v70, v69, 382, &v68);
          }
        }

        v13 = *(*a3 + 24);
        if (!v13)
        {
          goto LABEL_48;
        }

        v8 = *v9;
        result = (*(*v13 + 48))(v13, v9, v10 + 8, v11);
        if ((result & 1) == 0)
        {
          return result;
        }

        if (++v7 >= *(a2 + 816))
        {
          goto LABEL_22;
        }
      }
    }

    v8 = 0.0;
LABEL_22:
    v22 = *(a2 + 840);
    v23 = *(a2 + 848);
    while (1)
    {
      v24 = *(v43 + 16);
      if (v22 == *v24 && v23 == *(v24 + 8))
      {
        break;
      }

      bzero(v64, 0x332uLL);
      v66 = 0u;
      v67 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v24 + 16), v22, v23, v64);
      if (!v65)
      {
        v25 = *v6;
        std::string::basic_string[abi:ne200100]<0>(v63, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v62, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v60);
        health::_HDAssertImplementation<health::btree_access_error>(v25, v63, v62, v61, 392, &v60);
      }

      for (i = 0; i < v65; ++i)
      {
        v27 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, i);
        v28 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, i);
        if (*v27 <= v8)
        {
          v30 = *v6;
          std::string::basic_string[abi:ne200100]<0>(v59, "key > lastKey");
          std::string::basic_string[abi:ne200100]<0>(v58, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v57, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v56);
          health::_HDAssertImplementation<health::btree_access_error>(v30, v59, v58, v57, 396, &v56);
        }

        v31 = *(*a3 + 24);
        if (!v31)
        {
          goto LABEL_48;
        }

        v8 = *v27;
        v29.n128_f64[0] = *v27;
        result = (*(*v31 + 48))(v31, v27, v28 + 8, v29);
        if ((result & 1) == 0)
        {
          return result;
        }
      }

      v23 = *(&v67 + 1);
      v22 = v67;
    }
  }

  return result;
}

void sub_228C6E708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

__n128 _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV1EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK21_HDRawLocationDatumV1EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE90B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV1EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK21_HDRawLocationDatumV1EEclESX_S10_(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v3;
  v13 = *(a3 + 32);
  v4 = *a2;
  v5 = *(a1 + 8);
  ++*v5;
  v6 = **(a1 + 16);
  if (v6 == 2)
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    health::doubleToString(9, v4, v14);
    v17 = v12;
    v18 = v14;
    v19 = v5;
    v20 = v10;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>("{0} \t Sample #{1} \t {2} \t {3}", &__p, 0, &v17);
    v8 = *(v9 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    if (v6)
    {
      return 1;
    }

    v7 = *(a1 + 24);
    health::timestampToDate(v4, v14);
    v17 = v12;
    v18 = v14;
    v19 = v5;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV1 &>("Sample #{0} | Timestamp: {1} | Data: {2}", &__p, 0, &v17);
    v8 = *(v7 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  (*(*v8 + 48))(v8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return 1;
}

void sub_228C6EC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV1EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK21_HDRawLocationDatumV1EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV1EENS0_15DataSeriesEntryENS_9DataStore16ObjectIdentifierENSt3__18functionIFvRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEENS0_12OutputFormatEbENKUlRKNS4_13SampleHistoryIS2_EEE_clESM_EUlRKT_T0_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV1 &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,long long &,std::string,_HDRawLocationDatumV1 &>::formatOptionsAtIndex<long long &,std::string,_HDRawLocationDatumV1 &>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_58;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        health::FormatString<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(&__p, *a4, *a4 + 8, *a4 + 16, *a4 + 20, *a4 + 24, *a4 + 28, *a4 + 32);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= size)
        {
          v15 = size;
        }

        if (v29)
        {
          size = v15;
        }

        health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV1 &>(v13, a2, size + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_46;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_58:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = *(a4 + 8);
    __p.__r_.__value_.__r.__words[0] = v17;
    v36 = v31;
    v35 = v30;
    v34 = v29;
    *&__p.__r_.__value_.__r.__words[1] = v28;
    v18 = *(v17 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = *(v17 + 8);
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

    health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV1 &>(v32, a2, v18 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v28, &v20[a3 + v9], &__p);
  }

  else
  {
    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v28);
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__l.__size_;
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

    health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV1 &>(v13, a2, v21 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_46:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, &v16[a3 + v9], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long &,std::string,_HDRawLocationDatumV1 &>::formatOptionsAtIndex<long long &,std::string,_HDRawLocationDatumV1 &>(uint64_t a1)
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

void health::FormatString<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[0] = a8;
  v8[1] = a7;
  v8[2] = a6;
  v8[3] = a5;
  v8[4] = a4;
  v8[5] = a3;
  v8[6] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&>("(Lat: {0}, Lon: {1}, Alt: {2}, Speed: {3}, Course: {4}, HAcc: {5}, VAcc: {6})", a1, 0, v8);
}

void sub_228C6F1B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,double const&,double const&,float const&,float const&,float const&,float const&,float const&>::formatOptionsAtIndex<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(v26);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::FormatOptions::FormatOptions(v30, &v34);
  v13 = v34;
  if (v31 <= 2)
  {
    if (v31)
    {
      if (v31 != 1)
      {
        if (v31 != 2)
        {
          goto LABEL_89;
        }

        health::TypeFormatter<float const&,void>::TypeFormatter(&__p, *(a4 + 32), v30);
        v14 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v14 = v36;
        }

        v16 = v33;
        if (v33 <= v14)
        {
          v16 = v14;
        }

        if (v32)
        {
          v14 = v16;
        }

        goto LABEL_73;
      }

      health::TypeFormatter<double const&,void>::TypeFormatter(&__p, *(a4 + 40), v30);
      v18 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v18 = v36;
      }

      v19 = v33;
      if (v33 <= v18)
      {
        v19 = v18;
      }

      if (v32)
      {
        v18 = v19;
      }
    }

    else
    {
      health::TypeFormatter<double const&,void>::TypeFormatter(&__p, *(a4 + 48), v30);
      v18 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v18 = v36;
      }

      v20 = v33;
      if (v33 <= v18)
      {
        v20 = v18;
      }

      if (v32)
      {
        v18 = v20;
      }
    }

    v21 = a3 + v9;
    health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(v13, a2, v18 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = a2->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    if (v31 <= 4)
    {
      if (v31 == 3)
      {
        health::TypeFormatter<float const&,void>::TypeFormatter(&__p, *(a4 + 24), v30);
        v14 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v14 = v36;
        }

        v23 = v33;
        if (v33 <= v14)
        {
          v23 = v14;
        }

        if (v32)
        {
          v14 = v23;
        }
      }

      else
      {
        health::TypeFormatter<float const&,void>::TypeFormatter(&__p, *(a4 + 16), v30);
        v14 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v14 = v36;
        }

        v15 = v33;
        if (v33 <= v14)
        {
          v15 = v14;
        }

        if (v32)
        {
          v14 = v15;
        }
      }

      goto LABEL_73;
    }

    if (v31 != 5)
    {
      if (v31 == 6)
      {
        health::TypeFormatter<float const&,void>::TypeFormatter(&__p, *a4, v30);
        v14 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v14 = v36;
        }

        v17 = v33;
        if (v33 <= v14)
        {
          v17 = v14;
        }

        if (v32)
        {
          v14 = v17;
        }

        goto LABEL_73;
      }

LABEL_89:
      health::FormatterParameters<7ul>::formatParameterAtIndex<health::FormatterParameters<0ul,double const&,double const&,float const&,float const&,float const&,float const&,float const&>>();
    }

    health::TypeFormatter<float const&,void>::TypeFormatter(&__p, *(a4 + 8), v30);
    v14 = v37;
    if ((v37 & 0x80u) != 0)
    {
      v14 = v36;
    }

    v24 = v33;
    if (v33 <= v14)
    {
      v24 = v14;
    }

    if (v32)
    {
      v14 = v24;
    }

LABEL_73:
    v21 = a3 + v9;
    health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(v13, a2, v14 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = a2->__r_.__value_.__r.__words[0];
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v30, &v22[v21], &__p);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void sub_228C6F6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatterParameters<0ul,double const&,double const&,float const&,float const&,float const&,float const&,float const&>::formatOptionsAtIndex<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
      goto LABEL_3;
    }
  }

  else if (a1 <= 2)
  {
LABEL_3:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    goto LABEL_13;
  }

  v3 = __cxa_allocate_exception(0x10uLL);
  exception = v3;
  if (a1 == 6)
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

void health::FormatterParameters<7ul>::formatParameterAtIndex<health::FormatterParameters<0ul,double const&,double const&,float const&,float const&,float const&,float const&,float const&>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::TypeFormatter<float const&,void>::TypeFormatter(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = v14;
  if (*(a3 + 16) == 1)
  {
    *(&v16[1] + *(v14 - 24)) = *(a3 + 24);
  }

  if (*(a3 + 32) == 1)
  {
    *(v16 + *(v6 - 24)) = *(a3 + 40);
  }

  v7 = (&v14 + *(v6 - 24));
  v8 = *(a3 + 52);
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v9 = std::locale::use_facet(&v12, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v12);
  }

  v7[1].__fmtflags_ = v8;
  v10 = *a2;
  std::ostream::operator<<();
  std::ostringstream::str[abi:ne200100](&v14, &v12);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v18);
  return a1;
}

void sub_228C6FB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t health::TypeFormatter<double const&,void>::TypeFormatter(uint64_t a1, double *a2, uint64_t a3)
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
  MEMORY[0x22AAC8380](&v13, *a2);
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

void sub_228C6FDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>(v26);
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
    if (*(&v30 + 1) != 2)
    {
      if (*(&v30 + 1) != 3)
      {
        goto LABEL_71;
      }

      health::FormatString<double const&,double const&,float const&,float const&,float const&,float const&,float const&>(&__p, *a4, *a4 + 8, *a4 + 16, *a4 + 20, *a4 + 24, *a4 + 28, *a4 + 32);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v18 = *(&v31 + 1);
      if (*(&v31 + 1) <= size)
      {
        v18 = size;
      }

      if (v31)
      {
        size = v18;
      }

      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>(v13, a2, size + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_47;
    }

    v21 = *(a4 + 8);
    __p.__r_.__value_.__r.__words[0] = v21;
    v38 = v33;
    v37 = v32;
    v36 = v31;
    *&__p.__r_.__value_.__r.__words[1] = v30;
    v22 = *(v21 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = *(v21 + 8);
    }

    v23 = *(&v31 + 1);
    if (*(&v31 + 1) <= v22)
    {
      v23 = v22;
    }

    if (v31)
    {
      v22 = v23;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>(v34, a2, v22 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v30, &v24[a3 + v9], &__p);
    if (v9)
    {
LABEL_50:
      health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
    }
  }

  else
  {
    if (*(&v30 + 1))
    {
      if (*(&v30 + 1) == 1)
      {
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v30);
        v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = __p.__r_.__value_.__l.__size_;
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

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_47;
      }

LABEL_71:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_70:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 24), &v30);
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = *(&v31 + 1);
    if (*(&v31 + 1) <= v19)
    {
      v20 = v19;
    }

    if (v31)
    {
      v19 = v20;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>(v13, a2, v19 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_47:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v30, &v16[a3 + v9], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      goto LABEL_50;
    }
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV1 &>(uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void health::FormatImplementation<health::DataStore::ObjectIdentifier &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
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
                health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &>(v18);
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
              health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(__p, *a4, v22);
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

              health::FormatImplementation<health::DataStore::ObjectIdentifier &>(v13, a2, v14 + a3 - v9, a4);
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

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &>(uint64_t a1)
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

void health::FormatImplementation<long long &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
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
                health::FormatterParameters<0ul,long long &>::formatOptionsAtIndex<long long &>(v18);
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
              health::TypeFormatter<long long &,void>::TypeFormatter(__p, *a4, v22);
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

              health::FormatImplementation<long long &>(v13, a2, v14 + a3 - v9, a4);
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

void health::FormatterParameters<0ul,long long &>::formatOptionsAtIndex<long long &>(uint64_t a1)
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

void health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV2>()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_228C70C48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v5[16], 0, 32);
  memset(&v5[56], 0, 32);
  v6 = a2;
  result = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(v5, *(a1 + 8));
  if (result)
  {
    v4 = *(*(a1 + 16) + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v4 + 48))(v4, v5);
    **(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE91D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>::operator()(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v20 = v6;
  if (v6 < 1)
  {
    v7 = **(a1 + 16);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 1;
    }

    if (v8)
    {
      health::FormatString<health::DataStore::ObjectIdentifier &>(&v23, "HFD sample history root [ID: {0}] reports an empty sample count.", *(a1 + 24));
      v14 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v24, *(a1 + 40));
      health::DataStoreInspector::_errorHandler(v14, 2, v4, v5, &v23, v24);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v24);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v13 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_23;
    }
  }

  else
  {
    *(*(a1 + 8) + 40) = health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::firstSampleKey(a2);
    *(*(a1 + 8) + 48) = health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::lastSampleKey(a2);
    v7 = **(a1 + 16);
  }

  if (v7 == 2)
  {
    if (**(a1 + 48) != 1)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(v24, "object_id \t sample_number \t timestamp \t data");
    v12 = *(v11 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12, v24);
  }

  else
  {
    if (v7)
    {
      goto LABEL_24;
    }

    _HDSampleHistoryDescriptionForObjectType(**(a1 + 24), v24);
    health::timestampToDate(*(*(a1 + 8) + 40), &v23);
    health::timestampToDate(*(*(a1 + 8) + 48), v21);
    v9 = *(a1 + 40);
    health::FormatString<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(&__p, v24, *(a1 + 24), &v20, &v23, v21);
    v10 = *(v9 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if ((v25 & 0x80000000) == 0)
  {
LABEL_24:
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    operator new();
  }

  v13 = v24[0];
LABEL_23:
  operator delete(v13);
  goto LABEL_24;
}

void sub_228C711EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a31);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::firstSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_6;
  }

  v1 = *(a1[11] + 24);
  v2 = a1[2];
  v3 = a1[3];
  memset(v6, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v2, v3, v6);
  if (!WORD4(v6[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_6:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  return *v6;
}

double health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::lastSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_11;
  }

  v1 = *(a1[11] + 24);
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = v1;
  v2 = a1[3];
  v9[0] = a1[2];
  v9[1] = v2;
  v10 = v11;
  memset(__dst, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v9[0], v2, __dst);
  v3 = WORD4(__dst[25]);
  if (!WORD4(__dst[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
    goto LABEL_11;
  }

  if ((BYTE10(__dst[25]) & 1) == 0)
  {
    v5 = 0;
    while (WORD4(__dst[25]))
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(v9, v5, __dst, (WORD4(__dst[25]) - 1), __src);
      memcpy(__dst, __src, 0x19BuLL);
      ++v5;
      if (BYTE10(__dst[25]) == 1)
      {
        v3 = WORD4(__dst[25]);
        v4 = v10;
        goto LABEL_9;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_11:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  v4 = v11;
LABEL_9:
  v6 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](__dst, v3 - 1);
  bzero(__src, 0x3BAuLL);
  v14 = 0u;
  v15 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(v4[2], *(v6 + 8), *(v6 + 16), __src);
  return *health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__src, v13 - 1);
}

uint64_t health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 48))
  {
    v2 = *(*(result + 88) + 24);
    v6[0] = 0;
    v6[1] = 0;
    v6[2] = v2;
    v4 = *(result + 16);
    v5 = v6;
    std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>::__value_func[abi:ne200100](v7, a2);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(&v4, v7, 0);
    result = std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>::~__value_func[abi:ne200100](v7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228C716B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 56 * a2;
}

{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 50, &__p);
  }

  return a1 + 56 * a2;
}

void sub_228C717BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 935;
  health::RawBuffer::RawBuffer(v11, v12, 935);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v11);
  v8 = v12;
  if (v14 > 0x3FF)
  {
    v8 = v13;
  }

  v11[0] = v8;
  v11[1] = v8;
  v11[2] = 935;
  health::DeserializeValues<health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(v11, a4, (a4 + 952), (a4 + 960), (a4 + 976));
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228C71918(_Unwind_Exception *a1)
{
  v2 = STACK[0x418];
  STACK[0x418] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void sub_228C71A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t health::DeserializeValues<health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(uint64_t a1, uint64_t a2, _WORD *a3, void *a4, void *a5)
{
  for (i = 0; i != 17; ++i)
  {
    v11 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, i);
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v13);
    *v11 = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v13);
    *(v11 + 8) = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v13);
    *(v11 + 16) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 24) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 28) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 32) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 36) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 40) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 44) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 48) = v13;
    health::DeserializationBuffer::extractRaw<unsigned char>(a1, (v11 + 52));
  }

  LOWORD(v13) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(a1, &v13);
  *a3 = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  *a4 = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  a4[1] = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  *a5 = v13;
  v13 = 0;
  result = health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  a5[1] = v13;
  return result;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  memset(v8, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 16), *a1, *(a1 + 8), v8);
  return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(a1, 0, v8, a2, a3);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 408))
  {
    v7 = result;
    if (a5)
    {
      v8 = *(a3 + 408) - 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(a3 + 410) == 1)
    {
      v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v8);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v7 + 16);
      bzero(v14, 0x3BAuLL);
      v16 = 0u;
      v15 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v12 + 16), v10, v11, v14);
      v17 = a4;
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(int,health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17> const&,health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(v7, v14, &v17, a5);
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(result, a2, a3, v8, v14);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(v7, (a2 + 1), v14, a4, a5);
    }
  }

  return result;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(int,health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17> const&,health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v43 = result;
  if (a4 == 1)
  {
    if (*(a2 + 952))
    {
      v14 = *(a2 + 952) - 1;
      v15 = 1;
      v16 = 0.0;
      while (1)
      {
        v17 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v14);
        v18 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v14);
        if (v15 >= 2)
        {
          v19.n128_u64[0] = *v17;
          if (*v17 >= v16)
          {
            v20 = *MEMORY[0x277CCC2A0];
            std::string::basic_string[abi:ne200100]<0>(v55, "key < lastKey");
            std::string::basic_string[abi:ne200100]<0>(v54, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v53, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &__p);
            health::_HDAssertImplementation<health::btree_access_error>(v20, v55, v54, v53, 412, &__p);
          }
        }

        v21 = *(*a3 + 24);
        if (!v21)
        {
          break;
        }

        v16 = *v17;
        result = (*(*v21 + 48))(v21, v17, v18 + 8, v19);
        if ((result & 1) == 0)
        {
          return result;
        }

        ++v15;
        if (--v14 == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_48:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v16 = 0.0;
LABEL_35:
    v32 = *(a2 + 960);
    v33 = MEMORY[0x277CCC2A0];
    v34 = *(a2 + 968);
    while (1)
    {
      v35 = *(v43 + 16);
      if (v32 == *v35 && v34 == *(v35 + 8))
      {
        break;
      }

      bzero(v64, 0x3BAuLL);
      v66 = 0u;
      v67 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v35 + 16), v32, v34, v64);
      if (!v65)
      {
        v36 = *v33;
        std::string::basic_string[abi:ne200100]<0>(v51, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v50, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v49, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v48);
        health::_HDAssertImplementation<health::btree_access_error>(v36, v51, v50, v49, 422, &v48);
      }

      v37 = v65 - 1;
      do
      {
        v38 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, v37);
        v39 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, v37);
        if (*v38 >= v16)
        {
          v41 = *v33;
          std::string::basic_string[abi:ne200100]<0>(v47, "key < lastKey");
          std::string::basic_string[abi:ne200100]<0>(v46, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v44);
          health::_HDAssertImplementation<health::btree_access_error>(v41, v47, v46, v45, 427, &v44);
        }

        v42 = *(*a3 + 24);
        if (!v42)
        {
          goto LABEL_48;
        }

        v16 = *v38;
        v40.n128_f64[0] = *v38;
        result = (*(*v42 + 48))(v42, v38, v39 + 8, v40);
        if ((result & 1) == 0)
        {
          return result;
        }

        --v37;
      }

      while (v37 != -1);
      v34 = *(&v66 + 1);
      v32 = v66;
    }
  }

  else if (!a4)
  {
    v6 = MEMORY[0x277CCC2A0];
    if (*(a2 + 952))
    {
      v7 = 0;
      v8 = 0.0;
      while (1)
      {
        v9 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v7);
        v10 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v7);
        if (v7)
        {
          v11.n128_u64[0] = *v9;
          if (*v9 <= v8)
          {
            v12 = *v6;
            std::string::basic_string[abi:ne200100]<0>(v71, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v70, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v69, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v68);
            health::_HDAssertImplementation<health::btree_access_error>(v12, v71, v70, v69, 382, &v68);
          }
        }

        v13 = *(*a3 + 24);
        if (!v13)
        {
          goto LABEL_48;
        }

        v8 = *v9;
        result = (*(*v13 + 48))(v13, v9, v10 + 8, v11);
        if ((result & 1) == 0)
        {
          return result;
        }

        if (++v7 >= *(a2 + 952))
        {
          goto LABEL_22;
        }
      }
    }

    v8 = 0.0;
LABEL_22:
    v22 = *(a2 + 976);
    v23 = *(a2 + 984);
    while (1)
    {
      v24 = *(v43 + 16);
      if (v22 == *v24 && v23 == *(v24 + 8))
      {
        break;
      }

      bzero(v64, 0x3BAuLL);
      v66 = 0u;
      v67 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v24 + 16), v22, v23, v64);
      if (!v65)
      {
        v25 = *v6;
        std::string::basic_string[abi:ne200100]<0>(v63, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v62, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v60);
        health::_HDAssertImplementation<health::btree_access_error>(v25, v63, v62, v61, 392, &v60);
      }

      for (i = 0; i < v65; ++i)
      {
        v27 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, i);
        v28 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v64, i);
        if (*v27 <= v8)
        {
          v30 = *v6;
          std::string::basic_string[abi:ne200100]<0>(v59, "key > lastKey");
          std::string::basic_string[abi:ne200100]<0>(v58, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v57, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v56);
          health::_HDAssertImplementation<health::btree_access_error>(v30, v59, v58, v57, 396, &v56);
        }

        v31 = *(*a3 + 24);
        if (!v31)
        {
          goto LABEL_48;
        }

        v8 = *v27;
        v29.n128_f64[0] = *v27;
        result = (*(*v31 + 48))(v31, v27, v28 + 8, v29);
        if ((result & 1) == 0)
        {
          return result;
        }
      }

      v23 = *(&v67 + 1);
      v22 = v67;
    }
  }

  return result;
}

void sub_228C725A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

__n128 _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV2EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK21_HDRawLocationDatumV2EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9250;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV2EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK21_HDRawLocationDatumV2EEclESX_S10_(uint64_t a1, double *a2, _OWORD *a3)
{
  v3 = a3[1];
  v12[0] = *a3;
  v12[1] = v3;
  v12[2] = a3[2];
  v4 = *a2;
  v5 = *(a1 + 8);
  ++*v5;
  v6 = **(a1 + 16);
  if (v6 == 2)
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    health::doubleToString(9, v4, v13);
    v16 = v12;
    v17 = v13;
    v18 = v5;
    v19 = v10;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>("{0} \t Sample #{1} \t {2} \t {3}", &__p, 0, &v16);
    v8 = *(v9 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    if (v6)
    {
      return 1;
    }

    v7 = *(a1 + 24);
    health::timestampToDate(v4, v13);
    v16 = v12;
    v17 = v13;
    v18 = v5;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV2 &>("Sample #{0} | Timestamp: {1} | Data: {2}", &__p, 0, &v16);
    v8 = *(v7 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  (*(*v8 + 48))(v8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return 1;
}

void sub_228C72A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV2EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK21_HDRawLocationDatumV2EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN6health18DataStoreInspector23_enumerateSampleHistoryI25LocationHistoryBehaviorV2EENS0_15DataSeriesEntryENS_9DataStore16ObjectIdentifierENSt3__18functionIFvRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEENS0_12OutputFormatEbENKUlRKNS4_13SampleHistoryIS2_EEE_clESM_EUlRKT_T0_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV2 &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,long long &,std::string,_HDRawLocationDatumV2 &>::formatOptionsAtIndex<long long &,std::string,_HDRawLocationDatumV2 &>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_58;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        health::FormatString<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(&__p, *a4, *a4 + 8, *a4 + 16, *a4 + 20, *a4 + 24, *a4 + 28, *a4 + 32, *a4 + 36, *a4 + 40, *a4 + 44);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= size)
        {
          v15 = size;
        }

        if (v29)
        {
          size = v15;
        }

        health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV2 &>(v13, a2, size + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_46;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_58:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = *(a4 + 8);
    __p.__r_.__value_.__r.__words[0] = v17;
    v36 = v31;
    v35 = v30;
    v34 = v29;
    *&__p.__r_.__value_.__r.__words[1] = v28;
    v18 = *(v17 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = *(v17 + 8);
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

    health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV2 &>(v32, a2, v18 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v28, &v20[a3 + v9], &__p);
  }

  else
  {
    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v28);
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__l.__size_;
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

    health::FormatImplementation<long long &,std::string,_HDRawLocationDatumV2 &>(v13, a2, v21 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_46:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, &v16[a3 + v9], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long &,std::string,_HDRawLocationDatumV2 &>::formatOptionsAtIndex<long long &,std::string,_HDRawLocationDatumV2 &>(uint64_t a1)
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

void health::FormatString<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[0] = a11;
  v11[1] = a10;
  v11[2] = a9;
  v11[3] = a8;
  v11[4] = a7;
  v11[5] = a6;
  v11[6] = a5;
  v11[7] = a4;
  v11[8] = a3;
  v11[9] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>("(Lat: {0}, Lon: {1}, Alt: {2}, Speed: {3}, Course: {4}, HAcc: {5}, VAcc: {6}, SAcc: {7}, CAcc:{8}, Signal: {9})", a1, 0, v11);
}

void sub_228C73068(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v61 = a1;
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
    v61 = &v11->__r_.__value_.__s.__data_[1];
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
    v61 = &v11->__r_.__value_.__s.__data_[2];
    v49 = v11->__r_.__value_.__s.__data_[2];
    if ((v49 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v50 = 0;
      v51 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v61 = v51;
        v50 = (v49 & 0xF) + 10 * v50;
        v52 = *v51++;
        LOBYTE(v49) = v52;
      }

      while ((v52 - 58) >= 0xFFFFFFF6);
      v61 = v51;
      if (*(v51 - 1) == 125)
      {
        health::FormatterParameters<0ul,double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>::formatOptionsAtIndex<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(v50);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_165;
  }

  health::FormatOptions::FormatOptions(&v54, &v61);
  v13 = v61;
  if (v55 <= 4)
  {
    if (v55 > 1)
    {
      if (v55 == 2)
      {
        health::TypeFormatter<float const&,void>::TypeFormatter(&v66, *(a4 + 56), &v54);
        locale_high = HIBYTE(v68[0].__locale_);
        if (SHIBYTE(v68[0].__locale_) < 0)
        {
          locale_high = v67;
        }

        v39 = v57;
        if (v57 <= locale_high)
        {
          v39 = locale_high;
        }

        if (v56)
        {
          locale_high = v39;
        }
      }

      else if (v55 == 3)
      {
        health::TypeFormatter<float const&,void>::TypeFormatter(&v66, *(a4 + 48), &v54);
        locale_high = HIBYTE(v68[0].__locale_);
        if (SHIBYTE(v68[0].__locale_) < 0)
        {
          locale_high = v67;
        }

        v37 = v57;
        if (v57 <= locale_high)
        {
          v37 = locale_high;
        }

        if (v56)
        {
          locale_high = v37;
        }
      }

      else
      {
        health::TypeFormatter<float const&,void>::TypeFormatter(&v66, *(a4 + 40), &v54);
        locale_high = HIBYTE(v68[0].__locale_);
        if (SHIBYTE(v68[0].__locale_) < 0)
        {
          locale_high = v67;
        }

        v15 = v57;
        if (v57 <= locale_high)
        {
          v15 = locale_high;
        }

        if (v56)
        {
          locale_high = v15;
        }
      }

      goto LABEL_119;
    }

    if (v55)
    {
      if (v55 == 1)
      {
        health::TypeFormatter<double const&,void>::TypeFormatter(&v66, *(a4 + 64), &v54);
        v30 = HIBYTE(v68[0].__locale_);
        if (SHIBYTE(v68[0].__locale_) < 0)
        {
          v30 = v67;
        }

        v31 = v57;
        if (v57 <= v30)
        {
          v31 = v30;
        }

        if (v56)
        {
          v30 = v31;
        }

        goto LABEL_82;
      }

LABEL_166:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_165:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<double const&,void>::TypeFormatter(&v66, *(a4 + 72), &v54);
    v30 = HIBYTE(v68[0].__locale_);
    if (SHIBYTE(v68[0].__locale_) < 0)
    {
      v30 = v67;
    }

    v33 = v57;
    if (v57 <= v30)
    {
      v33 = v30;
    }

    if (v56)
    {
      v30 = v33;
    }

LABEL_82:
    v34 = a3 + v9;
    health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(v13, a2, v30 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_122:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v54, &v35[v34], &v66);
    if (SHIBYTE(v68[0].__locale_) < 0)
    {
      v41 = v66;
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  if (v55 <= 6)
  {
    if (v55 == 5)
    {
      health::TypeFormatter<float const&,void>::TypeFormatter(&v66, *(a4 + 32), &v54);
      locale_high = HIBYTE(v68[0].__locale_);
      if (SHIBYTE(v68[0].__locale_) < 0)
      {
        locale_high = v67;
      }

      v36 = v57;
      if (v57 <= locale_high)
      {
        v36 = locale_high;
      }

      if (v56)
      {
        locale_high = v36;
      }
    }

    else
    {
      health::TypeFormatter<float const&,void>::TypeFormatter(&v66, *(a4 + 24), &v54);
      locale_high = HIBYTE(v68[0].__locale_);
      if (SHIBYTE(v68[0].__locale_) < 0)
      {
        locale_high = v67;
      }

      v32 = v57;
      if (v57 <= locale_high)
      {
        v32 = locale_high;
      }

      if (v56)
      {
        locale_high = v32;
      }
    }

    goto LABEL_119;
  }

  if (v55 == 7)
  {
    health::TypeFormatter<float const&,void>::TypeFormatter(&v66, *(a4 + 16), &v54);
    locale_high = HIBYTE(v68[0].__locale_);
    if (SHIBYTE(v68[0].__locale_) < 0)
    {
      locale_high = v67;
    }

    v40 = v57;
    if (v57 <= locale_high)
    {
      v40 = locale_high;
    }

    if (v56)
    {
      locale_high = v40;
    }

    goto LABEL_119;
  }

  if (v55 == 8)
  {
    health::TypeFormatter<float const&,void>::TypeFormatter(&v66, *(a4 + 8), &v54);
    locale_high = HIBYTE(v68[0].__locale_);
    if (SHIBYTE(v68[0].__locale_) < 0)
    {
      locale_high = v67;
    }

    v38 = v57;
    if (v57 <= locale_high)
    {
      v38 = locale_high;
    }

    if (v56)
    {
      locale_high = v38;
    }

LABEL_119:
    v34 = a3 + v9;
    health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(v13, a2, locale_high + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = a2->__r_.__value_.__r.__words[0];
    }

    goto LABEL_122;
  }

  if (v55 != 9)
  {
    goto LABEL_166;
  }

  v16 = *a4;
  v63 = 0;
  v62 = 0uLL;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v66);
  v17 = v66;
  if (v56 == 1)
  {
    *(&v68[1].__locale_ + *(v66 - 3)) = v57;
  }

  if (v58 == 1)
  {
    *(&v68[0].__locale_ + *(v17 - 3)) = v59;
  }

  v18 = (&v66 + *(v17 - 3));
  v19 = __c;
  if (v18[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v18);
    v20 = std::locale::use_facet(v64, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 32);
    std::locale::~locale(v64);
  }

  v18[1].__fmtflags_ = v19;
  LOBYTE(v64[0].__locale_) = *v16;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v64, 1);
  std::ostringstream::str[abi:ne200100](&v66, v64);
  v62 = *&v64[0].__locale_;
  v63 = v65;
  v66 = *MEMORY[0x277D82828];
  *(&v66 + *(v66 - 3)) = *(MEMORY[0x277D82828] + 24);
  v67 = MEMORY[0x277D82878] + 16;
  if (v69 < 0)
  {
    operator delete(v68[7].__locale_);
  }

  v67 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v68);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v70);
  v21 = SHIBYTE(v63);
  if (v63 >= 0)
  {
    v22 = HIBYTE(v63);
  }

  else
  {
    v22 = *(&v62 + 1);
  }

  v23 = v57;
  if (v57 <= v22)
  {
    v23 = v22;
  }

  if (v56)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  health::FormatImplementation<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(v13, a2, v24 + a3 + v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = a2->__r_.__value_.__r.__words[0];
  }

  v26 = v25 + a3 + v9;
  if (v56 == 1 && (v27 = v57 - v22, v57 > v22))
  {
    if (v54)
    {
      if (v54 != 1)
      {
        if (v54 == 2)
        {
          memset(v26, __c, v57 - v22);
          if (v22)
          {
            if (v21 >= 0)
            {
              v28 = &v62;
            }

            else
            {
              v28 = v62;
            }

            v29 = &v26[v27];
            goto LABEL_133;
          }
        }

        goto LABEL_134;
      }

      if (v27 >= 2)
      {
        if (v27 >> 1 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v27 >> 1;
        }

        memset(v26, __c, v42);
        v26 += v42;
      }

      v43 = v27 - (v27 >> 1);
      if (v22)
      {
        if (v21 >= 0)
        {
          v44 = &v62;
        }

        else
        {
          v44 = v62;
        }

        memmove(v26, v44, v22);
      }

      if (v43 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v43;
      }

      v46 = __c;
      v47 = &v26[v22];
    }

    else
    {
      if (v22)
      {
        if (v21 >= 0)
        {
          v48 = &v62;
        }

        else
        {
          v48 = v62;
        }

        memmove(v26, v48, v22);
      }

      v46 = __c;
      v47 = &v26[v22];
      v45 = v27;
    }

    memset(v47, v46, v45);
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_125;
    }
  }

  else
  {
    if (v22)
    {
      if (v21 >= 0)
      {
        v28 = &v62;
      }

      else
      {
        v28 = v62;
      }

      v29 = v25 + a3 + v9;
LABEL_133:
      memmove(v29, v28, v22);
    }

LABEL_134:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_125;
    }
  }

  v41 = v62;
LABEL_124:
  operator delete(v41);
LABEL_125:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>::formatOptionsAtIndex<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 >= 0)
    {
LABEL_5:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
      goto LABEL_9;
    }
  }

  else if (a1 <= 8)
  {
    goto LABEL_5;
  }

  v3 = __cxa_allocate_exception(0x10uLL);
  exception = v3;
  if (a1 == 9)
  {
    std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
  }

LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>(v26);
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
    if (*(&v30 + 1) != 2)
    {
      if (*(&v30 + 1) != 3)
      {
        goto LABEL_71;
      }

      health::FormatString<double const&,double const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,unsigned char const&>(&__p, *a4, *a4 + 8, *a4 + 16, *a4 + 20, *a4 + 24, *a4 + 28, *a4 + 32, *a4 + 36, *a4 + 40, *a4 + 44);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v18 = *(&v31 + 1);
      if (*(&v31 + 1) <= size)
      {
        v18 = size;
      }

      if (v31)
      {
        size = v18;
      }

      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>(v13, a2, size + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_47;
    }

    v21 = *(a4 + 8);
    __p.__r_.__value_.__r.__words[0] = v21;
    v38 = v33;
    v37 = v32;
    v36 = v31;
    *&__p.__r_.__value_.__r.__words[1] = v30;
    v22 = *(v21 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = *(v21 + 8);
    }

    v23 = *(&v31 + 1);
    if (*(&v31 + 1) <= v22)
    {
      v23 = v22;
    }

    if (v31)
    {
      v22 = v23;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>(v34, a2, v22 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v30, &v24[a3 + v9], &__p);
    if (v9)
    {
LABEL_50:
      health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
    }
  }

  else
  {
    if (*(&v30 + 1))
    {
      if (*(&v30 + 1) == 1)
      {
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v30);
        v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = __p.__r_.__value_.__l.__size_;
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

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_47;
      }

LABEL_71:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_70:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 24), &v30);
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = *(&v31 + 1);
    if (*(&v31 + 1) <= v19)
    {
      v20 = v19;
    }

    if (v31)
    {
      v19 = v20;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>(v13, a2, v19 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_47:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v30, &v16[a3 + v9], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      goto LABEL_50;
    }
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawLocationDatumV2 &>(uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE92F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>::operator()(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v20 = v6;
  if (v6 < 1)
  {
    v7 = **(a1 + 16);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 1;
    }

    if (v8)
    {
      health::FormatString<health::DataStore::ObjectIdentifier &>(&v23, "HFD sample history root [ID: {0}] reports an empty sample count.", *(a1 + 24));
      v14 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v24, *(a1 + 40));
      health::DataStoreInspector::_errorHandler(v14, 2, v4, v5, &v23, v24);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v24);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v13 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_23;
    }
  }

  else
  {
    *(*(a1 + 8) + 40) = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::firstSampleKey(a2);
    *(*(a1 + 8) + 48) = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::lastSampleKey(a2);
    v7 = **(a1 + 16);
  }

  if (v7 == 2)
  {
    if (**(a1 + 48) != 1)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(v24, "object_id \t sample_number \t timestamp \t data");
    v12 = *(v11 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12, v24);
  }

  else
  {
    if (v7)
    {
      goto LABEL_24;
    }

    _HDSampleHistoryDescriptionForObjectType(**(a1 + 24), v24);
    health::timestampToDate(*(*(a1 + 8) + 40), &v23);
    health::timestampToDate(*(*(a1 + 8) + 48), v21);
    v9 = *(a1 + 40);
    health::FormatString<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(&__p, v24, *(a1 + 24), &v20, &v23, v21);
    v10 = *(v9 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if ((v25 & 0x80000000) == 0)
  {
LABEL_24:
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    operator new();
  }

  v13 = v24[0];
LABEL_23:
  operator delete(v13);
  goto LABEL_24;
}

void sub_228C74748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a31);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::firstSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_6;
  }

  v1 = *(a1[11] + 24);
  v2 = a1[2];
  v3 = a1[3];
  memset(v6, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v2, v3, v6);
  if (!WORD4(v6[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_6:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  return *v6;
}

double health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::lastSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_11;
  }

  v1 = *(a1[11] + 24);
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = v1;
  v2 = a1[3];
  v9[0] = a1[2];
  v9[1] = v2;
  v10 = v11;
  memset(__dst, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v9[0], v2, __dst);
  v3 = WORD4(__dst[25]);
  if (!WORD4(__dst[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
    goto LABEL_11;
  }

  if ((BYTE10(__dst[25]) & 1) == 0)
  {
    v5 = 0;
    while (WORD4(__dst[25]))
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(v9, v5, __dst, (WORD4(__dst[25]) - 1), __src);
      memcpy(__dst, __src, 0x19BuLL);
      ++v5;
      if (BYTE10(__dst[25]) == 1)
      {
        v3 = WORD4(__dst[25]);
        v4 = v10;
        goto LABEL_9;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_11:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  v4 = v11;
LABEL_9:
  v6 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](__dst, v3 - 1);
  memset(__src, 0, 274);
  *(&__src[17] + 8) = 0u;
  *(&__src[18] + 8) = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(v4[2], *(v6 + 8), *(v6 + 16), __src);
  return *health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__src, LOWORD(__src[17]) - 1);
}

__n128 _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV0EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdSX_EE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV0EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdSX_EEclESX_SX_(uint64_t a1, double *a2, uint64_t *a3)
{
  v3 = *a2;
  v14 = *a3;
  v4 = *(a1 + 8);
  ++*v4;
  v5 = **(a1 + 16);
  if (v5 == 2)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    health::doubleToString(9, v3, v11);
    v15 = &v14;
    v16 = v11;
    v17 = v4;
    v18 = v9;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>("{0} \t Sample #{1} \t {2} \t {3}", &__p, 0, &v15);
    v7 = *(v8 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    if (v5)
    {
      return 1;
    }

    v6 = *(a1 + 24);
    health::timestampToDate(v3, v11);
    v15 = &v14;
    v16 = v11;
    v17 = v4;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<long long &,std::string,double &>("Sample #{0} | Timestamp: {1} | Data: {2}", &__p, 0, &v15);
    v7 = *(v6 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  (*(*v7 + 48))(v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  return 1;
}

void sub_228C74D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV0EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdSX_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV0EENS0_15DataSeriesEntryENS_9DataStore16ObjectIdentifierENSt3__18functionIFvRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEENS0_12OutputFormatEbENKUlRKNS4_13SampleHistoryIS2_EEE_clESM_EUlRKT_T0_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<long long &,std::string,double &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,long long &,std::string,double &>::formatOptionsAtIndex<long long &,std::string,double &>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_58;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        health::TypeFormatter<double &,void>::TypeFormatter(&__p, *a4, &v28);
        v14 = HIBYTE(v34);
        if (v34 < 0)
        {
          v14 = v34;
        }

        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= v14)
        {
          v15 = v14;
        }

        if (v29)
        {
          v14 = v15;
        }

        health::FormatImplementation<long long &,std::string,double &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_46;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_58:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = *(a4 + 8);
    __p = v17;
    v37 = v31;
    v36 = v30;
    v35 = v29;
    v34 = v28;
    v18 = *(v17 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = *(v17 + 8);
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

    health::FormatImplementation<long long &,std::string,double &>(v32, a2, v18 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v28, &v20[a3 + v9], &__p);
  }

  else
  {
    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v28);
    v21 = HIBYTE(v34);
    if (v34 < 0)
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

    health::FormatImplementation<long long &,std::string,double &>(v13, a2, v21 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_46:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, &v16[a3 + v9], &__p);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long &,std::string,double &>::formatOptionsAtIndex<long long &,std::string,double &>(uint64_t a1)
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

uint64_t health::TypeFormatter<double &,void>::TypeFormatter(uint64_t a1, double *a2, uint64_t a3)
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
  MEMORY[0x22AAC8380](&v13, *a2);
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

void sub_228C75538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,double &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>(v26);
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
    if (*(&v30 + 1) != 2)
    {
      if (*(&v30 + 1) != 3)
      {
        goto LABEL_71;
      }

      health::TypeFormatter<double &,void>::TypeFormatter(&__p, *a4, &v30);
      v17 = HIBYTE(v36);
      if (v36 < 0)
      {
        v17 = v36;
      }

      v18 = *(&v31 + 1);
      if (*(&v31 + 1) <= v17)
      {
        v18 = v17;
      }

      if (v31)
      {
        v17 = v18;
      }

      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>(v13, a2, v17 + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_47;
    }

    v21 = *(a4 + 8);
    __p = v21;
    v39 = v33;
    v38 = v32;
    v37 = v31;
    v36 = v30;
    v22 = *(v21 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = *(v21 + 8);
    }

    v23 = *(&v31 + 1);
    if (*(&v31 + 1) <= v22)
    {
      v23 = v22;
    }

    if (v31)
    {
      v22 = v23;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>(v34, a2, v22 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v30, &v24[a3 + v9], &__p);
    if (v9)
    {
LABEL_50:
      health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
    }
  }

  else
  {
    if (*(&v30 + 1))
    {
      if (*(&v30 + 1) == 1)
      {
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v30);
        v14 = HIBYTE(v36);
        if (v36 < 0)
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

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_47;
      }

LABEL_71:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_70:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 24), &v30);
    v19 = HIBYTE(v36);
    if (v36 < 0)
    {
      v19 = v36;
    }

    v20 = *(&v31 + 1);
    if (*(&v31 + 1) <= v19)
    {
      v20 = v19;
    }

    if (v31)
    {
      v19 = v20;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>(v13, a2, v19 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_47:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v30, &v16[a3 + v9], &__p);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }

    if (v9)
    {
      goto LABEL_50;
    }
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,double &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,double &>(uint64_t a1)
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

__n128 std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE93F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>::operator()(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v20 = v6;
  if (v6 < 1)
  {
    v7 = **(a1 + 16);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 1;
    }

    if (v8)
    {
      health::FormatString<health::DataStore::ObjectIdentifier &>(&v23, "HFD sample history root [ID: {0}] reports an empty sample count.", *(a1 + 24));
      v14 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v24, *(a1 + 40));
      health::DataStoreInspector::_errorHandler(v14, 2, v4, v5, &v23, v24);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v24);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v13 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_23;
    }
  }

  else
  {
    *(*(a1 + 8) + 40) = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::firstSampleKey(a2);
    *(*(a1 + 8) + 48) = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::lastSampleKey(a2);
    v7 = **(a1 + 16);
  }

  if (v7 == 2)
  {
    if (**(a1 + 48) != 1)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(v24, "object_id \t sample_number \t timestamp \t data");
    v12 = *(v11 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12, v24);
  }

  else
  {
    if (v7)
    {
      goto LABEL_24;
    }

    _HDSampleHistoryDescriptionForObjectType(**(a1 + 24), v24);
    health::timestampToDate(*(*(a1 + 8) + 40), &v23);
    health::timestampToDate(*(*(a1 + 8) + 48), v21);
    v9 = *(a1 + 40);
    health::FormatString<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(&__p, v24, *(a1 + 24), &v20, &v23, v21);
    v10 = *(v9 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if ((v25 & 0x80000000) == 0)
  {
LABEL_24:
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    operator new();
  }

  v13 = v24[0];
LABEL_23:
  operator delete(v13);
  goto LABEL_24;
}

void sub_228C75EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a31);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::firstSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_6;
  }

  v1 = *(a1[11] + 24);
  v2 = a1[2];
  v3 = a1[3];
  memset(v6, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v2, v3, v6);
  if (!WORD4(v6[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_6:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  return *v6;
}

double health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::lastSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_11;
  }

  v1 = *(a1[11] + 24);
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = v1;
  v2 = a1[3];
  v9[0] = a1[2];
  v9[1] = v2;
  v10 = v11;
  memset(__dst, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v9[0], v2, __dst);
  v3 = WORD4(__dst[25]);
  if (!WORD4(__dst[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
    goto LABEL_11;
  }

  if ((BYTE10(__dst[25]) & 1) == 0)
  {
    v5 = 0;
    while (WORD4(__dst[25]))
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(v9, v5, __dst, (WORD4(__dst[25]) - 1), __src);
      memcpy(__dst, __src, 0x19BuLL);
      ++v5;
      if (BYTE10(__dst[25]) == 1)
      {
        v3 = WORD4(__dst[25]);
        v4 = v10;
        goto LABEL_9;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_11:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  v4 = v11;
LABEL_9:
  v6 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](__dst, v3 - 1);
  memset(__src, 0, 410);
  memset(&__src[26], 0, 32);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(v4[2], *(v6 + 8), *(v6 + 16), __src);
  return *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](__src, WORD4(__src[25]) - 1);
}

__n128 _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV1EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK27_HDRawQuantitySampleValueV1EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9460;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV1EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK27_HDRawQuantitySampleValueV1EEclESX_S10_(uint64_t a1, double *a2, __int128 *a3)
{
  v3 = *a2;
  v14 = *a3;
  v4 = *(a1 + 8);
  ++*v4;
  v5 = **(a1 + 16);
  if (v5 == 2)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    health::doubleToString(9, v3, v11);
    v15 = &v14;
    v16 = v11;
    v17 = v4;
    v18 = v9;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>("{0} \t Sample #{1} \t {2} \t {3}", &__p, 0, &v15);
    v7 = *(v8 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    if (v5)
    {
      return 1;
    }

    v6 = *(a1 + 24);
    health::timestampToDate(v3, v11);
    v15 = &v14;
    v16 = v11;
    v17 = v4;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<long long &,std::string,_HDRawQuantitySampleValueV1 &>("Sample #{0} | Timestamp: {1} | Data: {2}", &__p, 0, &v15);
    v7 = *(v6 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  (*(*v7 + 48))(v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  return 1;
}

void sub_228C76544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV1EENS3_15DataSeriesEntryENS2_9DataStore16ObjectIdentifierENS_8functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS3_12OutputFormatEbENKUlRKNS7_13SampleHistoryIS5_EEE_clESO_EUlRKT_T0_E_NSD_ISU_EEFbRKdRK27_HDRawQuantitySampleValueV1EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN6health18DataStoreInspector23_enumerateSampleHistoryI29QuantitySampleValueBehaviorV1EENS0_15DataSeriesEntryENS_9DataStore16ObjectIdentifierENSt3__18functionIFvRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEENS0_12OutputFormatEbENKUlRKNS4_13SampleHistoryIS2_EEE_clESM_EUlRKT_T0_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<long long &,std::string,_HDRawQuantitySampleValueV1 &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,long long &,std::string,_HDRawQuantitySampleValueV1 &>::formatOptionsAtIndex<long long &,std::string,_HDRawQuantitySampleValueV1 &>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_58;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        health::FormatString<double const&,float const&>(&__p, *a4, *a4 + 8);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= size)
        {
          v15 = size;
        }

        if (v29)
        {
          size = v15;
        }

        health::FormatImplementation<long long &,std::string,_HDRawQuantitySampleValueV1 &>(v13, a2, size + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_46;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_58:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = *(a4 + 8);
    __p.__r_.__value_.__r.__words[0] = v17;
    v36 = v31;
    v35 = v30;
    v34 = v29;
    *&__p.__r_.__value_.__r.__words[1] = v28;
    v18 = *(v17 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = *(v17 + 8);
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

    health::FormatImplementation<long long &,std::string,_HDRawQuantitySampleValueV1 &>(v32, a2, v18 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v28, &v20[a3 + v9], &__p);
  }

  else
  {
    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v28);
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__l.__size_;
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

    health::FormatImplementation<long long &,std::string,_HDRawQuantitySampleValueV1 &>(v13, a2, v21 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_46:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, &v16[a3 + v9], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long &,std::string,_HDRawQuantitySampleValueV1 &>::formatOptionsAtIndex<long long &,std::string,_HDRawQuantitySampleValueV1 &>(uint64_t a1)
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

void health::FormatString<double const&,float const&>(std::string *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a3;
  v3[1] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<double const&,float const&>("(Value: {0}, Duration: {1})", a1, 0, v3);
}

void sub_228C76AD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<double const&,float const&>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,double const&,float const&>::formatOptionsAtIndex<double const&,float const&>(v20);
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
      health::TypeFormatter<float const&,void>::TypeFormatter(&__p, *a4, v24);
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

      health::FormatImplementation<double const&,float const&>(v13, a2, v14 + a3 - v9, a4);
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

  health::TypeFormatter<double const&,void>::TypeFormatter(&__p, *(a4 + 8), v24);
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

  health::FormatImplementation<double const&,float const&>(v13, a2, v17 + a3 - v9, a4);
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

void health::FormatterParameters<0ul,double const&,float const&>::formatOptionsAtIndex<double const&,float const&>(uint64_t a1)
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

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>(v26);
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
    if (*(&v30 + 1) != 2)
    {
      if (*(&v30 + 1) != 3)
      {
        goto LABEL_71;
      }

      health::FormatString<double const&,float const&>(&__p, *a4, *a4 + 8);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v18 = *(&v31 + 1);
      if (*(&v31 + 1) <= size)
      {
        v18 = size;
      }

      if (v31)
      {
        size = v18;
      }

      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>(v13, a2, size + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_47;
    }

    v21 = *(a4 + 8);
    __p.__r_.__value_.__r.__words[0] = v21;
    v38 = v33;
    v37 = v32;
    v36 = v31;
    *&__p.__r_.__value_.__r.__words[1] = v30;
    v22 = *(v21 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = *(v21 + 8);
    }

    v23 = *(&v31 + 1);
    if (*(&v31 + 1) <= v22)
    {
      v23 = v22;
    }

    if (v31)
    {
      v22 = v23;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>(v34, a2, v22 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v30, &v24[a3 + v9], &__p);
    if (v9)
    {
LABEL_50:
      health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
    }
  }

  else
  {
    if (*(&v30 + 1))
    {
      if (*(&v30 + 1) == 1)
      {
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), &v30);
        v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = __p.__r_.__value_.__l.__size_;
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

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_47;
      }

LABEL_71:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_70:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 24), &v30);
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = *(&v31 + 1);
    if (*(&v31 + 1) <= v19)
    {
      v20 = v19;
    }

    if (v31)
    {
      v19 = v20;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>(v13, a2, v19 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_47:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v30, &v16[a3 + v9], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      goto LABEL_50;
    }
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string,_HDRawQuantitySampleValueV1 &>(uint64_t a1)
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

__n128 std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_1,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_1>,void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE94F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_1,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_1>,void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 16);
  ++**(a1 + 8);
  v17 = -1.0;
  v18 = -1.0;
  v16 = -1;
  v6 = *a2;
  if (*a2 > 1)
  {
    if (v6 == 2)
    {
      v13 = a2[1];
      v14 = *v5;
      v19 = 2;
      v20 = v13;
      operator new();
    }

    if (v6 == 3)
    {
      v9 = a2[1];
      v10 = *v5;
      v19 = 3;
      v20 = v9;
      operator new();
    }
  }

  else
  {
    if (!v6)
    {
      v11 = a2[1];
      v12 = *v5;
      v19 = 0;
      v20 = v11;
      operator new();
    }

    if (v6 == 1)
    {
      v7 = a2[1];
      v8 = *v5;
      v19 = 1;
      v20 = v7;
      operator new();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unexpected object type");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_228C77C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a28);
  if (a2 == 2)
  {
    v44 = __cxa_begin_catch(a1);
    v45 = *v41;
    v46 = v41[1];
    v47 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](&__p, *(v40 + 32));
    health::DataStoreInspector::_unknownBehaviorHandler(v47, v45, v46, v44, &__p);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&__p);
    v48 = *v41;
    __cxa_end_catch();
    JUMPOUT(0x228C77A58);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_1,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_1>,void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatString<health::DataStore::ObjectIdentifier const&>(std::string *a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v3 = a2;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<health::DataStore::ObjectIdentifier const&>(a1, a3, 0, &v3);
}

void sub_228C77E84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9570;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[6];
  **(a1 + 8) = v3;
  if (v3 <= 0)
  {
    **(a1 + 16) = 0;
    goto LABEL_5;
  }

  SampleKey = health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::firstSampleKey(a2);
  v6 = **(a1 + 8);
  **(a1 + 16) = SampleKey;
  if (v6 < 1)
  {
LABEL_5:
    v7 = 0.0;
    goto LABEL_6;
  }

  v7 = health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::lastSampleKey(a2);
LABEL_6:
  **(a1 + 24) = v7;
}

uint64_t std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE95F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[6];
  **(a1 + 8) = v3;
  if (v3 <= 0)
  {
    **(a1 + 16) = 0;
    goto LABEL_5;
  }

  SampleKey = health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::firstSampleKey(a2);
  v6 = **(a1 + 8);
  **(a1 + 16) = SampleKey;
  if (v6 < 1)
  {
LABEL_5:
    v7 = 0.0;
    goto LABEL_6;
  }

  v7 = health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::lastSampleKey(a2);
LABEL_6:
  **(a1 + 24) = v7;
}

uint64_t std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV2> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9670;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[6];
  **(a1 + 8) = v3;
  if (v3 <= 0)
  {
    **(a1 + 16) = 0;
    goto LABEL_5;
  }

  SampleKey = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::firstSampleKey(a2);
  v6 = **(a1 + 8);
  **(a1 + 16) = SampleKey;
  if (v6 < 1)
  {
LABEL_5:
    v7 = 0.0;
    goto LABEL_6;
  }

  v7 = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::lastSampleKey(a2);
LABEL_6:
  **(a1 + 24) = v7;
}

uint64_t std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE96F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[6];
  **(a1 + 8) = v3;
  if (v3 <= 0)
  {
    **(a1 + 16) = 0;
    goto LABEL_5;
  }

  SampleKey = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::firstSampleKey(a2);
  v6 = **(a1 + 8);
  **(a1 + 16) = SampleKey;
  if (v6 < 1)
  {
LABEL_5:
    v7 = 0.0;
    goto LABEL_6;
  }

  v7 = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::lastSampleKey(a2);
LABEL_6:
  **(a1 + 24) = v7;
}

uint64_t std::__function::__func<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1},std::allocator<void health::DataStoreInspector::_getSampleHistoryStats<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier,double &,double &,long long &)::{lambda(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier const&>(std::string *a1, std::string *this, std::string::size_type __n, void **a4)
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
                health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&>(a4, a4, v14);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(v18, &v19);
          health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&>::formatParameterAtIndex<health::DataStore::ObjectIdentifier const&>(a4, a4, v18[1], v18, this, __n - v9, v19);
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

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    health::FormatterParameters<1ul>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&>::formatParameterAtIndex<health::DataStore::ObjectIdentifier const&>(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5, uint64_t a6, int a7)
{
  if (a3)
  {

    health::FormatterParameters<1ul>::formatParameterAtIndex<health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&>>();
  }

  health::TypeFormatter<health::DataStore::ObjectIdentifier const&,void>::TypeFormatter(__p, *a1, a4);
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

  health::FormatImplementation<health::DataStore::ObjectIdentifier const&>(a7, a5, v11 + a6);
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

void sub_228C78858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatterParameters<1ul>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier const&>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<1ul>::formatParameterAtIndex<health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier const&>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::TypeFormatter<health::DataStore::ObjectIdentifier const&,void>::TypeFormatter(uint64_t a1, void *a2, uint64_t a3)
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
  health::operator<<(&v13, a2);
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

void sub_228C78B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>::formatOptionsAtIndex<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(v26);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_78;
  }

  health::FormatOptions::FormatOptions(v30, &v34);
  v13 = v34;
  if (v31 <= 1)
  {
    if (v31)
    {
      if (v31 != 1)
      {
        goto LABEL_79;
      }

      health::TypeFormatter<health::DataStore::ObjectIdentifier const&,void>::TypeFormatter(&__p, *(a4 + 24), v30);
      v17 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v17 = v36;
      }

      v18 = v33;
      if (v33 <= v17)
      {
        v18 = v17;
      }

      if (v32)
      {
        v17 = v18;
      }

      health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(v13, a2, v17 + a3 + v9, a4);
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
      health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 32), v30);
      v23 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v23 = v36;
      }

      v24 = v33;
      if (v33 <= v23)
      {
        v24 = v23;
      }

      if (v32)
      {
        v23 = v24;
      }

      health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(v13, a2, v23 + a3 + v9, a4);
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
    switch(v31)
    {
      case 2:
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), v30);
        v19 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v19 = v36;
        }

        v20 = v33;
        if (v33 <= v19)
        {
          v20 = v19;
        }

        if (v32)
        {
          v19 = v20;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(v13, a2, v19 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 3:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 8), v30);
        v21 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v21 = v36;
        }

        v22 = v33;
        if (v33 <= v21)
        {
          v22 = v21;
        }

        if (v32)
        {
          v21 = v22;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(v13, a2, v21 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 4:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *a4, v30);
        v14 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v14 = v36;
        }

        v15 = v33;
        if (v33 <= v14)
        {
          v15 = v14;
        }

        if (v32)
        {
          v14 = v15;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      default:
LABEL_79:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_78:
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v30, &v16[a3 + v9], &__p);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>::formatOptionsAtIndex<std::string &,health::DataStore::ObjectIdentifier const&,long long &,std::string &,std::string &>(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_3;
    }
  }

  else if (a1 <= 1)
  {
LABEL_3:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    goto LABEL_10;
  }

  v3 = __cxa_allocate_exception(0x10uLL);
  exception = v3;
  if (a1 == 4)
  {
    std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
  }

LABEL_10:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t std::__function::__value_func<void ()(health::DataStore::ObjectIdentifier const&,health::BlockPointer)>::~__value_func[abi:ne200100](uint64_t a1)
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

void health::FormatImplementation<int &>(std::string *a1, std::string *a2, std::string::size_type a3, unsigned int **a4)
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
                health::FormatterParameters<0ul,int &>::formatOptionsAtIndex<int &>(v18);
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
              health::TypeFormatter<int &,void>::TypeFormatter(__p, *a4, v22);
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

              health::FormatImplementation<int &>(v13, a2, v14 + a3 - v9, a4);
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

void health::FormatterParameters<0ul,int &>::formatOptionsAtIndex<int &>(uint64_t a1)
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

uint64_t health::TypeFormatter<int &,void>::TypeFormatter(uint64_t a1, unsigned int *a2, uint64_t a3)
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
  MEMORY[0x22AAC83A0](&v13, *a2);
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

void sub_228C79854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = v2[4];
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      if (v5[4] < v3)
      {
LABEL_8:
        if (v4)
        {
          v9 = v5 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = v4[4];
            if (v11 <= v3)
            {
              break;
            }

            v4 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v3)
          {
            break;
          }

          v4 = v10[1];
          if (!v4)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void *std::set<unsigned long long>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(a1, v3, v5[4]);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,long long &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,long long &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,long long &>(v22);
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
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *a4, v26);
        v14 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v14 = v32;
        }

        v15 = v29;
        if (v29 <= v14)
        {
          v15 = v14;
        }

        if (v28)
        {
          v14 = v15;
        }

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,long long &>(v13, a2, v14 + a3 + v9, a4);
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

    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, a4[1], v26);
    v17 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v17 = v32;
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

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,long long &>(v13, a2, v17 + a3 + v9, a4);
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
    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, a4[2], v26);
    v19 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v19 = v32;
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

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,long long &>(v13, a2, v19 + a3 + v9, a4);
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
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,long long &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,long long &>(uint64_t a1)
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

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,std::string &,std::string &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(v22);
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
        v14 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v14 = v32;
        }

        v15 = v29;
        if (v29 <= v14)
        {
          v15 = v14;
        }

        if (v28)
        {
          v14 = v15;
        }

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(v13, a2, v14 + a3 + v9, a4);
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

    health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 8), v26);
    v17 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v17 = v32;
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

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(v13, a2, v17 + a3 + v9, a4);
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
    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 16), v26);
    v19 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v19 = v32;
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

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(v13, a2, v19 + a3 + v9, a4);
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
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,std::string &,std::string &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(uint64_t a1)
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

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
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
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v24);
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
      health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 8), v28);
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

      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v21 + a3 + v9, a4);
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

      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v17 + a3 + v9, a4);
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

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v14 + a3 + v9, a4);
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

    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 24), v28);
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

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v19 + a3 + v9, a4);
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

void health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(uint64_t a1)
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

void health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v36 = a1;
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
    v36 = &v11->__r_.__value_.__s.__data_[1];
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
    v36 = &v11->__r_.__value_.__s.__data_[2];
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
        v36 = v29;
        v28 = (v27 & 0xF) + 10 * v28;
        v30 = *v29++;
        LOBYTE(v27) = v30;
      }

      while ((v30 - 58) >= 0xFFFFFFF6);
      v36 = v29;
      if (*(v29 - 1) == 125)
      {
        health::FormatterParameters<0ul,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>::formatOptionsAtIndex<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(v28);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_88;
  }

  health::FormatOptions::FormatOptions(v32, &v36);
  v13 = v36;
  if (v33 > 2)
  {
    switch(v33)
    {
      case 3:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 16), v32);
        v25 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v25 = v38;
        }

        v26 = v35;
        if (v35 <= v25)
        {
          v26 = v25;
        }

        if (v34)
        {
          v25 = v26;
        }

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(v13, a2, v25 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 4:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 8), v32);
        v21 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v21 = v38;
        }

        v22 = v35;
        if (v35 <= v21)
        {
          v22 = v21;
        }

        if (v34)
        {
          v21 = v22;
        }

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(v13, a2, v21 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 5:
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *a4, v32);
        v17 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v17 = v38;
        }

        v18 = v35;
        if (v35 <= v17)
        {
          v18 = v17;
        }

        if (v34)
        {
          v17 = v18;
        }

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(v13, a2, v17 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      default:
        goto LABEL_89;
    }
  }

  else if (v33)
  {
    if (v33 != 1)
    {
      if (v33 == 2)
      {
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 24), v32);
        v14 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v14 = v38;
        }

        v15 = v35;
        if (v35 <= v14)
        {
          v15 = v14;
        }

        if (v34)
        {
          v14 = v15;
        }

        health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_76;
      }

LABEL_89:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_88:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 32), v32);
    v19 = v39;
    if ((v39 & 0x80u) != 0)
    {
      v19 = v38;
    }

    v20 = v35;
    if (v35 <= v19)
    {
      v20 = v19;
    }

    if (v34)
    {
      v19 = v20;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(v13, a2, v19 + a3 + v9, a4);
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
    health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 40), v32);
    v23 = v39;
    if ((v39 & 0x80u) != 0)
    {
      v23 = v38;
    }

    v24 = v35;
    if (v35 <= v23)
    {
      v24 = v23;
    }

    if (v34)
    {
      v23 = v24;
    }

    health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>(v13, a2, v23 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }
  }

LABEL_76:
  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v32, &v16[a3 + v9], &__p);
  if (v39 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}