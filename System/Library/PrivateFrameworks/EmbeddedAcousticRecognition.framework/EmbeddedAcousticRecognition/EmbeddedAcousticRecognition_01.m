std::string *quasar::SpeechModelInfo::SpeechModelInfo(std::string *this, const quasar::SpeechModelInfo *a2)
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

  std::set<int>::set[abi:ne200100](this[2].__r_.__value_.__r.__words, a2 + 48);
  std::set<std::string>::set[abi:ne200100](this[3].__r_.__value_.__r.__words, a2 + 9);
  std::set<std::string>::set[abi:ne200100](this[4].__r_.__value_.__r.__words, a2 + 12);
  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v7 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v8 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v8;
  }

  LODWORD(this[8].__r_.__value_.__l.__data_) = *(a2 + 48);
  std::map<std::string,std::string>::map[abi:ne200100](&this[8].__r_.__value_.__l.__size_, a2 + 25);
  std::map<std::string,std::vector<std::string>>::map[abi:ne200100](&this[9].__r_.__value_.__l.__size_, a2 + 28);
  std::map<std::string,std::string>::map[abi:ne200100](&this[10].__r_.__value_.__l.__size_, a2 + 31);
  this[11].__r_.__value_.__l.__size_ = *(a2 + 34);
  return this;
}

void sub_1B502F298(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  std::__tree<std::string>::destroy(v1 + 96, *(v1 + 104));
  std::__tree<std::string>::destroy(v1 + 72, *(v1 + 80));
  std::__tree<int>::destroy(v1 + 48, *(v1 + 56));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SystemConfig::checkConfigFileVersion(quasar::SystemConfig *this)
{
  v2 = (this + 32);
  v3 = *(this + 8);
  v4 = quasar::gLogLevel;
  if (v3 == 15)
  {
    if (quasar::gLogLevel >= 4)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Reading version ", 16);
      v6 = quasar::operator<<(v5, v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " as 15.0", 8);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v23);
      v4 = quasar::gLogLevel;
    }

    *v2 = 15;
  }

  if (v4 >= 5)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Version of currently loaded config file: ", 41);
    v8 = quasar::operator<<(v7, v2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " Supported config file version: ", 32);
    v22 = 278;
    v10 = quasar::operator<<(v9, &v22);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (minimum supported version: ", 29);
    v21 = 0x20000000ELL;
    v12 = quasar::operator<<(v11, &v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v23);
    v3 = *v2;
  }

  if (v3 < 14)
  {
LABEL_8:
    if (quasar::gLogLevel >= 1)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Config file version ", 20);
      v14 = quasar::operator<<(v13, v2);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " is lower than the minimum supported version ", 45);
      v22 = 0x20000000ELL;
      quasar::operator<<(v15, &v22);
LABEL_18:
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v23);
      return 2;
    }

    return 2;
  }

  if (v3 == 14)
  {
    if (*(this + 9) <= 1)
    {
      goto LABEL_8;
    }

    return 1;
  }

  if (v3 > 0x116)
  {
    goto LABEL_16;
  }

  if (v3 != 278)
  {
    return 1;
  }

  v16 = *(this + 9);
  if (v16 >= 1)
  {
LABEL_16:
    if (quasar::gLogLevel >= 1)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Config file version ", 20);
      v18 = quasar::operator<<(v17, v2);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is higher than the supported version ", 38);
      v22 = 278;
      quasar::operator<<(v19, &v22);
      goto LABEL_18;
    }

    return 2;
  }

  return v16 != 0;
}

void sub_1B502F644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  _Unwind_Resume(a1);
}

void *std::set<int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__find_equal<quasar::PronType>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__find_equal<quasar::PronType>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a3, a5);
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

uint64_t std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::map<std::string,std::vector<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::string>>,std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::map<std::string,std::vector<std::string>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::string>>,std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::pair<std::string const,std::vector<std::string>> const&>();
  }

  return v3;
}

void quasar::SystemConfig::~SystemConfig(quasar::SystemConfig *this)
{
  *this = &unk_1F2D11F50;
  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(this + 1528, *(this + 192));
  std::__tree<std::string>::destroy(this + 1504, *(this + 189));
  std::__tree<std::string>::destroy(this + 1480, *(this + 186));
  std::__tree<std::string>::destroy(this + 1456, *(this + 183));
  std::__tree<std::string>::destroy(this + 1432, *(this + 180));
  std::__tree<std::string>::destroy(this + 1408, *(this + 177));
  std::__tree<std::string>::destroy(this + 1384, *(this + 174));
  std::__tree<std::string>::destroy(this + 1360, *(this + 171));
  std::__tree<std::string>::destroy(this + 1336, *(this + 168));
  std::__tree<std::string>::destroy(this + 1312, *(this + 165));
  std::__tree<std::string>::destroy(this + 1288, *(this + 162));
  std::__tree<std::string>::destroy(this + 1264, *(this + 159));
  std::__tree<std::string>::destroy(this + 1240, *(this + 156));
  std::__tree<std::string>::destroy(this + 1216, *(this + 153));
  std::__tree<std::string>::destroy(this + 1192, *(this + 150));
  quasar::SpeechModelInfo::~SpeechModelInfo((this + 912));
  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  v2 = *(this + 107);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  quasar::SystemConfig::SystemConfigInfo::~SystemConfigInfo((this + 8));

  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::SystemConfig::~SystemConfig(this);

  JUMPOUT(0x1B8C85350);
}

void std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void quasar::ModelLoader::~ModelLoader(std::mutex *this)
{
  this->__m_.__sig = &unk_1F2D383E0;
  quasar::ModelLoader::releaseDispatchResource(this);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this[9].__m_.__opaque);
  std::mutex::~mutex(this + 8);
  v2 = *&this[7].__m_.__opaque[48];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[6].__m_.__opaque[16]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[5].__m_.__opaque[40]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(this[5].__m_.__opaque);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[4].__m_.__opaque[24]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[3].__m_.__opaque[48]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[3].__m_.__opaque[8]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[2].__m_.__opaque[32]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[2]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this[1].__m_.__opaque[16]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&this->__m_.__opaque[40]);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(this->__m_.__opaque);
}

{
  quasar::ModelLoader::~ModelLoader(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::ModelLoader::releaseDispatchResource(quasar::ModelLoader *this)
{
  if (*(this + 60))
  {
    if (*(this + 59))
    {
      v2 = atomic_load(this + 489);
      if (v2)
      {
        dispatch_release(*(this + 60));
        v3 = *(this + 59);

        dispatch_release(v3);
      }
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__tree<int>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<int>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t quasar::SpeechModelInfo::operator=(uint64_t a1, __int128 *a2)
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
  std::__tree<int>::__move_assign(a1 + 48, a2 + 6);
  std::__tree<std::string>::__move_assign(a1 + 72, a2 + 9);
  std::__tree<std::string>::__move_assign(a1 + 96, a2 + 12);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v6;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v7 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v7;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v8 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v8;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 48);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(a1 + 200, a2 + 25);
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__move_assign(a1 + 224, a2 + 28);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(a1 + 248, a2 + 31);
  *(a1 + 272) = *(a2 + 34);
  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void std::__tree<std::string>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::string>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_hex_quad(uint64_t a1)
{
  LODWORD(v2) = 0;
  v3 = 4;
  do
  {
    v4 = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::need_cur(a1 + 16, "invalid escape sequence");
    v5 = v4 - 48;
    if ((v4 - 48) <= 9)
    {
      goto LABEL_5;
    }

    if ((v4 - 65) <= 5)
    {
      v5 = v4 - 55;
LABEL_5:
      if (v5 < 0)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    if ((v4 - 97) > 5 || (v5 = v4 - 87, v4 - 87 < 0))
    {
LABEL_9:
      boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error(a1 + 16, "invalid escape sequence");
    }

LABEL_10:
    v2 = (v5 + 16 * v2);
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::next(a1 + 16);
    --v3;
  }

  while (v3);
  return v2;
}

void boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_codepoint_ref(uint64_t *a1)
{
  v2 = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_hex_quad(a1);
  if ((v2 & 0xFC00) == 0xD800)
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_backslash, 0, "invalid codepoint, stray high surrogate");
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_u, 0, "expected codepoint reference after high surrogate");
    v3 = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_hex_quad(a1);
    if ((v3 & 0xFC00) != 0xDC00)
    {
      boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error((a1 + 2), "expected low surrogate after high surrogate");
    }

    v2 = (v3 & 0x3FF | ((v2 & 0x3FF) << 10)) + 0x10000;
  }

  else if ((v2 & 0xFC00) == 0xDC00)
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error((a1 + 2), "invalid codepoint, stray low surrogate");
  }

  v5 = *a1;
  v4 = a1[1];
  v6[0] = boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::on_code_unit;
  v6[1] = 0;
  v6[2] = v5;
  boost::property_tree::json_parser::detail::utf8_utf8_encoding::feed_codepoint<boost::_bi::bind_t<void,boost::_mfi::mf1<void,boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,char>,boost::_bi::list2<boost::reference_wrapper<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>,boost::arg<1>>>>(v4, v2, v6);
}

void boost::property_tree::json_parser::detail::utf8_utf8_encoding::feed_codepoint<boost::_bi::bind_t<void,boost::_mfi::mf1<void,boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,char>,boost::_bi::list2<boost::reference_wrapper<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>,boost::arg<1>>>>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        if (HIWORD(a2) > 0x10u)
        {
          return;
        }

        v16 = *(a3 + 8);
        v17 = *a3;
        v18 = (*(a3 + 16) + (v16 >> 1));
        if (v16)
        {
          v17 = *(*v18 + v17);
        }

        v17(v18, (a2 >> 18) | 0xFFFFFFF0);
        v19 = *(a3 + 8);
        v20 = *a3;
        v21 = (*(a3 + 16) + (v19 >> 1));
        if (v19)
        {
          v20 = *(*v21 + v20);
        }

        v20(v21, (a2 >> 12) & 0x3F | 0xFFFFFF80);
      }

      else
      {
        v13 = *(a3 + 8);
        v14 = *a3;
        v15 = (*(a3 + 16) + (v13 >> 1));
        if (v13)
        {
          v14 = *(*v15 + v14);
        }

        v14(v15, (a2 >> 12) | 0xFFFFFFE0);
      }

      v22 = *(a3 + 8);
      v23 = *a3;
      v24 = (*(a3 + 16) + (v22 >> 1));
      if (v22)
      {
        v23 = *(*v24 + v23);
      }

      v23(v24, (a2 >> 6) & 0x3F | 0xFFFFFF80);
    }

    else
    {
      v9 = *(a3 + 8);
      v10 = *a3;
      v11 = (*(a3 + 16) + (v9 >> 1));
      if (v9)
      {
        v10 = *(*v11 + v10);
      }

      v10(v11, (a2 >> 6) | 0xFFFFFFC0);
    }

    v12 = a2 & 0x3F | 0xFFFFFF80;
    v25 = *(a3 + 8);
    v7 = *a3;
    v8 = (*(a3 + 16) + (v25 >> 1));
    if (v25)
    {
      v7 = *(*v8 + v7);
    }
  }

  else
  {
    v6 = *(a3 + 8);
    v5 = *(a3 + 16);
    v7 = *a3;
    v8 = (v5 + (v6 >> 1));
    if (v6)
    {
      v7 = *(*v8 + v7);
    }

    v12 = a2;
  }

  v7(v8, v12);
}

__n128 kaldi::nnet1::UpdatableComponent::SetTrainOptions(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 71) = *(a2 + 23);
  *(a1 + 56) = result;
  return result;
}

void kaldi::nnet1::Nnet::SetTrainOptions(kaldi::nnet1::Nnet *this, const kaldi::nnet1::NnetTrainOptions *lpsrc, int a3)
{
  v6 = *this;
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v7 = 0;
    do
    {
      if ((*(**(v6 + 8 * v7) + 32))(*(v6 + 8 * v7)))
      {
        (*(**(*this + 8 * v7) + 264))(*(*this + 8 * v7), lpsrc);
      }

      ++v7;
      v6 = *this;
    }

    while (v7 < ((*(this + 1) - *this) >> 3));
  }

  v9 = *(this + 18);
  if (v8)
  {
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    operator new();
  }

  v10 = *(lpsrc + 8);
  *(v9 + 23) = *(lpsrc + 23);
  *(v9 + 8) = v10;
  if (a3 && kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v12, 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "a regular trainer option. ", 26);
    kaldi::nnet1::operator<<(v11, *(this + 18));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v12);
  }

  if (a3)
  {
    kaldi::nnet1::Nnet::ResetInternalBuffers(this);
    kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
  }
}

void sub_1B5030F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::ResetInternalBuffers(kaldi::nnet1::Nnet *this)
{
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 72, *(*(this + 18) + 32));
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 120, *(*(this + 18) + 32));
  v2 = *(this + 1) - *this;
  v3 = *(*(this + 18) + 32);
  if ((v2 >> 3) <= 0)
  {
    if (v3 >= 1)
    {
      v20 = 0;
      do
      {
        v21 = (*(this + 9) + 24 * v20);
        v23 = *v21;
        v22 = v21[1];
        if (v22 != *v21)
        {
          v24 = v22 - 48;
          v25 = (v22 - 48);
          v26 = (v22 - 48);
          do
          {
            v27 = *v26;
            v26 -= 6;
            (*(v27 + 16))(v25);
            v24 -= 48;
            v12 = v25 == v23;
            v25 = v26;
          }

          while (!v12);
        }

        v21[1] = v23;
        v28 = (*(this + 15) + 24 * v20);
        v30 = *v28;
        v29 = v28[1];
        if (v29 != *v28)
        {
          v31 = v29 - 48;
          v32 = (v29 - 48);
          v33 = (v29 - 48);
          do
          {
            v34 = *v33;
            v33 -= 6;
            (*(v34 + 16))(v32);
            v31 -= 48;
            v12 = v32 == v30;
            v32 = v33;
          }

          while (!v12);
        }

        v28[1] = v30;
        ++v20;
      }

      while (v20 < *(*(this + 18) + 32));
    }

    v36 = *(this + 12);
    v35 = *(this + 13);
    if (v35 != v36)
    {
      v37 = v35 - 4;
      v38 = v35 - 4;
      v39 = v35 - 4;
      do
      {
        v40 = *v39;
        v39 -= 4;
        (*(v40 + 8))(v38);
        v37 -= 4;
        v12 = v38 == v36;
        v38 = v39;
      }

      while (!v12);
    }

    *(this + 13) = v36;
  }

  else
  {
    if (v3 >= 1)
    {
      v4 = 0;
      do
      {
        v5 = (*(this + 9) + 24 * v4);
        v7 = *v5;
        v6 = v5[1];
        if (v6 != *v5)
        {
          v8 = v6 - 48;
          v9 = (v6 - 48);
          v10 = (v6 - 48);
          do
          {
            v11 = *v10;
            v10 -= 6;
            (*(v11 + 16))(v9);
            v8 -= 48;
            v12 = v9 == v7;
            v9 = v10;
          }

          while (!v12);
        }

        v5[1] = v7;
        v13 = (*(this + 15) + 24 * v4);
        v15 = *v13;
        v14 = v13[1];
        if (v14 != *v13)
        {
          v16 = v14 - 48;
          v17 = (v14 - 48);
          v18 = (v14 - 48);
          do
          {
            v19 = *v18;
            v18 -= 6;
            (*(v19 + 16))(v17);
            v16 -= 48;
            v12 = v17 == v15;
            v17 = v18;
          }

          while (!v12);
        }

        v13[1] = v15;
        std::vector<kaldi::CuMatrix<float>>::resize((*(this + 9) + 24 * v4), (((*(this + 1) - *this) << 29) + 0x100000000) >> 32);
        std::vector<kaldi::CuMatrix<float>>::resize((*(this + 15) + 24 * v4++), (((*(this + 1) - *this) << 29) - 0x100000000) >> 32);
      }

      while (v4 < *(*(this + 18) + 32));
      v2 = *(this + 1) - *this;
    }

    std::vector<kaldi::CuVector<float>>::resize(this + 12, ((v2 << 29) + 0x100000000) >> 32);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B50314BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<kaldi::CuMatrix<float>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

uint64_t kaldi::CuMatrix<float>::~CuMatrix(uint64_t a1)
{
  *a1 = &unk_1F2D0EE38;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return a1;
}

{
  *a1 = &unk_1F2D0EE38;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return a1;
}

void *std::vector<kaldi::CuMatrix<float>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<kaldi::CuMatrix<float>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 48 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 48;
      v9 = (v3 - 48);
      v10 = (v3 - 48);
      do
      {
        v11 = *v10;
        v10 -= 6;
        result = (*(v11 + 16))(v9);
        v8 -= 48;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 48 * a2;
      v11 = 48 * a2;
      v12 = *(result + 8);
      do
      {
        *(v4 + 24) = 0uLL;
        *(v4 + 8) = 0uLL;
        *v4 = &unk_1F2D0EE38;
        *(v4 + 40) = 0;
        v4 += 48;
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v24 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(result, v9);
    }

    v13 = 48 * v6;
    v21 = 0;
    v22 = 48 * v6;
    *(&v23 + 1) = 0;
    v14 = 48 * a2;
    v15 = 48 * v6;
    v16 = 48 * v6;
    do
    {
      *(v16 + 24) = 0uLL;
      *(v16 + 8) = 0uLL;
      *v16 = &unk_1F2D0EE38;
      *(v16 + 40) = 0;
      v16 += 48;
      v15 += 48;
      v14 -= 48;
    }

    while (v14);
    *&v23 = v13 + 48 * a2;
    v17 = *(result + 8);
    v18 = v13 + *result - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(result, *result, v17, v18);
    v19 = *v3;
    *v3 = v18;
    v20 = *(v3 + 16);
    *(v3 + 8) = v23;
    *&v23 = v19;
    *(&v23 + 1) = v20;
    v21 = v19;
    v22 = v19;
    return std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(&v21);
  }

  return result;
}

