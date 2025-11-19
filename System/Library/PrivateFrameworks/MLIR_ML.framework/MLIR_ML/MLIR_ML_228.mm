llvm::yaml::Document *llvm::yaml::Document::Document(llvm::yaml::Document *this, llvm::yaml::Stream *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 40;
  *(this + 4) = 0x400000000;
  *(this + 11) = 0;
  *(this + 9) = this + 88;
  *(this + 10) = 0;
  *(this + 12) = 1;
  *(this + 13) = 0;
  *(this + 16) = 0;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  v3 = this + 112;
  v10 = "!";
  v11 = 1;
  v12 = &v10;
  v4 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__emplace_unique_key_args<llvm::StringRef,std::piecewise_construct_t const&,std::tuple<llvm::StringRef&&>,std::tuple<>>(this + 112, &v10);
  v4[6] = "!";
  v4[7] = 1;
  v10 = "!!";
  v11 = 2;
  v12 = &v10;
  v5 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__emplace_unique_key_args<llvm::StringRef,std::piecewise_construct_t const&,std::tuple<llvm::StringRef&&>,std::tuple<>>(v3, &v10);
  v5[6] = "tag:yaml.org,2002:";
  v5[7] = 18;
  if (llvm::yaml::Document::parseDirectives(this))
  {
    llvm::yaml::Document::expectToken(this, 5);
  }

  if (*llvm::yaml::Scanner::peekNext(**this) == 5)
  {
    llvm::yaml::Scanner::getNext(**this, &v7);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  return this;
}

uint64_t llvm::yaml::Document::parseDirectives(uint64_t ****this)
{
  v2 = 0;
  do
  {
    v3 = llvm::yaml::Scanner::peekNext(**this);
    v8 = *v3;
    if (*(v3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, v3[3], v3[4]);
      v5 = v8;
      if (v8 != 3)
      {
LABEL_5:
        if (v5 == 4)
        {
          llvm::yaml::Document::parseTAGDirective(this);
          v2 = 1;
          v6 = 1;
          if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            continue;
          }
        }

        else
        {
          v6 = 0;
          if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            continue;
          }
        }

LABEL_14:
        operator delete(v9.__r_.__value_.__l.__data_);
        continue;
      }
    }

    else
    {
      v4 = *(v3 + 3);
      v9.__r_.__value_.__r.__words[2] = v3[5];
      *&v9.__r_.__value_.__l.__data_ = v4;
      v5 = v8;
      if (v8 != 3)
      {
        goto LABEL_5;
      }
    }

    llvm::yaml::Scanner::getNext(**this, v10);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v2 = 1;
    v6 = 1;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }
  }

  while ((v6 & 1) != 0);
  return v2 & 1;
}

