void sub_2180D3054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34)
{
  __p = (v34 - 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&a33, a34);
  _Unwind_Resume(a1);
}

void *std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(void *a1, const void **a2, const void ***a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,MIL::IRValueType const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(a1, a2, a3);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRBlock const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRBlock const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRBlock const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MIL::IRBlock const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRBlock const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRBlock const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_2180D34F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<MIL::Util::anonymous namespace::ConstantInfo>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 40 * a3;
  result[2] = 40 * a3;
  result[3] = 0;
  return result;
}

void std::vector<MIL::Util::anonymous namespace::ConstantInfo>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = a2[1] + *a1 - v4;
    v8 = *a1;
    do
    {
      *v7 = *v8;
      v9 = *(v8 + 8);
      *(v7 + 24) = *(v8 + 24);
      *(v7 + 8) = v9;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v7 + 32) = *(v8 + 32);
      v8 += 40;
      v7 += 40;
    }

    while (v8 != v4);
    do
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v10 = *a1;
  *a1 = v6;
  a1[1] = v10;
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<MIL::Util::anonymous namespace::ConstantInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void MIL::Util::anonymous namespace::ConstantCollector::CollectConstantsFromBlock(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 56))(a1);
  v4 = **v3;
  v67 = (*v3)[1];
  if (v4 == v67)
  {
    return;
  }

  do
  {
    v68 = v4;
    v5 = *v4;
    v6 = (*(**v4 + 56))(*v4);
    v7 = 0;
    v8 = *(v6 + 23);
    v9 = *v6;
    v10 = *(v6 + 8);
    while (1)
    {
      v12 = v11;
      if ((v8 & 0x80) == 0)
      {
        break;
      }

      if (v11 == v10)
      {
        v13 = v9;
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        goto LABEL_8;
      }

LABEL_9:
      if (++v7 == 8)
      {
        goto LABEL_34;
      }
    }

    v13 = v6;
    if (v12 != v8)
    {
      goto LABEL_9;
    }

LABEL_8:
    {
      goto LABEL_9;
    }

    (*(*v5 + 200))(&v71, v5);
    if (v72[0] != v71)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = (*(*v5 + 176))(v5);
        if (v16 < (v17[1] - *v17) >> 4 && (Type = MIL::IRNamedValueType::GetType(*(*v17 + v14))) != 0)
        {
        }

        else
        {
          v20 = 1024;
        }

        v21 = v71;
        v22 = &v71[v15];
        v24 = a2[1];
        v23 = a2[2];
        if (v24 >= v23)
        {
          v27 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - *a2) >> 3);
          v28 = v27 + 1;
          if ((v27 + 1) > 0x666666666666666)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v29 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - *a2) >> 3);
          if (2 * v29 > v28)
          {
            v28 = 2 * v29;
          }

          if (v29 >= 0x333333333333333)
          {
            v30 = 0x666666666666666;
          }

          else
          {
            v30 = v28;
          }

          v31 = v74;
          v32 = v74;
          *v74 = v5;
          v33 = (v32 + 1);
          if (SHIBYTE(v21[v15 + 2]) < 0)
          {
            std::string::__init_copy_ctor_external(v33, v21[v15], v21[v15 + 1]);
          }

          else
          {
            v34 = *v22;
            v33->__r_.__value_.__r.__words[2] = v22[2];
            *&v33->__r_.__value_.__l.__data_ = v34;
          }

          v31[4] = v20;
          v74 += 5;
          v35 = a2[1];
        }

        else
        {
          *v24 = v5;
          v25 = (v24 + 1);
          if (*(v22 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v25, v21[v15], v21[v15 + 1]);
          }

          else
          {
            v26 = *v22;
            v24[3] = v22[2];
            *&v25->__r_.__value_.__l.__data_ = v26;
          }

          v24[4] = v20;
          v35 = v24 + 5;
          a2[1] = (v24 + 5);
        }

        a2[1] = v35;
        ++v16;
        v15 += 3;
        v14 += 16;
      }

      while (v16 < 0xAAAAAAAAAAAAAAABLL * (v72[0] - v71));
    }

    v73[0] = &v71;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v73);
LABEL_34:
    Attributes = MIL::IRObject::GetAttributes(v5);
    std::map<std::string,std::shared_ptr<MIL::IRValue const>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>>(&v71, *(Attributes + 16), 0);
    v37 = v71;
    if (v71 != v72)
    {
      do
      {
        v38 = v37[7];
        if (v38)
        {
          v39 = (*(*v38 + 40))(v38);
          v40 = v39;
          if (!v39 || ((*(*v39 + 80))(v39) & 1) == 0 && ((*(*v40 + 104))(v40) & 1) == 0)
          {
            v41 = (*(*v37[7] + 40))(v37[7]);
            if (v41 && (v42 = (*(*v41 + 32))(v41)) != 0)
            {
            }

            else
            {
              v44 = 32;
            }

            if (*(v37 + 55) >= 0)
            {
              v45 = *(v37 + 55);
            }

            else
            {
              v45 = v37[5];
            }

            std::string::basic_string[abi:ne200100](__p, v45 + 5);
            if (v70 >= 0)
            {
              v46 = __p;
            }

            else
            {
              v46 = __p[0];
            }

            if (v45)
            {
              if (*(v37 + 55) >= 0)
              {
                v47 = v37 + 4;
              }

              else
              {
                v47 = v37[4];
              }

              memmove(v46, v47, v45);
            }

            strcpy(v46 + v45, "_attr");
            v49 = a2[1];
            v48 = a2[2];
            if (v49 >= v48)
            {
              v52 = 0xCCCCCCCCCCCCCCCDLL * ((v49 - *a2) >> 3);
              v53 = v52 + 1;
              if ((v52 + 1) > 0x666666666666666)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v54 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - *a2) >> 3);
              if (2 * v54 > v53)
              {
                v53 = 2 * v54;
              }

              if (v54 >= 0x333333333333333)
              {
                v55 = 0x666666666666666;
              }

              else
              {
                v55 = v53;
              }

              v56 = v74;
              v57 = v74;
              *v74 = v5;
              v58 = (v57 + 1);
              if (SHIBYTE(v70) < 0)
              {
                std::string::__init_copy_ctor_external(v58, __p[0], __p[1]);
              }

              else
              {
                v59 = *__p;
                v58->__r_.__value_.__r.__words[2] = v70;
                *&v58->__r_.__value_.__l.__data_ = v59;
              }

              v56[4] = v44;
              v74 += 5;
              v60 = a2[1];
            }

            else
            {
              *v49 = v5;
              v50 = (v49 + 1);
              if (SHIBYTE(v70) < 0)
              {
                std::string::__init_copy_ctor_external(v50, __p[0], __p[1]);
              }

              else
              {
                v51 = *__p;
                v49[3] = v70;
                *&v50->__r_.__value_.__l.__data_ = v51;
              }

              v49[4] = v44;
              v60 = v49 + 5;
              a2[1] = (v49 + 5);
            }

            a2[1] = v60;
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v61 = v37[1];
        if (v61)
        {
          do
          {
            v62 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v62 = v37[2];
            v63 = *v62 == v37;
            v37 = v62;
          }

          while (!v63);
        }

        v37 = v62;
      }

      while (v62 != v72);
    }

    v64 = (*(*v5 + 208))(v5);
    v65 = **v64;
    for (i = (*v64)[1]; v65 != i; v65 += 2)
    {
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&v71, v72[0]);
    v4 = v68 + 2;
  }

  while (v68 + 2 != v67);
}

unint64_t MIL::Util::anonymous namespace::ConstantCollector::EstimateTypeSize(MIL::Util::_anonymous_namespace_::ConstantCollector *this, const MIL::IRValueType *a2)
{
  p_str = &__str;
  (*(*this + 56))(&__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size >= 4)
  {
    v5 = p_str + size;
    v6 = size;
    v7 = p_str;
    do
    {
      v8 = memchr(v7, 102, v6 - 3);
      if (!v8)
      {
        break;
      }

      if (*v8 == 875982950)
      {
        if (v8 != v5 && v8 - p_str != -1)
        {
          goto LABEL_32;
        }

        break;
      }

      v7 = (v8 + 1);
      v6 = v5 - v7;
    }

    while (v5 - v7 >= 4);
    if (size >= 6)
    {
      v9 = size;
      v10 = p_str;
      do
      {
        v11 = memchr(v10, 100, v9 - 5);
        if (!v11)
        {
          break;
        }

        if (*v11 == 1651863396 && *(v11 + 2) == 25964)
        {
          if (v11 == v5 || v11 - p_str == -1)
          {
            break;
          }

          goto LABEL_32;
        }

        v10 = (v11 + 1);
        v9 = v5 - v10;
      }

      while (v5 - v10 >= 6);
    }

    v13 = size;
    v14 = p_str;
    do
    {
      v15 = memchr(v14, 102, v13 - 3);
      if (!v15)
      {
        break;
      }

      if (*v15 == 842231910)
      {
        if (v15 != v5 && v15 - p_str != -1)
        {
          goto LABEL_51;
        }

        break;
      }

      v14 = (v15 + 1);
      v13 = v5 - v14;
    }

    while (v5 - v14 >= 4);
    if (size != 4)
    {
      v16 = size;
      v17 = p_str;
      do
      {
        v18 = memchr(v17, 102, v16 - 4);
        if (!v18)
        {
          break;
        }

        if (*v18 == 1634692198 && v18[4] == 116)
        {
          if (v18 == v5 || v18 - p_str == -1)
          {
            break;
          }

          goto LABEL_51;
        }

        v17 = (v18 + 1);
        v16 = v5 - v17;
      }

      while (v5 - v17 > 4);
    }

    v37 = size;
    v38 = p_str;
    do
    {
      v39 = memchr(v38, 102, v37 - 3);
      if (!v39)
      {
        break;
      }

      if (*v39 == 909209702)
      {
        if (v39 != v5 && v39 - p_str != -1)
        {
          goto LABEL_8;
        }

        break;
      }

      v38 = (v39 + 1);
      v37 = v5 - v38;
    }

    while (v5 - v38 >= 4);
    v40 = size;
    v41 = p_str;
    do
    {
      v42 = memchr(v41, 105, v40 - 3);
      if (!v42)
      {
        break;
      }

      if (*v42 == 947154537)
      {
        if (v42 != v5 && v42 - p_str != -1)
        {
LABEL_114:
          v4 = 1;
          goto LABEL_52;
        }

        break;
      }

      v41 = (v42 + 1);
      v40 = v5 - v41;
    }

    while (v5 - v41 >= 4);
    if (size != 4)
    {
      v43 = size;
      v44 = p_str;
      do
      {
        v45 = memchr(v44, 117, v43 - 4);
        if (!v45)
        {
          break;
        }

        if (*v45 == 1953393013 && v45[4] == 56)
        {
          if (v45 != v5 && v45 - p_str != -1)
          {
            goto LABEL_114;
          }

          break;
        }

        v44 = (v45 + 1);
        v43 = v5 - v44;
      }

      while (v5 - v44 >= 5);
      v47 = p_str;
      do
      {
        v48 = memchr(v47, 105, size - 4);
        if (!v48)
        {
          break;
        }

        if (*v48 == 829714025 && v48[4] == 54)
        {
          if (v48 != v5 && v48 - p_str != -1)
          {
            goto LABEL_8;
          }

          break;
        }

        v47 = (v48 + 1);
        size = v5 - v47;
      }

      while (v5 - v47 >= 5);
    }
  }

  if (std::string::find[abi:ne200100](&__str, "uint16", 0) == -1)
  {
    if (std::string::find[abi:ne200100](&__str, "int32", 0) == -1 && std::string::find[abi:ne200100](&__str, "uint32", 0) == -1 && (std::string::find[abi:ne200100](&__str, "int64", 0) != -1 || std::string::find[abi:ne200100](&__str, "uint64", 0) != -1))
    {
LABEL_32:
      v4 = 8;
    }

    else
    {
LABEL_51:
      v4 = 4;
    }
  }

  else
  {
LABEL_8:
    v4 = 2;
  }

LABEL_52:
  v20 = std::string::find(&__str, 91, 0);
  if (v20 == -1 || (v21 = v20, v22 = std::string::find(&__str, 93, v20), v22 == -1))
  {
    v25 = 1;
  }

  else
  {
    std::string::basic_string(&v57, &__str, v21 + 1, v22 + ~v21, v52);
    std::istringstream::basic_istringstream[abi:ne200100](v52, &v57, 8);
    memset(&v51, 0, sizeof(v51));
    v23 = 1;
    v24 = MEMORY[0x277D85DE0];
    v25 = 0x40000000 / v4;
LABEL_55:
    while (1)
    {
      v26 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v52, &v51, 0x2Cu);
      if ((*(v26 + *(*v26 - 24) + 32) & 5) != 0)
      {
        break;
      }

      v27 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v51;
      }

      else
      {
        v28 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v51.__r_.__value_.__l.__size_;
      }

      v29 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(v28, v28 + v27, isspace);
      v30 = &v51 + HIBYTE(v51.__r_.__value_.__r.__words[2]);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v51;
      }

      else
      {
        v30 = (v51.__r_.__value_.__r.__words[0] + v51.__r_.__value_.__l.__size_);
        v31 = v51.__r_.__value_.__r.__words[0];
      }

      std::string::erase(&v51, v29 - v31, v30 - v29);
      v32 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v32 = v51.__r_.__value_.__l.__size_;
        if (v51.__r_.__value_.__l.__size_)
        {
          v33 = v51.__r_.__value_.__r.__words[0];
          goto LABEL_69;
        }
      }

      else if (*(&v51.__r_.__value_.__s + 23))
      {
        v33 = &v51;
LABEL_69:
        while (1)
        {
          v34 = v33->__r_.__value_.__s.__data_[0];
          if (v34 < 0 || (*(v24 + 4 * v34 + 60) & 0x400) == 0)
          {
            break;
          }

          v33 = (v33 + 1);
          if (!--v32)
          {
            v35 = std::stoull(&v51, 0, 10);
            if (v35 && !is_mul_ok(v35, v23))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v50 = 0;
                _os_log_impl(&dword_217F7E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ProgramHashUtils::EstimateTypeSize: Tensor size calculation overflow, capping at 1GB", &v50, 2u);
              }
            }

            else
            {
              v23 *= v35;
              if (v23 <= v25)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_78;
          }
        }
      }
    }

    v25 = v23;