void sub_1B5031920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<kaldi::CuVector<float>>::resize(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 32 * a2;
      if (v3 != v6)
      {
        v7 = v3 - 32;
        v8 = (v3 - 32);
        v9 = (v3 - 32);
        do
        {
          v10 = *v9;
          v9 -= 4;
          result = (*(v10 + 8))(v8);
          v7 -= 32;
          v11 = v8 == v6;
          v8 = v9;
        }

        while (!v11);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<kaldi::CuVector<float>>::__append(result, v5);
  }

  return result;
}

void kaldi::nnet1::Nnet::ResetRecurrentFlag(kaldi::nnet1::Nnet *this)
{
  v1 = (this + 24);
  v3 = (this + 48);
  v2 = *(this + 6);
  *(this + 4) = *(this + 3);
  *(this + 7) = v2;
  *(this + 76) = 0;
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v4 + 8 * v6);
      if (!v7)
      {
        goto LABEL_34;
      }

      if (!v8)
      {
        break;
      }

      v9 = v8;
      kaldi::nnet1::ParallelComponent::GetHistoricalComponents(v8, &v42);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v3, *(this + 7), v42, v43, (v43 - v42) >> 3);
      if (*(this + 153))
      {
        v10 = 1;
      }

      else
      {
        v16 = *(v9 + 23);
        v17 = *(v9 + 24);
        if (v16 == v17)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            if (v10)
            {
              v10 = 1;
            }

            else
            {
              v10 = *(v16 + 153);
            }

            v16 += 376;
          }

          while (v16 != v17);
        }
      }

      *(this + 153) = v10 & 1;
      kaldi::nnet1::ParallelComponent::GetRecurrentComponents(v9, &__p);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v1, *(this + 4), __p, v41, (v41 - __p) >> 3);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

LABEL_51:
      ++v6;
      v4 = *this;
      if (v6 >= (*(this + 1) - *this) >> 3)
      {
        if (*(this + 3) != *(this + 4))
        {
          *(this + 152) = 1;
        }

        return;
      }
    }

    if (v11)
    {
      v12 = v11;
      if ((*(*v11 + 16))(v11) >= 1)
      {
        v14 = *(this + 7);
        v13 = *(this + 8);
        if (v14 >= v13)
        {
          v18 = (v14 - *v3) >> 3;
          if ((v18 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v19 = v13 - *v3;
          v20 = v19 >> 2;
          if (v19 >> 2 <= (v18 + 1))
          {
            v20 = v18 + 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(v3, v21);
          }

          *(8 * v18) = v12;
          v15 = 8 * v18 + 8;
          v22 = *(this + 6);
          v23 = *(this + 7) - v22;
          v24 = (8 * v18 - v23);
          memcpy(v24, v22, v23);
          v25 = *(this + 6);
          *(this + 6) = v24;
          *(this + 7) = v15;
          *(this + 8) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v14 = v12;
          v15 = (v14 + 1);
        }

        *(this + 7) = v15;
      }
    }

LABEL_34:
    v26 = *(*this + 8 * v6);
    if (v26)
    {
      if (v27)
      {
        v28 = v27;
        if ((*(*v27 + 16))(v27) >= 1)
        {
          v30 = *(this + 4);
          v29 = *(this + 5);
          if (v30 >= v29)
          {
            v32 = (v30 - *v1) >> 3;
            if ((v32 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v33 = v29 - *v1;
            v34 = v33 >> 2;
            if (v33 >> 2 <= (v32 + 1))
            {
              v34 = v32 + 1;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(v1, v35);
            }

            *(8 * v32) = v28;
            v31 = 8 * v32 + 8;
            v36 = *(this + 3);
            v37 = *(this + 4) - v36;
            v38 = (8 * v32 - v37);
            memcpy(v38, v36, v37);
            v39 = *(this + 3);
            *(this + 3) = v38;
            *(this + 4) = v31;
            *(this + 5) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v30 = v28;
            v31 = (v30 + 1);
          }

          *(this + 4) = v31;
          {
            *(this + 153) = 1;
          }
        }
      }
    }

    goto LABEL_51;
  }
}

void sub_1B5031E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Nnet1InferenceNet::Init(kaldi::nnet1::Nnet1InferenceNet *this)
{
  v12 = xmmword_1B5AE0070;
  v13 = 0x3BF800000;
  v15 = 0;
  v16 = 0;
  v11 = &unk_1F2D27A38;
  v17 = &unk_1F2D27A58;
  v14 = 1;
  v18 = 0x100000001;
  kaldi::nnet1::Nnet::SetTrainOptions((this + 8), &v11, 1);
  v2 = *(this + 1);
  v3 = (*(this + 2) - v2) >> 3;
  *(this + 96) = v3 - 1;
  if (v3 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "last_component_idx_ >= 0", 24);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v9);
  }

  *(this + 52) = *(v2 + 8 * (v3 - 1));
  v9 = 0uLL;
  v10 = 0;
  std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__init_with_size[abi:ne200100]<kaldi::nnet1::RecurrentBaseComponent **,kaldi::nnet1::RecurrentBaseComponent **>(&v9, *(this + 4), *(this + 5), (*(this + 5) - *(this + 4)) >> 3);
  v4 = *(this + 49);
  if (v4)
  {
    *(this + 50) = v4;
    operator delete(v4);
  }

  *(this + 392) = v9;
  *(this + 51) = v10;
  v5 = *(this + 1);
  v6 = *(this + 2) - v5;
  if ((v6 >> 3) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 3) & 0x7FFFFFFF;
    do
    {
      *(*(v5 + 8 * v7++) + 17) = 1;
    }

    while (v8 != v7);
  }
}

uint64_t std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__init_with_size[abi:ne200100]<kaldi::nnet1::RecurrentBaseComponent **,kaldi::nnet1::RecurrentBaseComponent **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5032030(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<float>::Resize(a1, a2, a3, a4, a5);
  return a1;
}

void kaldi::Matrix<float>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = *(a1 + 16);
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 20) / v10;
  }

  if (v10 == a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a5;
  }

  v13 = *a1;
  if (a4 == 3)
  {
    if (!v13)
    {
      v6 = 0;
      goto LABEL_43;
    }

    if (*(a1 + 12) == a2)
    {
      v17 = *(a1 + 8) == a3 ? v12 : 1;
      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v6 = 0;
  }

  else
  {
    if (a4 == 2)
    {
      v6 = 0;
      if (a2)
      {
        if (v13)
        {
          if (v10 < a3 || v11 < a2)
          {
            v12 = 1;
          }

          v15 = *(a1 + 12);
          if (v12)
          {
            v16 = a2 <= v15 && *(a1 + 8) >= a3;
            v56 = 0;
            memset(memptr, 0, sizeof(memptr));
            kaldi::Matrix<float>::Resize(memptr, a2, a3, v16, a5);
            v26 = *(a1 + 8);
            v25 = *(a1 + 12);
            if (v25 >= v8)
            {
              v25 = v8;
            }

            if (v26 >= v7)
            {
              v26 = v7;
            }

            v53 = 0;
            v54 = 0;
            if (v25 && v26)
            {
              v27 = memptr[0];
              v53 = memptr[2];
              v49 = 0;
              v28 = *a1;
              v48 = *(a1 + 16);
            }

            else
            {
              v27 = 0;
              v26 = 0;
              v25 = 0;
              v28 = 0;
              v48 = 0;
              v49 = 0;
            }

            v50 = v27;
            v51 = v26;
            v52 = v25;
            v45 = v28;
            v46 = v26;
            v47 = v25;
            kaldi::MatrixBase<float>::CopyFromMat<float>(&v50, &v45, 111);
            v29 = memptr[0];
            memptr[0] = *a1;
            v30 = memptr[0];
            *a1 = v29;
            v31 = *&memptr[1];
            *&memptr[1] = *(a1 + 8);
            *(a1 + 8) = v31;
            v32 = v56;
            v33 = *(a1 + 32);
            v56 = v33;
            *(a1 + 32) = v32;
            if (v30)
            {
              if ((v33 & 1) == 0)
              {
                free(v30);
              }
            }

            return;
          }

          v23 = *(a1 + 8);
          *(a1 + 8) = v10;
          *(a1 + 12) = v11;
          if (a3 > v23)
          {
            v24 = &v13[4 * v23];
            if (a3 - v23 == v10)
            {
              bzero(&v13[4 * v23], 4 * v10 * a2);
            }

            else if (a2 >= 1)
            {
              v34 = 4 * (a3 - v23);
              v35 = 4 * v10;
              v36 = a2;
              do
              {
                bzero(v24, v34);
                v24 += v35;
                --v36;
              }

              while (v36);
            }
          }

          v37 = v8 - v15;
          if (v8 > v15)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            if (v7 && v37)
            {
              v41 = *(a1 + 16);
              v38 = (*a1 + 4 * v41 * v15);
              if (v41 != v7)
              {
                if (v37 >= 1)
                {
                  v42 = 4 * v41;
                  do
                  {
                    bzero(v38, 4 * v7);
                    v38 += v42;
                    --v37;
                  }

                  while (v37);
                }

                goto LABEL_78;
              }

              v39 = v8 - v15;
              v40 = v7;
            }

            bzero(v38, 4 * v39 * v40);
          }

LABEL_78:
          *(a1 + 8) = v7;
          *(a1 + 12) = v8;
          return;
        }
      }
    }

    if (!v13)
    {
      goto LABEL_43;
    }
  }

  if (v10 >= a3 && v11 >= a2)
  {
    v19 = v12;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    *(a1 + 8) = a3;
    *(a1 + 12) = a2;
    if (!v6)
    {

      kaldi::MatrixBase<float>::SetZero(a1);
    }

    return;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    free(v13);
  }

  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
LABEL_43:
  if (!(v7 * v8))
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    if (v6)
    {
      return;
    }

LABEL_53:
    kaldi::MatrixBase<float>::SetZero(a1);
    return;
  }

  memptr[0] = 0;
  v20 = -v7 & 3;
  if (v5)
  {
    v20 = 0;
  }

  v21 = v20 + v7;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, 4 * v8 * (v20 + v7), 0x77C5AFA7uLL))
  {
    v22 = 1;
  }

  else
  {
    v22 = memptr[0] == 0;
  }

  if (v22)
  {
    exception = __cxa_allocate_exception(8uLL);
    v44 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v44, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = memptr[0];
  *(a1 + 32) = 0;
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v21;
  *(a1 + 20) = v21 * v8;
  if (!v6)
  {
    goto LABEL_53;
  }
}

void sub_1B5032490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MatrixBase<float>::SetZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 16))
  {
    v3 = *a1;
    v4 = 4 * v2 * *(a1 + 12);

    bzero(v3, v4);
  }

  else if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*a1 + 4 * *(a1 + 16) * v5++), 4 * *(a1 + 8));
    }

    while (v5 < *(a1 + 12));
  }
}

uint64_t kaldi::Matrix<float>::~Matrix(uint64_t a1)
{
  v2 = *a1;
  if (v2 && (*(a1 + 32) & 1) == 0)
  {
    free(v2);
  }

  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return a1;
}

void *kaldi::VectorBase<float>::CopyFromVec(uint64_t a1, const void **a2)
{
  result = *a1;
  v4 = *a2;
  if (result != v4)
  {
    return memcpy(result, v4, 4 * *(a1 + 8));
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void quasar::OnlineNnetForwardFe::finishInit(quasar::OnlineNnetForwardFe *this, quasar::SystemConfig *a2)
{
  ModelLoader = quasar::SystemConfig::getModelLoader(a2);
  v4 = *(this + 207);
  if (v4 < 0)
  {
    v4 = *(this + 24);
  }

  if (v4)
  {
    if (*(this + 34))
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "cannot set both strict-batch-size & strict-batch-sizes");
    }

    else
    {
      kaldi::SplitStringToIntegers<int>(this + 184, ",", 0, this + 6);
      v5 = *(this + 18);
      if (*(this + 19) - v5 == 12)
      {
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[2];
        if (v7 > v8)
        {
          v8 = v7;
        }

        if (v6 < v8 && quasar::gLogLevel >= 4)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Model input size should greater than batch sizes in most cases", 62);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        goto LABEL_13;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "strict-batch-sizes needs 3 sizes");
    }

    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_13:
  quasar::ModelLoader::requestEmbeddedMlock(ModelLoader, this + 6, __p);
  v11 = __p[0];
  v10 = __p[1];
  v12 = *(this + 98);
  v13 = *(this + 96);
  quasar::ModelLoader::isKeepANEModelLoadedEnabled(ModelLoader, this + 48);
  v25 = v11;
  v26 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::ModelLoader::readFeedForwardNetwork(ModelLoader, this + 48, v12 & 1, v13 & 1, 0, &v25, __p);
  v14 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v15 = *(this + 80);
  *(this + 632) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (*(this + 98) == 1)
  {
    if ((*(this + 95) & 0x80) != 0)
    {
      if (!*(this + 10))
      {
        goto LABEL_31;
      }
    }

    else if (!*(this + 95))
    {
      goto LABEL_31;
    }

    fst::FstReadOptions::FstReadOptions(__p, this + 72, 0, 0, 0);
    LODWORD(v30) = 2;
    kaldi::nnet1::Nnet::ReadMapped(this + 256, __p);
  }

  if ((*(this + 95) & 0x80) != 0)
  {
    if (!*(this + 10))
    {
      goto LABEL_31;
    }
  }

  else if (!*(this + 95))
  {
LABEL_31:
    if ((*(this + 127) & 0x8000000000000000) != 0)
    {
      if (!*(this + 14))
      {
        goto LABEL_51;
      }
    }

    else if (!*(this + 127))
    {
      goto LABEL_51;
    }

    v22 = 0;
    v23 = 0;
    LOBYTE(__p[0]) = 0;
    BYTE8(v28) = 0;
    quasar::ModelLoader::readNeuralNetwork(ModelLoader, this + 13, 0, 0, 1, &v22, __p, &v24);
    v16 = v24;
    v24 = 0uLL;
    v17 = *(this + 82);
    *(this + 648) = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      if (*(&v24 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
      }
    }

    if (BYTE8(v28) == 1 && SBYTE7(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (quasar::gLogLevel >= 5)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Read model file for computing silence posteriors=", 49);
      v19 = *(this + 127);
      if (v19 >= 0)
      {
        v20 = this + 104;
      }

      else
      {
        v20 = *(this + 13);
      }

      if (v19 >= 0)
      {
        v21 = *(this + 127);
      }

      else
      {
        v21 = *(this + 14);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

LABEL_51:
    std::allocate_shared[abi:ne200100]<kaldi::nnet1::PdfPrior,std::allocator<kaldi::nnet1::PdfPrior>,kaldi::nnet1::PdfPriorOptions &,0>();
  }

  kaldi::nnet1::Nnet::Read((this + 256), this + 72);
  goto LABEL_31;
}

std::string *fst::FstReadOptions::FstReadOptions(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  this[1].__r_.__value_.__r.__words[2] = a5;
  WORD2(this[2].__r_.__value_.__r.__words[0]) = 257;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, FLAGS_fst_read_mode);
  LODWORD(this[2].__r_.__value_.__l.__data_) = fst::FstReadOptions::ReadMode(__p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1B5032B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstReadOptions::ReadMode(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 4 && **a1 == 1684104562)
    {
      return 0;
    }

    if (*(a1 + 8) != 3)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      fst::LogMessage::LogMessage(&v14, __p);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Unknown file read mode ", 23);
      v8 = *(a1 + 23);
      if (v8 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      if (v8 >= 0)
      {
        v10 = *(a1 + 23);
      }

      else
      {
        v10 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    v3 = *a1;
LABEL_10:
    v4 = *v3;
    v5 = *(v3 + 2);
    if (v4 == 24941 && v5 == 112)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v2 = *(a1 + 23);
  v3 = a1;
  if (v2 == 3)
  {
    goto LABEL_10;
  }

  if (v2 != 4 || *a1 != 1684104562)
  {
    goto LABEL_14;
  }

  return 0;
}

void sub_1B5032CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::Input::Input(void *a1, uint64_t a2, _BYTE *a3)
{
  *a1 = 0;
  if ((kaldi::Input::OpenInternal(a1, a2, 1, a3) & 1) == 0)
  {
    v6 = a2;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Error opening input stream ", 27);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 8));
    }

    else
    {
      __p = *v6;
    }

    kaldi::PrintableRxfilename(&__p, &v9);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, &v9);
    std::string::~string(&v9);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return a1;
}

uint64_t kaldi::ClassifyRxfilename(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = *v1;
  if (!*v1)
  {
    return 2;
  }

  if (v2 == 124)
  {
    return 0;
  }

  if (v2 == 45)
  {
    if (v1[1])
    {
      v4 = 45;
      goto LABEL_11;
    }

    return 2;
  }

  v4 = v2;
  if ((v2 & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x4000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (__maskrune(v2, 0x4000uLL))
  {
    goto LABEL_18;
  }

LABEL_14:
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  v7 = v1[v6 - 1];
  if ((v7 & 0x80000000) != 0)
  {
    if (__maskrune(v7, 0x4000uLL))
    {
LABEL_18:
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Cannot have leading or trailing space in filename ", 51);
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
          v11 = *(a1 + 8);
        }

LABEL_25:
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".", 2);
LABEL_26:
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v30);
      }

      return 0;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x4000) != 0)
  {
    goto LABEL_18;
  }

  v13 = *v1;
  if (v13 == 98 || v13 == 116)
  {
    if (v1[1] == 44)
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found what looks like an rspecifier instead of a filename ", 59);
      v19 = *(a1 + 23);
      if (v19 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v19 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      goto LABEL_25;
    }
  }

  else if (v13 == 126)
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found ~ at the beginning of filename ", 38);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ". Shell like path expansions not supported.", 44);
    goto LABEL_26;
  }

  v20 = v1 - 1;
  do
  {
    v21 = v20[2];
    ++v20;
  }

  while (v21);
  v22 = *v20;
  if (v22 == 124)
  {
    return 4;
  }

  if ((v22 & 0x80000000) != 0)
  {
    v23 = __maskrune(v22, 0x4000uLL);
  }

  else
  {
    v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x4000;
  }

  if (v23)
  {
    return 0;
  }

  if ((*v20 & 0x80000000) == 0 && (v24 = *v20, (*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) != 0))
  {
    do
    {
      if (v20 <= v1)
      {
        break;
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) == 0)
      {
        break;
      }

      v29 = *--v20;
      v24 = v29;
    }

    while ((v29 & 0x80000000) == 0);
    if (v24 == 58)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (strchr(v1, 124))
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Trying to classify rxfilename with pipe symbol in the wrong place (pipe without | at the end?): ", 96);
      v26 = *(a1 + 23);
      if (v26 >= 0)
      {
        v27 = a1;
      }

      else
      {
        v27 = *a1;
      }

      if (v26 >= 0)
      {
        v28 = *(a1 + 23);
      }

      else
      {
        v28 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      goto LABEL_26;
    }

    return 1;
  }
}

uint64_t kaldi::Input::OpenInternal(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = kaldi::ClassifyRxfilename(a2);
  v9 = *a1;
  if (*a1)
  {
    if (v8 == 3)
    {
      v10 = (*(*v9 + 24))(v9);
      v9 = *a1;
      if (v10 == 3)
      {
        if ((**v9)(v9, a2, a3))
        {
          if (a4)
          {
            v13 = (*(**a1 + 8))();

            return kaldi::InitKaldiInputStream(v13, a4);
          }

          else
          {
            return 1;
          }
        }

        else
        {
          if (*a1)
          {
            (*(**a1 + 40))(*a1);
          }

          result = 0;
          *a1 = 0;
        }

        return result;
      }

      if (!v9)
      {
        goto LABEL_16;
      }
    }

    (*(*v9 + 40))(v9);
    *a1 = 0;
  }

  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        operator new();
      }

      goto LABEL_17;
    }

LABEL_16:
    operator new();
  }

  if (v8 == 1)
  {
    operator new();
  }

  if (v8 == 2)
  {
    operator new();
  }