BOOL llvm::yaml::Document::expectToken(llvm::yaml::Scanner ***this, int a2)
{
  llvm::yaml::Scanner::getNext(**this, &v13);
  v4 = v13;
  if (v13 != a2)
  {
    v11 = "Unexpected token";
    v12 = 259;
    v5 = **this;
    v6 = *(v5 + 6);
    if (v6 <= v14)
    {
      v7 = (v6 - 1);
    }

    else
    {
      v7 = v14;
    }

    v8 = *(v5 + 42);
    if (v8)
    {
      v9 = std::generic_category();
      *v8 = 22;
      v8[1] = v9;
    }

    if ((*(v5 + 75) & 1) == 0)
    {
      llvm::SourceMgr::PrintMessage(*v5, v7, 0, &v11, 0, 0, 0, 0, *(v5 + 76));
    }

    *(v5 + 75) = 1;
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  return v4 == a2;
}

void llvm::yaml::Document::parseTAGDirective(llvm::yaml::Scanner ***this)
{
  v1 = (this + 14);
  llvm::yaml::Scanner::getNext(**this, v18);
  v17 = v19;
  first_of = llvm::StringRef::find_first_of(&v17, " \t", 2, 0);
  if (*(&v17 + 1) >= first_of)
  {
    v3 = first_of;
  }

  else
  {
    v3 = *(&v17 + 1);
  }

  v15 = v17 + v3;
  v16 = *(&v17 + 1) - v3;
  first_not_of = llvm::StringRef::find_first_not_of(&v15, " \t", 2, 0);
  if (first_not_of >= v16)
  {
    v5 = v16;
  }

  else
  {
    v5 = first_not_of;
  }

  *&v17 = v15 + v5;
  *(&v17 + 1) = v16 - v5;
  v6 = llvm::StringRef::find_first_of(&v17, " \t", 2, 0);
  if (*(&v17 + 1) >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(&v17 + 1);
  }

  v15 = v17;
  v16 = v7;
  v13 = (v17 + v7);
  v14 = *(&v17 + 1) - v7;
  v8 = llvm::StringRef::find_first_not_of(&v13, " \t", 2, 0);
  if (v8 >= v14)
  {
    v9 = v14;
  }

  else
  {
    v9 = v8;
  }

  v10 = v13 + v9;
  v11 = v14 - v9;
  v13 = &v15;
  v12 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__emplace_unique_key_args<llvm::StringRef,std::piecewise_construct_t const&,std::tuple<llvm::StringRef&&>,std::tuple<>>(v1, &v15);
  v12[6] = v10;
  v12[7] = v11;
  if (v21 < 0)
  {
    operator delete(__p);
  }
}

void llvm::yaml::Document::parseYAMLDirective(llvm::yaml::Scanner ***this)
{
  llvm::yaml::Scanner::getNext(**this, &v1);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void llvm::yaml::MappingNode::skip(llvm::yaml::MappingNode *this)
{
  if (*(this + 76) == 1)
  {
    *(this + 76) = 0;
    while (1)
    {
      llvm::yaml::MappingNode::increment(this);
      v2 = *(this + 10);
      if (!v2)
      {
        break;
      }

      Key = llvm::yaml::KeyValueNode::getKey(*(this + 10));
      if (Key)
      {
        (*(*Key + 8))(Key);
        Value = llvm::yaml::KeyValueNode::getValue(v2);
        if (Value)
        {
          (*(*Value + 8))(Value);
        }
      }
    }
  }
}

llvm::yaml::SequenceNode *llvm::yaml::SequenceNode::skip(llvm::yaml::SequenceNode *this)
{
  if (*(this + 76) == 1)
  {
    v1 = this;
    *(this + 76) = 0;
    llvm::yaml::SequenceNode::increment(this);
    for (this = *(v1 + 10); this; this = *(v1 + 10))
    {
      (*(*this + 8))(this);
      llvm::yaml::SequenceNode::increment(v1);
    }
  }

  return this;
}

void *llvm::SmallVectorImpl<char>::insert<char const*,void>(uint64_t *a1, uint64_t a2, char *__src, char *a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  v9 = a2 - *a1;
  v10 = a4 - __src;
  v11 = v7 + a4 - __src;
  v12 = a1[2];
  if (*a1 + v7 == a2)
  {
    if (v12 < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (__src != a4)
    {
      memcpy((v8 + v7), __src, v10);
      v8 = *a1;
      v7 = a1[1];
    }

    a1[1] = v7 + v10;
    return (v8 + v9);
  }

  if (v12 < v11)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  __srca = (v8 + v9);
  v14 = (v8 + v7);
  v15 = v7 - v9;
  if (v7 - v9 < v10)
  {
    a1[1] = v7 + v10;
    v16 = v8 + v9;
    if (v7 != v9)
    {
      memcpy((v8 + v10 + v9), __srca, v7 - v9);
    }

    if (!v15)
    {
      v19 = __src;
      v21 = a4;
      if (__src == a4)
      {
        return v16;
      }

LABEL_25:
      memcpy((v8 + v7), v19, v21 - v19);
      return v16;
    }

    if (v15 > 0x1F && (v8 + a2 - &__src[v6]) >= 0x20)
    {
      v17 = &__srca[v15 & 0xFFFFFFFFFFFFFFE0];
      v18 = v15 & 0x1F;
      v19 = &__src[v15 & 0xFFFFFFFFFFFFFFE0];
      v28 = (__src + 16);
      v29 = (v9 + v8 + 16);
      v30 = v15 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 32;
      }

      while (v30);
      if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_12:
        v21 = a4;
        if (v19 == a4)
        {
          return v16;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = (v8 + v9);
      v18 = v7 - v9;
      v19 = __src;
    }

    do
    {
      v20 = *v19++;
      *v17++ = v20;
      --v18;
    }

    while (v18);
    goto LABEL_12;
  }

  v22 = a1[1];
  if (a1[2] < v10 + v7)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v23 = &v14[-v10];
  if (a4 != __src)
  {
    v24 = *a1;
    v25 = (*a1 + v7);
    if (v10 < 8)
    {
      v26 = &v14[-v10];
      goto LABEL_42;
    }

    v26 = &v14[-v10];
    if ((&a4[v24] - &__src[v8]) >= 0x20)
    {
      if (v10 < 0x20)
      {
        v27 = 0;
        goto LABEL_37;
      }

      v27 = v10 & 0xFFFFFFFFFFFFFFE0;
      v32 = (&__src[v7] - a4 + v8 + 16);
      v33 = (v7 + v24 + 16);
      v34 = v10 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v35 = *v32;
        *(v33 - 1) = *(v32 - 1);
        *v33 = v35;
        v32 += 2;
        v33 += 2;
        v34 -= 32;
      }

      while (v34);
      if (v10 == v27)
      {
        goto LABEL_43;
      }

      if ((v10 & 0x18) != 0)
      {
LABEL_37:
        v25 += v10 & 0xFFFFFFFFFFFFFFF8;
        v26 = &v23[v10 & 0xFFFFFFFFFFFFFFF8];
        v36 = (v8 + &__src[v7 + v27] - a4);
        v37 = (v24 + v7 + v27);
        v38 = v27 - (v10 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v39 = *v36++;
          *v37++ = v39;
          v38 += 8;
        }

        while (v38);
        if (v10 == (v10 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v26 = &v23[v27];
      v25 += v27;
    }

    do
    {
LABEL_42:
      v40 = *v26++;
      *v25++ = v40;
    }

    while (v26 != v14);
LABEL_43:
    v22 = a1[1];
  }

  a1[1] = v22 + v10;
  v16 = v8 + v9;
  if (v23 != __srca)
  {
    memmove(&__srca[v10], __srca, &v14[-v10] - __srca);
  }

  if (a4 == __src)
  {
    return v16;
  }

  return memmove(__srca, __src, v10);
}

std::string::size_type std::string::__insert_with_size<char *,char *>(std::string *this, uint64_t a2, unint64_t a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  v8 = this;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2 - this;
    if (__n_add)
    {
      if (this > a3 || this->__r_.__value_.__r.__words + v9 + 1 <= a3)
      {
        v11 = 22;
        v12 = this;
        if (22 - v9 < __n_add)
        {
          goto LABEL_6;
        }

LABEL_14:
        if (v9 == v10)
        {
          v13 = v10 + __n_add;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(v12 + v10 + __n_add, v12 + v10, v9 - v10);
          v13 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_16;
      }

LABEL_21:
      memset(&v29, 0, sizeof(v29));
      if (a3 == a4)
      {
        size = 0;
        v21 = 0;
        v19 = 0;
      }

      else
      {
        do
        {
          v18 = *v7++;
          std::string::push_back(&v29, v18);
        }

        while (v7 != a4);
        v19 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        size = v29.__r_.__value_.__l.__size_;
        v21 = v29.__r_.__value_.__r.__words[0];
        LOBYTE(v9) = *(&v8->__r_.__value_.__s + 23);
      }

      if ((v19 & 0x80u) == 0)
      {
        v22 = &v29;
      }

      else
      {
        v22 = v21;
      }

      if ((v19 & 0x80u) == 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = size;
      }

      if ((v9 & 0x80) != 0)
      {
        v9 = v8->__r_.__value_.__l.__size_;
        v24 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v24 - v9 >= __n_add)
        {
          v25 = v8->__r_.__value_.__r.__words[0];
          v26 = v9 - v10;
          if (v9 == v10)
          {
LABEL_36:
            v27 = v10 + __n_add;
            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_52:
              v8->__r_.__value_.__l.__size_ = v27;
              v25->__r_.__value_.__s.__data_[v27] = 0;
              if (!v23)
              {
LABEL_42:
                if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
                {
                  result = v10 + v8->__r_.__value_.__r.__words[0];
                  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                else
                {
                  result = v8 + v10;
                  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                v28 = result;
                operator delete(v29.__r_.__value_.__l.__data_);
                return v28;
              }

LABEL_41:
              memmove(v25 + v10, v22, v23);
              goto LABEL_42;
            }

LABEL_40:
            *(&v8->__r_.__value_.__s + 23) = v27 & 0x7F;
            v25->__r_.__value_.__s.__data_[v27] = 0;
            if (!v23)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_51:
          memmove(v25 + v10 + __n_add, v25 + v10, v26);
          v27 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v9 = v9;
        v24 = 22;
        v25 = v8;
        if (22 - v9 >= __n_add)
        {
          v26 = v9 - v10;
          if (v9 == v10)
          {
            goto LABEL_36;
          }

          goto LABEL_51;
        }
      }

      std::string::__grow_by(v8, v24, v9 + __n_add - v24, v9, v10, 0, __n_add);
      v8->__r_.__value_.__l.__size_ = v9 + __n_add;
      v25 = v8->__r_.__value_.__r.__words[0];
      v27 = v9 + __n_add;
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v12 = this;
    return v12 + v10;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  v10 = a2 - this->__r_.__value_.__r.__words[0];
  if (!__n_add)
  {
    return v12 + v10;
  }

  v14 = this->__r_.__value_.__l.__size_;
  if (v12 <= a3 && v12->__r_.__value_.__r.__words + v14 + 1 > a3)
  {
    goto LABEL_21;
  }

  v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = this->__r_.__value_.__l.__size_;
  if (v11 - v14 >= __n_add)
  {
    goto LABEL_14;
  }

LABEL_6:
  std::string::__grow_by(this, v11, v9 + __n_add - v11, v9, v10, 0, __n_add);
  v8->__r_.__value_.__l.__size_ = v9 + __n_add;
  v12 = v8->__r_.__value_.__r.__words[0];
  v13 = v9 + __n_add;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    v8->__r_.__value_.__l.__size_ = v13;
    v12->__r_.__value_.__s.__data_[v13] = 0;
    v16 = a4 - v7;
    if (a4 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&v8->__r_.__value_.__s + 23) = v13 & 0x7F;
  v12->__r_.__value_.__s.__data_[v13] = 0;
  v16 = a4 - v7;
  if (a4 != v7)
  {
LABEL_17:
    memmove(v12 + v10, v7, v16);
  }

LABEL_18:
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v8->__r_.__value_.__r.__words[0];
  }

  return v8 + v10;
}

void *std::unique_ptr<llvm::yaml::Scanner>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[28];
    if (v3 != v2 + 30)
    {
      free(v3);
    }

    v4 = v2[24];
    if (v4 != v2 + 26)
    {
      free(v4);
    }

    v5 = v2[23];
    if (v5 != v2 + 22)
    {
      do
      {
        v6 = *v5;
        v7 = v5[1];
        *v7 = *v5;
        *(v6 + 8) = v7;
        *v5 = 0;
        v5[1] = 0;
        if (*(v5 + 63) < 0)
        {
          operator delete(v5[5]);
        }

        v5 = v7;
      }

      while (v7 != v2 + 22);
    }

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl((v2 + 10));

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t std::__function::__func<llvm::yaml::ScalarNode::getDoubleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0,std::allocator<llvm::yaml::ScalarNode::getDoubleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0>,llvm::StringRef ()(llvm::StringRef,llvm::SmallVectorImpl<char> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868A3708;
  a2[1] = v2;
  return result;
}

char *std::__function::__func<llvm::yaml::ScalarNode::getDoubleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0,std::allocator<llvm::yaml::ScalarNode::getDoubleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0>,llvm::StringRef ()(llvm::StringRef,llvm::SmallVectorImpl<char> &)>::operator()(uint64_t a1, char **a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 == 1)
  {
    v33 = "Unrecognized escape code";
    v35 = 259;
    v7 = ****(v4 + 8);
    v8 = *(v7 + 48);
    if (v8 <= v5)
    {
      v9 = (v8 - 1);
    }

    else
    {
      v9 = v5;
    }

    v10 = *(v7 + 336);
    if (v10)
    {
LABEL_6:
      v11 = std::generic_category();
      *v10 = 22;
      v10[1] = v11;
    }

LABEL_7:
    if ((*(v7 + 75) & 1) == 0)
    {
      llvm::SourceMgr::PrintMessage(*v7, v9, 0, &v33, 0, 0, 0, 0, *(v7 + 76));
    }

    result = 0;
    *(v7 + 75) = 1;
    a3[1] = 0;
  }

  else
  {
    if (v6)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = *a2;
    }

    v13 = &v6[-(v6 != 0)];
    switch(*v9)
    {
      case 9:
      case 116:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 9;
        goto LABEL_74;
      case 10:
        goto LABEL_42;
      case 13:
        if (v13 >= 2)
        {
          v20 = v9[1] == 10;
          if (v9[1] == 10)
          {
            ++v9;
          }

          v13 -= v20;
        }

LABEL_42:
        if (v13)
        {
          v21 = (v9 + 1);
        }

        else
        {
          v21 = v9;
        }

        v33 = v21;
        v34 = v13 - (v13 != 0);
        first_not_of = llvm::StringRef::find_first_not_of(&v33, " \t", 2, 0);
        if (first_not_of >= v34)
        {
          v23 = v34;
        }

        else
        {
          v23 = first_not_of;
        }

        return (v33 + v23);
      case 32:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 32;
        goto LABEL_74;
      case 34:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 34;
        goto LABEL_74;
      case 47:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 47;
        goto LABEL_74;
      case 48:
        v19 = a3[1];
        if (v19 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a3 + v19) = 0;
        goto LABEL_75;
      case 76:
        v27 = 8232;
        goto LABEL_68;
      case 78:
        v24 = a3[1];
        if (v24 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a3 + v24) = -62;
        v25 = a3[1];
        v26 = a3[2];
        v14 = v25 + 1;
        a3[1] = v25 + 1;
        if (v25 + 2 > v26)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = -123;
        goto LABEL_74;
      case 80:
        v27 = 8233;
LABEL_68:
        encodeUTF8(v27, a3);
        goto LABEL_76;
      case 85:
        if (v13 < 9)
        {
          goto LABEL_76;
        }

        v33 = 0;
        if ((llvm::getAsUnsignedInteger((v9 + 1), 8, 0x10, &v33) & 1) != 0 || (v17 = v33, HIDWORD(v33)))
        {
          v17 = 65533;
        }

        encodeUTF8(v17, a3);
        return v9 + 9;
      case 92:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 92;
        goto LABEL_74;
      case 95:
        v29 = a3[1];
        if (v29 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a3 + v29) = -62;
        v30 = a3[1];
        v31 = a3[2];
        v14 = v30 + 1;
        a3[1] = v30 + 1;
        if (v30 + 2 > v31)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = -96;
        goto LABEL_74;
      case 97:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 7;
        goto LABEL_74;
      case 98:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 8;
        goto LABEL_74;
      case 101:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 27;
        goto LABEL_74;
      case 102:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 12;
        goto LABEL_74;
      case 110:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 10;
        goto LABEL_74;
      case 114:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 13;
        goto LABEL_74;
      case 117:
        if (v13 < 5)
        {
          goto LABEL_76;
        }

        v33 = 0;
        if ((llvm::getAsUnsignedInteger((v9 + 1), 4, 0x10, &v33) & 1) != 0 || (v32 = v33, HIDWORD(v33)))
        {
          v32 = 65533;
        }

        encodeUTF8(v32, a3);
        return v9 + 5;
      case 118:
        v14 = a3[1];
        if (v14 + 1 > a3[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v15 = *a3;
        v16 = 11;
LABEL_74:
        *(v15 + v14) = v16;
LABEL_75:
        ++a3[1];
        goto LABEL_76;
      case 120:
        if (v13 < 3)
        {
LABEL_76:
          if (v13)
          {
            result = v9 + 1;
          }

          else
          {
            result = v9;
          }
        }

        else
        {
          v33 = 0;
          if ((llvm::getAsUnsignedInteger((v9 + 1), 2, 0x10, &v33) & 1) != 0 || (v18 = v33, HIDWORD(v33)))
          {
            v18 = 65533;
          }

          encodeUTF8(v18, a3);
          result = v9 + 3;
        }

        break;
      default:
        v33 = "Unrecognized escape code";
        v35 = 259;
        v7 = ****(v4 + 8);
        v28 = *(v7 + 48);
        if (v28 <= v9)
        {
          v9 = (v28 - 1);
        }

        v10 = *(v7 + 336);
        if (!v10)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
    }
  }

  return result;
}

uint64_t std::__function::__func<llvm::yaml::ScalarNode::getDoubleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0,std::allocator<llvm::yaml::ScalarNode::getDoubleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0>,llvm::StringRef ()(llvm::StringRef,llvm::SmallVectorImpl<char> &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4llvm4yaml10ScalarNode20getDoubleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4llvm4yaml10ScalarNode20getDoubleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4llvm4yaml10ScalarNode20getDoubleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4llvm4yaml10ScalarNode20getDoubleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<llvm::yaml::ScalarNode::getSingleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0,std::allocator<llvm::yaml::ScalarNode::getSingleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0>,llvm::StringRef ()(llvm::StringRef,llvm::SmallVectorImpl<char> &)>::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a3[1];
  if ((v5 + 1) > a3[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*a3 + v5) = 39;
  ++a3[1];
  v6 = 2;
  if (v4 < 2)
  {
    v6 = v4;
  }

  return v6 + v3;
}

uint64_t std::__function::__func<llvm::yaml::ScalarNode::getSingleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0,std::allocator<llvm::yaml::ScalarNode::getSingleQuotedValue(llvm::StringRef,llvm::SmallVectorImpl<char> &)::$_0>,llvm::StringRef ()(llvm::StringRef,llvm::SmallVectorImpl<char> &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm4yaml10ScalarNode20getSingleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm4yaml10ScalarNode20getSingleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm4yaml10ScalarNode20getSingleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm4yaml10ScalarNode20getSingleQuotedValueENS_9StringRefERNS_15SmallVectorImplIcEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__emplace_unique_key_args<llvm::StringRef,std::piecewise_construct_t const&,std::tuple<llvm::StringRef&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_19:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2[5];
      if (v6 >= v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = v2[5];
      }

      if (!v7)
      {
        if (v4 >= v6)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

      v8 = v2[4];
      v9 = memcmp(v3, v8, v7);
      if (v9)
      {
        break;
      }

      if (v4 >= v6)
      {
        goto LABEL_14;
      }

LABEL_3:
      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_19;
      }
    }

    if (v9 < 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v10 = memcmp(v8, v3, v7);
    if (v10)
    {
      if ((v10 & 0x80000000) == 0)
      {
        return v5;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (v6 >= v4)
    {
      return v5;
    }

LABEL_18:
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_19;
    }
  }
}

void *llvm::yaml::IO::IO(void *this, void *a2)
{
  *this = &unk_2868A3818;
  this[1] = a2;
  return this;
}

void llvm::yaml::Input::Input(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2868A3930;
  a1[1] = a4;
  llvm::SourceMgr::SourceMgr((a1 + 2));
  operator new();
}

void llvm::yaml::Input::Input(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2868A3930;
  a1[1] = a3;
  llvm::SourceMgr::SourceMgr((a1 + 2));
  operator new();
}

void llvm::yaml::Input::~Input(llvm::yaml::Input *this)
{
  *this = &unk_2868A3930;
  v2 = *(this + 76);
  if (v2 != this + 624)
  {
    free(v2);
  }

  llvm::SpecificBumpPtrAllocator<llvm::yaml::Input::SequenceHNode>::DestroyAll(this + 504);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 504);
  llvm::SpecificBumpPtrAllocator<llvm::yaml::Input::MapHNode>::DestroyAll(this + 408);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 408);
  if (*(this + 96))
  {
    llvm::deallocate_buffer(**(this + 47), *(*(this + 47) + 8));
  }

  *(this + 96) = 0;
  v3 = *(this + 84);
  if (v3)
  {
    *(this + 49) = 0;
    v4 = *(this + 41);
    v5 = *v4 + 4096;
    *(this + 39) = *v4;
    *(this + 40) = v5;
    if (v3 != 1)
    {
      v6 = ((v4 + 8 - *(this + 41)) >> 10) & 0x1FFFFFF;
      if (v6 >= 0x1E)
      {
        LOBYTE(v6) = 30;
      }

      llvm::deallocate_buffer(*(v4 + 8), (4096 << v6));
    }

    *(this + 84) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 312);
  if (*(this + 72))
  {
    llvm::deallocate_buffer(**(this + 35), *(*(this + 35) + 8));
  }

  *(this + 72) = 0;
  v7 = *(this + 60);
  if (v7)
  {
    *(this + 37) = 0;
    v8 = *(this + 29);
    v9 = *v8 + 4096;
    *(this + 27) = *v8;
    *(this + 28) = v9;
    if (v7 != 1)
    {
      v10 = ((v8 + 8 - *(this + 29)) >> 10) & 0x1FFFFFF;
      if (v10 >= 0x1E)
      {
        LOBYTE(v10) = 30;
      }

      llvm::deallocate_buffer(*(v8 + 8), (4096 << v10));
    }

    *(this + 60) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 216);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 120);
  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11)
  {
    llvm::yaml::Stream::~Stream(v11);
    MEMORY[0x259C63180]();
  }

  llvm::SourceMgr::~SourceMgr((this + 16));
}

{
  llvm::yaml::Input::~Input(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::yaml::Input::setCurrentDocument(llvm::yaml::Input *this)
{
  result = llvm::yaml::Stream::end(*(this + 11));
  v3 = *(this + 75);
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_2:
  v4 = *v3;
  if (*v3)
  {
    if (!result)
    {
      goto LABEL_13;
    }

    if (*result)
    {
      v5 = v3 == result;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  else
  {
LABEL_10:
    while (result)
    {
      if (!*result)
      {
        return 0;
      }

LABEL_12:
      v4 = *v3;
LABEL_13:
      v6 = *(v4 + 104);
      if (!v6)
      {
        v6 = llvm::yaml::Document::parseBlockNode(v4);
        *(v4 + 104) = v6;
        if (!v6)
        {
          v9 = std::generic_category();
          result = 0;
          *(this + 13) = 22;
          *(this + 14) = v9;
          return result;
        }
      }

      if (*(v6 + 32))
      {
        v7 = v6;
        llvm::yaml::Input::releaseHNodeBuffers(this);
        HNodes = llvm::yaml::Input::createHNodes(this, v7);
        *(this + 12) = HNodes;
        *(this + 85) = HNodes;
        return 1;
      }

      llvm::yaml::document_iterator::operator++(this + 75);
      result = llvm::yaml::Stream::end(*(this + 11));
      v3 = *(this + 75);
      if (v3)
      {
        goto LABEL_2;
      }
    }
  }

  return result;
}

void llvm::yaml::Input::releaseHNodeBuffers(llvm ***this)
{
  if (*(this + 72))
  {
    llvm::deallocate_buffer(*this[35], this[35][1]);
  }

  *(this + 72) = 0;
  v2 = *(this + 60);
  if (v2)
  {
    this[37] = 0;
    v3 = this[29];
    v4 = *v3 + 4096;
    this[27] = *v3;
    this[28] = v4;
    if (v2 != 1)
    {
      v5 = (((v3 + 1) - this[29]) >> 10) & 0x1FFFFFF;
      if (v5 >= 0x1E)
      {
        LOBYTE(v5) = 30;
      }

      llvm::deallocate_buffer(v3[1], (4096 << v5));
    }

    *(this + 60) = 1;
  }

  if (*(this + 96))
  {
    llvm::deallocate_buffer(*this[47], this[47][1]);
  }

  *(this + 96) = 0;
  v6 = *(this + 84);
  if (v6)
  {
    this[49] = 0;
    v7 = this[41];
    v8 = *v7 + 4096;
    this[39] = *v7;
    this[40] = v8;
    if (v6 != 1)
    {
      v9 = (((v7 + 1) - this[41]) >> 10) & 0x1FFFFFF;
      if (v9 >= 0x1E)
      {
        LOBYTE(v9) = 30;
      }

      llvm::deallocate_buffer(v7[1], (4096 << v9));
    }

    *(this + 84) = 1;
  }

  llvm::SpecificBumpPtrAllocator<llvm::yaml::Input::SequenceHNode>::DestroyAll((this + 63));

  llvm::SpecificBumpPtrAllocator<llvm::yaml::Input::MapHNode>::DestroyAll((this + 51));
}

void *llvm::yaml::Input::createHNodes(llvm::yaml::Input *this, llvm::yaml::Node *a2)
{
  v57[16] = *MEMORY[0x277D85DE8];
  __src = v57;
  *__len = xmmword_257371870;
  v4 = *(a2 + 8);
  if (v4 <= 1)
  {
    if (!v4)
    {
      v42 = (this + 216);
      v41 = *(this + 27);
      *(this + 37) += 8;
      if (v41 && (Slow = ((v41 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 1) <= *(this + 28)))
      {
        *v42 = Slow + 1;
        *Slow = a2;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v42, 8, 8, 3);
        *Slow = a2;
      }

      goto LABEL_66;
    }

    if (v4 != 1)
    {
      goto LABEL_57;
    }

    Value = llvm::yaml::ScalarNode::getValue(a2, &__src);
    v9 = __len[0];
    if (__len[0])
    {
      v10 = __src;
      v11 = (this + 120);
      v12 = *(this + 15);
      *(this + 25) += __len[0];
      if (v12 && &v12[v9] <= *(this + 16))
      {
        *v11 = &v12[v9];
      }

      else
      {
        v49 = v10;
        v50 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v11, v9, v9, 0);
        v10 = v49;
        v12 = v50;
      }

      memmove(v12, v10, v9);
      *(this + 49) += 24;
      v13 = *(this + 39);
      if (!v13)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v12 = Value;
      v9 = v8;
      *(this + 49) += 24;
      v13 = *(this + 39);
      if (!v13)
      {
        goto LABEL_73;
      }
    }

    Slow = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    v44 = Slow + 3;
    if ((Slow + 3) <= *(this + 40))
    {
      goto LABEL_64;
    }

LABEL_73:
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 312, 24, 24, 3);
    goto LABEL_65;
  }

  if (v4 == 2)
  {
    v9 = *(a2 + 10);
    if (v9)
    {
      v14 = *(a2 + 9);
      *(this + 25) += v9;
      v12 = *(this + 15);
      if (v12 && &v12[v9] <= *(this + 16))
      {
        *(this + 15) = &v12[v9];
      }

      else
      {
        v47 = v14;
        v48 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 120, v9, v9, 0);
        v14 = v47;
        v12 = v48;
      }

      memmove(v12, v14, v9);
      *(this + 49) += 24;
      v15 = *(this + 39);
      if (!v15)
      {
        goto LABEL_73;
      }

LABEL_60:
      Slow = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8);
      v44 = Slow + 3;
      if ((Slow + 3) > *(this + 40))
      {
        goto LABEL_73;
      }

LABEL_64:
      *(this + 39) = v44;
LABEL_65:
      *Slow = a2;
      Slow[1] = v12;
      Slow[2] = v9;
      goto LABEL_66;
    }

    v12 = 0;
    *(this + 49) += 24;
    v15 = *(this + 39);
    if (v15)
    {
      goto LABEL_60;
    }

    goto LABEL_73;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      *(this + 73) += 32;
      v5 = *(this + 63);
      if (v5 && (Slow = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 4) <= *(this + 64)))
      {
        *(this + 63) = Slow + 4;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 504, 32, 32, 3);
      }

      *Slow = a2;
      Slow[1] = 0;
      Slow[2] = 0;
      Slow[3] = 0;
      *(a2 + 76) = 0;
      llvm::yaml::SequenceNode::increment(a2);
      if (*(a2 + 10))
      {
        do
        {
          v53[0] = llvm::yaml::Input::createHNodes(this, *(a2 + 10));
          if (*(this + 26))
          {
            break;
          }

          std::vector<mlir::Operation *>::push_back[abi:nn200100]((Slow + 1), v53);
          llvm::yaml::SequenceNode::increment(a2);
          if (!*(a2 + 10))
          {
            break;
          }
        }

        while (a2);
      }

      goto LABEL_66;
    }

LABEL_57:
    v53[0] = "unknown node kind";
    v54 = 259;
    llvm::yaml::Stream::printError(*(this + 11), a2, v53, 0);
    v43 = std::generic_category();
    Slow = 0;
    goto LABEL_58;
  }

  *(this + 61) += 192;
  v16 = *(this + 51);
  if (v16 && (Slow = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 24) <= *(this + 52)))
  {
    *(this + 51) = Slow + 24;
  }

  else
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 408, 192, 192, 3);
  }

  *Slow = a2;
  Slow[1] = 0;
  Slow[2] = 0;
  Slow[3] = 0x2000000000;
  Slow[4] = Slow + 6;
  Slow[5] = 0x600000000;
  *(a2 + 76) = 0;
  llvm::yaml::MappingNode::increment(a2);
  if (!*(a2 + 10))
  {
    goto LABEL_66;
  }

  while (1)
  {
    v17 = *(a2 + 10);
    Key = llvm::yaml::KeyValueNode::getKey(v17);
    v19 = Key;
    if (!Key)
    {
      break;
    }

    if (*(Key + 8) == 1)
    {
      v20 = Key;
    }

    else
    {
      v20 = 0;
    }

    v21 = llvm::yaml::KeyValueNode::getValue(v17);
    if (!v20 || !v21)
    {
      goto LABEL_69;
    }

    __len[0] = 0;
    v22 = llvm::yaml::ScalarNode::getValue(v20, &__src);
    v25 = __len[0];
    if (__len[0])
    {
      v26 = __src;
      *(this + 25) += __len[0];
      v27 = *(this + 15);
      if (v27 && &v27[v25] <= *(this + 16))
      {
        *(this + 15) = &v27[v25];
        memmove(v27, v26, v25);
        if ((*(this + 690) & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v38 = v26;
        v39 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 120, v25, v25, 0);
        v40 = v38;
        v27 = v39;
        memmove(v39, v40, v25);
        if ((*(this + 690) & 1) == 0)
        {
LABEL_45:
          v28 = llvm::StringMapImpl::hash(v27, v25, v24);
          v29 = llvm::StringMapImpl::FindKey(Slow + 1, v27, v25, v28);
          if (v29 != -1 && v29 != *(Slow + 4))
          {
            v51[0] = "duplicated mapping key '";
            v51[2] = v27;
            v51[3] = v25;
            v52 = 1283;
            v53[0] = v51;
            v53[2] = "'";
            v54 = 770;
            llvm::yaml::Stream::printError(*(this + 11), v19, v53, 0);
            v30 = std::generic_category();
            *(this + 13) = 22;
            *(this + 14) = v30;
          }
        }
      }
    }

    else
    {
      v27 = v22;
      v25 = v23;
      if ((*(this + 690) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    HNodes = llvm::yaml::Input::createHNodes(this, v21);
    if (!*(this + 26))
    {
      v33 = HNodes;
      v35 = *(v19 + 16);
      v34 = *(v19 + 24);
      v36 = llvm::StringMapImpl::hash(v27, v25, v32);
      v37 = *llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>((Slow + 1), v27, v25, v36);
      v37[1] = v33;
      v37[2] = v35;
      v37[3] = v34;
      llvm::yaml::MappingNode::increment(a2);
      if (*(a2 + 10))
      {
        if (a2)
        {
          continue;
        }
      }
    }

    goto LABEL_66;
  }

  v20 = 0;
  v21 = llvm::yaml::KeyValueNode::getValue(v17);
LABEL_69:
  if (!v20)
  {
    v53[0] = "Map key must be a scalar";
    v54 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v19, v53, 0);
    v46 = std::generic_category();
    *(this + 13) = 22;
    *(this + 14) = v46;
  }

  if (!v21)
  {
    v53[0] = "Map value must not be empty";
    v54 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v19, v53, 0);
    v43 = std::generic_category();
LABEL_58:
    *(this + 13) = 22;
    *(this + 14) = v43;
  }

LABEL_66:
  if (__src != v57)
  {
    free(__src);
  }

  return Slow;
}

uint64_t llvm::yaml::Input::nextDocument(llvm::yaml::Input *this)
{
  v2 = llvm::yaml::document_iterator::operator++(this + 75);
  v3 = llvm::yaml::Stream::end(*(this + 11));
  if (v2 && *v2)
  {
    if (v3)
    {
      if (*v3)
      {
        v4 = v2 == v3;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
      return v5 ^ 1u;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return v3 && *v3 != 0;
  }
}

uint64_t llvm::yaml::Input::getCurrentNode(llvm::yaml::Input *this)
{
  v1 = *(this + 85);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

BOOL llvm::yaml::Input::mapTag(uint64_t a1, const void *a2, uint64_t a3, _BOOL8 a4)
{
  v4 = *(a1 + 680);
  if (!v4)
  {
    return 0;
  }

  llvm::yaml::Node::getVerbatimTag(*v4, __p);
  v8 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  if (a3 == v9)
  {
    if ((v13 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    a4 = memcmp(a2, v10, v9) == 0;
LABEL_11:
    if ((v8 & 0x80000000) == 0)
    {
      return a4;
    }

    goto LABEL_15;
  }

  a4 = 0;
  if ((v13 & 0x80000000) == 0)
  {
    return a4;
  }

LABEL_15:
  operator delete(__p[0]);
  return a4;
}

void llvm::yaml::Input::beginMapping(llvm::yaml::Input *this)
{
  if (!*(this + 26))
  {
    v1 = *(this + 85);
    if (v1)
    {
      if (*(*v1 + 32) == 4)
      {
        v2 = *(v1 + 40);
        if (v2)
        {
          v3 = *(v1 + 32) + 24 * v2 - 1;
          v4 = -24 * v2;
          v5 = v3;
          do
          {
            v6 = *v5;
            v5 -= 24;
            if (v6 < 0)
            {
              operator delete(*(v3 - 23));
            }

            v3 = v5;
            v4 += 24;
          }

          while (v4);
        }

        *(v1 + 40) = 0;
      }
    }
  }
}

void llvm::yaml::Input::keys(llvm::yaml::Input *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 85);
  v4 = *v3;
  v5 = *(*v3 + 32);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v5 != 4)
  {
    *&v20[0] = "not a mapping";
    v21 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v4, v20, 0);
    v15 = std::generic_category();
    *(this + 13) = 22;
    *(this + 14) = v15;
    return;
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (!v7)
  {
    v8 = v6;
    v13 = &v6[v7];
    if (v6 == v13)
    {
      return;
    }

    goto LABEL_16;
  }

  v8 = v6;
  if (*v6)
  {
    v9 = *v6 + 1 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    do
    {
      v11 = v8[1];
      ++v8;
      v10 = v11;
      if (v11)
      {
        v12 = v10 + 1 == 0;
      }

      else
      {
        v12 = 1;
      }
    }

    while (v12);
  }

  v13 = &v6[v7];
  if (v8 != v13)
  {
LABEL_16:
    v16 = *v8;
    do
    {
      v17 = *v16;
      *&v20[0] = v16 + 4;
      *(&v20[0] + 1) = v17;
      std::vector<llvm::StringRef>::push_back[abi:nn200100](a2, v20);
      do
      {
        v18 = v8[1];
        ++v8;
        v16 = v18;
        if (v18)
        {
          v19 = v16 + 1 == 0;
        }

        else
        {
          v19 = 1;
        }
      }

      while (v19);
    }

    while (v8 != v13);
  }
}

const std::error_category *llvm::yaml::Input::setError(uint64_t a1, uint64_t *a2, llvm::formatv_object_base **a3)
{
  llvm::yaml::Stream::printError(*(a1 + 88), *a2, a3, 0);
  result = std::generic_category();
  *(a1 + 104) = 22;
  *(a1 + 112) = result;
  return result;
}

uint64_t llvm::yaml::Input::preflightKey(llvm::yaml::Input *this, char *__s, int a3, BOOL a4, BOOL *a5, void **a6)
{
  result = 0;
  *a5 = 0;
  if (*(this + 26))
  {
    return result;
  }

  v8 = *(this + 85);
  if (!v8)
  {
    if (a3)
    {
      v19 = this;
LABEL_15:
      v21 = std::generic_category();
      result = 0;
      *(v19 + 13) = 22;
      *(v19 + 14) = v21;
      return result;
    }

LABEL_16:
    result = 0;
    *a5 = 1;
    return result;
  }

  v10 = *v8;
  v11 = *(*v8 + 32);
  if (v11 != 4)
  {
    if (v11)
    {
      v20 = 0;
    }

    else
    {
      v20 = a3 == 0;
    }

    if (!v20)
    {
      *&__dst = "not a mapping";
      v40 = 259;
      v19 = this;
      llvm::yaml::Stream::printError(*(this + 11), v10, &__dst, 0);
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = this;
  v16 = strlen(__s);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v18 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v39) = v16;
  if (v16)
  {
    memcpy(&__dst, __s, v16);
  }

  *(&__dst + v18) = 0;
  v22 = *(v8 + 40);
  v23 = *(v8 + 32);
  if (v22 >= *(v8 + 44))
  {
    if (v23 > &__dst || v23 + 24 * v22 <= &__dst)
    {
      llvm::SmallVectorTemplateBase<std::string,false>::grow();
    }

    llvm::SmallVectorTemplateBase<std::string,false>::grow();
  }

  v24 = v23 + 24 * *(v8 + 40);
  v25 = __dst;
  *(v24 + 16) = v39;
  *v24 = v25;
  v39 = 0;
  __dst = 0uLL;
  ++*(v8 + 40);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__dst);
  }

  if (__s)
  {
    v26 = strlen(__s);
  }

  else
  {
    v26 = 0;
  }

  v27 = llvm::StringMapImpl::hash(__s, v26, v17);
  v28 = *(*llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>((v8 + 8), __s, v26, v27) + 8);
  if (v28)
  {
    *a6 = *(v15 + 85);
    *(v15 + 85) = v28;
    return 1;
  }

  else if (a3)
  {
    v29 = *(v15 + 85);
    v30 = *__s;
    if (*__s)
    {
      v35[2] = __s;
      v31 = 3;
      v32 = 2;
    }

    else
    {
      v31 = 1;
      v32 = 3;
    }

    v35[0] = "missing required key '";
    v36 = 3;
    v37 = v31;
    v20 = v30 == 0;
    v33 = v35;
    if (v20)
    {
      v33 = "missing required key '";
    }

    *&__dst = v33;
    v39 = "'";
    LOBYTE(v40) = v32;
    HIBYTE(v40) = 3;
    llvm::yaml::Stream::printError(*(v15 + 11), *v29, &__dst, 0);
    v34 = std::generic_category();
    result = 0;
    *(v15 + 13) = 22;
    *(v15 + 14) = v34;
  }

  else
  {
    result = 0;
    *a5 = 1;
  }

  return result;
}

void llvm::yaml::Input::endMapping(llvm::yaml::Input *this)
{
  if (*(this + 26))
  {
    return;
  }

  v36 = v1;
  v37 = v2;
  v4 = *(this + 85);
  if (!v4 || *(*v4 + 32) != 4)
  {
    return;
  }

  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (!v6)
  {
    v7 = *(v4 + 8);
    v28 = &v5[v6];
    if (v5 == v28)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = *(v4 + 8);
  if (*v5)
  {
    v8 = *v5 == -8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    do
    {
      v10 = v7[1];
      ++v7;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == -8;
      }

      else
      {
        v11 = 1;
      }
    }

    while (v11);
  }

  v28 = &v5[v6];
  if (v7 != v28)
  {
LABEL_17:
    v12 = *v7;
    do
    {
      v13 = *(v4 + 32);
      v14 = *(v4 + 40);
      if (v14)
      {
        v15 = *v12;
        if (*v12)
        {
          v16 = 24 * v14;
          v17 = *(v4 + 32);
          while (1)
          {
            v18 = *(v17 + 23);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(v17 + 8);
            }

            if (v18 == v15)
            {
              v20 = v19 >= 0 ? v17 : *v17;
              if (!memcmp(v20, (v12 + 32), v15))
              {
                break;
              }
            }

            v17 += 24;
            v16 -= 24;
            if (!v16)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          v21 = 24 * v14;
          v17 = *(v4 + 32);
          while (1)
          {
            v22 = *(v17 + 23);
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(v17 + 8);
            }

            if (!v22)
            {
              break;
            }

            v17 += 24;
            v21 -= 24;
            if (!v21)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else
      {
        v17 = *(v4 + 32);
      }

      if (v17 == v13 + 24 * v14)
      {
LABEL_38:
        if (*(this + 689) != 1)
        {
          v26 = *v12;
          v29[0] = "unknown key '";
          v30 = v12 + 32;
          v31 = v26;
          v32 = 1283;
          v33[0] = v29;
          v34 = "'";
          v35 = 770;
          llvm::yaml::Stream::printError(*(this + 11), (v12 + 16), v33, 0);
          v27 = std::generic_category();
          *(this + 13) = 22;
          *(this + 14) = v27;
          return;
        }

        v23 = *v12;
        v29[0] = "unknown key '";
        v30 = v12 + 32;
        v31 = v23;
        v32 = 1283;
        v33[0] = v29;
        v34 = "'";
        v35 = 770;
        llvm::yaml::Stream::printError(*(this + 11), (v12 + 16), v33, 1);
      }

      do
      {
        v24 = v7[1];
        ++v7;
        v12 = v24;
        if (v24)
        {
          v25 = v12 == -8;
        }

        else
        {
          v25 = 1;
        }
      }

      while (v25);
    }

    while (v7 != v28);
  }
}

const std::error_category *llvm::yaml::Input::setError(uint64_t a1, const char **a2, llvm::formatv_object_base **a3)
{
  llvm::yaml::Stream::printError(*(a1 + 88), a2, a3, 0);
  result = std::generic_category();
  *(a1 + 104) = 22;
  *(a1 + 112) = result;
  return result;
}

unint64_t llvm::yaml::Input::beginSequence(llvm::yaml::Input *this)
{
  v3 = *(this + 85);
  v4 = *v3;
  v5 = *(*v3 + 32);
  if (!v5)
  {
    return v5;
  }

  if (v5 == 5)
  {
    return (v3[2] - v3[1]) >> 3;
  }

  if ((v5 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_10;
  }

  v7 = v3[1];
  v8 = v3[2];
  if (v8 == 1)
  {
    if (*v7 == 126)
    {
      return 0;
    }

LABEL_10:
    v13 = v1;
    v14 = v2;
    v11 = "not a sequence";
    v12 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v4, &v11, 0);
    v10 = std::generic_category();
    v5 = 0;
    *(this + 13) = 22;
    *(this + 14) = v10;
    return v5;
  }

  if (v8 != 4 || *v7 != 1819047278 && *v7 != 1819047246 && *v7 != 1280070990)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t llvm::yaml::Input::preflightElement(llvm::yaml::Input *this, unsigned int a2, void **a3)
{
  if (*(this + 26))
  {
    return 0;
  }

  v3 = *(this + 85);
  if (*(*v3 + 32) != 5)
  {
    return 0;
  }

  *a3 = v3;
  *(this + 85) = *(v3[1] + 8 * a2);
  return 1;
}

uint64_t llvm::yaml::Input::preflightFlowElement(llvm::yaml::Input *this, unsigned int a2, void **a3)
{
  if (*(this + 26))
  {
    return 0;
  }

  v3 = *(this + 85);
  if (*(*v3 + 32) != 5)
  {
    return 0;
  }

  *a3 = v3;
  *(this + 85) = *(v3[1] + 8 * a2);
  return 1;
}

uint64_t llvm::yaml::Input::matchEnumScalar(llvm::yaml::Input *this, const char *__s)
{
  if (*(this + 688))
  {
    return 0;
  }

  v3 = *(this + 85);
  if ((*(*v3 + 32) - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v5 = v3[1];
  v4 = v3[2];
  if (!__s)
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v6 = this;
  v7 = __s;
  v8 = strlen(__s);
  this = v6;
  if (v4 != v8)
  {
    return 0;
  }

LABEL_7:
  if (v4)
  {
    v9 = this;
    v10 = memcmp(v5, v7, v4);
    this = v9;
    if (v10)
    {
      return 0;
    }
  }

  *(this + 688) = 1;
  return 1;
}

uint64_t llvm::yaml::Input::matchEnumFallback(llvm::yaml::Input *this)
{
  v1 = *(this + 688);
  if ((v1 & 1) == 0)
  {
    *(this + 688) = 1;
  }

  return v1 ^ 1u;
}

const std::error_category *llvm::yaml::Input::endEnumScalar(const std::error_category *this)
{
  if ((this[86].__vftable & 1) == 0)
  {
    v1 = this[85].__vftable;
    v3 = "unknown enumerated scalar";
    v4 = 259;
    v2 = this;
    llvm::yaml::Stream::printError(this[11].__vftable, *v1, &v3, 0);
    this = std::generic_category();
    v2[13].__vftable = 22;
    v2[14].__vftable = this;
  }

  return this;
}

uint64_t llvm::yaml::Input::beginBitSetScalar(llvm::yaml::Input *this, BOOL *a2)
{
  *(this + 168) = 0;
  *(this + 154) = 0;
  v4 = *(this + 85);
  v5 = *v4;
  if (*(*v4 + 32) == 5)
  {
    v6 = (this + 608);
    v7 = (v4[2] - v4[1]) >> 3;
    *(this + 168) = v7;
    if ((v7 + 63) < 0x40)
    {
      v8 = 0;
      v9 = v7 & 0x3F;
      if ((v7 & 0x3F) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v11 = (v7 + 63) >> 6;
    if (*(this + 155) < v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*(this + 76), 8 * v11);
    v8 = v11;
    *(this + 154) = v11;
    v9 = v7 & 0x3F;
    if ((v7 & 0x3F) != 0)
    {
LABEL_8:
      *(*v6 + 8 * v8 - 8) &= ~(-1 << v9);
    }
  }

  else
  {
    v13 = "expected sequence of bit values";
    v14 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v5, &v13, 0);
    v10 = std::generic_category();
    *(this + 13) = 22;
    *(this + 14) = v10;
  }

LABEL_9:
  *a2 = 1;
  return 1;
}

uint64_t llvm::yaml::Input::bitSetMatch(llvm::yaml::Input *this, const char *__s)
{
  if (*(this + 26))
  {
    return 0;
  }

  v22 = v2;
  v23 = v3;
  v7 = *(this + 85);
  v8 = *v7;
  if (*(*v7 + 32) != 5)
  {
    v20[0] = "expected sequence of bit values";
    v21 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v8, v20, 0);
    v17 = std::generic_category();
    result = 0;
    *(this + 13) = 22;
    *(this + 14) = v17;
    return result;
  }

  v9 = v7[1];
  v10 = v7[2];
  if (v9 == v10)
  {
    return 0;
  }

  v11 = 0;
  if (__s)
  {
    while (1)
    {
      v14 = *v9;
      if ((*(**v9 + 32) - 3) < 0xFFFFFFFE)
      {
        v12 = *(this + 85);
        v20[0] = "unexpected scalar in sequence of bit values";
        v21 = 259;
        llvm::yaml::Stream::printError(*(this + 11), *v12, v20, 0);
        v13 = std::generic_category();
        *(this + 13) = 22;
        *(this + 14) = v13;
      }

      else
      {
        v16 = *(v14 + 8);
        v15 = *(v14 + 16);
        if (v15 == strlen(__s) && (!v15 || !memcmp(v16, __s, v15)))
        {
          goto LABEL_21;
        }
      }

      ++v11;
      v9 += 8;
      if (v9 == v10)
      {
        return 0;
      }
    }
  }

  while ((*(**v9 + 32) - 3) < 0xFFFFFFFE)
  {
    v18 = *(this + 85);
    v20[0] = "unexpected scalar in sequence of bit values";
    v21 = 259;
    llvm::yaml::Stream::printError(*(this + 11), *v18, v20, 0);
    v19 = std::generic_category();
    *(this + 13) = 22;
    *(this + 14) = v19;
LABEL_18:
    result = 0;
    ++v11;
    v9 += 8;
    if (v9 == v10)
    {
      return result;
    }
  }

  if (*(*v9 + 16))
  {
    goto LABEL_18;
  }

LABEL_21:
  result = 1;
  *(*(this + 76) + 8 * (v11 >> 6)) |= 1 << v11;
  return result;
}

const std::error_category *llvm::yaml::Input::endBitSetScalar(const std::error_category *this)
{
  if (!LODWORD(this[13].__vftable))
  {
    v16 = v1;
    v17 = v2;
    v3 = this[85].__vftable;
    if (*(v3->~error_category + 8) == 5)
    {
      v6 = &v3->~error_category_0;
      v4 = v3->~error_category_0;
      v5 = v6[1];
      v7 = v5 - v4;
      if (v5 != v4)
      {
        v8 = this[76].__vftable;
        if (v8->~error_category)
        {
          v10 = v7 >> 3;
          v11 = 1;
          while (1)
          {
            v9 = v11;
            if (v10 <= v11)
            {
              break;
            }

            ++v11;
            if (((*(&v8->~error_category + (v9 >> 6)) >> v9) & 1) == 0)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          v9 = 0;
LABEL_9:
          v12 = *(v4 + v9);
          v14 = "unknown bit value";
          v15 = 259;
          v13 = this;
          llvm::yaml::Stream::printError(this[11].__vftable, *v12, &v14, 0);
          this = std::generic_category();
          v13[13].__vftable = 22;
          v13[14].__vftable = this;
        }
      }
    }
  }

  return this;
}

__n128 llvm::yaml::Input::scalarString(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 680);
  v6 = *v5;
  if ((*(*v5 + 32) - 3) >= 0xFFFFFFFE)
  {
    result = *(v5 + 8);
    *a2 = result;
  }

  else
  {
    v12 = v2;
    v13 = v3;
    v10 = "unexpected scalar";
    v11 = 259;
    llvm::yaml::Stream::printError(*(a1 + 88), v6, &v10, 0);
    v8 = std::generic_category();
    *(a1 + 104) = 22;
    *(a1 + 112) = v8;
  }

  return result;
}

double llvm::yaml::Input::scalarTag(uint64_t a1, uint64_t a2)
{
  llvm::yaml::Node::getVerbatimTag(**(a1 + 680), &v4);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

const std::error_category *llvm::yaml::Input::setError(llvm ****this, llvm::yaml::Node *a2, llvm::formatv_object_base **a3)
{
  llvm::yaml::Stream::printError(this[11], a2, a3, 0);
  result = std::generic_category();
  this[13] = 22;
  this[14] = result;
  return result;
}

uint64_t llvm::yaml::Input::getNodeKind(llvm::yaml::Input *this)
{
  v1 = *(**(this + 85) + 32);
  v2 = v1 - 1;
  if (v1 == 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void llvm::SpecificBumpPtrAllocator<llvm::yaml::Input::SequenceHNode>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      for (i = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; i <= v8; i += 32)
      {
        v10 = *(i - 24);
        if (v10)
        {
          *(i - 16) = v10;
          operator delete(v10);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(a1 + 64);
    v13 = &v12[2 * v11];
    do
    {
      v14 = *v12 + v12[1];
      for (j = ((*v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; j <= v14; j += 32)
      {
        v16 = *(j - 24);
        if (v16)
        {
          *(j - 16) = v16;
          operator delete(v16);
        }
      }

      v12 += 2;
    }

    while (v12 != v13);
    if (*(a1 + 72))
    {
      llvm::deallocate_buffer(**(a1 + 64), *(*(a1 + 64) + 8));
    }
  }

  *(a1 + 72) = 0;
  v17 = *(a1 + 24);
  if (v17)
  {
    *(a1 + 80) = 0;
    v18 = *(a1 + 16);
    v19 = *v18 + 4096;
    *a1 = *v18;
    *(a1 + 8) = v19;
    if (v17 != 1)
    {
      v20 = ((v18 + 8 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
      if (v20 >= 0x1E)
      {
        LOBYTE(v20) = 30;
      }

      llvm::deallocate_buffer(*(v18 + 8), (4096 << v20));
    }

    *(a1 + 24) = 1;
  }
}

void llvm::SpecificBumpPtrAllocator<llvm::yaml::Input::MapHNode>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      while (v9 + 192 <= v8)
      {
        v10 = v9;
        v9 += 192;
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        if (v12)
        {
          v13 = v11 + 24 * v12 - 1;
          v14 = -24 * v12;
          v15 = v13;
          do
          {
            v16 = *v15;
            v15 -= 24;
            if (v16 < 0)
            {
              operator delete(*(v13 - 23));
            }

            v13 = v15;
            v14 += 24;
          }

          while (v14);
          v11 = *(v10 + 32);
        }

        if (v11 != (v10 + 48))
        {
          free(v11);
        }

        if (*(v10 + 20))
        {
          v17 = *(v10 + 16);
          if (v17)
          {
            v18 = 0;
            do
            {
              v19 = *(*(v10 + 8) + v18);
              if (v19 != -8 && v19 != 0)
              {
                llvm::deallocate_buffer(v19, (*v19 + 33));
              }

              v18 += 8;
            }

            while (8 * v17 != v18);
          }
        }

        free(*(v10 + 8));
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    v22 = *(a1 + 64);
    v23 = &v22[2 * v21];
    do
    {
      v24 = (*v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = *v22 + v22[1];
      while (v24 + 192 <= v25)
      {
        v26 = v24;
        v24 += 192;
        v27 = *(v26 + 32);
        v28 = *(v26 + 40);
        if (v28)
        {
          v29 = v27 + 24 * v28 - 1;
          v30 = -24 * v28;
          v31 = v29;
          do
          {
            v32 = *v31;
            v31 -= 24;
            if (v32 < 0)
            {
              operator delete(*(v29 - 23));
            }

            v29 = v31;
            v30 += 24;
          }

          while (v30);
          v27 = *(v26 + 32);
        }

        if (v27 != (v26 + 48))
        {
          free(v27);
        }

        if (*(v26 + 20))
        {
          v33 = *(v26 + 16);
          if (v33)
          {
            v34 = 0;
            do
            {
              v35 = *(*(v26 + 8) + v34);
              if (v35 != -8 && v35 != 0)
              {
                llvm::deallocate_buffer(v35, (*v35 + 33));
              }

              v34 += 8;
            }

            while (8 * v33 != v34);
          }
        }

        free(*(v26 + 8));
      }

      v22 += 2;
    }

    while (v22 != v23);
    if (*(a1 + 72))
    {
      llvm::deallocate_buffer(**(a1 + 64), *(*(a1 + 64) + 8));
    }
  }

  *(a1 + 72) = 0;
  v37 = *(a1 + 24);
  if (v37)
  {
    *(a1 + 80) = 0;
    v38 = *(a1 + 16);
    v39 = *v38 + 4096;
    *a1 = *v38;
    *(a1 + 8) = v39;
    if (v37 != 1)
    {
      v40 = ((v38 + 8 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
      if (v40 >= 0x1E)
      {
        LOBYTE(v40) = 30;
      }

      llvm::deallocate_buffer(*(v38 + 8), (4096 << v40));
    }

    *(a1 + 24) = 1;
  }
}

const std::error_category *llvm::yaml::Input::setError(llvm::yaml::Input *this, llvm::formatv_object_base **a2)
{
  llvm::yaml::Stream::printError(*(this + 11), **(this + 85), a2, 0);
  result = std::generic_category();
  *(this + 13) = 22;
  *(this + 14) = result;
  return result;
}

double llvm::yaml::Output::Output(llvm::yaml::Output *this, llvm::raw_ostream *a2, void *a3, int a4)
{
  *this = &unk_2868A3A48;
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 6) = a4;
  *(this + 4) = this + 48;
  *(this + 5) = 0x800000000;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

{
  *this = &unk_2868A3A48;
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 6) = a4;
  *(this + 4) = this + 48;
  *(this + 5) = 0x800000000;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

void llvm::yaml::Output::~Output(llvm::yaml::Output *this)
{
  *this = &unk_2868A3A48;
  v1 = *(this + 4);
  if (v1 != this + 48)
  {
    free(v1);
  }
}

{
  *this = &unk_2868A3A48;
  v1 = *(this + 4);
  if (v1 != this + 48)
  {
    free(v1);
  }
}

{
  *this = &unk_2868A3A48;
  v2 = *(this + 4);
  if (v2 != this + 48)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

__n128 llvm::yaml::Output::beginMapping(__n128 *this)
{
  v1 = this[2].n128_u32[2];
  if (v1 >= this[2].n128_u32[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(this[2].n128_u64[0] + 4 * v1) = 4;
  ++this[2].n128_u32[2];
  result = this[6];
  this[7] = result;
  this[6].n128_u64[0] = "\n";
  this[6].n128_u64[1] = 1;
  return result;
}

uint64_t llvm::yaml::Output::mapTag(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  if (!a4)
  {
    return a4;
  }

  v6 = *(a1 + 40);
  if (v6 < 2 || (v7 = *(a1 + 32) + 4 * v6, *(v7 - 8) > 3u))
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (*(v7 - 4) != 4)
  {
    v10 = 1;
LABEL_7:
    ++*(a1 + 80);
    v11 = *(a1 + 16);
    v12 = v11[4];
    if (v11[3] == v12)
    {
      v13 = a2;
      v14 = a3;
      llvm::raw_ostream::write(v11, " ", 1uLL);
      a2 = v13;
      a3 = v14;
    }

    else
    {
      *v12 = 32;
      ++v11[4];
    }

    goto LABEL_10;
  }

  v8 = a2;
  v9 = a3;
  llvm::yaml::Output::newLineCheck(a1, 0);
  a2 = v8;
  a3 = v9;
  v10 = 1;
LABEL_10:
  *(a1 + 80) += a3;
  v15 = *(a1 + 16);
  v16 = *(v15 + 32);
  if (a3 <= *(v15 + 24) - v16)
  {
    if (a3)
    {
      v17 = a3;
      memcpy(v16, a2, a3);
      *(v15 + 32) += v17;
    }
  }

  else
  {
    llvm::raw_ostream::write(*(a1 + 16), a2, a3);
  }

  if (v10)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    if (*(v18 + 4 * v19 - 4) == 4)
    {
      v20 = v19 - 1;
      *(a1 + 40) = v20;
      if (v20 >= *(a1 + 44))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v18 + 4 * v20) = 5;
      ++*(a1 + 40);
    }

    *(a1 + 96) = "\n";
    *(a1 + 104) = 1;
  }

  return a4;
}

void *llvm::yaml::Output::newLineCheck(llvm::yaml::Output *this, char a2)
{
  v4 = *(this + 12);
  v3 = *(this + 13);
  v5 = (this + 96);
  if (v3 == 1 && *v4 == 10)
  {
    result = *(this + 2);
    v7 = result[4];
    if (result[3] == v7)
    {
      v11 = a2;
      result = llvm::raw_ostream::write(result, "\n", 1uLL);
      a2 = v11;
      *(this + 20) = 0;
      *v5 = 0;
      v5[1] = 0;
      v8 = *(this + 10);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      *v7 = 10;
      ++result[4];
      *(this + 20) = 0;
      *v5 = 0;
      v5[1] = 0;
      v8 = *(this + 10);
      if (!v8)
      {
        return result;
      }
    }

    if ((a2 & 1) == 0)
    {
      v12 = v8 - 1;
      v13 = *(this + 4) + 4 * v8;
      v14 = *(v13 - 4);
      if (v14 < 2)
      {
        if (v8 != 1)
        {
LABEL_15:
          v15 = 1;
          goto LABEL_26;
        }

        goto LABEL_29;
      }

      if (v8 < 2)
      {
        return result;
      }

      v16 = v14 > 6;
      v17 = (1 << v14) & 0x5C;
      v18 = v16 || v17 == 0;
      if (!v18 && *(v13 - 8) <= 1u)
      {
        v12 = v8 - 2;
        if (v8 != 2)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }

      v15 = 0;
      do
      {
LABEL_26:
        while (1)
        {
          *(this + 20) += 2;
          result = *(this + 2);
          v19 = result[4];
          if (result[3] - v19 <= 1uLL)
          {
            break;
          }

          *v19 = 8224;
          result[4] += 2;
          if (!--v12)
          {
            goto LABEL_28;
          }
        }

        result = llvm::raw_ostream::write(result, "  ", 2uLL);
        --v12;
      }

      while (v12);
LABEL_28:
      if (v15)
      {
LABEL_29:
        *(this + 20) += 2;
        result = *(this + 2);
        v20 = result[4];
        if (result[3] - v20 > 1uLL)
        {
          *v20 = 8237;
          result[4] += 2;
        }

        else
        {

          return llvm::raw_ostream::write(result, "- ", 2uLL);
        }
      }
    }
  }

  else
  {
    *(this + 20) += v3;
    v9 = *(this + 2);
    result = v9[4];
    if (v3 <= v9[3] - result)
    {
      if (v3)
      {
        v10 = v3;
        result = memcpy(result, v4, v3);
        v9[4] += v10;
        *v5 = 0;
        v5[1] = 0;
        return result;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(v9, v4, v3);
    }

    *v5 = 0;
    v5[1] = 0;
  }

  return result;
}

void *llvm::yaml::Output::output(uint64_t a1, const void *a2, size_t a3)
{
  *(a1 + 80) += a3;
  v3 = *(a1 + 16);
  result = v3[4];
  if (a3 <= v3[3] - result)
  {
    if (a3)
    {
      result = memcpy(result, a2, a3);
      v3[4] += a3;
    }
  }

  else
  {

    return llvm::raw_ostream::write(v3, a2, a3);
  }

  return result;
}

void *llvm::yaml::Output::endMapping(void *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (*(this[4] + 4 * v2 - 4) == 4)
  {
    *(this + 6) = *(this + 7);
    llvm::yaml::Output::newLineCheck(this, 0);
    *(v1 + 20) += 2;
    this = v1[2];
    v3 = this[4];
    if (this[3] - v3 > 1uLL)
    {
      *v3 = 32123;
      this[4] += 2;
    }

    else
    {
      this = llvm::raw_ostream::write(this, "{}", 2uLL);
    }

    v1[12] = "\n";
    v1[13] = 1;
    LODWORD(v2) = *(v1 + 10);
  }

  *(v1 + 10) = v2 - 1;
  return this;
}

uint64_t llvm::yaml::Output::preflightKey(llvm::yaml::Output *this, const char *__s, char a3, int a4, BOOL *a5, void **a6)
{
  *a5 = 0;
  *a6 = 0;
  if (a4 && (a3 & 1) == 0 && *(this + 95) != 1)
  {
    return 0;
  }

  if ((*(*(this + 4) + 4 * *(this + 10) - 4) & 0xFFFFFFFE) == 6)
  {
    if (__s)
    {
      v8 = strlen(__s);
      llvm::yaml::Output::flowKey(this, __s, v8);
    }

    else
    {
      llvm::yaml::Output::flowKey(this, 0, 0);
    }

    return 1;
  }

  else
  {
    llvm::yaml::Output::newLineCheck(this, 0);
    if (__s)
    {
      v11 = strlen(__s);
    }

    else
    {
      v11 = 0;
    }

    llvm::yaml::Output::paddedKey(this, __s, v11);
    return 1;
  }
}

void *llvm::yaml::Output::flowKey(uint64_t a1, const char *a2, size_t a3)
{
  if (*(*(a1 + 32) + 4 * *(a1 + 40) - 4) != 7)
  {
LABEL_4:
    v8 = *(a1 + 24);
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  *(a1 + 80) += 2;
  v6 = *(a1 + 16);
  v7 = v6[4];
  if (v6[3] - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8236;
  v6[4] += 2;
  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_18:
    if (a3)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_5:
  v9 = *(a1 + 80);
  if (v9 <= v8)
  {
    goto LABEL_18;
  }

  *(a1 + 80) = v9 + 1;
  v10 = *(a1 + 16);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "\n", 1uLL);
    v12 = *(a1 + 88);
    if (v12 < 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v11 = 10;
    ++v10[4];
    v12 = *(a1 + 88);
    if (v12 < 1)
    {
      goto LABEL_16;
    }
  }

  for (i = 0; i < v12; ++i)
  {
    while (1)
    {
      ++*(a1 + 80);
      v14 = *(a1 + 16);
      v15 = v14[4];
      if (v14[3] == v15)
      {
        break;
      }

      *v15 = 32;
      ++v14[4];
      ++i;
      v12 = *(a1 + 88);
      if (i >= v12)
      {
        goto LABEL_16;
      }
    }

    llvm::raw_ostream::write(v14, " ", 1uLL);
    v12 = *(a1 + 88);
  }

LABEL_16:
  *(a1 + 80) = v12 + 2;
  v16 = *(a1 + 16);
  v17 = v16[4];
  if (v16[3] - v17 <= 1uLL)
  {
    llvm::raw_ostream::write(v16, "  ", 2uLL);
    goto LABEL_18;
  }

  *v17 = 8224;
  v16[4] += 2;
  if (a3)
  {
LABEL_19:
    v18 = *a2;
    v19 = v18;
    v20 = 1;
    if ((v18 - 9) >= 5 && v18 != 32)
    {
      v27 = a2[a3 - 1];
      if ((v27 - 9) >= 5)
      {
        v20 = v27 == 32;
      }
    }

    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = a3;
    v23 = a2;
    while (1)
    {
      v25 = *v23;
      if (v25 - 48 < 0xA || (v25 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_25;
      }

      v24 = 2;
      if (v25 <= 0x2E)
      {
        if (((1 << v25) & 0x700100000200) != 0)
        {
          goto LABEL_25;
        }

        if (((1 << v25) & 0x2400) != 0)
        {
          goto LABEL_43;
        }
      }

      if (v25 - 94 >= 2)
      {
        if (v25 == 127 || v25 < 32)
        {
          goto LABEL_43;
        }

        v21 = 1;
      }

LABEL_25:
      ++v23;
      v24 = v21;
      if (!--v22)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_42:
  v24 = 1;
LABEL_43:
  llvm::yaml::Output::output(a1, a2, a3, v24);
  *(a1 + 80) += 2;
  result = *(a1 + 16);
  v29 = result[4];
  if (result[3] - v29 > 1uLL)
  {
    *v29 = 8250;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, ": ", 2uLL);
  }

  return result;
}

size_t llvm::yaml::Output::paddedKey(uint64_t a1, const char *a2, size_t a3)
{
  if (a3)
  {
    v5 = *a2;
    v6 = v5;
    v7 = 1;
    if ((v5 - 9) >= 5 && v5 != 32)
    {
      v20 = a2[a3 - 1];
      if ((v20 - 9) >= 5)
      {
        v7 = v20 == 32;
      }
    }

    v8 = a2;
    a2 = v8;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    v11 = a3;
    v12 = v8;
    while (1)
    {
      v14 = *v12;
      if (v14 - 48 < 0xA || (v14 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_8;
      }

      v13 = 2;
      if (v14 <= 0x2E)
      {
        if (((1 << v14) & 0x700100000200) != 0)
        {
          goto LABEL_8;
        }

        if (((1 << v14) & 0x2400) != 0)
        {
          goto LABEL_22;
        }
      }

      if (v14 - 94 >= 2)
      {
        if (v14 == 127 || v14 < 32)
        {
          goto LABEL_22;
        }

        v10 = 1;
      }

LABEL_8:
      ++v12;
      v13 = v10;
      if (!--v11)
      {
        goto LABEL_22;
      }
    }
  }

  v13 = 1;
LABEL_22:
  llvm::yaml::Output::output(a1, a2, a3, v13);
  ++*(a1 + 80);
  v16 = *(a1 + 16);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
    if (a3 <= 0xF)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v17 = 58;
    ++v16[4];
    if (a3 <= 0xF)
    {
LABEL_24:
      v18 = &asc_257414758[a3];
      result = strlen(v18);
      *(a1 + 96) = v18;
      *(a1 + 104) = result;
      return result;
    }
  }

  result = 1;
  *(a1 + 96) = " ";
  *(a1 + 104) = 1;
  return result;
}

uint64_t llvm::yaml::Output::postflightKey(uint64_t this, void *a2)
{
  v2 = *(this + 32);
  v3 = *(this + 40);
  v4 = *(v2 + 4 * v3 - 4);
  if (v4 == 6)
  {
    v5 = v3 - 1;
    *(this + 40) = v5;
    v6 = *(this + 44);
    v7 = 7;
  }

  else
  {
    if (v4 != 4)
    {
      return this;
    }

    v5 = v3 - 1;
    *(this + 40) = v5;
    v6 = *(this + 44);
    v7 = 5;
  }

  if (v5 >= v6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v2 + 4 * v5) = v7;
  ++*(this + 40);
  return this;
}

void *llvm::yaml::Output::beginFlowMapping(llvm::yaml::Output *this)
{
  v2 = *(this + 10);
  if (v2 >= *(this + 11))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(this + 4) + 4 * v2) = 6;
  ++*(this + 10);
  llvm::yaml::Output::newLineCheck(this, 0);
  v3 = *(this + 20);
  *(this + 22) = v3;
  *(this + 20) = v3 + 2;
  result = *(this + 2);
  v5 = result[4];
  if (result[3] - v5 > 1uLL)
  {
    *v5 = 8315;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "{ ", 2uLL);
  }

  return result;
}

void *llvm::yaml::Output::endFlowMapping(llvm::yaml::Output *this)
{
  --*(this + 10);
  *(this + 20) += 2;
  result = *(this + 2);
  v3 = result[4];
  if (result[3] - v3 <= 1uLL)
  {
    result = llvm::raw_ostream::write(result, " }", 2uLL);
    v4 = *(this + 10);
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ((*(*(this + 4) + 4 * v4 - 4) & 0xFFFFFFFA | 4) == 6)
    {
      return result;
    }

    goto LABEL_6;
  }

  *v3 = 32032;
  result[4] += 2;
  v4 = *(this + 10);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  *(this + 12) = "\n";
  *(this + 13) = 1;
  return result;
}

void *llvm::yaml::Output::outputUpToEndOfLine(uint64_t a1, const void *a2, size_t a3)
{
  *(a1 + 80) += a3;
  v4 = *(a1 + 16);
  result = v4[4];
  if (a3 <= v4[3] - result)
  {
    if (a3)
    {
      result = memcpy(result, a2, a3);
      v4[4] += a3;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(v4, a2, a3);
  }

  v7 = *(a1 + 40);
  if (!v7 || (*(*(a1 + 32) + 4 * v7 - 4) & 0xFFFFFFFA | 4) != 6)
  {
    *(a1 + 96) = "\n";
    *(a1 + 104) = 1;
  }

  return result;
}

void *llvm::yaml::Output::beginDocuments(llvm::yaml::Output *this)
{
  *(this + 20) += 3;
  result = *(this + 2);
  v3 = result[4];
  if ((result[3] - v3) <= 2)
  {
    result = llvm::raw_ostream::write(result, "---", 3uLL);
    v4 = *(this + 10);
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ((*(*(this + 4) + 4 * v4 - 4) & 0xFFFFFFFA | 4) == 6)
    {
      return result;
    }

    goto LABEL_6;
  }

  *(v3 + 2) = 45;
  *v3 = 11565;
  result[4] += 3;
  v4 = *(this + 10);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  *(this + 12) = "\n";
  *(this + 13) = 1;
  return result;
}

uint64_t llvm::yaml::Output::preflightDocument(llvm::yaml::Output *this, int a2)
{
  if (a2)
  {
    *(this + 20) += 4;
    v2 = *(this + 2);
    v3 = *(v2 + 32);
    if (*(v2 + 24) - v3 > 3uLL)
    {
      *v3 = 757935370;
      *(v2 + 32) += 4;
      v5 = *(this + 10);
      if (!v5)
      {
LABEL_7:
        *(this + 12) = "\n";
        *(this + 13) = 1;
        return 1;
      }
    }

    else
    {
      v4 = this;
      llvm::raw_ostream::write(*(this + 2), "\n---", 4uLL);
      this = v4;
      v5 = v4[10];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    if ((*(*(this + 4) + 4 * v5 - 4) & 0xFFFFFFFA | 4) != 6)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

void *llvm::yaml::Output::endDocuments(llvm::yaml::Output *this)
{
  *(this + 20) += 5;
  result = *(this + 2);
  v2 = result[4];
  if ((result[3] - v2) <= 4)
  {
    return llvm::raw_ostream::write(result, "\n...\n", 5uLL);
  }

  *(v2 + 4) = 10;
  *v2 = 774778378;
  result[4] += 5;
  return result;
}

uint64_t llvm::yaml::Output::beginSequence(llvm::yaml::Output *this)
{
  v1 = *(this + 10);
  if (v1 >= *(this + 11))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(this + 4) + 4 * v1) = 0;
  ++*(this + 10);
  *(this + 7) = *(this + 6);
  *(this + 12) = "\n";
  *(this + 13) = 1;
  return 0;
}

void *llvm::yaml::Output::endSequence(void *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (*(this[4] + 4 * v2 - 4))
  {
    *(this + 10) = v2 - 1;
    return this;
  }

  *(this + 6) = *(this + 7);
  v3 = this[12];
  v4 = this[13];
  if (v4 == 1 && *v3 == 10)
  {
    v5 = this[2];
    v6 = v5[4];
    if (v5[3] == v6)
    {
      llvm::raw_ostream::write(v5, "\n", 1uLL);
    }

    else
    {
      *v6 = 10;
      ++v5[4];
    }

    v1[12] = 0;
    v1[13] = 0;
    *(v1 + 20) = 2;
    this = v1[2];
    v10 = this[4];
    if (this[3] - v10 > 1uLL)
    {
LABEL_15:
      *v10 = 23899;
      this[4] += 2;
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 20) += v4;
    v7 = this[2];
    v8 = *(v7 + 32);
    if (v4 <= *(v7 + 24) - v8)
    {
      if (v4)
      {
        v9 = v4;
        memcpy(v8, v3, v4);
        *(v7 + 32) += v9;
      }
    }

    else
    {
      llvm::raw_ostream::write(v1[2], v3, v4);
    }

    v1[12] = 0;
    v1[13] = 0;
    *(v1 + 20) += 2;
    this = v1[2];
    v10 = this[4];
    if (this[3] - v10 > 1uLL)
    {
      goto LABEL_15;
    }
  }

  this = llvm::raw_ostream::write(this, "[]", 2uLL);
LABEL_16:
  v1[12] = "\n";
  v1[13] = 1;
  --*(v1 + 10);
  return this;
}

uint64_t llvm::yaml::Output::postflightElement(uint64_t this, void *a2)
{
  v2 = *(this + 32);
  v3 = *(this + 40);
  v4 = *(v2 + 4 * v3 - 4);
  if (v4 == 2)
  {
    v5 = v3 - 1;
    *(this + 40) = v5;
    v6 = *(this + 44);
    v7 = 3;
  }

  else
  {
    if (v4)
    {
      return this;
    }

    v5 = v3 - 1;
    *(this + 40) = v5;
    v6 = *(this + 44);
    v7 = 1;
  }

  if (v5 >= v6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v2 + 4 * v5) = v7;
  ++*(this + 40);
  return this;
}

uint64_t llvm::yaml::Output::beginFlowSequence(llvm::yaml::Output *this)
{
  v2 = *(this + 10);
  if (v2 >= *(this + 11))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(this + 4) + 4 * v2) = 2;
  ++*(this + 10);
  llvm::yaml::Output::newLineCheck(this, 0);
  v3 = *(this + 20);
  *(this + 20) = v3 + 2;
  *(this + 21) = v3;
  v4 = *(this + 2);
  v5 = v4[4];
  if (v4[3] - v5 > 1uLL)
  {
    *v5 = 8283;
    v4[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v4, "[ ", 2uLL);
  }

  *(this + 93) = 0;
  return 0;
}

void *llvm::yaml::Output::endFlowSequence(llvm::yaml::Output *this)
{
  --*(this + 10);
  *(this + 20) += 2;
  result = *(this + 2);
  v3 = result[4];
  if (result[3] - v3 <= 1uLL)
  {
    result = llvm::raw_ostream::write(result, " ]", 2uLL);
    v4 = *(this + 10);
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ((*(*(this + 4) + 4 * v4 - 4) & 0xFFFFFFFA | 4) == 6)
    {
      return result;
    }

    goto LABEL_6;
  }

  *v3 = 23840;
  result[4] += 2;
  v4 = *(this + 10);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  *(this + 12) = "\n";
  *(this + 13) = 1;
  return result;
}

uint64_t llvm::yaml::Output::preflightFlowElement(llvm::yaml::Output *this, unsigned int a2, void **a3)
{
  if (*(this + 93) == 1)
  {
    *(this + 20) += 2;
    v5 = *(this + 2);
    v6 = v5[4];
    if (v5[3] - v6 > 1uLL)
    {
      *v6 = 8236;
      v5[4] += 2;
      v7 = *(this + 6);
      if (!v7)
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }

    llvm::raw_ostream::write(v5, ", ", 2uLL);
  }

  v7 = *(this + 6);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  v8 = *(this + 20);
  if (v8 <= v7)
  {
    goto LABEL_19;
  }

  *(this + 20) = v8 + 1;
  v9 = *(this + 2);
  v10 = v9[4];
  if (v9[3] == v10)
  {
    llvm::raw_ostream::write(v9, "\n", 1uLL);
    v11 = *(this + 21);
    if (v11 < 1)
    {
      goto LABEL_16;
    }

LABEL_12:
    for (i = 0; i < v11; ++i)
    {
      while (1)
      {
        ++*(this + 20);
        v13 = *(this + 2);
        v14 = v13[4];
        if (v13[3] == v14)
        {
          break;
        }

        *v14 = 32;
        ++v13[4];
        ++i;
        v11 = *(this + 21);
        if (i >= v11)
        {
          goto LABEL_16;
        }
      }

      llvm::raw_ostream::write(v13, " ", 1uLL);
      v11 = *(this + 21);
    }

    goto LABEL_16;
  }

  *v10 = 10;
  ++v9[4];
  v11 = *(this + 21);
  if (v11 >= 1)
  {
    goto LABEL_12;
  }

LABEL_16:
  *(this + 20) = v11 + 2;
  v15 = *(this + 2);
  v16 = v15[4];
  if (v15[3] - v16 > 1uLL)
  {
    *v16 = 8224;
    v15[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "  ", 2uLL);
  }

LABEL_19:
  *a3 = 0;
  return 1;
}

uint64_t llvm::yaml::Output::matchEnumScalar(llvm::yaml::Output *this, const char *a2, int a3)
{
  if (a3 && (*(this + 94) & 1) == 0)
  {
    llvm::yaml::Output::newLineCheck(this, 0);
    if (a2)
    {
      v5 = strlen(a2);
    }

    else
    {
      v5 = 0;
    }

    *(this + 20) += v5;
    v6 = *(this + 2);
    v7 = *(v6 + 32);
    if (v5 <= *(v6 + 24) - v7)
    {
      if (v5)
      {
        v8 = a2;
        v9 = v5;
        memcpy(v7, v8, v5);
        *(v6 + 32) += v9;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(this + 2), a2, v5);
    }

    v10 = *(this + 10);
    if (!v10 || (*(*(this + 4) + 4 * v10 - 4) & 0xFFFFFFFA | 4) != 6)
    {
      *(this + 12) = "\n";
      *(this + 13) = 1;
    }

    *(this + 94) = 1;
  }

  return 0;
}

uint64_t llvm::yaml::Output::matchEnumFallback(llvm::yaml::Output *this)
{
  v1 = *(this + 94);
  if ((v1 & 1) == 0)
  {
    *(this + 94) = 1;
  }

  return v1 ^ 1u;
}

uint64_t llvm::yaml::Output::beginBitSetScalar(llvm::yaml::Output *this, BOOL *a2)
{
  llvm::yaml::Output::newLineCheck(this, 0);
  *(this + 20) += 2;
  v4 = *(this + 2);
  v5 = v4[4];
  if (v4[3] - v5 > 1uLL)
  {
    *v5 = 8283;
    v4[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v4, "[ ", 2uLL);
  }

  *(this + 92) = 0;
  *a2 = 0;
  return 1;
}

uint64_t llvm::yaml::Output::bitSetMatch(llvm::yaml::Output *this, const char *__s, int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (*(this + 92) == 1)
  {
    *(this + 20) += 2;
    v5 = *(this + 2);
    v6 = v5[4];
    if (v5[3] - v6 > 1uLL)
    {
      *v6 = 8236;
      v5[4] += 2;
      if (__s)
      {
        goto LABEL_6;
      }

LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    llvm::raw_ostream::write(v5, ", ", 2uLL);
  }

  if (!__s)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = strlen(__s);
LABEL_9:
  *(this + 20) += v7;
  v8 = *(this + 2);
  v9 = *(v8 + 32);
  if (v7 <= *(v8 + 24) - v9)
  {
    if (v7)
    {
      v10 = __s;
      v11 = v7;
      memcpy(v9, v10, v7);
      *(v8 + 32) += v11;
    }
  }

  else
  {
    llvm::raw_ostream::write(*(this + 2), __s, v7);
  }

  *(this + 92) = 1;
  return 0;
}

void *llvm::yaml::Output::endBitSetScalar(llvm::yaml::Output *this)
{
  *(this + 20) += 2;
  result = *(this + 2);
  v3 = result[4];
  if (result[3] - v3 <= 1uLL)
  {
    result = llvm::raw_ostream::write(result, " ]", 2uLL);
    v4 = *(this + 10);
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ((*(*(this + 4) + 4 * v4 - 4) & 0xFFFFFFFA | 4) == 6)
    {
      return result;
    }

    goto LABEL_6;
  }

  *v3 = 23840;
  result[4] += 2;
  v4 = *(this + 10);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  *(this + 12) = "\n";
  *(this + 13) = 1;
  return result;
}

void *llvm::yaml::Output::scalarString(uint64_t a1, uint64_t a2, int a3)
{
  llvm::yaml::Output::newLineCheck(a1, 0);
  v6 = *(a2 + 8);
  if (v6)
  {
    result = llvm::yaml::Output::output(a1, *a2, v6, a3);
    v8 = *(a1 + 40);
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_8:
    if ((*(*(a1 + 32) + 4 * v8 - 4) & 0xFFFFFFFA | 4) == 6)
    {
      return result;
    }

    goto LABEL_9;
  }

  *(a1 + 80) += 2;
  result = *(a1 + 16);
  v9 = result[4];
  if (result[3] - v9 <= 1uLL)
  {
    result = llvm::raw_ostream::write(result, "''", 2uLL);
    v8 = *(a1 + 40);
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *v9 = 10023;
  result[4] += 2;
  v8 = *(a1 + 40);
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 96) = "\n";
  *(a1 + 104) = 1;
  return result;
}

void *llvm::yaml::Output::output(uint64_t a1, const char *__src, size_t __n, int a4)
{
  v4 = __n;
  v5 = __src;
  if (a4 == 1)
  {
    v9 = "'";
    goto LABEL_7;
  }

  if (a4)
  {
    v9 = "";
LABEL_7:
    ++*(a1 + 80);
    v10 = *(a1 + 16);
    v11 = v10[4];
    if (v10[3] == v11)
    {
      llvm::raw_ostream::write(v10, v9, 1uLL);
      if (a4 == 2)
      {
LABEL_9:
        llvm::yaml::escape(v5, v4, 0, &__p);
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
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        *(a1 + 80) += size;
        v14 = *(a1 + 16);
        v15 = *(v14 + 32);
        if (size <= *(v14 + 24) - v15)
        {
          if (size)
          {
            v25 = size;
            memcpy(v15, p_p, size);
            *(v14 + 32) += v25;
          }
        }

        else
        {
          llvm::raw_ostream::write(*(a1 + 16), p_p, size);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++*(a1 + 80);
        result = *(a1 + 16);
        v26 = result[4];
        if (result[3] == v26)
        {
          return llvm::raw_ostream::write(result, v9, 1uLL);
        }

        goto LABEL_45;
      }
    }

    else
    {
      *v11 = *v9;
      ++v10[4];
      if (a4 == 2)
      {
        goto LABEL_9;
      }
    }

    if (v4)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        while (1)
        {
          while (v5[v17] != 39)
          {
            if (++v17 == v4)
            {
              goto LABEL_40;
            }
          }

          v19 = (v17 - v18);
          *(a1 + 80) += v19;
          v20 = *(a1 + 16);
          v21 = *(v20 + 32);
          if (*(v20 + 24) - v21 >= v19)
          {
            if (v17 != v18)
            {
              v22 = (v17 - v18);
              memcpy(v21, &v5[v18], v19);
              *(v20 + 32) += v22;
            }
          }

          else
          {
            llvm::raw_ostream::write(*(a1 + 16), &v5[v18], v19);
          }

          *(a1 + 80) += 2;
          v23 = *(a1 + 16);
          v24 = v23[4];
          if (v23[3] - v24 > 1uLL)
          {
            break;
          }

          llvm::raw_ostream::write(v23, "''", 2uLL);
          v18 = ++v17;
          if (v17 == v4)
          {
            goto LABEL_40;
          }
        }

        *v24 = 10023;
        v23[4] += 2;
        v18 = ++v17;
      }

      while (v17 != v4);
    }

    else
    {
      v18 = 0;
    }

LABEL_40:
    v27 = &v5[v18];
    v28 = (v4 - v18);
    *(a1 + 80) += v28;
    v29 = *(a1 + 16);
    v30 = *(v29 + 32);
    if (*(v29 + 24) - v30 >= v28)
    {
      if (v4 != v18)
      {
        v31 = (v4 - v18);
        memcpy(v30, v27, v28);
        *(v29 + 32) += v31;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(a1 + 16), v27, v28);
    }

    ++*(a1 + 80);
    result = *(a1 + 16);
    v26 = result[4];
    if (result[3] == v26)
    {
      __src = v9;
      __n = 1;
      goto LABEL_48;
    }

LABEL_45:
    *v26 = *v9;
    ++result[4];
    return result;
  }

  *(a1 + 80) += __n;
  v7 = *(a1 + 16);
  result = *(v7 + 32);
  if (__n > *(v7 + 24) - result)
  {
    result = *(a1 + 16);
LABEL_48:

    return llvm::raw_ostream::write(result, __src, __n);
  }

  if (__n)
  {
    result = memcpy(result, __src, __n);
    *(v7 + 32) += v4;
  }

  return result;
}

llvm::MemoryBuffer *llvm::yaml::Output::blockScalarString(llvm::yaml::Output *this, llvm::StringRef *a2)
{
  if (*(this + 10))
  {
    llvm::yaml::Output::newLineCheck(this, 0);
  }

  *(this + 20) += 2;
  v4 = *(this + 2);
  v5 = v4[4];
  if (v4[3] - v5 > 1uLL)
  {
    *v5 = 31776;
    v4[4] += 2;
    v6 = *(this + 2);
    v7 = v6[4];
    if (v6[3] != v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    llvm::raw_ostream::write(v4, " |", 2uLL);
    v6 = *(this + 2);
    v7 = v6[4];
    if (v6[3] != v7)
    {
LABEL_5:
      *v7 = 10;
      ++v6[4];
      goto LABEL_8;
    }
  }

  llvm::raw_ostream::write(v6, "\n", 1uLL);
LABEL_8:
  *(this + 20) = 0;
  v8 = *(this + 10);
  llvm::MemoryBuffer::getMemBuffer(*a2, *(a2 + 1), "", 0, &v25);
  llvm::line_iterator::line_iterator(v21, v25, 0, 0);
  if (v22 == 1)
  {
    v9 = 0;
    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    while (1)
    {
      while (1)
      {
        *(this + 20) += 2;
        v11 = *(this + 2);
        v12 = v11[4];
        if (v11[3] - v12 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v11, "  ", 2uLL);
        if (++v9 == v10)
        {
          goto LABEL_19;
        }
      }

      *v12 = 8224;
      v11[4] += 2;
      if (++v9 == v10)
      {
LABEL_19:
        v13 = v23;
        v14 = v24;
        *(this + 20) += v24;
        v15 = *(this + 2);
        v16 = *(v15 + 32);
        if (v14 <= *(v15 + 24) - v16)
        {
          if (v14)
          {
            v17 = v14;
            memcpy(v16, v13, v14);
            *(v15 + 32) += v17;
          }
        }

        else
        {
          llvm::raw_ostream::write(*(this + 2), v13, v14);
        }

        v18 = *(this + 2);
        v19 = v18[4];
        if (v18[3] == v19)
        {
          llvm::raw_ostream::write(v18, "\n", 1uLL);
        }

        else
        {
          *v19 = 10;
          ++v18[4];
        }

        *(this + 20) = 0;
        llvm::line_iterator::advance(v21);
        v9 = 0;
        if (v22 != 1)
        {
          break;
        }
      }
    }
  }

  result = v25;
  v25 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *llvm::yaml::Output::outputNewLine(llvm::yaml::Output *this)
{
  result = *(this + 2);
  v3 = result[4];
  if (result[3] == v3)
  {
    result = llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v3 = 10;
    ++result[4];
  }

  *(this + 20) = 0;
  return result;
}

llvm::yaml::Output *llvm::yaml::Output::scalarTag(llvm::yaml::Output *result, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (v2)
  {
    v4 = result;
    llvm::yaml::Output::newLineCheck(result, 0);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    *(v4 + 20) += v7;
    v8 = *(v4 + 2);
    v9 = *(v8 + 32);
    if (v7 <= *(v8 + 24) - v9)
    {
      if (v7)
      {
        v10 = v7;
        memcpy(v9, v6, v7);
        *(v8 + 32) += v10;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(v4 + 2), v6, v7);
    }

    ++*(v4 + 20);
    result = *(v4 + 2);
    v11 = *(result + 4);
    if (*(result + 3) == v11)
    {

      return llvm::raw_ostream::write(result, " ", 1uLL);
    }

    else
    {
      *v11 = 32;
      ++*(result + 4);
    }
  }

  return result;
}

BOOL llvm::yaml::Output::canElideEmptySequence(llvm::yaml::Output *this)
{
  v1 = *(this + 10);
  if (v1 >= 2 && (v2 = *(this + 4) + 4 * v1, *(v2 - 4) == 4))
  {
    return *(v2 - 8) > 1u;
  }

  else
  {
    return 1;
  }
}

void *llvm::yaml::ScalarTraits<BOOL,void>::output(_BYTE *a1, int a2, llvm::raw_ostream *this)
{
  if (*a1)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  if (*a1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    result = memcpy(v6, v4, v5);
    *(this + 4) += v5;
  }

  else
  {

    return llvm::raw_ostream::write(this, v4, v5);
  }

  return result;
}

const char *llvm::yaml::ScalarTraits<BOOL,void>::input(unsigned __int8 *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = llvm::yaml::parseBool(a1, a2);
  if ((v5 & 0x100) == 0)
  {
    return "invalid BOOLean";
  }

  v7 = v5;
  result = 0;
  *a4 = v7;
  return result;
}

void *llvm::yaml::ScalarTraits<llvm::StringRef,void>::output(uint64_t a1, int a2, llvm::raw_ostream *this)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = *(this + 4);
  if (v4 <= *(this + 3) - result)
  {
    if (v4)
    {
      result = memcpy(result, v3, v4);
      *(this + 4) += v4;
    }
  }

  else
  {

    return llvm::raw_ostream::write(this, v3, v4);
  }

  return result;
}

uint64_t llvm::yaml::ScalarTraits<llvm::StringRef,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return 0;
}

void *llvm::yaml::ScalarTraits<std::string,void>::output(uint64_t a1, int a2, llvm::raw_ostream *this)
{
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

  return llvm::raw_ostream::write(this, v5, v6);
}

uint64_t llvm::yaml::ScalarTraits<std::string,void>::input(void *__src, size_t __len, uint64_t a3, uint64_t a4)
{
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v8) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
    if (*(a4 + 23) < 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst = 0uLL;
    v8 = 0;
    if (*(a4 + 23) < 0)
    {
LABEL_11:
      operator delete(*a4);
    }
  }

  *a4 = __dst;
  *(a4 + 16) = v8;
  return 0;
}

const char *llvm::yaml::ScalarTraits<unsigned char,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  if (v6 > 0xFF)
  {
    return "out of range number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

const char *llvm::yaml::ScalarTraits<unsigned short,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  if (v6 >> 16)
  {
    return "out of range number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

const char *llvm::yaml::ScalarTraits<unsigned int,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  if (HIDWORD(v6))
  {
    return "out of range number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

const char *llvm::yaml::ScalarTraits<unsigned long long,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

const char *llvm::yaml::ScalarTraits<signed char,void>::input(_BYTE *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  if (llvm::getAsSignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  if (v6 != v6)
  {
    return "out of range number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

const char *llvm::yaml::ScalarTraits<short,void>::input(_BYTE *a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v6 = 0;
  if (llvm::getAsSignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  if (v6 != v6)
  {
    return "out of range number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

const char *llvm::yaml::ScalarTraits<int,void>::input(_BYTE *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = 0;
  if (llvm::getAsSignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  if (v6 != v6)
  {
    return "out of range number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

const char *llvm::yaml::ScalarTraits<long long,void>::input(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  if (llvm::getAsSignedInteger(a1, a2, 0, &v6))
  {
    return "invalid number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

void *llvm::yaml::ScalarTraits<double,void>::output(void *a1, uint64_t a2, void *a3)
{
  v4[0] = &unk_28689DAF0;
  v4[1] = "%g";
  v4[2] = *a1;
  return llvm::raw_ostream::operator<<(a3, v4);
}

const char *llvm::yaml::ScalarTraits<double,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v10 = 261;
  v9[0] = a1;
  v9[1] = a2;
  v12 = v14;
  v13 = xmmword_25736B040;
  v5 = llvm::Twine::toNullTerminatedStringRef(v9, &v12);
  v11 = 0;
  v6 = strtod(v5, &v11);
  v7 = *v11;
  if (!*v11)
  {
    *a4 = v6;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  if (v7)
  {
    return "invalid floating point number";
  }

  else
  {
    return 0;
  }
}

void *llvm::yaml::ScalarTraits<float,void>::output(int *a1, uint64_t a2, void *a3)
{
  v4[0] = &unk_2868A19B0;
  v4[1] = "%g";
  v5 = *a1;
  return llvm::raw_ostream::operator<<(a3, v4);
}

const char *llvm::yaml::ScalarTraits<float,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v10 = 261;
  v9[0] = a1;
  v9[1] = a2;
  v12 = v14;
  v13 = xmmword_25736B040;
  v5 = llvm::Twine::toNullTerminatedStringRef(v9, &v12);
  v11 = 0;
  v6 = strtof(v5, &v11);
  v7 = *v11;
  if (!*v11)
  {
    *a4 = v6;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  if (v7)
  {
    return "invalid floating point number";
  }

  else
  {
    return 0;
  }
}

void *llvm::yaml::ScalarTraits<llvm::yaml::Hex8,void>::output(char *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v5[0] = &unk_2868A3BA0;
  v5[1] = "0x%hhX";
  v6 = v3;
  return llvm::raw_ostream::operator<<(a3, v5);
}

const char *llvm::yaml::ScalarTraits<llvm::yaml::Hex8,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid hex8 number";
  }

  if (v6 > 0xFF)
  {
    return "out of range hex8 number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

void *llvm::yaml::ScalarTraits<llvm::yaml::Hex16,void>::output(__int16 *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v5[0] = &unk_2868A3BD8;
  v5[1] = "0x%hX";
  v6 = v3;
  return llvm::raw_ostream::operator<<(a3, v5);
}

const char *llvm::yaml::ScalarTraits<llvm::yaml::Hex16,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid hex16 number";
  }

  if (v6 >> 16)
  {
    return "out of range hex16 number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

void *llvm::yaml::ScalarTraits<llvm::yaml::Hex32,void>::output(int *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v5[0] = &unk_2868A3C10;
  v5[1] = "0x%X";
  v6 = v3;
  return llvm::raw_ostream::operator<<(a3, v5);
}

const char *llvm::yaml::ScalarTraits<llvm::yaml::Hex32,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid hex32 number";
  }

  if (HIDWORD(v6))
  {
    return "out of range hex32 number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

void *llvm::yaml::ScalarTraits<llvm::yaml::Hex64,void>::output(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v5[0] = &unk_2868A01E8;
  v5[1] = "0x%llX";
  v5[2] = v3;
  return llvm::raw_ostream::operator<<(a3, v5);
}

const char *llvm::yaml::ScalarTraits<llvm::yaml::Hex64,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, 0, &v6))
  {
    return "invalid hex64 number";
  }

  result = 0;
  *a4 = v6;
  return result;
}

void llvm::yaml::ScalarTraits<llvm::VersionTuple,void>::output(llvm::VersionTuple *a1, uint64_t a2, void *a3)
{
  llvm::VersionTuple::getAsString(a1, __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  llvm::raw_ostream::write(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

const char *llvm::yaml::ScalarTraits<llvm::VersionTuple,void>::input(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (llvm::VersionTuple::tryParse(a4, a1, a2))
  {
    return "invalid version format";
  }

  else
  {
    return 0;
  }
}

void llvm::raw_os_ostream::~raw_os_ostream(llvm::raw_os_ostream *this)
{
  *this = &unk_2868A3C48;
  if (*(this + 4) != *(this + 2))
  {
    v2 = this;
    llvm::raw_ostream::flush_nonempty(this);
    this = v2;
  }

  llvm::raw_ostream::~raw_ostream(this);
}

{
  *this = &unk_2868A3C48;
  if (*(this + 4) != *(this + 2))
  {
    v2 = this;
    llvm::raw_ostream::flush_nonempty(this);
    this = v2;
  }

  llvm::raw_ostream::~raw_ostream(this);
}

{
  *this = &unk_2868A3C48;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::raw_os_ostream::current_pos(llvm::raw_os_ostream *this)
{
  v3[17] = *MEMORY[0x277D85DE8];
  v1 = *(this + 6) + *(**(this + 6) - 24);
  if ((*(v1 + 32) & 5) != 0)
  {
    return -1;
  }

  (*(**(v1 + 40) + 32))(v3);
  return v3[16];
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8077774924);
    }
  }
}

uint64_t llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  result = (*(*this + 88))(this);
  v4 = (this + 16);
  v3 = *(this + 2);
  v5 = *(this + 4);
  if (result)
  {
    if (v5 != v3)
    {
      *(this + 4) = v3;
      (*(*this + 72))(this);
    }

    operator new[]();
  }

  v6 = v5 - v3;
  if (v5 != v3)
  {
    *(this + 4) = v3;
    result = (*(*this + 72))(this);
  }

  if (*(this + 11) == 1)
  {
    result = *v4;
    if (*v4)
    {
      result = MEMORY[0x259C63150](result, 0x1000C8077774924, v6);
    }
  }

  *(this + 11) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *v4 = 0;
  return result;
}

uint64_t llvm::raw_ostream::SetBufferAndMode(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 44) == 1)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      v8 = a3;
      MEMORY[0x259C63150](v4, 0x1000C8077774924);
      a3 = v8;
      a2 = v6;
      result = v5;
      a4 = v7;
    }
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 44) = a4;
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, unint64_t a2)
{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

uint64_t *llvm::raw_ostream::operator<<(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a2 == 17)
  {
    (*(v3 + 32))(a1);
  }

  else
  {
    (*(v3 + 24))(a1, a2, 0, 0);
  }

  return a1;
}

void *llvm::raw_ostream::write_uuid(void *this, const unsigned __int8 *a2)
{
  for (i = 0; i != 16; ++i)
  {
    v5[0] = &unk_2868A3BA0;
    v5[1] = "%02X";
    v6 = a2[i];
    this = llvm::raw_ostream::operator<<(this, v5);
    if ((i & 0xB) == 3 || i == 9 || i == 5)
    {
      v4 = this[4];
      if (this[3] == v4)
      {
        this = llvm::raw_ostream::write(this, "-", 1uLL);
      }

      else
      {
        *v4 = 45;
        ++this[4];
      }
    }
  }

  return this;
}

void *llvm::raw_ostream::operator<<(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a1[3] - a1[4];
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      a1[4] += v7;
      return a1;
    }
  }

  v13 = 0;
  do
  {
    if (v13 != v7)
    {
      if (v13 <= v7)
      {
        if (v7 > 0x80)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v7 != v13)
        {
          bzero(&v14[v13], v7 - v13);
        }
      }

      v13 = v7;
    }

    v8 = (*(*a2 + 8))(a2, v14, v7);
    if (v8 < v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (2 * v7);
    }

    v11 = v7 >= v10;
    v7 = v10;
  }

  while (!v11);
  llvm::raw_ostream::write(a1, v14, v10);
  return a1;
}

{
  v21[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a2 + 22))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (*(a2 + 21))
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    llvm::write_hex(a1, *a2, v5, *(a2 + 16), 1);
  }

  else
  {
    v18 = &v19;
    v19 = v21;
    v20 = xmmword_25738E870;
    v12 = 2;
    v16 = 0;
    v17 = 0;
    v11 = &unk_2868A3F88;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    llvm::write_integer(&v11, *(a2 + 8), 0, 0);
    v7 = *(a2 + 16);
    if (v20 < v7)
    {
      v8 = v7 - v20;
      if ((v7 - v20) >= 0x50)
      {
        do
        {
          if (v8 >= 0x4F)
          {
            v9 = 79;
          }

          else
          {
            v9 = v8;
          }

          llvm::raw_ostream::write(a1, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v9);
          v8 -= v9;
        }

        while (v8);
      }

      else
      {
        llvm::raw_ostream::write(a1, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, (v7 - v20));
      }
    }

    llvm::raw_ostream::write(a1, v19, v20);
    v11 = &unk_2868A3CD8;
    if (v17 == 1 && v13)
    {
      MEMORY[0x259C63150](v13, 0x1000C8077774924);
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a1;
}

uint64_t llvm::raw_ostream::write_escaped(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v6 = a2;
    v7 = &a2[a3];
    do
    {
      v10 = *v6;
      if (*v6 > 0x21u)
      {
        if (v10 == 34)
        {
          while (1)
          {
            v43 = *(a1 + 32);
            if (v43 < *(a1 + 24))
            {
              goto LABEL_117;
            }

            v44 = *(a1 + 16);
            if (v44)
            {
              break;
            }

            if (!*(a1 + 44))
            {
              v48 = 92;
              (*(*a1 + 72))(a1, &v48, 1);
              v45 = *(a1 + 32);
              if (v45 >= *(a1 + 24))
              {
LABEL_118:
                while (1)
                {
                  v46 = *(a1 + 16);
                  if (v46)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = 34;
                    goto LABEL_142;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                  v45 = *(a1 + 32);
                  if (v45 < *(a1 + 24))
                  {
                    goto LABEL_123;
                  }
                }

                *(a1 + 32) = v46;
                (*(*a1 + 72))(a1);
                v45 = *(a1 + 32);
              }

              goto LABEL_123;
            }

            llvm::raw_ostream::SetBuffered(a1);
          }

          *(a1 + 32) = v44;
          (*(*a1 + 72))(a1);
          v43 = *(a1 + 32);
LABEL_117:
          *(a1 + 32) = v43 + 1;
          *v43 = 92;
          v45 = *(a1 + 32);
          if (v45 >= *(a1 + 24))
          {
            goto LABEL_118;
          }

LABEL_123:
          *(a1 + 32) = v45 + 1;
          *v45 = 34;
          goto LABEL_9;
        }

        if (v10 == 92)
        {
          v13 = *(a1 + 32);
          if (v13 >= *(a1 + 24))
          {
            while (1)
            {
              v14 = *(a1 + 16);
              if (v14)
              {
                break;
              }

              if (!*(a1 + 44))
              {
                v48 = 92;
                (*(*a1 + 72))(a1, &v48, 1);
                while (1)
                {
LABEL_41:
                  v19 = *(a1 + 32);
                  if (v19 < *(a1 + 24))
                  {
                    goto LABEL_46;
                  }

                  v20 = *(a1 + 16);
                  if (v20)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = 92;
                    goto LABEL_142;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                }

                *(a1 + 32) = v20;
                (*(*a1 + 72))(a1);
                v19 = *(a1 + 32);
LABEL_46:
                *(a1 + 32) = v19 + 1;
                *v19 = 92;
                goto LABEL_9;
              }

              llvm::raw_ostream::SetBuffered(a1);
              v13 = *(a1 + 32);
              if (v13 < *(a1 + 24))
              {
                goto LABEL_40;
              }
            }

            *(a1 + 32) = v14;
            (*(*a1 + 72))(a1);
            v13 = *(a1 + 32);
          }

LABEL_40:
          *(a1 + 32) = v13 + 1;
          *v13 = 92;
          goto LABEL_41;
        }

LABEL_25:
        v16 = *(a1 + 24);
        v15 = *(a1 + 32);
        if ((v10 - 32) <= 0x5E)
        {
          if (v15 >= v16)
          {
            while (1)
            {
              v17 = *(a1 + 16);
              if (v17)
              {
                break;
              }

              if (!*(a1 + 44))
              {
                v48 = v10;
                goto LABEL_142;
              }

              llvm::raw_ostream::SetBuffered(a1);
              v15 = *(a1 + 32);
              if (v15 < *(a1 + 24))
              {
                goto LABEL_53;
              }
            }

            *(a1 + 32) = v17;
            (*(*a1 + 72))(a1);
            v15 = *(a1 + 32);
          }

LABEL_53:
          *(a1 + 32) = v15 + 1;
          *v15 = v10;
          goto LABEL_9;
        }

        if (a4)
        {
          if (v15 >= v16)
          {
            while (1)
            {
              v18 = *(a1 + 16);
              if (v18)
              {
                break;
              }

              if (!*(a1 + 44))
              {
                v48 = 92;
                (*(*a1 + 72))(a1, &v48, 1);
                while (1)
                {
LABEL_56:
                  v22 = *(a1 + 32);
                  if (v22 < *(a1 + 24))
                  {
                    goto LABEL_67;
                  }

                  v23 = *(a1 + 16);
                  if (v23)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = 120;
                    (*(*a1 + 72))(a1, &v48, 1);
                    goto LABEL_68;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                }

                *(a1 + 32) = v23;
                (*(*a1 + 72))(a1);
                v22 = *(a1 + 32);
LABEL_67:
                *(a1 + 32) = v22 + 1;
                *v22 = 120;
LABEL_68:
                v27 = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 >> 4];
                v28 = *(a1 + 32);
                if (v28 >= *(a1 + 24))
                {
                  while (1)
                  {
                    v29 = *(a1 + 16);
                    if (v29)
                    {
                      break;
                    }

                    if (!*(a1 + 44))
                    {
                      v48 = v27;
                      (*(*a1 + 72))(a1, &v48, 1);
LABEL_81:
                      v33 = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 & 0xF];
                      v34 = *(a1 + 32);
                      if (v34 >= *(a1 + 24))
                      {
                        while (1)
                        {
                          v35 = *(a1 + 16);
                          if (v35)
                          {
                            break;
                          }

                          if (!*(a1 + 44))
                          {
                            v48 = v33;
                            goto LABEL_142;
                          }

                          llvm::raw_ostream::SetBuffered(a1);
                          v34 = *(a1 + 32);
                          if (v34 < *(a1 + 24))
                          {
                            goto LABEL_93;
                          }
                        }

                        *(a1 + 32) = v35;
                        (*(*a1 + 72))(a1);
                        v34 = *(a1 + 32);
                      }

LABEL_93:
                      *(a1 + 32) = v34 + 1;
                      *v34 = v33;
                      goto LABEL_9;
                    }

                    llvm::raw_ostream::SetBuffered(a1);
                    v28 = *(a1 + 32);
                    if (v28 < *(a1 + 24))
                    {
                      goto LABEL_80;
                    }
                  }

                  *(a1 + 32) = v29;
                  (*(*a1 + 72))(a1);
                  v28 = *(a1 + 32);
                }

LABEL_80:
                *(a1 + 32) = v28 + 1;
                *v28 = v27;
                goto LABEL_81;
              }

              llvm::raw_ostream::SetBuffered(a1);
              v15 = *(a1 + 32);
              if (v15 < *(a1 + 24))
              {
                goto LABEL_55;
              }
            }

            *(a1 + 32) = v18;
            (*(*a1 + 72))(a1);
            v15 = *(a1 + 32);
          }

LABEL_55:
          *(a1 + 32) = v15 + 1;
          *v15 = 92;
          goto LABEL_56;
        }

        if (v15 >= v16)
        {
          while (1)
          {
            v21 = *(a1 + 16);
            if (v21)
            {
              break;
            }

            if (!*(a1 + 44))
            {
              v48 = 92;
              (*(*a1 + 72))(a1, &v48, 1);
              v24 = (v10 >> 6) | 0x30;
              v25 = *(a1 + 32);
              if (v25 >= *(a1 + 24))
              {
LABEL_62:
                while (1)
                {
                  v26 = *(a1 + 16);
                  if (v26)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = v24;
                    (*(*a1 + 72))(a1, &v48, 1);
                    v30 = (v10 >> 3) & 7 | 0x30;
                    v31 = *(a1 + 32);
                    if (v31 >= *(a1 + 24))
                    {
LABEL_75:
                      while (1)
                      {
                        v32 = *(a1 + 16);
                        if (v32)
                        {
                          break;
                        }

                        if (!*(a1 + 44))
                        {
                          v48 = v30;
                          (*(*a1 + 72))(a1, &v48, 1);
                          v36 = v10 & 7 | 0x30;
                          v37 = *(a1 + 32);
                          if (v37 >= *(a1 + 24))
                          {
LABEL_88:
                            while (1)
                            {
                              v38 = *(a1 + 16);
                              if (v38)
                              {
                                break;
                              }

                              if (!*(a1 + 44))
                              {
                                v48 = v36;
                                goto LABEL_142;
                              }

                              llvm::raw_ostream::SetBuffered(a1);
                              v37 = *(a1 + 32);
                              if (v37 < *(a1 + 24))
                              {
                                goto LABEL_95;
                              }
                            }

                            *(a1 + 32) = v38;
                            (*(*a1 + 72))(a1);
                            v37 = *(a1 + 32);
                          }

LABEL_95:
                          *(a1 + 32) = v37 + 1;
                          *v37 = v36;
                          goto LABEL_9;
                        }

                        llvm::raw_ostream::SetBuffered(a1);
                        v31 = *(a1 + 32);
                        if (v31 < *(a1 + 24))
                        {
                          goto LABEL_87;
                        }
                      }

                      *(a1 + 32) = v32;
                      (*(*a1 + 72))(a1);
                      v31 = *(a1 + 32);
                    }

LABEL_87:
                    *(a1 + 32) = v31 + 1;
                    *v31 = v30;
                    v36 = v10 & 7 | 0x30;
                    v37 = *(a1 + 32);
                    if (v37 >= *(a1 + 24))
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_95;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                  v25 = *(a1 + 32);
                  if (v25 < *(a1 + 24))
                  {
                    goto LABEL_74;
                  }
                }

                *(a1 + 32) = v26;
                (*(*a1 + 72))(a1);
                v25 = *(a1 + 32);
              }

LABEL_74:
              *(a1 + 32) = v25 + 1;
              *v25 = v24;
              v30 = (v10 >> 3) & 7 | 0x30;
              v31 = *(a1 + 32);
              if (v31 >= *(a1 + 24))
              {
                goto LABEL_75;
              }

              goto LABEL_87;
            }

            llvm::raw_ostream::SetBuffered(a1);
            v15 = *(a1 + 32);
            if (v15 < *(a1 + 24))
            {
              goto LABEL_61;
            }
          }

          *(a1 + 32) = v21;
          (*(*a1 + 72))(a1);
          v15 = *(a1 + 32);
        }

LABEL_61:
        *(a1 + 32) = v15 + 1;
        *v15 = 92;
        v24 = (v10 >> 6) | 0x30;
        v25 = *(a1 + 32);
        if (v25 >= *(a1 + 24))
        {
          goto LABEL_62;
        }

        goto LABEL_74;
      }

      if (v10 == 9)
      {
        while (1)
        {
          v39 = *(a1 + 32);
          if (v39 < *(a1 + 24))
          {
            goto LABEL_103;
          }

          v40 = *(a1 + 16);
          if (v40)
          {
            break;
          }

          if (!*(a1 + 44))
          {
            v48 = 92;
            (*(*a1 + 72))(a1, &v48, 1);
            v41 = *(a1 + 32);
            if (v41 >= *(a1 + 24))
            {
LABEL_104:
              while (1)
              {
                v42 = *(a1 + 16);
                if (v42)
                {
                  break;
                }

                if (!*(a1 + 44))
                {
                  v48 = 116;
                  goto LABEL_142;
                }

                llvm::raw_ostream::SetBuffered(a1);
                v41 = *(a1 + 32);
                if (v41 < *(a1 + 24))
                {
                  goto LABEL_109;
                }
              }

              *(a1 + 32) = v42;
              (*(*a1 + 72))(a1);
              v41 = *(a1 + 32);
            }

            goto LABEL_109;
          }

          llvm::raw_ostream::SetBuffered(a1);
        }

        *(a1 + 32) = v40;
        (*(*a1 + 72))(a1);
        v39 = *(a1 + 32);
LABEL_103:
        *(a1 + 32) = v39 + 1;
        *v39 = 92;
        v41 = *(a1 + 32);
        if (v41 >= *(a1 + 24))
        {
          goto LABEL_104;
        }

LABEL_109:
        *(a1 + 32) = v41 + 1;
        *v41 = 116;
        goto LABEL_9;
      }

      if (v10 != 10)
      {
        goto LABEL_25;
      }

      v11 = *(a1 + 32);
      if (v11 < *(a1 + 24))
      {
        goto LABEL_38;
      }

      while (1)
      {
        v12 = *(a1 + 16);
        if (v12)
        {
          *(a1 + 32) = v12;
          (*(*a1 + 72))(a1);
          v11 = *(a1 + 32);
LABEL_38:
          *(a1 + 32) = v11 + 1;
          *v11 = 92;
          goto LABEL_3;
        }

        if (!*(a1 + 44))
        {
          break;
        }

        llvm::raw_ostream::SetBuffered(a1);
        v11 = *(a1 + 32);
        if (v11 < *(a1 + 24))
        {
          goto LABEL_38;
        }
      }

      v48 = 92;
      (*(*a1 + 72))(a1, &v48, 1);
      while (1)
      {
LABEL_3:
        v8 = *(a1 + 32);
        if (v8 < *(a1 + 24))
        {
          goto LABEL_8;
        }

        v9 = *(a1 + 16);
        if (v9)
        {
          *(a1 + 32) = v9;
          (*(*a1 + 72))(a1);
          v8 = *(a1 + 32);
LABEL_8:
          *(a1 + 32) = v8 + 1;
          *v8 = 110;
          goto LABEL_9;
        }

        if (!*(a1 + 44))
        {
          break;
        }

        llvm::raw_ostream::SetBuffered(a1);
      }

      v48 = 110;
LABEL_142:
      (*(*a1 + 72))(a1, &v48, 1);
LABEL_9:
      ++v6;
    }

    while (v6 != v7);
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v2 = *(this + 4);
  if (v2 < *(this + 3))
  {
LABEL_2:
    *(this + 4) = v2 + 1;
    *v2 = a2;
    return this;
  }

  v3 = a2;
  v4 = *(this + 2);
  if (v4)
  {
LABEL_4:
    *(this + 4) = v4;
    v5 = this;
    (*(*this + 72))();
    this = v5;
    v2 = *(v5 + 4);
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = this;
    if (!*(this + 11))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v2 = *(v6 + 4);
    if (v2 < *(v6 + 3))
    {
      this = v6;
      goto LABEL_5;
    }

    this = v6;
    v4 = *(v6 + 2);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = v3;
  (*(*this + 72))(this, &v7, 1);
  return v6;
}

void *llvm::raw_ostream::write(void *this, const char *a2, size_t a3)
{
  v3 = this[4];
  v4 = this[3] - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = this[2];
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = this;
        v9 = a2;
        (*(*this + 72))();
        v3 = v8[4];
        this = v8;
        v10 = v8[3] - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          llvm::raw_ostream::copy_to_buffer(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = this;
        v9 = a2;
        llvm::raw_ostream::copy_to_buffer(this, a2, v4);
        v12[4] = v12[2];
        (*(*v12 + 72))(v12);
        this = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v15 = a2;
      v16 = a3;
      v5 = this;
      if (!*(this + 11))
      {
        (*(*this + 72))(this, a2, a3);
        return v5;
      }

      llvm::raw_ostream::SetBuffered(this);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v16)
      {
        break;
      }

      this = v5;
      v6 = v5[2];
      a2 = v15;
      a3 = v16;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    this = v5;
    a2 = v15;
    a3 = v16;
    if (v16 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = this[4];
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = this[4];
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = this[4];
          goto LABEL_7;
      }

LABEL_25:
      v13 = this;
      v14 = a3;
      memcpy(v3, a2, a3);
      a3 = v14;
      this = v13;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  this[4] += a3;
  return this;
}

uint64_t llvm::raw_ostream::copy_to_buffer(uint64_t this, const char *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(this + 32) += a3;
      return this;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(this + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(this + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(this + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(this + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = this;
  memcpy(*(this + 32), a2, a3);
  this = v3;
  *(v3 + 32) += a3;
  return this;
}

void llvm::formatv_object_base::format(llvm::formatv_object_base *this, llvm::raw_ostream *a2)
{
  v17[14] = *MEMORY[0x277D85DE8];
  llvm::formatv_object_base::parseFormatString(*this, *(this + 1), &v15);
  v4 = v15;
  if (v16)
  {
    v5 = 56 * v16;
    v6 = (v15 + 24);
    do
    {
      if (*(v6 - 6) == 1 || (v7 = *v6, *(this + 3) <= v7))
      {
        v9 = *(v6 - 2);
        v10 = *(v6 - 1);
        v11 = *(a2 + 4);
        if (v10 > *(a2 + 3) - v11)
        {
          llvm::raw_ostream::write(a2, v9, v10);
        }

        else if (v10)
        {
          v12 = *(v6 - 1);
          memcpy(v11, v9, v10);
          *(a2 + 4) += v12;
        }
      }

      else
      {
        v8 = *(v6 + 12);
        v13[0] = *(*(this + 2) + 8 * v7);
        v13[1] = vrev64_s32(*(v6 + 1));
        v14 = v8;
        llvm::FmtAlign::format(v13, a2);
      }

      v6 += 14;
      v5 -= 56;
    }

    while (v5);
    v4 = v15;
  }

  if (v4 != v17)
  {
    free(v4);
  }
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a2 + 20);
  if (v5 == 3)
  {
    v6 = v4 - (v4 >> 1);
    v4 = v4 >> 1;
    if (v4 < 0x50)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16) - *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v4) = 0;
      goto LABEL_10;
    }

    v6 = 0;
    if (v4 < 0x50)
    {
LABEL_10:
      llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v4);
      goto LABEL_11;
    }
  }

  do
  {
    if (v4 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v4;
    }

    llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v13);
    LODWORD(v4) = v4 - v13;
  }

  while (v4);
LABEL_11:
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(this + 4);
  if (v8 <= *(this + 3) - v9)
  {
    if (v8)
    {
      v10 = *(a2 + 8);
      memcpy(v9, v7, v8);
      *(this + 4) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v7, v8);
  }

  if (v6 >= 0x50)
  {
    do
    {
      if (v6 >= 0x4F)
      {
        v11 = 79;
      }

      else
      {
        v11 = v6;
      }

      llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v11);
      v6 -= v11;
    }

    while (v6);
  }

  else
  {
    llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v6);
  }

  return this;
}

void *llvm::raw_ostream::indent(void *this, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x50)
  {
    return llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, a2);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

void llvm::raw_svector_ostream::~raw_svector_ostream(llvm::raw_svector_ostream *this)
{
  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8077774924);
    }
  }
}

{
  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, unsigned __int8 **a2)
{
  v41 = a2[1];
  if (v41)
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *(a2 + 9);
    if (*(a2 + 24) == 1)
    {
      v7 = &a2[2][v41 / v6 * v6];
      v8 = 64 - __clz((v7 - 1));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      LODWORD(v10) = (v9 - (v9 != 0) + 4 * (v9 != 0)) >> 2;
      if (v10 <= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v10;
      }

      v39 = v10;
    }

    else
    {
      v39 = 0;
    }

    v11 = 0;
    v12 = *(a2 + 40);
    v13 = (v6 - (v6 != 0)) / v12;
    if (v6)
    {
      ++v13;
    }

    v38 = v13 * v12 / v12 + 2 * v6 + 2;
    v44 = *(a2 + 41);
    while (1)
    {
      v16 = *(a2 + 8);
      if (v16 >= 0x50)
      {
        do
        {
          if (v16 >= 0x4F)
          {
            v17 = 79;
          }

          else
          {
            v17 = v16;
          }

          llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v17);
          v16 -= v17;
        }

        while (v16);
      }

      else
      {
        llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, *(a2 + 8));
      }

      v42 = v11;
      if (*(a2 + 24) != 1)
      {
        goto LABEL_30;
      }

      v40 = v40 & 0xFFFFFFFFFFFFFF00 | 1;
      llvm::write_hex(this, &a2[2][v11], v44 ^ 1, v39, 1);
      v18 = *(this + 4);
      if (*(this + 3) - v18 <= 1uLL)
      {
        break;
      }

      *v18 = 8250;
      *(this + 4) += 2;
      v19 = *(a2 + 9);
      v43 = v4;
      if (v4 >= v19)
      {
        v4 = *(a2 + 9);
      }

      if (!v19)
      {
LABEL_48:
        v20 = -1;
        if ((*(a2 + 42) & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_49;
      }

LABEL_33:
      llvm::write_hex(this, *v5, v44 ^ 1, 2uLL, 1);
      if (v4 >= 2)
      {
        v21 = 2;
        for (i = 1; i != v4; ++i)
        {
          if (i % *(a2 + 40))
          {
            v23 = v21;
          }

          else
          {
            v23 = v21 + 1;
            v24 = *(this + 4);
            if (*(this + 3) == v24)
            {
              llvm::raw_ostream::write(this, " ", 1uLL);
            }

            else
            {
              *v24 = 32;
              ++*(this + 4);
            }
          }

          llvm::write_hex(this, v5[i], v44 ^ 1, 2uLL, 1);
          v21 = v23 + 2;
        }

        v20 = -3 - v23;
        if ((*(a2 + 42) & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v20 = -3;
        if ((*(a2 + 42) & 1) == 0)
        {
          goto LABEL_64;
        }
      }

LABEL_49:
      v25 = v38 + v20;
      if ((v38 + v20) >= 0x50)
      {
        do
        {
          if (v25 >= 0x4F)
          {
            v26 = 79;
          }

          else
          {
            v26 = v25;
          }

          llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v26);
          v25 -= v26;
        }

        while (v25);
      }

      else
      {
        llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, (v38 + v20));
      }

      v27 = *(this + 4);
      if (*(this + 3) == v27)
      {
        llvm::raw_ostream::write(this, "|", 1uLL);
        v28 = &v5[v4];
        v29 = v5;
        if (v19)
        {
          do
          {
LABEL_75:
            v35 = *v29;
            v34 = *(this + 3);
            v33 = *(this + 4);
            if ((v35 - 32) > 0x5E)
            {
              while (1)
              {
                if (v33 < v34)
                {
                  goto LABEL_73;
                }

                v32 = *(this + 2);
                if (v32)
                {
                  *(this + 4) = v32;
                  (*(*this + 72))(this);
                  v33 = *(this + 4);
LABEL_73:
                  *(this + 4) = v33 + 1;
                  *v33 = 46;
                  goto LABEL_74;
                }

                if (!*(this + 11))
                {
                  break;
                }

                llvm::raw_ostream::SetBuffered(this);
                v34 = *(this + 3);
                v33 = *(this + 4);
              }

              v47 = 46;
              (*(*this + 72))(this, &v47, 1);
            }

            else if (v33 < v34)
            {
LABEL_82:
              *(this + 4) = v33 + 1;
              *v33 = v35;
            }

            else
            {
              while (1)
              {
                v36 = *(this + 2);
                if (v36)
                {
                  *(this + 4) = v36;
                  (*(*this + 72))(this);
                  v33 = *(this + 4);
                  goto LABEL_82;
                }

                if (!*(this + 11))
                {
                  break;
                }

                llvm::raw_ostream::SetBuffered(this);
                v33 = *(this + 4);
                if (v33 < *(this + 3))
                {
                  goto LABEL_82;
                }
              }

              v46 = v35;
              (*(*this + 72))(this, &v46, 1);
            }

LABEL_74:
            ++v29;
          }

          while (v29 != v28);
        }
      }

      else
      {
        *v27 = 124;
        ++*(this + 4);
        v28 = &v5[v4];
        v29 = v5;
        if (v19)
        {
          goto LABEL_75;
        }
      }

      v30 = *(this + 4);
      if (v30 >= *(this + 3))
      {
        while (1)
        {
          v31 = *(this + 2);
          if (v31)
          {
            *(this + 4) = v31;
            (*(*this + 72))(this);
            v30 = *(this + 4);
            goto LABEL_63;
          }

          if (!*(this + 11))
          {
            break;
          }

          llvm::raw_ostream::SetBuffered(this);
          v30 = *(this + 4);
          if (v30 < *(this + 3))
          {
            goto LABEL_63;
          }
        }

        v45 = 124;
        (*(*this + 72))(this, &v45, 1);
        v11 = v4 + v42;
        if (v4 + v42 < v41)
        {
          while (1)
          {
LABEL_14:
            v14 = *(this + 4);
            if (v14 < *(this + 3))
            {
              goto LABEL_19;
            }

            v15 = *(this + 2);
            if (v15)
            {
              *(this + 4) = v15;
              (*(*this + 72))(this);
              v14 = *(this + 4);
LABEL_19:
              *(this + 4) = v14 + 1;
              *v14 = 10;
              goto LABEL_20;
            }

            if (!*(this + 11))
            {
              break;
            }

            llvm::raw_ostream::SetBuffered(this);
          }

          v48 = 10;
          (*(*this + 72))(this, &v48, 1);
        }

        goto LABEL_20;
      }

LABEL_63:
      *(this + 4) = v30 + 1;
      *v30 = 124;
LABEL_64:
      v11 = v4 + v42;
      if (v4 + v42 < v41)
      {
        goto LABEL_14;
      }

LABEL_20:
      v5 += v4;
      v4 = v43 - v4;
      if (!v4)
      {
        return this;
      }
    }

    llvm::raw_ostream::write(this, ": ", 2uLL);
LABEL_30:
    v19 = *(a2 + 9);
    v43 = v4;
    if (v4 >= v19)
    {
      v4 = *(a2 + 9);
    }

    if (!v19)
    {
      goto LABEL_48;
    }

    goto LABEL_33;
  }

  return this;
}

void *llvm::raw_ostream::write_zeros(void *this, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x50)
  {
    return llvm::raw_ostream::write(this, write_padding<(char)0>(llvm::raw_ostream &,unsigned int)::Chars, a2);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, write_padding<(char)0>(llvm::raw_ostream &,unsigned int)::Chars, v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

uint64_t llvm::raw_ostream::prepare_colors(llvm::raw_ostream *this)
{
  if (*(this + 40) != 1)
  {
    return 0;
  }

  result = llvm::sys::Process::ColorNeedsFlush(this);
  if (!result || (result = (*(*this + 48))(this), result))
  {
    if (llvm::sys::Process::ColorNeedsFlush(result))
    {
      v3 = *(this + 2);
      if (*(this + 4) != v3)
      {
        *(this + 4) = v3;
        (*(*this + 72))(this);
      }
    }

    return 1;
  }

  return result;
}

uint64_t llvm::raw_ostream::changeColor(uint64_t a1, int a2, int a3, llvm::sys::Process *a4)
{
  if (*(a1 + 40) == 1)
  {
    v8 = llvm::sys::Process::ColorNeedsFlush(a1);
    if (!v8 || (v8 = (*(*a1 + 48))(a1), v8))
    {
      if (llvm::sys::Process::ColorNeedsFlush(v8))
      {
        v9 = *(a1 + 16);
        if (*(a1 + 32) != v9)
        {
          *(a1 + 32) = v9;
          (*(*a1 + 72))(a1);
        }
      }

      if (a2 == 16)
      {
        v10 = llvm::sys::Process::OutputBold(a4);
        if (!v10)
        {
          return a1;
        }

        goto LABEL_11;
      }

      v10 = llvm::sys::Process::OutputColor(a2, a3, a4);
      if (v10)
      {
LABEL_11:
        v11 = v10;
        v12 = strlen(v10);
        llvm::raw_ostream::write(a1, v11, v12);
      }
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::ResetColor(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::OutputReverse(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 1 && *a2 == 45)
  {
    v6 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v6;
    llvm::sys::ChangeStdoutMode();
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v12 = 261;
    v11[0] = a2;
    v11[1] = a3;
    v8 = llvm::sys::fs::openFile(v11, &v13, 0, 2, 0, 438);
    *a4 = v8;
    *(a4 + 8) = v9;
    if (v8)
    {
      v7 = -1;
    }

    else
    {
      v7 = v13;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v7, 1, 0, 0);
}

{
  if (a3 == 1 && *a2 == 45)
  {
    v6 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v6;
    llvm::sys::ChangeStdoutMode();
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v12 = 261;
    v11[0] = a2;
    v11[1] = a3;
    v8 = llvm::sys::fs::openFile(v11, &v13, 0, 2, 0, 438);
    *a4 = v8;
    *(a4 + 8) = v9;
    if (v8)
    {
      v7 = -1;
    }

    else
    {
      v7 = v13;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v7, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5, char a6, int a7)
{
  FD = getFD(a2, a3, a4, a5, a6, a7);

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
}

{
  FD = getFD(a2, a3, a4, a5, a6, a7);

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, a5, 2, 0, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, a5, 2, 0, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, 0, 2, a5, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, 0, 2, a5, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5)
{
  FD = getFD(a2, a3, a4, 0, a5, 0);

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
}

{
  FD = getFD(a2, a3, a4, 0, a5, 0);

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
}

uint64_t getFD(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6)
{
  if (a2 == 1 && *a1 == 45)
  {
    v7 = std::system_category();
    *a3 = 0;
    *(a3 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    return 1;
  }

  else
  {
    v15 = 0;
    v14 = 261;
    v13[0] = a1;
    v13[1] = a2;
    if (a5)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = llvm::sys::fs::openFile(v13, &v15, a4, v10, a6, 438);
    *a3 = v11;
    *(a3 + 8) = v12;
    if (v11)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 44) = a4 ^ 1;
  *(a1 + 48) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2868A3D50;
  *(a1 + 52) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 53) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 52) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 52) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v13, 0, sizeof(v13));
    v14 = 0xFFFFLL;
    v15 = 0;
    v16 = 0;
    v10 = llvm::sys::fs::status(*(a1 + 48), v13, v9);
    *(a1 + 54) = *&v13[40] == 2;
    *(a1 + 53) = v10 == 0 && v8 != -1;
    if (v10 == 0 && v8 != -1)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 88) = v11;
    return a1;
  }
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = &unk_2868A3D50;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_fd_ostream::write_impl(this, v3, v2 - v3);
    }

    if (*(this + 52) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v11 = "IO failure on output stream: ";
    v12 = 259;
    v7 = *(this + 72);
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::operator+(&v11, &v9, v13);
    llvm::report_fatal_error(v13, 0);
  }

  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v6 = *(this + 2);
    if (v6)
    {
      MEMORY[0x259C63150](v6, 0x1000C8077774924);
    }
  }
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6[2];
    if (v6[4] != v7)
    {
      v6[4] = v7;
      (*(*v6 + 72))(v6);
    }
  }

  *(this + 11) += a3;
  while (1)
  {
    v8 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
    result = write(*(this + 12), __buf, v8);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    a3 -= result;
LABEL_6:
    if (!a3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  v10 = *__error();
  result = std::generic_category();
  *(this + 9) = v10;
  *(this + 10) = result;
  return result;
}

uint64_t llvm::raw_fd_ostream::close(llvm::raw_fd_ostream *this)
{
  *(this + 52) = 0;
  v2 = *(this + 2);
  if (*(this + 4) != v2)
  {
    *(this + 4) = v2;
    (*(*this + 72))(this);
  }

  result = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
  if (result)
  {
    *(this + 9) = result;
    *(this + 10) = v4;
  }

  *(this + 12) = -1;
  return result;
}

off_t llvm::raw_fd_ostream::seek(llvm::raw_fd_ostream *this, off_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 2);
  if (v3 != v4)
  {
    *(this + 4) = v4;
    v5 = a2;
    (*(*this + 72))(this, v4, v3 - v4);
    a2 = v5;
  }

  result = lseek(*(this + 12), a2, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v7 = *__error();
    v8 = std::generic_category();
    *(this + 9) = v7;
    *(this + 10) = v8;
    return *(this + 11);
  }

  return result;
}

uint64_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this);
  v9 = *(this + 4);
  v10 = *(this + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(this + 4) = v10;
    (*(*this + 72))(this, v10, v9 - v10);
  }

  v12 = v11 - v10;
  v13 = lseek(*(this + 12), a4, 0);
  *(this + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(this + 9) = v14;
    *(this + 10) = v15;
  }

  llvm::raw_ostream::write(this, a2, a3);
  v16 = *(this + 2);
  if (*(this + 4) != v16)
  {
    *(this + 4) = v16;
    (*(*this + 72))(this);
  }

  result = lseek(*(this + 12), v12, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(this + 9) = v18;
    *(this + 10) = result;
  }

  return result;
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 12), &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this))
  {
    return 0;
  }

  return v3.st_blksize;
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 55) & 1;
  }

  HasColors = llvm::sys::Process::FileDescriptorHasColors(*(this + 12));
  *(this + 55) = HasColors | 0x100;
  return HasColors & 1;
}

llvm *llvm::raw_fd_ostream::lock@<X0>(llvm::raw_fd_ostream *this@<X0>, uint64_t a2@<X8>)
{
  result = llvm::sys::fs::lockFile(*(this + 12), 1);
  if (result)
  {
    result = llvm::errorCodeToError(result, v5, &v7);
    *(a2 + 8) |= 1u;
    *a2 = v7;
  }

  else
  {
    v6 = *(this + 12);
    *(a2 + 8) &= ~1u;
    *a2 = v6;
  }

  return result;
}

llvm *llvm::raw_fd_ostream::tryLockFor@<X0>(llvm::raw_fd_ostream *this@<X0>, const Duration *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::sys::fs::tryLockFile(*(this + 12), *a2, 1);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, &v8);
    *(a3 + 8) |= 1u;
    *a3 = v8;
  }

  else
  {
    v7 = *(this + 12);
    *(a3 + 8) &= ~1u;
    *a3 = v7;
  }

  return result;
}

void *llvm::outs(llvm *this)
{
  std::system_category();
  if ((atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) & 1) == 0)
  {
    llvm::outs();
  }

  return &unk_27F8756A0;
}

void *llvm::errs(llvm *this)
{
  if ((atomic_load_explicit(&qword_27F875660, memory_order_acquire) & 1) == 0)
  {
    llvm::errs();
  }

  return &unk_27F875700;
}

uint64_t *llvm::nulls(llvm *this)
{
  if ((atomic_load_explicit(&qword_27F875668, memory_order_acquire) & 1) == 0)
  {
    llvm::nulls();
  }

  return &qword_27F875670;
}

void llvm::raw_null_ostream::~raw_null_ostream(llvm::raw_null_ostream *this)
{
  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8077774924);
    }
  }
}

{
  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8077774924);
    }
  }
}

