void sub_1B528AD98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::CommandTagger::getCommandPhraseTag(quasar::CommandTagger *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v6 = *(this + 12);
  v5 = this + 96;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v8, v9);
  MEMORY[0x1B8C84C30](v10, a2 + 1);
  std::stringbuf::str();
  v13[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v11;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v18);
}

void sub_1B528AF60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::CommandTagger::matchesTagConvention(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v4 = a2;
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v6 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = *(a3 + 8);
    if (size <= v9)
    {
      return 0;
    }

    v8 = *a3;
  }

  else
  {
    v8 = a3;
    v9 = *(a3 + 23);
    if (size <= v7)
    {
      return 0;
    }
  }

  if (v6 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (memcmp(v8, a2, v9))
  {
    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(a3 + 8);
  }

  std::string::basic_string(&v16, v4, v12, 0xFFFFFFFFFFFFFFFFLL, &v17);
  v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v16;
  }

  else
  {
    v14 = v16.__r_.__value_.__r.__words[0];
  }

  v10 = 1;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v16.__r_.__value_.__l.__size_;
  }

  for (; v13; --v13)
  {
    if ((v10 & 1) == 0 || (v15 = v14->__r_.__value_.__s.__data_[0], v15 < 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = (*(MEMORY[0x1E69E9830] + 4 * v15 + 60) >> 10) & 1;
    }

    v14 = (v14 + 1);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v10;
}

void quasar::CommandTagger::createCommandTagging(quasar::CommandTagger *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  quasar::Token::Token(&v80, *a2);
  isTag = quasar::CommandTagger::isTag(a1, &v80);
  if (v90 < 0)
  {
    operator delete(__p);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  v75 = &v86;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v75);
  if (v85 < 0)
  {
    operator delete(v84);
  }

  v75 = &v83;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v75);
  if (v82 < 0)
  {
    operator delete(v81);
  }

  if (*(&v80.tokenName.__rep_.__l + 23) < 0)
  {
    operator delete(v80.tokenName.__rep_.__l.__data_);
    if (isTag)
    {
      goto LABEL_11;
    }

LABEL_75:
    std::string::basic_string[abi:ne200100]<0>(v78, "");
    v77 = 0;
    v76 = 0;
    v75 = &v76;
    v73 = 0;
    v72 = 0;
    v74 = 0;
    quasar::CommandTagging::CommandTagging(a3, v78, &v75, &v72);
    v71.__r_.__value_.__r.__words[0] = &v72;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v71);
    std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(&v75, v76);
    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    return;
  }

  if (!isTag)
  {
    goto LABEL_75;
  }

LABEL_11:
  v77 = 0;
  v76 = 0;
  v75 = &v76;
  v73 = 0;
  v72 = 0;
  v74 = 0;
  quasar::Token::Token(&v60, (*a2 + 224));
  quasar::CommandTagger::getTagText(a1, &v60, &v71);
  if (v70 < 0)
  {
    operator delete(v69);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  v59.__r_.__value_.__r.__words[0] = &v66;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
  if (v65 < 0)
  {
    operator delete(v64);
  }

  v59.__r_.__value_.__r.__words[0] = &v63;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (*(&v60.tokenName.__rep_.__l + 23) < 0)
  {
    operator delete(v60.tokenName.__rep_.__l.__data_);
  }

  memset(&v59, 0, sizeof(v59));
  v91 = &v71;
  v7 = std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v75, &v71.__r_.__value_.__l.__data_);
  std::vector<quasar::Token>::__vdeallocate((v7 + 56));
  *(v7 + 56) = v59;
  memset(&v59, 0, sizeof(v59));
  v92[0] = &v59;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v92);
  std::vector<std::string>::push_back[abi:ne200100](&v72, &v71);
  v8 = *a2;
  v9 = 0x6DB6DB6DB6DB6DB7;
  v24 = a3;
  if ((0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 5)) >= 3)
  {
    v10 = 2;
    v11 = 448;
    do
    {
      quasar::Token::Token(&v48, (v8 + v11));
      v12 = quasar::CommandTagger::isTag(a1, &v48);
      if (v58 < 0)
      {
        operator delete(v57);
      }

      if (v56 < 0)
      {
        operator delete(v55);
      }

      v59.__r_.__value_.__r.__words[0] = &v54;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
      if (v53 < 0)
      {
        operator delete(v52);
      }

      v59.__r_.__value_.__r.__words[0] = &v51;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
      if (v50 < 0)
      {
        operator delete(v49);
      }

      if (*(&v48.tokenName.__rep_.__l + 23) < 0)
      {
        operator delete(v48.tokenName.__rep_.__l.__data_);
        if (v12)
        {
LABEL_33:
          quasar::Token::Token(&v37, (*a2 + v11));
          quasar::CommandTagger::getTagText(a1, &v37, &v59);
          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          v71 = v59;
          *(&v59.__r_.__value_.__s + 23) = 0;
          v59.__r_.__value_.__s.__data_[0] = 0;
          if (v47 < 0)
          {
            operator delete(v46);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          v92[0] = &v43;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v92);
          if (v42 < 0)
          {
            operator delete(v41);
          }

          v92[0] = &v40;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
          if (v39 < 0)
          {
            operator delete(v38);
          }

          if (*(&v37.tokenName.__rep_.__l + 23) < 0)
          {
            operator delete(v37.tokenName.__rep_.__l.__data_);
          }

          memset(&v59, 0, sizeof(v59));
          v91 = &v71;
          v13 = std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v75, &v71.__r_.__value_.__l.__data_);
          std::vector<quasar::Token>::__vdeallocate((v13 + 56));
          *(v13 + 56) = v59;
          memset(&v59, 0, sizeof(v59));
          v92[0] = &v59;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v92);
          std::vector<std::string>::push_back[abi:ne200100](&v72, &v71);
          goto LABEL_51;
        }
      }

      else if (v12)
      {
        goto LABEL_33;
      }

      v59.__r_.__value_.__r.__words[0] = &v71;
      v14 = std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v75, &v71.__r_.__value_.__l.__data_);
      v15 = v14;
      v16 = v9;
      v17 = *a2;
      v18 = *(v14 + 64);
      if (v18 >= *(v14 + 72))
      {
        v19 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(v14 + 56, (v17 + v11));
      }

      else
      {
        quasar::Token::Token(*(v14 + 64), (v17 + v11));
        v19 = v18 + 224;
        *(v15 + 64) = v18 + 224;
      }

      v9 = v16;
      *(v15 + 64) = v19;
LABEL_51:
      ++v10;
      v8 = *a2;
      v11 += 224;
    }

    while (((*(a2 + 8) - *a2) >> 5) * v9 > v10);
  }

  v20 = v75;
  if (v75 != &v76)
  {
    do
    {
      *(v20[7] + 45) = 0;
      *(v20[8] - 180) = 0;
      v21 = v20[1];
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
          v22 = v20[2];
          v23 = *v22 == v20;
          v20 = v22;
        }

        while (!v23);
      }

      v20 = v22;
    }

    while (v22 != &v76);
  }

  quasar::Token::Token(&v25, v8);
  quasar::CommandTagger::getTagText(a1, &v25, &v36);
  quasar::CommandTagging::CommandTagging(v24, &v36, &v75, &v72);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  v59.__r_.__value_.__r.__words[0] = &v31;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
  if (v30 < 0)
  {
    operator delete(v29);
  }

  v59.__r_.__value_.__r.__words[0] = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (*(&v25.tokenName.__rep_.__l + 23) < 0)
  {
    operator delete(v25.tokenName.__rep_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v71.__r_.__value_.__r.__words[0] = &v72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v71);
  std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(&v75, v76);
}

void sub_1B528B6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  quasar::Token::~Token(&a12);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  STACK[0x3D0] = &STACK[0x3F0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3D0]);
  std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(&STACK[0x408], STACK[0x410]);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<quasar::CommandTagging>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<quasar::CommandTagging>>::__emplace_back_slow_path<std::vector<quasar::CommandTagging> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<quasar::CommandTagging>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::CommandTagging> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL quasar::CommandTagger::isTag(quasar::CommandTagger *this, Token *a2)
{
  v3 = *(&a2->tokenName.__rep_.__l + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    data = a2->tokenName.__rep_.__l.__data_;
    size = a2->tokenName.__rep_.__l.__size_;
  }

  else
  {
    data = a2;
    size = *(&a2->tokenName.__rep_.__l + 23);
  }

  v6 = *(this + 47);
  if ((v6 & 0x80u) == 0)
  {
    v7 = this + 24;
  }

  else
  {
    v7 = *(this + 3);
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(this + 4);
  }

  if (size)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v10 = &data->tokenName.__rep_.__s.__data_[size];
  v11 = data;
  while (2)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      if (v11->tokenName.__rep_.__s.__data_[0] == *v13)
      {
        v9 = 0;
        if (v11 != v10 && v11 == data)
        {
          if ((v3 & 0x80000000) != 0)
          {
            v14 = a2->tokenName.__rep_.__l.__data_;
            v15 = a2->tokenName.__rep_.__l.__size_;
          }

          else
          {
            v14 = a2;
            v15 = *(&a2->tokenName.__rep_.__l + 23);
          }

          v16 = *(this + 71);
          if (v16 >= 0)
          {
            v17 = this + 48;
          }

          else
          {
            v17 = *(this + 6);
          }

          if (v16 >= 0)
          {
            v18 = *(this + 71);
          }

          else
          {
            v18 = *(this + 7);
          }

          if (v18)
          {
            v19 = &v14[-1].var1 + 3;
            while (v15)
            {
              if (memchr(v17, v19[v15--], v18))
              {
                if ((v3 & 0x80000000) != 0)
                {
                  goto LABEL_39;
                }

                return v15 == v3 - v18;
              }
            }
          }

          v15 = -1;
          if ((v3 & 0x80000000) != 0)
          {
LABEL_39:
            v3 = a2->tokenName.__rep_.__l.__size_;
          }

          return v15 == v3 - v18;
        }

        return v9;
      }

      ++v13;
      --v12;
    }

    while (v12);
    v9 = 0;
    v11 = (v11 + 1);
    if (v11 != v10)
    {
      continue;
    }

    return v9;
  }
}

std::string *quasar::CommandTagger::getTagText@<X0>(quasar::CommandTagger *this@<X0>, const std::string *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 47);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(this + 4);
  }

  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = *(this + 71);
  if (v7 < 0)
  {
    v7 = *(this + 7);
  }

  return std::string::basic_string(a3, a2, v5, size + ~v7, &v9);
}

void quasar::CommandTagging::~CommandTagging(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(this, this[1]);
}

void std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::Token>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::Token>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void *std::map<std::string,std::vector<quasar::Token>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<quasar::Token>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<quasar::Token>>,std::__tree_node<std::__value_type<std::string,std::vector<quasar::Token>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::vector<quasar::Token>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<quasar::Token>>,std::__tree_node<std::__value_type<std::string,std::vector<quasar::Token>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<quasar::Token>> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<quasar::Token>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__construct_node<std::pair<std::string const,std::vector<quasar::Token>> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<quasar::Token>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<quasar::Token>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::Token>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<quasar::Token>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&this[1], *(a2 + 3), *(a2 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 4) - *(a2 + 3)) >> 5));
  return this;
}