LABEL_17:
  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Invalid input filename format ", 30);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
    }

    else
    {
      v16 = *a2;
    }

    kaldi::PrintableRxfilename(&v16, &__p);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v18);
  }

  return 0;
}

void kaldi::nnet1::Nnet::ReadMapped(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 160))
  {
    kaldi::ReadMapped<kaldi::nnet1::Nnet>(a2);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Nnet already mapped from a file");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::ReadMapped<kaldi::nnet1::Nnet>(uint64_t a1)
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

void sub_1B5033B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

BOOL kaldi::FileInputImpl::Open(uint64_t a1)
{
  if (*(a1 + 144))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "FileInputImpl::Open(), ", 23);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "open called on already open file.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  std::ifstream::open();
  return *(a1 + 144) != 0;
}

kaldi::OnlineSpliceInput *kaldi::OnlineSpliceInput::OnlineSpliceInput(kaldi::OnlineSpliceInput *this, kaldi::OnlineFeatInputItf *a2, int a3, int a4)
{
  *this = &unk_1F2D21C38;
  *(this + 1) = a2;
  *(this + 4) = (*(*a2 + 8))(a2);
  *(this + 5) = a3;
  *(this + 6) = a4;
  kaldi::Matrix<float>::Matrix(this + 32);
  return this;
}

void *std::__shared_ptr_emplace<kaldi::OnlineSpliceInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,int &,int &,std::allocator<kaldi::OnlineSpliceInput>,0>(void *a1, kaldi::OnlineFeatInputItf **a2, int *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24418;
  kaldi::OnlineSpliceInput::OnlineSpliceInput((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void quasar::NFHatConfig::registerParams(quasar::NFHatConfig *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "same-state-transition-probability");
  std::string::basic_string[abi:ne200100]<0>(__p, "Same state transition probability");
  quasar::SystemConfig::Register<double>(a2, v6, this, __p, 0, 46, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "acoustic-evidence-deweighting-power");
  std::string::basic_string[abi:ne200100]<0>(__p, "Acoustic evidence deweighting power");
  quasar::SystemConfig::Register<double>(a2, v6, this + 8, __p, 0, 46, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5033EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t kaldi::OnlineNnetForwardInput::Compute(uint64_t a1, uint64_t a2)
{
  v93[3] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 88))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  kaldi::MatrixBase<float>::NumRows(*a2);
  kaldi::MatrixBase<float>::NumCols(v4);
  (*(*a1 + 8))(a1);
  v8 = *(a1 + 112);
  v9 = *v8;
  v10 = 1;
  if (*(a1 + 184) > 0)
  {
    v10 = 2;
  }

  v11 = v8[v10];
  if (v11 >= 1)
  {
    v12 = (*(*a1 + 8))(a1);
    kaldi::Matrix<float>::Resize(v4, v11, v12, 1, 0);
  }

  v13 = kaldi::MatrixBase<float>::NumRows(v4);
  v14 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  kaldi::Matrix<float>::Matrix(v90, v13, v14, 1, 0);
  *a2 = v90;
  v15 = *(a1 + 8);
  v16 = *(a2 + 16);
  *__p = *a2;
  *&__p[2] = v16;
  *&__p[4] = *(a2 + 32);
  v76 = (**v15)();
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "requested ", 10);
    v18 = MEMORY[0x1B8C84C00](v17, v11);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " frames and got ", 16);
    v20 = kaldi::MatrixBase<float>::NumRows(v90);
    MEMORY[0x1B8C84C00](v19, v20);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  if (!kaldi::MatrixBase<float>::NumRows(v90))
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    goto LABEL_103;
  }

  v75 = kaldi::MatrixBase<float>::NumRows(v90);
  if (v9 < 1)
  {
    v23 = 0;
  }

  else
  {
    v21 = kaldi::MatrixBase<float>::NumRows(v90);
    v22 = *(a1 + 96) + v9;
    if (v21 > v22)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "input.NumRows() <= strict_batch_size + total_batch_context_", 59);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v23 = v22 - kaldi::MatrixBase<float>::NumRows(v90);
    kaldi::handleStrictBatchOps(v90, v23, *(a1 + 136), *(a1 + 137));
    if (*(a1 + 140) >= 1)
    {
      v24 = kaldi::MatrixBase<float>::NumRows(v90);
      v25 = kaldi::MatrixBase<float>::NumCols(v90);
      kaldi::Matrix<float>::Resize(a1 + 144, *(a1 + 140), v25, 2, 0);
      if (*(a1 + 296) == 1)
      {
        if (v9 <= v23)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "frames_padded < strict_batch_size", 33);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        kaldi::Matrix<float>::Matrix(__p, 1, v25, 0, 0);
        kaldi::SubMatrix<float>::SubMatrix(&v85, __p, 0, 1, 0, v9 - v23);
        v26.i32[0] = 1.0;
        kaldi::MatrixBase<float>::Set(&v85, v26);
        quasar::Bitmap::~Bitmap(&v85);
        v27 = kaldi::MatrixBase<float>::NumRows(__p);
        kaldi::Matrix<float>::Resize(v90, (v27 + v24 + *(a1 + 140)), v25, 2, 0);
        v28 = kaldi::MatrixBase<float>::NumRows(__p);
        kaldi::SubMatrix<float>::SubMatrix(&v85, v90, v24, v28, 0, v25);
        kaldi::MatrixBase<float>::CopyFromMat<float>(&v85, __p, 111);
        quasar::Bitmap::~Bitmap(&v85);
        v29 = kaldi::MatrixBase<float>::NumRows(__p);
        kaldi::SubMatrix<float>::SubMatrix(&v85, v90, v29 + v24, *(a1 + 140), 0, v25);
        kaldi::MatrixBase<float>::CopyFromMat<float>(&v85, (a1 + 144), 111);
        quasar::Bitmap::~Bitmap(&v85);
        kaldi::Matrix<float>::~Matrix(__p);
      }

      else
      {
        kaldi::Matrix<float>::Resize(v90, (v24 + *(a1 + 140) + 2), v25, 2, 0);
        kaldi::SubMatrix<float>::SubMatrix(__p, v90, v24, *(a1 + 140), 0, v25);
        kaldi::MatrixBase<float>::CopyFromMat<float>(__p, (a1 + 144), 111);
        quasar::Bitmap::~Bitmap(__p);
        v30 = *v90;
        v31 = v91;
        v32 = v91 * (*(a1 + 140) + v24);
        *(*v90 + 4 * v32) = *(a1 + 184);
        v33 = 0.0;
        if (*(*(a1 + 112) + 4) == *(*(a1 + 112) + 8))
        {
          v33 = 1.0;
        }

        *(v30 + 4 * (v31 + v32)) = v33;
      }
    }
  }

  for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v90); ++i)
  {
    for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v90); ++j)
    {
      v36 = *(*v90 + 4 * i * v91 + 4 * j);
      if (v36 == INFINITY)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "inf in features", 15);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }
  }

  v87 = 0u;
  v86 = 0u;
  v85 = &unk_1F2D0EE38;
  v88 = 0;
  v83 = 0u;
  v82 = 0u;
  v81 = &unk_1F2D0EE38;
  v84 = 0;
  kaldi::CuMatrix<float>::operator=(&v85, v90);
  v37 = *(a1 + 16);
  if (v37)
  {
    v38 = &v81;
  }

  else
  {
    v38 = &v85;
  }

  if (v37)
  {
    kaldi::nnet1::Nnet::Feedforward(*(a1 + 16), &v85, &v81, 0xFFFFFFFF, 0);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Batch ", 6);
    v40 = &v81;
    if (!v37)
    {
      v40 = &v85;
    }

    MEMORY[0x1B8C84C00](v39, v40[2].u32[1]);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  v79 = 0u;
  v78 = 0u;
  v77 = &unk_1F2D0EE38;
  v80 = 0;
  v41 = *(a1 + 24);
  if (v7)
  {
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Must use penultimate-compatible AM with silence nnet", 52);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v43 = v42;
    v44 = *(a1 + 32);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v42 + 96))(v42, v38, a1 + 200, 1);
    (*(*v43 + 144))(v43, a1 + 200, &v77);
    (*(**(a1 + 88) + 16))(*(a1 + 88), a1 + 200, a1 + 248);
    v45 = 1;
    goto LABEL_63;
  }

  {
    v47 = v46;
    v44 = *(a1 + 32);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v46 + 184))(v46))
    {
      v92 = (a1 + 248);
      memset(__p, 0, 24);
      std::vector<kaldi::CuMatrix<float> *,std::allocator<kaldi::CuMatrix<float> *>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float> * const*,kaldi::CuMatrix<float> * const*>(__p, &v92, v93, 1uLL);
      v48 = &v81;
      if (!v37)
      {
        v48 = &v85;
      }

      (*(**(a1 + 24) + 64))(*(a1 + 24), v48[2].u32[1], v23);
      v92 = 0;
      v93[0] = 0;
      v93[1] = 0;
      (*(*v47 + 120))(v47, v38, &v92, &v77, __p, 0);
      if (v92)
      {
        v93[0] = v92;
        operator delete(v92);
      }

      v45 = *(a1 + 256) != 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      goto LABEL_63;
    }

    v41 = *(a1 + 24);
  }

  else
  {
    v44 = 0;
  }

  v49 = &v81;
  if (!v37)
  {
    v49 = &v85;
  }

  (*(*v41 + 64))(v41, v49[2].u32[1], v23);
  (*(**(a1 + 24) + 16))(*(a1 + 24), v38, &v77);
  v45 = 0;
LABEL_63:
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v50 = &v85;
  if (v37)
  {
    v50 = &v81;
  }

  v51 = HIDWORD(v78);
  v52 = *(a1 + 96);
  if (v52 >= 1)
  {
    v53 = (v50[2].i32[1] - HIDWORD(v78));
    if (v52 != v53)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Frames consumed by model (", 26);
      v69 = MEMORY[0x1B8C84C00](v68, v53);
      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, ") does not match frames added by batchwise splicing (", 53);
      v71 = MEMORY[0x1B8C84C00](v70, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "). Hint: Are batch-left-context and batch-right-context correct for this model?", 79);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }
  }

  ++*(a1 + 184);
  v54 = *(a1 + 140);
  if (v54 >= 1)
  {
    if (v51 < v54)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "nnet_out NumRows ", 17);
      v73 = MEMORY[0x1B8C84C00](v72, HIDWORD(v78));
      v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " cannot be smaller than append_context_size_ ", 45);
      MEMORY[0x1B8C84C00](v74, *(a1 + 140));
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    kaldi::SubMatrix<float>::SubMatrix(&v92, a1 + 144, 0, v54, 0, SDWORD2(v78));
    v55 = (v23 + v75);
    __p[2] = __PAIR64__(*(a1 + 140), DWORD2(v78));
    LODWORD(__p[3]) = v79;
    HIDWORD(__p[3]) = DWORD1(v79) - v79 * v55;
    __p[4] = *(&v79 + 1);
    __p[0] = &unk_1F2CFA908;
    __p[1] = (v78 + 4 * v79 * v55);
    kaldi::CuMatrixBase<float>::CopyToMat<float>(__p, &v92, 111);
    __p[0] = &unk_1F2CFA908;
    memset(&__p[1], 0, 32);
    quasar::Bitmap::~Bitmap(__p);
    quasar::Bitmap::~Bitmap(&v92);
    v56 = (*(*a1 + 8))(a1);
    kaldi::CuMatrix<float>::Resize(&v77, v55, v56, 2, 0);
  }

  if (*(a1 + 80) == 1)
  {
    kaldi::CuMatrixBase<float>::ApplyLog(&v77);
  }

  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    if (!*(a1 + 63))
    {
      goto LABEL_81;
    }

LABEL_78:
    if ((*(a1 + 81) & 1) != 0 || *(a1 + 80) == 1)
    {
      kaldi::nnet1::PdfPrior::SubtractOnLogpost(*(a1 + 72), &v77);
    }

    goto LABEL_81;
  }

  if (*(a1 + 48))
  {
    goto LABEL_78;
  }

LABEL_81:
  kaldi::Matrix<float>::Resize(v4, HIDWORD(v78), DWORD2(v78), 1, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(&v77, v4, 111);
  if (v45)
  {
    kaldi::Matrix<float>::Resize(v5, *(a1 + 268), *(a1 + 264), 1, 0);
    kaldi::CuMatrixBase<float>::CopyToMat<float>(a1 + 248, v5, 111);
  }

  if (v23 >= 1)
  {
    if (*(a1 + 297) == 1)
    {
      if (kaldi::MatrixBase<float>::NumRows(v4) != 1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "output->NumRows() == 1", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }

    else
    {
      v57 = *(a1 + 96);
      if (v23 + v75 - v57 != kaldi::MatrixBase<float>::NumRows(v4))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "orig_input_size + frames_padded - total_batch_context_ == output->NumRows()", 75);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }

    if (v45)
    {
      v58 = kaldi::MatrixBase<float>::NumRows(v4);
      if (v58 != kaldi::MatrixBase<float>::NumRows(v5))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "output->NumRows() == sil_post->NumRows()", 40);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }

    if (*(a1 + 297) == 1)
    {
      v59 = kaldi::MatrixBase<float>::NumCols(v4);
      v60 = 1;
    }

    else
    {
      v61 = kaldi::MatrixBase<float>::NumRows(v4);
      v59 = kaldi::MatrixBase<float>::NumCols(v4);
      v60 = (v61 - v23);
    }

    kaldi::Matrix<float>::Resize(v4, v60, v59, 2, 0);
    if (v45)
    {
      v62 = kaldi::MatrixBase<float>::NumRows(v5);
      v63 = kaldi::MatrixBase<float>::NumCols(v5);
      kaldi::Matrix<float>::Resize(v5, (v62 - v23), v63, 2, 0);
    }
  }

  for (k = 0; k < kaldi::MatrixBase<float>::NumRows(v4); ++k)
  {
    for (m = 0; m < kaldi::MatrixBase<float>::NumCols(v4); ++m)
    {
      v66 = *(*v4 + 4 * k * v4[4] + 4 * m);
      if (v66 == INFINITY)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "inf in NNet output", 18);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v77);
  kaldi::CuMatrix<float>::~CuMatrix(&v81);
  kaldi::CuMatrix<float>::~CuMatrix(&v85);
LABEL_103:
  kaldi::Matrix<float>::~Matrix(v90);
  return v76;
}

void sub_1B5034F0C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v2 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
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
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  kaldi::CuMatrix<float>::~CuMatrix(va2);
  JUMPOUT(0x1B5034F30);
}

void sub_1B5034F40(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5034F38);
}

uint64_t kaldi::InferenceNetItf::FeedforwardSimple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(*a1 + 96))(a1, a2, a3, 0);
}

{
  return (*(*a1 + 104))(a1, a2, a3, 0);
}