{
  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::raw_fd_stream::raw_fd_stream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 1 && *a2 == 45)
  {
    v6 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v6;
    llvm::sys::ChangeStdoutMode();
    v7 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v8 = llvm::sys::fs::openFile(v12, &v14, 0, 3, 0, 438);
    *a4 = v8;
    *(a4 + 8) = v9;
    if (v8)
    {
      v7 = -1;
    }

    else
    {
      v7 = v14;
    }
  }

  llvm::raw_fd_ostream::raw_fd_ostream(a1, v7, 1, 0, 1);
  *a1 = &unk_2868A3DD0;
  if (*a4 || (*(a1 + 54) & 1) != 0)
  {
    return a1;
  }

  v11 = std::generic_category();
  *a4 = 22;
  *(a4 + 8) = v11;
  return a1;
}

void *llvm::raw_fd_stream::raw_fd_stream(llvm::raw_fd_stream *this, unsigned int a2, char a3)
{
  result = llvm::raw_fd_ostream::raw_fd_ostream(this, a2, a3, 0, 1);
  *result = &unk_2868A3DD0;
  return result;
}

{
  result = llvm::raw_fd_ostream::raw_fd_ostream(this, a2, a3, 0, 1);
  *result = &unk_2868A3DD0;
  return result;
}