LABEL_78:
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    v52[0] = *MEMORY[0x277D82820];
    *(v52 + *(v52[0] - 24)) = *(MEMORY[0x277D82820] + 24);
    v53 = MEMORY[0x277D82878] + 16;
    if (v55 < 0)
    {
      operator delete(v54[7].__locale_);
    }

    v53 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v54);
    std::istream::~istream();
    MEMORY[0x21CEAFDA0](&v56);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v25 * v4;
}

void sub_2180D452C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_2180D47C8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x21CEAFDA0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x21CEAFAA0](&v11, a1, 1);
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

void sub_2180D4954(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2180D4914);
  }

  __cxa_rethrow();
}

char *std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(char *a1, char *a2, unsigned int (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!a3(*v3))
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (!a3(*i))
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

int isspace(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = *(MEMORY[0x277D85DE0] + 4 * _c + 60) & 0x4000;
  }

  else
  {
    v1 = __maskrune(_c, 0x4000uLL);
  }

  return v1 != 0;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x21CEAFD00](a1 + 8);
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

void sub_2180D4B64(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void *std::__split_buffer<MIL::Util::anonymous namespace::GlobalConstantBudgetManager::ConstantAllocation>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

_DWORD *MIL::Util::anonymous namespace::ConstantDataProcessor::HashTensorMetadata(CC_SHA256_CTX *a1, uint64_t a2)
{
  v4 = (*(*a2 + 32))(a2);
  if (v4)
  {
    (*(*v4 + 56))(__p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = (*(*a2 + 136))(a2);
  if (result)
  {
  }

  return result;
}

void sub_2180D4DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::anonymous namespace::anonymous namespace::InitializePageSize()
{
  result = getpagesize();
  return result;
}

uint64_t *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__equal_to &>(uint64_t *a1, uint64_t *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void *std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *> *,long>>>(void *a1, const void **a2, const void ***a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *> *,long>>>(a1, a2, a3);
  return a1;
}

void *std::map<std::string,std::shared_ptr<MIL::IRFunction>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,void *> *>>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>> const&>(a1, v4, v6 + 2);
      v6 = *v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<MIL::IRFunction>> const&>();
  }

  return v3;
}

void std::vector<MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::FileProcessingResult,std::allocator<MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::FileProcessingResult>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        v4 -= 5;
        std::exception_ptr::~exception_ptr(v6 - 2);
        if (*(v6 - 17) < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::thread *std::vector<std::thread>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::thread>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2180D538C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::$_0>>(uint64_t *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v27 = a1;
  v1 = std::__thread_local_data();
  v2 = *v27;
  *v27 = 0;
  pthread_setspecific(v1->__key_, v2);
  v3 = v27[4];
  v4 = *v27[1] + 40 * v3;
  if ((*(v4 + 32) & 1) == 0)
  {
    v5 = *v27[2] + 24 * v3;
    v6 = MEMORY[0x277D86220];
    v7 = v27[3];
    if (*(v5 + 23) >= 0)
    {
      v8 = (*v27[2] + 24 * v3);
    }

    else
    {
      v8 = *v5;
    }

    if (stat(v8, &v32))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&__ns, "File stat");
      std::string::basic_string[abi:ne200100]<0>(&v35, "unable to get file information - file may not exist or be accessible");
      std::runtime_error::runtime_error(exception, &buf);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    data = v32.st_size;
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, &data, 8u);
    v9 = data;
    if (data && (v10 = *v7) != 0)
    {
      if (data < v10)
      {
        v10 = data;
      }

      if (v10 < 0x10000)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 >> 16;
      }

      if (v11 <= v7[2])
      {
        v12 = v7[2];
      }

      else
      {
        v12 = v11;
      }

      if (data <= 0x100000 || v12 >= data >> 16)
      {
        *__error() = 0;
        if (*(v5 + 23) >= 0)
        {
          v13 = v5;
        }

        else
        {
          v13 = *v5;
        }

        v14 = open(v13, 0);
        if (v14 == -1)
        {
          v24 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&__ns, "File open");
          std::runtime_error::runtime_error(v24, &buf);
          __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v34 = v14;
        v15 = mmap(0, v9, 1, 2, v14, 0);
        v16 = v15;
        if (v15 == -1)
        {
          v18 = std::string::append(&buf, " - memory mapping failed, falling back to chunked reading");
          v19 = v18->__r_.__value_.__r.__words[0];
          v20 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
          v18->__r_.__value_.__r.__words[0] = 0;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v9 >= 0x10000)
          {
            v21 = 0x10000;
          }

          else
          {
            v21 = v9;
          }

          if (v9 / v21 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v9 / v21;
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }
        }

        else
        {
          v33[0] = v15;
          v33[1] = v9;
          if (madvise(v15, v9, 2) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v17 = *__error();
            LODWORD(buf.__r_.__value_.__l.__data_) = 134218496;
            *(buf.__r_.__value_.__r.__words + 4) = v9;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
            v38 = v17;
            _os_log_impl(&dword_217F7E000, v6, OS_LOG_TYPE_INFO, "ProgramHashUtils: madvise(MADV_SEQUENTIAL) failed for %zu bytes at %p: %{errno}d", &buf, 0x1Cu);
          }

          CC_SHA256_Update(&c, v16, v9);
        }
      }

      else
      {
      }
    }

    else
    {
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v25 = v28;
    *(v4 + 16) = v29;
    *v4 = v25;
    *(v4 + 32) = 1;
  }

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::$_0>>::~unique_ptr[abi:ne200100](&v27);
  return 0;
}

void sub_2180D5D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(v4);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x21CEAFEA0](v3, 0x1060C4096E0A24ALL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x21CEAFBF0]();
    MEMORY[0x21CEAFEA0](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t MIL::Util::anonymous namespace::CreateDetailedErrorMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "ProgramHashUtils: ", 18);
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " failed for file '", 18);
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

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "'", 1);
  if (*__error())
  {
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " (system error: ", 16);
    v17 = __error();
    v18 = strerror(*v17);
    v19 = strlen(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " [errno=", 8);
    v22 = __error();
    v23 = MEMORY[0x21CEAFB20](v21, *v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "])", 2);
  }

  v24 = *(a3 + 23);
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a3 + 8);
  }

  if (v24)
  {
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " - ", 3);
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
  }

  std::stringbuf::str();
  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](&v34);
}

void sub_2180D60A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

int *MIL::Util::anonymous namespace::ProcessWithChunkedSampling(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, CC_SHA256_CTX *a5)
{
  *__error() = 0;
  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  v10 = open(v9, 0);
  if (v10 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v70, "File open for chunked sampling");
    v51 = std::string::append(&v67, ", samples: ");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v66, a3);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v66;
    }

    else
    {
      v53 = v66.__r_.__value_.__r.__words[0];
    }

    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v66.__r_.__value_.__l.__size_;
    }

    v55 = std::string::append(&v68, v53, size);
    v56 = *&v55->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v73);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = v10;
  v65 = v10;
  memset(&v73, 0, sizeof(v73));
  std::vector<char>::__append(&v73, 0x40000uLL);
  v59 = v11;
  v57 = a1;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::reserve(&v70, a3);
  v12 = 0x27CC06000uLL;
  if (a3)
  {
    v13 = 0;
    v14 = a3;
    do
    {
      v67.__r_.__value_.__r.__words[0] = v13 / a3;
      {
        v68.__r_.__value_.__r.__words[0] = &v69;
      }

      {
        v68.__r_.__value_.__r.__words[0] = &v69;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v70, &v67);
      v13 += a2;
      --v14;
    }

    while (v14);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v16 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__equal_to &>(v70, v71);
  v18 = v70;
  v17 = v71;
  if (v16 != v71)
  {
    v17 = v16;
    v71 = v16;
  }

  if (v70 != v17)
  {
    v19 = 0;
    v20 = -1;
    v58 = a2;
    do
    {
      v21 = *v18;
      if (a2 - *v18 >= a4)
      {
        v22 = a4;
      }

      else
      {
        v22 = a2 - *v18;
      }

      if (v21 < v20 || v22 + v21 > v19)
      {
        {
          v68.__r_.__value_.__r.__words[0] = &v69;
        }

        v24 = *(v12 + 680);
        {
          v68.__r_.__value_.__r.__words[0] = &v69;
        }

        v25 = a2;
        v26 = v12;
        v20 = v21 / v24 * *(v12 + 680);
        if (v25 - v20 >= 0x40000)
        {
          v27 = 0x40000;
        }

        else
        {
          v27 = v25 - v20;
        }

        if (lseek(v59, v20, 0) == -1)
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v68, "File seek");
          std::to_string(&v63, v20);
          v33 = std::string::insert(&v63, 0, "failed to seek to offset ");
          v34 = *&v33->__r_.__value_.__l.__data_;
          v64.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&v64.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = std::string::append(&v64, " in ");
          v36 = *&v35->__r_.__value_.__l.__data_;
          v66.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
          *&v66.__r_.__value_.__l.__data_ = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          if ((v62 & 0x80u) == 0)
          {
            v37 = v61;
          }

          else
          {
            v37 = v61[0];
          }

          if ((v62 & 0x80u) == 0)
          {
            v38 = v62;
          }

          else
          {
            v38 = v61[1];
          }

          v39 = std::string::append(&v66, v37, v38);
          v40 = *&v39->__r_.__value_.__l.__data_;
          v67.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&v67.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v32, &v69);
          __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v28 = read(v59, v73.__begin_, v27);
        v29 = v28;
        if (v28 <= 0)
        {
          std::to_string(&v66, v27);
          v41 = std::string::insert(&v66, 0, "failed to read ");
          v42 = *&v41->__r_.__value_.__l.__data_;
          v67.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
          *&v67.__r_.__value_.__l.__data_ = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          v43 = std::string::append(&v67, " bytes at offset ");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v68.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v68.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v64, v20);
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &v64;
          }

          else
          {
            v45 = v64.__r_.__value_.__r.__words[0];
          }

          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v46 = v64.__r_.__value_.__l.__size_;
          }

          v47 = std::string::append(&v68, v45, v46);
          v48 = *&v47->__r_.__value_.__l.__data_;
          v69.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
          *&v69.__r_.__value_.__l.__data_ = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (!v29)
          {
            std::string::append(&v69, " (unexpected end of file)");
          }

          v49 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v67, "File read");
          std::runtime_error::runtime_error(v49, &v68);
          __cxa_throw(v49, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v19 = v28 + v20;
        v12 = v26;
        a2 = v58;
      }

      if (v19 - v21 >= v22)
      {
        v30 = v22;
      }

      else
      {
        v30 = v19 - v21;
      }

      if (v30)
      {
        CC_SHA256_Update(a5, &v73.__begin_[v21 - v20], v30);
      }

      ++v18;
    }

    while (v18 != v17);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73.__begin_)
  {
    v73.__end_ = v73.__begin_;
    operator delete(v73.__begin_);
  }
}