void kaldi::nnet1::Nnet::Feedforward(void *a1, uint64_t a2, int32x2_t *a3, unsigned int a4, uint64_t a5)
{
  v7 = (a1[1] - *a1) >> 3;
  if (a4 == -1)
  {
    v8 = v7;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8 + a5;
  if (v8 + a5 > v7)
  {
    v24 = v8;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Components to propagate (startCompIdx=", 38);
    v26 = MEMORY[0x1B8C84C00](v25, a5);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", num_comps=", 12);
    v28 = MEMORY[0x1B8C84C00](v27, v24);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") must not be greater than ", 27);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "#components in the network (", 28);
    v31 = MEMORY[0x1B8C84C00](v30, (a1[1] - *a1) >> 3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, ").");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

  if (v8)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    kaldi::CuMatrix<float>::Resize(a3, *(a2 + 20), *(a2 + 16), 1, 0);

    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);
  }

  else if (v8 == 1)
  {
    v13 = *(*a1 + 8 * a5);

    kaldi::nnet1::Component::Propagate(v13, a2, a3, 0);
  }

  else
  {
    std::vector<kaldi::CuMatrix<float>>::vector[abi:ne200100](v32, 2uLL);
    v14 = a3[4];
    v15 = v32[0];
    *(v32[0] + 32) = v14;
    v15[10] = v14;
    kaldi::nnet1::Component::Propagate(*(*a1 + 8 * a5), a2, v15, 0);
    v16 = 0;
    v17 = a5;
    v18 = v9 - 2;
    if (a5 > v9 - 2)
    {
      v18 = a5;
    }

    v19 = v18 - a5;
    v20 = (v17 << 32) + 0x100000000;
    for (i = 8 * v17 + 8; ; i += 8)
    {
      v22 = v32[0] + 48 * v16;
      if (!v19)
      {
        break;
      }

      v16 = !v16;
      v23 = *(*a1 + i);
      --v19;
      v20 += 0x100000000;
      kaldi::nnet1::Component::Propagate(v23, v22, (v32[0] + 48 * v16), 0);
    }

    kaldi::nnet1::Component::Propagate(*(*a1 + (v20 >> 29)), v22, a3, 0);
    v33 = v32;
    std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v33);
  }
}

void *std::vector<kaldi::CuMatrix<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void kaldi::nnet1::Nnet1InferenceNet::Feedforward(uint64_t a1, uint64_t a2, int32x2_t *a3, int a4)
{
  if (a4)
  {
    v4 = *(a1 + 384);
  }

  else
  {
    v4 = -1;
  }

  kaldi::nnet1::Nnet::Feedforward((a1 + 8), a2, a3, v4, 0);
}

void std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t kaldi::nnet1::Component::Propagate(unsigned int *a1, uint64_t a2, int32x2_t *a3, uint64_t a4)
{
  if (a1[2] != *(a2 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Non-matching dims! ", 19);
    v12 = (*(*a1 + 24))(a1);
    kaldi::nnet1::Component::TypeToMarker(v12, &v19);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v19;
    }

    else
    {
      v13 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, size);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " input-dim : ", 13);
    v17 = MEMORY[0x1B8C84C00](v16, a1[2]);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " data : ", 8);
    MEMORY[0x1B8C84C00](v18, *(a2 + 16));
    std::string::~string(&v19);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v8 = (*(*a1 + 56))(a1, *(a2 + 20));
  kaldi::CuMatrix<float>::Resize(a3, v8, a1[3], 0, 0);
  v9 = *(*a1 + 112);

  return v9(a1, a2, a3, a4);
}

void kaldi::CuMatrix<float>::Resize(int32x2_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!(a3 * a2))
  {
    a1[2] = 0;
    return;
  }

  v7 = a4;
  if (a5)
  {
    v10 = a1[3].i32[0] != a3;
  }

  else
  {
    v10 = 0;
  }

  if (a4 == 3)
  {
    if (a1[2].i32[1] == a2 && ((a1[2].i32[0] == a3) & ~v10) != 0)
    {
      return;
    }

    v7 = 0;
  }

  v11 = a1[3].i32[0];
  if (v11 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1[3].i32[1] / v11;
  }

  if (v11 < a3)
  {
    goto LABEL_17;
  }

  if (v12 < a2)
  {
    LOBYTE(v10) = 1;
  }

  if (v10)
  {
LABEL_17:
    if (v7 == 2)
    {
      v21 = vmin_s32(a1[2], __PAIR64__(a2, a3));
      kaldi::Matrix<float>::Matrix(&v24, a2, a3, 0, a5);
      kaldi::SubMatrix<float>::SubMatrix(v23, &v24, 0, v21.i32[1], 0, v21.i32[0]);
      v13 = a1[1];
      v14 = a1[4];
      v15 = a1[3];
      v22[1] = v21;
      v22[2] = v15;
      v22[3] = v14;
      v22[0] = v13;
      kaldi::MatrixBase<float>::CopyFromMat<float>(v23, v22, 111);
      quasar::Bitmap::~Bitmap(v23);
    }

    else
    {
      v17 = a1 + 1;
      v16 = a1[1];
      if (v16)
      {
        if ((a1[5].i8[0] & 1) == 0)
        {
          free(v16);
        }
      }

      *v17 = 0;
      a1[2] = 0;
      a1[3] = 0;
      kaldi::Matrix<float>::Matrix(&v24, a2, a3, v7, a5);
    }

    v18 = v24;
    v24 = a1[1];
    a1[1] = v18;
    v19 = v25;
    v25 = *a1[2].i8;
    *a1[2].i8 = v19;
    v18.i8[0] = v26;
    v26 = a1[5].i8[0];
    a1[5].i8[0] = v18.i8[0];
    kaldi::Matrix<float>::~Matrix(&v24);
  }

  else
  {
    a1[2].i32[0] = a3;
    a1[2].i32[1] = a2;
    if (!v7)
    {
      v20 = &a1[1];

      kaldi::MatrixBase<float>::SetZero(v20);
    }
  }
}

void sub_1B5035704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  quasar::Bitmap::~Bitmap(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void quasar::SpeechRequestResultData::~SpeechRequestResultData(quasar::SpeechRequestResultData *this)
{
  v4 = (this + 360);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 44);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 304, *(this + 39));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 280, *(this + 36));
  std::__tree<std::string>::destroy(this + 256, *(this + 33));
  std::mutex::~mutex(this + 3);
  v4 = (this + 168);
  std::vector<quasar::PhoneticMatchResult>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 144);
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::vector<quasar::PhoneticMatchResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::PhoneticMatchDecoderStat>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void quasar::SpeechRecognizer::~SpeechRecognizer(quasar::SpeechRecognizer *this)
{
  *this = &unk_1F2D1F898;
  v2 = *(this + 79);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<quasar::QsrTextSymbolTable>::reset[abi:ne200100](this + 76, 0);
  v3 = *(this + 73);
  if (v3)
  {
    *(this + 74) = v3;
    operator delete(v3);
  }

  v4 = *(this + 72);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 70);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 68);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 66);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 64);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::mutex::~mutex((this + 440));
  v15 = (this + 408);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v15);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 368);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](this + 304);
  v9 = *(this + 36);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 34);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 32);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::condition_variable::~condition_variable((this + 200));
  std::mutex::~mutex((this + 136));
  v15 = (this + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v12 = *(this + 9);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 7);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v15 = (this + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  v14 = *(this + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::SpeechRecognizer::~SpeechRecognizer(this);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::ConfusionNetworkCache>::__on_zero_shared(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__shared_ptr_emplace<quasar::MuxHelper>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 24);
}

void quasar::BasicTextSanitizer::~BasicTextSanitizer(quasar::BasicTextSanitizer *this)
{
  quasar::TextSanitizer::~TextSanitizer(this);

  JUMPOUT(0x1B8C85350);
}

void std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t kaldi::cu::Copy<float>(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
  if (result >= 1)
  {
    v8 = 0;
    do
    {
      if (v5 >= 1)
      {
        v9 = 0;
        v10 = *(a1 + 8) + 4 * *(a1 + 24) * v8;
        v11 = *(a3 + 8) + 4 * *(a3 + 24) * v8;
        do
        {
          *(v11 + 4 * v9) = *(v10 + 4 * *(v6 + 4 * v9));
          ++v9;
        }

        while (v5 != v9);
      }

      ++v8;
      result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
    }

    while (v8 < result);
  }

  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::PropagateFncDirect(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if (*(a1 + 128) <= 0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 384) + 48 * a4), *(a2 + 20), (*(a1 + 108) * *(a1 + 120)), 3, 0);
  if (*(a1 + 144) >= 1)
  {
    v9 = 0;
    v10 = a4;
    v65 = a3;
    do
    {
      v11 = *(a1 + 128);
      v12 = *(a1 + 120);
      v66 = v9;
      if (v11 >= 1)
      {
        v13 = *(a1 + 108);
        v14 = v13 * v9 * v12;
        v15 = *(a3 + 8) + 4 * v14;
        v16 = *(a3 + 28) - v14;
        v17 = *(a3 + 32);
        *(&v74[1] + 4) = *(a3 + 20);
        LODWORD(v74[1]) = v13;
        HIDWORD(v74[2]) = v16;
        v74[3] = v17;
        v73 = &unk_1F2CFA908;
        v74[0] = v15;
        LODWORD(v15) = *(a1 + 104);
        v18 = v15 * *(a1 + 140);
        v19 = *(a2 + 8) + 4 * v18;
        v20 = *(a2 + 28) - v18;
        v21 = *(a2 + 32);
        LODWORD(v72[1]) = v15 * v11;
        *(&v72[1] + 4) = *(a2 + 20);
        HIDWORD(v72[2]) = v20;
        v72[3] = v21;
        v71 = &unk_1F2CFA908;
        v72[0] = v19;
        v22 = *(a1 + 152);
        LODWORD(v21) = *(v22 + 24);
        LODWORD(v15) = v21 * *(a1 + 124) * v15;
        v23 = *(v22 + 8) + 4 * v15 + 4 * (v13 * v9);
        LODWORD(v15) = *(v22 + 28) - v15;
        v24 = *(v22 + 32);
        *(&v69 + 1) = __PAIR64__(v72[1], v13);
        LODWORD(v70) = v21;
        DWORD1(v70) = v15 - v13 * v9;
        *(&v70 + 1) = v24;
        v68 = &unk_1F2CFA908;
        *&v69 = v23;
        kaldi::CuMatrixBase<float>::AddMatMat(&v73, &v71, 111, &v68, 111);
        v25 = *(a1 + 120);
        if (v25 >= 2)
        {
          for (i = 1; i < v25; ++i)
          {
            v27 = *(a1 + 108) * (i + v9 * v25);
            v28 = *(a3 + 8) + 4 * v27;
            v29 = *(a3 + 28) - v27;
            v30 = *(a3 + 32);
            LODWORD(v67[2]) = *(a1 + 108);
            *(&v67[2] + 4) = *(a3 + 20);
            HIDWORD(v67[3]) = v29;
            v67[4] = v30;
            v67[0] = &unk_1F2CFA908;
            v67[1] = v28;
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(v67, &v73, 111);
            v67[0] = &unk_1F2CFA908;
            memset(&v67[1], 0, 32);
            quasar::Bitmap::~Bitmap(v67);
            v25 = *(a1 + 120);
          }
        }

        v68 = &unk_1F2CFA908;
        v69 = 0u;
        v70 = 0u;
        quasar::Bitmap::~Bitmap(&v68);
        v71 = &unk_1F2CFA908;
        memset(v72, 0, sizeof(v72));
        quasar::Bitmap::~Bitmap(&v71);
        v73 = &unk_1F2CFA908;
        memset(v74, 0, sizeof(v74));
        quasar::Bitmap::~Bitmap(&v73);
        v12 = *(a1 + 120);
      }

      if (v12 >= 1)
      {
        v31 = 0;
        do
        {
          v32 = *(a1 + 384) + 48 * v10;
          v33 = *(a1 + 108);
          v34 = *(v32 + 28) - v33 * v31;
          v35 = *(v32 + 32);
          v74[0] = *(v32 + 8) + 4 * v33 * v31;
          LODWORD(v74[1]) = v33;
          *(&v74[1] + 4) = *(v32 + 20);
          HIDWORD(v74[2]) = v34;
          v74[3] = v35;
          v73 = &unk_1F2CFA908;
          v36 = *(a1 + 160);
          v72[1] = 0;
          v37 = *(v36 + 8) + 4 * v33 * v9;
          v71 = &unk_1F2CFCA48;
          v72[0] = v37;
          LODWORD(v72[1]) = v33;
          v72[2] = *(v36 + 24);
          kaldi::CuMatrixBase<float>::AddVecToRows(&v73, &v71, 1.0, v8);
          v38 = *(a1 + 104);
          v39 = (*(a1 + 116) * v9 + *(a1 + 112) * v31) * v38;
          v40 = *(a2 + 8) + 4 * v39;
          v41 = *(a2 + 28) - v39;
          v42 = *(a2 + 32);
          LODWORD(v72[1]) = *(a1 + 124) * v38;
          *(&v72[1] + 4) = *(a2 + 20);
          HIDWORD(v72[2]) = v41;
          v72[3] = v42;
          v71 = &unk_1F2CFA908;
          v72[0] = v40;
          v43 = *(a1 + 152);
          LODWORD(v40) = *(a1 + 108);
          v44 = *(v43 + 8) + 4 * v40 * v9;
          v45 = *(v43 + 24);
          v46 = *(v43 + 28);
          v47 = *(v43 + 32);
          *(&v69 + 1) = __PAIR64__(v72[1], v40);
          LODWORD(v70) = v45;
          DWORD1(v70) = v46 - v40 * v9;
          *(&v70 + 1) = v47;
          v68 = &unk_1F2CFA908;
          *&v69 = v44;
          kaldi::CuMatrixBase<float>::AddMatMat(&v73, &v71, 111, &v68, 111);
          v68 = &unk_1F2CFA908;
          v69 = 0u;
          v70 = 0u;
          quasar::Bitmap::~Bitmap(&v68);
          v71 = &unk_1F2CFA908;
          memset(v72, 0, sizeof(v72));
          quasar::Bitmap::~Bitmap(&v71);
          v73 = &unk_1F2CFA908;
          memset(v74, 0, sizeof(v74));
          quasar::Bitmap::~Bitmap(&v73);
          ++v31;
          v9 = v66;
        }

        while (v31 < *(a1 + 120));
      }

      v48 = *(a1 + 148);
      a3 = v65;
      if (v48 >= 1)
      {
        for (j = 0; j < v48; ++j)
        {
          v50 = *(a1 + 108);
          v51 = v50 * (j + v48 * v66);
          v52 = *(v65 + 8) + 4 * v51;
          v53 = *(v65 + 28) - v51;
          v54 = *(v65 + 32);
          *(&v74[1] + 4) = *(v65 + 20);
          LODWORD(v74[1]) = v50;
          HIDWORD(v74[2]) = v53;
          v74[3] = v54;
          v73 = &unk_1F2CFA908;
          v74[0] = v52;
          v55 = *(a1 + 384) + 48 * v10;
          LODWORD(v52) = v50 * j * *(a1 + 136);
          v56 = *(v55 + 8) + 4 * v52;
          LODWORD(v52) = *(v55 + 28) - v52;
          v57 = *(v55 + 32);
          v72[0] = v56;
          LODWORD(v72[1]) = v50;
          *(&v72[1] + 4) = *(v55 + 20);
          HIDWORD(v72[2]) = v52;
          v72[3] = v57;
          v71 = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v73, &v71, 111);
          v71 = &unk_1F2CFA908;
          memset(v72, 0, sizeof(v72));
          quasar::Bitmap::~Bitmap(&v71);
          if (*(a1 + 132) >= 2)
          {
            v58 = 1;
            do
            {
              v59 = *(a1 + 384) + 48 * v10;
              v60 = *(a1 + 108);
              v61 = (v58 + j * *(a1 + 136)) * v60;
              v62 = *(v59 + 8) + 4 * v61;
              v63 = *(v59 + 28) - v61;
              v64 = *(v59 + 32);
              v72[0] = v62;
              LODWORD(v72[1]) = v60;
              *(&v72[1] + 4) = *(v59 + 20);
              HIDWORD(v72[2]) = v63;
              v72[3] = v64;
              v71 = &unk_1F2CFA908;
              kaldi::CuMatrixBase<float>::Max(&v73, &v71);
              v71 = &unk_1F2CFA908;
              memset(v72, 0, sizeof(v72));
              quasar::Bitmap::~Bitmap(&v71);
              ++v58;
            }

            while (v58 < *(a1 + 132));
          }

          v73 = &unk_1F2CFA908;
          memset(v74, 0, sizeof(v74));
          quasar::Bitmap::~Bitmap(&v73);
          v48 = *(a1 + 148);
        }
      }

      v9 = v66 + 1;
    }

    while (v66 + 1 < *(a1 + 144));
  }
}

void sub_1B5036394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v17 = 0u;
  v18 = 0u;
  quasar::Bitmap::~Bitmap(va);
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va1);
  *(v13 - 144) = a4;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v13 - 144));
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 > 1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 1;
  }

  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 336), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 384), v3);

  return std::vector<kaldi::CuMatrix<float>>::resize((a1 + 432), v3);
}

int *kaldi::CuMatrixBase<float>::CopyFromMat<float>(int *result, uint64_t a2, int a3)
{
  if (*(a2 + 20))
  {
    return kaldi::MatrixBase<float>::CopyFromMat<float>(result + 2, (a2 + 8), a3);
  }

  return result;
}