ssize_t llvm::raw_fd_stream::read(llvm::raw_fd_stream *this, char *a2, size_t a3)
{
  result = read(*(this + 12), a2, a3);
  if (result < 0)
  {
    v5 = result;
    v6 = *__error();
    v7 = std::generic_category();
    result = v5;
    *(this + 9) = v6;
    *(this + 10) = v7;
  }

  else
  {
    *(this + 11) += result;
  }

  return result;
}

void *llvm::raw_svector_ostream::write_impl(void *this, const char *a2, size_t __n)
{
  v4 = this[6];
  v5 = v4[1];
  if (v4[2] < v5 + __n)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__n)
  {
    this = memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
  return this;
}

void llvm::writeToOutput(void (**a1)(void **)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2 != 9)
  {
    if (a2 == 1 && *a1 == 45)
    {
      LODWORD(v23) = 0;
      v24 = std::system_category();
      if (atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire))
      {
        v8 = *(a3 + 24);
        if (v8)
        {
LABEL_6:
          v9 = *(*v8 + 48);

          v9();
          return;
        }
      }

      else
      {
        llvm::outs();
        v8 = *(a3 + 24);
        if (v8)
        {
          goto LABEL_6;
        }
      }

LABEL_42:
      v18 = std::__throw_bad_function_call[abi:nn200100]();
      llvm::raw_string_ostream::~raw_string_ostream(v18);
      return;
    }