void sub_2180D6768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, int a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  if (*(v56 - 137) < 0)
  {
    operator delete(*(v56 - 160));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (*(v56 - 113) < 0)
  {
    operator delete(*(v56 - 136));
    if ((v54 & 1) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }
  }

  else if (!v54)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v55);
  goto LABEL_16;
}

void sub_2180D6A40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v46 - 113) < 0)
  {
    operator delete(*(v46 - 136));
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
    if ((v44 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v44)
  {
LABEL_14:
    __cxa_end_catch();
    JUMPOUT(0x2180D6BB4);
  }

  __cxa_free_exception(v45);
  goto LABEL_14;
}

void sub_2180D6B64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v38);
  JUMPOUT(0x2180D6BA4);
}

uint64_t MIL::Util::anonymous namespace::CreateFileSizeContext(unint64_t this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  if (this >> 30)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "file size: ", 11);
    v3 = MEMORY[0x21CEAFB00](v2, vcvtd_n_f64_u64(this, 0x1EuLL));
    v4 = " GB";
LABEL_7:
    v7 = 3;
    goto LABEL_8;
  }

  if (this >= 0x100000)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "file size: ", 11);
    v3 = MEMORY[0x21CEAFB00](v5, vcvtd_n_f64_u64(this, 0x14uLL));
    v4 = " MB";
    goto LABEL_7;
  }

  if (this >= 0x400)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "file size: ", 11);
    v3 = MEMORY[0x21CEAFB00](v6, vcvtd_n_f64_u64(this, 0xAuLL));
    v4 = " KB";
    goto LABEL_7;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "file size: ", 11);
  v3 = MEMORY[0x21CEAFB40](v9, this);
  v4 = " bytes";
  v7 = 6;
LABEL_8:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v7);
  std::stringbuf::str();
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](&v14);
}

void sub_2180D6DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *MIL::Util::anonymous namespace::ProcessWithMemoryMapping(std::string const&,unsigned long,MIL::Util::anonymous namespace::SHA256Hasher &)::MemoryMapGuard::~MemoryMapGuard(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (v2 + 1 >= 2 && munmap(v2, a1[1]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = __error();
  }

  return a1;
}

void sub_2180D6E9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

int *MIL::Util::anonymous namespace::ProcessWithMemoryMapping(std::string const&,unsigned long,MIL::Util::anonymous namespace::SHA256Hasher &)::FileDescriptorGuard::~FileDescriptorGuard(int *a1)
{
  v2 = *a1;
  if (v2 != -1)
  {
    close(v2);
  }

  return a1;
}

int *MIL::Util::anonymous namespace::ProcessWithChunkedSampling(std::string const&,unsigned long,unsigned long,unsigned long,MIL::Util::anonymous namespace::SHA256Hasher &)::FileDescriptorGuard::~FileDescriptorGuard(int *a1)
{
  v2 = *a1;
  if (v2 != -1)
  {
    close(v2);
  }

  return a1;
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
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

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void MIL::Util::OnScopeExit::~OnScopeExit(MIL::Util::OnScopeExit *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this);
}

void sub_2180D70BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2180D7094);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

BOOL MIL::Util::OpMatchesPattern(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 16);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = (v3 + 2);
    if (*(v3 + 39) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 23) >= 0 ? a1 : *a1;
  }

  while (fnmatch(v4, v5, 0));
  return v3 != 0;
}

uint64_t MIL::Util::IsConstexprOpTakingInputs(MIL::Util *this, const MIL::IROperator *a2)
{
  result = (*(*this + 104))(this, a2);
  if (result)
  {
    return (*(*this + 24))(this) != 0;
  }

  return result;
}

uint64_t MIL::Util::ValidTensorDataTypesStr(MIL::Util *this)
{
  v1 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  ValidTensorDataTypes = MIL::GetValidTensorDataTypes(v1);
  if (v3)
  {
    v4 = ValidTensorDataTypes;
    v5 = 4 * v3;
    v6 = "";
    do
    {
      v7 = *v4;
      v8 = strlen(v6);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v6, v8);
      MIL::IRDataTypeToString(v7, __p);
      if ((v15 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v15 & 0x80u) == 0)
      {
        v11 = v15;
      }

      else
      {
        v11 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
      v6 = ", ";
      v5 -= 4;
    }

    while (v5);
  }

  std::stringbuf::str();
  v16[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v12;
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x21CEAFDA0](&v21);
}

void sub_2180D7448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x277D82818]);
  MEMORY[0x21CEAFDA0](&a28);
  _Unwind_Resume(a1);
}

void sub_2180D747C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2180D7458);
}

uint64_t MIL::Util::ApplyModelPath(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 23);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v4)
  {
    v6 = *(result + 8);
  }

  else
  {
    v6 = *(result + 23);
  }

  v7 = 11;
  if (v6 < 0xB)
  {
    v7 = v6;
  }

  if (v6)
  {
    v8 = &v5[v7];
    v9 = v5;
    v10 = v8;
    do
    {
      if (*v9 == 64)
      {
        v11 = 1u;
        while (v11 != 11)
        {
          if (&v9[v11] == v8)
          {
            goto LABEL_20;
          }

          v12 = v9[v11];
          v13 = aModelPath_0[v11++];
          if (v12 != v13)
          {
            goto LABEL_12;
          }
        }

        v10 = v9;
      }

LABEL_12:
      ++v9;
    }

    while (v9 != v8);
LABEL_20:
    if (v10 != v8 && v10 == v5)
    {
      v14 = *(a2 + 23);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a2 + 8);
      }

      if (v14)
      {
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v18, "@model_path", 0);
      }

      exception = __cxa_allocate_exception(0x48uLL);
      v17 = a3[1];
      *&v20 = *a3;
      *(&v20 + 1) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v19, "Cannot interpret @model_path when ModelPath is unset");
      MIL::ParseError::ParseError(exception, &v20, v19, 109);
    }
  }

  return result;
}

uint64_t MIL::Util::ApplyModelPath(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 23);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v4)
  {
    v6 = *(result + 8);
  }

  else
  {
    v6 = *(result + 23);
  }

  v7 = 11;
  if (v6 < 0xB)
  {
    v7 = v6;
  }

  if (v6)
  {
    v8 = result;
    v9 = &v5[v7];
    v10 = v5;
    v11 = v9;
    do
    {
      if (*v10 == 64)
      {
        v12 = 1u;
        while (v12 != 11)
        {
          if (&v10[v12] == v9)
          {
            goto LABEL_20;
          }

          v13 = v10[v12];
          v14 = aModelPath_0[v12++];
          if (v13 != v14)
          {
            goto LABEL_12;
          }
        }

        v11 = v10;
      }

LABEL_12:
      ++v10;
    }

    while (v10 != v9);
LABEL_20:
    if (v11 != v9 && v11 == v5)
    {
      v15 = *(a3 + 23);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a3 + 8);
      }

      if (v15)
      {
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v17, "@model_path", 0);
      }

      __cxa_allocate_exception(0x48uLL);
      MIL::TextLocationFromScannerLocation(a2, v8);
    }
  }

  return result;
}

void sub_2180D7A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::locale a23, std::__shared_weak_count *a24)
{
  if (*(v26 - 49) < 0)
  {
    operator delete(*(v26 - 72));
  }

  v28 = *(v26 - 40);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v25)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v24);
  goto LABEL_10;
}

void MIL::Util::ReplaceModelPaths(std::string *__str, void *a2)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v2 = a2 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return;
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  p_size = &__str->__r_.__value_.__l.__size_;
  if ((size & 0x80u) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  while (1)
  {
    v9 = *(v3 + 55);
    if (v9 < 0)
    {
      break;
    }

    if (*(v3 + 55))
    {
      goto LABEL_11;
    }

LABEL_38:
    v26 = v3[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v3[2];
        v25 = *v27 == v3;
        v3 = v27;
      }

      while (!v25);
    }

    v3 = v27;
    if (v27 == v2)
    {
      return;
    }
  }

  if (!v3[5])
  {
    goto LABEL_38;
  }

LABEL_11:
  v10 = (v3 + 4);
  if (v9 >= 0)
  {
    v11 = *(v3 + 55);
  }

  else
  {
    v10 = v3[4];
    v11 = v3[5];
  }

  if (size >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = size;
  }

  v13 = v8 + v12;
  if (v12)
  {
    v16 = *v10;
    v14 = v10 + 1;
    v15 = v16;
    v17 = v8;
    v18 = (v8 + v12);
    do
    {
      v19 = &v17->__r_.__value_.__s.__data_[1];
      while (v17->__r_.__value_.__s.__data_[0] != v15)
      {
        v17 = (v17 + 1);
        ++v19;
        if (v17 == v13)
        {
          goto LABEL_32;
        }
      }

      v20 = v11 - 1;
      v21 = v14;
      while (v20)
      {
        if (v19 == v13)
        {
          goto LABEL_32;
        }

        v23 = *v19++;
        v22 = v23;
        v24 = *v21++;
        --v20;
        if (v22 != v24)
        {
          goto LABEL_29;
        }
      }

      v18 = v17;
LABEL_29:
      v17 = (v17 + 1);
    }

    while (v17 != v13);
  }

  else
  {
    v18 = v8;
  }

LABEL_32:
  v25 = v18 != v13 || v11 == 0;
  if (!v25 || v18 != v8)
  {
    goto LABEL_38;
  }

  std::string::basic_string(&__stra, __str, v11, 0xFFFFFFFFFFFFFFFFLL, &v37);
  if ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_stra = &__stra;
  }

  else
  {
    p_stra = __stra.__r_.__value_.__r.__words[0];
  }

  if (p_stra->__r_.__value_.__s.__data_[0] == 47)
  {
    std::string::basic_string(&v37, &__stra, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v36);
    if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__stra.__r_.__value_.__l.__data_);
    }

    __stra = v37;
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, "/");
  v29 = std::string::insert(&v36, 0, "@model_path");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &__stra;
  }

  else
  {
    v31 = __stra.__r_.__value_.__r.__words[0];
  }

  if ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(__stra.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = __stra.__r_.__value_.__l.__size_;
  }

  v33 = std::string::append(&v37, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v39[0] = v33->__r_.__value_.__l.__size_;
  *(v39 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  __str->__r_.__value_.__r.__words[0] = v34;
  *p_size = v39[0];
  *(p_size + 7) = *(v39 + 7);
  *(&__str->__r_.__value_.__s + 23) = v35;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }
}