void sub_1B528BD64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::QuasarTextProcImpl>::__shared_ptr_emplace[abi:ne200100]<char const*&,quasar::SystemConfig &,std::string const&,std::allocator<quasar::QuasarTextProcImpl>,0>(void *a1, char **a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05FE0;
  std::allocator<quasar::QuasarTextProcImpl>::construct[abi:ne200100]<quasar::QuasarTextProcImpl,char const*&,quasar::SystemConfig &,std::string const&>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::allocator<quasar::QuasarTextProcImpl>::construct[abi:ne200100]<quasar::QuasarTextProcImpl,char const*&,quasar::SystemConfig &,std::string const&>(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  quasar::QuasarTextProcImpl::QuasarTextProcImpl(a2, __p, a4, a5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B528BEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::CommandTagging>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        quasar::CommandTagging::~CommandTagging(v4 - 9);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<quasar::CommandTagging>::__emplace_back_slow_path<quasar::CommandTagging const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::CommandTagging>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  std::allocator_traits<std::allocator<quasar::CommandTagging>>::construct[abi:ne200100]<quasar::CommandTagging,quasar::CommandTagging const&,0>(a1, (72 * v2), a2);
  v15 = 72 * v2 + 72;
  v7 = *(a1 + 8);
  v8 = (72 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::CommandTagging>,quasar::CommandTagging*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::CommandTagging>::~__split_buffer(&v13);
  return v12;
}

void sub_1B528C0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::CommandTagging>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<quasar::CommandTagging>>::construct[abi:ne200100]<quasar::CommandTagging,quasar::CommandTagging const&,0>(uint64_t a1, std::string *a2, uint64_t a3)
{
  std::map<std::string,std::vector<quasar::Token>>::map[abi:ne200100](a2, a3);
  a2[1].__r_.__value_.__r.__words[0] = 0;
  a2[1].__r_.__value_.__l.__size_ = 0;
  a2[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&a2[1], *(a3 + 24), *(a3 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  if (*(a3 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 2, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    v5 = *(a3 + 48);
    a2[2].__r_.__value_.__r.__words[2] = *(a3 + 64);
    *&a2[2].__r_.__value_.__l.__data_ = v5;
  }
}

void sub_1B528C164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(v2, *(v2 + 8));
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::CommandTagging>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::CommandTagging>,quasar::CommandTagging*>(uint64_t a1, void **a2, void **a3, std::string *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator_traits<std::allocator<quasar::CommandTagging>>::construct[abi:ne200100]<quasar::CommandTagging,quasar::CommandTagging const&,0>(a1, a4, v9);
      v9 += 72;
      a4 += 3;
      v8 -= 72;
    }

    while (v9 != a3);
    while (v6 != a3)
    {
      quasar::CommandTagging::~CommandTagging(v6);
      v6 += 9;
    }
  }
}

void sub_1B528C274(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 72);
    do
    {
      quasar::CommandTagging::~CommandTagging(v4);
      v4 = (v5 - 72);
      v2 += 72;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<quasar::CommandTagging>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    quasar::CommandTagging::~CommandTagging((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::vector<quasar::CommandTagging>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::CommandTagging> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<quasar::CommandTagging>::__init_with_size[abi:ne200100]<quasar::CommandTagging*,quasar::CommandTagging*>(v3, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<quasar::CommandTagging>>::__emplace_back_slow_path<std::vector<quasar::CommandTagging> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::CommandTagging>::__init_with_size[abi:ne200100]<quasar::CommandTagging*,quasar::CommandTagging*>(24 * v2, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<quasar::CommandTagging>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B528C480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<quasar::CommandTagging>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::CommandTagging>::__init_with_size[abi:ne200100]<quasar::CommandTagging*,quasar::CommandTagging*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::CommandTagging>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B528C4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::CommandTagging>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::CommandTagging>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::CommandTagging>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::CommandTagging>,quasar::CommandTagging*,quasar::CommandTagging*,quasar::CommandTagging*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = std::map<std::string,std::vector<quasar::Token>>::map[abi:ne200100]((a4 + v7), (a2 + v7));
      v8[3] = 0;
      v8[4] = 0;
      v8 += 3;
      v8[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v8, *(a2 + v7 + 24), *(a2 + v7 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 32) - *(a2 + v7 + 24)) >> 3));
      v9 = (a4 + v7);
      v10 = a2 + v7;
      if (*(a2 + v7 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(v9 + 2, *(v10 + 48), *(v10 + 56));
      }

      else
      {
        v11 = *(v10 + 48);
        v9[2].__r_.__value_.__r.__words[2] = *(v10 + 64);
        *&v9[2].__r_.__value_.__l.__data_ = v11;
      }

      v7 += 72;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B528C634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + v11 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(v10 + v11, *(v10 + v11 + 8));
  if (v11)
  {
    v13 = (v10 + v11 - 72);
    v14 = -v11;
    do
    {
      quasar::CommandTagging::~CommandTagging(v13);
      v13 = (v15 - 72);
      v14 += 72;
    }

    while (v14);
  }

  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<quasar::CommandTagging>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::CommandTagging>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::CommandTagging>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::CommandTagging>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

kaldi::Mfcc *kaldi::Mfcc::Mfcc(kaldi::Mfcc *this, const kaldi::MfccOptions *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v4 = *a2;
  *(this + 29) = *(a2 + 13);
  *(this + 1) = v4;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(this + 7) = *(a2 + 5);
    *(this + 40) = v5;
  }

  *(this + 8) = *(a2 + 6);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 85);
  *(this + 15) = 0;
  *(this + 101) = v8;
  *(this + 72) = v6;
  *(this + 88) = v7;
  *(this + 16) = 0;
  *(this + 17) = 0;
  kaldi::Matrix<float>::Matrix(this + 144);
  *(this + 25) = 0;
  *(this + 24) = this + 200;
  *(this + 26) = 0;
  kaldi::FeatureWindowFunction::FeatureWindowFunction((this + 216), a2);
  *(this + 30) = 0;
  v9 = *(a2 + 14);
  kaldi::Matrix<float>::Matrix(v14, v9, v9, 0, 0);
  kaldi::ComputeDctMatrix<float>(v14);
  kaldi::SubMatrix<float>::SubMatrix(v13, v14, 0, *(a2 + 20), 0, v9);
  kaldi::Matrix<float>::Resize(this + 144, *(a2 + 20), v9, 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>(this + 36, v13, 111);
  if (*(a2 + 24) != 0.0)
  {
    kaldi::Vector<float>::Resize(this + 15, *(a2 + 20), 0);
    kaldi::ComputeLifterCoeffs(this + 30, *(a2 + 24));
  }

  v10 = *(a2 + 22);
  if (v10 > 0.0)
  {
    *(this + 46) = logf(v10);
  }

  v11 = kaldi::FrameExtractionOptions::PaddedWindowSize(a2);
  if ((v11 & (v11 - 1)) == 0)
  {
    operator new();
  }

  kaldi::Mfcc::GetMelBanks(this, 1.0);
  quasar::Bitmap::~Bitmap(v13);
  kaldi::Matrix<float>::~Matrix(v14);
  return this;
}

void sub_1B528CA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Mfcc::GetMelBanks(kaldi::Mfcc *this, float a2)
{
  v3 = *(this + 25);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (this + 200);
  do
  {
    v5 = v3[8];
    if (v5 >= a2)
    {
      v4 = v3;
    }

    v3 = *&v3[2 * (v5 < a2)];
  }

  while (v3);
  if (v4 == (this + 200) || v4[8] > a2)
  {
LABEL_8:
    operator new();
  }

  return *(v4 + 5);
}

void kaldi::Mfcc::~Mfcc(kaldi::Mfcc *this)
{
  v2 = this + 192;
  v3 = *(this + 24);
  v4 = this + 200;
  if (v3 != this + 200)
  {
    do
    {
      v5 = *(v3 + 5);
      if (v5)
      {
        v12 = (v5 + 24);
        std::vector<std::pair<int,kaldi::Vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
        kaldi::Vector<float>::Destroy(v5);
        MEMORY[0x1B8C85350](v5, 0x10A0C409C5A7551);
      }

      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = *(this + 30);
  if (v9)
  {
    v10 = kaldi::SplitRadixComplexFft<float>::~SplitRadixComplexFft(v9);
    MEMORY[0x1B8C85350](v10, 0x1090C40943DB512);
  }

  kaldi::Vector<float>::Destroy(this + 216);
  std::__tree<int>::destroy(v2, *(this + 25));
  kaldi::Matrix<float>::~Matrix(this + 144);
  kaldi::Vector<float>::Destroy(this + 120);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v11 = *(this + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void kaldi::Mfcc::Compute(kaldi::Mfcc *a1, uint64_t a2, uint64_t a3, void **a4, float a5)
{
  MelBanks = kaldi::Mfcc::GetMelBanks(a1, a5);

  kaldi::Mfcc::ComputeInternal(a1, a2, MelBanks, a3, a4);
}

void kaldi::Mfcc::ComputeInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v9 = kaldi::NumFrames(*(a2 + 8), a1 + 16);
  if (v9)
  {
    v10 = v9;
    kaldi::Matrix<float>::Resize(a4, v9, *(a1 + 96), 0, 0);
    if (a5)
    {
      kaldi::ExtractWaveformRemainder(a2, (a1 + 16), a5);
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    memset(v43, 0, sizeof(v43));
    memset(&v42, 0, sizeof(v42));
    if (v10 >= 1)
    {
      v11 = 0;
      LOBYTE(v12) = *(a1 + 100);
      do
      {
        v41 = 1.0;
        if (v12 & 1) != 0 && (*(a1 + 108))
        {
          v13 = &v41;
        }

        else
        {
          v13 = 0;
        }

        kaldi::ExtractWindow(a2, v11, a1 + 16, (a1 + 216), &v44, v13);
        if (*(a1 + 100) == 1 && (*(a1 + 108) & 1) == 0)
        {
          kaldi::VecVec<float>();
          if (v14 < 1.1755e-38)
          {
            v14 = 1.1755e-38;
          }

          v41 = v14;
        }

        v15 = logf(v41);
        if ((LODWORD(v15) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&__dst);
          kaldi::VectorBase<float>::Write(&v44, &__dst, 0);
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v33);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Non-finite energy found for frame ", 34);
          v26 = MEMORY[0x1B8C84C00](v25, v11);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ". Waveform is: ", 15);
          std::stringbuf::str();
          if ((v32 & 0x80u) == 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          if ((v32 & 0x80u) == 0)
          {
            v29 = v32;
          }

          else
          {
            v29 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
          if (v32 < 0)
          {
            operator delete(__p[0]);
          }

          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v33);
        }

        v16 = *(a1 + 240);
        if (v16)
        {
          kaldi::SplitRadixRealFft<float>::Compute(v16, v44, 1, &v42);
        }

        else
        {
          kaldi::RealFft<float>(&v44, 1);
        }

        kaldi::ComputePowerSpectrum(&v44);
        v35 = 0;
        v36 = 0;
        v33 = v44;
        v34 = v45 / 2 + 1;
        kaldi::MelBanks::Compute(a3, &v33, v43);
        kaldi::VectorBase<float>::ApplyFloor(v43, 1.1755e-38);
        kaldi::VectorBase<float>::ApplyLog(v43);
        v17 = *a4;
        v18 = *(a4 + 16);
        v19 = kaldi::MatrixBase<float>::NumCols(a4);
        v39 = 0;
        v40 = 0;
        __dst = (v17 + 4 * v18 * v11);
        v38 = v19;
        kaldi::VectorBase<float>::AddMatVec(&__dst, a1 + 144, 111, v43);
        if (*(a1 + 112) != 0.0)
        {
          kaldi::VectorBase<float>::MulElements(&__dst, (a1 + 120));
        }

        v12 = *(a1 + 100);
        if (v12 == 1)
        {
          if (*(a1 + 104) > 0.0 && v15 < *(a1 + 184))
          {
            v15 = *(a1 + 184);
          }

          *__dst = v15;
        }

        if (*(a1 + 116) == 1)
        {
          v20 = __dst;
          v21 = *__dst;
          v22 = *(a1 + 96);
          v23 = v22 - 1;
          if (v22 >= 2)
          {
            memmove(__dst, __dst + 4, 4 * (v22 - 1));
          }

          v24 = v21 * 1.41421356;
          if (v12)
          {
            v24 = v21;
          }

          v20[v23] = v24;
        }

        v11 = (v11 + 1);
      }

      while (v10 != v11);
      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }
    }

    kaldi::Vector<float>::Destroy(v43);
    kaldi::Vector<float>::Destroy(&v44);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a4, 0, 0, 0, 0);
    kaldi::Vector<float>::Resize(a5, *(a2 + 8), 1);

    kaldi::VectorBase<float>::CopyFromVec(a5, a2);
  }
}

void sub_1B528D18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  std::ostringstream::~ostringstream(&a47, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a61);
  v63 = *(v61 - 176);
  if (v63)
  {
    *(v61 - 168) = v63;
    operator delete(v63);
  }

  kaldi::Vector<float>::Destroy(v61 - 152);
  kaldi::Vector<float>::Destroy(v61 - 128);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(uint64_t a1, float *a2)
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
      v5 = *(v2 + 8);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *LHash<unsigned int,float>::alloc(void *a1, unsigned int a2)
{
  v3 = -1;
  do
  {
    v4 = (1 << ++v3);
  }

  while (v4 < a2);
  result = BM_malloc(8 * (v4 - 1) + 12);
  *a1 = result;
  *result = *result & 0xFFFFFFE0 | v3 & 0x1F;
  **a1 &= 0x1Fu;
  v6 = (v4 + 3) & 0x1FFFFFFFCLL;
  v7 = vdupq_n_s64(v4 - 1);
  v8 = xmmword_1B5AE0050;
  v9 = xmmword_1B5AE0060;
  v10 = (*a1 + 32);
  v11 = vdupq_n_s64(4uLL);
  do
  {
    v12 = vmovn_s64(vcgeq_u64(v7, v9));
    if (vuzp1_s16(v12, *v7.i8).u8[0])
    {
      *(v10 - 6) = -1;
    }

    if (vuzp1_s16(v12, *&v7).i8[2])
    {
      *(v10 - 4) = -1;
    }

    if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
    {
      *(v10 - 2) = -1;
      *v10 = -1;
    }

    v8 = vaddq_s64(v8, v11);
    v9 = vaddq_s64(v9, v11);
    v10 += 8;
    v6 -= 4;
  }

  while (v6);
  return result;
}

void LHash<unsigned int,float>::clear(void *a1, unsigned int a2)
{
  v4 = *a1;
  if (v4)
  {
    BM_free(v4, 8 * ~(-1 << *v4) + 12);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,float>::alloc(a1, a2);
  }
}

uint64_t LHash<unsigned int,float>::find(_DWORD **a1, unsigned int a2, _BYTE *a3)
{
  v7 = 0;
  v5 = LHash<unsigned int,float>::locate(a1, a2, &v7);
  *a3 = v5;
  if (v5)
  {
    return &(*a1)[2 * v7 + 1];
  }

  else
  {
    return 0;
  }
}

uint64_t LHash<unsigned int,float>::locate(_DWORD **a1, unsigned int a2, _DWORD *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = v3 + 1;
  v5 = *v3;
  v6 = v5 & 0x1F;
  if ((*v3 & 0x1Fu) > 2)
  {
    v9 = -1 << v6;
    v7 = ((1103515245 * a2 + 12345) >> (30 - v6)) & ~(-1 << v6);
    v10 = v4[2 * v7 + 1];
    if (v10 == -1)
    {
LABEL_10:
      result = 0;
    }

    else
    {
      v11 = ~v9;
      while (v10 != a2)
      {
        v7 = (v7 + 1) & v11;
        v10 = v4[2 * v7 + 1];
        if (v10 == -1)
        {
          goto LABEL_10;
        }
      }

      result = 1;
    }
  }

  else if (v5 >= 0x20)
  {
    v12 = 0;
    v7 = v5 >> 5;
    v13 = v3 + 2;
    while (1)
    {
      v14 = *v13;
      v13 += 2;
      if (v14 == a2)
      {
        break;
      }

      if (v7 == ++v12)
      {
        goto LABEL_14;
      }
    }

    result = 1;
    LODWORD(v7) = v12;
  }

  else
  {
    LODWORD(v7) = 0;
LABEL_14:
    result = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t LHash<unsigned int,float>::insert(void *a1, unsigned int a2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<unsigned int,float>::alloc(a1, 1u);
  }

  v15 = 0;
  v6 = LHash<unsigned int,float>::locate(a1, a2, &v15);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (v8 & 0x1F);
    v10 = v8 >> 5;
    if (v8 >= 0xE0)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 > v9)
    {
      LHash<unsigned int,float>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1Fu) >= 3)
      {
        v12 = (v7 + 1);
        v13 = v9;
        do
        {
          if (*v12 != -1)
          {
            LHash<unsigned int,float>::locate(a1, *v12, &v15);
            *(*a1 + 8 * v15 + 4) = *(v12 - 1);
          }

          v12 += 2;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy((*a1 + 4), v7 + 4, 8 * v10);
      }

      BM_free(v7, 8 * (v9 - 1) + 12);
      LHash<unsigned int,float>::locate(a1, a2, &v15);
      v7 = *a1;
    }

    LODWORD(v7[v15 + 1]) = a2;
    HIDWORD(v7[v15]) = 0;
    **a1 += 32;
    v7 = *a1;
  }

  return &v7[v15] + 4;
}

uint64_t LHash<unsigned int,float>::remove(unsigned int **a1, unsigned int a2, _DWORD *a3)
{
  v16 = 0;
  result = LHash<unsigned int,float>::locate(a1, a2, &v16);
  if (result)
  {
    v6 = *a1;
    v7 = (*a1 + 1);
    *(v7 + 8 * v16 + 4) = -1;
    if (a3)
    {
      *a3 = *(v7 + 8 * v16);
      v6 = *a1;
    }

    v8 = *v6;
    v9 = *v6 & 0x1F;
    if (v9 >= 3)
    {
      v15 = 0;
      v11 = v16 + 1;
      while (1)
      {
        v16 = v11 & ~(-1 << v9);
        v12 = v6[2 * v16 + 2];
        if (v12 == -1)
        {
          break;
        }

        v13 = LHash<unsigned int,float>::locate(a1, v12, &v15);
        v6 = *a1;
        if (!v13)
        {
          v14 = v16;
          *&v6[2 * v15 + 1] = *&v6[2 * v16 + 1];
          v6 = *a1;
          (*a1)[2 * v14 + 2] = -1;
        }

        v15 = 0;
        v11 = v16 + 1;
        v9 = *v6;
      }
    }

    else
    {
      v10 = v8 >> 5;
      memmove(&v6[2 * v16 + 1], &v6[2 * v16 + 3], 8 * (~v16 + (v8 >> 5)));
      v6 = *a1;
      (*a1)[2 * v10] = -1;
    }

    *v6 -= 32;
    return 1;
  }

  return result;
}

void *LHash<unsigned int,float>::setsize(void *result, unsigned int a2)
{
  if (a2 && !*result)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    return LHash<unsigned int,float>::alloc(result, a2);
  }

  return result;
}

_DWORD **LHash<unsigned int,float>::memStats(_DWORD **result, uint64_t *a2)
{
  v2 = *a2 + 8;
  *a2 = v2;
  v3 = *result;
  if (*result)
  {
    v4 = 1 << *v3;
    v5 = 8 * (v4 - 1) + 12;
    *a2 = v5 + v2;
    a2[1] += 8 * (v4 - (*v3 >> 5));
    v6 = 256;
    if (v5 < 0x100)
    {
      v6 = 8 * (v4 - 1) + 12;
    }

    ++*(a2 + v6 + 4);
  }

  return result;
}

uint64_t LHashIter<unsigned int,float>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,float>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B528DAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int,float>::init(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = MEMORY[0x1B8C85310](result, 0x1000C8052888210);
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  if (*a1)
  {
    *(a1 + 12) = **a1 >> 5;

    LHashIter<unsigned int,float>::sortKeys();
  }

  *(a1 + 12) = 0;
  return result;
}

uint64_t LHashIter<unsigned int,float>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,float>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 8 * v10;
  result = v8 + 4;
  *a2 = *(v8 + 8);
  return result;
}

void *LHash<unsigned int,Trie<unsigned int,BOnode>>::alloc(void *a1, unsigned int a2)
{
  v3 = -1;
  do
  {
    v4 = (1 << ++v3);
  }

  while (v4 < a2);
  result = BM_malloc(32 * (v4 - 1) + 40);
  v6 = 0;
  *a1 = result;
  *result = *result & 0xFFFFFFE0 | v3 & 0x1F;
  **a1 &= 0x1Fu;
  do
  {
    v7 = *a1 + v6;
    *(v7 + 32) = -1;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 8) = 0;
    v6 += 32;
    --v4;
  }

  while (v4);
  return result;
}

void LHash<unsigned int,Trie<unsigned int,BOnode>>::clear(void *a1, unsigned int a2)
{
  v4 = *a1;
  if (v4)
  {
    BM_free(v4, 32 * ~(-1 << *v4) + 40);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,Trie<unsigned int,BOnode>>::alloc(a1, a2);
  }
}

uint64_t LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(_DWORD **a1, unsigned int a2, _DWORD *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = v3 + 2;
  v5 = *v3;
  v6 = v5 & 0x1F;
  if ((*v3 & 0x1Fu) > 2)
  {
    v9 = -1 << v6;
    v7 = ((1103515245 * a2 + 12345) >> (30 - v6)) & ~(-1 << v6);
    v10 = v4[8 * v7 + 6];
    if (v10 == -1)
    {
LABEL_10:
      result = 0;
    }

    else
    {
      v11 = ~v9;
      while (v10 != a2)
      {
        v7 = (v7 + 1) & v11;
        v10 = v4[8 * v7 + 6];
        if (v10 == -1)
        {
          goto LABEL_10;
        }
      }

      result = 1;
    }
  }

  else if (v5 >= 0x20)
  {
    v12 = 0;
    v7 = v5 >> 5;
    v13 = v3 + 8;
    while (1)
    {
      v14 = *v13;
      v13 += 8;
      if (v14 == a2)
      {
        break;
      }

      if (v7 == ++v12)
      {
        goto LABEL_14;
      }
    }

    result = 1;
    LODWORD(v7) = v12;
  }

  else
  {
    LODWORD(v7) = 0;
LABEL_14:
    result = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t LHash<unsigned int,Trie<unsigned int,BOnode>>::insert(void *a1, unsigned int a2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<unsigned int,Trie<unsigned int,BOnode>>::alloc(a1, 1u);
  }

  v24 = 0;
  v6 = LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, a2, &v24);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (*v7 & 0x1F);
    v10 = *v7 >> 5;
    if (*v7 >= 0xE0u)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 > v9)
    {
      LHash<unsigned int,Trie<unsigned int,BOnode>>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1Fu) >= 3)
      {
        v12 = (v7 + 4);
        v13 = 1 << (v8 & 0x1F);
        v14 = (v7 + 4);
        do
        {
          v16 = *v14;
          v14 += 8;
          v15 = v16;
          if (v16 != -1)
          {
            v17 = v12 - 6;
            LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, v15, &v24);
            v18 = *a1 + 32 * v24;
            v19 = *v17;
            *(v18 + 24) = *(v17 + 1);
            *(v18 + 8) = v19;
          }

          v12 = v14;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy((*a1 + 8), v7 + 1, v8 & 0xFFFFFFE0);
      }

      BM_free(v7, 32 * (v9 - 1) + 40);
      LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, a2, &v24);
      v7 = *a1;
    }

    LODWORD(v7[4 * v24 + 4]) = a2;
    v20 = v24;
    v21 = &v7[4 * v24 + 1];
    v21[1] = 0;
    v21[2] = 0;
    *v21 = 0;
    v22 = (*a1 + 32 * v20);
    v22[2] = 0;
    v22[3] = 0;
    v22[1] = 0;
    **a1 += 32;
    v7 = *a1;
  }

  return &v7[4 * v24 + 1];
}

uint64_t LHash<unsigned int,Trie<unsigned int,BOnode>>::remove(unsigned int **a1, unsigned int a2, uint64_t a3)
{
  v23 = 0;
  result = LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, a2, &v23);
  if (result)
  {
    v6 = *a1;
    v7 = (*a1 + 2);
    *(v7 + 32 * v23 + 24) = -1;
    if (a3)
    {
      v8 = v7 + 32 * v23;
      v9 = *(v8 + 16);
      *a3 = *v8;
      *(a3 + 16) = v9;
      v6 = *a1;
    }

    v10 = *v6;
    v11 = *v6 & 0x1F;
    if (v11 >= 3)
    {
      v22 = 0;
      v13 = v23 + 1;
      while (1)
      {
        v14 = v13 & ~(-1 << v11);
        v23 = v14;
        v15 = v6[8 * v14 + 8];
        if (v15 == -1)
        {
          break;
        }

        v16 = LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, v15, &v22);
        v6 = *a1;
        if (!v16)
        {
          v17 = v6 + 2;
          v18 = v23;
          v19 = &v17[8 * v22];
          v20 = &v17[8 * v23];
          v21 = v20[1];
          *v19 = *v20;
          v19[1] = v21;
          v6 = *a1;
          (*a1)[8 * v18 + 8] = -1;
        }

        v22 = 0;
        v13 = v23 + 1;
        v11 = *v6;
      }
    }

    else
    {
      v12 = v10 >> 5;
      memmove(&v6[8 * v23 + 2], &v6[8 * v23 + 10], 32 * (~v23 + (v10 >> 5)));
      v6 = *a1;
      (*a1)[8 * v12] = -1;
    }

    *v6 -= 32;
    return 1;
  }

  return result;
}

_DWORD **LHash<unsigned int,Trie<unsigned int,BOnode>>::memStats(_DWORD **result, uint64_t *a2)
{
  v2 = *a2 + 8;
  *a2 = v2;
  v3 = *result;
  if (*result)
  {
    v4 = 1 << *v3;
    v5 = 32 * (v4 - 1) + 40;
    *a2 = v5 + v2;
    a2[1] += 32 * (v4 - (*v3 >> 5));
    v6 = 256;
    if (v5 < 0x100)
    {
      v6 = 32 * (v4 - 1) + 40;
    }

    ++*(a2 + v6 + 4);
  }

  return result;
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,BOnode>>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,Trie<unsigned int,BOnode>>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B528E34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,BOnode>>::init(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = MEMORY[0x1B8C85310](result, 0x1000C8052888210);
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  if (*a1)
  {
    *(a1 + 12) = **a1 >> 5;

    LHashIter<unsigned int,Trie<unsigned int,BOnode>>::sortKeys();
  }

  *(a1 + 12) = 0;
  return result;
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,BOnode>>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 32 * v10;
  result = v8 + 8;
  *a2 = *(v8 + 32);
  return result;
}

void *Trie<unsigned int,BOnode>::Trie(void *a1, unsigned int a2)
{
  *a1 = 0;
  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,Trie<unsigned int,BOnode>>::alloc(a1, a2);
  }

  a1[1] = 0;
  a1[2] = 0;
  return a1;
}

uint64_t Trie<unsigned int,BOnode>::~Trie(uint64_t a1)
{
  LHashIter<unsigned int,Trie<unsigned int,BOnode>>::LHashIter(v4, a1, 0);
  v3 = 0;
  while (LHashIter<unsigned int,Trie<unsigned int,BOnode>>::next(v4, &v3))
  {
    Trie<unsigned int,BOnode>::~Trie();
  }

  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8052888210);
  }

  LHash<unsigned int,float>::clear((a1 + 16), 0);
  LHash<unsigned int,Trie<unsigned int,BOnode>>::clear(a1, 0);
  return a1;
}

uint64_t Trie<unsigned int,BOnode>::findTrie(_DWORD **a1, unsigned int *a2, _BYTE *a3)
{
  v4 = a1;
  if (!a2 || (v6 = *a2, v6 == -1))
  {
    *a3 = 1;
  }

  else
  {
    v8 = 0;
    if (LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, v6, &v8))
    {
      return Trie<unsigned int,BOnode>::findTrie(*v4 + 32 * v8 + 8, a2 + 1, a3);
    }

    else
    {
      v4 = 0;
      *a3 = 0;
    }
  }

  return v4;
}

void *Trie<unsigned int,BOnode>::findPrefixTrie(_DWORD **a1, unsigned int *a2, _DWORD *a3)
{
  PrefixTrie = a1;
  if (a2 && (v6 = *a2, v6 != -1) && (v10 = 0, LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, v6, &v10)))
  {
    v7 = *PrefixTrie + 32 * v10;
    v9 = 0;
    PrefixTrie = Trie<unsigned int,BOnode>::findPrefixTrie(v7 + 8, a2 + 1, &v9);
    *a3 = v9 + 1;
  }

  else
  {
    *a3 = 0;
  }

  return PrefixTrie;
}

void *Trie<unsigned int,BOnode>::insertTrie(void *result, unsigned int *a2, _BYTE *a3)
{
  if (!a2 || (v5 = *a2, v5 == -1))
  {
LABEL_6:
    *a3 = 1;
  }

  else
  {
    v6 = a2 + 1;
    while (1)
    {
      result = LHash<unsigned int,Trie<unsigned int,BOnode>>::insert(result, v5, a3);
      if (!*a3)
      {
        break;
      }

      v7 = *v6++;
      v5 = v7;
      if (v7 == -1)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    return Trie<unsigned int,BOnode>::insertTrie(result, v6, &v8);
  }

  return result;
}

uint64_t Trie<unsigned int,BOnode>::removeTrie(unsigned int **a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (v4 == -1)
  {
    return 0;
  }

  v8 = a2[1];
  v7 = a2 + 1;
  if (v8 != -1)
  {
    LODWORD(v11[0]) = 0;
    if (LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, v4, v11))
    {
      return Trie<unsigned int,BOnode>::removeTrie(&(*a1)[8 * LODWORD(v11[0]) + 2], v7, a3);
    }

    return 0;
  }

  if (!a3)
  {
    memset(v11, 0, sizeof(v11));
    if (LHash<unsigned int,Trie<unsigned int,BOnode>>::remove(a1, v4, v11))
    {
      Trie<unsigned int,BOnode>::~Trie(v11);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    Trie<unsigned int,BOnode>::~Trie(v11);
    return v9;
  }

  return LHash<unsigned int,Trie<unsigned int,BOnode>>::remove(a1, v4, a3);
}

void sub_1B528E81C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Trie<unsigned int,BOnode>::~Trie(va);
  _Unwind_Resume(a1);
}

uint64_t Trie<unsigned int,BOnode>::numEntries(_DWORD **a1, unsigned int *a2)
{
  if (!a2 || (v4 = *a2, v4 == -1))
  {
    if (*a1)
    {
      return **a1 >> 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    result = LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(a1, v4, &v6);
    if (result)
    {
      return Trie<unsigned int,BOnode>::numEntries(&(*a1)[8 * v6 + 2], a2 + 1);
    }
  }

  return result;
}

uint64_t Trie<unsigned int,BOnode>::memStats(_DWORD **a1, uint64_t *a2)
{
  *a2 += 16;
  LHash<unsigned int,Trie<unsigned int,BOnode>>::memStats(a1, a2);
  LHashIter<unsigned int,Trie<unsigned int,BOnode>>::LHashIter(v7, a1, 0);
  v6 = 0;
  while (1)
  {
    v4 = LHashIter<unsigned int,Trie<unsigned int,BOnode>>::next(v7, &v6);
    if (!v4)
    {
      break;
    }

    *a2 -= 24;
    Trie<unsigned int,BOnode>::memStats(v4, a2);
  }

  result = v8;
  if (v8)
  {
    return MEMORY[0x1B8C85310](v8, 0x1000C8052888210);
  }

  return result;
}

void sub_1B528E948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TrieIter2<unsigned int,BOnode>::TrieIter2(uint64_t a1, _DWORD **a2, _DWORD *a3, int a4, uint64_t a5)
{
  v6 = a3;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  LHashIter<unsigned int,Trie<unsigned int,BOnode>>::LHashIter(a1 + 32, a2, a5);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!a4)
  {
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    ++v6;
LABEL_4:
    *v6 = -1;
  }

  return a1;
}

uint64_t TrieIter2<unsigned int,BOnode>::next(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 8);
      v4 = a1 + 32;

      return LHashIter<unsigned int,Trie<unsigned int,BOnode>>::next(v4, v3);
    }

    else
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        result = TrieIter2<unsigned int,BOnode>::next(v6);
        if (result)
        {
          return result;
        }

        v7 = *(a1 + 64);
        if (v7)
        {
          v8 = TrieIter2<unsigned int,unsigned int>::~TrieIter2(v7);
          MEMORY[0x1B8C85350](v8, 0x10F0C40A7879D68);
        }

        *(a1 + 64) = 0;
      }

      result = LHashIter<unsigned int,Trie<unsigned int,BOnode>>::next(a1 + 32, *(a1 + 8));
      if (result)
      {
        operator new();
      }
    }
  }

  else if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    *(a1 + 72) = 1;
    return *a1;
  }

  return result;
}