uint64_t *kaldi::CuMatrixBase<float>::AddVecToRows(uint64_t a1, uint64_t a2, float a3, float a4)
{
  if (*(a2 + 16) != *(a1 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Non matching dimensions: Cols:", 30);
    v9 = MEMORY[0x1B8C84C00](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " VectorDim:", 11);
    MEMORY[0x1B8C84C00](v10, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  if (a4 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a4);
  }

  return kaldi::MatrixBase<float>::AddVecToRows<float>((a1 + 8), (a2 + 8), a3);
}

int *kaldi::MatrixBase<float>::CopyFromMat<float>(int *result, int *a2, int a3)
{
  if (a2 != result)
  {
    v30 = v3;
    v31 = v4;
    v6 = result;
    if (a3 == 111)
    {
      if (result[3] >= 1)
      {
        v7 = 0;
        do
        {
          v8 = *v6 + 4 * v6[4] * v7;
          v9 = v6[2];
          v28 = 0;
          v29 = 0;
          v26 = v8;
          v27 = v9;
          v10 = (*a2 + 4 * a2[4] * v7);
          v11 = a2[2];
          v24 = 0;
          v25 = 0;
          v22 = v10;
          v23 = v11;
          result = kaldi::VectorBase<float>::CopyFromVec(&v26, &v22);
          ++v7;
        }

        while (v7 < v6[3]);
      }
    }

    else
    {
      v12 = result[3];
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = result[2];
        v15 = *result;
        v16 = *a2;
        v17 = 4 * result[4];
        v18 = 4 * a2[4];
        do
        {
          v19 = v14;
          v20 = v16;
          v21 = v15;
          if (v14 >= 1)
          {
            do
            {
              *v21++ = *v20;
              v20 = (v20 + v18);
              --v19;
            }

            while (v19);
          }

          ++v13;
          v15 = (v15 + v17);
          ++v16;
        }

        while (v13 != v12);
      }
    }
  }

  return result;
}

void kaldi::nnet1::PaddingComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, int16x4_t a4)
{
  a4.i32[0] = a1[12];
  kaldi::CuMatrixBase<float>::Set(a3, a4);
  v7 = a1[13];
  v8 = *(a3 + 8) + 4 * v7;
  LODWORD(v7) = *(a3 + 28) - v7;
  v9 = *(a3 + 32);
  LODWORD(v24[1]) = *(a2 + 16) - a1[15];
  *(&v24[1] + 4) = *(a3 + 20);
  HIDWORD(v24[2]) = v7;
  v24[3] = v9;
  v23 = &unk_1F2CFA908;
  v24[0] = v8;
  v10 = *(a2 + 8);
  LODWORD(v8) = *(a2 + 28);
  v11 = *(a2 + 32);
  DWORD2(v22[0]) = v24[1];
  *(v22 + 12) = *(a2 + 20);
  DWORD1(v22[1]) = v8;
  *(&v22[1] + 1) = v11;
  v21 = &unk_1F2CFA908;
  *&v22[0] = v10;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v23, &v21, 111);
  v21 = &unk_1F2CFA908;
  memset(v22, 0, sizeof(v22));
  quasar::Bitmap::~Bitmap(&v21);
  v23 = &unk_1F2CFA908;
  memset(v24, 0, sizeof(v24));
  quasar::Bitmap::~Bitmap(&v23);
  v12 = a1[15];
  if (v12 >= 1)
  {
    v13 = *(a3 + 16) - v12;
    v14 = *(a3 + 8) + 4 * v13;
    v15 = *(a3 + 28) - v13;
    v16 = *(a3 + 32);
    LODWORD(v24[1]) = a1[15];
    *(&v24[1] + 4) = *(a3 + 20);
    HIDWORD(v24[2]) = v15;
    v24[3] = v16;
    v23 = &unk_1F2CFA908;
    v24[0] = v14;
    v17 = *(a2 + 16) - v12;
    v18 = *(a2 + 8) + 4 * v17;
    v19 = *(a2 + 28) - v17;
    v20 = *(a2 + 32);
    DWORD2(v22[0]) = v12;
    *(v22 + 12) = *(a2 + 20);
    DWORD1(v22[1]) = v19;
    *(&v22[1] + 1) = v20;
    v21 = &unk_1F2CFA908;
    *&v22[0] = v18;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v23, &v21, 111);
    v21 = &unk_1F2CFA908;
    memset(v22, 0, sizeof(v22));
    quasar::Bitmap::~Bitmap(&v21);
    v23 = &unk_1F2CFA908;
    memset(v24, 0, sizeof(v24));
    quasar::Bitmap::~Bitmap(&v23);
  }
}

void sub_1B5036954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::MatrixBase<float>::Set(uint64_t result, int16x4_t a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 8);
    v5 = vdupq_n_s64(v4 - 1);
    v6 = vdupq_n_s64(4uLL);
    do
    {
      if (v4 >= 1)
      {
        v7 = (*result + 4 * *(result + 16) * v3 + 8);
        v8 = (v4 + 3) & 0xFFFFFFFC;
        v9 = xmmword_1B5AE0060;
        v10 = xmmword_1B5AE0050;
        do
        {
          v11 = vmovn_s64(vcgeq_u64(v5, v9));
          if (vuzp1_s16(v11, a2).u8[0])
          {
            *(v7 - 2) = a2.i32[0];
          }

          if (vuzp1_s16(v11, a2).i8[2])
          {
            *(v7 - 1) = a2.i32[0];
          }

          if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v5, *&v10))).i32[1])
          {
            *v7 = a2.i32[0];
            v7[1] = a2.i32[0];
          }

          v10 = vaddq_s64(v10, v6);
          v9 = vaddq_s64(v9, v6);
          v7 += 4;
          v8 -= 4;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void quasar::TextSanitizer::~TextSanitizer(quasar::TextSanitizer *this)
{
  *this = &unk_1F2D30340;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 80);
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void quasar::URegularExpressionWrapper::~URegularExpressionWrapper(URegularExpression **this)
{
  v1 = *this;
  if (v1)
  {
    uregex_close(v1);
  }
}

void std::allocator<quasar::LmeContainer>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  v3 = *(a2 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::CuMatrix<float>::CuMatrix(a4 + v7, v8, 111);
      v8 += 6;
      v7 += 48;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 6;
        result = (*(v12 + 16))(v6);
        v10 += 6;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_1B5036DC8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::MatrixBase<float>::Scale(uint64_t result, float a2)
{
  if (a2 != 1.0)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3)
    {
      if (*(result + 8) == *(result + 16))
      {

        return cblas_sscal_NEWLAPACK_ILP64();
      }

      else if (v3 >= 1)
      {
        v4 = 0;
        v5 = *result;
        do
        {
          result = cblas_sscal_NEWLAPACK_ILP64();
          ++v4;
          v5 += 4 * *(v2 + 16);
        }

        while (v4 < *(v2 + 12));
      }
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::Max(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = *result;
    v6 = *a2;
    v7 = 4 * *(a2 + 16);
    v8 = 4 * *(result + 16);
    do
    {
      v9 = v4;
      v10 = v5;
      v11 = v6;
      if (v4 >= 1)
      {
        do
        {
          v12 = *v11++;
          v13 = v12;
          if (*v10 >= v12)
          {
            v13 = *v10;
          }

          *v10++ = v13;
          --v9;
        }

        while (v9);
      }

      ++v3;
      v6 = (v6 + v7);
      v5 = (v5 + v8);
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::Sigmoid(uint64_t a1, const void **a2)
{
  if (*a1 != *a2)
  {
    memcpy(*a1, *a2, 4 * *(a1 + 8));
  }

  cblas_sscal_NEWLAPACK_ILP64();
  v6 = *(a1 + 8);
  vvtanhf(*a1, *a1, &v6);
  if (*(a1 + 8) >= 1)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    do
    {
      *v3 = *v3 + 1.0;
      ++v3;
      --v4;
    }

    while (v4);
  }

  return cblas_sscal_NEWLAPACK_ILP64();
}

uint64_t kaldi::MatrixBase<float>::Sigmoid(uint64_t result, uint64_t a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 12);
  if (v5 == *(result + 16) && v5 == *(a2 + 16))
  {
    v8 = *a2;
    v14 = 0;
    v11 = 0;
    v12 = v8;
    v13 = (v5 * v4);
    v9 = *result;
    v10 = v13;
    return kaldi::VectorBase<float>::Sigmoid(&v9, &v12);
  }

  else if (v4 >= 1)
  {
    v7 = 0;
    do
    {
      v13 = 0;
      v14 = 0;
      v12 = *a2 + 4 * *(a2 + 16) * v7;
      LODWORD(v13) = *(a2 + 8);
      v10 = 0;
      v11 = 0;
      v9 = *v3 + 4 * *(v3 + 16) * v7;
      LODWORD(v10) = *(v3 + 8);
      result = kaldi::VectorBase<float>::Sigmoid(&v9, &v12);
      ++v7;
    }

    while (v7 < *(v3 + 12));
  }

  return result;
}

uint64_t kaldi::nnet1::Sigmoid::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return kaldi::CuMatrixBase<float>::Sigmoid(a3, a2);
}

{
  return kaldi::CuVectorBase<float>::Sigmoid(a3, a2);
}

uint64_t kaldi::nnet1::AffineTransform::Bias(kaldi::nnet1::AffineTransform *this)
{
  result = *(this + 15);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::Linearity(kaldi::nnet1::AffineTransform *this)
{
  result = *(this + 14);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "linearity_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::CuMatrixBase<float>::AddMatMat(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = (a4 + 20);
  if (a5 != 112)
  {
    v5 = (a4 + 16);
  }

  if (*v5)
  {
    return kaldi::MatrixBase<float>::AddMatMat(result + 8, a2 + 8, a3, a4 + 8, a5);
  }

  return result;
}

uint64_t *kaldi::MatrixBase<float>::AddVecToRows<float>(uint64_t *result, uint64_t *a2, float a3)
{
  v3 = *(result + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 2);
    v6 = *a2;
    v7 = *result;
    v8 = 4 * *(result + 4);
    do
    {
      if (v5 >= 1)
      {
        v9 = 0;
        do
        {
          *(v7 + v9) = *(v7 + v9) + (a3 * *(v6 + v9));
          v9 += 4;
        }

        while (4 * v5 != v9);
      }

      ++v4;
      v7 += v8;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddMatMat(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3 == 111 && a5 == 111)
  {
    v5 = *(a2 + 12);
  }

  else if (a3 == 112 && a5 == 111)
  {
    v5 = *(a2 + 8);
  }

  else if (a3 == 111 && a5 == 112)
  {
    v5 = *(a2 + 8);
    if (v5 == *(a4 + 8) && *(a2 + 12) == *(result + 12) && *(a4 + 12) == *(result + 8))
    {
      v6 = *(a2 + 12);
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = v5;
LABEL_15:
  if (v6)
  {
    return cblas_sgemm_NEWLAPACK_ILP64();
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, v8, 1.0, 0.0);
  v9 = *(a1 + 352);
  if (v9 == *(a1 + 360) || !*(v9 + 48 * a4 + 20))
  {
    v12 = kaldi::nnet1::AffineTransform::Linearity(a1);
    result = kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, v12, 112);
  }

  else
  {
    v10 = kaldi::nnet1::AffineTransform::Linearity(a1);
    result = kaldi::CuMatrixBase<float>::AddMatMatMasked(a3, a2, 111, v10, 112);
  }

  if (*(a1 + 128) == 1)
  {

    return kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(a3, a3);
  }

  return result;
}

void quasar::OnlineNnetForwardFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v4 = *(a1 + 97);
    if (v4 == 1 && *(a1 + 96) == 1)
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
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v26, "Nonsense option combination : --apply-log=true and --no-softmax=true");
    }

    else
    {
      if (*(a1 + 231) < 0)
      {
        if (!*(a1 + 216))
        {
LABEL_9:
          v5 = *(a1 + 632);
          if (!v5)
          {
            goto LABEL_23;
          }

          if (!v6)
          {
            goto LABEL_23;
          }

          v7 = *(a1 + 640);
          if (v7)
          {
            atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
            if ((*(a1 + 97) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else if ((v4 & 1) == 0)
          {
            goto LABEL_23;
          }

          Component = kaldi::nnet1::Nnet::GetComponent((v6 + 1), ((v6[2] - v6[1]) >> 3) - 1);
          if ((*(*Component + 24))(Component) != 513)
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
            v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Used --apply-log=true, but nnet ", 32);
            v12 = *(a1 + 48);
            v11 = a1 + 48;
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
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " does not have <softmax> as last component!", 43);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v26);
          }

LABEL_23:
          if (*(a1 + 144) == *(a1 + 152))
          {
            std::vector<int>::push_back[abi:ne200100]((a1 + 144), (a1 + 136));
            std::vector<int>::push_back[abi:ne200100]((a1 + 144), (a1 + 136));
            std::vector<int>::push_back[abi:ne200100]((a1 + 144), (a1 + 136));
          }

          std::allocate_shared[abi:ne200100]<kaldi::OnlineNnetForwardInput,std::allocator<kaldi::OnlineNnetForwardInput>,kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::FeedForwardNetItf> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,kaldi::InferenceNetItf *,int &,int &,std::vector<int> &,BOOL &,BOOL &,int &,BOOL &,BOOL &,0>();
        }
      }

      else if (!*(a1 + 231))
      {
        goto LABEL_9;
      }

      if ((*(a1 + 96) | v4))
      {
        goto LABEL_9;
      }

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
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Option --class-frame-counts has to be used together with ", 57);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "--no-softmax or --apply-log");
    }
  }

  else
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
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "'", 1);
    v20 = *(a1 + 8);
    v19 = a1 + 8;
    v18 = v20;
    v21 = *(v19 + 23);
    if (v21 >= 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    if (v21 >= 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = *(v19 + 8);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v22, v23);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "' cannot occur at the first stage of feature-extract");
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v26);
}

void sub_1B5037830(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5037A84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<kaldi::OnlineNnetForwardInput>::construct[abi:ne200100]<kaldi::OnlineNnetForwardInput,kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::FeedForwardNetItf> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,kaldi::InferenceNetItf *,int &,int &,std::vector<int> &,BOOL &,BOOL &,int &,BOOL &,BOOL &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, __int128 *a6, uint64_t *a7, char *a8, char *a9, uint64_t *a10, int *a11, int *a12, uint64_t *a13, char *a14, char *a15, int *a16, char *a17, char *a18)
{
  v18 = *a3;
  v19 = *a4;
  v28 = *a7;
  v26 = *a9;
  v27 = *a8;
  v20 = *a10;
  v21 = *a11;
  v22 = *a12;
  v33 = 0;
  v34 = 0;
  v23 = *a13;
  v24 = a13[1];
  v25 = (v24 - *a13) >> 2;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v23, v24, v25);
  kaldi::OnlineNnetForwardInput::OnlineNnetForwardInput(a2, v18, v19, a5, a6, v28, v27, v26, v20, v21, v22, &__p, *a14, *a15, *a16, *a17, *a18);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_1B5037CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::OnlineNnetForwardInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::FeedForwardNetItf> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,kaldi::InferenceNetItf *,int &,int &,std::vector<int> &,BOOL &,BOOL &,int &,BOOL &,BOOL &,std::allocator<kaldi::OnlineNnetForwardInput>,0>(void *a1, uint64_t *a2, uint64_t *a3, void *a4, __int128 *a5, uint64_t *a6, char *a7, char *a8, uint64_t *a9, int *a10, int *a11, uint64_t *a12, char *a13, char *a14, int *a15, char *a16, char *a17)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24198;
  std::allocator<kaldi::OnlineNnetForwardInput>::construct[abi:ne200100]<kaldi::OnlineNnetForwardInput,kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::FeedForwardNetItf> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,kaldi::InferenceNetItf *,int &,int &,std::vector<int> &,BOOL &,BOOL &,int &,BOOL &,BOOL &>(&v19, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  return a1;
}

uint64_t kaldi::OnlineNnetForwardInput::OnlineNnetForwardInput(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5, uint64_t a6, char a7, char a8, uint64_t a9, int a10, int a11, uint64_t *a12, char a13, char a14, int a15, char a16, char a17)
{
  v52 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D21D48;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = *a4;
  v23 = a4[1];
  *(a1 + 32) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a5, *(a5 + 1));
  }

  else
  {
    v24 = *a5;
    *(a1 + 56) = *(a5 + 2);
    *(a1 + 40) = v24;
  }

  v25 = *(a5 + 3);
  *(a1 + 104) = 0u;
  *(a1 + 64) = v25;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  *(a1 + 81) = a8;
  *(a1 + 88) = a9;
  *(a1 + 96) = a11 + a10;
  *(a1 + 120) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 112, *a12, a12[1], (a12[1] - *a12) >> 2);
  *(a1 + 136) = a13;
  *(a1 + 137) = a14;
  *(a1 + 140) = a15;
  kaldi::Matrix<float>::Matrix(a1 + 144);
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = &unk_1F2D0EE38;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 248) = &unk_1F2D0EE38;
  *(a1 + 288) = 0;
  *(a1 + 296) = a16;
  *(a1 + 297) = a17;
  v26 = *(a1 + 112);
  v27 = *(a1 + 120);
  if (v26 == v27)
  {
    __src = 0;
    v50 = 0;
    std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>((a1 + 112), &__src, v51, 3uLL);
    v29 = **(a1 + 112);
  }

  else
  {
    if (v27 - v26 != 12)
    {
      if (!(*(**(a1 + 24) + 72))(*(a1 + 24)))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "strict-batch-sizes supports only 3 sizes", 40);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
      }

      v26 = *(a1 + 112);
    }

    v29 = *v26;
    v28 = v26[1];
    v30 = v26[2];
    if (v28 > v30)
    {
      v30 = v28;
    }

    if (v29 < v30)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "Model input size must be greater than other batch sizes in strict-batch-sizes", 77);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
    }
  }

  if (*(a1 + 137) == 1 && v29 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "append-pad-info cannot be set if strict-batch-size is <= 0", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  if (*(a1 + 136) == 1 && v29 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "zero-pad cannot be set if strict-batch-size is <= 0", 51);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  if (*(a1 + 140) >= 1 && v29 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "append-context-size cannot be set if strict-batch-size is <= 0", 62);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  *(a1 + 184) = 0;
  v31 = *(a1 + 24);
  {
    v33 = *(a1 + 32);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v32 + 152))(v32);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(a1 + 16);
  if (v34 && ((*(v34 + 1) - *v34) >> 3) >= 1)
  {
    v35 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(v34, v35);
      if ((*(*Component + 24))(Component) == 1026)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "nnet transformation contains splicing, which is not ", 52);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "supported by OnlineNnetForwardInput. Use a separate splice ", 59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "operation to perform splicing.", 30);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
      }

      ++v35;
      v34 = *(a1 + 16);
    }

    while (v35 < ((*(v34 + 1) - *v34) >> 3));
  }

  v37 = *(a1 + 24);
  {
    v39 = v38;
    v40 = *(a1 + 32);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (((v38[2] - v38[1]) >> 3) >= 1)
    {
      v41 = 0;
      do
      {
        v42 = kaldi::nnet1::Nnet::GetComponent((v39 + 1), v41);
        if ((*(*v42 + 24))(v42) == 1026)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "nnet contains splicing, which is not supported by ", 50);
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "OnlineNnetForwardInput. Use a separate splice operation to ", 59);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "perform splicing.", 17);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
        }

        ++v41;
      }

      while (v41 < ((v39[2] - v39[1]) >> 3));
    }
  }

  else
  {
    v40 = 0;
  }

  if (*a4 && (*(**a4 + 72))(*a4))
  {
    v43 = a12[1];
    if (*a12 == v43 || memcmp((*a12 + 4), *a12, v43 - (*a12 + 4)))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "strict-batch-size should be defined or strict-bath-sizes should have same value with streaming model", 100);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
    }

    if (*(a1 + 296) == 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "legacy streaming settings is not supported with streaming model", 63);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
    }

    if (((*(a1 + 137) & 1) != 0 || *(a1 + 140) >= 1) && (*(**a4 + 80))())
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "legacy masking is not supported with streaming model specified maskings as input", 80);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
    }
  }

  if (*(a1 + 96) >= 1)
  {
    operator new();
  }

  if (v29 >= 1)
  {
    operator new();
  }

  if (*(a1 + 297) == 1 && !v29)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "one row output can only be applied with fixed batch size input", 62);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  return a1;
}