void sub_2180D7DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::GetBaseAndPrepIntStringForParse(std::string *a1)
{
  v2 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  v3 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    if (a1->__r_.__value_.__l.__size_)
    {
      v5 = *a1->__r_.__value_.__l.__data_ == 45;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    if (*(&a1->__r_.__value_.__s + 23))
    {
      v4 = a1->__r_.__value_.__s.__data_[0] == 45;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = a1;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  v8 = &size[-v5];
  if (size >= v5 && v8 >= 2)
  {
    v9 = &size[v6];
    v10 = v6 + v5;
    do
    {
      v11 = memchr(v10, 48, v8 - 1);
      if (!v11)
      {
        break;
      }

      if (*v11 == 30768)
      {
        if (v11 != v9 && v11 - v6 == v5)
        {
LABEL_37:
          std::string::erase(a1, v5, 2uLL);
          return 16;
        }

        break;
      }

      v10 = v11 + 1;
      v8 = v9 - v10;
    }

    while (v9 - v10 >= 2);
  }

  v12 = a1->__r_.__value_.__r.__words[0];
  v13 = a1->__r_.__value_.__l.__size_;
  if ((v3 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v3 & 0x80u) == 0)
  {
    v15 = v2;
  }

  else
  {
    v15 = a1->__r_.__value_.__l.__size_;
  }

  v16 = &v15[-v5];
  if (v15 >= v5 && v16 >= 2)
  {
    v17 = &v15[v14];
    v18 = v14 + v5;
    v19 = &v15[-v5];
    do
    {
      v20 = memchr(v18, 48, (v19 - 1));
      if (!v20)
      {
        break;
      }

      if (*v20 == 22576)
      {
        if (v20 != v17 && v20 - v14 == v5)
        {
          goto LABEL_37;
        }

        break;
      }

      v18 = v20 + 1;
      v19 = (v17 - v18);
    }

    while (v17 - v18 >= 2);
    v22 = v14 + v5;
    v23 = v16;
    do
    {
      v24 = memchr(v22, 48, v23 - 1);
      if (!v24)
      {
        break;
      }

      if (*v24 == 25136)
      {
        if (v24 != v17 && v24 - v14 == v5)
        {
LABEL_52:
          v21 = 2;
          std::string::erase(a1, v5, 2uLL);
          return v21;
        }

        break;
      }

      v22 = v24 + 1;
      v23 = v17 - v22;
    }

    while (v17 - v22 >= 2);
    v25 = v14 + v5;
    do
    {
      v26 = memchr(v25, 48, v16 - 1);
      if (!v26)
      {
        break;
      }

      if (*v26 == 16944)
      {
        if (v26 == v17 || v26 - v14 != v5)
        {
          break;
        }

        goto LABEL_52;
      }

      v25 = v26 + 1;
      v16 = v17 - v25;
    }

    while (v17 - v25 >= 2);
  }

  if ((v3 & 0x80) == 0)
  {
    if (v3)
    {
      v27 = v12;
      goto LABEL_58;
    }

    return 10;
  }

  if (!v13)
  {
    return 10;
  }

  v27 = *v12;
LABEL_58:
  if (v27 == 48)
  {
    return 8;
  }

  else
  {
    return 10;
  }
}

float MIL::Util::stof(const std::string *a1, uint64_t a2, uint64_t a3)
{
  *__error() = 0;
  v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 <= 1 || a1->__r_.__value_.__s.__data_[v6 - 1] != 102)
    {
      v23.__r_.__value_.__r.__words[0] = 0;
      v10 = a1;
      goto LABEL_21;
    }

    v7 = a1->__r_.__value_.__r.__words[0];
    v8 = a1;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    goto LABEL_8;
  }

  v8 = a1->__r_.__value_.__r.__words[0];
  size = a1->__r_.__value_.__l.__size_;
  if (size > 1)
  {
    v7 = a1->__r_.__value_.__r.__words[0];
    if (v8[size - 1] == 102)
    {
LABEL_8:
      v11 = v8[size - 2];
      if (v11 < 0)
      {
        v8 = v7;
      }

      else
      {
        v12 = *(MEMORY[0x277D85DE0] + 4 * v11 + 60);
        v8 = v7;
        if ((v12 & 0x400) != 0)
        {
          if ((v6 & 0x80000000) != 0)
          {
            v6 = a1->__r_.__value_.__l.__size_;
          }

          std::string::basic_string(&v23, a1, 0, v6 - 1, &v22);
          v22 = 0;
          if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v23;
          }

          else
          {
            v13 = v23.__r_.__value_.__r.__words[0];
          }

          v14 = strtof_l(v13, &v22, 0);
          v15 = v22;
          if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v16 = (v23.__r_.__value_.__r.__words[0] + v23.__r_.__value_.__l.__size_);
            operator delete(v23.__r_.__value_.__l.__data_);
          }

          else
          {
            v16 = &v23 + SHIBYTE(v23.__r_.__value_.__r.__words[2]);
          }

          v19 = v15 == v16;
          goto LABEL_27;
        }
      }
    }
  }

  v23.__r_.__value_.__r.__words[0] = 0;
  if ((v6 & 0x80000000) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = v8;
  }

LABEL_21:
  v14 = strtof_l(v10, &v23.__r_.__value_.__l.__data_, 0);
  v17 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v17 & 0x80u) == 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v17 & 0x80u) != 0)
  {
    v17 = a1->__r_.__value_.__l.__size_;
  }

  v19 = v23.__r_.__value_.__r.__words[0] == v18 + v17;
LABEL_27:
  v20 = v19;
  if (*__error() == 34 && (v14 > 1.1755e-38 || v14 == 0.0 || v14 < -1.1755e-38))
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a2, a3);
  }

  if (!*__error())
  {
    if (v20)
    {
      return v14;
    }

LABEL_38:
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a2, a3);
  }

  if (((*__error() == 34) & v20) == 0)
  {
    goto LABEL_38;
  }

  return v14;
}

void sub_2180D8368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  _Unwind_Resume(exception_object);
}

double MIL::Util::stod(const std::string *a1, uint64_t a2, uint64_t a3)
{
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (size <= 1)
    {
      goto LABEL_9;
    }

    v8 = a1->__r_.__value_.__r.__words[0];
    v7 = *(a1->__r_.__value_.__r.__words[0] + size - 1);
  }

  else
  {
    if (size <= 1)
    {
      goto LABEL_9;
    }

    v7 = a1->__r_.__value_.__s.__data_[size - 1];
    v8 = a1;
  }

  if (v7 == 102)
  {
    v9 = v8->__r_.__value_.__s.__data_[size - 2];
    if ((v9 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x400) != 0)
    {
      return MIL::Util::stof(a1, a2, a3);
    }
  }

LABEL_9:
  *__error() = 0;
  v16 = 0;
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = a1->__r_.__value_.__r.__words[0];
  }

  v11 = strtod_l(v10, &v16, 0);
  if (*__error() == 34)
  {
    if (v11 > 2.22507386e-308 || (v11 != 0.0 ? (v12 = v11 < -2.22507386e-308) : (v12 = 1), v12))
    {
      __cxa_allocate_exception(0x48uLL);
      MIL::TextLocationFromScannerLocation(a2, a3);
    }
  }

  if (*__error() && *__error() != 34)
  {
    goto LABEL_28;
  }

  v13 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  v14 = (v13 & 0x80u) == 0 ? a1 : a1->__r_.__value_.__r.__words[0];
  if ((v13 & 0x80u) != 0)
  {
    v13 = a1->__r_.__value_.__l.__size_;
  }

  if (v16 != (v14 + v13))
  {
LABEL_28:
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a2, a3);
  }

  return v11;
}

void sub_2180D8664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v30 = *(v28 - 72);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::stoui8(const std::string *a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(result) = MIL::Util::stoi(a1, a2);
  if (result >= 0x100)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a3, a4);
  }

  return result;
}

void sub_2180D89D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    if ((v20 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v20)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v19);
  goto LABEL_10;
}

unint64_t MIL::Util::stoull(std::string *__str, int __base, uint64_t a3, uint64_t a4)
{
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  if (v6->__r_.__value_.__s.__data_[0] == 45)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a3, a4);
  }

  return std::stoull(__str, 0, __base);
}

void sub_2180D8EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v30 = *(v28 - 72);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v26)
  {
LABEL_10:
    __cxa_end_catch();
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void MIL::Util::ValidateIsIdentifier()
{
  MIL::Scanner::Make();
}

{
  MIL::Scanner::Make();
}

void sub_2180D90C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  UnknownLocationImpl::~UnknownLocationImpl(&a16);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v24)
  {
LABEL_10:
    UnknownLocationImpl::~UnknownLocationImpl((v25 - 72));
    v27 = *(v25 - 40);
    *(v25 - 40) = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v23);
  goto LABEL_10;
}

void sub_2180D92A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  UnknownLocationImpl::~UnknownLocationImpl(&a15);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  UnknownLocationImpl::~UnknownLocationImpl(&a21);
  v25 = *(v23 - 40);
  *(v23 - 40) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

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

void sub_2180D93A0(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
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

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(this, a2, a3);
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
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v3 + 1, a3), v7 == v5))
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
            v18 = v17 + v16 + 16 * (v15 + v6 + v14);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_2180DAC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_2180DAE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_47;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_2180DB420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_2180DB50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

std::string *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, std::__wrap_iter<const char *> a2, std::__wrap_iter<const char *> a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v18, a2, a3, a4, __m);
  memset(&v17.__match_.__prefix_, 0, 17);
  memset(&v17.__match_.__suffix_, 0, 17);
  v17.__match_.__ready_ = 0;
  v17.__match_.__position_start_.__i_ = 0;
  memset(&v17.__match_, 0, 41);
  memset(&v17, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::string::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v18.__match_.__prefix_.first.__i_;
        v15 = v18.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v18.__match_, a1, a5, &a5[v11], v6);
      v13 = v18.__match_.__suffix_.first.__i_;
      v12 = v18.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v18);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (v17.__match_.__matches_.__begin_)
  {
    v17.__match_.__matches_.__end_ = v17.__match_.__matches_.__begin_;
    operator delete(v17.__match_.__matches_.__begin_);
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_2180DBFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

std::string *std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            v36 = *v35;
            v37 = *(v35 + 8);
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = *(v22 + 8);
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    pregex = this->__pregex_;
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v8, v10, &__p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, &__p, (flags & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    goto LABEL_16;
  }

  v12 = this->__end_.__i_;
  if (v12 == v7)
  {
LABEL_16:
    if (begin)
    {
      this->__match_.__matches_.__end_ = begin;
      operator delete(begin);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
    this->__match_.__prefix_.first.__i_ = 0;
    this->__match_.__prefix_.second.__i_ = 0;
    this->__match_.__prefix_.matched = 0;
    this->__match_.__suffix_.first.__i_ = 0;
    this->__match_.__suffix_.second.__i_ = 0;
    this->__match_.__suffix_.matched = 0;
    this->__match_.__position_start_.__i_ = 0;
    return this;
  }

  v13 = this->__pregex_;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_2180DC4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(std::regex_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, std::regex_constants::match_flag_type __m)
{
  v5 = __m;
  this->__begin_ = __a;
  this->__end_ = __b;
  this->__pregex_ = __re;
  this->__flags_ = __m;
  *&this->__match_.__matches_.__begin_ = 0u;
  p_match = &this->__match_;
  this->__match_.__prefix_.first.__i_ = 0;
  this->__match_.__prefix_.second.__i_ = 0;
  this->__match_.__prefix_.matched = 0;
  this->__match_.__suffix_.first.__i_ = 0;
  this->__match_.__suffix_.second.__i_ = 0;
  this->__match_.__suffix_.matched = 0;
  this->__match_.__ready_ = 0;
  this->__match_.__position_start_.__i_ = 0;
  *&this->__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, &__p, __m);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}

void sub_2180DC5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_2180DC710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::PossibleStringValuesConstraintsImpl::~PossibleStringValuesConstraintsImpl(_anonymous_namespace_::PossibleStringValuesConstraintsImpl *this)
{
  *this = &unk_2829E9670;
  v1 = (this + 8);
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2829E9670;
  v2 = (this + 8);
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CEAFEA0](this, 0xA1C4030951706);
}