uint64_t Ngram::memStats(Ngram *this, MemStats *a2)
{
  *a2 += 168;
  Trie<unsigned int,BOnode>::memStats(this + 19, a2);
  v4 = *(this + 44);
  *&v10[8] = 0;
  v11 = 0;
  v9 = 0;
  *v10 = (v4 + 1);
  if (v4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v5 = 1;
  do
  {
    TrieIter2<unsigned int,BOnode>::TrieIter2(v8, this + 19, (*&v10[4] - 4 * v9), v5 - 1, 0);
    while (1)
    {
      v6 = TrieIter2<unsigned int,BOnode>::next(v8);
      if (!v6)
      {
        break;
      }

      *a2 -= 8;
      LHash<unsigned int,float>::memStats((v6 + 16), a2);
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v8);
    ++v5;
  }

  while (v5 <= *(this + 44));
  result = *&v10[4];
  if (*&v10[4])
  {
    return MEMORY[0x1B8C85310](*&v10[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B528EBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 48);
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void Ngram::Ngram(Ngram *this, Vocab *a2, int a3)
{
  LM::LM(this, a2);
  *v6 = &unk_1F2D0A578;
  v7 = (*(*a2 + 72))(a2);
  Trie<unsigned int,BOnode>::Trie(this + 19, v7);
  *(this + 44) = a3;
  *(this + 90) = 0;
  *(this + 23) = 0;
  if (!a3)
  {
    *(this + 44) = 1;
  }
}

uint64_t Ngram::findBOW(Ngram *this, unsigned int *a2)
{
  v4 = 0;
  Trie = Trie<unsigned int,BOnode>::findTrie(this + 19, a2, &v4);
  if (Trie)
  {
    return Trie + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t Ngram::findProb(Ngram *this, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  result = Trie<unsigned int,BOnode>::findTrie(this + 19, a3, &v6);
  if (result)
  {
    v5 = result;
    v7 = 0;
    if (LHash<unsigned int,float>::locate((result + 16), a2, &v7))
    {
      return *(v5 + 16) + 8 * v7 + 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *Ngram::insertBOW(Ngram *this, unsigned int *a2)
{
  v4 = 0;
  inserted = Trie<unsigned int,BOnode>::insertTrie(this + 19, a2, &v4);
  if (!v4)
  {
    inserted[2] = 0;
  }

  return inserted + 1;
}

uint64_t Ngram::insertProb(Ngram *this, unsigned int a2, unsigned int *a3)
{
  v7 = 0;
  inserted = Trie<unsigned int,BOnode>::insertTrie(this + 19, a3, &v7);
  v5 = inserted;
  if (!v7)
  {
    inserted[2] = 0;
    LHash<unsigned int,float>::alloc(inserted + 2, 1u);
  }

  v8 = 0;
  return LHash<unsigned int,float>::insert(v5 + 2, a2, &v8);
}

uint64_t Ngram::removeProb(Ngram *this, unsigned int a2, unsigned int *a3)
{
  v5 = 0;
  result = Trie<unsigned int,BOnode>::findTrie(this + 19, a3, &v5);
  if (result)
  {
    return LHash<unsigned int,float>::remove((result + 16), a2, 0);
  }

  return result;
}

uint64_t Ngram::numProbs(Ngram *this, unsigned int *a2)
{
  v4 = 0;
  result = Trie<unsigned int,BOnode>::findTrie(this + 19, a2, &v4);
  if (result)
  {
    v3 = *(result + 16);
    if (v3)
    {
      return *v3 >> 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Ngram::clear(Ngram *this)
{
  if (*(this + 44))
  {
    Array<unsigned int>::alloc();
  }

  return 0;
}

void sub_1B528F028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 48);
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

char *Ngram::contextID(Ngram *this, unsigned int a2, const unsigned int *a3, unsigned int *a4)
{
  v4 = this + 152;
  *a4 = 0;
  if (*(this + 44) == 1)
  {
    return this + 152;
  }

  v10 = 0;
  v5 = this + 152;
  do
  {
    v11 = a3[v10];
    if (v11 == -1)
    {
      break;
    }

    v14 = 0;
    if (!LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(v4, v11, &v14))
    {
      break;
    }

    v12 = *v4 + 32 * v14;
    v4 = (v12 + 8);
    if (a2 != -1)
    {
      v15 = 0;
      if (!LHash<unsigned int,float>::locate((v12 + 24), a2, &v15))
      {
        continue;
      }
    }

    *a4 = v10 + 1;
    v5 = v4;
    ++v10;
  }

  while (v10 < (*(this + 44) - 1));
  return v5;
}

float Ngram::contextBOW(Ngram *this, const unsigned int *a2, unsigned int a3)
{
  v3 = 0.0;
  if (*(this + 44) != 1)
  {
    v6 = 0;
    v7 = this + 152;
    v8 = a3;
    do
    {
      v9 = a2[v6];
      if (v9 == -1)
      {
        break;
      }

      v11 = 0;
      if (!LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(v7, v9, &v11))
      {
        break;
      }

      v7 = (*v7 + 32 * v11 + 8);
      if (v6 >= v8)
      {
        v3 = v3 + *(v7 + 2);
      }

      ++v6;
    }

    while (v6 < (*(this + 44) - 1));
  }

  return v3;
}

float Ngram::wordProbBO(uint64_t a1, unsigned int a2, unsigned int *a3, unsigned int a4, uint64_t a5)
{
  v9 = 0;
  v10 = -INFINITY;
  v11 = (a1 + 152);
  v12 = a4;
  v13 = 1;
  v14 = 0.0;
  while (1)
  {
    v21 = 0;
    if (LHash<unsigned int,float>::locate(v11 + 2, a2, &v21))
    {
      v10 = *&v11[2][2 * v21 + 1];
      v9 = v13;
      v14 = 0.0;
    }

    if (!v12)
    {
      break;
    }

    v15 = *a3;
    if (*a3 == -1)
    {
      break;
    }

    v22 = 0;
    if (!LHash<unsigned int,Trie<unsigned int,BOnode>>::locate(v11, v15, &v22))
    {
      break;
    }

    v16 = &(*v11)[8 * v22];
    v11 = (v16 + 8);
    v14 = v14 + *(v16 + 16);
    --v12;
    ++a3;
    v13 = (v13 + 1);
  }

  if ((*(*a1 + 264))(a1) && !*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
  {
    v17 = (*(*a1 + 24))(a1);
    if (v9)
    {
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "[", 1);
      v17 = MEMORY[0x1B8C84C10](v18, v9);
      v19 = "gram]";
    }

    else
    {
      v19 = "[OOV]";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, 5);
  }

  if (*a5)
  {
    *(*a5 + 48) = v9;
  }

  return v14 + v10;
}

_DWORD *Ngram::wordProb(_DWORD *a1, const unsigned int *a2, Vocab *this, uint64_t a4)
{
  v8 = Vocab::length(this, a2);
  if (!*(*(*a1 + 344))(a1) || (result = (*(**(a1 + 3) + 88))(*(a1 + 3)), *result != a2) && (a1[44] < 2u || (v10 = *this, result = (*(**(a1 + 3) + 88))(*(a1 + 3)), v10 != *result) && (a1[44] < 3u || !v8 || (v11 = *(this + 1), result = (*(**(a1 + 3) + 88))(*(a1 + 3)), v11 != *result))))
  {
    v12 = a1[44] - 1;
    if (v8 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8;
    }

    v14 = *(*a1 + 472);

    return v14(a1, a2, this, v13, a4);
  }

  return result;
}

uint64_t Ngram::read(Ngram *this, File *a2, unsigned int a3)
{
  v160[101] = *MEMORY[0x1E69E9840];
  v123 = -1;
  bzero(v160, 0x328uLL);
  bzero(v159, 0x328uLL);
  Ngram::clear(this);
  v122 = -1;
  LOBYTE(__s[0]) = 0;
  inserted = Trie<unsigned int,BOnode>::insertTrie(this + 19, &v122, __s);
  if (!LOBYTE(__s[0]))
  {
    inserted[2] = 0;
  }

  *(inserted + 2) = -8388608;
  v117 = File::ftell(a2);
  v7 = File::getline(a2);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v118 = 0;
    do
    {
      v10 = *v7;
      v11 = v123;
      if (v123)
      {
        if (v123 == -1)
        {
          if (!strcmp(v7, Ngram_BinaryFormatString))
          {
            File::File(__s, *a2, "rb", 1);
            if (v117 != -1)
            {
              File::fseek(__s, v117, 0);
            }

            if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
            {
              v66 = (*(*this + 24))(this);
              v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "reading ", 8);
              v68 = strlen(*a2);
              v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, *a2, v68);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " in binary format\n", 18);
            }

            Binary = Ngram::readBinary(this, __s, a3);
            if (Binary)
            {
              v70 = File::ftell(__s);
              if (v70 != -1)
              {
                File::fseek(a2, v70, 0);
              }
            }

            File::~File(__s);
            return Binary;
          }

          if (!strcmp(v7, Ngram_BinaryV1FormatString))
          {
            if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
            {
              v71 = (*(*this + 24))(this);
              v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "reading ", 8);
              v73 = strlen(*a2);
              v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, *a2, v73);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " in old binary format\n", 22);
            }

            return Ngram::readBinaryV1(this, a2, a3);
          }

          if (v10 == 92 && !strncmp(v7, "\\data\", 6uLL))
          {
            v123 = 0;
          }

          goto LABEL_100;
        }

        if (v10 != 92 || v9 == 0)
        {
          if (v10 != 92)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
          {
            v20 = (*(*this + 24))(this);
            v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "discarded ", 10);
            v22 = MEMORY[0x1B8C84C30](v21, v9);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " OOV ", 5);
            v24 = MEMORY[0x1B8C84C00](v23, v123);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "-grams\n", 7);
          }

          v9 = 0;
        }

        if (sscanf(v7, "\\%d-grams", &v123) != 1)
        {
          if (!strncmp(v7, "\\end\", 5uLL))
          {
            v85 = 0;
            v86 = v8 + 1;
            while (v85 <= *(this + 44))
            {
              v87 = v160[v85];
              v88 = v159[v85];
              if (v87 != v88)
              {
                v89 = File::position(a2, MEMORY[0x1E69E5300]);
                v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "warning: ", 9);
                v91 = MEMORY[0x1B8C84C30](v90, v88);
                v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, " ", 1);
                v93 = MEMORY[0x1B8C84C10](v92, v85);
                v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "-grams read, expected ", 22);
                v95 = MEMORY[0x1B8C84C30](v94, v87);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "\n", 1);
              }

              ++v85;
              Binary = 1;
              if (v86 == v85)
              {
                return Binary;
              }
            }

            return 1;
          }

          v11 = v123;
LABEL_58:
          if (v11 <= *(this + 44))
          {
            v157 = 0u;
            v158 = 0u;
            v155 = 0u;
            v156 = 0u;
            v153 = 0u;
            v154 = 0u;
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            *__s = 0u;
            v128 = 0u;
            v25 = Vocab::parseWords(v7, __s, (v11 + 3), v6);
            v26 = v25;
            if (v25 < v123 + 1 || v25 > v123 + 2)
            {
              v100 = File::position(a2, MEMORY[0x1E69E5300]);
              v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "ngram line has ", 15);
              v102 = MEMORY[0x1B8C84C10](v101, v26);
              v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, " fields (", 9);
              v104 = MEMORY[0x1B8C84C00](v103, v123 + 2);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, " expected)\n", 11);
              return 0;
            }

            if (*(this + 23))
            {
              LODWORD(v124) = 0;
              if (sscanf(__s[0], "%u", &v124) != 1 || (v27 = *(this + 23), *v27 <= LODWORD(v124)))
              {
                v96 = File::position(a2, MEMORY[0x1E69E5300]);
                v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "invalid codebook index ", 24);
                v98 = strlen(__s[0]);
                v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, __s[0], v98);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, "\n", 2);
                return 0;
              }

              Prob = PQCodebook::getProb(v27, LODWORD(v124));
            }

            else
            {
              v124 = 0.0;
              if (!parseLogP(__s[0], &v124))
              {
                v105 = File::position(a2, MEMORY[0x1E69E5300]);
                v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "bad prob ", 10);
                v107 = strlen(__s[0]);
                v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, __s[0], v107);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, "\n", 2);
                return 0;
              }

              Prob = v124;
            }

            v29 = Prob;
            if (v29 > 0.0)
            {
              v30 = File::position(a2, MEMORY[0x1E69E5300]);
              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "warning: questionable prob ", 28);
              v32 = strlen(__s[0]);
              v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, __s[0], v32);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "\n", 2);
            }

            else if (v29 == -99.0)
            {
              v29 = -INFINITY;
            }

            v34 = 0.0;
            if (v26 == v123 + 2)
            {
              if (v123 == v8)
              {
                v34 = 0.0;
                if (*__s[v8 + 1] != 48)
                {
                  v35 = File::position(a2, MEMORY[0x1E69E5300]);
                  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "ignoring non-zero bow ", 23);
                  v37 = strlen(__s[v123 + 1]);
                  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, __s[v123 + 1], v37);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " for maximal ngram\n", 20);
                  v34 = 0.0;
                }
              }

              else
              {
                v34 = 0.0;
                if (v123 != *(this + 44))
                {
                  v39 = &__s[v123];
                  if (*(this + 23))
                  {
                    LODWORD(v124) = 0;
                    if (sscanf(v39[1], "%u", &v124) != 1 || (v40 = *(this + 23), *v40 <= LODWORD(v124)))
                    {
                      v109 = File::position(a2, MEMORY[0x1E69E5300]);
                      v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, "invalid codebook index ", 24);
                      v111 = strlen(__s[v123 + 1]);
                      v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, __s[v123 + 1], v111);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, "\n", 2);
                      return 0;
                    }

                    v41 = PQCodebook::getProb(v40, LODWORD(v124));
                  }

                  else
                  {
                    v42 = v39[1];
                    v124 = 0.0;
                    if (!parseLogP(v42, &v124))
                    {
                      v113 = File::position(a2, MEMORY[0x1E69E5300]);
                      v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, "bad bow ", 9);
                      v115 = strlen(__s[v123 + 1]);
                      v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, __s[v123 + 1], v115);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, "\n", 2);
                      return 0;
                    }

                    v41 = v124;
                  }

                  v34 = v41;
                  if (v34 == INFINITY)
                  {
                    v43 = File::position(a2, MEMORY[0x1E69E5300]);
                    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "warning: questionable bow ", 27);
                    v45 = strlen(__s[v123 + 1]);
                    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, __s[v123 + 1], v45);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "\n", 2);
                  }

                  else if (v34 == -99.0)
                  {
                    v34 = -INFINITY;
                  }
                }
              }
            }

            v47 = v123;
            ++v159[v123];
            __s[v47 + 1] = 0;
            v48 = **(this + 3);
            if (!a3)
            {
              (*(v48 + 256))();
LABEL_90:
              Vocab::reverse(&v125, v49);
              if (v26 == v123 + 2 && v123 < *(this + 44))
              {
                LOBYTE(v124) = 0;
                v50 = Trie<unsigned int,BOnode>::insertTrie(this + 19, &v125, &v124);
                if (!LOBYTE(v124))
                {
                  *(v50 + 2) = 0;
                }

                v50[2] = v34;
              }

              LOBYTE(v124) = 0;
              Trie = Trie<unsigned int,BOnode>::findTrie(this + 19, v126, &v124);
              if (!Trie)
              {
                v52 = File::position(a2, MEMORY[0x1E69E5300]);
                v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "warning: no bow for prefix of ngram ", 37);
                v54 = operator<<(v53, &__s[1]);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "\n", 2);
                goto LABEL_100;
              }

              if (v118)
              {
LABEL_97:
                v118 = 1;
              }

              else
              {
                v55 = v125;
                v118 = 0;
                if (v55 == *(*(**(this + 3) + 88))(*(this + 3)) && v29 != -INFINITY)
                {
                  if (!*(*(**(this + 3) + 152))(*(this + 3)))
                  {
                    v56 = File::position(a2, MEMORY[0x1E69E5300]);
                    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "warning: non-zero probability for ", 34);
                    v58 = *(this + 3);
                    v59 = (*(*v58 + 88))(v58);
                    v60 = (*(*v58 + 32))(v58, *v59);
                    v61 = strlen(v60);
                    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v60, v61);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " in closed-vocabulary LM\n", 25);
                    goto LABEL_97;
                  }

                  v118 = 0;
                }
              }

              LOBYTE(v124) = 0;
              *LHash<unsigned int,float>::insert((Trie + 16), v125, &v124) = v29;
              goto LABEL_100;
            }

            if ((*(v48 + 288))())
            {
              goto LABEL_90;
            }

            ++v9;
          }

          goto LABEL_100;
        }

        if (v123 < 1 || v123 > v8)
        {
          goto LABEL_128;
        }

        if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
        {
          v12 = (*(*this + 24))(this);
          if (v123 <= *(this + 44))
          {
            v13 = "reading ";
          }

          else
          {
            v13 = "skipping ";
          }

          if (v123 <= *(this + 44))
          {
            v14 = 8;
          }

          else
          {
            v14 = 9;
          }

LABEL_25:
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
          v16 = MEMORY[0x1B8C84C30](v15, v160[v123]);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
          v18 = MEMORY[0x1B8C84C00](v17, v123);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "-grams\n", 7);
        }
      }

      else
      {
        v121 = 0;
        v120 = 0;
        if (v10 == 92 && sscanf(v7, "\\%d-grams", &v123) == 1)
        {
          if (v123 < 1 || v123 > v8)
          {
LABEL_128:
            v82 = File::position(a2, MEMORY[0x1E69E5300]);
            v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "invalid ngram order ", 20);
            v84 = MEMORY[0x1B8C84C00](v83, v123);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "\n", 1);
            return 0;
          }

          if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
          {
            v12 = (*(*this + 24))(this);
            if (v123 <= *(this + 44))
            {
              v13 = "reading ";
            }

            else
            {
              v13 = "skipping ";
            }

            if (v123 <= *(this + 44))
            {
              v14 = 8;
            }

            else
            {
              v14 = 9;
            }

            goto LABEL_25;
          }
        }

        else
        {
          if (sscanf(v7, "ngram %u=%lld", &v121, &v120) != 2)
          {
            v75 = File::position(a2, MEMORY[0x1E69E5300]);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "unexpected input\n", 17);
            return 0;
          }

          if (v121 - 101 <= 0xFFFFFF9B)
          {
            v76 = File::position(a2, MEMORY[0x1E69E5300]);
            v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "ngram order ", 12);
            v78 = MEMORY[0x1B8C84C10](v77, v121);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " out of range\n", 14);
            return 0;
          }

          if (v120 < 0)
          {
            v79 = File::position(a2, MEMORY[0x1E69E5300]);
            v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "ngram number ", 13);
            v81 = MEMORY[0x1B8C84C60](v80, v120);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " out of range\n", 14);
            return 0;
          }

          if (v121 > v8)
          {
            v8 = v121;
          }

          v160[v121] = v120;
        }
      }

LABEL_100:
      v7 = File::getline(a2);
    }

    while (v7);
  }

  v63 = File::position(a2, MEMORY[0x1E69E5300]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "reached EOF before \\end\\\n", 25);
  return 0;
}