void sub_1B5038630(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5038710);
}

void sub_1B5038654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  kaldi::CuMatrix<float>::~CuMatrix(a10);
  kaldi::CuMatrix<float>::~CuMatrix(a11);
  v15 = *(v11 + 192);
  *(v11 + 192) = 0;
  if (v15)
  {
    (*(*v15 + 80))(v15);
  }

  kaldi::Matrix<float>::~Matrix(v11 + 144);
  v16 = v13[1];
  if (v16)
  {
    *(v11 + 120) = v16;
    operator delete(v16);
  }

  v17 = *v13;
  *v13 = 0;
  if (v17)
  {
    (*(*v17 + 80))(v17);
  }

  if (*(v11 + 63) < 0)
  {
    operator delete(*(v11 + 40));
  }

  v18 = *(v11 + 32);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  quasar::Bitmap::~Bitmap(v11);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet1InferenceNet::ResetHistoryState(uint64_t this)
{
  v1 = *(this + 392);
  v2 = *(this + 400);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 32))(v3);
  }

  return this;
}

void quasar::SilencePosteriorGenerator::init(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 24);
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = *a2;
  v11 = *(a2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 8);
  *a1 = v12;
  *(a1 + 8) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v27 = a4;
  v28 = 0;
  v29 = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v37 = 0u;
  memset(v38, 0, 28);
  memset(&v38[32], 0, 48);
  v38[80] = 1;
  v14 = *a2;
  v15 = **a2;
  v16 = *(*a2 + 8);
  if (v15 != v16)
  {
    do
    {
      v17 = *v15;
      if (*a3)
      {
        v18 = *a3 + 16;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(a1 + 40);
      v24 = *(a1 + 32);
      v25 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::FeatureExtractor::createOnlineFeInput(v17, v18, &v24);
      std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100]((a1 + 48), &v26);
      if (*(&v26 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v20 = *(a1 + 56);
      v22 = *(v20 - 16);
      v21 = *(v20 - 8);
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      v23 = *(a1 + 40);
      *(a1 + 32) = v22;
      *(a1 + 40) = v21;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v15 += 2;
    }

    while (v15 != v16);
    v14 = *a2;
  }

  if (v14[5])
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineBufferingInput,std::allocator<kaldi::OnlineBufferingInput>,kaldi::OnlineFeatInputItf *,0>();
  }

  *(a1 + 88) = (*(**(a1 + 32) + 24))(*(a1 + 32));
  operator new();
}

void sub_1B5038A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void quasar::FeatureExtractor::createOnlineFeInput(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 32) != 1)
  {
    memset(v15, 0, sizeof(v15));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Must call init() for ", 21);
    v8 = *(a1 + 8);
    v7 = a1 + 8;
    v6 = v8;
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = *(v7 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, " before calling createOnlineFeInput().");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v15);
  }

  v3 = a3[1];
  v13 = *a3;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(a1, a2, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1B5038CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SilencePosteriorGenerator::estimateSilenceDuration(uint64_t a1, const void **a2)
{
  kaldi::Matrix<float>::Matrix(v9, 1, 2, 0, 0);
  v4 = *(a1 + 32);
  kaldi::OnlineFeatInputItfIO::OnlineFeatInputItfIO(v8, v9, 0, 0, 0, 0, 0);
  *(a1 + 80) = (**v4)(v4, v8);
  if (kaldi::MatrixBase<float>::NumRows(v9) >= 1)
  {
    if (*(*a1 + 40) == 1 && kaldi::MatrixBase<float>::NumRows(v9) != 1)
    {
      memset(v8, 0, sizeof(v8));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "frameByFrame requires output batch size of 1", 44);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
    }

    quasar::NFHatTransformer::estimateSilenceDuration(*(a1 + 72), v9, *(a1 + 88), a2);
    *(a1 + 84) += *(a1 + 88) * kaldi::MatrixBase<float>::NumRows(v9);
    v5 = kaldi::MatrixBase<float>::NumRows(v9);
    *(a1 + 92) = *(v9[0] + 4 * v10 * (v5 - 1));
  }

  v6 = *(a1 + 80);
  kaldi::Matrix<float>::~Matrix(v9);
  return v6;
}

void fst::MappedFile::Map(uint64_t a1, uint64_t a2, fst::MappedFile *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  std::istream::tellg();
  v4 = v43;
  v5 = a2;
  v6 = *(a2 + 48);
  v7 = v43 & 0xF;
  if ((v6 - 1) <= 1 && v7 == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = open(v14, 0);
    if (v15 == -1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v19 = fst::LogMessage::LogMessage(v39, __p);
      v20 = fst::cerr(v19);
      v5 = a2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Mapping of file failed: invalid file descriptor", 47);
    }

    else
    {
      v16 = sysconf(29);
      v17 = v43 % v16;
      v18 = mmap(0, a3 + v17, 1, 1, v15, v43 / v16 * v16);
      if (!close(v15) && v18 != -1)
      {
        __p[1] = v18;
        v41 = a3 + v17;
        __p[0] = &v18[v17];
        v42 = v17;
        operator new();
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v21 = fst::LogMessage::LogMessage(v39, __p);
      v22 = fst::cerr(v21);
      v5 = a2;
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Mapping of file failed: ", 24);
      v24 = __error();
      v25 = strerror(*v24);
      v26 = strlen(v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    }
  }

  else
  {
    if ((v6 - 3) < 0xFFFFFFFE || v7 == 0)
    {
      goto LABEL_21;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v10 = fst::LogMessage::LogMessage(v39, __p);
    v11 = fst::cerr(v10);
    v5 = a2;
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Mapping of file failed: stream position ", 40);
    v13 = MEMORY[0x1B8C84C30](v12, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " is not aligned", 15);
  }

  fst::LogMessage::~LogMessage(v39);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  if (*(v5 + 48))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
    v27 = fst::LogMessage::LogMessage(v39, __p);
    v28 = fst::cerr(v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "File mapping at offset ", 23);
    v30 = MEMORY[0x1B8C84C30](v29, v4);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " of size ", 9);
    v32 = MEMORY[0x1B8C84C30](v31, a3);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " of file ", 9);
    v34 = *(a2 + 23);
    if (v34 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    if (v34 >= 0)
    {
      v36 = *(a2 + 23);
    }

    else
    {
      v36 = *(a2 + 8);
    }

    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " could not be honored, reading instead.", 39);
    fst::LogMessage::~LogMessage(v39);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }
  }

  fst::MappedFile::Allocate(a3, 16);
}

void sub_1B5039898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::MappedFile::MappedFile(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  *a1 = &unk_1F2D04A28;
  v6 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v6;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v7;
  }

  *(a1 + 64) = a4;
  *(a1 + 68) = 0;
  return a1;
}

void fst::MappedFile::SetLocked(fst::MappedFile *this, int a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(this + 16);
  if (v2 > 0.0 && *(this + 68) != a2)
  {
    v4 = *(this + 3);
    if (v2 < 1.0)
    {
      v5 = v2 * v4;
      if (v5 < v4)
      {
        v4 = v5;
      }
    }

    v6 = *(this + 2);
    if (a2)
    {
      v7 = mlock(v6, v4);
      v8 = v7;
      if (!v7)
      {
        *(this + 68) = 1;
      }

      v9 = EARLogger::QuasarOSLogger(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (this + 40);
        if (*(this + 63) < 0)
        {
          v10 = *v10;
        }

        v11 = *(this + 3);
        v12 = *(this + 16);
        v13 = *(this + 68);
        if (v8)
        {
          v14 = *__error();
          v15 = __error();
          v16 = strerror(*v15);
        }

        else
        {
          v14 = 0;
          v16 = "";
        }

        *__p = 136316930;
        *&__p[4] = v10;
        v37 = 2048;
        v38 = v11;
        v39 = 2048;
        v40 = v12;
        v41 = 2048;
        v42 = v4;
        v43 = 1024;
        v44 = v13;
        v45 = 1024;
        v46 = v8;
        v47 = 1024;
        v48 = v14;
        v49 = 2080;
        v50 = v16;
        v33 = "mlock source %s size %lu mlock_fraction %f mlock_size %lu locked_ %d ret %d errno %d strerror %s";
        v34 = v9;
LABEL_27:
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, v33, __p, 0x46u);
      }
    }

    else
    {
      v17 = munlock(v6, v4);
      v18 = v17;
      if (v17)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
        v19 = fst::LogMessage::LogMessage(&v35, __p);
        v20 = fst::cerr(v19);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Memory unlock of file failed: ", 30);
        v22 = __error();
        v23 = strerror(*v22);
        v24 = strlen(v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
        fst::LogMessage::~LogMessage(&v35);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(*__p);
        }
      }

      else
      {
        *(this + 68) = 0;
      }

      v25 = EARLogger::QuasarOSLogger(v17);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = (this + 40);
        if (*(this + 63) < 0)
        {
          v26 = *v26;
        }

        v27 = *(this + 3);
        v28 = *(this + 16);
        v29 = *(this + 68);
        if (v18)
        {
          v30 = *__error();
          v31 = __error();
          v32 = strerror(*v31);
        }

        else
        {
          v30 = 0;
          v32 = "";
        }

        *__p = 136316930;
        *&__p[4] = v26;
        v37 = 2048;
        v38 = v27;
        v39 = 2048;
        v40 = v28;
        v41 = 2048;
        v42 = v4;
        v43 = 1024;
        v44 = v29;
        v45 = 1024;
        v46 = v18;
        v47 = 1024;
        v48 = v30;
        v49 = 2080;
        v50 = v32;
        v33 = "munlock source %s size %lu mlock_fraction %f mlock_size %lu locked_ %d ret %d errno %d strerror %s";
        v34 = v25;
        goto LABEL_27;
      }
    }
  }
}

void sub_1B5039CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::Vector<float>::Resize(void **a1, uint64_t a2, int a3)
{
  v3 = a2;
  v5 = *a1;
  if (!a3)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (!v5)
      {
        kaldi::Vector<float>::Init(a1, a2);
LABEL_25:
        v5 = *a1;
        v9 = 4 * *(a1 + 2);
LABEL_26:

        bzero(v5, v9);
        return;
      }

      if (*(a1 + 2) == a2)
      {
        return;
      }

      v6 = 1;
LABEL_14:
      if (*(a1 + 3) >= a2)
      {
        *(a1 + 2) = a2;
      }

      else if (*(a1 + 2) != a2)
      {
        free(v5);
        *a1 = 0;
        a1[1] = 0;
        kaldi::Vector<float>::Init(a1, v3);
        if ((v6 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (!v6)
      {
        return;
      }

      v9 = 4 * a2;
      goto LABEL_26;
    }

    v6 = 0;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_19:
    kaldi::Vector<float>::Init(a1, a2);
    if (!v6)
    {
      return;
    }

    goto LABEL_25;
  }

  v6 = 1;
  if (!a2 || !v5)
  {
LABEL_13:
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(a1 + 3) >= a2)
  {
    v10 = *(a1 + 2);
    if (a2 > v10)
    {
      bzero(&v5[4 * v10], 4 * (a2 - v10));
    }

    *(a1 + 2) = v3;
  }

  else
  {
    __dst = 0;
    v15 = 0;
    v16 = 0;
    kaldi::Vector<float>::Resize(&__dst, a2, 1);
    v7 = *(a1 + 2);
    v8 = *a1;
    if (v7 >= v3)
    {
      memcpy(__dst, v8, 4 * v3);
    }

    else
    {
      memcpy(__dst, v8, 4 * v7);
      bzero(__dst + 4 * *(a1 + 2), 4 * (v3 - *(a1 + 2)));
    }

    v11 = __dst;
    __dst = *a1;
    v12 = __dst;
    *a1 = v11;
    v13 = v15;
    v15 = a1[1];
    a1[1] = v13;
    if (v12)
    {
      free(v12);
    }
  }
}

void kaldi::Input::~Input(kaldi::Input *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 40))(v2);
    *this = 0;
  }
}

void kaldi::FileInputImpl::~FileInputImpl(kaldi::FileInputImpl *this)
{
  kaldi::FileInputImpl::~FileInputImpl(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D3C058;
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *(this + 1) = *MEMORY[0x1E69E54C8];
  *(this + *(v3 - 24) + 8) = *(v2 + 24);
  MEMORY[0x1B8C84A00](this + 24);
  std::istream::~istream();
  MEMORY[0x1B8C85200](this + 432);
}

uint64_t kaldi::FileInputImpl::Stream(kaldi::FileInputImpl *this)
{
  if (!*(this + 18))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "FileInputImpl::Stream(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return this + 8;
}

uint64_t kaldi::Input::Stream(kaldi::Input *this)
{
  v1 = *this;
  if (!v1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Input::Stream(), not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = *(*v1 + 8);

  return v2();
}

uint64_t kaldi::nnet1::Component::Read(uint64_t *a1, int a2)
{
  v17 = 0;
  v18 = 0;
  __p = 0;
  v16 = 0;
  if (kaldi::Peek(a1, a2) == -1)
  {
    return 0;
  }

  kaldi::ReadToken(a1, a2, &__p);
  v4 = HIBYTE(v17);
  if (SHIBYTE(v17) < 0)
  {
    if (v16 != 6)
    {
      goto LABEL_16;
    }

    p_p = __p;
LABEL_8:
    v6 = *p_p;
    v7 = p_p[2];
    if (v6 == 1701727804 && v7 == 15988)
    {
      kaldi::ReadToken(a1, a2, &__p);
      v4 = HIBYTE(v17);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (v16 != 7)
    {
      goto LABEL_22;
    }

    v9 = __p;
    goto LABEL_18;
  }

  if (HIBYTE(v17) == 6)
  {
    p_p = &__p;
    goto LABEL_8;
  }

LABEL_13:
  if (v4 != 7)
  {
    goto LABEL_22;
  }

  v9 = &__p;
LABEL_18:
  v10 = *v9;
  v11 = *(v9 + 3);
  if (v10 != 1850617660 || v11 != 1047815534)
  {
LABEL_22:
    kaldi::ReadBasicType<int>(a1, a2, &v18 + 4);
    kaldi::ReadBasicType<int>(a1, a2, &v18);
    v13 = kaldi::nnet1::Component::MarkerToComponentType(&__p);
    kaldi::nnet1::Component::NewComponentOfType(v13);
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1B503A2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Nnet::Read(kaldi::nnet1::Nnet *a1, uint64_t *a2, int a3)
{
  v6 = a2;
  for (i = a3; ; i = a3)
  {
    v8 = kaldi::nnet1::Component::Read(v6, i);
    v15 = v8;
    if (!v8)
    {
      break;
    }

    v9 = *(a1 + 1);
    if (((v9 - *a1) >> 3) >= 1 && *(*(v9 - 8) + 12) != *(v8 + 8))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Dimensionality mismatch!", 24);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " Previous layer output:", 23);
      v12 = MEMORY[0x1B8C84C00](v11, *(*(*(a1 + 1) - 8) + 12));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " Current layer input:", 21);
      MEMORY[0x1B8C84C00](v13, *(v15 + 8));
      goto LABEL_10;
    }

    std::vector<TVertex *>::push_back[abi:ne200100](a1, &v15);
    v6 = a2;
  }

  if (((*(a1 + 1) - *a1) >> 3) <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Could not read any components");
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  *(*(a1 + 18) + 8) = 0;
  kaldi::nnet1::Nnet::ResetInternalBuffers(a1);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(a1);
}

uint64_t kaldi::Peek(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  return std::istream::peek();
}

uint64_t kaldi::InitKaldiInputStream(uint64_t a1, _BYTE *a2)
{
  if (std::istream::peek())
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    std::istream::get();
    v4 = std::istream::peek();
    if (v4 << 24 == 1107296256)
    {
      std::istream::get();
      result = 1;
      *a2 = 1;
    }

    else
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        v5 = v4;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Was looking for B, but got ", 27);
        v7 = MEMORY[0x1B8C84C00](v6, v5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v8);
      }

      return 0;
    }
  }

  return result;
}

uint64_t kaldi::ReadToken(uint64_t *a1, char a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3);
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadToken, failed to read token at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v8, v14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v5 = std::istream::peek();
  if (v5 <= 0x7F)
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x4000;
  }

  else
  {
    v6 = __maskrune(v5, 0x4000uLL);
  }

  if (!v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadToken, expected space after token, saw instead ", 51);
    v13[0] = std::istream::peek();
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v13, 1);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v11, v14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return std::istream::get();
}

void sub_1B503A708(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x1B8C84A90](&v20, a1, 0);
  if (v20 != 1)
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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1B503A958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B503A918);
  }

  __cxa_rethrow();
}