void anonymous namespace::PossibleStringValuesConstraintsImpl::Check(_anonymous_namespace_::PossibleStringValuesConstraintsImpl *this@<X0>, MIL::IRTensorValueType **a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
LABEL_66:
    MIL::ValidationResult::ValidationResult(a3);
    return;
  }

  v50 = *(MEMORY[0x277D82828] + 24);
  v51 = *MEMORY[0x277D82828];
  while (1)
  {
    v7 = *v4;
    v64 = 0;
    if (!MIL::ValidationResult::IsGood(a3))
    {
      return;
    }

    MIL::ValidationResult::~ValidationResult(a3);
    if (!v64)
    {
      goto LABEL_56;
    }

    if ((*(*v64 + 88))(v64) != 3)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      v38 = LocationPtr[1];
      v62 = *LocationPtr;
      v63 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(**v4 + 48))(&v69);
      v39 = std::string::append(&v69, " is not a string tensor.");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v61 = v39->__r_.__value_.__r.__words[2];
      *v60 = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a3, &v62, 319, v60);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      v41 = v63;
      if (v63)
      {
        goto LABEL_74;
      }

      return;
    }

    if (!(*(**v4 + 32))(*v4, a2))
    {
      break;
    }

    v8 = MIL::IRValue::TryGetScalar<std::string>();
    if (!v8)
    {
      v46 = MIL::IRObject::GetLocationPtr(a2);
      v47 = v46[1];
      v54 = *v46;
      v55 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(**v4 + 48))(&v73);
      v48 = std::string::insert(&v73, 0, "String value missing for ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v69, 46);
      v53 = v69;
      memset(&v69, 0, sizeof(v69));
      MIL::ValidationResult::ValidationResult(a3, &v54, 319, &v53);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v41 = v55;
      if (!v55)
      {
        return;
      }

LABEL_74:
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      return;
    }

    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      v52.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&v52.__r_.__value_.__l.__data_ = v9;
    }

    if ((v4[7] & 1) == 0)
    {
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = (&v52 + HIBYTE(v52.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v35 = (v52.__r_.__value_.__r.__words[0] + v52.__r_.__value_.__l.__size_);
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v52;
      }

      else
      {
        v36 = v52.__r_.__value_.__r.__words[0];
      }

      while (v36 != v35)
      {
        v36->__r_.__value_.__s.__data_[0] = __tolower(v36->__r_.__value_.__s.__data_[0]);
        v36 = (v36 + 1);
      }
    }

    v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v4 + 2, &v52.__r_.__value_.__l.__data_);
    if (!v10)
    {
      v11 = *v4;
      v12 = v4[4];
      memset(&v73, 0, sizeof(v73));
      v13 = 0;
      if (v12)
      {
        v14 = v12;
        do
        {
          ++v13;
          v14 = *v14;
        }

        while (v14);
      }

      std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(&v73, v12, 0, v13);
      v15 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v73.__r_.__value_.__l.__size_ - v73.__r_.__value_.__r.__words[0]) >> 3));
      if (v73.__r_.__value_.__l.__size_ == v73.__r_.__value_.__r.__words[0])
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_, __p, v16, 1);
      std::ostringstream::basic_ostringstream[abi:ne200100](&v69);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "Unexpected value for ", 21);
      (*(*v11 + 48))(__p, v11);
      if ((v68 & 0x80u) == 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      if ((v68 & 0x80u) == 0)
      {
        v19 = v68;
      }

      else
      {
        v19 = __p[1];
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 2);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v52;
      }

      else
      {
        v22 = v52.__r_.__value_.__r.__words[0];
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v52.__r_.__value_.__l.__size_;
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " not in (", 10);
      if (v68 < 0)
      {
        operator delete(__p[0]);
      }

      v26 = v73.__r_.__value_.__l.__size_;
      v25 = v73.__r_.__value_.__r.__words[0];
      if (v73.__r_.__value_.__r.__words[0] != v73.__r_.__value_.__l.__size_)
      {
        v27 = 1;
        do
        {
          if ((v27 & 1) == 0)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, ", ", 2);
          }

          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "", 1);
          v29 = *(v25 + 23);
          if (v29 >= 0)
          {
            v30 = v25;
          }

          else
          {
            v30 = *v25;
          }

          if (v29 >= 0)
          {
            v31 = *(v25 + 23);
          }

          else
          {
            v31 = *(v25 + 8);
          }

          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
          LOBYTE(__p[0]) = 34;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, __p, 1);
          v27 = 0;
          v25 += 24;
        }

        while (v25 != v26);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, ").", 2);
      v33 = MIL::IRObject::GetLocationPtr(a2);
      v34 = v33[1];
      v65 = *v33;
      v66 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::stringbuf::str();
      MIL::ValidationResult::ValidationResult(a3, &v65, 319, __p);
      if (v68 < 0)
      {
        operator delete(__p[0]);
      }

      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      v69.__r_.__value_.__r.__words[0] = v51;
      *(v69.__r_.__value_.__r.__words + *(v51 - 24)) = v50;
      v69.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
      if (v71 < 0)
      {
        operator delete(v70);
      }

      v69.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v69.__r_.__value_.__r.__words[2]);
      std::ostream::~ostream();
      MEMORY[0x21CEAFDA0](&v72);
      v69.__r_.__value_.__r.__words[0] = &v73;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v69);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (!v10)
    {
      return;
    }

LABEL_56:
    v4 += 8;
    if (v4 == v5)
    {
      goto LABEL_66;
    }
  }

  v42 = MIL::IRObject::GetLocationPtr(a2);
  v43 = v42[1];
  v58 = *v42;
  v59 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**v4 + 48))(&v69);
  v44 = std::string::append(&v69, " has no value.");
  v45 = *&v44->__r_.__value_.__l.__data_;
  v57 = v44->__r_.__value_.__r.__words[2];
  *v56 = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a3, &v58, 319, v56);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v41 = v59;
  if (v59)
  {
    goto LABEL_74;
  }
}

void sub_2180DD190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (*(v61 - 89) < 0)
  {
    operator delete(*(v61 - 112));
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::PossibleStringValuesConstraintsImpl::Add(uint64_t *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v18 = a4;
  if (a4)
  {
    v7 = a1[2];
    if (v7 >= a1[3])
    {
      result = std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__emplace_back_slow_path<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL &>(a1 + 1, a2, a3, &v18);
    }

    else
    {
      *v7 = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v7 + 16, a3);
      *(v7 + 56) = a4;
      result = v7 + 64;
    }

    a1[2] = result;
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v17 = 1065353216;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(v16, a3[3]);
    for (i = a3[2]; i; i = *i)
    {
      if (*(i + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(i + 16), *(i + 24));
      }

      else
      {
        __p = *(i + 16);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v11 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      while (p_p != v11)
      {
        p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
        p_p = (p_p + 1);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v16, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v13 = a1[2];
    if (v13 >= a1[3])
    {
      v14 = std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__emplace_back_slow_path<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL &>(a1 + 1, a2, v16, &v18);
    }

    else
    {
      *v13 = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v13 + 16, v16);
      *(v13 + 56) = v18;
      v14 = v13 + 64;
    }

    a1[2] = v14;
    return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v16);
  }

  return result;
}

void std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 64)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(i - 48);
    v5 = *(i - 56);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  *(a1 + 8) = a2;
}

void anonymous namespace::GetTargetTensorType(_anonymous_namespace_ *this@<X0>, const MIL::IRTensorValueType **a2@<X1>, const MIL::IROperation *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v9 = (*(*a3 + 24))(a3);
  if (v9)
  {
    v10 = (*(*v9 + 24))(v9);
    if (v10)
    {
      *this = v10;
LABEL_5:

      MIL::ValidationResult::ValidationResult(a4);
      return;
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    v12 = LocationPtr[1];
    v22 = *LocationPtr;
    v23 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a3 + 48))(&v25, a3);
    v13 = std::string::append(&v25, " is not a tensor.");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a4, &v22, 319, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v15 = v23;
    if (v23)
    {
LABEL_15:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    if ((*(*a3 + 16))(a3))
    {
      goto LABEL_5;
    }

    v16 = MIL::IRObject::GetLocationPtr(a2);
    v17 = v16[1];
    v27 = *v16;
    v28 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a3 + 48))(&v24, a3);
    v18 = std::string::insert(&v24, 0, "Could not find type of ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::string::push_back(&v25, 46);
    v26 = v25;
    memset(&v25, 0, sizeof(v25));
    MIL::ValidationResult::ValidationResult(a4, &v27, 319, &v26);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v15 = v28;
    if (v28)
    {
      goto LABEL_15;
    }
  }
}

void sub_2180DD82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180DD88C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (!a16)
  {
    JUMPOUT(0x2180DD884);
  }

  JUMPOUT(0x2180DD880);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180DD934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string*>(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(v4, v6[2], v6[3]);
        v4 = v12;
      }

      else
      {
        v7 = *(v6 + 1);
        v4->__r_.__value_.__r.__words[2] = v6[4];
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = *v6;
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, const void **a2)
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
    operator new();
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

uint64_t std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::__emplace_back_slow_path<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL &>(uint64_t *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v4 = (a1[1] - *a1) >> 6;
  v5 = v4 + 1;
  if ((v4 + 1) >> 58)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[2] - *a1;
  if (v9 >> 5 > v5)
  {
    v5 = v9 >> 5;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFC0)
  {
    v10 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>>(a1, v10);
  }

  v11 = v4 << 6;
  v18 = 0;
  v19 = v11;
  *(&v20 + 1) = 0;
  *v11 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v11 + 16, a3);
  *(v11 + 56) = *a4;
  *&v20 = v11 + 64;
  v12 = a1[1];
  v13 = v11 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::~__split_buffer(&v18);
  return v17;
}

void sub_2180DDDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2 + 16;
    do
    {
      *v7 = *(v8 - 16);
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v7 + 16, v8);
      *(v7 + 56) = *(v8 + 40);
      v7 = v14 + 64;
      v14 += 64;
      v9 = v8 + 48;
      v8 += 64;
    }

    while (v9 != a3);
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 16;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v4);
      v5 = *(v4 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = v4 + 48;
      v4 += 64;
    }

    while (v6 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::reverse_iterator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>,std::reverse_iterator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>,std::reverse_iterator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>,std::reverse_iterator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v6 - 48);
      v7 = *(v6 - 56);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v6 -= 64;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::unordered_set<std::string>,BOOL>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(i - 48);
    v4 = *(i - 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void anonymous namespace::TensorDTypeConstraintsImpl::~TensorDTypeConstraintsImpl(_anonymous_namespace_::TensorDTypeConstraintsImpl *this)
{
  *this = &unk_2829E96B8;
  v1 = (this + 8);
  std::vector<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2829E96B8;
  v2 = (this + 8);
  std::vector<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CEAFEA0](this, 0xA1C4030951706);
}