uint64_t Ngram::readBinary(Ngram *this, File *a2, uint64_t a3)
{
  v6 = File::getline(a2);
  if (!v6 || strcmp(v6, Ngram_BinaryFormatString))
  {
    v7 = File::position(a2, MEMORY[0x1E69E5300]);
    v8 = "bad binary format\n";
    v9 = 18;
LABEL_4:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    return 0;
  }

  v12 = File::getline(a2);
  v23 = 0;
  if (sscanf(v12, "maxorder %u", &v23) != 1)
  {
    v7 = File::position(a2, MEMORY[0x1E69E5300]);
    v8 = "could not read ngram order\n";
    v9 = 27;
    goto LABEL_4;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  if ((*(**(this + 3) + 336))(*(this + 3), a2, &v20, a3))
  {
    v19 = File::ftell(a2);
    if ((v19 & 0x8000000000000000) == 0)
    {
      Ngram::clear(this);
      v10 = Ngram::readBinaryNode(this, this + 152, *(this + 44), v23, a2, &v19, a3, &v20);
      goto LABEL_13;
    }

    v13 = File::position(a2, MEMORY[0x1E69E5300]);
    v14 = __error();
    v15 = srilm_ts_strerror(*v14);
    v16 = strlen(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
  }

  v10 = 0;
LABEL_13:
  if (v21)
  {
    MEMORY[0x1B8C85310](v21, 0x1000C8052888210);
  }

  return v10;
}

void sub_1B5290758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::locale::~locale((v13 - 40));
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t Ngram::readBinaryV1(Ngram *this, File *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = File::getline(a2);
  if (v6 && sscanf(v6, "index: %1023s", &__s) == 1 && (v7 = File::getline(a2)) != 0 && sscanf(v7, "data: %1023s", &__str) == 1)
  {
    v8 = *a2;
    if (*a2 && __s == 42)
    {
      v9 = strlen(*a2);
      v28 = 0;
      v29 = 0;
      v10 = strlen(&__s) + v9;
      LODWORD(v27.__locale_) = 0;
      HIDWORD(v27.__locale_) = v10;
      if (v10)
      {
        Array<char>::alloc();
      }

      snprintf(0, v10, "%s%s", v8, v35);
      snprintf(&__s, 0x400uLL, "%.1023s", (v28 - SLODWORD(v27.__locale_)));
      v8 = *a2;
    }

    if (v8 && __str == 42)
    {
      v16 = strlen(v8);
      v28 = 0;
      v29 = 0;
      v17 = strlen(&__str) + v16;
      LODWORD(v27.__locale_) = 0;
      HIDWORD(v27.__locale_) = v17;
      if (v17)
      {
        Array<char>::alloc();
      }

      snprintf(0, v17, "%s%s", v8, v37);
      snprintf(&__str, 0x400uLL, "%.1023s", (v28 - SLODWORD(v27.__locale_)));
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    if ((*(**(this + 3) + 336))(*(this + 3), a2, &v30, a3))
    {
      File::File(&v27, &__s, "r", 1);
      File::File(v26, &__str, "rb", 1);
      __ptr = 0;
      v24 = 0.0;
      v18 = File::fread(&v27, &__ptr, 8uLL, 1uLL);
      v19 = &v27;
      if (v18 == 1 && __ptr == 0x123456789ABCDEFLL && (v20 = File::fread(v26, &v24, 4uLL, 1uLL), v19 = v26, v20 == 1) && v24 == 9.8765e10)
      {
        Ngram::clear(this);
        BinaryV1Node = Ngram::readBinaryV1Node(this, this + 152, &v27, v26, a3, &v30, 1);
      }

      else
      {
        v21 = File::offset(v19, MEMORY[0x1E69E5300]);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "incompatible binary format", 26);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(&v33, MEMORY[0x1E69E5318]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(&v33);
        std::ostream::put();
        std::ostream::flush();
        BinaryV1Node = 0;
      }

      File::~File(v26);
      File::~File(&v27);
    }

    else
    {
      BinaryV1Node = 0;
    }

    if (v31)
    {
      MEMORY[0x1B8C85310](v31, 0x1000C8052888210);
    }
  }

  else
  {
    v11 = File::position(a2, MEMORY[0x1E69E5300]);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "invalid binary LM format!", 25);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v27, MEMORY[0x1E69E5318]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  return BinaryV1Node;
}

void sub_1B5290C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::locale a43)
{
  File::~File(&a27);
  v45 = *(v43 + 8);
  if (v45)
  {
    MEMORY[0x1B8C85310](v45, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t Ngram::write(Ngram *this, File *a2)
{
  if (*(this + 148))
  {
    return Ngram::writeBinaryNgram(this, a2);
  }

  else
  {
    return (*(*this + 336))(this, a2, *(this + 44));
  }
}

uint64_t Ngram::writeBinaryNgram(Ngram *this, File *a2)
{
  File::fprintf(a2, "%s", Ngram_BinaryFormatString);
  File::fprintf(a2, "maxorder %u\n", *(this + 44));
  (*(**(this + 3) + 344))();
  v11 = File::ftell(a2);
  if ((v11 & 0x8000000000000000) == 0)
  {
    return Ngram::writeBinaryNode(this, this + 152, 1, a2, &v11);
  }

  v5 = File::position(a2, MEMORY[0x1E69E5300]);
  v6 = __error();
  v7 = srilm_ts_strerror(*v6);
  v8 = strlen(v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v12);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

uint64_t Ngram::writeWithOrder(Ngram *this, File *a2, unsigned int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(&v35[1], 0, 496);
  if (a3 >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = a3;
  }

  v35[0] = 0uLL;
  File::fprintf(a2, "\n\\data\\\n");
  if (a3)
  {
    v7 = a3;
    if (a3 >= 0x64uLL)
    {
      v7 = 100;
    }

    v8 = -v7;
    v9 = 1;
    do
    {
      v10 = (*(*this + 456))(this, v9);
      *&v37[2 * v9 + 101] = v10;
      File::fprintf(a2, "ngram %d=%lld\n", v9++, v10);
    }

    while (v8 + v9 != 1);
    v11 = 1;
    do
    {
      File::fprintf(a2, "\n\\%d-grams:\n", v11);
      if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
      {
        v12 = (*(*this + 24))(this);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "writing ", 8);
        v14 = MEMORY[0x1B8C84C30](v13, *&v37[2 * v11 + 101]);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
        v16 = MEMORY[0x1B8C84C10](v15, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "-grams\n", 7);
      }

      v17 = Vocab::compareIndex(*(this + 3));
      TrieIter2<unsigned int,BOnode>::TrieIter2(v33, this + 19, v37, v11 - 1, v17);
      if (v11 <= 1)
      {
        v18 = "";
      }

      else
      {
        v18 = " ";
      }

      while (1)
      {
        v19 = TrieIter2<unsigned int,BOnode>::next(v33);
        if (!v19)
        {
          break;
        }

        (*(**(this + 3) + 248))(*(this + 3), v37, v35, 101);
        Vocab::reverse(v35, v20);
        v21 = Vocab::compareIndex(*(this + 3));
        LHashIter<unsigned int,float>::LHashIter(v31, (v19 + 16), v21);
        v30 = 0;
        while (1)
        {
          v22 = LHashIter<unsigned int,float>::next(v31, &v30);
          if (!v22)
          {
            break;
          }

          if (File::error(a2))
          {
            if (v32)
            {
              MEMORY[0x1B8C85310](v32, 0x1000C8052888210);
            }

            TrieIter2<unsigned int,unsigned int>::~TrieIter2(v33);
            return 0;
          }

          if (*v22 == -INFINITY)
          {
            v23 = -99.0;
          }

          else
          {
            v23 = *v22;
          }

          File::fprintf(a2, "%.*lg\t", 7, v23);
          Vocab::write(a2, v35, v24);
          v25 = (*(**(this + 3) + 32))(*(this + 3), v30);
          File::fprintf(a2, "%s%s", v18, v25);
          if (v11 < v6)
          {
            v36 = v30;
            v34 = 0;
            Trie = Trie<unsigned int,BOnode>::findTrie(this + 19, &v36, &v34);
            if (Trie)
            {
              v27 = (Trie + 8);
              if (Trie != -8)
              {
                if (*v27 == -INFINITY)
                {
                  v28 = -99.0;
                }

                else
                {
                  v28 = *v27;
                }

                File::fprintf(a2, "\t%.*lg", 7, v28);
              }
            }
          }

          File::fprintf(a2, "\n");
        }

        if (v32)
        {
          MEMORY[0x1B8C85310](v32, 0x1000C8052888210);
        }
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v33);
      ++v11;
    }

    while (v11 != v6 + 1);
  }

  File::fprintf(a2, "\n\\end\\\n");
  return 1;
}

void sub_1B5291350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(va);
  _Unwind_Resume(a1);
}

uint64_t Ngram::writeBinaryNode(uint64_t a1, uint64_t a2, uint64_t a3, File *a4, off_t *a5)
{
  v11 = *(a1 + 176);
  if ((v11 - a3) >= 4)
  {
    v12 = 8;
  }

  else
  {
    v12 = 4;
  }

  if (v11 == a3)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v51 = *a5;
  while (1)
  {
    v14 = writeBinaryCount(a4, 0, v13);
    if (!v14)
    {
      return 0;
    }

    *a5 += v14;
    v15 = writeBinaryCount(a4, *(a2 + 8));
    if (!v15)
    {
      return 0;
    }

    *a5 += v15;
    v16 = *(a2 + 16);
    v17 = v16 ? *v16 >> 5 : 0;
    v18 = writeBinaryCount(a4, v17, 0);
    if (!v18)
    {
      return 0;
    }

    *a5 += v18;
    v56[0] = 0;
    LHashIter<unsigned int,float>::LHashIter(v54, (a2 + 16), SArray_compareKey<unsigned int>);
    while (1)
    {
      v19 = LHashIter<unsigned int,float>::next(v54, v56);
      if (!v19)
      {
        break;
      }

      v20 = writeBinaryCount(a4, v56[0], 0);
      if (!v20 || (*a5 += v20, (v21 = writeBinaryCount(a4, *v19)) == 0))
      {
        v22 = 0;
        v5 = 0;
        goto LABEL_34;
      }

      *a5 += v21;
    }

    LHashIter<unsigned int,Trie<unsigned int,BOnode>>::LHashIter(v52, a2, SArray_compareKey<unsigned int>);
    while (1)
    {
      v23 = LHashIter<unsigned int,Trie<unsigned int,BOnode>>::next(v52, v56);
      if (!v23)
      {
        break;
      }

      v24 = writeBinaryCount(a4, v56[0], 0);
      if (v24)
      {
        *a5 += v24;
        if (Ngram::writeBinaryNode(a1, v23, (a3 + 1), a4, a5))
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    v25 = *a5;
    if ((File::fseek(a4, v51, 0) & 0x80000000) != 0)
    {
LABEL_30:
      v38 = File::offset(a4, MEMORY[0x1E69E5300]);
      v39 = __error();
      v40 = srilm_ts_strerror(*v39);
      v41 = strlen(v40);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
      std::ios_base::getloc((v42 + *(*v42 - 24)));
      v43 = std::locale::use_facet(&v56[1], MEMORY[0x1E69E5318]);
      (v43->__vftable[2].~facet_0)(v43, 10);
      std::locale::~locale(&v56[1]);
      std::ostream::put();
      std::ostream::flush();
LABEL_31:
      v22 = 0;
      v5 = 0;
      goto LABEL_32;
    }

    v26 = writeBinaryCount(a4, v25 - v51, v13);
    v27 = v26;
    if (!v26)
    {
      goto LABEL_31;
    }

    if (v26 <= v13)
    {
      if ((File::fseek(a4, v25, 0) & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      v22 = 0;
      v5 = 1;
    }

    else
    {
      v28 = File::offset(a4, MEMORY[0x1E69E5300]);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "increasing offset bytes from ", 29);
      v30 = MEMORY[0x1B8C84C10](v29, v13);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " to ", 4);
      v32 = MEMORY[0x1B8C84C10](v31, v27);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " (order ", 8);
      v34 = MEMORY[0x1B8C84C10](v33, *(a1 + 176));
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ",", 1);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " level ", 7);
      v37 = MEMORY[0x1B8C84C10](v36, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ")\n", 2);
      if ((File::fseek(a4, v51, 0) & 0x80000000) != 0)
      {
        v44 = File::offset(a4, MEMORY[0x1E69E5300]);
        v45 = __error();
        v46 = srilm_ts_strerror(*v45);
        v47 = strlen(v46);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
        std::ios_base::getloc((v48 + *(*v48 - 24)));
        v49 = std::locale::use_facet(&v56[1], MEMORY[0x1E69E5318]);
        (v49->__vftable[2].~facet_0)(v49, 10);
        std::locale::~locale(&v56[1]);
        std::ostream::put();
        std::ostream::flush();
        v22 = 0;
        v5 = 0;
      }

      else
      {
        *a5 = v51;
        v22 = 1;
      }

      v13 = v27;
    }

LABEL_32:
    if (v53)
    {
      MEMORY[0x1B8C85310](v53, 0x1000C8052888210);
    }

LABEL_34:
    if (v55)
    {
      MEMORY[0x1B8C85310](v55, 0x1000C8052888210);
    }

    if ((v22 & 1) == 0)
    {
      return v5;
    }
  }
}

void sub_1B5291870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20)
{
  std::locale::~locale(&a20);
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, v20);
  }

  if (a18)
  {
    MEMORY[0x1B8C85310](a18, v20);
  }

  _Unwind_Resume(a1);
}

uint64_t Ngram::readBinaryNode(uint64_t a1, uint64_t a2, int a3, int a4, File *a5, off_t *a6, uint64_t a7, int *a8)
{
  if (!a4)
  {
    return 1;
  }

  v42 = 0;
  result = readBinaryCount(a5, &v42);
  if (!result)
  {
    return result;
  }

  v17 = v42 + *a6;
  *a6 += result;
  if (!a3)
  {
    if ((File::fseek(a5, v17, 0) & 0x80000000) != 0)
    {
      v33 = File::offset(a5, MEMORY[0x1E69E5300]);
      v34 = __error();
      v35 = srilm_ts_strerror(*v34);
      v36 = strlen(v35);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
      std::ios_base::getloc((v37 + *(*v37 - 24)));
      v38 = std::locale::use_facet(&v44, MEMORY[0x1E69E5318]);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
      return 0;
    }

    *a6 = v17;
    return 1;
  }

  result = readBinaryCount(a5, (a2 + 8));
  if (!result)
  {
    return result;
  }

  *a6 += result;
  v44.__locale_ = 0;
  result = readBinaryCount(a5, &v44);
  if (!result)
  {
    return result;
  }

  v41 = v17;
  locale = v44.__locale_;
  v19 = *a6 + result;
  *a6 = v19;
  if (!locale)
  {
LABEL_14:
    if (v19 < v41)
    {
      v23 = (a3 - 1);
      v24 = (a4 - 1);
      do
      {
        v44.__locale_ = 0;
        result = readBinaryCount(a5, &v44);
        if (!result)
        {
          return result;
        }

        v20 = v44.__locale_;
        *a6 += result;
        if (a8[1] <= v20)
        {
          goto LABEL_32;
        }

        v25 = *Array<unsigned int>::operator[](a8, v20);
        if (v25 == -1)
        {
          v28 = a1;
          v27 = a2;
          v29 = 0;
        }

        else
        {
          LOBYTE(v44.__locale_) = 0;
          v26 = LHash<unsigned int,Trie<unsigned int,BOnode>>::insert(a2, v25, &v44);
          v27 = v26;
          if (!LOBYTE(v44.__locale_))
          {
            *v26 = 0;
          }

          v28 = a1;
          v29 = v23;
        }

        result = Ngram::readBinaryNode(v28, v27, v29, v24, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }

        v19 = *a6;
      }

      while (*a6 < v41);
    }

    if (v19 != v41)
    {
      v30 = File::offset(a5, MEMORY[0x1E69E5300]);
      v31 = "data misaligned\n";
      v32 = 16;
LABEL_33:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
      return 0;
    }

    return 1;
  }

  while (1)
  {
    v44.__locale_ = 0;
    result = readBinaryCount(a5, &v44);
    if (!result)
    {
      return result;
    }

    v20 = v44.__locale_;
    *a6 += result;
    if (a8[1] <= v20)
    {
LABEL_32:
      v39 = File::offset(a5, MEMORY[0x1E69E5300]);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "word index ", 11);
      v30 = MEMORY[0x1B8C84C10](v40, v20);
      v31 = " out of range\n";
      v32 = 14;
      goto LABEL_33;
    }

    v21 = *Array<unsigned int>::operator[](a8, v20);
    LODWORD(v44.__locale_) = 0;
    result = readBinaryCount(a5, &v44);
    if (!result)
    {
      return result;
    }

    *a6 += result;
    if (v21 != -1)
    {
      v22 = v44.__locale_;
      v43 = 0;
      *LHash<unsigned int,float>::insert((a2 + 16), v21, &v43) = v22;
    }

    if (!--locale)
    {
      v19 = *a6;
      goto LABEL_14;
    }
  }
}

uint64_t Ngram::readBinaryV1Node(Ngram *a1, uint64_t a2, File *a3, File *a4, uint64_t a5, int *a6, uint64_t a7)
{
  if (*(a1 + 44) >= a7)
  {
    v14 = *(a6 + 1);
    v15 = a6[1];
    v16 = *a6;
    v40 = 0;
    v38 = 0;
    v39 = 0;
    __ptr = 0;
    if (File::fread(a4, &__ptr, 4uLL, 1uLL) == 1 && File::fread(a4, &v40, 4uLL, 1uLL) == 1)
    {
      v17 = v14 - 4 * v16;
      *(a2 + 8) = v40;
      if (!a5)
      {
        LHash<unsigned int,float>::clear((a2 + 16), __ptr);
      }

      if (!__ptr)
      {
LABEL_17:
        LODWORD(v42.__locale_) = 0;
        for (i = 1; File::fread(a3, &v42, 4uLL, 1uLL) == 1; i = 1)
        {
          i = 1;
          if (File::fread(a3, &v39, 4uLL, 1uLL) != 1)
          {
            break;
          }

          i = 1;
          if (File::fread(a3, &v38, 8uLL, 1uLL) != 1)
          {
            break;
          }

          if (v38 == -1 && v39 == -1)
          {
            return 1;
          }

          if (v39 >= v15)
          {
            goto LABEL_36;
          }

          v22 = *(v17 + 4 * v39);
          if (v22 == -1)
          {
            Ngram::skipToNextTrie(1, a3, (LODWORD(v42.__locale_) + 1));
          }

          else
          {
            v41 = 0;
            v23 = LHash<unsigned int,Trie<unsigned int,BOnode>>::insert(a2, v22, &v41);
            v24 = v23;
            if (!v41)
            {
              *v23 = 0;
            }

            if ((File::fseek(a4, v38, 0) & 0x80000000) != 0)
            {
              v34 = File::offset(a4, MEMORY[0x1E69E5300]);
              v35 = __error();
              v36 = srilm_ts_strerror(*v35);
              v32 = strlen(v36);
              v30 = v34;
              v31 = v36;
              goto LABEL_37;
            }

            if (!Ngram::readBinaryV1Node(a1, v24, a3, a4, a5, a6, (LODWORD(v42.__locale_) + 1)))
            {
              return 0;
            }
          }
        }

        return i;
      }

      v18 = 0;
      while (File::fread(a4, &v39, 4uLL, 1uLL) == 1 && File::fread(a4, &v39 + 4, 4uLL, 1uLL) == 1)
      {
        if (v39 >= v15)
        {
LABEL_36:
          v28 = File::offset(a3, MEMORY[0x1E69E5300]);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "index (", 7);
          v30 = MEMORY[0x1B8C84C10](v29, v39);
          v31 = ") out of range";
          v32 = 14;
LABEL_37:
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v33);
          return 0;
        }

        v19 = *(v17 + 4 * v39);
        if (v19 != -1)
        {
          v20 = HIDWORD(v39);
          LOBYTE(v42.__locale_) = 0;
          *LHash<unsigned int,float>::insert((a2 + 16), v19, &v42) = v20;
        }

        if (++v18 >= __ptr)
        {
          goto LABEL_17;
        }
      }
    }

    v25 = File::offset(a4, MEMORY[0x1E69E5300]);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "failed to read from data file", 29);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(&v42, MEMORY[0x1E69E5318]);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&v42);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  return Ngram::skipToNextTrie(a1, a3, a7);
}

uint64_t Ngram::skipToNextTrie(Ngram *this, File *a2, uint64_t a3)
{
  v10 = 0;
  __ptr = 0;
  while (1)
  {
    if (File::fread(a2, &__ptr + 4, 4uLL, 1uLL) != 1 || File::fread(a2, &__ptr, 4uLL, 1uLL) != 1 || File::fread(a2, &v10, 8uLL, 1uLL) != 1)
    {
LABEL_8:
      v5 = File::offset(a2, MEMORY[0x1E69E5300]);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "skipToNextTrie failed for order ", 32);
      v7 = MEMORY[0x1B8C84C10](v6, a3);
      std::ios_base::getloc((v7 + *(*v7 - 24)));
      v8 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
      (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(&v12);
      std::ostream::put();
      std::ostream::flush();
      return 0;
    }

    if (__ptr == __PAIR64__(a3, -1) && v10 == -1)
    {
      return 1;
    }

    if (HIDWORD(__ptr) < a3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t Ngram::numNgrams(Ngram *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  *&v8[8] = 0;
  v9 = 0;
  v7 = 0;
  *v8 = (a2 + 1);
  if (a2 != -1)
  {
    Array<unsigned int>::alloc();
  }

  TrieIter2<unsigned int,BOnode>::TrieIter2(v6, this + 19, 0, -2, 0);
  for (i = 0; ; i += v4)
  {
    v3 = TrieIter2<unsigned int,BOnode>::next(v6);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 16);
    if (v4)
    {
      v4 = *v4 >> 5;
    }
  }

  TrieIter2<unsigned int,unsigned int>::~TrieIter2(v6);
  if (*&v8[4])
  {
    MEMORY[0x1B8C85310](*&v8[4], 0x1000C8052888210);
  }

  return i;
}

void sub_1B5292308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 32);
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ngram::vocabSize(const Vocab **this)
{
  VocabIter::VocabIter(v5, this[3], 0);
  v2 = 0;
  v4 = 0;
  while (VocabIter::next(v5, &v4))
  {
    if (!(*(*this[3] + 176))(this[3], v4))
    {
      if ((*(*this[3] + 224))(this[3], v4))
      {
        v2 = v2;
      }

      else
      {
        v2 = (v2 + 1);
      }
    }
  }

  if (v6)
  {
    MEMORY[0x1B8C85310](v6, 0x50C80EE9192B6);
  }

  return v2;
}

void sub_1B52927B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ngram::estimate2<unsigned long>(Ngram *this, uint64_t a2, uint64_t a3, int a4)
{
  v116 = *MEMORY[0x1E69E9840];
  v6 = *(this + 44);
  v110 = 0;
  v111 = v6;
  v112 = 0;
  v113 = 0;
  if (v6)
  {
    Array<unsigned int>::alloc();
  }

  v7 = Ngram::vocabSize(this);
  Ngram::clear(this);
  v109[0] = -1;
  LOBYTE(v104[0]) = 0;
  Trie = Trie<unsigned int,BOnode>::findTrie(this + 19, v109, v104);
  v9 = (*(**(this + 3) + 72))(*(this + 3));
  v10 = Trie + 8;
  if (!Trie)
  {
    v10 = 0;
  }

  LHash<unsigned int,float>::setsize((v10 + 8), v9);
  if (*(*(**(this + 3) + 104))(*(this + 3)) != -1)
  {
    *(v112 - 4 * v110) = -1;
    v11 = (*(**(this + 3) + 104))(*(this + 3));
    *Ngram::insertProb(this, *v11, (v112 - 4 * v110)) = -8388608;
  }

  if (*(this + 44))
  {
    v12 = log10(v7);
    v97 = -v12;
    v95 = v7;
    v13 = 1.0 - 0.000003;
    v14 = 1;
    do
    {
      v15 = (v14 - 1);
      if (a3 && (v16 = *(a3 + 8 * v15)) != 0 && !(*(*v16 + 72))(v16))
      {
        v89 = *(a3 + 8 * v15);
        if (v89)
        {
          (*(*v89 + 112))(v89, a2, v14, *(this + 44));
        }

        v100 = 0;
      }

      else
      {
        v100 = 1;
      }

      TrieIter2<unsigned int,unsigned long>::TrieIter2(v109, (a2 + 160), (v112 - 4 * v110), v14 - 1, 0);
      v91 = 0;
      v92 = 0;
      v101 = 0;
      v102 = v14 - 1;
      v96 = v14 - 2;
      while (1)
      {
        v17 = TrieIter2<unsigned int,unsigned long>::next(v109);
        if (!v17)
        {
          break;
        }

        if (v14 >= 2 && (v18 = *(v112 + 4 * (v96 - v110)), v18 == *(*(**(this + 3) + 120))(*(this + 3))) || (v19 = *(this + 3), v20 = (*(*v19 + 88))(v19), (*(*v19 + 176))(v19, *v20)) && (v21 = v112, v22 = v110, v23 = (*(**(this + 3) + 88))(*(this + 3)), Vocab::contains((v21 - 4 * v22), *v23)))
        {
          ++v91;
          continue;
        }

        v25 = !a3 || (v24 = *(a3 + 8 * v15)) == 0 || *(v24 + 24) == 0;
        LOBYTE(v114.__locale_) = 0;
        v104[0] = Trie<unsigned int,unsigned long>::insertTrie((a2 + 160), (v112 - 4 * v110), &v114);
        v104[1] = v115;
        v105 = 1;
        v106 = 0;
        LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(v107, v104[0], 0);
        v26 = 0;
        v27 = 0;
        v98 = 0;
        v99 = 0;
        v107[4] = 0;
        v108 = 0;
        v115[1] = -1;
        while (1)
        {
          v29 = TrieIter2<unsigned int,unsigned long>::next(v104);
          if (!v29)
          {
            break;
          }

          if (!(*(**(this + 3) + 176))(*(this + 3), v115[0]) && (v14 != 1 || !(*(**(this + 3) + 224))(*(this + 3), v115[0])))
          {
            if ((*(**(this + 3) + 224))(*(this + 3), v115[0]))
            {
              v30 = (*(**(this + 3) + 232))(*(this + 3), v115[0]);
              if (v30)
              {
                v31 = *(v29 + 8);
                v32 = v31 * v30;
                v27 += v31;
                if (v30 == 1)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = *(v29 + 8);
                }

                if (v30 <= 2)
                {
                  v31 = 0;
                }

                v98 += v31;
                v99 += v33;
              }

              else
              {
                v32 = *(v29 + 8);
                ++v27;
              }
            }

            else
            {
              v32 = *(v29 + 8);
              ++v27;
              if (v32 <= 1)
              {
                v34 = v99;
              }

              else
              {
                v34 = v99 + 1;
              }

              v35 = v98;
              if (v32 > 2)
              {
                v35 = v98 + 1;
              }

              v98 = v35;
              v99 = v34;
            }

            v26 += v32;
          }
        }

        if (v14 >= 2 && *(*(*this + 352))(this))
        {
          v26 = *(v17 + 8);
        }

        if (!v26)
        {
          goto LABEL_102;
        }

        Vocab::reverse(v112 - 4 * v110, v28);
LABEL_49:
        v36 = v100 ^ 1;
        if (!v26)
        {
          v36 = 0;
        }

        v103 = v26;
        if (v27 < v95)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        while (2)
        {
          v38 = v25;
          TrieIter2<unsigned int,unsigned long>::init(v104);
          v39 = 0.0;
          while (1)
          {
            v40 = TrieIter2<unsigned int,unsigned long>::next(v104);
            v42 = v40;
            if (!v40)
            {
              break;
            }

            if (v14 < 2 || *(v40 + 8))
            {
              if ((*(**(this + 3) + 176))(*(this + 3), v115[0]) || (*(**(this + 3) + 224))(*(this + 3), v115[0]))
              {
                if (v14 <= 1)
                {
                  v43 = v115[0];
                  if (v43 != *(*(**(this + 3) + 88))(*(this + 3)) && !(*(**(this + 3) + 224))(*(this + 3), v115[0]))
                  {
                    v44 = -INFINITY;
                    goto LABEL_64;
                  }
                }

                ++v101;
              }

              else
              {
                v45 = 1.0;
                if ((v100 & 1) == 0)
                {
                  v45 = (*(**(a3 + 8 * v102) + 40))(*(a3 + 8 * v102), *(v42 + 8), v26, v27);
                }

                v46 = v45 * *(v42 + 8) / v103;
                if (v38)
                {
                  v47 = 0.0;
                }

                else
                {
                  v47 = (*(**(a3 + 8 * v102) + 56))(*(a3 + 8 * v102), v26, v27, v99, v98);
                  v48 = v97;
                  if (v14 >= 2)
                  {
                    v48 = (*(*this + 480))(this, v115[0], v112 - 4 * v110, v96);
                  }

                  v49 = 0.0;
                  if (v48 != -INFINITY)
                  {
                    v49 = exp(v48 * 2.30258509);
                  }

                  v46 = v46 + v47 * v49;
                }

                v44 = log10(v46);
                if (v45 != 0.0)
                {
                  v39 = v39 + v46;
                  if (!*(this + 8) && (Debug::debugAll > 3 || *(this + 3) >= 4u))
                  {
                    v50 = (*(*this + 24))(this);
                    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "CONTEXT ", 8);
                    (*(**(this + 3) + 328))(*(this + 3));
                    v52 = operator<<(v51, (v112 - 4 * v110));
                    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " WORD ", 6);
                    v54 = (*(**(this + 3) + 32))(*(this + 3), v115[0]);
                    v55 = strlen(v54);
                    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
                    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " NUMER ", 7);
                    v58 = MEMORY[0x1B8C84C30](v57, *(v42 + 8));
                    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " DENOM ", 7);
                    v60 = MEMORY[0x1B8C84C30](v59, v26);
                    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " DISCOUNT ", 10);
                    MEMORY[0x1B8C84BE0](v61, v45);
                    if (!v38)
                    {
                      v62 = (*(*this + 24))(this);
                      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " LOW ", 5);
                      v64 = MEMORY[0x1B8C84BE0](v63, v47);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " LOLPROB ", 9);
                      std::ostream::operator<<();
                    }

                    v65 = (*(*this + 24))(this);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " LPROB ", 7);
                    v66 = std::ostream::operator<<();
                    std::ios_base::getloc((v66 + *(*v66 - 24)));
                    v67 = std::locale::use_facet(&v114, MEMORY[0x1E69E5318]);
                    (v67->__vftable[2].~facet_0)(v67, 10);
                    std::locale::~locale(&v114);
                    std::ostream::put();
                    std::ostream::flush();
                  }
                }

                if (v45 == 0.0)
                {
                  ++v92;
                  Ngram::removeProb(this, v115[0], (v112 - 4 * v110));
                }

                else
                {
LABEL_64:
                  *Ngram::insertProb(this, v115[0], (v112 - 4 * v110)) = v44;
                }
              }
            }
          }

          if (v39 > v13)
          {
            v68 = v37;
          }

          else
          {
            v68 = 0;
          }

          if (v68 == 1)
          {
            if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
            {
              v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: ", 9);
              v70 = MEMORY[0x1B8C84BE0](v69, 1.0 - v39);
              v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " backoff probability mass left for ", 36);
              (*(**(this + 3) + 328))(*(this + 3));
              v72 = operator<<(v71, (v112 - 4 * v110));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " -- ", 5);
              if (!v38)
              {
                v25 = 1;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "disabling interpolation\n", 24);
                continue;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "incrementing denominator\n", 25);
            }

            else
            {
              v25 = 1;
              if (!v38)
              {
                continue;
              }
            }

            if (a4)
            {
              v73 = vcvtpd_u64_f64((v39 - v13) * v103 / v13);
              if (v73 <= 1)
              {
                v73 = 1;
              }

              v26 += v73;
              v25 = 1;
            }

            else
            {
              ++v26;
              v25 = 1;
            }

            goto LABEL_49;
          }

          break;
        }

        Vocab::reverse(v112 - 4 * v110, v41);
        v15 = v102;