LABEL_13:
    LOWORD(v27) = 773;
    v23 = a1;
    v24 = a2;
    v25 = ".temp-stream-%%%%%%";
    llvm::sys::fs::TempFile::create(&v23, 438, 0, v31);
    if (v33)
    {
      LOWORD(v27) = 261;
      v23 = a1;
      v24 = a2;
      v11 = v31[0];
      v31[0] = 0;
      v19[0] = v11;
      llvm::FileError::build(&v23, 0, 0, v19);
    }

    llvm::raw_fd_ostream::raw_fd_ostream(&v23, v32, 0, 0, 0);
    v13 = *(a3 + 24);
    if (!v13)
    {
      goto LABEL_42;
    }

    (*(*v13 + 48))(&v22);
    if (v22)
    {
      llvm::sys::fs::TempFile::discard(v31, &v21);
      v14 = v21;
      if (!v21)
      {
        *a4 = v22;
        llvm::raw_fd_ostream::~raw_fd_ostream(&v23);
        if ((v33 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_15:
        v12 = v31[0];
        v31[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        return;
      }

      v15 = v22;
      v21 = 0;
      v22 = 0;
      v19[0] = v15;
      v30 = v14;
      llvm::ErrorList::join(v19, &v30, a4);
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      if (v19[0])
      {
        (*(*v19[0] + 8))(v19[0]);
      }

      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      if (v22)
      {
        (*(*v22 + 8))(v22);
        llvm::raw_fd_ostream::~raw_fd_ostream(&v23);
        if ((v33 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v16 = (v27 - v25);
      if (v27 != v25)
      {
        v27 = v25;
        v23[9](&v23);
      }

      v20 = 261;
      v19[0] = a1;
      v19[1] = a2;
      llvm::sys::fs::TempFile::keep(v31, v19, v16, a4);
    }

    llvm::raw_fd_ostream::~raw_fd_ostream(&v23);
    if ((v33 & 1) == 0)
    {
LABEL_33:
      llvm::sys::fs::TempFile::~TempFile(v31);
      return;
    }

    goto LABEL_15;
  }

  if (*a1 != 0x6C756E2F7665642FLL || *(a1 + 8) != 108)
  {
    goto LABEL_13;
  }

  LODWORD(v24) = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2868A4198;
  v17 = *(a3 + 24);
  if (!v17)
  {
    goto LABEL_42;
  }

  (*(*v17 + 48))(v17, &v23);
  v23 = &unk_2868A3CD8;
  if (v29 == 1 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8077774924);
  }
}

void llvm::raw_string_ostream::~raw_string_ostream(llvm::raw_string_ostream *this)
{
  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x259C63180);
}

void llvm::raw_string_ostream::reserveExtraSpace(llvm::raw_string_ostream *this, uint64_t a2)
{
  v2 = *(this + 6);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);

  std::string::reserve(v2, v3);
}

uint64_t llvm::raw_string_ostream::current_pos(llvm::raw_string_ostream *this)
{
  v1 = *(this + 6);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

uint64_t llvm::raw_svector_ostream::reserveExtraSpace(llvm::raw_svector_ostream *this, uint64_t a2)
{
  v4 = *(this + 6);
  result = (*(*this + 80))(this);
  if (*(v4 + 16) < (result + a2 + *(this + 4) - *(this + 2)))
  {

    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  return result;
}

void llvm::buffer_ostream::~buffer_ostream(llvm::buffer_ostream *this)
{
  *this = &unk_2868A4020;
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v3[4];
  if (v5 <= v3[3] - v6)
  {
    if (v5)
    {
      v7 = *(v2 + 8);
      memcpy(v6, v4, v5);
      v3[4] += v7;
    }
  }

  else
  {
    llvm::raw_ostream::write(v3, v4, v5);
  }

  v8 = *(this + 8);
  if (v8 != this + 88)
  {
    free(v8);
  }

  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v9 = *(this + 2);
    if (v9)
    {
      MEMORY[0x259C63150](v9, 0x1000C8077774924);
    }
  }
}

{
  *this = &unk_2868A4020;
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v3[4];
  if (v5 <= v3[3] - v6)
  {
    if (v5)
    {
      v7 = *(v2 + 8);
      memcpy(v6, v4, v5);
      v3[4] += v7;
    }
  }

  else
  {
    llvm::raw_ostream::write(v3, v4, v5);
  }

  v8 = *(this + 8);
  if (v8 != this + 88)
  {
    free(v8);
  }

  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v9 = *(this + 2);
    if (v9)
    {
      MEMORY[0x259C63150](v9, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x259C63180);
}

void llvm::buffer_unique_ostream::~buffer_unique_ostream(llvm::buffer_unique_ostream *this)
{
  llvm::buffer_unique_ostream::~buffer_unique_ostream(this);

  JUMPOUT(0x259C63180);
}

{
  *this = &unk_2868A40B8;
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v3[4];
  if (v5 <= v3[3] - v6)
  {
    if (v5)
    {
      v7 = *(v2 + 8);
      memcpy(v6, v4, v5);
      v3[4] += v7;
    }
  }

  else
  {
    llvm::raw_ostream::write(v3, v4, v5);
  }

  v8 = *(this + 8);
  if (v8 != this + 88)
  {
    free(v8);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *this = &unk_2868A3CD8;
  if (*(this + 11) == 1)
  {
    v10 = *(this + 2);
    if (v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8077774924);
    }
  }
}

void llvm::raw_fd_stream::~raw_fd_stream(llvm::raw_fd_stream *this)
{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  JUMPOUT(0x259C63180);
}

void llvm::FmtAlign::format(void *a1, uint64_t a2)
{
  v39[8] = *MEMORY[0x277D85DE8];
  if (*(a1 + 3))
  {
    v37 = v39;
    *v38 = xmmword_257370CF0;
    v29 = 2;
    v33 = 0;
    v35 = &v37;
    v34 = 0;
    v28 = &unk_2868A3F88;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    (*(**a1 + 24))(*a1, &v28);
    v4 = *(a1 + 3);
    v5 = v38[0];
    if (v38[0] < v4)
    {
      v6 = v4 - LODWORD(v38[0]);
      v7 = *(a1 + 2);
      if (v7 == 1)
      {
        v13 = v6 >> 1;
        v14 = v38[0];
        if (v6 >= 2)
        {
          v15 = 0;
          do
          {
            while (1)
            {
              v16 = *(a1 + 16);
              v17 = *(a2 + 32);
              if (v17 >= *(a2 + 24))
              {
                break;
              }

LABEL_28:
              *(a2 + 32) = v17 + 1;
              *v17 = v16;
              if (++v15 == v13)
              {
                goto LABEL_31;
              }
            }

            while (1)
            {
              v18 = *(a2 + 16);
              if (v18)
              {
                *(a2 + 32) = v18;
                (*(*a2 + 72))(a2);
                v17 = *(a2 + 32);
                goto LABEL_28;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v17 = *(a2 + 32);
              if (v17 < *(a2 + 24))
              {
                goto LABEL_28;
              }
            }

            v36 = v16;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v15;
          }

          while (v15 != v13);
LABEL_31:
          v14 = v38[0];
        }

        llvm::raw_ostream::write(a2, v37, v14);
        if (v4 != v5)
        {
          v19 = 0;
          v20 = v6 - v13;
          do
          {
            while (1)
            {
              v21 = *(a1 + 16);
              v22 = *(a2 + 32);
              if (v22 >= *(a2 + 24))
              {
                break;
              }

LABEL_40:
              *(a2 + 32) = v22 + 1;
              *v22 = v21;
              if (++v19 == v20)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v23 = *(a2 + 16);
              if (v23)
              {
                *(a2 + 32) = v23;
                (*(*a2 + 72))(a2);
                v22 = *(a2 + 32);
                goto LABEL_40;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v22 = *(a2 + 32);
              if (v22 < *(a2 + 24))
              {
                goto LABEL_40;
              }
            }

            v36 = v21;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v19;
          }

          while (v19 != v20);
        }

        goto LABEL_57;
      }

      if (!v7)
      {
        llvm::raw_ostream::write(a2, v37, v38[0]);
        if (v4 != v5)
        {
          v8 = 0;
          do
          {
            while (1)
            {
              v9 = *(a1 + 16);
              v10 = *(a2 + 32);
              if (v10 >= *(a2 + 24))
              {
                break;
              }

LABEL_13:
              *(a2 + 32) = v10 + 1;
              *v10 = v9;
              if (++v8 == v6)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v11 = *(a2 + 16);
              if (v11)
              {
                *(a2 + 32) = v11;
                (*(*a2 + 72))(a2);
                v10 = *(a2 + 32);
                goto LABEL_13;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v10 = *(a2 + 32);
              if (v10 < *(a2 + 24))
              {
                goto LABEL_13;
              }
            }

            v36 = v9;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v8;
          }

          while (v8 != v6);
        }

        goto LABEL_57;
      }

      if (v4 != LODWORD(v38[0]))
      {
        v24 = 0;
        do
        {
          while (1)
          {
            v25 = *(a1 + 16);
            v26 = *(a2 + 32);
            if (v26 >= *(a2 + 24))
            {
              break;
            }

LABEL_52:
            *(a2 + 32) = v26 + 1;
            *v26 = v25;
            if (++v24 == v6)
            {
              goto LABEL_55;
            }
          }

          while (1)
          {
            v27 = *(a2 + 16);
            if (v27)
            {
              *(a2 + 32) = v27;
              (*(*a2 + 72))(a2);
              v26 = *(a2 + 32);
              goto LABEL_52;
            }

            if (!*(a2 + 44))
            {
              break;
            }

            llvm::raw_ostream::SetBuffered(a2);
            v26 = *(a2 + 32);
            if (v26 < *(a2 + 24))
            {
              goto LABEL_52;
            }
          }

          v36 = v25;
          (*(*a2 + 72))(a2, &v36, 1);
          ++v24;
        }

        while (v24 != v6);
LABEL_55:
        v5 = v38[0];
      }
    }

    llvm::raw_ostream::write(a2, v37, v5);
LABEL_57:
    v28 = &unk_2868A3CD8;
    if (v34 == 1 && v30)
    {
      MEMORY[0x259C63150](v30, 0x1000C8077774924);
    }

    if (v37 != v39)
    {
      free(v37);
    }

    return;
  }

  v12 = *(**a1 + 24);

  v12();
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1, _BYTE *a2)
{

  return llvm::raw_fd_ostream::raw_fd_ostream(v2 + 72, a2, 1, v3, 0);
}

void llvm::raw_ostream_proxy::~raw_ostream_proxy(llvm::raw_ostream_proxy *this)
{
  *this = &unk_2868A43C0;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;

  llvm::raw_ostream::~raw_ostream(this);
}

{
  *this = &unk_2868A43C0;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

void llvm::raw_pwrite_stream_proxy::~raw_pwrite_stream_proxy(llvm::raw_pwrite_stream_proxy *this)
{
  *this = &unk_2868A3390;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;

  llvm::raw_ostream::~raw_ostream(this);
}

{
  *this = &unk_2868A3390;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

void llvm::raw_ostream_proxy_adaptor<llvm::raw_ostream>::~raw_ostream_proxy_adaptor(llvm::raw_ostream *this)
{
  *this = &unk_2868A43C0;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;

  llvm::raw_ostream::~raw_ostream(this);
}

{
  *this = &unk_2868A43C0;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::ListeningSocket::ListeningSocket(uint64_t a1, int a2, const void *a3, size_t a4, _DWORD *a5)
{
  *a1 = a2;
  v5 = (a1 + 8);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = a4;
  if (a4)
  {
    memmove(v5, a3, a4);
  }

  *(v5 + a4) = 0;
  *(a1 + 32) = *a5;
  *(a1 + 36) = a5[1];
  return a1;
}

{
  *a1 = a2;
  v5 = (a1 + 8);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = a4;
  if (a4)
  {
    memmove(v5, a3, a4);
  }

  *(v5 + a4) = 0;
  *(a1 + 32) = *a5;
  *(a1 + 36) = a5[1];
  return a1;
}

double llvm::ListeningSocket::ListeningSocket(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load(a2);
  *a1 = v3;
  if (*(a2 + 31) < 0)
  {
    v5 = a1;
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    a1 = v5;
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  atomic_store(0xFFFFFFFF, a2);
  if (*(a2 + 31) < 0)
  {
    **(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 31) = 0;
  }

  result = NAN;
  *(a2 + 32) = -1;
  return result;
}

{
  v3 = atomic_load(a2);
  *a1 = v3;
  if (*(a2 + 31) < 0)
  {
    v5 = a1;
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    a1 = v5;
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  atomic_store(0xFFFFFFFF, a2);
  if (*(a2 + 31) < 0)
  {
    **(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 31) = 0;
  }

  result = NAN;
  *(a2 + 32) = -1;
  return result;
}

void llvm::ListeningSocket::createUnix(const void *a1@<X0>, size_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  LOWORD(v14) = 261;
  *&v12.sa_len = a1;
  *&v12.sa_data[6] = a2;
  if (!llvm::sys::fs::access(&v12, 0))
  {
    getSocketFD(&v19, a1, a2);
    if (v20)
    {
      v10 = v19;
      v19 = 0;
      *v18 = v10;
      llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v18, &v12);
      if (*v18)
      {
        (*(**v18 + 8))(*v18);
      }

      std::generic_category();
      operator new();
    }

    close(v19);
    std::generic_category();
    operator new();
  }

  v8 = socket(1, 1, 0);
  if (v8 == -1)
  {
    __error();
    std::generic_category();
    operator new();
  }

  v9 = v8;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v14 = 0u;
  v15 = 0u;
  v12 = 0;
  v13 = 0u;
  setSocketAddr(&v12, a1, a2);
  if (bind(v9, &v12, 0x6Au) == -1)
  {
    __error();
    std::generic_category();
    close(v9);
    operator new();
  }

  if (listen(v9, a3) == -1)
  {
    __error();
    std::generic_category();
    operator new();
  }

  if (pipe(v18) == -1)
  {
    __error();
    std::generic_category();
    operator new();
  }

  LODWORD(v19) = v9;
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v21) = a2;
  if (a2)
  {
    memmove(&v20, a1, a2);
  }

  *(&v20 + a2) = 0;
  v22 = *v18;
  *(a4 + 40) &= ~1u;
  v11 = atomic_load(&v19);
  *a4 = v11;
  if (SHIBYTE(v21) < 0)
  {
    std::string::__init_copy_ctor_external((a4 + 8), v20, *(&v20 + 1));
    *(a4 + 32) = v22;
    atomic_store(0xFFFFFFFF, &v19);
    *v20 = 0;
    *(&v20 + 1) = 0;
  }

  else
  {
    *(a4 + 8) = v20;
    *(a4 + 24) = v21;
    *(a4 + 32) = v22;
    atomic_store(0xFFFFFFFF, &v19);
    LOBYTE(v20) = 0;
    HIBYTE(v21) = 0;
  }

  v22 = -1;
  llvm::ListeningSocket::~ListeningSocket(&v19);
}

uint64_t getSocketFD(uint64_t a1, const void *a2, size_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = socket(1, 1, 0);
  if (v6 == -1)
  {
    __error();
    std::generic_category();
    operator new();
  }

  v7 = v6;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  v12 = 0u;
  v9 = 0;
  v10 = 0u;
  setSocketAddr(&v9, a2, a3);
  result = connect(v7, &v9, 0x6Au);
  if (result == -1)
  {
    __error();
    std::generic_category();
    operator new();
  }

  *(a1 + 8) &= ~1u;
  *a1 = v7;
  return result;
}

void setSocketAddr(uint64_t a1, const void *a2, size_t a3)
{
  *(a1 + 90) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 1) = 1;
  if (!a2)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v7 = 0;
    goto LABEL_10;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (!a3)
  {
    LOBYTE(__dst[0]) = 0;
    if (SHIBYTE(v7) < 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    strncpy((a1 + 2), __dst, 0x67uLL);
    return;
  }

  memmove(__dst, a2, a3);
  *(__dst + a3) = 0;
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v5 = __dst[0];
  strncpy((a1 + 2), __dst[0], 0x67uLL);

  operator delete(v5);
}

void llvm::ListeningSocket::accept(unsigned int *a1, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_2868A44D0;
  v7[1] = a1;
  v8 = v7;
  v5 = a1[8];
  v6 = 1;
  v3 = manageTimeout(a2, v7, &v5);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))();
    }

    if (v3)
    {
LABEL_5:
      operator new();
    }
  }

  v4 = atomic_load(a1);
  if (accept(v4, 0, 0) != -1)
  {
    operator new();
  }

  __error();
  std::generic_category();
  operator new();
}

uint64_t manageTimeout(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a1, uint64_t a2, int *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v22.events = 1;
  v4 = *(a2 + 24);
  if (!v4)
  {
LABEL_21:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_22:
    v9 = *__error();
    goto LABEL_26;
  }

  v22.fd = (*(*v4 + 48))(v4);
  v7 = 1;
  if (*(a3 + 4) == 1)
  {
    v24 = 1;
    v23 = *a3;
    v7 = 2;
  }

  v18.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v8 = *a1;
  v9 = 35;
  while (1)
  {
    v10 = poll(&v22, v7, v8);
    v11 = v10;
    if (v10 != -1)
    {
      v15 = v10 == 0;
      v16 = *(a2 + 24);
      if (!v16)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v12 = *__error();
    v13 = std::generic_category();
    v21[0] = v12;
    v21[1] = v13;
    v19 = 4;
    v20 = v13;
    if (!(v13->equivalent)(v13, v12, &v19) && ((v20->equivalent_0)(v20, v21, v19) & 1) == 0)
    {
      break;
    }

    if (*a1 != -1)
    {
      v14 = (std::chrono::steady_clock::now().__d_.__rep_ - v18.__d_.__rep_) / 1000000;
      v8 = *a1 - v14;
      if (*a1 <= v14)
      {
        return v9;
      }
    }
  }

  v15 = 0;
  v16 = *(a2 + 24);
  if (!v16)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (*(*v16 + 48))(v16) == -1 || *(a3 + 4) == 1 && (v25)
  {
    v9 = 89;
    goto LABEL_26;
  }

  if (v11 == -1)
  {
    goto LABEL_22;
  }

  if (v15)
  {
    v9 = 60;
    goto LABEL_26;
  }

  if ((v22.revents & 0x20) != 0)
  {
    v9 = 9;
LABEL_26:
    std::generic_category();
    return v9;
  }

  std::system_category();
  return 0;
}

ssize_t llvm::ListeningSocket::shutdown(llvm::ListeningSocket *this)
{
  result = atomic_load(this);
  if (result != -1)
  {
    v3 = result;
    atomic_compare_exchange_strong(this, &v3, 0xFFFFFFFF);
    if (v3 == result)
    {
      close(result);
      v4 = this + 8;
      if (*(this + 31) < 0)
      {
        v4 = *v4;
      }

      unlink(v4);
      __buf = 65;
      return write(*(this + 9), &__buf, 1uLL);
    }
  }

  return result;
}