uint64_t anonymous namespace::TensorDTypeConstraintsImpl::Check@<X0>(_anonymous_namespace_::TensorDTypeConstraintsImpl *this@<X0>, MIL::IRValueType **a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  memset(v90, 0, sizeof(v90));
  v91 = 1065353216;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
LABEL_13:
    MIL::ValidationResult::ValidationResult(a3);
  }

  else
  {
    while (1)
    {
      v8 = *v4;
      v89 = 0;
      if (!MIL::ValidationResult::IsGood(a3))
      {
        break;
      }

      MIL::ValidationResult::~ValidationResult(a3);
      v9 = v89;
      if (v89)
      {
        v88 = 0;
        v10 = (*(*v89 + 24))(v89);
        if (v10)
        {
          DataType = (*(*v10 + 88))(v10);
        }

        else
        {
          v12 = MIL::IRValueType::TryCastAsMemoryLayoutType(v9);
          v13 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v12);
          if (v13)
          {
            DataType = MIL::IRTensorBufferValueType::GetDataType(v13);
          }

          else
          {
            v14 = MIL::IRValueType::TryCastAsMemoryLayoutType(v9);
            v15 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v14);
            if (!v15)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&v92);
              v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, "A pixel buffer is unexpected in '", 33);
              v62 = (*(*a2 + 8))(a2);
              v63 = (*(*v62 + 16))(v62);
              v64 = *(v63 + 23);
              if (v64 >= 0)
              {
                v65 = v63;
              }

              else
              {
                v65 = *v63;
              }

              if (v64 >= 0)
              {
                v66 = *(v63 + 23);
              }

              else
              {
                v66 = *(v63 + 8);
              }

              v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v65, v66);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ".", 1);
              LocationPtr = MIL::IRObject::GetLocationPtr(a2);
              v69 = LocationPtr[1];
              v86 = *LocationPtr;
              v87 = v69;
              if (v69)
              {
                atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              std::stringbuf::str();
              MIL::ValidationResult::ValidationResult(a3, &v86, 319, &v84);
              if (v85 < 0)
              {
                operator delete(v84);
              }

              if (v87)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v87);
              }

              v92.__first_ = *MEMORY[0x277D82828];
              *(&v92.__first_ + v92.__first_[-1].__r_.__value_.__r.__words[0]) = *(MEMORY[0x277D82828] + 24);
              v92.__begin_ = (MEMORY[0x277D82878] + 16);
              if (v94 < 0)
              {
                operator delete(v93);
              }

              v92.__begin_ = (MEMORY[0x277D82868] + 16);
              std::locale::~locale(&v92.__end_);
              std::ostream::~ostream();
              MEMORY[0x21CEAFDA0](v95);
              return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v90);
            }

            DataType = MIL::IRCircularBufferValueType::GetDataType(v15);
          }
        }

        v88 = DataType;
        v92.__first_ = (v4 + 16);
        __p[0] = &v88;
        v16 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<MIL::IRDataType&>>(v90, (v4 + 16));
        if ((v17 & 1) == 0 && *(v16 + 10) != v88)
        {
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v19 = *(this + 1);
          for (i = *(this + 2); v19 != i; v19 += 40)
          {
            v21 = *(v19 + 39);
            if (v21 >= 0)
            {
              v22 = *(v19 + 39);
            }

            else
            {
              v22 = *(v19 + 24);
            }

            v23 = *(v4 + 39);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v4 + 24);
            }

            if (v22 == v23)
            {
              v25 = v21 >= 0 ? (v19 + 16) : *(v19 + 16);
              v26 = v24 >= 0 ? (v4 + 16) : *(v4 + 16);
              if (!memcmp(v25, v26, v22))
              {
                (*(**v19 + 48))(__p);
                v27 = v82;
                if (v82 >= v83)
                {
                  v29 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3);
                  v30 = v29 + 1;
                  if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v83 - v81) >> 3) > v30)
                  {
                    v30 = 0x5555555555555556 * ((v83 - v81) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v83 - v81) >> 3) >= 0x555555555555555)
                  {
                    v31 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v31 = v30;
                  }

                  v92.__end_cap_.__value_ = &v81;
                  if (v31)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v81, v31);
                  }

                  v32 = 8 * ((v82 - v81) >> 3);
                  v33 = *__p;
                  *(v32 + 16) = v78[0];
                  *v32 = v33;
                  __p[1] = 0;
                  v78[0].__locale_ = 0;
                  __p[0] = 0;
                  v34 = 24 * v29 + 24;
                  v35 = (24 * v29 - (v82 - v81));
                  memcpy((v32 - (v82 - v81)), v81, v82 - v81);
                  v36 = v81;
                  v37 = v83;
                  v81 = v35;
                  v82 = v34;
                  v83 = 0;
                  v92.__end_ = v36;
                  v92.__end_cap_.__value_ = v37;
                  v92.__first_ = v36;
                  v92.__begin_ = v36;
                  std::__split_buffer<std::string>::~__split_buffer(&v92);
                  v82 = v34;
                  if (SHIBYTE(v78[0].__locale_) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                else
                {
                  v28 = *__p;
                  v82[2].__locale_ = v78[0];
                  *&v27->__locale_ = v28;
                  v82 = v27 + 3;
                }
              }
            }
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "In '", 4);
          v39 = (*(*a2 + 8))(a2);
          v40 = (*(*v39 + 16))(v39);
          v41 = *(v40 + 23);
          if (v41 >= 0)
          {
            v42 = v40;
          }

          else
          {
            v42 = *v40;
          }

          if (v41 >= 0)
          {
            v43 = *(v40 + 23);
          }

          else
          {
            v43 = *(v40 + 8);
          }

          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v42, v43);
          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "' operations, tensors", 21);
          std::ostringstream::basic_ostringstream[abi:ne200100](&v92);
          if (v82 != v81)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3);
            do
            {
              if (v46)
              {
                v48 = v47 - 1;
                if (v46 == v48)
                {
                  v49 = ", and ";
                }

                else
                {
                  v49 = ", ";
                }

                if (v46 == v48)
                {
                  v50 = 6;
                }

                else
                {
                  v50 = 2;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, v49, v50);
              }

              else
              {
                v96[0] = 32;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, v96, 1);
              }

              v51 = SHIBYTE(v81[v45].__r_.__value_.__r.__words[2]);
              if (v51 >= 0)
              {
                data = &v81[v45];
              }

              else
              {
                data = v81[v45].__r_.__value_.__l.__data_;
              }

              if (v51 >= 0)
              {
                size = HIBYTE(v81[v45].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v81[v45].__r_.__value_.__l.__size_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, data, size);
              ++v46;
              v47 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3);
              ++v45;
            }

            while (v46 < v47);
          }

          std::stringbuf::str();
          v92.__first_ = *MEMORY[0x277D82828];
          first = v92.__first_;
          v55 = *(MEMORY[0x277D82828] + 24);
          *(&v92.__first_ + v92.__first_[-1].__r_.__value_.__r.__words[0]) = v55;
          v92.__begin_ = (MEMORY[0x277D82878] + 16);
          if (v94 < 0)
          {
            operator delete(v93);
          }

          v92.__begin_ = (MEMORY[0x277D82868] + 16);
          std::locale::~locale(&v92.__end_);
          std::ostream::~ostream();
          MEMORY[0x21CEAFDA0](v95);
          if ((v76 & 0x80u) == 0)
          {
            v56 = v75;
          }

          else
          {
            v56 = v75[0];
          }

          if ((v76 & 0x80u) == 0)
          {
            v57 = v76;
          }

          else
          {
            v57 = v75[1];
          }

          v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v56, v57);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " must have the same data type.", 30);
          if (v76 < 0)
          {
            operator delete(v75[0]);
          }

          v59 = MIL::IRObject::GetLocationPtr(a2);
          v60 = v59[1];
          v73 = *v59;
          v74 = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::ValidationResult::ValidationResult(a3, &v73, 319, &v71);
          if (v72 < 0)
          {
            operator delete(v71);
          }

          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          __p[0] = first;
          *(__p + first[-1].__r_.__value_.__r.__words[0]) = v55;
          __p[1] = (MEMORY[0x277D82878] + 16);
          if (v79 < 0)
          {
            operator delete(v78[7].__locale_);
          }

          __p[1] = (MEMORY[0x277D82868] + 16);
          std::locale::~locale(v78);
          std::ostream::~ostream();
          MEMORY[0x21CEAFDA0](&v80);
          v92.__first_ = &v81;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v92);
          return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v90);
        }
      }

      v4 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v90);
}

void sub_2180DEA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  std::ostringstream::~ostringstream(&a70);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a64);
  _Unwind_Resume(a1);
}

void **anonymous namespace::TensorDTypeConstraintsImpl::Add(void **result, uint64_t *a2, __int128 *a3)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v21 = *a3;
  v22 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v6 = result[2];
  v7 = result[3];
  if (v6 >= v7)
  {
    v9 = (result + 1);
    v10 = v3[1];
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v10) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0x666666666666666)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    v23[4] = v3 + 1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>>(v9, v14);
    }

    v15 = 40 * v11;
    *v15 = v4;
    *(v15 + 8) = v5;
    *(v15 + 32) = v22;
    *(v15 + 16) = v21;
    v8 = 40 * v11 + 40;
    v16 = v3[1];
    v17 = v3[2] - v16;
    v18 = (40 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = v3[1];
    v3[1] = v18;
    v3[2] = v8;
    v20 = v3[3];
    v3[3] = 0;
    v23[2] = v19;
    v23[3] = v20;
    v23[0] = v19;
    v23[1] = v19;
    result = std::__split_buffer<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::~__split_buffer(v23);
  }

  else
  {
    *v6 = v4;
    *(v6 + 1) = v5;
    *(v6 + 4) = v22;
    *(v6 + 1) = v21;
    v8 = (v6 + 40);
  }

  v3[2] = v8;
  return result;
}

void anonymous namespace::TensorDTypeConstraintsImpl::AddParameter(uint64_t a1, uint64_t a2)
{
  *v2 = *a2;
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  MIL::Validation::OpParameterConstraintTarget::Make();
}

void sub_2180DEDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = *(v21 - 40);
  *(v21 - 40) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 40;
        std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void anonymous namespace::GetTargetTensorOrMemoryLayoutType(_anonymous_namespace_ *this@<X0>, const MIL::IRValueType **a2@<X1>, const MIL::IROperation *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v9 = (*(*a3 + 24))(a3);
  if (!v9)
  {
    if ((*(*a3 + 16))(a3))
    {
      goto LABEL_6;
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    v13 = LocationPtr[1];
    v28 = *LocationPtr;
    v29 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a3 + 48))(&v25, a3);
    v14 = std::string::insert(&v25, 0, "Could not find type of ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::string::push_back(&v26, 46);
    __p = v26;
    memset(&v26, 0, sizeof(v26));
    MIL::ValidationResult::ValidationResult(a4, &v28, 319, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v16 = v29;
    if (!v29)
    {
      return;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    return;
  }

  v10 = v9;
  v11 = (*(*v9 + 24))(v9);
  if (v11 || (v11 = MIL::IRValueType::TryCastAsMemoryLayoutType(v10)) != 0)
  {
    *this = v11;
LABEL_6:

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v17 = MIL::IRObject::GetLocationPtr(a2);
  v18 = v17[1];
  v23 = *v17;
  v24 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a3 + 48))(&v26, a3);
  v19 = std::string::append(&v26, " is not a tensor.");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v22 = v19->__r_.__value_.__r.__words[2];
  *v21 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a4, &v23, 319, v21);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v16 = v24;
  if (v24)
  {
    goto LABEL_18;
  }
}

void sub_2180DF22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::IRDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<MIL::IRDataType&>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRDataType>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<MIL::IRDataType&>>();
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

void sub_2180DF520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180DF5FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 40;
    std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::destroy[abi:ne200100](v4, i - 40);
  }
}

void std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::TensorRankValueConstraintsImpl::~TensorRankValueConstraintsImpl(_anonymous_namespace_::TensorRankValueConstraintsImpl *this)
{
  *this = &unk_2829E9768;
  v1 = (this + 8);
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2829E9768;
  v2 = (this + 8);
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CEAFEA0](this, 0xA1C4030951706);
}