LABEL_102:
        TrieIter2<unsigned int,unsigned int>::~TrieIter2(v104);
      }

      if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
      {
        if (v91)
        {
          v74 = (*(*this + 24))(this);
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "discarded ", 10);
          v76 = MEMORY[0x1B8C84C10](v75, v91);
          v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " ", 1);
          v78 = MEMORY[0x1B8C84C10](v77, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "-gram contexts containing pseudo-events\n", 40);
        }

        if (v101)
        {
          v79 = (*(*this + 24))(this);
          v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "discarded ", 10);
          v81 = MEMORY[0x1B8C84C10](v80, v101);
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " ", 1);
          v83 = MEMORY[0x1B8C84C10](v82, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "-gram probs predicting pseudo-events\n", 37);
        }

        if (v92)
        {
          v84 = (*(*this + 24))(this);
          v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "discarded ", 10);
          v86 = MEMORY[0x1B8C84C10](v85, v92);
          v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, " ", 1);
          v88 = MEMORY[0x1B8C84C10](v87, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "-gram probs discounted to zero\n", 31);
        }
      }

      (*(*this + 512))(this, v15);
      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v109);
      v14 = (v14 + 1);
    }

    while (v14 <= *(this + 44));
  }

  (*(*this + 496))(this);
  if (v112)
  {
    MEMORY[0x1B8C85310](v112, 0x1000C8052888210);
  }

  return 1;
}

uint64_t Ngram::estimate2<double>(Ngram *this, uint64_t a2, uint64_t a3, int a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v7 = *(this + 44);
  v111 = 0;
  v112 = v7;
  v113 = 0;
  v114 = 0;
  if (v7)
  {
    Array<unsigned int>::alloc();
  }

  v8 = Ngram::vocabSize(this);
  Ngram::clear(this);
  v110[0] = -1;
  LOBYTE(v105[0]) = 0;
  Trie = Trie<unsigned int,BOnode>::findTrie(this + 19, v110, v105);
  v10 = (*(**(this + 3) + 72))(*(this + 3));
  v11 = Trie + 8;
  if (!Trie)
  {
    v11 = 0;
  }

  LHash<unsigned int,float>::setsize((v11 + 8), v10);
  if (*(*(**(this + 3) + 104))(*(this + 3)) != -1)
  {
    *(v113 - 4 * v111) = -1;
    v12 = (*(**(this + 3) + 104))(*(this + 3));
    *Ngram::insertProb(this, *v12, (v113 - 4 * v111)) = -8388608;
  }

  if (*(this + 44))
  {
    v13 = log10(v8);
    v97 = v8;
    v99 = -v13;
    v14 = 1.0 - 0.000003;
    v15 = 1;
    v96 = a2;
    do
    {
      v16 = v15 - 1;
      if (a3 && (v17 = *(a3 + 8 * v16)) != 0 && !(*(*v17 + 72))(v17))
      {
        v91 = *(a3 + 8 * v16);
        if (v91)
        {
          (*(*v91 + 120))(v91, a2, v15, *(this + 44));
        }

        v101 = 0;
      }

      else
      {
        v101 = 1;
      }

      v103 = v15 - 1;
      TrieIter2<unsigned int,double>::TrieIter2(v110, (a2 + 160), (v113 - 4 * v111), v15 - 1, 0);
      v93 = 0;
      v94 = 0;
      v102 = 0;
      v98 = v15 - 2;
      while (1)
      {
        v18 = TrieIter2<unsigned int,double>::next(v110);
        if (!v18)
        {
          break;
        }

        if (v15 >= 2 && (v19 = *(v113 + 4 * (v98 - v111)), v19 == *(*(**(this + 3) + 120))(*(this + 3))) || (v20 = *(this + 3), v21 = (*(*v20 + 88))(v20), (*(*v20 + 176))(v20, *v21)) && (v22 = v113, v23 = v111, v24 = (*(**(this + 3) + 88))(*(this + 3)), Vocab::contains((v22 - 4 * v23), *v24)))
        {
          ++v93;
          continue;
        }

        v26 = !a3 || (v25 = *(a3 + 8 * v103)) == 0 || *(v25 + 24) == 0;
        LOBYTE(v115.__locale_) = 0;
        v105[0] = Trie<unsigned int,unsigned long>::insertTrie((a2 + 160), (v113 - 4 * v111), &v115);
        v105[1] = v116;
        v106 = 1;
        v107 = 0;
        LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(v108, v105[0], 0);
        v27 = 0;
        v28 = 0;
        v100 = 0;
        v108[4] = 0;
        v109 = 0;
        v29 = 0.0;
        v116[1] = -1;
        while (1)
        {
          v31 = TrieIter2<unsigned int,double>::next(v105);
          if (!v31)
          {
            break;
          }

          if (!(*(**(this + 3) + 176))(*(this + 3), v116[0]) && (v15 != 1 || !(*(**(this + 3) + 224))(*(this + 3), v116[0])))
          {
            if ((*(**(this + 3) + 224))(*(this + 3), v116[0]))
            {
              v32 = (*(**(this + 3) + 232))(*(this + 3), v116[0]);
              if (v32)
              {
                v34 = *(v31 + 8);
                v29 = v29 + v32 * v34;
                v35 = v34;
                v27 += v34;
                if (v32 == 1)
                {
                  v36 = 0;
                }

                else
                {
                  v36 = v34;
                }

                v28 += v36;
                if (v32 <= 2)
                {
                  v35 = 0;
                }

                v100 += v35;
              }

              else
              {
                v29 = v29 + *(v31 + 8);
                ++v27;
              }
            }

            else
            {
              v33 = *(v31 + 8);
              v29 = v29 + v33;
              ++v27;
              if (v33 >= 2.0)
              {
                ++v28;
              }

              if (v33 >= 3.0)
              {
                ++v100;
              }
            }
          }
        }

        if (v15 >= 2 && *(*(*this + 352))(this))
        {
          v29 = *(v18 + 8);
        }

        if (v29 == 0.0)
        {
          goto LABEL_100;
        }

        Vocab::reverse(v113 - 4 * v111, v30);
LABEL_46:
        v37 = v101 ^ 1;
        if (v29 <= 0.0)
        {
          v37 = 0;
        }

        if (v27 < v97)
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        v104 = v29;
        while (2)
        {
          v39 = v26;
          TrieIter2<unsigned int,double>::init(v105);
          v40 = 0.0;
          while (1)
          {
            v41 = TrieIter2<unsigned int,double>::next(v105);
            v43 = v41;
            if (!v41)
            {
              break;
            }

            if (v15 < 2 || *(v41 + 8) != 0.0)
            {
              if ((*(**(this + 3) + 176))(*(this + 3), v116[0]) || (*(**(this + 3) + 224))(*(this + 3), v116[0]))
              {
                if (v15 <= 1)
                {
                  v44 = v116[0];
                  if (v44 != *(*(**(this + 3) + 88))(*(this + 3)) && !(*(**(this + 3) + 224))(*(this + 3), v116[0]))
                  {
                    v45 = -INFINITY;
                    goto LABEL_62;
                  }
                }

                ++v102;
              }

              else
              {
                v46 = 1.0;
                if ((v101 & 1) == 0)
                {
                  v46 = (*(**(a3 + 8 * v103) + 48))(*(a3 + 8 * v103), v27, *(v43 + 8), v29);
                }

                v47 = v29;
                v48 = v46 * *(v43 + 8) / v29;
                if (v39)
                {
                  v49 = 0.0;
                }

                else
                {
                  v49 = (*(**(a3 + 8 * v103) + 64))(*(a3 + 8 * v103), v27, v28, v100, v47);
                  v50 = v99;
                  if (v15 >= 2)
                  {
                    v50 = (*(*this + 480))(this, v116[0], v113 - 4 * v111, v98);
                  }

                  v51 = 0.0;
                  if (v50 != -INFINITY)
                  {
                    v51 = exp(v50 * 2.30258509);
                  }

                  v48 = v48 + v49 * v51;
                }

                v45 = log10(v48);
                if (v46 != 0.0)
                {
                  v40 = v40 + v48;
                  if (!*(this + 8) && (Debug::debugAll > 3 || *(this + 3) >= 4u))
                  {
                    v52 = (*(*this + 24))(this);
                    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "CONTEXT ", 8);
                    (*(**(this + 3) + 328))(*(this + 3));
                    v54 = operator<<(v53, (v113 - 4 * v111));
                    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " WORD ", 6);
                    v56 = (*(**(this + 3) + 32))(*(this + 3), v116[0]);
                    v57 = strlen(v56);
                    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
                    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " NUMER ", 7);
                    v60 = MEMORY[0x1B8C84BE0](v59, *(v43 + 8));
                    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " DENOM ", 7);
                    v62 = MEMORY[0x1B8C84BE0](v61, v104);
                    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " DISCOUNT ", 10);
                    MEMORY[0x1B8C84BE0](v63, v46);
                    if (!v39)
                    {
                      v64 = (*(*this + 24))(this);
                      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " LOW ", 5);
                      v66 = MEMORY[0x1B8C84BE0](v65, v49);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " LOLPROB ", 9);
                      std::ostream::operator<<();
                    }

                    v67 = (*(*this + 24))(this);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " LPROB ", 7);
                    v68 = std::ostream::operator<<();
                    std::ios_base::getloc((v68 + *(*v68 - 24)));
                    v69 = std::locale::use_facet(&v115, MEMORY[0x1E69E5318]);
                    (v69->__vftable[2].~facet_0)(v69, 10);
                    std::locale::~locale(&v115);
                    std::ostream::put();
                    std::ostream::flush();
                  }
                }

                if (v46 == 0.0)
                {
                  ++v94;
                  Ngram::removeProb(this, v116[0], (v113 - 4 * v111));
                  v29 = v104;
                }

                else
                {
                  v29 = v104;
LABEL_62:
                  *Ngram::insertProb(this, v116[0], (v113 - 4 * v111)) = v45;
                }
              }
            }
          }

          if (v40 > v14)
          {
            v70 = v38;
          }

          else
          {
            v70 = 0;
          }

          if (v70 == 1)
          {
            if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
            {
              v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: ", 9);
              v72 = MEMORY[0x1B8C84BE0](v71, 1.0 - v40);
              v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " backoff probability mass left for ", 36);
              (*(**(this + 3) + 328))(*(this + 3));
              v74 = operator<<(v73, (v113 - 4 * v111));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " -- ", 5);
              if (!v39)
              {
                v26 = 1;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "disabling interpolation\n", 24);
                continue;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "incrementing denominator\n", 25);
            }

            else
            {
              v26 = 1;
              if (!v39)
              {
                continue;
              }
            }

            if (a4)
            {
              v75 = fmax(ceil(v29 * (v40 - v14) / v14), 1.0);
            }

            else
            {
              v75 = 1.0;
            }

            v29 = v29 + v75;
            v26 = 1;
            goto LABEL_46;
          }

          break;
        }

        Vocab::reverse(v113 - 4 * v111, v42);
        a2 = v96;
LABEL_100:
        TrieIter2<unsigned int,unsigned int>::~TrieIter2(v105);
      }

      if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
      {
        if (v93)
        {
          v76 = (*(*this + 24))(this);
          v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "discarded ", 10);
          v78 = MEMORY[0x1B8C84C10](v77, v93);
          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " ", 1);
          v80 = MEMORY[0x1B8C84C10](v79, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "-gram contexts containing pseudo-events\n", 40);
        }

        if (v102)
        {
          v81 = (*(*this + 24))(this);
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "discarded ", 10);
          v83 = MEMORY[0x1B8C84C10](v82, v102);
          v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " ", 1);
          v85 = MEMORY[0x1B8C84C10](v84, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "-gram probs predicting pseudo-events\n", 37);
        }

        if (v94)
        {
          v86 = (*(*this + 24))(this);
          v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "discarded ", 10);
          v88 = MEMORY[0x1B8C84C10](v87, v94);
          v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, " ", 1);
          v90 = MEMORY[0x1B8C84C10](v89, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "-gram probs discounted to zero\n", 31);
        }
      }

      (*(*this + 512))(this, v103);
      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v110);
      v15 = (v15 + 1);
    }

    while (v15 <= *(this + 44));
  }

  (*(*this + 496))(this);
  if (v113)
  {
    MEMORY[0x1B8C85310](v113, 0x1000C8052888210);
  }

  return 1;
}

uint64_t Ngram::mixProbs(Ngram *this, Ngram *a2, double a3)
{
  v3 = *(this + 44);
  *&v5[8] = 0;
  *v5 = (v3 + 1);
  if (v3 != -1)
  {
    Array<unsigned int>::alloc();
  }

  (*(*this + 416))(this);
  return *&v5[4];
}

void sub_1B52949FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v27 = *(v25 + 8);
  if (v27)
  {
    MEMORY[0x1B8C85310](v27, v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5294B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BayesMix::~BayesMix(va);
  _Unwind_Resume(a1);
}

uint64_t Ngram::mixProbs(Ngram *a1, uint64_t a2)
{
  v4 = *(a1 + 44);
  *&v29[8] = 0;
  v30 = 0;
  v28 = 0;
  *v29 = (v4 + 1);
  if (v4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v5 = -1;
  v6 = 0;
  v7 = *(a2 + 152);
  do
  {
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = Array<LM *>::operator[]((a2 + 208), i);
        TrieIter2<unsigned int,BOnode>::TrieIter2(v27, (*v9 + 152), (*&v29[4] - 4 * v28), v6, 0);
        while (1)
        {
          v10 = TrieIter2<unsigned int,BOnode>::next(v27);
          if (!v10)
          {
            break;
          }

          Priors = BayesMix::findPriors(a2, (*&v29[4] - 4 * v28));
          LHashIter<unsigned int,float>::LHashIter(v25, (v10 + 16), 0);
          v24 = 0;
          while (1)
          {
            v12 = LHashIter<unsigned int,float>::next(v25, &v24);
            if (!v12)
            {
              break;
            }

            if (!i || !Ngram::findProb(a1, v24, (*&v29[4] - 4 * v28)))
            {
              v13 = *Array<double>::operator[](Priors, i);
              v14 = 0.0;
              if (*v12 != -INFINITY)
              {
                v14 = exp(*v12 * 2.30258509);
              }

              v15 = 0;
              v16 = v13 * v14;
              do
              {
                if (i != v15)
                {
                  v17 = *Array<double>::operator[](Priors, v15);
                  v18 = Array<LM *>::operator[]((a2 + 208), v15);
                  v19 = (*(**v18 + 480))(*v18, v24, *&v29[4] - 4 * v28, v6);
                  v20 = 0.0;
                  if (v19 != -INFINITY)
                  {
                    v20 = exp(v19 * 2.30258509);
                  }

                  v16 = v16 + v17 * v20;
                }

                ++v15;
              }

              while (v7 != v15);
              inserted = Ngram::insertProb(a1, v24, (*&v29[4] - 4 * v28));
              v22 = log10(v16);
              *inserted = v22;
            }
          }

          if (v26)
          {
            MEMORY[0x1B8C85310](v26, 0x1000C8052888210);
          }
        }

        TrieIter2<unsigned int,unsigned int>::~TrieIter2(v27);
      }

      v5 = *(a1 + 44);
    }

    v6 = (v6 + 1);
  }

  while (v6 < v5);
  (*(*a1 + 416))(a1);
  result = *&v29[4];
  if (*&v29[4])
  {
    return MEMORY[0x1B8C85310](*&v29[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B5294E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a25)
  {
    MEMORY[0x1B8C85310](a25, v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ngram::computeBOW(void **a1, uint64_t a2, _DWORD *a3, int a4, double *a5, double *a6)
{
  LHashIter<unsigned int,float>::LHashIter(v42, (a2 + 8), 0);
  v41 = 0;
  *a5 = 1.0;
  *a6 = 1.0;
  while (1)
  {
    v11 = LHashIter<unsigned int,float>::next(v42, &v41);
    if (!v11)
    {
      break;
    }

    v12 = 0.0;
    if (*v11 != -INFINITY)
    {
      v12 = exp(*v11 * 2.30258509);
    }

    *a5 = *a5 - v12;
    if (a4)
    {
      v13 = ((*a1)[60])(a1, v41, a3, (a4 - 1));
      v14 = 0.0;
      if (v13 != -INFINITY)
      {
        v14 = exp(v13 * 2.30258509);
      }

      *a6 = *a6 - v14;
    }
  }

  v15 = *a5;
  v16 = -0.000003;
  if (*a5 < 0.0 && v15 > v16)
  {
    *a5 = 0.0;
    v15 = 0.0;
  }

  v18 = *a6;
  if (*a6 < 0.0 && v18 > v16)
  {
    *a6 = 0.0;
    v15 = *a5;
    v18 = 0.0;
  }

  if (v18 < 0.000003 && v15 > 0.000003)
  {
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "BOW denominator for context ", 29);
    (*(*a1[3] + 328))(a1[3]);
    v27 = operator<<(v26, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " is zero; scaling probabilities to sum to 1\n", 45);
    v28 = log10(1.0 - *a5);
    LHashIter<unsigned int,float>::init(v42);
    for (i = v28; ; *v30 = *v30 - i)
    {
      v30 = LHashIter<unsigned int,float>::next(v42, &v41);
      if (!v30)
      {
        break;
      }
    }

    v31 = a6;
    a6 = a5;
    goto LABEL_30;
  }

  if (v15 < 0.0)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "BOW numerator for context ", 27);
    (*(*a1[3] + 328))(a1[3]);
    v22 = operator<<(v21, a3);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " is ", 5);
    v24 = MEMORY[0x1B8C84BE0](v23, *a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " < 0\n", 5);
LABEL_26:
    v25 = 0;
    goto LABEL_32;
  }

  if (v18 > 0.0)
  {
    goto LABEL_31;
  }

  if (v15 > 0.000003)
  {
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "BOW denominator for context ", 29);
    (*(*a1[3] + 328))(a1[3]);
    v34 = operator<<(v33, a3);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " is ", 5);
    v36 = MEMORY[0x1B8C84BE0](v35, *a6);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " <= 0,", 6);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "numerator is ", 13);
    v39 = MEMORY[0x1B8C84BE0](v38, *a5);
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v40 = std::locale::use_facet(&v44, MEMORY[0x1E69E5318]);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(&v44);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_26;
  }

  v31 = a5;
LABEL_30:
  *v31 = 0.0;
  *a6 = 0.0;
LABEL_31:
  v25 = 1;
LABEL_32:
  if (v43)
  {
    MEMORY[0x1B8C85310](v43, 0x1000C8052888210);
  }

  return v25;
}

void sub_1B5295290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t Ngram::computeBOWs(Ngram *this, uint64_t a2)
{
  *&v30[8] = 0;
  v31 = 0;
  v29 = 0;
  *v30 = (a2 + 1);
  if (a2 != -1)
  {
    Array<unsigned int>::alloc();
  }

  TrieIter2<unsigned int,BOnode>::TrieIter2(v28, this + 19, 0, -1, 0);
  v4 = 1;
  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    v6 = TrieIter2<unsigned int,BOnode>::next(v28);
    if (!v6)
    {
      break;
    }

    LHashIter<unsigned int,float>::LHashIter(v26, (v6 + 16), 0);
    v7 = (v6 + 8);
    v24 = 0.0;
    v25 = 0.0;
    if (!(*(*this + 464))(this, v7, *&v30[4] - 4 * v29, a2, &v25, &v24))
    {
      v4 = 0;
      v13 = -INFINITY;
LABEL_17:
      *v7 = v13;
      goto LABEL_18;
    }

    v8.n128_f64[0] = v25;
    if (a2)
    {
      v9 = v24;
      if (v25 < 0.000003 && v24 < 0.000003)
      {
        v13 = 0.0;
      }

      else
      {
        v11 = log10(v25);
        v12 = log10(v9);
        v13 = v11 - v12;
      }

      goto LABEL_17;
    }

    if (v25 < 0.000003)
    {
      v25 = 0.0;
      v8.n128_u64[0] = 0;
    }

    (*(*this + 504))(this, *&v30[4] - 4 * v29, v8);
LABEL_18:
    if (!*(this + 8) && (Debug::debugAll > 3 || *(this + 3) >= 4u))
    {
      v14 = (*(*this + 24))(this);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "CONTEXT ", 8);
      (*(**(this + 3) + 328))(*(this + 3));
      v16 = operator<<(v15, (*&v30[4] - 4 * v29));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " numerator ", 11);
      v18 = MEMORY[0x1B8C84BE0](v17, v25);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " denominator ", 13);
      v20 = MEMORY[0x1B8C84BE0](v19, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " BOW ", 5);
      v21 = std::ostream::operator<<();
      std::ios_base::getloc((v21 + *(*v21 - 24)));
      v22 = std::locale::use_facet(&v32, v5);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v32);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v27)
    {
      MEMORY[0x1B8C85310](v27, 0x1000C8052888210);
    }
  }

  TrieIter2<unsigned int,unsigned int>::~TrieIter2(v28);
  if (*&v30[4])
  {
    MEMORY[0x1B8C85310](*&v30[4], 0x1000C8052888210);
  }

  return v4;
}