uint64_t kaldi::ReadBasicType<int>(void *a1, int a2, uint64_t a3)
{
  v16[51] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = std::istream::get();
    if (v4 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    v5 = v4;
    if (v4 << 24 != 0x4000000)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ReadBasicType: did not get expected integer type, ", 50);
      v12 = MEMORY[0x1B8C84C00](v11, v5);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " vs. ", 5);
      v14 = MEMORY[0x1B8C84C00](v13, 4);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    result = std::istream::read();
  }

  else
  {
    result = MEMORY[0x1B8C84AE0](a1, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v8 = MEMORY[0x1B8C84C60](v7, v16[50]);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", next char is ", 15);
    v10 = std::istream::peek();
    MEMORY[0x1B8C84C00](v9, v10);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  return result;
}

void sub_1B503ABD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

std::string::size_type kaldi::nnet1::Component::MarkerToComponentType(std::string::size_type *a1)
{
  ComponentTypeMap = kaldi::nnet1::Component::GetComponentTypeMap(a1);
  v4 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(ComponentTypeMap, a1);
  v5 = kaldi::nnet1::Component::GetComponentTypeMap(v4);
  if ((v5 + 8) != v4)
  {
    return v4[14];
  }

  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *a1, a1[1]);
    v6 = *(a1 + 23);
    if (v6 < 0)
    {
      v8 = *a1;
      v7 = a1[1];
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v38 = *a1;
  }

  v7 = v6;
  v8 = a1;
  if (v6)
  {
LABEL_7:
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v1 = &v38;
    }

    else
    {
      v1 = v38.__r_.__value_.__r.__words[0];
    }

    do
    {
      v5 = __tolower(*v8);
      *v1++ = v5;
      ++v8;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  v9 = kaldi::nnet1::Component::GetComponentTypeMap(v5);
  v10 = *v9;
  while (1)
  {
    v9 = kaldi::nnet1::Component::GetComponentTypeMap(v9);
    if (v10 == (v9 + 8))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unknown component type marker: ", 31);
      v33 = *(a1 + 23);
      if (v33 >= 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = *a1;
      }

      if (v33 >= 0)
      {
        v35 = *(a1 + 23);
      }

      else
      {
        v35 = a1[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
    }

    if ((*(v10 + 55) & 0x80000000) == 0)
    {
      v11 = *(v10 + 55);
      v37 = *(v10 + 4);
LABEL_17:
      v12 = (v10 + 4);
      goto LABEL_18;
    }

    std::string::__init_copy_ctor_external(&v37, v10[4], v10[5]);
    if ((*(v10 + 55) & 0x80000000) == 0)
    {
      v11 = *(v10 + 55);
      goto LABEL_17;
    }

    v12 = v10[4];
    v11 = v10[5];
LABEL_18:
    v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if (v11)
    {
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v37;
      }

      else
      {
        v14 = v37.__r_.__value_.__r.__words[0];
      }

      do
      {
        v9 = __tolower(*v12);
        v14->__r_.__value_.__s.__data_[0] = v9;
        v14 = (v14 + 1);
        ++v12;
        --v11;
      }

      while (v11);
      v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v16 = v37.__r_.__value_.__l.__size_;
    if ((v13 & 0x80u) == 0)
    {
      v16 = v13;
    }

    if (size != v16 || ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v17 = &v38) : (v17 = v38.__r_.__value_.__r.__words[0]), (v13 & 0x80u) == 0 ? (v18 = &v37) : (v18 = v37.__r_.__value_.__r.__words[0]), v9 = memcmp(v17, v18, size), v9))
    {
      v19 = 0;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_39;
      }

LABEL_38:
      operator delete(v37.__r_.__value_.__l.__data_);
      goto LABEL_39;
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "please update to formatted name ", 32);
      v23 = *(v10 + 55);
      if (v23 >= 0)
      {
        v24 = (v10 + 4);
      }

      else
      {
        v24 = v10[4];
      }

      if (v23 >= 0)
      {
        v25 = *(v10 + 55);
      }

      else
      {
        v25 = v10[5];
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " ASAP, you used ", 16);
      v28 = *(a1 + 23);
      if (v28 >= 0)
      {
        v29 = a1;
      }

      else
      {
        v29 = *a1;
      }

      if (v28 >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = a1[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v36);
      LOBYTE(v13) = *(&v37.__r_.__value_.__s + 23);
    }

    v1 = *(v10 + 14);
    v19 = 1;
    if ((v13 & 0x80) != 0)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v19)
    {
      break;
    }

    v20 = v10[1];
    if (v20)
    {
      do
      {
        v10 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v10;
        v10 = v10[2];
      }

      while (*v10 != v21);
    }
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1B503AF10(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::Component::GetComponentTypeMap(kaldi::nnet1::Component *this)
{
  if (atomic_load_explicit(&kaldi::nnet1::Component::GetComponentTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&kaldi::nnet1::Component::GetComponentTypeMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<kaldi::nnet1::Component::GetComponentTypeMap(void)::$_0 &&>>);
  }

  return kaldi::nnet1::Component::GetComponentTypeMap(void)::init_map_heap;
}

void kaldi::nnet1::Component::NewComponentOfType(kaldi::nnet1::Component *a1)
{
  if (a1 <= 1024)
  {
    switch(a1)
    {
      case 257:
        operator new();
      case 258:
        operator new();
      case 259:
        operator new();
      case 260:
        operator new();
      case 261:
        operator new();
      case 262:
        operator new();
      case 263:
        operator new();
      case 264:
        operator new();
      case 265:
        operator new();
      case 266:
        operator new();
      case 267:
        operator new();
      case 268:
        operator new();
      case 269:
        operator new();
      case 270:
        operator new();
      case 271:
        operator new();
      case 272:
        operator new();
      case 273:
        operator new();
      case 274:
        operator new();
      case 275:
        operator new();
      case 276:
        operator new();
      case 277:
        operator new();
      case 278:
        operator new();
      case 279:
        operator new();
      case 280:
        operator new();
      case 281:
        operator new();
      case 282:
        operator new();
      case 283:
        operator new();
      case 284:
        operator new();
      case 285:
        operator new();
      case 286:
        operator new();
      case 287:
        operator new();
      case 288:
        operator new();
      case 289:
        operator new();
      case 290:
        operator new();
      default:
        switch(a1)
        {
          case 513:
            operator new();
          case 514:
            operator new();
          case 515:
            operator new();
          case 516:
            operator new();
          case 517:
            operator new();
          case 518:
            operator new();
          case 519:
            operator new();
          case 520:
            operator new();
          case 521:
            operator new();
          case 522:
            operator new();
          case 523:
            operator new();
          case 524:
            operator new();
          case 525:
            operator new();
          default:
            goto LABEL_91;
        }
    }
  }

  else if (a1 > 2047)
  {
    if (a1 <= 2052)
    {
      if (a1 > 2049)
      {
        if (a1 != 2050)
        {
          if (a1 != 2051)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }

      if (a1 != 2048)
      {
        operator new();
      }

      operator new();
    }

    if (a1 <= 2055)
    {
      if (a1 != 2053)
      {
        if (a1 != 2054)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    switch(a1)
    {
      case 0x808:
        operator new();
      case 0x809:
        operator new();
      case 0x80A:
        operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 1025:
        operator new();
      case 1026:
        operator new();
      case 1027:
        operator new();
      case 1028:
        operator new();
      case 1031:
        operator new();
      case 1032:
        operator new();
      case 1033:
        operator new();
      case 1034:
        operator new();
      case 1035:
        operator new();
      case 1036:
        operator new();
      case 1037:
        operator new();
      case 1038:
        operator new();
      case 1039:
        operator new();
      case 1040:
        operator new();
      case 1041:
        operator new();
      case 1042:
        operator new();
      default:
        break;
    }
  }

LABEL_91:
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Missing type: ", 14);
  kaldi::nnet1::Component::TypeToMarker(a1, &v3);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, &v3);
  std::string::~string(&v3);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
}

void kaldi::CuVector<float>::Resize(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 3)
  {
    a3 = *(a1 + 16) >= a2;
  }

  if (*(a1 + 20) >= a2)
  {
    *(a1 + 16) = a2;
    if (a2 && !a3 && *(a1 + 8))
    {
      v9 = a1 + 8;

      kaldi::VectorBase<float>::SetZero(v9);
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      v6 = (a1 + 8);
      v5 = *(a1 + 8);
      if (v5)
      {
        free(v5);
      }

      *v6 = 0;
      *(a1 + 16) = 0;
    }

    if (a2)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      kaldi::Vector<float>::Resize(&v10, a2, 0);
      v7 = v10;
      v10 = *(a1 + 8);
      *(a1 + 8) = v7;
      v8 = v11;
      v11 = *(a1 + 16);
      *(a1 + 16) = v8;
      kaldi::Vector<float>::Destroy(&v10);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

double kaldi::Matrix<float>::Matrix(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void kaldi::Vector<float>::Destroy(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

double kaldi::nnet1::AddShift::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v23 = 0uLL;
    v24 = 0;
    kaldi::ReadToken(a2, a3, &v23);
    if (SHIBYTE(v24) < 0)
    {
      if (*(&v23 + 1) != 15 || (*v23 == 0x61526E7261654C3CLL ? (v8 = *(v23 + 7) == 0x3E66656F43657461) : (v8 = 0), v9 = (a1 + 176), !v8))
      {
        if (*(&v23 + 1) == 18)
        {
          v10 = *v23 == 0x6E6569646172473CLL && *(v23 + 8) == 0x7079546D726F4E74;
          if (v10 && *(v23 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v23 + 1) != 9)
        {
          goto LABEL_47;
        }

        v12 = v23;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v24) == 9)
      {
        v12 = &v23;
LABEL_37:
        v14 = *v12;
        v15 = *(v12 + 8);
        v16 = v14 == 0x6461724778614D3CLL && v15 == 62;
        v9 = (a1 + 172);
        if (!v16)
        {
LABEL_47:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v24 >= 0)
          {
            v19 = &v23;
          }

          else
          {
            v19 = v23;
          }

          if (v24 >= 0)
          {
            v20 = HIBYTE(v24);
          }

          else
          {
            v20 = *(&v23 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v24) != 15)
      {
        if (HIBYTE(v24) != 18)
        {
          goto LABEL_47;
        }

        v6 = v23 == 0x6E6569646172473CLL && *(&v23 + 1) == 0x7079546D726F4E74;
        if (!v6 || v24 != 15973)
        {
          goto LABEL_47;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 168) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v13 = v23 == 0x61526E7261654C3CLL && *(&v23 + 7) == 0x3E66656F43657461;
      v9 = (a1 + 176);
      if (!v13)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v9);
LABEL_43:
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }
  }

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3);
}

void sub_1B503C8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  _Unwind_Resume(exception_object);
}

void **kaldi::Vector<float>::Init(void **result, int a2)
{
  v2 = result;
  if (a2)
  {
    memptr = 0;
    v4 = (4 * a2);
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, v4, 0x47F99594uLL);
    if (result || !memptr)
    {
      if ((v4 & 0x80000000) != 0 && kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Negative dimension: size=", 25);
        MEMORY[0x1B8C84C00](v5, v4);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v8);
      }

      exception = __cxa_allocate_exception(8uLL);
      v7 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v7, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    *v2 = memptr;
    *(v2 + 2) = a2;
    *(v2 + 3) = a2;
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void sub_1B503CA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

kaldi::nnet1::AddShift *kaldi::nnet1::AddShift::AddShift(kaldi::nnet1::AddShift *this, uint64_t a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D159D0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = &unk_1F2D3AC18;
  *(this + 14) = 0;
  kaldi::CuVector<float>::Resize(this + 88, a2, 1);
  *(this + 21) = 0;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 44) = 1065353216;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 208) = 0;
  return this;
}

float kaldi::ReadBasicType<float>(void *a1, int a2, float *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v13 = 0.0;
    v5 = std::istream::peek();
    if (v5 == 8)
    {
      kaldi::ReadBasicType<double>(a1, 1, &v13);
      result = v13;
      *a3 = result;
    }

    else
    {
      if (v5 != 4)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadBasicType: expected float, saw ", 35);
        v9 = std::istream::peek();
        v10 = MEMORY[0x1B8C84C00](v8, v9);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", at file position ", 19);
        std::istream::tellg();
        MEMORY[0x1B8C84C60](v11, v14);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      std::istream::get();
      std::istream::read();
    }
  }

  else
  {
    MEMORY[0x1B8C84AD0](a1, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadBasicType: failed to read, at file position ", 48);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v7, v14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return result;
}

void sub_1B503CCD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Component::GetGradientNormTypeMap(kaldi::nnet1::Component *this)
{
  if (atomic_load_explicit(&kaldi::nnet1::Component::GetGradientNormTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&kaldi::nnet1::Component::GetGradientNormTypeMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<kaldi::nnet1::Component::GetGradientNormTypeMap(void)::$_0 &&>>);
  }

  return kaldi::nnet1::Component::GetGradientNormTypeMap(void)::init_map_heap;
}

void kaldi::Vector<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v89 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = *(a1 + 8);
    v79 = 0;
    v80[0].__locale_ = 0;
    v78 = 0;
    kaldi::Vector<float>::Resize(&v78, v7, 0);
    kaldi::Vector<float>::Read(&v78, a2, a3, 0);
    v8 = *(a1 + 8);
    if (!v8)
    {
      kaldi::Vector<float>::Resize(a1, v79, 0);
      v8 = *(a1 + 8);
    }

    if (v8 != v79)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Vector<Real>::Read, adding but dimensions mismatch ", 51);
      v51 = MEMORY[0x1B8C84C00](v50, *(a1 + 8));
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " vs. ", 5);
      MEMORY[0x1B8C84C00](v52, v79);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v85);
    }

    cblas_saxpy_NEWLAPACK_ILP64();
    if (v78)
    {
      free(v78);
    }

    return;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v78);
  std::istream::tellg();
  v9 = v88;
  if (!a3)
  {
    memset(&v83, 0, sizeof(v83));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v83);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "EOF while trying to read vector.", 32);
    }

    else
    {
      if (!std::string::compare(&v83, "[]"))
      {
        kaldi::Vector<float>::Resize(a1, 0, 0);
        if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

        v36 = v83.__r_.__value_.__r.__words[0];
LABEL_96:
        operator delete(v36);
        goto LABEL_124;
      }

      v71 = v9;
      if (!std::string::compare(&v83, "["))
      {
        v17 = a2 + 4;
        v72 = 22;
        v73 = "Failed to read number.";
        __src = 0;
        v76 = 0;
        v77 = 0;
        v18 = MEMORY[0x1E69E9830];
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v19 = std::istream::peek();
                if ((v19 - 48) > 9)
                {
                  break;
                }

                LODWORD(v85) = 0;
                MEMORY[0x1B8C84AD0](a2, &v85);
                if ((*(v17 + *(*a2 - 24)) & 5) != 0)
                {
                  goto LABEL_101;
                }

                v20 = std::istream::peek();
                if (v20 <= 0x7F)
                {
                  if ((*(v18 + 4 * v20 + 60) & 0x4000) != 0)
                  {
                    goto LABEL_34;
                  }
                }

                else if (__maskrune(v20, 0x4000uLL))
                {
                  goto LABEL_34;
                }

                if (std::istream::peek() != 93)
                {
                  v72 = 33;
                  v73 = "Expected whitespace after number.";
                  goto LABEL_101;
                }

LABEL_34:
                v22 = v76;
                if (v76 >= v77)
                {
                  v24 = __src;
                  v25 = v76 - __src;
                  v26 = (v76 - __src) >> 2;
                  v27 = v26 + 1;
                  if ((v26 + 1) >> 62)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v28 = v77 - __src;
                  if ((v77 - __src) >> 1 > v27)
                  {
                    v27 = v28 >> 1;
                  }

                  if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v29 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v29 = v27;
                  }

                  if (v29)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v29);
                  }

                  *(4 * v26) = v85;
                  v23 = 4 * v26 + 4;
                  memcpy(0, v24, v25);
                  v30 = __src;
                  __src = 0;
                  v76 = v23;
                  v77 = 0;
                  if (v30)
                  {
                    operator delete(v30);
                  }
                }

                else
                {
                  *v76 = v85;
                  v23 = (v22 + 4);
                }

                v76 = v23;
              }

              if (v19 <= 31)
              {
                break;
              }

              if (v19 == 32)
              {
                goto LABEL_46;
              }

              if (v19 != 45)
              {
                if (v19 == 93)
                {
                  std::istream::get();
                  kaldi::Vector<float>::Resize(a1, (v76 - __src) >> 2, 0);
                  v40 = __src;
                  if (v76 != __src)
                  {
                    v41 = (v76 - __src) >> 2;
                    v42 = *a1;
                    if (v41 <= 1)
                    {
                      v41 = 1;
                    }

                    do
                    {
                      v43 = *v40++;
                      *v42++ = v43;
                      --v41;
                    }

                    while (v41);
                  }

                  v44 = std::istream::peek();
                  if (v44 == 10)
                  {
LABEL_109:
                    std::istream::get();
                  }

                  else if (v44 == 13)
                  {
                    std::istream::get();
                    goto LABEL_109;
                  }

                  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
                  {
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "After end of vector data, read error.", 37);
                    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v85);
                  }

                  v46 = 0;
LABEL_119:
                  if (__src)
                  {
                    v76 = __src;
                    operator delete(__src);
                  }

                  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v83.__r_.__value_.__l.__data_);
                  }

                  if ((v46 & 1) == 0)
                  {
                    goto LABEL_124;
                  }