void anonymous namespace::TensorRankValueConstraintsImpl::Check(_anonymous_namespace_::TensorRankValueConstraintsImpl *this@<X0>, MIL::IRTensorValueType **a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    while (1)
    {
      v42 = 0;
      if (!MIL::ValidationResult::IsGood(a3))
      {
        return;
      }

      MIL::ValidationResult::~ValidationResult(a3);
      if (v42)
      {
        v7 = MIL::IRTensorValueType::Rank(v42);
        v8 = v7;
        if (*(v4 + 16) > v7 || v7 > *(v4 + 24))
        {
          break;
        }
      }

      v4 += 32;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    (*(**v4 + 48))(&v38);
    v9 = std::string::append(&v38, " has invalid rank ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v37, v8);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v37;
    }

    else
    {
      v11 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v39, v11, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v40, ", expected ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v17 = *(v4 + 16);
    if (v17 == *(v4 + 24))
    {
      std::to_string(&v40, v17);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v40;
      }

      else
      {
        v18 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v40.__r_.__value_.__l.__size_;
      }

      std::string::append(&v41, v18, v19);
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      v20 = v40.__r_.__value_.__r.__words[0];
    }

    else
    {
      std::to_string(&v36, v17);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21.__i_ = &v36;
      }

      else
      {
        v21.__i_ = v36.__r_.__value_.__r.__words[0];
      }

      std::string::insert(&v36, v21, 91);
      v37 = v36;
      memset(&v36, 0, sizeof(v36));
      v22 = std::string::append(&v37, ", ");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v35, *(v4 + 24));
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v35;
      }

      else
      {
        v24 = v35.__r_.__value_.__r.__words[0];
      }

      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v35.__r_.__value_.__l.__size_;
      }

      v26 = std::string::append(&v38, v24, v25);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v39, 93);
      v40 = v39;
      memset(&v39, 0, sizeof(v39));
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v40;
      }

      else
      {
        v28 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v40.__r_.__value_.__l.__size_;
      }

      std::string::append(&v41, v28, v29);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      v20 = v36.__r_.__value_.__r.__words[0];
    }

    operator delete(v20);
LABEL_61:
    std::string::push_back(&v41, 46);
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    v31 = LocationPtr[1];
    v33 = *LocationPtr;
    v34 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p = v41;
    memset(&v41, 0, sizeof(v41));
    MIL::ValidationResult::ValidationResult(a3, &v33, 319, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    return;
  }

LABEL_7:

  MIL::ValidationResult::ValidationResult(a3);
}

void sub_2180DFC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v42 - 57) < 0)
  {
    operator delete(*(v42 - 80));
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::TensorRankValueConstraintsImpl::Add(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  (*(*a1 + 32))(a1, &v3, a3, a3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_2180DFE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void **anonymous namespace::TensorRankValueConstraintsImpl::Add(void **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = result[2];
  v7 = result[3];
  if (v6 >= v7)
  {
    v9 = (result + 1);
    v10 = v5[1];
    v11 = (v6 - v10) >> 5;
    v12 = v11 + 1;
    if ((v11 + 1) >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v21[4] = v5 + 1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>>(v9, v14);
    }

    v15 = 32 * v11;
    *v15 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v8 = 32 * v11 + 32;
    v16 = v5[1];
    v17 = v5[2] - v16;
    v18 = (32 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = v5[1];
    v5[1] = v18;
    v5[2] = v8;
    v20 = v5[3];
    v5[3] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::~__split_buffer(v21);
  }

  else
  {
    *v6 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v6 + 2) = a3;
    *(v6 + 3) = a4;
    v8 = (v6 + 32);
  }

  v5[2] = v8;
  return result;
}

void std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,long long,long long>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

void anonymous namespace::TensorSymbolicShapeConstraintsImpl::~TensorSymbolicShapeConstraintsImpl(_anonymous_namespace_::TensorSymbolicShapeConstraintsImpl *this)
{
  *this = &unk_2829E97B8;
  v2 = (this + 8);
  v3 = (this + 56);
  std::vector<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 32);
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_2829E97B8;
  v2 = (this + 8);
  v3 = (this + 56);
  std::vector<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 32);
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x21CEAFEA0](this, 0xA1C405040A028);
}

uint64_t anonymous namespace::TensorSymbolicShapeConstraintsImpl::Check@<X0>(_anonymous_namespace_::TensorSymbolicShapeConstraintsImpl *this@<X0>, MIL::IRValueType **a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  memset(v142, 0, sizeof(v142));
  v143 = 1065353216;
  memset(v140, 0, sizeof(v140));
  v141 = 1065353216;
  v6 = *(this + 7);
  v5 = *(this + 8);
  if (v6 == v5)
  {
LABEL_32:
    MIL::ValidationResult::ValidationResult(a3);
  }

  else
  {
    v134 = *(MEMORY[0x277D82828] + 24);
    v135 = *MEMORY[0x277D82828];
    while (1)
    {
      v7 = *v6;
      v163 = 0;
      if (!MIL::ValidationResult::IsGood(a3))
      {
        break;
      }

      MIL::ValidationResult::~ValidationResult(a3);
      if (v163)
      {
        v160 = v156;
        if (v156 < 0)
        {
          v12 = 3;
        }

        else
        {
          *&v169 = v6 + 2;
          __p[0] = &v160;
          v9 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<long long &>>(v142, v6 + 2);
          if ((v10 & 1) != 0 || (v11 = v9, v9[5] == v160))
          {
            v12 = 0;
          }

          else
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v169);
            v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v169, "Tensor ", 7);
            (*(**v6 + 48))(__p);
            if (SHIBYTE(locale) >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            if (SHIBYTE(locale) >= 0)
            {
              v15 = HIBYTE(locale);
            }

            else
            {
              v15 = __p[1];
            }

            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " has unexpected rank ", 21);
            v18 = MEMORY[0x21CEAFB70](v17, v160);
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "; expected ", 11);
            v20 = MEMORY[0x21CEAFB70](v19, v11[5]);
            LOBYTE(v151[0]) = 46;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v151, 1);
            if (SHIBYTE(locale) < 0)
            {
              operator delete(__p[0]);
            }

            LocationPtr = MIL::IRObject::GetLocationPtr(a2);
            v22 = *(LocationPtr + 8);
            v166 = *LocationPtr;
            v167 = v22;
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::ValidationResult::ValidationResult(a3, &v166, 319, &v174);
            if (SHIBYTE(v176) < 0)
            {
              operator delete(v174);
            }

            if (v167)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v167);
            }

            *&v169 = v135;
            *(&v170[-2].__locale_ + *(v135 - 24)) = v134;
            *(&v169 + 1) = MEMORY[0x277D82878] + 16;
            if (v172 < 0)
            {
              operator delete(v171);
            }

            *(&v169 + 1) = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v170);
            std::ostream::~ostream();
            MEMORY[0x21CEAFDA0](v173);
            v12 = 1;
          }
        }

        if (v157)
        {
          v158 = v157;
          operator delete(v157);
        }

        if (v12 != 3 && v12)
        {
          break;
        }
      }

      v6 += 5;
      if (v6 == v5)
      {
        goto LABEL_32;
      }
    }
  }

  if (MIL::ValidationResult::IsGood(a3))
  {
    MIL::ValidationResult::~ValidationResult(a3);
    v23 = *(this + 1);
    v24 = *(this + 2);
    if (v23 != v24)
    {
      v136 = *MEMORY[0x277D82828];
      v25 = *(MEMORY[0x277D82828] + 24);
      while (1)
      {
        v26 = *v23;
        v151[0] = 0;
        if (!MIL::ValidationResult::IsGood(a3))
        {
          goto LABEL_85;
        }

        MIL::ValidationResult::~ValidationResult(a3);
        if (v151[0])
        {
          break;
        }

LABEL_68:
        v23 += 48;
        if (v23 == v24)
        {
          goto LABEL_84;
        }
      }

      if (v156 < 0)
      {
        v33 = 3;
        goto LABEL_64;
      }

      v28 = *(v23 + 40);
      if (v28 < 0 && (v28 += v156, v28 < 0))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v169);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v169, "Tensor ", 7);
        (*(**v23 + 48))(__p);
        if (SHIBYTE(locale) >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        if (SHIBYTE(locale) >= 0)
        {
          v36 = HIBYTE(locale);
        }

        else
        {
          v36 = __p[1];
        }

        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " has a constraint on dimension ", 31);
        v39 = MEMORY[0x21CEAFB70](v38, *(v23 + 40));
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", which is out of bounds for given tensor of rank ", 50);
        v41 = MEMORY[0x21CEAFB70](v40, v156);
        LOBYTE(v144[0]) = 46;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v144, 1);
        if (SHIBYTE(locale) < 0)
        {
          operator delete(__p[0]);
        }

        v42 = MIL::IRObject::GetLocationPtr(a2);
        v43 = *(v42 + 8);
        v163 = *v42;
        v164 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::ValidationResult::ValidationResult(a3, &v163, 319, &v174);
        if (SHIBYTE(v176) < 0)
        {
          operator delete(v174);
        }

        v44 = v164;
        if (!v164)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v28 >= ((v158 - v157) >> 3))
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v29 = (*(**(v157 + v28) + 16))(*(v157 + v28));
        if (!v29 || (v144[0] = (*(*v29 + 48))(v29), *&v169 = v23 + 16, __p[0] = v144, v30 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<long long &>>(v142, (v23 + 16)), (v31 & 1) != 0) || (v32 = v30, v30[5] == v144[0]))
        {
          v33 = 0;
          goto LABEL_64;
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v169);
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v169, "Dimension ", 10);
        v46 = MEMORY[0x21CEAFB70](v45, v28);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " of tensor ", 11);
        (*(**v23 + 48))(__p);
        if (SHIBYTE(locale) >= 0)
        {
          v48 = __p;
        }

        else
        {
          v48 = __p[0];
        }

        if (SHIBYTE(locale) >= 0)
        {
          v49 = HIBYTE(locale);
        }

        else
        {
          v49 = __p[1];
        }

        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
        v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " has unexpected length ", 23);
        v52 = MEMORY[0x21CEAFB70](v51, v144[0]);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "; expected ", 11);
        v54 = MEMORY[0x21CEAFB70](v53, v32[5]);
        LOBYTE(v153) = 46;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, &v153, 1);
        if (SHIBYTE(locale) < 0)
        {
          operator delete(__p[0]);
        }

        v55 = MIL::IRObject::GetLocationPtr(a2);
        v56 = *(v55 + 8);
        v160 = *v55;
        v161 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::ValidationResult::ValidationResult(a3, &v160, 319, &v166);
        if (v168 < 0)
        {
          operator delete(v166);
        }

        v44 = v161;
        if (!v161)
        {
          goto LABEL_61;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
LABEL_61:
      *&v169 = v136;
      *(&v170[-2].__locale_ + *(v136 - 24)) = v25;
      *(&v169 + 1) = MEMORY[0x277D82878] + 16;
      if (v172 < 0)
      {
        operator delete(v171);
      }

      *(&v169 + 1) = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v170);
      std::ostream::~ostream();
      MEMORY[0x21CEAFDA0](v173);
      v33 = 1;
LABEL_64:
      if (v157)
      {
        v158 = v157;
        operator delete(v157);
      }

      if (v33 != 3 && v33)
      {
        goto LABEL_85;
      }

      goto LABEL_68;
    }

LABEL_84:
    MIL::ValidationResult::ValidationResult(a3);