void sub_1B5295678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27)
  {
    MEMORY[0x1B8C85310](a27, v27);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *Ngram::recomputeBOWs(_DWORD *this)
{
  if (this[44])
  {
    v1 = this;
    v2 = 0;
    do
    {
      this = (*(*v1 + 512))(v1, v2);
      v2 = (v2 + 1);
    }

    while (v2 < v1[44]);
  }

  return this;
}

uint64_t Ngram::pruneProbs(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v68 = a3;
  v74 = a6;
  v94 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 176);
  *&v91[8] = 0;
  v92 = 0;
  v90 = 0;
  *v91 = (v8 + 2);
  if (v8 != -2)
  {
    Array<unsigned int>::alloc();
  }

  v9 = 4294967294;
  v10 = -3;
  v65 = a2 - 1;
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    v79 = -INFINITY;
    v67 = a1 & 0xFFFFFFFFFFFFLL | 0x204C000000000000;
    v66 = v68 & 0xFFFFFFFFFFFFLL | 0x204C000000000000;
    v83 = 2.30258509;
    v71 = a1;
    v72 = a4;
    v73 = 4;
    v80 = a5;
    do
    {
      v69 = v10;
      TrieIter2<unsigned int,BOnode>::TrieIter2(v89, (a1 + 152), 4, v10, 0);
      v11 = 0;
      v76 = v9;
      v75 = v9 - 2;
      while (1)
      {
        v12 = TrieIter2<unsigned int,BOnode>::next(v89);
        v13 = v12;
        if (!v12)
        {
          break;
        }

        v82 = *(v12 + 8);
        v88 = 0.0;
        v87 = 0.0;
        if ((*(*a1 + 464))(a1, v12 + 8, 4, v69, &v88, &v87))
        {
          if (v68)
          {
            v14 = v68;
          }

          else
          {
            v14 = a1;
          }

          v77 = (*(*v14 + 104))(v14, 4, v69);
          LHashIter<unsigned int,float>::LHashIter(v85, (v13 + 16), 0);
          v84 = 0;
          v70 = 0;
          v15 = -exp(v77 * v83);
          if (v77 == -INFINITY)
          {
            v15 = -0.0;
          }

          v81 = v15;
          while (1)
          {
            v16 = LHashIter<unsigned int,float>::next(v85, &v84);
            if (!v16)
            {
              break;
            }

            v17 = (*(*a1 + 480))(a1, v84, 4, (v9 - 2));
            v18 = v88;
            v19 = *v16;
            v20 = *v16;
            v21 = 0.0;
            v22 = 0.0;
            if (*v16 != -INFINITY)
            {
              v22 = exp(v20 * v83);
            }

            v23 = log10(v18 + v22);
            v24 = v87;
            if (v17 != -INFINITY)
            {
              v21 = exp(v17 * v83);
            }

            v25 = log10(v24 + v21);
            v26 = 0.0;
            if (v19 != -INFINITY)
            {
              v26 = exp(v20 * v83);
            }

            v27 = v23;
            v28 = v25;
            v29 = v81 * (v18 * ((v27 - v28) - v82) + v26 * ((v17 + (v27 - v28)) - v19));
            v30 = -1.0;
            if (v29 != v79)
            {
              v30 = exp(v29 * v83) + -1.0;
            }

            v31 = 0;
            if (v80 > 0.0 && v30 < v80)
            {
              v32 = *&v91[4];
              *(*&v91[4] - 4 * v90) = v84;
              LOBYTE(v93.__locale_) = 0;
              Trie = Trie<unsigned int,BOnode>::findTrie((a1 + 152), (v32 - 4 * v90), &v93);
              v34 = !Trie || Trie == -8;
              v35 = !v34;
              v31 = !v35;
              if (a4)
              {
                if (!v35)
                {
                  v78 = v64;
                  MEMORY[0x1EEE9AC00](Trie);
                  v38 = &v64[-v37];
                  if (v36 >= 0x200)
                  {
                    v39 = 512;
                  }

                  else
                  {
                    v39 = v36;
                  }

                  bzero(&v64[-v37], v39);
                  (*(**(a1 + 24) + 248))(*(a1 + 24), *&v91[4] - 4 * v90, v38, (*(a1 + 176) + 2));
                  operator new[]();
                }
              }
            }

            if (!*(a1 + 8) && (Debug::debugAll > 3 || *(a1 + 12) >= 4u))
            {
              v40 = (*(*a1 + 24))(a1);
              v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "CONTEXT ", 8);
              (*(**(a1 + 24) + 328))(*(a1 + 24));
              v42 = operator<<(v41, 4);
              v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " WORD ", 6);
              v44 = (*(**(a1 + 24) + 32))(*(a1 + 24), v84);
              v45 = strlen(v44);
              v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " CONTEXTPROB ", 13);
              v47 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " OLDPROB ", 9);
              v48 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " NEWPROB ", 9);
              v49 = std::ostream::operator<<();
              v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " DELTA-H ", 9);
              v51 = MEMORY[0x1B8C84BE0](v50, v29);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " DELTA-LOGP ", 12);
              v52 = std::ostream::operator<<();
              v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " PPL-CHANGE ", 12);
              v54 = MEMORY[0x1B8C84BE0](v53, v30);
              v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " PRUNED ", 8);
              LOBYTE(v93.__locale_) = v31;
              v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, &v93, 1);
              std::ios_base::getloc((v56 + *(*v56 - 24)));
              v57 = std::locale::use_facet(&v93, MEMORY[0x1E69E5318]);
              (v57->__vftable[2].~facet_0)(v57, 10);
              std::locale::~locale(&v93);
              std::ostream::put();
              std::ostream::flush();
            }

            if (v31)
            {
              Ngram::removeProb(a1, v84, 4);
              v11 = (v11 + 1);
            }

            else
            {
              v70 = 1;
            }
          }

          if ((v70 & 1) == 0 && !Trie<unsigned int,BOnode>::numEntries((a1 + 152), 4))
          {
            Trie<unsigned int,BOnode>::removeTrie((a1 + 152), 4, 0);
          }

          if (v86)
          {
            MEMORY[0x1B8C85310](v86, 0x1000C8052888210);
          }
        }
      }

      if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)) && v11)
      {
        v58 = (*(*a1 + 24))(a1);
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "pruned ", 7);
        v60 = MEMORY[0x1B8C84C10](v59, v11);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " ", 1);
        v62 = MEMORY[0x1B8C84C10](v61, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "-grams\n", 7);
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v89);
      v9 = v69;
      v10 = v69 - 1;
    }

    while (v69 != 1 && v10 >= v65);
  }

  (*(*a1 + 416))(a1);
  result = *&v91[4];
  if (*&v91[4])
  {
    return MEMORY[0x1B8C85310](*&v91[4], 0x1000C8052888210);
  }

  return result;
}

uint64_t Ngram::pruneProbs(Ngram *this, int *a2, int a3, LM *a4)
{
  v5 = *(this + 44);
  *&v104[8] = 0;
  v105 = 0;
  v103 = 0;
  *v104 = (v5 + 2);
  if (v5 != -2)
  {
    Array<unsigned int>::alloc();
  }

  v6 = 4294967294;
  v7 = 4294967293;
  v80 = a3 - 1;
  if ((a3 - 1) <= 0xFFFFFFFD)
  {
    do
    {
      v8 = (*(*this + 456))(this, v6);
      v9 = v6;
      v10 = a2[v6];
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v85 = v7;
      TrieIter2<unsigned int,BOnode>::TrieIter2(v99, this + 19, 4, v7, 0);
      v11 = v7;
      v12 = (v8 - v10) & ~((v8 - v10) >> 31);
      v82 = v9;
      v13 = v9 - 2;
      v83 = v11;
      v14 = 4 * v11 + 8;
      while (1)
      {
        v15 = TrieIter2<unsigned int,BOnode>::next(v99);
        v16 = v15;
        if (!v15)
        {
          break;
        }

        v88 = *(v15 + 8);
        v97 = 0.0;
        v98 = 0.0;
        if ((*(*this + 464))(this, v15 + 8, 4, v85, &v98, &v97))
        {
          if (a4)
          {
            v17 = a4;
          }

          else
          {
            v17 = this;
          }

          v86 = (*(*v17 + 104))(v17, 4, v85);
          LHashIter<unsigned int,float>::LHashIter(v95, (v16 + 16), 0);
          v94 = 0;
          v18 = -exp(v86 * 2.30258509);
          if (v86 == -INFINITY)
          {
            v18 = -0.0;
          }

          v87 = v18;
          while (1)
          {
            v19 = LHashIter<unsigned int,float>::next(v95, &v94);
            if (!v19)
            {
              break;
            }

            v20 = (*(*this + 480))(this, v94, 4, v13);
            v21 = v98;
            v22 = *v19;
            v23 = *v19;
            v24 = 0.0;
            v25 = 0.0;
            if (*v19 != -INFINITY)
            {
              v25 = exp(v23 * 2.30258509);
            }

            v26 = log10(v21 + v25);
            v27 = v97;
            if (v20 != -INFINITY)
            {
              v24 = exp(v20 * 2.30258509);
            }

            v28 = log10(v27 + v24);
            v29 = 0.0;
            if (v22 != -INFINITY)
            {
              v29 = exp(v23 * 2.30258509);
            }

            v30 = v26;
            v31 = v28;
            v32 = v87 * (v21 * ((v30 - v31) - v88) + v29 * ((v20 + (v30 - v31)) - v22));
            v33 = -1.0;
            if (v32 != -INFINITY)
            {
              v33 = exp(v32 * 2.30258509) + -1.0;
            }

            v34 = *&v104[4];
            *(*&v104[4] - 4 * v103) = v94;
            LOBYTE(v89.__locale_) = 0;
            Trie = Trie<unsigned int,BOnode>::findTrie(this + 19, (v34 - 4 * v103), &v89);
            if (Trie)
            {
              v36 = Trie == -8;
            }

            else
            {
              v36 = 1;
            }

            v37 = !v36;
            if ((v37 & 1) == 0)
            {
              v89.__locale_ = *&v33;
              v90 = v94;
              v92 = 0;
              v93 = 0;
              __p = 0;
              std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, 4, v14, (v14 - 4) >> 2);
              std::vector<PruneProbsRecord>::push_back[abi:ne200100](&v100, &v89);
              v106[0] = PruneProbsRecord::compare;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PruneProbsRecord const&,PruneProbsRecord const&),std::__wrap_iter<PruneProbsRecord*>>(v100, v101, v106, 0xCCCCCCCCCCCCCCCDLL * ((v101 - v100) >> 3));
              v38 = 0xCCCCCCCCCCCCCCCDLL * ((v101 - v100) >> 3);
              if (v38 > v12)
              {
                v106[0] = PruneProbsRecord::compare;
                std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(PruneProbsRecord const&,PruneProbsRecord const&),std::__wrap_iter<PruneProbsRecord*>>(v100, v101, v106, v38);
                v39 = v101;
                v40 = *(v101 - 24);
                if (v40)
                {
                  *(v101 - 16) = v40;
                  operator delete(v40);
                }

                v101 = v39 - 40;
              }

              if (__p)
              {
                v92 = __p;
                operator delete(__p);
              }
            }

            if (!*(this + 8) && (Debug::debugAll > 3 || *(this + 3) >= 4u))
            {
              v41 = (*(*this + 24))(this);
              v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "CONTEXT ", 8);
              (*(**(this + 3) + 328))(*(this + 3));
              v43 = operator<<(v42, 4);
              v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " WORD ", 6);
              v45 = (*(**(this + 3) + 32))(*(this + 3), v94);
              v46 = strlen(v45);
              v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " CONTEXTPROB ", 13);
              v48 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " OLDPROB ", 9);
              v49 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " NEWPROB ", 9);
              v50 = std::ostream::operator<<();
              v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " DELTA-H ", 9);
              v52 = MEMORY[0x1B8C84BE0](v51, v32);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " DELTA-LOGP ", 12);
              v53 = std::ostream::operator<<();
              v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " PPL-CHANGE ", 12);
              v55 = MEMORY[0x1B8C84BE0](v54, v33);
              std::ios_base::getloc((v55 + *(*v55 - 24)));
              v56 = std::locale::use_facet(&v89, MEMORY[0x1E69E5318]);
              (v56->__vftable[2].~facet_0)(v56, 10);
              std::locale::~locale(&v89);
              std::ostream::put();
              std::ostream::flush();
            }
          }

          if (v96)
          {
            MEMORY[0x1B8C85310](v96, 0x1000C8052888210);
          }
        }
      }

      v57 = v100;
      v58 = v100;
      if (v100 != v101)
      {
        do
        {
          v59 = *(v58 + 8);
          v60 = *(v58 + 16);
          Ngram::removeProb(this, *(v58 + 8), v60);
          if (!*(this + 8) && (Debug::debugAll > 3 || *(this + 3) >= 4u))
          {
            v61 = *v58;
            v62 = (*(*this + 24))(this);
            v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "CONTEXT ", 8);
            (*(**(this + 3) + 328))(*(this + 3));
            v64 = operator<<(v63, v60);
            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " WORD ", 6);
            v66 = (*(**(this + 3) + 32))(*(this + 3), v59);
            v67 = strlen(v66);
            v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
            v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, " PPL-CHANGE ", 12);
            v70 = MEMORY[0x1B8C84BE0](v69, v61);
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " PRUNED 1", 9);
            std::ios_base::getloc((v71 + *(*v71 - 24)));
            v72 = std::locale::use_facet(&v89, MEMORY[0x1E69E5318]);
            (v72->__vftable[2].~facet_0)(v72, 10);
            std::locale::~locale(&v89);
            std::ostream::put();
            std::ostream::flush();
          }

          if (!Ngram::numProbs(this, v60) && !Trie<unsigned int,BOnode>::numEntries(this + 19, v60))
          {
            Trie<unsigned int,BOnode>::removeTrie(this + 19, v60, 0);
          }

          v58 += 40;
        }

        while (v58 != v101);
        v57 = v100;
      }

      if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
      {
        v73 = -858993459 * ((v58 - v57) >> 3);
        if (v73)
        {
          v74 = (*(*this + 24))(this);
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "pruned ", 7);
          v76 = MEMORY[0x1B8C84C10](v75, v73);
          v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " ", 1);
          v78 = MEMORY[0x1B8C84C10](v77, v82);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "-grams\n", 7);
        }
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v99);
      v99[0] = &v100;
      std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](v99);
      v7 = v83 - 1;
      if (v83 == 1)
      {
        break;
      }

      v6 = v85;
    }

    while (v80 <= v7);
  }

  (*(*this + 416))(this);
  result = *&v104[4];
  if (*&v104[4])
  {
    return MEMORY[0x1B8C85310](*&v104[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B5296D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 176);
  if (v35)
  {
    MEMORY[0x1B8C85310](v35, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PruneProbsRecord>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<PruneProbsRecord>::__emplace_back_slow_path<PruneProbsRecord const&>(a1, a2);
  }

  else
  {
    std::vector<PruneProbsRecord>::__construct_one_at_end[abi:ne200100]<PruneProbsRecord const&>(a1, a2);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t Ngram::pruneLowProbs(Ngram *this, int a2)
{
  v3 = *(this + 44);
  v35 = 0;
  v36 = v3;
  v37 = 0;
  v38 = 0;
  if (v3)
  {
    Array<unsigned int>::alloc();
  }

  v4 = a2 - 1;
  v29 = a2 - 1;
  do
  {
    if (v4 >= *(this + 44))
    {
      v27 = 1;
    }

    else
    {
      v30 = 0;
      v5 = v4;
      do
      {
        TrieIter2<unsigned int,BOnode>::TrieIter2(v34, this + 19, (v37 - 4 * v35), v5, 0);
        v6 = 0;
        while (1)
        {
          v7 = TrieIter2<unsigned int,BOnode>::next(v34);
          if (!v7)
          {
            break;
          }

          v8 = *(v7 + 8);
          LHashIter<unsigned int,float>::LHashIter(v32, (v7 + 16), 0);
          v31 = 0;
          v9 = 1;
LABEL_9:
          v10 = v9;
          while (1)
          {
            v9 = v10;
            v11 = LHashIter<unsigned int,float>::next(v32, &v31);
            if (!v11)
            {
              break;
            }

            v12 = (*(*this + 480))(this, v31, v37 - 4 * v35, v5 - 1);
            v10 = 0;
            if ((v8 + v12) > *v11)
            {
              if (!*(this + 8) && (Debug::debugAll > 3 || *(this + 3) >= 4u))
              {
                v13 = (*(*this + 24))(this);
                v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "CONTEXT ", 8);
                (*(**(this + 3) + 328))(*(this + 3));
                v15 = operator<<(v14, (v37 - 4 * v35));
                v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " WORD ", 6);
                v17 = (*(**(this + 3) + 32))(*(this + 3), v31);
                v18 = strlen(v17);
                v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " LPROB ", 7);
                v20 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " BACKOFF-LPROB ", 15);
                v21 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " PRUNED\n", 8);
              }

              Ngram::removeProb(this, v31, (v37 - 4 * v35));
              v6 = (v6 + 1);
              goto LABEL_9;
            }
          }

          if (v9 && !Trie<unsigned int,BOnode>::numEntries(this + 19, (v37 - 4 * v35)))
          {
            Trie<unsigned int,BOnode>::removeTrie(this + 19, (v37 - 4 * v35), 0);
          }

          if (v33)
          {
            MEMORY[0x1B8C85310](v33, 0x1000C8052888210);
          }
        }

        if (v6)
        {
          if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
          {
            v22 = (*(*this + 24))(this);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "pruned ", 7);
            v24 = MEMORY[0x1B8C84C10](v23, v6);
            v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
            v26 = MEMORY[0x1B8C84C10](v25, v5 + 1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "-grams\n", 7);
          }

          v30 = 1;
        }

        TrieIter2<unsigned int,unsigned int>::~TrieIter2(v34);
        ++v5;
      }

      while (v5 < *(this + 44));
      v27 = v30 == 0;
    }

    (*(*this + 416))(this);
    v4 = v29;
  }

  while (!v27);
  (*(*this + 496))(this);
  result = v37;
  if (v37)
  {
    return MEMORY[0x1B8C85310](v37, 0x1000C8052888210);
  }

  return result;
}

void sub_1B5297294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a26)
  {
    MEMORY[0x1B8C85310](a26, v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ngram::rescoreProbs(Ngram *this, LM *a2)
{
  v2 = *(this + 44);
  *&v4[8] = 0;
  *v4 = (v2 + 1);
  if (v2 != -1)
  {
    Array<unsigned int>::alloc();
  }

  (*(*this + 416))(this);
  return *&v4[4];
}

void sub_1B5297474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v17 = *(v15 - 64);
  if (v17)
  {
    MEMORY[0x1B8C85310](v17, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ngram::fixupProbs(Ngram *this)
{
  v2 = *(this + 44);
  *&v25[8] = 0;
  v26 = 0;
  v24 = 0;
  *v25 = (v2 + 1);
  if (v2 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v23[0] = 0;
  v23[1] = 0;
  v3 = 1;
  do
  {
    TrieIter2<unsigned int,BOnode>::TrieIter2(v22, this + 19, (*&v25[4] - 4 * v24), v3, 0);
    while (TrieIter2<unsigned int,BOnode>::next(v22))
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        if (Ngram::findProb(this, *(*&v25[4] + 4 * (v4 - v24)), (*&v25[4] + 4 * (v4 - v24 + 1))))
        {
          break;
        }

        LOBYTE(v27.__locale_) = 0;
        Trie<unsigned int,unsigned long>::insertTrie(v23, (*&v25[4] + 4 * (v4 - v24)), &v27)[1] = 1;
        ++v4;
      }

      while (v3 != v5);
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v22);
    ++v3;
    v6 = *(this + 44);
  }

  while (v3 < v6);
  if (v6 >= 2)
  {
    v7 = MEMORY[0x1E69E5318];
    v8 = 1;
    do
    {
      TrieIter2<unsigned int,unsigned long>::TrieIter2(v22, v23, (*&v25[4] - 4 * v24), v8, 0);
      v9 = 0;
      while (1)
      {
        v10 = TrieIter2<unsigned int,unsigned long>::next(v22);
        if (!v10)
        {
          break;
        }

        if (*(v10 + 8))
        {
          v11 = (*(*this + 480))(this, *(*&v25[4] + 4 * -v24), *&v25[4] + 4 * (1 - v24), (v8 - 1));
          v9 = (v9 + 1);
          *Ngram::insertProb(this, *(*&v25[4] + 4 * -v24), (*&v25[4] + 4 * (1 - v24))) = v11;
          if (!*(this + 8) && (Debug::debugAll > 2 || *(this + 3) >= 3u))
          {
            v12 = (*(*this + 24))(this);
            v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "faking probability for context ", 31);
            (*(**(this + 3) + 328))(*(this + 3));
            v14 = operator<<(v13, (*&v25[4] - 4 * v24));
            std::ios_base::getloc((v14 + *(*v14 - 24)));
            v15 = std::locale::use_facet(&v27, v7);
            (v15->__vftable[2].~facet_0)(v15, 10);
            std::locale::~locale(&v27);
            std::ostream::put();
            std::ostream::flush();
          }
        }
      }

      if (!*(this + 8) && (Debug::debugAll || *(this + 3)) && v9)
      {
        v16 = (*(*this + 24))(this);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "inserted ", 9);
        v18 = MEMORY[0x1B8C84C10](v17, v9);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " redundant ", 11);
        v20 = MEMORY[0x1B8C84C10](v19, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "-gram probs\n", 12);
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v22);
      v8 = (v8 + 1);
    }

    while (v8 < *(this + 44));
  }

  Trie<unsigned int,unsigned long>::~Trie(v23);
  result = *&v25[4];
  if (*&v25[4])
  {
    return MEMORY[0x1B8C85310](*&v25[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B52978C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  std::locale::~locale((v22 - 104));
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(&a9);
  Trie<unsigned int,unsigned long>::~Trie(&a19);
  if (a22)
  {
    MEMORY[0x1B8C85310](a22, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t Ngram::distributeProb(const Vocab **this, double a2, unsigned int *a3)
{
  VocabIter::VocabIter(v29, this[3], 0);
  v6 = 0;
  v7 = 0;
  v28 = 0;
  while (VocabIter::next(v29, &v28))
  {
    if (!(*(*this[3] + 176))(this[3], v28) && !(*(*this[3] + 224))(this[3], v28))
    {
      Prob = Ngram::findProb(this, v28, a3);
      v7 = (v7 + 1);
      if (!Prob)
      {
        *Ngram::insertProb(this, v28, a3) = -8388608;
        goto LABEL_9;
      }

      if (*Prob == -INFINITY)
      {
LABEL_9:
        v6 = (v6 + 1);
      }
    }
  }

  VocabIter::init(v29);
  if (v6)
  {
    if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: distributing ", 22);
      v10 = MEMORY[0x1B8C84BE0](v9, a2);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " left-over probability mass over ", 33);
      v12 = MEMORY[0x1B8C84C10](v11, v6);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " zeroton words", 14);
      std::ios_base::getloc((v13 + *(*v13 - 24)));
      v14 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
      (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(&v31);
      std::ostream::put();
      std::ostream::flush();
    }

    v15 = log10(a2 / v6);
    while (VocabIter::next(v29, &v28))
    {
      if (!(*(*this[3] + 176))(this[3], v28) && !(*(*this[3] + 224))(this[3], v28))
      {
        inserted = Ngram::insertProb(this, v28, a3);
        if (*inserted == -INFINITY)
        {
          *inserted = v15;
        }
      }
    }
  }

  else
  {
    if (a2 > 0.0 && !*(this + 8) && (Debug::debugAll || *(this + 3)))
    {
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: distributing ", 22);
      v18 = MEMORY[0x1B8C84BE0](v17, a2);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " left-over probability mass over all ", 37);
      v20 = MEMORY[0x1B8C84C10](v19, v7);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " words", 6);
      std::ios_base::getloc((v21 + *(*v21 - 24)));
      v22 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v31);
      std::ostream::put();
      std::ostream::flush();
    }

    v23 = a2 / v7;
    while (VocabIter::next(v29, &v28))
    {
      if (!(*(*this[3] + 176))(this[3], v28) && !(*(*this[3] + 224))(this[3], v28))
      {
        v24 = Ngram::insertProb(this, v28, a3);
        v25 = 0.0;
        if (*v24 != -INFINITY)
        {
          v25 = exp(*v24 * 2.30258509);
        }

        v26 = log10(v23 + v25);
        *v24 = v26;
      }
    }
  }

  result = v30;
  if (v30)
  {
    return MEMORY[0x1B8C85310](v30, 0x50C80EE9192B6);
  }

  return result;
}

void sub_1B5297DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

void Ngram::~Ngram(Ngram *this)
{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);

  LM::~LM(this);
}