LABEL_157:
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85);
                  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Failed to read vector from stream.  ", 36);
                  std::stringbuf::str();
                  if (v77 >= 0)
                  {
                    p_src = &__src;
                  }

                  else
                  {
                    p_src = __src;
                  }

                  if (v77 >= 0)
                  {
                    v64 = HIBYTE(v77);
                  }

                  else
                  {
                    v64 = v76;
                  }

                  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, p_src, v64);
                  v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " File position at start is ", 27);
                  v67 = MEMORY[0x1B8C84C00](v66, v71);
                  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ", currently ", 12);
                  std::istream::tellg();
                  MEMORY[0x1B8C84C60](v68, v84);
                  if (SHIBYTE(v77) < 0)
                  {
                    operator delete(__src);
                  }

                  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v85);
                }

                goto LABEL_59;
              }

              std::istream::get();
              if (std::istream::peek() - 48 > 9)
              {
                std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v83);
                if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
                {
                  v31 = v83.__r_.__value_.__r.__words[0];
                  if (!strcasecmp(v83.__r_.__value_.__l.__data_, "inf"))
                  {
                    goto LABEL_79;
                  }

                  v32 = v31;
LABEL_75:
                  if (!strcasecmp(v32, "infinity"))
                  {
                    goto LABEL_79;
                  }

                  if (strcasecmp(v31, "nan"))
                  {
LABEL_128:
                    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "Expecting numeric vector data, got ", 35);
                    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v48 = &v83;
                    }

                    else
                    {
                      v48 = v83.__r_.__value_.__r.__words[0];
                    }

                    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v83.__r_.__value_.__l.__size_;
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, size);
                    goto LABEL_118;
                  }

                  LODWORD(v85) = -4194304;
                  std::vector<float>::push_back[abi:ne200100](&__src, &v85);
                  if (kaldi::g_kaldi_verbose_level >= -1)
                  {
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Reading negative NaN value into vector.", 39);
                    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v85);
                  }
                }

                else
                {
                  if (strcasecmp(&v83, "inf"))
                  {
                    v31 = &v83;
                    v32 = &v83;
                    goto LABEL_75;
                  }

LABEL_79:
                  LODWORD(v85) = -8388608;
                  std::vector<float>::push_back[abi:ne200100](&__src, &v85);
                  if (kaldi::g_kaldi_verbose_level >= -1)
                  {
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Reading negative infinite value into vector.", 44);
                    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v85);
                  }
                }
              }

              else
              {
                LODWORD(v85) = 0;
                MEMORY[0x1B8C84AD0](a2, &v85);
                if ((*(v17 + *(*a2 - 24)) & 5) != 0)
                {
                  goto LABEL_101;
                }

                v21 = std::istream::peek();
                if (v21 <= 0x7F)
                {
                  if ((*(v18 + 4 * v21 + 60) & 0x4000) != 0)
                  {
                    goto LABEL_72;
                  }
                }

                else if (__maskrune(v21, 0x4000uLL))
                {
                  goto LABEL_72;
                }

                if (std::istream::peek() != 93)
                {
                  v72 = 33;
                  v73 = "Expected whitespace after number.";
LABEL_101:
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, v73, v72);
LABEL_118:
                  v46 = 1;
                  goto LABEL_119;
                }

LABEL_72:
                v74 = -*&v85;
                std::vector<float>::push_back[abi:ne200100](&__src, &v74);
              }
            }

            if (v19 <= 9)
            {
              break;
            }

            if (v19 == 10 || v19 == 13)
            {
              v38 = "Newline found while reading vector (maybe it's a matrix?)";
              v39 = 57;
              goto LABEL_117;
            }

LABEL_59:
            std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v83);
            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              v33 = v83.__r_.__value_.__r.__words[0];
              if (!strcasecmp(v83.__r_.__value_.__l.__data_, "inf"))
              {
                goto LABEL_68;
              }

              v34 = v33;
LABEL_64:
              if (!strcasecmp(v34, "infinity"))
              {
                goto LABEL_68;
              }

              if (strcasecmp(v33, "nan"))
              {
                goto LABEL_128;
              }

              LODWORD(v85) = 2143289344;
              std::vector<float>::push_back[abi:ne200100](&__src, &v85);
              if (kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Reading NaN value into vector.", 30);
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v85);
              }
            }

            else
            {
              if (strcasecmp(&v83, "inf"))
              {
                v33 = &v83;
                v34 = &v83;
                goto LABEL_64;
              }

LABEL_68:
              LODWORD(v85) = 2139095040;
              std::vector<float>::push_back[abi:ne200100](&__src, &v85);
              if (kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Reading infinite value into vector.", 35);
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v85);
              }
            }
          }

          if (v19 != 9)
          {
            if (v19 == -1)
            {
              v38 = "EOF while reading vector data.";
              v39 = 30;
LABEL_117:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, v38, v39);
              goto LABEL_118;
            }

            goto LABEL_59;
          }

LABEL_46:
          std::istream::get();
        }
      }

      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "Expected [ but got ", 21);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v83;
      }

      else
      {
        v59 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v83.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
    }

    v71 = v9;
    if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    v61 = v83.__r_.__value_.__r.__words[0];
    goto LABEL_156;
  }

  if (kaldi::Peek(a2, 1) != 68)
  {
    v85 = 0;
    v86 = 0;
    v87 = 0;
    kaldi::ReadToken(a2, 1, &v85);
    if (SHIBYTE(v87) < 0)
    {
      if (v86 != 2)
      {
        goto LABEL_140;
      }

      v35 = v85;
    }

    else
    {
      if (SHIBYTE(v87) != 2)
      {
        goto LABEL_140;
      }

      v35 = &v85;
    }

    if (*v35 == 22086)
    {
      LODWORD(v83.__r_.__value_.__l.__data_) = 0;
      kaldi::ReadBasicType<int>(a2, 1, &v83);
      data = v83.__r_.__value_.__l.__data_;
      if (LODWORD(v83.__r_.__value_.__l.__data_) != *(a1 + 8))
      {
        kaldi::Vector<float>::Resize(a1, LODWORD(v83.__r_.__value_.__l.__data_), 0);
        data = v83.__r_.__value_.__l.__data_;
      }

      if (data >= 1)
      {
        std::istream::read();
      }

      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        if ((SHIBYTE(v87) & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

        v36 = v85;
        goto LABEL_96;
      }

      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "Error reading vector data (binary mode); truncated stream? (size = ", 67);
      v70 = MEMORY[0x1B8C84C00](v69, LODWORD(v83.__r_.__value_.__l.__data_));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ")", 1);
      goto LABEL_167;
    }

LABEL_140:
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, ": Expected token ", 17);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "FV", 2);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", got ", 6);
    if (v87 >= 0)
    {
      v56 = &v85;
    }

    else
    {
      v56 = v85;
    }

    if (v87 >= 0)
    {
      v57 = HIBYTE(v87);
    }

    else
    {
      v57 = v86;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
LABEL_167:
    v71 = v9;
    if ((SHIBYTE(v87) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    v61 = v85;
LABEL_156:
    operator delete(v61);
    goto LABEL_157;
  }

  v10 = *(a1 + 8);
  v86 = 0;
  v87 = 0;
  v85 = 0;
  kaldi::Vector<double>::Resize(&v85, v10, 0);
  kaldi::Vector<double>::Read(&v85, a2, 1, 0);
  LODWORD(v11) = *(a1 + 8);
  if (v11 != v86)
  {
    kaldi::Vector<float>::Resize(a1, v86, 0);
    LODWORD(v11) = v86;
  }

  v12 = v85;
  if (v11 < 1)
  {
    if (!v85)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v13 = *a1;
    v11 = v11;
    v14 = v85;
    do
    {
      v15 = *v14++;
      v16 = v15;
      *v13++ = v16;
      --v11;
    }

    while (v11);
  }

  free(v12);
LABEL_124:
  v78 = *MEMORY[0x1E69E54E8];
  *(&v78 + *(v78 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v79 = MEMORY[0x1E69E5548] + 16;
  if (v81 < 0)
  {
    operator delete(v80[7].__locale_);
  }

  v79 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v80);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v82);
}

void sub_1B503DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a72 & 0x80000000) == 0)
  {
    std::ostringstream::~ostringstream(&a17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1B503DB28);
}

void sub_1B503DAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_1B503DAC0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B503DB34);
}

void sub_1B503DAEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  JUMPOUT(0x1B503DB34);
}

void sub_1B503DB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

double kaldi::CuVector<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  kaldi::Vector<float>::Read(&v7, a2, a3, 0);
  v4 = *(a1 + 8);
  if (v4)
  {
    free(v4);
  }

  *(a1 + 8) = v7;
  v5 = v8;
  v7 = 0;
  v8 = 0;
  *(a1 + 16) = v5;
  kaldi::Vector<float>::Destroy(&v7);
  return result;
}

void sub_1B503DBA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TVertex *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

kaldi::nnet1::Rescale *kaldi::nnet1::Rescale::Rescale(kaldi::nnet1::Rescale *this, uint64_t a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D16E78;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = &unk_1F2D3AC18;
  *(this + 14) = 0;
  kaldi::CuVector<float>::Resize(this + 88, a2, 1);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = &unk_1F2D0EE38;
  *(this + 208) = 0;
  *(this + 54) = 0;
  *(this + 220) = 0x3F80000000000000;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 256) = 0;
  return this;
}

double kaldi::nnet1::Rescale::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v23 = 0uLL;
    v24 = 0;
    kaldi::ReadToken(a2, a3, &v23);
    if (SHIBYTE(v24) < 0)
    {
      if (*(&v23 + 1) != 15 || (*v23 == 0x61526E7261654C3CLL ? (v8 = *(v23 + 7) == 0x3E66656F43657461) : (v8 = 0), v9 = (a1 + 224), !v8))
      {
        if (*(&v23 + 1) == 18)
        {
          v10 = *v23 == 0x6E6569646172473CLL && *(v23 + 8) == 0x7079546D726F4E74;
          if (v10 && *(v23 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v23 + 1) != 9)
        {
          goto LABEL_47;
        }

        v12 = v23;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v24) == 9)
      {
        v12 = &v23;
LABEL_37:
        v14 = *v12;
        v15 = *(v12 + 8);
        v16 = v14 == 0x6461724778614D3CLL && v15 == 62;
        v9 = (a1 + 220);
        if (!v16)
        {
LABEL_47:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v24 >= 0)
          {
            v19 = &v23;
          }

          else
          {
            v19 = v23;
          }

          if (v24 >= 0)
          {
            v20 = HIBYTE(v24);
          }

          else
          {
            v20 = *(&v23 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v24) != 15)
      {
        if (HIBYTE(v24) != 18)
        {
          goto LABEL_47;
        }

        v6 = v23 == 0x6E6569646172473CLL && *(&v23 + 1) == 0x7079546D726F4E74;
        if (!v6 || v24 != 15973)
        {
          goto LABEL_47;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 216) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v13 = v23 == 0x61526E7261654C3CLL && *(&v23 + 7) == 0x3E66656F43657461;
      v9 = (a1 + 224);
      if (!v13)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v9);
LABEL_43:
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }
  }

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3);
}

void sub_1B503E0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<kaldi::CuVector<float>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = (v4 + 8);
      v13 = v4 + 32 * a2;
      do
      {
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        *(v12 - 1) = &unk_1F2D3AC18;
        v12 += 4;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v13;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v25 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(result, v10);
    }

    v14 = 32 * v8;
    v22 = 0;
    v23 = 32 * v8;
    *(&v24 + 1) = 0;
    v15 = 32 * a2;
    v16 = (32 * v8 + 8);
    v17 = 32 * v8;
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      *(v16 - 1) = &unk_1F2D3AC18;
      v16 += 4;
      v17 += 32;
      v15 -= 32;
    }

    while (v15);
    *&v24 = v14 + 32 * a2;
    v18 = result[1];
    v19 = v14 + *result - v18;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*>(result, *result, v18, v19);
    v20 = *v3;
    *v3 = v19;
    v21 = v3[2];
    *(v3 + 1) = v24;
    *&v24 = v20;
    *(&v24 + 1) = v21;
    v22 = v20;
    v23 = v20;
    return std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(&v22);
  }

  return result;
}

void sub_1B503E25C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Component::MarkerToGradientNormType(kaldi::nnet1::Component *a1)
{
  GradientNormTypeMap = kaldi::nnet1::Component::GetGradientNormTypeMap(a1);
  v3 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(GradientNormTypeMap, a1);
  if ((kaldi::nnet1::Component::GetGradientNormTypeMap(v3) + 8) == v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown gradient normalization marker: ", 39);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return v3[14];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::CuVector<float>::CuVector((a4 + v7), v8);
      v8 += 32;
      v7 += 32;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 4;
        result = (*(v12 + 8))(v6);
        v10 += 4;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_1B503E3F4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*(v4 + 8))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t kaldi::Input::Close(kaldi::Input *this)
{
  result = *this;
  if (result)
  {
    result = (*(*result + 40))(result);
    *this = 0;
  }

  return result;
}

void kaldi::KaldiLogMessage::~KaldiLogMessage(std::locale *this)
{
  v2 = kaldi::KaldiLogMessage::g_logger;
  std::stringbuf::str();
  (v2)(&__p, this[33].__locale_);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v4 - 24)) = v3[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}

void *std::__shared_ptr_emplace<kaldi::nnet1::PdfPrior>::__shared_ptr_emplace[abi:ne200100]<kaldi::nnet1::PdfPriorOptions &,std::allocator<kaldi::nnet1::PdfPrior>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D10E28;
  kaldi::nnet1::PdfPrior::PdfPrior(a1 + 3);
  return a1;
}

uint64_t kaldi::nnet1::PdfPrior::PdfPrior(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 24);
  v4 = (a1 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = &unk_1F2D3AC18;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      return a1;
    }
  }

  else if (!*(a2 + 23))
  {
    return a1;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Computing pdf-priors from : ", 28);
    v6 = *(a2 + 23);
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
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v22);
  }

  v22[0].__locale_ = 0;
  kaldi::Input::OpenInternal(v22, a2, 0, 0);
  v9 = kaldi::Input::Stream(v22);
  kaldi::Vector<double>::Read(&v23, v9, 0, 0);
  kaldi::Input::Close(v22);
  kaldi::Input::~Input(v22);
  v10 = v24;
  memset(v21, 0, sizeof(v21));
  kaldi::Vector<float>::Resize(v21, v24, 0);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = v23;
    v14 = v21[0];
    do
    {
      v15 = *(a2 + 28);
      if (v13[v11] < v15)
      {
        v13[v11] = v15;
        v14[v11] = 2130706431;
        v12 = (v12 + 1);
      }

      ++v11;
    }

    while (v10 != v11);
    if (v12 >= 1 && kaldi::g_kaldi_verbose_level > -2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      v16 = MEMORY[0x1B8C84C00](v22, v12);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " out of ", 8);
      v18 = MEMORY[0x1B8C84C00](v17, v10);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " classes have counts", 20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " lower than ", 12);
      std::ostream::operator<<();
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v22);
    }
  }

  kaldi::VectorBase<double>::Sum(&v23);
  kaldi::VectorBase<double>::Scale();
  kaldi::VectorBase<double>::ApplyLog(&v23);
  memset(v22, 0, 24);
  kaldi::Vector<float>::Resize(&v22[0].__locale_, v24, 1);
  kaldi::VectorBase<float>::CopyFromVec<double>(v22, &v23);
  kaldi::VectorBase<float>::AddVec<float>();
  kaldi::CuVector<float>::Resize(v4, v10, 1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(v4, v22);
  kaldi::Vector<float>::Destroy(v22);
  kaldi::Vector<float>::Destroy(v21);
  kaldi::Vector<float>::Destroy(&v23);
  return a1;
}

void sub_1B503E97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  kaldi::Vector<float>::Destroy(&a9);
  kaldi::Vector<float>::Destroy(v10 - 88);
  kaldi::CuVector<float>::~CuVector(v9);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void quasar::SilencePosteriorGeneratorConfig::SilencePosteriorGeneratorConfig(uint64_t a1, uint64_t a2, const void **a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1B5B1E1A0;
  *(a1 + 40) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "spg");
  quasar::SystemConfig::enforceMinVersion(a2, 46, 0, &__p);
  if (v27.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  if (*(a3 + 23) >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  std::string::basic_string[abi:ne200100](v30, v5 + 9);
  if ((v31 & 0x80u) == 0)
  {
    v6 = v30;
  }

  else
  {
    v6 = v30[0];
  }

  if (v5)
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, ".frontend");
  Ptree = quasar::SystemConfig::getPtree(a2, v30);
  v9 = Ptree;
  LODWORD(__p) = *Ptree;
  if (*(Ptree + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(Ptree + 8), *(Ptree + 16));
  }

  else
  {
    v10 = *(Ptree + 8);
    v27.__r_.__value_.__r.__words[2] = *(Ptree + 24);
    *&v27.__r_.__value_.__l.__data_ = v10;
  }

  memset(v28, 0, sizeof(v28));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v28, *(v9 + 32), *(v9 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v9 + 40) - *(v9 + 32)) >> 3));
  v29 = *(v9 + 56);
  v11 = quasar::PTree::begin(&__p);
  if (v11 != quasar::PTree::end(&__p))
  {
    if ((v31 & 0x80u) == 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v30[1];
    }

    std::string::basic_string[abi:ne200100](&v23, v12 + 1);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v23;
    }

    else
    {
      v13 = v23.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      if ((v31 & 0x80u) == 0)
      {
        v14 = v30;
      }

      else
      {
        v14 = v30[0];
      }

      memmove(v13, v14, v12);
    }

    *(&v13->__r_.__value_.__l.__data_ + v12) = 46;
    v15 = *(v11 + 23);
    if (v15 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = *v11;
    }

    if (v15 >= 0)
    {
      v17 = *(v11 + 23);
    }

    else
    {
      v17 = *(v11 + 8);
    }

    v18 = std::string::append(&v23, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    quasar::FeatureExtractorSimpleFactory::createFeatureExtractor(&v24, &v25);
  }

  if (*(a3 + 23) >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  std::string::basic_string[abi:ne200100](&v24, v20 + 6);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v24;
  }

  else
  {
    v21 = v24.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    if (*(a3 + 23) >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    memmove(v21, v22, v20);
  }

  strcpy(v21 + v20, ".nfhat");
  quasar::SystemConfig::hasParam(a2, &v24);
}