LABEL_85:
    if (MIL::ValidationResult::IsGood(a3))
    {
      MIL::ValidationResult::~ValidationResult(a3);
      v58 = *(this + 4);
      v57 = *(this + 5);
      if (v58 != v57)
      {
        v137 = *(MEMORY[0x277D82828] + 24);
        v139 = *MEMORY[0x277D82828];
        while (1)
        {
          v59 = *v58;
          v159 = 0;
          if (!MIL::ValidationResult::IsGood(a3))
          {
            goto LABEL_212;
          }

          MIL::ValidationResult::~ValidationResult(a3);
          if (v159)
          {
            break;
          }

LABEL_182:
          v58 += 56;
          if (v58 == v57)
          {
            goto LABEL_211;
          }
        }

        v61 = v156;
        if (v156 < 0)
        {
          v78 = 3;
          goto LABEL_178;
        }

        v63 = *(v58 + 40);
        v62 = *(v58 + 48);
        v64 = (v62 + v156);
        v65 = v62 + v156 - v63;
        v155 = (v65 + 1);
        if (v65 <= -2)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v169);
          v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v169, "Tensor ", 7);
          (*(**v58 + 48))(__p);
          if (SHIBYTE(locale) >= 0)
          {
            v67 = __p;
          }

          else
          {
            v67 = __p[0];
          }

          if (SHIBYTE(locale) >= 0)
          {
            v68 = HIBYTE(locale);
          }

          else
          {
            v68 = __p[1];
          }

          v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v67, v68);
          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " has a constraint on dimension [", 32);
          v71 = MEMORY[0x21CEAFB70](v70, *(v58 + 40));
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ", ", 2);
          v73 = MEMORY[0x21CEAFB70](v72, *(v58 + 48));
          v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "] which is out of bounds for given tensor of rank ", 50);
          v75 = MEMORY[0x21CEAFB70](v74, v156);
          LOBYTE(v174) = 46;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, &v174, 1);
          if (SHIBYTE(locale) < 0)
          {
            operator delete(__p[0]);
          }

          v76 = MIL::IRObject::GetLocationPtr(a2);
          v77 = v76[1];
          v153 = *v76;
          v154 = v77;
          if (v77)
          {
            atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::ValidationResult::ValidationResult(a3, &v153, 319, v151);
          if (v152 < 0)
          {
            operator delete(v151[0]);
          }

          if (v154)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v154);
          }

          *&v169 = v139;
          *(&v170[-2].__locale_ + *(v139 - 24)) = v137;
          *(&v169 + 1) = MEMORY[0x277D82878] + 16;
          if (v172 < 0)
          {
            operator delete(v171);
          }

          *(&v169 + 1) = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v170);
          std::ostream::~ostream();
          MEMORY[0x21CEAFDA0](v173);
          v78 = 1;
          goto LABEL_178;
        }

        v169 = 0uLL;
        v170[0].__locale_ = 0;
        std::vector<unsigned long long>::reserve(&v169, v65 + 1);
        if (v64 >= v63)
        {
          v79 = 0;
          v80 = v62 + v61 + 1;
          do
          {
            if (v63 >= (v158 - v157) >> 3)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            v81 = *(v157 + v63);
            if ((*(*v81 + 32))(v81))
            {
              v79 = 1;
            }

            else
            {
              v82 = (*(*v81 + 16))(v81);
              if (v82)
              {
                v174 = (*(*v82 + 48))(v82);
              }

              else
              {
                v174 = -1;
              }

              std::vector<unsigned long long>::push_back[abi:ne200100](&v169, &v174);
            }

            ++v63;
          }

          while (v80 != v63);
        }

        else
        {
          v79 = 0;
        }

        *__p = v169;
        locale = v170[0].__locale_;
        v150 = v79;
        if (v79)
        {
          v78 = 3;
          goto LABEL_176;
        }

        v83 = *v58;
        v84 = MIL::IRObject::GetLocationPtr(a2);
        *&v169 = v58 + 16;
        v174 = __p;
        v85 = std::__hash_table<std::__hash_value_type<std::string,std::vector<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::vector<long long>&>>(v140, (v58 + 16));
        if (v86)
        {
          MIL::ValidationResult::ValidationResult(a3);
        }

        else
        {
          v174 = 0;
          v175 = 0;
          v176 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v174, v85[5], v85[6], (v85[6] - v85[5]) >> 3);
          v87 = v174;
          v88 = __p[0];
          if (&v175[-v174] == (__p[1] - __p[0]))
          {
            if (v175 != v174)
            {
              v89 = &v175[-v174] >> 3;
              if (v89 <= 1)
              {
                v89 = 1;
              }

              do
              {
                v90 = *v87;
                v92 = *v88++;
                v91 = v92;
                if (*v87 == -1)
                {
                  v90 = v91;
                }

                else if (v90 != v91)
                {
                  std::ostringstream::basic_ostringstream[abi:ne200100](&v169);
                  v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v169, "Variadic dimension in tensor ", 29);
                  (*(*v83 + 48))(&v166, v83);
                  if ((v168 & 0x80u) == 0)
                  {
                    v120 = &v166;
                  }

                  else
                  {
                    v120 = v166;
                  }

                  if ((v168 & 0x80u) == 0)
                  {
                    v121 = v168;
                  }

                  else
                  {
                    v121 = v167;
                  }

                  v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v120, v121);
                  v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, " has unexpected shape ", 22);
                  if ((v165 & 0x80u) == 0)
                  {
                    v124 = &v163;
                  }

                  else
                  {
                    v124 = v163;
                  }

                  if ((v165 & 0x80u) == 0)
                  {
                    v125 = v165;
                  }

                  else
                  {
                    v125 = v164;
                  }

                  v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, v124, v125);
                  v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, "; expected ", 11);
                  if ((v162 & 0x80u) == 0)
                  {
                    v128 = &v160;
                  }

                  else
                  {
                    v128 = v160;
                  }

                  if ((v162 & 0x80u) == 0)
                  {
                    v129 = v162;
                  }

                  else
                  {
                    v129 = v161;
                  }

                  v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, v128, v129);
                  v177[0] = 46;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, v177, 1);
                  if (v162 < 0)
                  {
                    operator delete(v160);
                  }

                  if (v165 < 0)
                  {
                    operator delete(v163);
                  }

                  if (v168 < 0)
                  {
                    operator delete(v166);
                  }

                  v131 = *(v84 + 8);
                  v163 = *v84;
                  v164 = v131;
                  if (v131)
                  {
                    atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  goto LABEL_145;
                }

                *v87++ = v90;
                --v89;
              }

              while (v89);
            }

            MIL::ValidationResult::ValidationResult(a3);
          }

          else
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v169);
            v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v169, "Variadic dimension in tensor ", 29);
            (*(*v83 + 48))(&v166, v83);
            if ((v168 & 0x80u) == 0)
            {
              v94 = &v166;
            }

            else
            {
              v94 = v166;
            }

            if ((v168 & 0x80u) == 0)
            {
              v95 = v168;
            }

            else
            {
              v95 = v167;
            }

            v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, v94, v95);
            v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, " has unexpected length ", 23);
            v98 = MEMORY[0x21CEAFB40](v97, &v175[-v174] >> 3);
            v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, "; expected ", 11);
            v100 = MEMORY[0x21CEAFB40](v99, (__p[1] - __p[0]) >> 3);
            LOBYTE(v163) = 46;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, &v163, 1);
            if (v168 < 0)
            {
              operator delete(v166);
            }

            v101 = *(v84 + 8);
            v163 = *v84;
            v164 = v101;
            if (v101)
            {
              atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
            }

LABEL_145:
            std::stringbuf::str();
            MIL::ValidationResult::ValidationResult(a3, &v163, 319, &v166);
            if (v168 < 0)
            {
              operator delete(v166);
            }

            if (v164)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v164);
            }

            *&v169 = v139;
            *(&v170[-2].__locale_ + *(v139 - 24)) = v137;
            *(&v169 + 1) = MEMORY[0x277D82878] + 16;
            if (v172 < 0)
            {
              operator delete(v171);
            }

            *(&v169 + 1) = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v170);
            std::ostream::~ostream();
            MEMORY[0x21CEAFDA0](v173);
          }

          if (v174)
          {
            v175 = v174;
            operator delete(v174);
          }
        }

        if (MIL::ValidationResult::IsGood(a3))
        {
          MIL::ValidationResult::~ValidationResult(a3);
          *&v169 = v58 + 16;
          v174 = &v155;
          v102 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<long long &>>(v142, (v58 + 16));
          if ((v103 & 1) != 0 || (v104 = v102, v102[5] == v155))
          {
            v78 = 0;
            goto LABEL_176;
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&v169);
          v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v169, "Variadic dimension at [", 23);
          v106 = MEMORY[0x21CEAFB70](v105, *(v58 + 40));
          v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, ", ", 2);
          v108 = MEMORY[0x21CEAFB70](v107, *(v58 + 48));
          v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, "] of tensor ", 12);
          (*(**v58 + 48))(&v174);
          if (v176 >= 0)
          {
            v110 = &v174;
          }

          else
          {
            v110 = v174;
          }

          if (v176 >= 0)
          {
            v111 = HIBYTE(v176);
          }

          else
          {
            v111 = v175;
          }

          v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, v110, v111);
          v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, " have unexpected length ", 24);
          v114 = MEMORY[0x21CEAFB70](v113, v155);
          v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, "; expected ", 11);
          v116 = MEMORY[0x21CEAFB70](v115, v104[5]);
          LOBYTE(v166) = 46;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, &v166, 1);
          if (SHIBYTE(v176) < 0)
          {
            operator delete(v174);
          }

          v117 = MIL::IRObject::GetLocationPtr(a2);
          v118 = v117[1];
          v146 = *v117;
          v147 = v118;
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::ValidationResult::ValidationResult(a3, &v146, 319, v144);
          if (v145 < 0)
          {
            operator delete(v144[0]);
          }

          if (v147)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v147);
          }

          *&v169 = v139;
          *(&v170[-2].__locale_ + *(v139 - 24)) = v137;
          *(&v169 + 1) = MEMORY[0x277D82878] + 16;
          if (v172 < 0)
          {
            operator delete(v171);
          }

          *(&v169 + 1) = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v170);
          std::ostream::~ostream();
          MEMORY[0x21CEAFDA0](v173);
        }

        v78 = 1;
LABEL_176:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

LABEL_178:
        if (v157)
        {
          v158 = v157;
          operator delete(v157);
        }

        if (v78 != 3 && v78)
        {
          goto LABEL_212;
        }

        goto LABEL_182;
      }

LABEL_211:
      MIL::ValidationResult::ValidationResult(a3);
LABEL_212:
      if (MIL::ValidationResult::IsGood(a3))
      {
        MIL::ValidationResult::~ValidationResult(a3);
        MIL::ValidationResult::ValidationResult(v132);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::~__hash_table(v140);
  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v142);
}

void sub_2180E1574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  std::ostringstream::~ostringstream(&a56);
  v58 = *(v56 - 120);
  if (v58)
  {
    *(v56 - 112) = v58;
    operator delete(v58);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::~__hash_table(&a13);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a19);
  _Unwind_Resume(a1);
}

void **anonymous namespace::TensorSymbolicShapeConstraintsImpl::AddDimension(void **result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = result;
  v6 = result[2];
  v7 = result[3];
  if (v6 >= v7)
  {
    v10 = (result + 1);
    v11 = v5[1];
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v11) >> 4);
    v13 = v12 + 1;
    if (v12 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v13;
    }

    v23[4] = v5 + 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>>(v10, v15);
    }

    v16 = 48 * v12;
    *v16 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v17 = *a4;
    *(v16 + 32) = *(a4 + 2);
    *(v16 + 16) = v17;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    *(v16 + 40) = a3;
    v9 = 48 * v12 + 48;
    v18 = v5[1];
    v19 = v5[2] - v18;
    v20 = (48 * v12 - v19);
    memcpy(v20, v18, v19);
    v21 = v5[1];
    v5[1] = v20;
    v5[2] = v9;
    v22 = v5[3];
    v5[3] = 0;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>::~__split_buffer(v23);
  }

  else
  {
    *v6 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v8 = *a4;
    *(v6 + 4) = *(a4 + 2);
    *(v6 + 1) = v8;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    *(v6 + 5) = a3;
    v9 = (v6 + 48);
  }

  v5[2] = v9;
  return result;
}