{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);
  LM::~LM(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);

  LM::~LM(this);
}

float LM::wordProb(LM *this, uint64_t a2, const unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = (*(*this + 40))(this, a2, a3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_1B5297F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

float LM::sentenceProb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v3 = (*(*a1 + 72))(a1, a2, a3, v5);
  v6 = v5;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return v3;
}

{
  memset(v5, 0, sizeof(v5));
  v3 = (*(*a1 + 88))(a1, a2, a3, v5);
  v6 = v5;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return v3;
}

void sub_1B5297FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1B5298058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t LM::running(LM *this, char a2)
{
  v2 = *(this + 147);
  *(this + 147) = a2;
  return v2;
}

uint64_t LM::prefetchNgrams()
{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

float Ngram::wordProbBO(Ngram *this, uint64_t a2, const unsigned int *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = (*(*this + 472))(this, a2, a3, a4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1B5298234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void NgramBayesMix::~NgramBayesMix(NgramBayesMix *this)
{
  BayesMix::~BayesMix(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t Array<LM *>::operator[](int *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  if (v2 >= a1[1])
  {
    a1[1] = v2 + 1;
    if (v2 >= a1[4])
    {
      Array<LM *>::alloc();
    }
  }

  return *(a1 + 1) + 8 * v2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * v9->u32[0] + 4));
      if ((result & 0x80000000) != 0)
      {
        v56 = v9->i32[0];
        v9->i32[0] = *(a2 - 1);
        goto LABEL_78;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a3 + 16);
    v15 = *a3 + 4;
    if (v12 >= 0x81)
    {
      v16 = v14(*(v15 + 8 * v8[v13] + 4), *(v15 + 8 * *v8 + 4));
      v17 = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * v8[v13] + 4));
      if (v16 < 0)
      {
        v24 = *v8;
        if (v17 < 0)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v24;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v24;
          if (((*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * v24 + 4)) & 0x80000000) != 0)
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v17 < 0)
      {
        v18 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v18;
        if (((*(a3 + 16))(*(*a3 + 4 + 8 * v8[v13] + 4), *(*a3 + 4 + 8 * *v8 + 4)) & 0x80000000) != 0)
        {
          v19 = *v8;
          *v8 = v8[v13];
          v8[v13] = v19;
        }
      }

      v28 = v13 - 1;
      v29 = (*(a3 + 16))(*(*a3 + 4 + 8 * v8[v13 - 1] + 4), *(*a3 + 4 + 8 * v8[1] + 4));
      v30 = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 2) + 4), *(*a3 + 4 + 8 * v8[v13 - 1] + 4));
      if (v29 < 0)
      {
        v33 = v8[1];
        if (v30 < 0)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v33;
        }

        else
        {
          v8[1] = v8[v28];
          v8[v28] = v33;
          if (((*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 2) + 4), *(*a3 + 4 + 8 * v33 + 4)) & 0x80000000) != 0)
          {
            v34 = v8[v28];
            v8[v28] = *(a2 - 2);
            *(a2 - 2) = v34;
          }
        }
      }

      else if (v30 < 0)
      {
        v31 = v8[v28];
        v8[v28] = *(a2 - 2);
        *(a2 - 2) = v31;
        if (((*(a3 + 16))(*(*a3 + 4 + 8 * v8[v28] + 4), *(*a3 + 4 + 8 * v8[1] + 4)) & 0x80000000) != 0)
        {
          v32 = v8[1];
          v8[1] = v8[v28];
          v8[v28] = v32;
        }
      }

      v35 = v13 + 1;
      v36 = (*(a3 + 16))(*(*a3 + 4 + 8 * v8[v13 + 1] + 4), *(*a3 + 4 + 8 * v8[2] + 4));
      v37 = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 3) + 4), *(*a3 + 4 + 8 * v8[v13 + 1] + 4));
      if (v36 < 0)
      {
        v40 = v8[2];
        if (v37 < 0)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v40;
        }

        else
        {
          v8[2] = v8[v35];
          v8[v35] = v40;
          if (((*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 3) + 4), *(*a3 + 4 + 8 * v40 + 4)) & 0x80000000) != 0)
          {
            v41 = v8[v35];
            v8[v35] = *(a2 - 3);
            *(a2 - 3) = v41;
          }
        }
      }

      else if (v37 < 0)
      {
        v38 = v8[v35];
        v8[v35] = *(a2 - 3);
        *(a2 - 3) = v38;
        if (((*(a3 + 16))(*(*a3 + 4 + 8 * v8[v35] + 4), *(*a3 + 4 + 8 * v8[2] + 4)) & 0x80000000) != 0)
        {
          v39 = v8[2];
          v8[2] = v8[v35];
          v8[v35] = v39;
        }
      }

      v42 = (*(a3 + 16))(*(*a3 + 4 + 8 * v8[v13] + 4), *(*a3 + 4 + 8 * v8[v28] + 4));
      v43 = (*(a3 + 16))(*(*a3 + 4 + 8 * v8[v35] + 4), *(*a3 + 4 + 8 * v8[v13] + 4));
      if (v42 < 0)
      {
        v48 = v8[v28];
        if (v43 < 0)
        {
          v8[v28] = v8[v35];
          v8[v35] = v48;
          v44 = v8[v13];
        }

        else
        {
          v8[v28] = v8[v13];
          v8[v13] = v48;
          v49 = (*(a3 + 16))(*(*a3 + 4 + 8 * v8[v35] + 4), *(*a3 + 4 + 8 * v48 + 4));
          v44 = v8[v13];
          if (v49 < 0)
          {
            v47 = v8[v35];
            v8[v13] = v47;
            v8[v35] = v44;
LABEL_57:
            v44 = v47;
          }
        }
      }

      else
      {
        v44 = v8[v13];
        if (v43 < 0)
        {
          v45 = v8[v35];
          v8[v13] = v45;
          v8[v35] = v44;
          v46 = (*(a3 + 16))(*(*a3 + 4 + 8 * v45 + 4), *(*a3 + 4 + 8 * v8[v28] + 4));
          v44 = v8[v13];
          if (v46 < 0)
          {
            v47 = v8[v28];
            v8[v28] = v44;
            v8[v13] = v47;
            goto LABEL_57;
          }
        }
      }

      v50 = *v8;
      *v8 = v44;
      v8[v13] = v50;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v20 = v14(*(v15 + 8 * *v8 + 4), *(v15 + 8 * v8[v13] + 4));
    v21 = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * *v8 + 4));
    if (v20 < 0)
    {
      v26 = v8[v13];
      if (v21 < 0)
      {
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v26;
LABEL_39:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *v8;
      *v8 = v26;
      if (((*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * v26 + 4)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v27;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v22 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v22;
      if (((*(a3 + 16))(*(*a3 + 4 + 8 * *v8 + 4), *(*a3 + 4 + 8 * v8[v13] + 4)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v23 = v8[v13];
      v8[v13] = *v8;
      *v8 = v23;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*(a3 + 16))(*(*a3 + 4 + 8 * *(v8 - 1) + 4), *(*a3 + 4 + 8 * *v8 + 4)) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,float> &>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v51 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,float> &>(v8, a2, a3);
    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }

    v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(v8, v51, a3);
    v9 = (v51 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(v51 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v51;
      if (v53)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v53)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,false>(v8, v51, a3, -v11, a5 & 1);
      v9 = (v51 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,0>(v9, v9 + 1, &v9[1], a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,0>(v9, v9 + 1, &v9[1], &v9[1] + 1, a2 - 1, a3);
    }

    goto LABEL_11;
  }

  v54 = (*(a3 + 16))(*(*a3 + 4 + 8 * v9->u32[1] + 4), *(*a3 + 4 + 8 * v9->u32[0] + 4));
  result = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * v9->u32[1] + 4));
  if (v54 < 0)
  {
    v57 = v9->u32[0];
    if ((result & 0x80000000) != 0)
    {
      v9->i32[0] = *(a2 - 1);
      *(a2 - 1) = v57;
      return result;
    }

    v9->i32[0] = v9->i32[1];
    v9->i32[1] = v57;
    result = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * v57 + 4));
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v56 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
LABEL_78:
    *(a2 - 1) = v56;
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    v55 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
    *(a2 - 1) = v55;
    result = (*(a3 + 16))(*(*a3 + 4 + 8 * v9->u32[1] + 4), *(*a3 + 4 + 8 * v9->u32[0] + 4));
    if ((result & 0x80000000) != 0)
    {
      *v9 = vrev64_s32(*v9);
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(a5 + 16))(*(*a5 + 4 + 8 * *a2 + 4), *(*a5 + 4 + 8 * *a1 + 4));
  v11 = (*(a5 + 16))(*(*a5 + 4 + 8 * *a3 + 4), *(*a5 + 4 + 8 * *a2 + 4));
  if (v10 < 0)
  {
    v14 = *a1;
    if (v11 < 0)
    {
      *a1 = *a3;
      *a3 = v14;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      if (((*(a5 + 16))(*(*a5 + 4 + 8 * *a3 + 4), *(*a5 + 4 + 8 * v14 + 4)) & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11 < 0)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    if (((*(a5 + 16))(*(*a5 + 4 + 8 * *a2 + 4), *(*a5 + 4 + 8 * *a1 + 4)) & 0x80000000) != 0)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

  result = (*(a5 + 16))(*(*a5 + 4 + 8 * *a4 + 4), *(*a5 + 4 + 8 * *a3 + 4));
  if ((result & 0x80000000) != 0)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*(a5 + 16))(*(*a5 + 4 + 8 * *a3 + 4), *(*a5 + 4 + 8 * *a2 + 4));
    if ((result & 0x80000000) != 0)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*(a5 + 16))(*(*a5 + 4 + 8 * *a2 + 4), *(*a5 + 4 + 8 * *a1 + 4));
      if ((result & 0x80000000) != 0)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,0>(a1, a2, a3, a4, a6);
  result = (*(a6 + 16))(*(*a6 + 4 + 8 * *a5 + 4), *(*a6 + 4 + 8 * *a4 + 4));
  if ((result & 0x80000000) != 0)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    result = (*(a6 + 16))(*(*a6 + 4 + 8 * *a4 + 4), *(*a6 + 4 + 8 * *a3 + 4));
    if ((result & 0x80000000) != 0)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      result = (*(a6 + 16))(*(*a6 + 4 + 8 * *a3 + 4), *(*a6 + 4 + 8 * *a2 + 4));
      if ((result & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        result = (*(a6 + 16))(*(*a6 + 4 + 8 * *a2 + 4), *(*a6 + 4 + 8 * *a1 + 4));
        if ((result & 0x80000000) != 0)
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*(a3 + 16))(*(*a3 + 4 + 8 * v9 + 4), *(*a3 + 4 + 8 * v10 + 4));
        if ((result & 0x80000000) != 0)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 4) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*(a3 + 16))(*(*a3 + 4 + 8 * v11 + 4), *(*a3 + 4 + 8 * *(v4 + v12 - 4) + 4));
            v12 -= 4;
            if ((result & 0x80000000) == 0)
            {
              v13 = (v4 + v12 + 4);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 4); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*(a3 + 16))(*(*a3 + 4 + 8 * v7 + 4), *(*a3 + 4 + 8 * v8 + 4));
      if ((result & 0x80000000) != 0)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*(a3 + 16))(*(*a3 + 4 + 8 * v9 + 4), *(*a3 + 4 + 8 * *(v11 - 2) + 4));
        }

        while ((result & 0x80000000) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,float> &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (((*(a3 + 16))(*(*a3 + 4 + 8 * v6 + 4), *(*a3 + 4 + 8 * *(a2 - 1) + 4)) & 0x80000000) != 0)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 4 + 8 * v6 + 4), *(*a3 + 4 + 8 * v9 + 4)) & 0x80000000) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v8 = v7;
      if (v7 >= v4)
      {
        break;
      }

      ++v7;
    }

    while (((*(a3 + 16))(*(*a3 + 4 + 8 * v6 + 4), *(*a3 + 4 + 8 * *v8 + 4)) & 0x80000000) == 0);
  }

  if (v8 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 4 + 8 * v6 + 4), *(*a3 + 4 + 8 * v10 + 4)) & 0x80000000) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    *v8 = *v4;
    *v4 = v11;
    do
    {
      v12 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 4 + 8 * v6 + 4), *(*a3 + 4 + 8 * v12 + 4)) & 0x80000000) == 0);
    do
    {
      v13 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 4 + 8 * v6 + 4), *(*a3 + 4 + 8 * v13 + 4)) & 0x80000000) != 0);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v6;
  return v8;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,float> &>(int *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*(a3 + 16))(*(*a3 + 4 + 8 * a1[++v6] + 4), *(*a3 + 4 + 8 * v7 + 4));
  }

  while (v8 < 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 4 + 8 * v12 + 4), *(*a3 + 4 + 8 * v7 + 4)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 4 + 8 * v11 + 4), *(*a3 + 4 + 8 * v7 + 4)) & 0x80000000) == 0);
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*(a3 + 16))(*(*a3 + 4 + 8 * v16 + 4), *(*a3 + 4 + 8 * v7 + 4)) & 0x80000000) != 0);
      do
      {
        v17 = *--v14;
      }

      while (((*(a3 + 16))(*(*a3 + 4 + 8 * v17 + 4), *(*a3 + 4 + 8 * v7 + 4)) & 0x80000000) == 0);
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = (*(a3 + 16))(*(*a3 + 4 + 8 * a1[1] + 4), *(*a3 + 4 + 8 * *a1 + 4));
        v9 = (*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * a1[1] + 4));
        if ((v8 & 0x80000000) == 0)
        {
          if (v9 < 0)
          {
            v10 = a1[1];
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v10;
            if (((*(a3 + 16))(*(*a3 + 4 + 8 * a1[1] + 4), *(*a3 + 4 + 8 * *a1 + 4)) & 0x80000000) != 0)
            {
              *a1 = vrev64_s32(*a1);
            }
          }

          return 1;
        }

        v17 = *a1;
        if (v9 < 0)
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v17;
          return 1;
        }

        *a1 = a1[1];
        a1[1] = v17;
        if (((*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * v17 + 4)) & 0x80000000) != 0)
        {
          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (((*(a3 + 16))(*(*a3 + 4 + 8 * *(a2 - 1) + 4), *(*a3 + 4 + 8 * *a1 + 4)) & 0x80000000) != 0)
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
LABEL_6:
        *(a2 - 1) = v7;
        return 1;
      }

      return 1;
    }
  }

  v11 = (*(a3 + 16))(*(*a3 + 4 + 8 * a1[1] + 4), *(*a3 + 4 + 8 * *a1 + 4));
  v12 = a1 + 2;
  v13 = (*(a3 + 16))(*(*a3 + 4 + 8 * a1[2] + 4), *(*a3 + 4 + 8 * a1[1] + 4));
  if (v11 < 0)
  {
    v18 = *a1;
    if (v13 < 0)
    {
      *a1 = a1[2];
      a1[2] = v18;
    }

    else
    {
      v19 = a1[2];
      *a1 = a1[1];
      a1[1] = v18;
      if (((*(a3 + 16))(*(*a3 + 4 + 8 * v19 + 4), *(*a3 + 4 + 8 * v18 + 4)) & 0x80000000) != 0)
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v13 < 0)
  {
    v15 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    a1[1] = v14;
    a1[2] = v15;
    if (((*(a3 + 16))(*(*a3 + 4 + 8 * v14 + 4), *(*a3 + 4 + 8 * v16 + 4)) & 0x80000000) != 0)
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v20 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (((*(a3 + 16))(*(*a3 + 4 + 8 * *v20 + 4), *(*a3 + 4 + 8 * *v12 + 4)) & 0x80000000) != 0)
    {
      v23 = *v20;
      v24 = v21;
      while (1)
      {
        *(a1 + v24 + 12) = *(a1 + v24 + 8);
        if (v24 == -8)
        {
          break;
        }

        v25 = (*(a3 + 16))(*(*a3 + 4 + 8 * v23 + 4), *(*a3 + 4 + 8 * *(a1 + v24 + 4) + 4));
        v24 -= 4;
        if ((v25 & 0x80000000) == 0)
        {
          v26 = (a1 + v24 + 12);
          goto LABEL_36;
        }
      }

      v26 = a1;
LABEL_36:
      *v26 = v23;
      if (++v22 == 8)
      {
        return v20 + 1 == a2;
      }
    }

    v12 = v20;
    v21 += 4;
    if (++v20 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (((*(a4 + 16))(*(*a4 + 4 + 8 * *v12 + 4), *(*a4 + 4 + 8 * *a1 + 4)) & 0x80000000) != 0)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(a2 + 16))(*(*a2 + 4 + 8 * *v12 + 4), *(*a2 + 4 + 8 * v12[1] + 4)) < 0)
      {
        ++v12;
        v11 = v13;
      }

      result = (*(a2 + 16))(*(*a2 + 4 + 8 * *v12 + 4), *(*a2 + 4 + 8 * *v5 + 4));
      if ((result & 0x80000000) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 4 * v16);
          if (2 * v11 + 2 < a3 && (*(a2 + 16))(*(*a2 + 4 + 8 * *v12 + 4), *(*a2 + 4 + 8 * v12[1] + 4)) < 0)
          {
            ++v12;
            v16 = 2 * v11 + 2;
          }

          result = (*(a2 + 16))(*(*a2 + 4 + 8 * *v12 + 4), *(*a2 + 4 + 8 * v14 + 4));
          v5 = v15;
          v11 = v16;
        }

        while ((result & 0x80000000) == 0);
        *v15 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*(a2 + 16))(*(*a2 + 4 + 8 * *(v12 - 1) + 4), *(*a2 + 4 + 8 * v13 + 4)) >= 0)
      {
        v6 = v10;
      }

      else
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,float> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = (*(a3 + 16))(*(*a3 + 4 + 8 * *v8 + 4), *(*a3 + 4 + 8 * *(a2 - 4) + 4));
    if ((result & 0x80000000) != 0)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = (*(a3 + 16))(*(*a3 + 4 + 8 * *v8 + 4), *(*a3 + 4 + 8 * v10 + 4));
        v9 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * v9->u32[0] + 24));
      if ((result & 0x80000000) != 0)
      {
        v56 = v9->i32[0];
        v9->i32[0] = *(a2 - 1);
        goto LABEL_78;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a3 + 16);
    v15 = *a3 + 8;
    if (v12 >= 0x81)
    {
      v16 = v14(*(v15 + 32 * v8[v13] + 24), *(v15 + 32 * *v8 + 24));
      v17 = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * v8[v13] + 24));
      if (v16 < 0)
      {
        v24 = *v8;
        if (v17 < 0)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v24;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v24;
          if (((*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * v24 + 24)) & 0x80000000) != 0)
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v17 < 0)
      {
        v18 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v18;
        if (((*(a3 + 16))(*(*a3 + 8 + 32 * v8[v13] + 24), *(*a3 + 8 + 32 * *v8 + 24)) & 0x80000000) != 0)
        {
          v19 = *v8;
          *v8 = v8[v13];
          v8[v13] = v19;
        }
      }

      v28 = v13 - 1;
      v29 = (*(a3 + 16))(*(*a3 + 8 + 32 * v8[v13 - 1] + 24), *(*a3 + 8 + 32 * v8[1] + 24));
      v30 = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 2) + 24), *(*a3 + 8 + 32 * v8[v13 - 1] + 24));
      if (v29 < 0)
      {
        v33 = v8[1];
        if (v30 < 0)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v33;
        }

        else
        {
          v8[1] = v8[v28];
          v8[v28] = v33;
          if (((*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 2) + 24), *(*a3 + 8 + 32 * v33 + 24)) & 0x80000000) != 0)
          {
            v34 = v8[v28];
            v8[v28] = *(a2 - 2);
            *(a2 - 2) = v34;
          }
        }
      }

      else if (v30 < 0)
      {
        v31 = v8[v28];
        v8[v28] = *(a2 - 2);
        *(a2 - 2) = v31;
        if (((*(a3 + 16))(*(*a3 + 8 + 32 * v8[v28] + 24), *(*a3 + 8 + 32 * v8[1] + 24)) & 0x80000000) != 0)
        {
          v32 = v8[1];
          v8[1] = v8[v28];
          v8[v28] = v32;
        }
      }

      v35 = v13 + 1;
      v36 = (*(a3 + 16))(*(*a3 + 8 + 32 * v8[v13 + 1] + 24), *(*a3 + 8 + 32 * v8[2] + 24));
      v37 = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 3) + 24), *(*a3 + 8 + 32 * v8[v13 + 1] + 24));
      if (v36 < 0)
      {
        v40 = v8[2];
        if (v37 < 0)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v40;
        }

        else
        {
          v8[2] = v8[v35];
          v8[v35] = v40;
          if (((*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 3) + 24), *(*a3 + 8 + 32 * v40 + 24)) & 0x80000000) != 0)
          {
            v41 = v8[v35];
            v8[v35] = *(a2 - 3);
            *(a2 - 3) = v41;
          }
        }
      }

      else if (v37 < 0)
      {
        v38 = v8[v35];
        v8[v35] = *(a2 - 3);
        *(a2 - 3) = v38;
        if (((*(a3 + 16))(*(*a3 + 8 + 32 * v8[v35] + 24), *(*a3 + 8 + 32 * v8[2] + 24)) & 0x80000000) != 0)
        {
          v39 = v8[2];
          v8[2] = v8[v35];
          v8[v35] = v39;
        }
      }

      v42 = (*(a3 + 16))(*(*a3 + 8 + 32 * v8[v13] + 24), *(*a3 + 8 + 32 * v8[v28] + 24));
      v43 = (*(a3 + 16))(*(*a3 + 8 + 32 * v8[v35] + 24), *(*a3 + 8 + 32 * v8[v13] + 24));
      if (v42 < 0)
      {
        v48 = v8[v28];
        if (v43 < 0)
        {
          v8[v28] = v8[v35];
          v8[v35] = v48;
          v44 = v8[v13];
        }

        else
        {
          v8[v28] = v8[v13];
          v8[v13] = v48;
          v49 = (*(a3 + 16))(*(*a3 + 8 + 32 * v8[v35] + 24), *(*a3 + 8 + 32 * v48 + 24));
          v44 = v8[v13];
          if (v49 < 0)
          {
            v47 = v8[v35];
            v8[v13] = v47;
            v8[v35] = v44;
LABEL_57:
            v44 = v47;
          }
        }
      }

      else
      {
        v44 = v8[v13];
        if (v43 < 0)
        {
          v45 = v8[v35];
          v8[v13] = v45;
          v8[v35] = v44;
          v46 = (*(a3 + 16))(*(*a3 + 8 + 32 * v45 + 24), *(*a3 + 8 + 32 * v8[v28] + 24));
          v44 = v8[v13];
          if (v46 < 0)
          {
            v47 = v8[v28];
            v8[v28] = v44;
            v8[v13] = v47;
            goto LABEL_57;
          }
        }
      }

      v50 = *v8;
      *v8 = v44;
      v8[v13] = v50;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v20 = v14(*(v15 + 32 * *v8 + 24), *(v15 + 32 * v8[v13] + 24));
    v21 = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * *v8 + 24));
    if (v20 < 0)
    {
      v26 = v8[v13];
      if (v21 < 0)
      {
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v26;
LABEL_39:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *v8;
      *v8 = v26;
      if (((*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * v26 + 24)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v27;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v22 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v22;
      if (((*(a3 + 16))(*(*a3 + 8 + 32 * *v8 + 24), *(*a3 + 8 + 32 * v8[v13] + 24)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v23 = v8[v13];
      v8[v13] = *v8;
      *v8 = v23;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*(a3 + 16))(*(*a3 + 8 + 32 * *(v8 - 1) + 24), *(*a3 + 8 + 32 * *v8 + 24)) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v51 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &>(v8, a2, a3);
    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }

    v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(v8, v51, a3);
    v9 = (v51 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(v51 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v51;
      if (v53)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v53)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,false>(v8, v51, a3, -v11, a5 & 1);
      v9 = (v51 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,0>(v9, v9 + 1, &v9[1], a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,0>(v9, v9 + 1, &v9[1], &v9[1] + 1, a2 - 1, a3);
    }

    goto LABEL_11;
  }

  v54 = (*(a3 + 16))(*(*a3 + 8 + 32 * v9->u32[1] + 24), *(*a3 + 8 + 32 * v9->u32[0] + 24));
  result = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * v9->u32[1] + 24));
  if (v54 < 0)
  {
    v57 = v9->u32[0];
    if ((result & 0x80000000) != 0)
    {
      v9->i32[0] = *(a2 - 1);
      *(a2 - 1) = v57;
      return result;
    }

    v9->i32[0] = v9->i32[1];
    v9->i32[1] = v57;
    result = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * v57 + 24));
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v56 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
LABEL_78:
    *(a2 - 1) = v56;
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    v55 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
    *(a2 - 1) = v55;
    result = (*(a3 + 16))(*(*a3 + 8 + 32 * v9->u32[1] + 24), *(*a3 + 8 + 32 * v9->u32[0] + 24));
    if ((result & 0x80000000) != 0)
    {
      *v9 = vrev64_s32(*v9);
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(a5 + 16))(*(*a5 + 8 + 32 * *a2 + 24), *(*a5 + 8 + 32 * *a1 + 24));
  v11 = (*(a5 + 16))(*(*a5 + 8 + 32 * *a3 + 24), *(*a5 + 8 + 32 * *a2 + 24));
  if (v10 < 0)
  {
    v14 = *a1;
    if (v11 < 0)
    {
      *a1 = *a3;
      *a3 = v14;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      if (((*(a5 + 16))(*(*a5 + 8 + 32 * *a3 + 24), *(*a5 + 8 + 32 * v14 + 24)) & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11 < 0)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    if (((*(a5 + 16))(*(*a5 + 8 + 32 * *a2 + 24), *(*a5 + 8 + 32 * *a1 + 24)) & 0x80000000) != 0)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

  result = (*(a5 + 16))(*(*a5 + 8 + 32 * *a4 + 24), *(*a5 + 8 + 32 * *a3 + 24));
  if ((result & 0x80000000) != 0)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*(a5 + 16))(*(*a5 + 8 + 32 * *a3 + 24), *(*a5 + 8 + 32 * *a2 + 24));
    if ((result & 0x80000000) != 0)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*(a5 + 16))(*(*a5 + 8 + 32 * *a2 + 24), *(*a5 + 8 + 32 * *a1 + 24));
      if ((result & 0x80000000) != 0)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,0>(a1, a2, a3, a4, a6);
  result = (*(a6 + 16))(*(*a6 + 8 + 32 * *a5 + 24), *(*a6 + 8 + 32 * *a4 + 24));
  if ((result & 0x80000000) != 0)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    result = (*(a6 + 16))(*(*a6 + 8 + 32 * *a4 + 24), *(*a6 + 8 + 32 * *a3 + 24));
    if ((result & 0x80000000) != 0)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      result = (*(a6 + 16))(*(*a6 + 8 + 32 * *a3 + 24), *(*a6 + 8 + 32 * *a2 + 24));
      if ((result & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        result = (*(a6 + 16))(*(*a6 + 8 + 32 * *a2 + 24), *(*a6 + 8 + 32 * *a1 + 24));
        if ((result & 0x80000000) != 0)
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*(a3 + 16))(*(*a3 + 8 + 32 * v9 + 24), *(*a3 + 8 + 32 * v10 + 24));
        if ((result & 0x80000000) != 0)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 4) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*(a3 + 16))(*(*a3 + 8 + 32 * v11 + 24), *(*a3 + 8 + 32 * *(v4 + v12 - 4) + 24));
            v12 -= 4;
            if ((result & 0x80000000) == 0)
            {
              v13 = (v4 + v12 + 4);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 4); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*(a3 + 16))(*(*a3 + 8 + 32 * v7 + 24), *(*a3 + 8 + 32 * v8 + 24));
      if ((result & 0x80000000) != 0)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*(a3 + 16))(*(*a3 + 8 + 32 * v9 + 24), *(*a3 + 8 + 32 * *(v11 - 2) + 24));
        }

        while ((result & 0x80000000) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (((*(a3 + 16))(*(*a3 + 8 + 32 * v6 + 24), *(*a3 + 8 + 32 * *(a2 - 1) + 24)) & 0x80000000) != 0)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 32 * v6 + 24), *(*a3 + 8 + 32 * v9 + 24)) & 0x80000000) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v8 = v7;
      if (v7 >= v4)
      {
        break;
      }

      ++v7;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 32 * v6 + 24), *(*a3 + 8 + 32 * *v8 + 24)) & 0x80000000) == 0);
  }

  if (v8 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 32 * v6 + 24), *(*a3 + 8 + 32 * v10 + 24)) & 0x80000000) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    *v8 = *v4;
    *v4 = v11;
    do
    {
      v12 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 32 * v6 + 24), *(*a3 + 8 + 32 * v12 + 24)) & 0x80000000) == 0);
    do
    {
      v13 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 32 * v6 + 24), *(*a3 + 8 + 32 * v13 + 24)) & 0x80000000) != 0);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v6;
  return v8;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &>(int *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*(a3 + 16))(*(*a3 + 8 + 32 * a1[++v6] + 24), *(*a3 + 8 + 32 * v7 + 24));
  }

  while (v8 < 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 32 * v12 + 24), *(*a3 + 8 + 32 * v7 + 24)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 32 * v11 + 24), *(*a3 + 8 + 32 * v7 + 24)) & 0x80000000) == 0);
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 32 * v16 + 24), *(*a3 + 8 + 32 * v7 + 24)) & 0x80000000) != 0);
      do
      {
        v17 = *--v14;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 32 * v17 + 24), *(*a3 + 8 + 32 * v7 + 24)) & 0x80000000) == 0);
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = (*(a3 + 16))(*(*a3 + 8 + 32 * a1[1] + 24), *(*a3 + 8 + 32 * *a1 + 24));
        v9 = (*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * a1[1] + 24));
        if ((v8 & 0x80000000) == 0)
        {
          if (v9 < 0)
          {
            v10 = a1[1];
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v10;
            if (((*(a3 + 16))(*(*a3 + 8 + 32 * a1[1] + 24), *(*a3 + 8 + 32 * *a1 + 24)) & 0x80000000) != 0)
            {
              *a1 = vrev64_s32(*a1);
            }
          }

          return 1;
        }

        v17 = *a1;
        if (v9 < 0)
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v17;
          return 1;
        }

        *a1 = a1[1];
        a1[1] = v17;
        if (((*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * v17 + 24)) & 0x80000000) != 0)
        {
          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (((*(a3 + 16))(*(*a3 + 8 + 32 * *(a2 - 1) + 24), *(*a3 + 8 + 32 * *a1 + 24)) & 0x80000000) != 0)
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
LABEL_6:
        *(a2 - 1) = v7;
        return 1;
      }

      return 1;
    }
  }

  v11 = (*(a3 + 16))(*(*a3 + 8 + 32 * a1[1] + 24), *(*a3 + 8 + 32 * *a1 + 24));
  v12 = a1 + 2;
  v13 = (*(a3 + 16))(*(*a3 + 8 + 32 * a1[2] + 24), *(*a3 + 8 + 32 * a1[1] + 24));
  if (v11 < 0)
  {
    v18 = *a1;
    if (v13 < 0)
    {
      *a1 = a1[2];
      a1[2] = v18;
    }

    else
    {
      v19 = a1[2];
      *a1 = a1[1];
      a1[1] = v18;
      if (((*(a3 + 16))(*(*a3 + 8 + 32 * v19 + 24), *(*a3 + 8 + 32 * v18 + 24)) & 0x80000000) != 0)
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v13 < 0)
  {
    v15 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    a1[1] = v14;
    a1[2] = v15;
    if (((*(a3 + 16))(*(*a3 + 8 + 32 * v14 + 24), *(*a3 + 8 + 32 * v16 + 24)) & 0x80000000) != 0)
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v20 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (((*(a3 + 16))(*(*a3 + 8 + 32 * *v20 + 24), *(*a3 + 8 + 32 * *v12 + 24)) & 0x80000000) != 0)
    {
      v23 = *v20;
      v24 = v21;
      while (1)
      {
        *(a1 + v24 + 12) = *(a1 + v24 + 8);
        if (v24 == -8)
        {
          break;
        }

        v25 = (*(a3 + 16))(*(*a3 + 8 + 32 * v23 + 24), *(*a3 + 8 + 32 * *(a1 + v24 + 4) + 24));
        v24 -= 4;
        if ((v25 & 0x80000000) == 0)
        {
          v26 = (a1 + v24 + 12);
          goto LABEL_36;
        }
      }

      v26 = a1;
LABEL_36:
      *v26 = v23;
      if (++v22 == 8)
      {
        return v20 + 1 == a2;
      }
    }

    v12 = v20;
    v21 += 4;
    if (++v20 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (((*(a4 + 16))(*(*a4 + 8 + 32 * *v12 + 24), *(*a4 + 8 + 32 * *a1 + 24)) & 0x80000000) != 0)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 32 * *v12 + 24), *(*a2 + 8 + 32 * v12[1] + 24)) < 0)
      {
        ++v12;
        v11 = v13;
      }

      result = (*(a2 + 16))(*(*a2 + 8 + 32 * *v12 + 24), *(*a2 + 8 + 32 * *v5 + 24));
      if ((result & 0x80000000) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 4 * v16);
          if (2 * v11 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 32 * *v12 + 24), *(*a2 + 8 + 32 * v12[1] + 24)) < 0)
          {
            ++v12;
            v16 = 2 * v11 + 2;
          }

          result = (*(a2 + 16))(*(*a2 + 8 + 32 * *v12 + 24), *(*a2 + 8 + 32 * v14 + 24));
          v5 = v15;
          v11 = v16;
        }

        while ((result & 0x80000000) == 0);
        *v15 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*(a2 + 16))(*(*a2 + 8 + 32 * *(v12 - 1) + 24), *(*a2 + 8 + 32 * v13 + 24)) >= 0)
      {
        v6 = v10;
      }

      else
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,BOnode>> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = (*(a3 + 16))(*(*a3 + 8 + 32 * *v8 + 24), *(*a3 + 8 + 32 * *(a2 - 4) + 24));
    if ((result & 0x80000000) != 0)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = (*(a3 + 16))(*(*a3 + 8 + 32 * *v8 + 24), *(*a3 + 8 + 32 * v10 + 24));
        v9 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t std::vector<PruneProbsRecord>::__construct_one_at_end[abi:ne200100]<PruneProbsRecord const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *(v3 + 8) = *(a2 + 2);
  *v3 = v4;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v3 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 2);
  *(a1 + 8) = v3 + 40;
  return result;
}

uint64_t std::vector<PruneProbsRecord>::__emplace_back_slow_path<PruneProbsRecord const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PruneProbsRecord>>(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 40 * v2;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(40 * v2 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 2);
  *&v17 = v17 + 40;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PruneProbsRecord>,PruneProbsRecord*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B529B804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PruneProbsRecord>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PruneProbsRecord>,PruneProbsRecord*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(v4 + 8) = *(v7 + 2);
      *v4 = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4 + 16, v7[2], v7[3], (v7[3] - v7[2]) >> 2);
      v7 += 5;
      v4 = v14 + 40;
      v14 += 40;
    }

    while (v7 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      v9 = v6[2];
      if (v9)
      {
        v6[3] = v9;
        operator delete(v9);
      }

      v6 += 5;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PruneProbsRecord>,PruneProbsRecord*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PruneProbsRecord>,PruneProbsRecord*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PruneProbsRecord const&,PruneProbsRecord const&),std::__wrap_iter<PruneProbsRecord*>>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 40 * (v4 >> 1));
    v10 = (a2 - 40);
    if ((*a3)(v9, (a2 - 40)))
    {
      v11 = *v10;
      v16 = *(v10 + 2);
      v15 = v11;
      v18 = 0;
      v19 = 0;
      __p = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(a2 - 24), *(a2 - 16), (*(a2 - 16) - *(a2 - 24)) >> 2);
      do
      {
        v12 = v9;
        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        if (v10 != v9)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v10 + 2, v9[2], v9[3], (v9[3] - v9[2]) >> 2);
        }

        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 40 * v8);
        v10 = v12;
      }

      while (((*a3)(v9, &v15) & 1) != 0);
      v14 = v15;
      *(v12 + 2) = v16;
      *v12 = v14;
      if (v12 != &v15)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v12 + 2, __p, v18, (v18 - __p) >> 2);
      }

      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_1B529BAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(PruneProbsRecord const&,PruneProbsRecord const&),std::__wrap_iter<PruneProbsRecord*>>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v19 = *(a1 + 8);
    v18 = v8;
    v21 = 0;
    v22 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PruneProbsRecord const&,PruneProbsRecord const&),std::__wrap_iter<PruneProbsRecord*>>(a1, a3, a4);
    v10 = v9;
    v11 = (a2 - 40);
    if (a2 - 40 == v9)
    {
      v17 = v18;
      *(v9 + 8) = v19;
      *v9 = v17;
      if (&v18 != v9)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v9 + 16), __p, v21, (v21 - __p) >> 2);
      }
    }

    else
    {
      v12 = *v11;
      *(v9 + 8) = *(a2 - 32);
      *v9 = v12;
      v13 = *(a2 - 24);
      v14 = *(a2 - 16);
      v15 = (a2 - 24);
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v9 + 16), v13, v14, (v14 - v13) >> 2);
      v16 = v18;
      *(v11 + 2) = v19;
      *v11 = v16;
      if (v11 != &v18)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v15, __p, v21, (v21 - __p) >> 2);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PruneProbsRecord const&,PruneProbsRecord const&),std::__wrap_iter<PruneProbsRecord*>>(a1, v10 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v10 + 40 - a1) >> 3));
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B529BC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PruneProbsRecord const&,PruneProbsRecord const&),std::__wrap_iter<PruneProbsRecord*>>(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6 + 40;
    v9 = 2 * v6;
    v6 = (2 * v6) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = (*a2)(v8, v8 + 40);
      v12 = v11 ? 40 : 0;
      v8 += v12;
      if (v11)
      {
        v6 = v10;
      }
    }

    v13 = *v8;
    *(a1 + 8) = *(v8 + 8);
    *a1 = v13;
    if (a1 != v8)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 16), *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
    }

    a1 = v8;
  }

  while (v6 <= v7);
  return v8;
}

void sub_1B529C02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
  __p = (v14 - 128);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v14 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL quasar::corrective_reranking::isPunctuation(unsigned int *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) != 1)
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (v1 != 1)
  {
    return 0;
  }

  v2 = *a1;
  return v2 <= 0x7F && (*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x2000) != 0 || u_ispunct(v2) != 0;
}

void quasar::corrective_reranking::getTokens(__int128 **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      if (v5 >= a2[2])
      {
        v5 = std::vector<std::basic_string<char32_t>>::__emplace_back_slow_path<std::basic_string<char32_t> const&>(a2, v2);
      }

      else
      {
        std::vector<std::basic_string<char32_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char32_t> const&>(a2, v2);
        ++v5;
      }

      a2[1] = v5;
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_1B529C208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1B529C26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::detokenize(void *a1)
{
  quasar::utf::toStringVec(a1, &v1);
  quasar::joinAndAutoSpace(&v1, &__p);
  quasar::utf::toU32String();
}

void sub_1B529C2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  *(v18 - 24) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 24));
  _Unwind_Resume(a1);
}

BOOL quasar::corrective_reranking::isCamelCaseUnicode(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
  }

  if (v2 < 2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = v1 >> 63;
  v8 = 1;
  do
  {
    if (v7)
    {
      v9 = *a1;
    }

    else
    {
      v9 = a1;
    }

    if (u_isupper(v9[v8]))
    {
      v6 = 1;
    }

    else
    {
      v5 |= u_islower(v9[v8]) != 0;
      if ((v6 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v5)
    {
      return 1;
    }

LABEL_13:
    ++v8;
    v10 = *(a1 + 23);
    v7 = v10 >> 63;
    v11 = *(a1 + 8);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(a1 + 23);
    }
  }

  while (v11 > v8);
  if (v5 & 1 | ((v6 & 1) == 0))
  {
    return 0;
  }

  v12 = *a1;
  if ((v10 & 0x80000000) == 0)
  {
    v12 = a1;
  }

  return u_islower(*v12) != 0;
}

void sub_1B529C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v62 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v62;
    operator delete(v62);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v60 - 160));
  STACK[0x200] = v59;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  if (*(v60 - 73) < 0)
  {
    operator delete(*(v60 - 96));
  }

  _Unwind_Resume(a1);
}

void *std::match_results<std::__wrap_iter<char const*>>::str[abi:ne200100]@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= a2)
  {
    v3 = (result + 3);
  }

  else
  {
    v3 = *result + 24 * a2;
  }

  if (*(v3 + 16) == 1)
  {
    return std::string::__init_with_size[abi:ne200100]<char *,char *>(a3, *v3, *(v3 + 8), *(v3 + 8) - *v3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void quasar::corrective_reranking::classifyCasing(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v6.__r_.__value_.__l.__data_ = xmmword_1B5AEBFB0;
  std::unordered_set<char32_t>::unordered_set(v5, &v6, 4);
  memset(&v6, 0, sizeof(v6));
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v4 = 4 * v2;
    do
    {
      if (!std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>(v5, v3))
      {
        std::basic_string<char32_t>::push_back(&v6, *v3);
      }

      ++v3;
      v4 -= 4;
    }

    while (v4);
  }

  quasar::utf::toString();
}

void sub_1B529C9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::transferLetterCasing(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::basic_string<char32_t> *a3@<X8>)
{
  memset(&v21, 0, sizeof(v21));
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    v7 = 4 * v5;
    do
    {
      if (*v6 != 32)
      {
        std::basic_string<char32_t>::push_back(&v21, *v6);
      }

      ++v6;
      v7 -= 4;
    }

    while (v7);
  }

  memset(&v20, 0, sizeof(v20));
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = a2[1];
  }

  if (v8)
  {
    v10 = 4 * v8;
    do
    {
      if (*v9 != 32)
      {
        std::basic_string<char32_t>::push_back(&v20, *v9);
      }

      ++v9;
      v10 -= 4;
    }

    while (v10);
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v8 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v20.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v21.__r_.__value_.__l.__size_;
    }
  }

  if (size != v8 && quasar::gLogLevel > 1)
  {
    memset(v19, 0, sizeof(v19));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "transferLetterCasing: Strings must have the same length when spaces are ignored.", 80);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v19);
  }

  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v13 = *(a2 + 23);
  v14 = a2[1];
  if ((v13 & 0x80u) != 0)
  {
    a2 = *a2;
    v13 = v14;
  }

  if (v13)
  {
    v15 = 0;
    v16 = 4 * v13;
    do
    {
      if (*a2 == 32)
      {
        goto LABEL_45;
      }

      v17 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v21.__r_.__value_.__l.__size_;
      }

      if (v17 <= v15)
      {
LABEL_45:
        std::basic_string<char32_t>::push_back(a3, 32);
      }

      else
      {
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v21;
        }

        else
        {
          v18 = v21.__r_.__value_.__r.__words[0];
        }

        std::basic_string<char32_t>::push_back(a3, v18->__r_.__value_.__s.__data_[v15++]);
      }

      a2 = (a2 + 4);
      v16 -= 4;
    }

    while (v16);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}