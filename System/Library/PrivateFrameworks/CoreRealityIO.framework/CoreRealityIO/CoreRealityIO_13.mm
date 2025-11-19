void sub_2475683B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  if (*(v57 - 185) < 0)
  {
    operator delete(*(v57 - 208));
  }

  if (STACK[0x858])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x858]);
  }

  if (STACK[0x518])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x518]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  std::__tree<std::string>::destroy(&STACK[0x5D0], STACK[0x5D8]);
  STACK[0x5D0] = &a57;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5D0]);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RIO_MTLX::Element::asA<RIO_MTLX::Element>(v9, &v19);
      if (v19)
      {
        v10 = *(a4 + 23);
        v11 = v10 >= 0 ? *(a4 + 23) : *(a4 + 8);
        if (!v11)
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 47);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v9 + 32);
        }

        if (v12 == v11)
        {
          v16 = *(v9 + 24);
          v15 = v9 + 24;
          v14 = v16;
          v17 = (v13 >= 0 ? v15 : v14);
          v18 = v10 >= 0 ? a4 : *a4;
          if (!memcmp(v17, v18, v11))
          {
LABEL_20:
            std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a1, &v19);
          }
        }
      }

      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v6 += 2;
    }

    while (v6 != a3);
  }
}

void sub_24756A1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::Element::isA<RIO_MTLX::Node>(uint64_t a1, const void **a2)
{
  RIO_MTLX::Element::asA<RIO_MTLX::Node>(a1, &v15);
  v4 = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t RIO_MTLX::Element::isA<RIO_MTLX::Output>(uint64_t a1, const void **a2)
{
  RIO_MTLX::Element::asA<RIO_MTLX::Output>(a1, &v15);
  v4 = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void RIO_MTLX::anonymous namespace::getShaderNodeDef(RIO_MTLX::InterfaceElement *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(a1);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v4 + 160), v5);
  if (v6)
  {
    v7 = *a2;
    v8 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(v6);
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v7 + 160), v8);
    if (v9)
    {
      v10 = (v9 + 5);
    }

    else
    {
      v10 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, *v10, v10[1]);
    }

    else
    {
      v18 = *v10;
      v56.__r_.__value_.__r.__words[2] = v10[2];
      *&v56.__r_.__value_.__l.__data_ = v18;
    }

    RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeDef>(*a2, &v56, a1);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = *a2;
    v12 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(0);
    v13 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v11 + 160), v12);
    if (!v13)
    {
      goto LABEL_74;
    }

    v14 = *a2;
    v15 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v13);
    v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v14 + 160), v15);
    if (v16)
    {
      v17 = (v16 + 5);
    }

    else
    {
      v17 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v17 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, *v17, v17[1]);
    }

    else
    {
      v19 = *v17;
      v56.__r_.__value_.__r.__words[2] = v17[2];
      *&v56.__r_.__value_.__l.__data_ = v19;
    }

    v20 = *a2;
    v21 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v17);
    v22 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v20 + 160), v21);
    if (v22)
    {
      v23 = (v22 + 5);
    }

    else
    {
      v23 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v23 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, *v23, v23[1]);
    }

    else
    {
      v24 = *v23;
      v55.__r_.__value_.__r.__words[2] = v23[2];
      *&v55.__r_.__value_.__l.__data_ = v24;
    }

    v25 = *a2;
    v26 = RIO_MTLX::InterfaceElement::TARGET_ATTRIBUTE(v23);
    v27 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v25 + 160), v26);
    if (v27)
    {
      v28 = (v27 + 5);
    }

    else
    {
      v28 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v28 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v54, *v28, v28[1]);
    }

    else
    {
      v29 = *v28;
      v54.__r_.__value_.__r.__words[2] = v28[2];
      *&v54.__r_.__value_.__l.__data_ = v29;
    }

    v30 = *a2;
    v31 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(v28);
    v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v30 + 160), v31);
    if (v32)
    {
      v33 = (v32 + 5);
    }

    else
    {
      v33 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v33 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, *v33, v33[1]);
    }

    else
    {
      v34 = *v33;
      v53.__r_.__value_.__r.__words[2] = v33[2];
      *&v53.__r_.__value_.__l.__data_ = v34;
    }

    RIO_MTLX::Element::getDocument(*a2, &p_p);
    p_data = &p_p->__r_.__value_.__l.__data_;
    RIO_MTLX::Element::getQualifiedName(*a2, &v56, &__p);
    RIO_MTLX::Document::getMatchingNodeDefs(p_data, &__p.__r_.__value_.__l.__data_, &v51);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    RIO_MTLX::Element::getDocument(*a2, &p_p);
    RIO_MTLX::Document::getMatchingNodeDefs(p_p, &v56.__r_.__value_.__l.__data_, &__p);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>,std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>>(&v51, v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4);
    v36 = v51;
    v37 = v52;
    if (v51 == v52)
    {
LABEL_64:
      v47 = 1;
    }

    else
    {
      while (1)
      {
        v38 = *v36;
        *a1 = *v36;
        v39 = v36[1];
        *(a1 + 1) = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Target = RIO_MTLX::InterfaceElement::getTarget(v38);
        if (RIO_MTLX::targetStringsMatch(Target, &v54) && RIO_MTLX::NodeDef::isVersionCompatible(v38, &v53))
        {
          size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v55.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            break;
          }

          v42 = (*(*v38 + 56))(v38);
          v43 = *(v42 + 23);
          if (v43 >= 0)
          {
            v44 = *(v42 + 23);
          }

          else
          {
            v44 = v42[1];
          }

          v45 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v45 = v55.__r_.__value_.__l.__size_;
          }

          if (v44 == v45)
          {
            if (v43 < 0)
            {
              v42 = *v42;
            }

            v46 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v55 : v55.__r_.__value_.__r.__words[0];
            if (!memcmp(v42, v46, v44))
            {
              break;
            }
          }
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        v36 += 2;
        if (v36 == v37)
        {
          goto LABEL_64;
        }
      }

      v47 = 0;
    }

    p_p = &__p;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    __p.__r_.__value_.__r.__words[0] = &v51;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v47)
    {
LABEL_74:
      *a1 = 0;
      *(a1 + 1) = 0;
    }
  }
}

void sub_24756A744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  a15 = &a9;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a9 = &a17;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::NodeDef::getNodeString(RIO_MTLX::NodeDef *this)
{
  v2 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t *RIO_MTLX::PortElement::getOutputString(RIO_MTLX::PortElement *this)
{
  v2 = RIO_MTLX::PortElement::OUTPUT_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void sub_24756A920(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *RIO_MTLX::Document::upgradeVersion(void)::$_0::operator()(uint64_t a1, std::string **a2, std::string *a3)
{
  result = *a2;
  if (*a2)
  {
    RIO_MTLX::Element::setName(result, a3);
    v6 = *a2;
    RIO_MTLX::STRING_TYPE_STRING(v7);
    RIO_MTLX::InterfaceElement::addInput(v6, a1);
  }

  return result;
}

void sub_24756AA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v22 = *(v20 - 24);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(uint64_t a1, uint64_t *a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(*a2, (a1 + 24), &v16);
  if (v16)
  {
    (*(*v16 + 64))(&v14);
    if (v14)
    {
      v4 = *a2;
      v5 = *(*a2 + 232);
      if (v5)
      {
        v5 = std::__shared_weak_count::lock(v5);
        v6 = v5;
        if (v5)
        {
          v5 = *(v4 + 224);
        }
      }

      else
      {
        v6 = 0;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v5, &v13);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = *a2;
      if (*(*a2 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v12, v7[2].__r_.__value_.__l.__data_, v7[2].__r_.__value_.__l.__size_);
        v7 = *a2;
      }

      else
      {
        v12 = v7[2];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      p_p = &__p;
      std::string::basic_string[abi:ne200100](&__p, size + 11);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v12;
        }

        else
        {
          v10 = v12.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, v10, size);
      }

      strcpy(p_p + size, "__layer_top");
      RIO_MTLX::Element::setName(v7, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      RIO_MTLX::GraphElement::addNode(v13, a1 + 48, &v12);
    }

    RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Input>(*a2, (a1 + 24));
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_24756AD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v29 - 88));
  }

  v31 = *(v29 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 56);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::ValueElement>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::ValueElement>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756AFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::PortElement::getNodeName(RIO_MTLX::PortElement *this)
{
  v2 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t RIO_MTLX::Document::upgradeVersion(void)::$_1::~$_1(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24756B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::addChild<RIO_MTLX::NodeGraph>(RIO_MTLX::NodeGraph *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v4 = RIO_MTLX::NodeGraph::CATEGORY(a1);
    v5 = v4;
    if (v4[23] >= 0)
    {
      v6 = v4[23];
    }

    else
    {
      v6 = *(v4 + 1);
    }

    v7 = __p;
    std::string::basic_string[abi:ne200100](__p, v6 + 1);
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (v5[23] >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      memmove(v7, v8, v6);
    }

    *(v7 + v6) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v11);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    v12 = v11;
    *(&v11.__r_.__value_.__s + 23) = 0;
    v11.__r_.__value_.__s.__data_[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v11, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::NodeGraph,std::allocator<RIO_MTLX::NodeGraph>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24756B2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::NodeGraph>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::NodeGraph>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945168;
  std::allocator<RIO_MTLX::NodeGraph>::construct[abi:ne200100]<RIO_MTLX::NodeGraph,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<RIO_MTLX::NodeGraph>::construct[abi:ne200100]<RIO_MTLX::NodeGraph,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::NodeGraph *a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  RIO_MTLX::NodeGraph::NodeGraph(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_24756B4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::setTypedAttribute<BOOL>(RIO_MTLX::Element *a1, __int128 *a2, RIO_MTLX *a3)
{
  RIO_MTLX::toValueString<BOOL>(a3, &__p);
  RIO_MTLX::Element::setAttribute(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24756B514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Output>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Output>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756B634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::addChild<RIO_MTLX::Output>(RIO_MTLX::Output *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v4 = RIO_MTLX::Output::CATEGORY(a1);
    v5 = v4;
    if (v4[23] >= 0)
    {
      v6 = v4[23];
    }

    else
    {
      v6 = *(v4 + 1);
    }

    v7 = __p;
    std::string::basic_string[abi:ne200100](__p, v6 + 1);
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (v5[23] >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      memmove(v7, v8, v6);
    }

    *(v7 + v6) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v11);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    v12 = v11;
    *(&v11.__r_.__value_.__s + 23) = 0;
    v11.__r_.__value_.__s.__data_[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v11, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::Output,std::allocator<RIO_MTLX::Output>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24756B828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::Output>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::Output>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2859451B8;
  std::allocator<RIO_MTLX::Output>::construct[abi:ne200100]<RIO_MTLX::Output,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<RIO_MTLX::Output>::construct[abi:ne200100]<RIO_MTLX::Output,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::Output *a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  RIO_MTLX::Output::Output(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_24756B9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::Element::isA<RIO_MTLX::NodeGraph>(uint64_t a1, const void **a2)
{
  RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(a1, &v15);
  v4 = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *RIO_MTLX::Implementation::getNodeGraph(RIO_MTLX::Implementation *this)
{
  v2 = RIO_MTLX::PortElement::NODE_GRAPH_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_24756BBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::GeomProp>(void *a1, uint64_t a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 96), a3);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::GeomProp>(v6, a1);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24756BC90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeGraph>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756BDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>,std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void *std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(&v11, a2, v7, v6);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756C2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Output>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24756C388(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(void *a1, const void **a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    RIO_MTLX::Element::removeChild(a1, a2);
  }
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Input>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24756C47C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Node>(void *a1, const void **a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Node>(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    RIO_MTLX::Element::removeChild(a1, a2);
  }
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_24756C524(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::addChild<RIO_MTLX::Input>(RIO_MTLX::Input *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v4 = RIO_MTLX::Input::CATEGORY(a1);
    v5 = v4;
    if (v4[23] >= 0)
    {
      v6 = v4[23];
    }

    else
    {
      v6 = *(v4 + 1);
    }

    v7 = __p;
    std::string::basic_string[abi:ne200100](__p, v6 + 1);
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (v5[23] >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      memmove(v7, v8, v6);
    }

    *(v7 + v6) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v11);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    v12 = v11;
    *(&v11.__r_.__value_.__s + 23) = 0;
    v11.__r_.__value_.__s.__data_[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v11, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::Input,std::allocator<RIO_MTLX::Input>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24756C6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::Input>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::Input>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2859455C0;
  std::allocator<RIO_MTLX::Input>::construct[abi:ne200100]<RIO_MTLX::Input,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<RIO_MTLX::Input>::construct[abi:ne200100]<RIO_MTLX::Input,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::Input *a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  RIO_MTLX::Input::Input(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_24756C8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_24756C900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[15],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_24756C954(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Input>(void *a1, const void **a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    RIO_MTLX::Element::removeChild(a1, a2);
  }
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Input>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756CACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Document>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string const&,std::allocator<RIO_MTLX::Document>,0>(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945410;
  std::allocator<RIO_MTLX::Document>::construct[abi:ne200100]<RIO_MTLX::Document,std::shared_ptr<RIO_MTLX::Element>,std::string const&>(&v3, (a1 + 3), a2, a3);
}

void std::allocator<RIO_MTLX::Document>::construct[abi:ne200100]<RIO_MTLX::Document,std::shared_ptr<RIO_MTLX::Element>,std::string const&>(uint64_t a1, RIO_MTLX::Document *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  *a3 = 0;
  a3[1] = 0;
  RIO_MTLX::Document::Document(a2, v5, a4);
}

void sub_24756CC6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>(void *a1, const void **a2)
{
  v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      v6 = *v6;
    }

    while (v6 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v6 + 2, a2));
  }

  return v5;
}

uint64_t std::vector<std::shared_ptr<RIO_MTLX::Element>>::__init_with_size[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>*,std::shared_ptr<RIO_MTLX::Element>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void RIO_MTLX::ValueElement::setValue<std::string>(RIO_MTLX::TypedElement *a1, std::string *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    a1 = RIO_MTLX::TypedValue<std::string>::TYPE();
    v3 = RIO_MTLX::TypedValue<std::string>::TYPE(void)::v;
  }

  v7 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(a1);
  RIO_MTLX::Element::setAttribute(v5, v7, v3);
  v8 = RIO_MTLX::toValueString<std::string>(a2, &__p);
  v9 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v8);
  RIO_MTLX::Element::setAttribute(v5, v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24756CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_24756D0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::meshAttributeRateForInterpolation(realityio *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(MEMORY[0x277D86550]);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
  }

  if ((*(v3 + 136) ^ *this) >= 8)
  {
    v5 = atomic_load(MEMORY[0x277D86550]);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }

    if ((*(v5 + 1168) ^ *this) >= 8)
    {
      v6 = atomic_load(MEMORY[0x277D86550]);
      if (!v6)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
      }

      if ((*(v6 + 1216) ^ *this) < 8)
      {
        return 1;
      }

      v7 = atomic_load(MEMORY[0x277D86550]);
      if (!v7)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
      }

      if ((*(v7 + 1232) ^ *this) >= 8)
      {
        v8 = atomic_load(MEMORY[0x277D86550]);
        if (!v8)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
        }

        if ((*(v8 + 320) ^ *this) >= 8)
        {
          return -1;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::isTexCoord2(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v10[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  v10[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v10);
  v2 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::isTexCoord3(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v10[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  v10[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v10);
  v2 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::isScalar2(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v7[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  v7[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v7);
  v2 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::addUsdAttributeToGeomModelDescriptor(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *this, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v119 = *MEMORY[0x277D85DE8];
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(&TypeName);
  v8 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_19:
    IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
    if (IsPrimvar)
    {
      MEMORY[0x24C1A5200](&v109, this);
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v109);
    }

    else
    {
      v109 = 3;
      v110 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v112 = 0;
      v113 = 0;
      v17 = *a4;
      __sz[0] = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        __sz[0] &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    v18 = realityio::meshAttributeRateForInterpolation(__sz, v16);
    if ((__sz[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v102 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&v102))
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&v102))
      {
        goto LABEL_90;
      }

      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(this, __sz);
      if (LOBYTE(__sz[0]) != 1)
      {
        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_90;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
      v106 = *&__sz[1];
      v107 = *&__sz[3];
      memset(&__sz[1], 0, 32);
      v108 = v101;
      v101 = 0;
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 4 * (v106 > 1);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(__sz);
LABEL_54:
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v103, v106);
      v31 = v103;
      if (v106)
      {
        v32 = v108;
        v33 = 12 * v106;
        do
        {
          *&v30 = *v32;
          DWORD2(v30) = *(v32 + 2);
          *v31++ = v30;
          v32 = (v32 + 12);
          v33 -= 12;
        }

        while (v33);
        v31 = v103;
      }

      if (IsPrimvar)
      {
        memset(__sz, 0, sizeof(__sz));
        Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
        v35 = Indices;
        if (Indices)
        {
          memset(&v114, 0, sizeof(v114));
          std::vector<int>::resize(&v114, __sz[0]);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
          v36 = __sz[4];
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
          v37 = __sz[4] + 4 * __sz[0];
          if (v36 != v37)
          {
            begin = v114.__begin_;
            do
            {
              v39 = *v36++;
              *begin++ = v39;
            }

            while (v36 != v37);
          }

          if (!a3)
          {
            Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
            v41 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
            if (*(v41 + 23) < 0)
            {
              v43 = *v41;
            }
          }

          v42 = REGeomModelDescriptorAddIndexedAttributeVector3F();
          if (v114.__begin_)
          {
            v114.__end_ = v114.__begin_;
            operator delete(v114.__begin_);
          }
        }

        else
        {
          v42 = 0;
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
        if (v35)
        {
          goto LABEL_91;
        }
      }

      IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&v102);
      if (v18 == 4)
      {
        v45 = 1;
      }

      else
      {
        v45 = IsArray;
      }

      if ((v45 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&v102), !v18) ? (v47 = IsScalar) : (v47 = 0), v47 == 1))
      {
        if (!a3)
        {
          v48 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          a3 = (*v48 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v48 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v48);
          if (*(a3 + 23) < 0)
          {
            a3 = *a3;
          }
        }

        if (MEMORY[0x24C1A3800](a1, a3, v18, v106, v31))
        {
          v42 = 1;
LABEL_91:
          if (v103)
          {
            v104 = v103;
            operator delete(v103);
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
          if ((v113 & 7) != 0)
          {
            atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v112 & 7) != 0)
          {
            atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v111);
          if (v110)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v110);
          }

          goto LABEL_99;
        }
      }

LABEL_90:
      v42 = 0;
      goto LABEL_91;
    }

    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(this, __sz);
    if (LOBYTE(__sz[0]) == 1)
    {
      if (!DWORD2(v106))
      {
        v19 = v106;
        if (!*(&v107 + 1))
        {
          v20 = v108;
          if (!v108)
          {
            v22 = 0;
LABEL_45:
            if (v106 != v22)
            {
              v27 = __sz[1];
              v28 = v20 + 12 * v106;
              *(v28 + 8) = __sz[2];
              *v28 = v27;
LABEL_50:
              *&v106 = v106 + 1;
LABEL_51:
              if ((__sz[0] & 1) == 0 && SHIBYTE(v101) < 0)
              {
                operator delete(__sz[3]);
              }

              goto LABEL_54;
            }

            goto LABEL_127;
          }

          v21 = atomic_load(v108 - 2);
          if (v21 == 1)
          {
            v20 = v108;
            v22 = *(v108 - 1);
            goto LABEL_45;
          }
        }

LABEL_127:
        v60 = v108;
        v61 = 1;
        do
        {
          v62 = v61;
          v61 *= 2;
        }

        while (v62 < v106 + 1);
        New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(&v106, v62);
        v64 = New;
        if (v19)
        {
          v65 = 12 * v19;
          v66 = New;
          do
          {
            v67 = *v60;
            *(v66 + 2) = *(v60 + 2);
            *v66 = v67;
            v66 = (v66 + 12);
            v60 = (v60 + 12);
            v65 -= 12;
          }

          while (v65);
        }

        v68 = __sz[1];
        v69 = New + 12 * v19;
        *(v69 + 2) = __sz[2];
        *v69 = v68;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
LABEL_139:
        v108 = v64;
        goto LABEL_50;
      }

      v114.__begin_ = "vt/array.h";
      v114.__end_ = "emplace_back";
      v114.__end_cap_.__value_ = 416;
      v115 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3f, Args = <const pxrInternal__aapl__pxrReserved__::GfVec3f &>]";
      v116 = 0;
LABEL_141:
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
      goto LABEL_51;
    }

    v118 = 0;
    v117 = 0;
    if (DWORD2(v106))
    {
      v114.__begin_ = "vt/array.h";
      v114.__end_ = "emplace_back";
      v114.__end_cap_.__value_ = 416;
      v115 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3f, Args = <pxrInternal__aapl__pxrReserved__::GfVec3f>]";
      v116 = 0;
      goto LABEL_141;
    }

    v23 = v106;
    if (!*(&v107 + 1))
    {
      v24 = v108;
      if (!v108)
      {
        v26 = 0;
LABEL_48:
        if (v106 != v26)
        {
          v29 = v24 + 12 * v106;
          *v29 = v117;
          *(v29 + 8) = v118;
          goto LABEL_50;
        }

        goto LABEL_133;
      }

      v25 = atomic_load(v108 - 2);
      if (v25 == 1)
      {
        v24 = v108;
        v26 = *(v108 - 1);
        goto LABEL_48;
      }
    }

LABEL_133:
    v70 = v108;
    v71 = 1;
    do
    {
      v72 = v71;
      v71 *= 2;
    }

    while (v72 < v106 + 1);
    v73 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(&v106, v72);
    v64 = v73;
    if (v23)
    {
      v74 = 12 * v23;
      v75 = v73;
      do
      {
        v76 = *v70;
        *(v75 + 2) = *(v70 + 2);
        *v75 = v76;
        v75 = (v75 + 12);
        v70 = (v70 + 12);
        v74 -= 12;
      }

      while (v74);
    }

    v77 = v73 + 12 * v23;
    *v77 = v117;
    *(v77 + 2) = v118;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
    goto LABEL_139;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_106;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_106:
    v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2fEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  else
  {
    if (!atomic_load(v8))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_125;
    }

    if (!atomic_load(v8))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_125;
    }

    if (!atomic_load(v8))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_125;
    }

    if (!atomic_load(v8))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_125;
    }

    if (!atomic_load(v8))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_125;
    }

    if (!atomic_load(v8))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_125:
      v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
    }

    else
    {
      if (!atomic_load(v8))
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_149;
      }

      if (!atomic_load(v8))
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
LABEL_149:
        v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2dEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
      }

      else
      {
        if (!atomic_load(v8))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          goto LABEL_168;
        }

        if (!atomic_load(v8))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          goto LABEL_168;
        }

        if (!atomic_load(v8))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          goto LABEL_168;
        }

        if (!atomic_load(v8))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          goto LABEL_168;
        }

        if (!atomic_load(v8))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          goto LABEL_168;
        }

        if (!atomic_load(v8))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
LABEL_168:
          v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
        }

        else
        {
          if (!atomic_load(v8))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            goto LABEL_175;
          }

          if (!atomic_load(v8))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
LABEL_175:
            v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2hEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
          }

          else
          {
            if (!atomic_load(v8))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_182;
            }

            if (!atomic_load(v8))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
LABEL_182:
              v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
            }

            else
            {
              if (!atomic_load(v8))
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                goto LABEL_189;
              }

              if (!atomic_load(v8))
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
LABEL_189:
                v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
              }

              else
              {
                if (!atomic_load(v8))
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
                }

                if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                {
                  goto LABEL_196;
                }

                if (!atomic_load(v8))
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
                }

                if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                {
LABEL_196:
                  v53 = _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
                }

                else
                {
                  if (!atomic_load(v8))
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
                  }

                  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                  {
                    v53 = realityio::convertAndAddAttributeToModelDescriptor<int,int>(a1, this, a3, a4);
                  }

                  else
                  {
                    if (!atomic_load(v8))
                    {
                      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
                    }

                    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                    {
                      v53 = realityio::convertAndAddAttributeToModelDescriptor<unsigned int,unsigned int>(a1, this, a3, a4);
                    }

                    else
                    {
                      if (!atomic_load(v8))
                      {
                        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
                      }

                      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                      {
                        v53 = realityio::convertAndAddAttributeToModelDescriptor<unsigned char,unsigned char>(a1, this, a3, a4);
                      }

                      else
                      {
                        if (!atomic_load(v8))
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
                        }

                        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                        {
                          v53 = realityio::convertAndAddAttributeToModelDescriptor<float,float>(a1, this, a3, a4);
                        }

                        else
                        {
                          if (!atomic_load(v8))
                          {
                            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
                          }

                          if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                          {
                            v42 = 0;
                            goto LABEL_99;
                          }

                          v53 = realityio::convertAndAddAttributeToModelDescriptor<double,double>(a1, this, a3, a4);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v42 = v53;
LABEL_99:
  v49 = *MEMORY[0x277D85DE8];
  return v42;
}

void sub_24756E3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if ((a13 & 1) == 0 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a26);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a32);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2fEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v64, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v64);
  }

  else
  {
    v64 = 3;
    v65 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v67 = 0;
    v68 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
        v61 = *&__sz[1];
        v62 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v63 = v56;
        v56 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v61 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_72:
    v32 = 0;
    goto LABEL_73;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v61))
    {
      v69.__begin_ = "vt/array.h";
      v69.__end_ = "emplace_back";
      v69.__end_cap_.__value_ = 416;
      v70 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2f, Args = <pxrInternal__aapl__pxrReserved__::GfVec2f>]";
      v71 = 0;
      goto LABEL_96;
    }

    v16 = v61;
    if (!*(&v62 + 1))
    {
      v17 = v63;
      if (!v63)
      {
        v19 = 0;
LABEL_30:
        if (v61 != v19)
        {
          v17[v61] = 0;
          goto LABEL_32;
        }

        goto LABEL_88;
      }

      v18 = atomic_load(v63 - 2);
      if (v18 == 1)
      {
        v17 = v63;
        v19 = *(v63 - 1);
        goto LABEL_30;
      }
    }

LABEL_88:
    v48 = v63;
    v49 = 1;
    do
    {
      v50 = v49;
      v49 *= 2;
    }

    while (v50 < v61 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(&v61, v50);
    v44 = New;
    if (v16)
    {
      v52 = 8 * v16;
      v53 = New;
      do
      {
        v54 = *v48++;
        *v53++ = v54;
        v52 -= 8;
      }

      while (v52);
    }

    New[v16] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
    goto LABEL_94;
  }

  if (DWORD2(v61))
  {
    v69.__begin_ = "vt/array.h";
    v69.__end_ = "emplace_back";
    v69.__end_cap_.__value_ = 416;
    v70 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2f, Args = <const pxrInternal__aapl__pxrReserved__::GfVec2f &>]";
    v71 = 0;
LABEL_96:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    goto LABEL_33;
  }

  v12 = v61;
  if (*(&v62 + 1))
  {
    goto LABEL_82;
  }

  v13 = v63;
  if (v63)
  {
    v14 = atomic_load(v63 - 2);
    if (v14 != 1)
    {
      goto LABEL_82;
    }

    v13 = v63;
    v15 = *(v63 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v61 == v15)
  {
LABEL_82:
    v40 = v63;
    v41 = 1;
    do
    {
      v42 = v41;
      v41 *= 2;
    }

    while (v42 < v61 + 1);
    v43 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(&v61, v42);
    v44 = v43;
    if (v12)
    {
      v45 = 8 * v12;
      v46 = v43;
      do
      {
        v47 = *v40++;
        *v46++ = v47;
        v45 -= 8;
      }

      while (v45);
    }

    v43[v12] = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
LABEL_94:
    v63 = v44;
    goto LABEL_32;
  }

  v13[v61] = __sz[1];
LABEL_32:
  *&v61 = v61 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v56) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v58, v61);
  v20 = v58;
  if (v61)
  {
    v21 = v63;
    v22 = 8 * v61;
    do
    {
      v23 = *v21++;
      *v20++ = v23;
      v22 -= 8;
    }

    while (v22);
    v20 = v58;
  }

  if (!IsPrimvar)
  {
    goto LABEL_56;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v25 = Indices;
  if (Indices)
  {
    memset(&v69, 0, sizeof(v69));
    std::vector<int>::resize(&v69, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v26 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v27 = __sz[4] + 4 * __sz[0];
    if (v26 != v27)
    {
      begin = v69.__begin_;
      do
      {
        v29 = *v26++;
        *begin++ = v29;
      }

      while (v26 != v27);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v31 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v31 + 23) < 0)
      {
        v33 = *v31;
      }
    }

    v32 = REGeomModelDescriptorAddIndexedAttributeVector2F();
    if (v69.__begin_)
    {
      v69.__end_ = v69.__begin_;
      operator delete(v69.__begin_);
    }
  }

  else
  {
    v32 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v25 & 1) == 0)
  {
LABEL_56:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v35 = 1;
    }

    else
    {
      v35 = IsArray;
    }

    if ((v35 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v37 = IsScalar) : (v37 = 0), v37 == 1))
    {
      if (!a3)
      {
        v38 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v38 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v38 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37F0](a1, a3, v11, v61, v20))
      {
        v32 = 1;
        goto LABEL_73;
      }
    }

    goto LABEL_72;
  }

LABEL_73:
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
  if (v65)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65);
  }

  return v32;
}

void sub_24756EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a24);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a29);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v82 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v72, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v72);
  }

  else
  {
    v72 = 3;
    v73 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v75 = 0;
    v76 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(__sz, a2);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
        v69 = *&__sz[1];
        v70 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v71 = v64;
        v64 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v69 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_72:
    v36 = 0;
    goto LABEL_73;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    v80 = 0uLL;
    v81 = 0;
    if (DWORD2(v69))
    {
      v77.__begin_ = "vt/array.h";
      v77.__end_ = "emplace_back";
      v77.__end_cap_.__value_ = 416;
      v78 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3d, Args = <pxrInternal__aapl__pxrReserved__::GfVec3d>]";
      v79 = 0;
      goto LABEL_96;
    }

    v16 = v69;
    if (!*(&v70 + 1))
    {
      v17 = v71;
      if (!v71)
      {
        v19 = 0.0;
LABEL_30:
        if (v69 != *&v19)
        {
          v22 = v17 + 24 * v69;
          *v22 = v80;
          *(v22 + 16) = v81;
          goto LABEL_32;
        }

        goto LABEL_88;
      }

      v18 = atomic_load(&v71[-1]);
      if (v18 == 1)
      {
        v17 = v71;
        v19 = v71[-1].f64[1];
        goto LABEL_30;
      }
    }

LABEL_88:
    v55 = v71;
    v56 = 1;
    do
    {
      v57 = v56;
      v56 *= 2;
    }

    while (v57 < v69 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(&v69, v57);
    v49 = New;
    if (v16)
    {
      v59 = 24 * v16;
      v60 = New;
      do
      {
        v61 = *v55;
        v60[1].f64[0] = v55[1].f64[0];
        *v60 = v61;
        v60 = (v60 + 24);
        v55 = (v55 + 24);
        v59 -= 24;
      }

      while (v59);
    }

    v62 = &New->f64[3 * v16];
    *v62 = v80;
    v62[2] = v81;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
    goto LABEL_94;
  }

  if (DWORD2(v69))
  {
    v77.__begin_ = "vt/array.h";
    v77.__end_ = "emplace_back";
    v77.__end_cap_.__value_ = 416;
    v78 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3d, Args = <const pxrInternal__aapl__pxrReserved__::GfVec3d &>]";
    v79 = 0;
LABEL_96:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    goto LABEL_33;
  }

  v12 = v69;
  if (*(&v70 + 1))
  {
    goto LABEL_82;
  }

  v13 = v71;
  if (v71)
  {
    v14 = atomic_load(&v71[-1]);
    if (v14 != 1)
    {
      goto LABEL_82;
    }

    v13 = v71;
    v15 = v71[-1].f64[1];
  }

  else
  {
    v15 = 0.0;
  }

  if (v69 == *&v15)
  {
LABEL_82:
    v45 = v71;
    v46 = 1;
    do
    {
      v47 = v46;
      v46 *= 2;
    }

    while (v47 < v69 + 1);
    v48 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(&v69, v47);
    v49 = v48;
    if (v12)
    {
      v50 = 24 * v12;
      v51 = v48;
      do
      {
        v52 = *v45;
        v51[1].f64[0] = v45[1].f64[0];
        *v51 = v52;
        v51 = (v51 + 24);
        v45 = (v45 + 24);
        v50 -= 24;
      }

      while (v50);
    }

    v53 = *&__sz[1];
    v54 = &v48->f64[3 * v12];
    v54[2] = __sz[3];
    *v54 = v53;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
LABEL_94:
    v71 = v49;
    goto LABEL_32;
  }

  v20 = *&__sz[1];
  v21 = v13 + 24 * v69;
  *(v21 + 16) = __sz[3];
  *v21 = v20;
LABEL_32:
  *&v69 = v69 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v64) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v66, v69);
  v23 = v66;
  if (v69)
  {
    v24 = v71;
    v25 = (v71 + 24 * v69);
    do
    {
      v26 = *v24;
      *&v26.f64[0] = vcvt_f32_f64(*v24);
      v27 = v24[1].f64[0];
      *&v26.f64[1] = v27;
      *v23++ = v26;
      v24 = (v24 + 24);
    }

    while (v24 != v25);
    v23 = v66;
  }

  if (!IsPrimvar)
  {
    goto LABEL_56;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v29 = Indices;
  if (Indices)
  {
    memset(&v77, 0, sizeof(v77));
    std::vector<int>::resize(&v77, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v30 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v31 = __sz[4] + 4 * __sz[0];
    if (v30 != v31)
    {
      begin = v77.__begin_;
      do
      {
        v33 = *v30++;
        *begin++ = v33;
      }

      while (v30 != v31);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v35 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v35 + 23) < 0)
      {
        v37 = *v35;
      }
    }

    v36 = REGeomModelDescriptorAddIndexedAttributeVector3F();
    if (v77.__begin_)
    {
      v77.__end_ = v77.__begin_;
      operator delete(v77.__begin_);
    }
  }

  else
  {
    v36 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v29 & 1) == 0)
  {
LABEL_56:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v39 = 1;
    }

    else
    {
      v39 = IsArray;
    }

    if ((v39 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v41 = IsScalar) : (v41 = 0), v41 == 1))
    {
      if (!a3)
      {
        v42 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v42 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v42 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v42);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3800](a1, a3, v11, v69, v23))
      {
        v36 = 1;
        goto LABEL_73;
      }
    }

    goto LABEL_72;
  }

LABEL_73:
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v74);
  if (v73)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v73);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v36;
}

void sub_24756F2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a24);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a29);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2dEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, uint64_t *a4)
{
  v143 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v128, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v128);
  }

  else
  {
    v128 = 3;
    v129 = 0;
    v4 = &v128;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v131 = 0;
    v132 = 0;
    v12 = *a4;
    *__sz = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_187;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v141, 200, &realityio::FoundationErrorCategory(void)::instance, &v140);
      *&__sz[8] = v141;
      *&__sz[24] = *v142;
      *&__sz[39] = *&v142[15];
      v35 = v142[23];
      memset(v142, 0, sizeof(v142));
      __sz[0] = 0;
      __sz[47] = v35;
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v134, a2);
    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v134);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v16))
    {
      v27 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v134);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v27);
    }

    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v134);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
    v133 = v28;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v34 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v34 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v141, 200, &realityio::FoundationErrorCategory(void)::instance, &v140);
      *&__sz[8] = v141;
      *&__sz[24] = *v142;
      *&__sz[39] = *&v142[15];
      v49 = v142[23];
      memset(v142, 0, sizeof(v142));
      __sz[0] = 0;
      __sz[47] = v49;
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v139.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(&v139))
      {
        v29 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(&v139);
        v30 = *(v29 + 16);
        v141 = *v29;
        *v142 = v30;
        v31 = *(v29 + 32);
        if (v31)
        {
          v32 = *&v142[8];
          if (!*&v142[8])
          {
            v32 = (v31 - 16);
          }

          atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v141;
        *&__sz[24] = *v142;
        v141 = 0u;
        memset(v142, 0, sizeof(v142));
        *&__sz[40] = v31;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v141);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v139);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(&v139))
        {
          v53 = &v139;
        }

        else
        {
          v53 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v139, &v141);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v141);
        }

        v74 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v138, v53);
        if (v138.__r_.__value_.__l.__size_)
        {
          v75 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(v74);
          v76 = *(v75 + 16);
          v141 = *v75;
          *v142 = v76;
          v77 = *(v75 + 32);
          if (v77)
          {
            v78 = *&v142[8];
            if (!*&v142[8])
            {
              v78 = (v77 - 16);
            }

            atomic_fetch_add_explicit(v78, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v141;
          *&__sz[24] = *v142;
          v141 = 0u;
          memset(v142, 0, sizeof(v142));
          *&__sz[40] = v77;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v141);
        }

        else
        {
          v79 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v79 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v79);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v141, 200, &realityio::FoundationErrorCategory(void)::instance, &v140);
          *&__sz[8] = v141;
          *&__sz[24] = *v142;
          *&__sz[39] = *&v142[15];
          v80 = v142[23];
          memset(v142, 0, sizeof(v142));
          __sz[0] = 0;
          __sz[47] = v80;
          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v138);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v140, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v141, 200, &realityio::FoundationErrorCategory(void)::instance, &v140);
      *&__sz[8] = v141;
      *&__sz[24] = *v142;
      *&__sz[39] = *&v142[15];
      v72 = v142[23];
      memset(v142, 0, sizeof(v142));
      __sz[0] = 0;
      __sz[47] = v72;
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v139);
LABEL_143:
        v81 = v135;
        if (v135 && atomic_fetch_add_explicit((v135 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v81 + 8))(v81);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v125);
          v125 = *&__sz[8];
          v126 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v127 = *&__sz[40];
          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = 4 * (v125 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,realityio::DetailedError>::~Result(__sz);
LABEL_187:
        v94 = 0;
        goto LABEL_188;
      }

      v71 = v140.__r_.__value_.__r.__words[0];
    }

    else
    {
      v41 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v41 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
      }

      std::operator+<char>();
      v64 = std::string::append(&v136, ") at the given time: ");
      v65 = *&v64->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v137, v133);
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v137;
      }

      else
      {
        v66 = v137.__r_.__value_.__r.__words[0];
      }

      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v137.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v137.__r_.__value_.__l.__size_;
      }

      v68 = std::string::append(&v138, v66, size);
      v69 = *&v68->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v141, 200, &realityio::FoundationErrorCategory(void)::instance, &v140);
      *&__sz[8] = v141;
      *&__sz[24] = *v142;
      *&__sz[39] = *&v142[15];
      v70 = v142[23];
      memset(v142, 0, sizeof(v142));
      __sz[0] = 0;
      __sz[47] = v70;
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v71 = v136.__r_.__value_.__r.__words[0];
    }

    operator delete(v71);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
    v4 = *&__sz[16];
    v5 = __sz[39];
    memset(&__sz[16], 0, 24);
    if ((v142[7] & 0x80000000) != 0)
    {
      operator delete(v141);
    }

LABEL_90:
    v141 = 0uLL;
    if (DWORD2(v125))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2d, Args = <pxrInternal__aapl__pxrReserved__::GfVec2d>]";
      __sz[32] = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_99:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_151;
    }

    v59 = v125;
    if (*(&v126 + 1))
    {
      goto LABEL_197;
    }

    v60 = v127;
    if (v127)
    {
      v61 = atomic_load(v127 - 2);
      if (v61 != 1)
      {
        goto LABEL_197;
      }

      v60 = v127;
      v62 = *(v127 - 1);
    }

    else
    {
      v62 = 0;
    }

    if (v125 != v62)
    {
      *&v60[2 * v125] = v141;
LABEL_98:
      *&v125 = v125 + 1;
      goto LABEL_99;
    }

LABEL_197:
    v103 = v127;
    v104 = 1;
    do
    {
      v105 = v104;
      v104 *= 2;
    }

    while (v105 < v125 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(&v125, v105);
    v107 = New;
    if (v59)
    {
      v108 = 16 * v59;
      v109 = New;
      do
      {
        v110 = *v103;
        v103 += 2;
        *v109 = v110;
        v109 += 2;
        v108 -= 16;
      }

      while (v108);
    }

    *&New[2 * v59] = v141;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v125);
    v127 = v107;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v139, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v139);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v139);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v20);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v139);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v134 = v21;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v137.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2d>(&v137))
      {
        v22 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2d>(&v137);
        v23 = *v22;
        v24 = v22[1];
        v25 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v137);
        goto LABEL_81;
      }

      v36 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v137);
      {
        v38 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2d>(&v137);
        v39 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v140, v38);
        v25 = v140.__r_.__value_.__l.__size_ != 0;
        if (v140.__r_.__value_.__l.__size_)
        {
          v40 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2d>(v39);
          v23 = *v40;
          v24 = v40[1];
        }

        else
        {
          v73 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v73 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v73);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
          v23 = *__sz;
          v24 = *&__sz[8];
          v4 = *&__sz[16];
          v5 = __sz[39];
          memset(&__sz[16], 0, 24);
          if ((v142[7] & 0x80000000) != 0)
          {
            operator delete(v141);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v140);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v141, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
      v23 = *__sz;
      v24 = *&__sz[8];
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((v142[7] & 0x80000000) == 0)
      {
LABEL_79:
        v25 = 0;
        goto LABEL_80;
      }

      v48 = v141;
    }

    else
    {
      v33 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v33 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
      }

      std::operator+<char>();
      v42 = std::string::append(&v138, ") at the given time: ");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v136, v134);
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v136;
      }

      else
      {
        v44 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v136.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v140, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      *v142 = *(&v46->__r_.__value_.__l + 2);
      v141 = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
      v23 = *__sz;
      v24 = *&__sz[8];
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((v142[7] & 0x80000000) != 0)
      {
        operator delete(v141);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v48 = v138.__r_.__value_.__r.__words[0];
    }

    operator delete(v48);
    goto LABEL_79;
  }

  v26 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v26 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
  v23 = *__sz;
  v24 = *&__sz[8];
  v4 = *&__sz[16];
  v5 = __sz[39];
  memset(&__sz[16], 0, 24);
  if ((v142[7] & 0x80000000) != 0)
  {
    operator delete(v141);
  }

  v25 = 0;
LABEL_81:
  type_name = v139.__type_name;
  if (v139.__type_name && atomic_fetch_add_explicit((v139.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v25)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v125))
  {
    v55 = v125;
    if (*(&v126 + 1))
    {
      goto LABEL_204;
    }

    v56 = v127;
    if (v127)
    {
      v57 = atomic_load(v127 - 2);
      if (v57 != 1)
      {
        goto LABEL_204;
      }

      v56 = v127;
      v58 = *(v127 - 1);
    }

    else
    {
      v58 = 0;
    }

    if (v125 != v58)
    {
      v63 = &v56[2 * v125];
      *v63 = v23;
      v63[1] = v24;
LABEL_104:
      *&v125 = v125 + 1;
      goto LABEL_151;
    }

LABEL_204:
    v111 = v127;
    v112 = 1;
    do
    {
      v113 = v112;
      v112 *= 2;
    }

    while (v113 < v125 + 1);
    v114 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(&v125, v113);
    v115 = v114;
    if (v55)
    {
      v116 = 16 * v55;
      v117 = v114;
      do
      {
        v118 = *v111;
        v111 += 2;
        *v117 = v118;
        v117 += 2;
        v116 -= 16;
      }

      while (v116);
    }

    v119 = &v114[2 * v55];
    *v119 = v23;
    v119[1] = v24;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v125);
    v127 = v115;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2d, Args = <const pxrInternal__aapl__pxrReserved__::GfVec2d &>]";
  __sz[32] = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_151:
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v122, v125);
  v82 = v122;
  if (v125)
  {
    v83 = v127;
    v84 = 16 * v125;
    do
    {
      v85 = *v83++;
      *v82++ = vcvt_f32_f64(v85);
      v84 -= 16;
    }

    while (v84);
    v82 = v122;
  }

  if (!IsPrimvar)
  {
    goto LABEL_171;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v87 = Indices;
  if (Indices)
  {
    v141 = 0uLL;
    *v142 = 0;
    std::vector<int>::resize(&v141, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v88 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v89 = *&__sz[32] + 4 * *__sz;
    if (v88 != v89)
    {
      v90 = v141;
      do
      {
        v91 = *v88++;
        *v90++ = v91;
      }

      while (v88 != v89);
    }

    if (!a3)
    {
      v92 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v93 = (*v92 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v92 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v92);
      if (*(v93 + 23) < 0)
      {
        v95 = *v93;
      }
    }

    v94 = REGeomModelDescriptorAddIndexedAttributeVector2F();
    if (v141)
    {
      *(&v141 + 1) = v141;
      operator delete(v141);
    }
  }

  else
  {
    v94 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v87 & 1) == 0)
  {
LABEL_171:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v97 = 1;
    }

    else
    {
      v97 = IsArray;
    }

    if ((v97 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v99 = IsScalar) : (v99 = 0), v99 == 1))
    {
      if (!a3)
      {
        v100 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v100 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v100 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v100);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37F0](a1, a3, v13, v125, v82))
      {
        v94 = 1;
        goto LABEL_188;
      }
    }

    goto LABEL_187;
  }

LABEL_188:
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v125);
  if ((v132 & 7) != 0)
  {
    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v131 & 7) != 0)
  {
    atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v130);
  if (v129)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v129);
  }

  v101 = *MEMORY[0x277D85DE8];
  return v94;
}

void sub_2475703CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v113 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v99, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v99);
  }

  else
  {
    v99 = 3;
    v100 = 0;
    v4 = &v99;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v102 = 0;
    v103 = 0;
    v12 = *a4;
    __sz[0] = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(__sz, a2);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v96);
        v96 = *&__sz[1];
        v97 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v98 = v91;
        v91 = 0;
        if (v13)
        {
          v13 = v13;
        }

        else
        {
          v13 = 4 * (v96 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_84;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_119:
    v62 = 0;
    goto LABEL_120;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v109);
    v4 = __sz[2];
    v5 = HIBYTE(__sz[4]);
    memset(&__sz[2], 0, 24);
    if (SHIBYTE(v109.__end_cap_.__value_) < 0)
    {
      operator delete(v109.__begin_);
    }

LABEL_69:
    WORD2(v109.__begin_) = 0;
    LODWORD(v109.__begin_) = 0;
    if (DWORD2(v96))
    {
      __sz[0] = "vt/array.h";
      __sz[1] = "emplace_back";
      __sz[2] = 416;
      __sz[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3h, Args = <pxrInternal__aapl__pxrReserved__::GfVec3h>]";
      LOBYTE(__sz[4]) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_78:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_84;
    }

    v43 = v96;
    if (*(&v97 + 1))
    {
      goto LABEL_134;
    }

    v44 = v98;
    if (v98)
    {
      v45 = atomic_load(v98 - 2);
      if (v45 != 1)
      {
        goto LABEL_134;
      }

      v44 = v98;
      v46 = *(v98 - 1);
    }

    else
    {
      v46 = 0;
    }

    if (v96 != v46)
    {
      v47 = v44 + 6 * v96;
      *v47 = v109.__begin_;
      *(v47 + 4) = WORD2(v109.__begin_);
LABEL_77:
      *&v96 = v96 + 1;
      goto LABEL_78;
    }

LABEL_134:
    v72 = v98;
    v73 = 1;
    do
    {
      v74 = v73;
      v73 *= 2;
    }

    while (v74 < v96 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(&v96, v74);
    v76 = New;
    if (v43)
    {
      v77 = 6 * v43;
      v78 = New;
      do
      {
        v79 = *v72;
        *(v78 + 2) = *(v72 + 2);
        *v78 = v79;
        v78 = (v78 + 6);
        v72 = (v72 + 6);
        v77 -= 6;
      }

      while (v77);
    }

    v80 = New + 6 * v43;
    *v80 = v109.__begin_;
    *(v80 + 2) = WORD2(v109.__begin_);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v96);
    v98 = v76;
    goto LABEL_77;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v105, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v105);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v105);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v105);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v104 = v18;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v112 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3h>(v111))
      {
        v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3h>(v111);
        v20 = *v19 | (*(v19 + 2) << 32);
        v21 = 1;
LABEL_59:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v111);
        goto LABEL_60;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v111);
      {
        v26 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3h>(v111);
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v110, v26);
        v21 = v110.__r_.__value_.__l.__size_ != 0;
        if (v110.__r_.__value_.__l.__size_)
        {
          v28 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3h>(v27);
          v20 = *v28 | (*(v28 + 2) << 32);
        }

        else
        {
          v71 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v71 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v71);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v109);
          v20 = LODWORD(__sz[0]) | (WORD2(__sz[0]) << 32);
          v4 = __sz[2];
          v5 = HIBYTE(__sz[4]);
          memset(&__sz[2], 0, 24);
          if (SHIBYTE(v109.__end_cap_.__value_) < 0)
          {
            operator delete(v109.__begin_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v110);
        goto LABEL_59;
      }

      std::string::basic_string[abi:ne200100]<0>(&v109, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v109);
      v20 = LODWORD(__sz[0]) | (WORD2(__sz[0]) << 32);
      v4 = __sz[2];
      v5 = HIBYTE(__sz[4]);
      memset(&__sz[2], 0, 24);
      if ((SHIBYTE(v109.__end_cap_.__value_) & 0x80000000) == 0)
      {
LABEL_58:
        v21 = 0;
        goto LABEL_59;
      }

      begin = v109.__begin_;
    }

    else
    {
      v23 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v23 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
      }

      std::operator+<char>();
      v29 = std::string::append(&v108, ") at the given time: ");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v107, v104);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v107;
      }

      else
      {
        v31 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v107.__r_.__value_.__l.__size_;
      }

      v33 = std::string::append(&v110, v31, size);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v109.__end_cap_.__value_ = v33->__r_.__value_.__r.__words[2];
      *&v109.__begin_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v109);
      v35 = WORD2(__sz[0]);
      v36 = LODWORD(__sz[0]);
      v4 = __sz[2];
      v5 = HIBYTE(__sz[4]);
      memset(&__sz[2], 0, 24);
      if (SHIBYTE(v109.__end_cap_.__value_) < 0)
      {
        operator delete(v109.__begin_);
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      v20 = v36 | (v35 << 32);
      if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      begin = v108.__r_.__value_.__r.__words[0];
    }

    operator delete(begin);
    goto LABEL_58;
  }

  v22 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v22 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v109);
  v20 = LODWORD(__sz[0]) | (WORD2(__sz[0]) << 32);
  v4 = __sz[2];
  v5 = HIBYTE(__sz[4]);
  memset(&__sz[2], 0, 24);
  if (SHIBYTE(v109.__end_cap_.__value_) < 0)
  {
    operator delete(v109.__begin_);
  }

  v21 = 0;
LABEL_60:
  v38 = v106;
  if (v106 && atomic_fetch_add_explicit((v106 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v38 + 8))(v38);
  }

  if (!v21)
  {
    goto LABEL_69;
  }

  if (!DWORD2(v96))
  {
    v39 = v96;
    if (*(&v97 + 1))
    {
      goto LABEL_141;
    }

    v40 = v98;
    if (v98)
    {
      v41 = atomic_load(v98 - 2);
      if (v41 != 1)
      {
        goto LABEL_141;
      }

      v40 = v98;
      v42 = *(v98 - 1);
    }

    else
    {
      v42 = 0;
    }

    if (v96 != v42)
    {
      v48 = v40 + 6 * v96;
      *(v48 + 4) = WORD2(v20);
      *v48 = v20;
LABEL_83:
      *&v96 = v96 + 1;
      goto LABEL_84;
    }

LABEL_141:
    v81 = v98;
    v82 = 1;
    do
    {
      v83 = v82;
      v82 *= 2;
    }

    while (v83 < v96 + 1);
    v84 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(&v96, v83);
    v85 = v84;
    if (v39)
    {
      v86 = 6 * v39;
      v87 = v84;
      do
      {
        v88 = *v81;
        *(v87 + 2) = *(v81 + 2);
        *v87 = v88;
        v87 = (v87 + 6);
        v81 = (v81 + 6);
        v86 -= 6;
      }

      while (v86);
    }

    v89 = v84 + 6 * v39;
    *(v89 + 2) = WORD2(v20);
    *v89 = v20;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v96);
    v98 = v85;
    goto LABEL_83;
  }

  __sz[0] = "vt/array.h";
  __sz[1] = "emplace_back";
  __sz[2] = 416;
  __sz[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3h, Args = <const pxrInternal__aapl__pxrReserved__::GfVec3h &>]";
  LOBYTE(__sz[4]) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_84:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v93, v96);
  v50 = v93;
  if (v96)
  {
    v51 = v98;
    v52 = v98 + 3 * v96;
    v53 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v49) = *(v53 + 4 * *v51);
      DWORD1(v49) = *(v53 + 4 * v51[1]);
      DWORD2(v49) = *(v53 + 4 * v51[2]);
      *v50++ = v49;
      v51 += 3;
    }

    while (v51 != v52);
    v50 = v93;
  }

  if (!IsPrimvar)
  {
    goto LABEL_103;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v55 = Indices;
  if (Indices)
  {
    memset(&v109, 0, sizeof(v109));
    std::vector<int>::resize(&v109, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v56 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v57 = __sz[4] + 4 * __sz[0];
    if (v56 != v57)
    {
      v58 = v109.__begin_;
      do
      {
        v59 = *v56++;
        *v58++ = v59;
      }

      while (v56 != v57);
    }

    if (!a3)
    {
      v60 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v61 = (*v60 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v60 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v60);
      if (*(v61 + 23) < 0)
      {
        v63 = *v61;
      }
    }

    v62 = REGeomModelDescriptorAddIndexedAttributeVector3F();
    if (v109.__begin_)
    {
      v109.__end_ = v109.__begin_;
      operator delete(v109.__begin_);
    }
  }

  else
  {
    v62 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v55 & 1) == 0)
  {
LABEL_103:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v65 = 1;
    }

    else
    {
      v65 = IsArray;
    }

    if ((v65 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v67 = IsScalar) : (v67 = 0), v67 == 1))
    {
      if (!a3)
      {
        v68 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v68 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v68 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v68);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3800](a1, a3, v13, v96, v50))
      {
        v62 = 1;
        goto LABEL_120;
      }
    }

    goto LABEL_119;
  }

LABEL_120:
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v96);
  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v101);
  if (v100)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v100);
  }

  v69 = *MEMORY[0x277D85DE8];
  return v62;
}

void sub_247571188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v41 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v41 + 8))(v41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2hEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, uint64_t *a4)
{
  v139 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v124, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v124);
  }

  else
  {
    v124 = 3;
    v125 = 0;
    v4 = &v124;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v127 = 0;
    v128 = 0;
    v12 = *a4;
    *__sz = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_187;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      value_high = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = value_high;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v130, a2);
    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v130);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v16))
    {
      v25 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v130);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v25);
    }

    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v130);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
    v129 = v26;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v32 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v32 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      v46 = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = v46;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v135.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(&v135))
      {
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(&v135);
        v28 = *(v27 + 16);
        v137 = *v27;
        *&v138.__begin_ = v28;
        v29 = *(v27 + 32);
        if (v29)
        {
          end = v138.__end_;
          if (!v138.__end_)
          {
            end = (v29 - 16);
          }

          atomic_fetch_add_explicit(end, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v137;
        *&__sz[24] = *&v138.__begin_;
        v137 = 0u;
        memset(&v138, 0, sizeof(v138));
        *&__sz[40] = v29;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v137);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v135);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(&v135))
        {
          v50 = &v135;
        }

        else
        {
          v50 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v135, &v137);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v137);
        }

        v70 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v134, v50);
        if (v134.__r_.__value_.__l.__size_)
        {
          v71 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(v70);
          v72 = *(v71 + 16);
          v137 = *v71;
          *&v138.__begin_ = v72;
          v73 = *(v71 + 32);
          if (v73)
          {
            v74 = v138.__end_;
            if (!v138.__end_)
            {
              v74 = (v73 - 16);
            }

            atomic_fetch_add_explicit(v74, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v137;
          *&__sz[24] = *&v138.__begin_;
          v137 = 0u;
          memset(&v138, 0, sizeof(v138));
          *&__sz[40] = v73;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v137);
        }

        else
        {
          v75 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v75 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v75);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
          *&__sz[8] = v137;
          *&__sz[24] = v138.__begin_;
          *&__sz[32] = v138.__end_;
          *&__sz[39] = *(&v138.__end_ + 7);
          v76 = HIBYTE(v138.__end_cap_.__value_);
          memset(&v138, 0, sizeof(v138));
          __sz[0] = 0;
          __sz[47] = v76;
          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v134);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v136, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      v68 = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = v68;
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v135);
LABEL_143:
        v77 = v131;
        if (v131 && atomic_fetch_add_explicit((v131 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v77 + 8))(v77);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
          v121 = *&__sz[8];
          v122 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v123 = *&__sz[40];
          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = 4 * (v121 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,realityio::DetailedError>::~Result(__sz);
LABEL_187:
        v91 = 0;
        goto LABEL_188;
      }

      v67 = v136.__r_.__value_.__r.__words[0];
    }

    else
    {
      v38 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v38 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
      }

      std::operator+<char>();
      v60 = std::string::append(&v132, ") at the given time: ");
      v61 = *&v60->__r_.__value_.__l.__data_;
      v134.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v134.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v133, v129);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v133;
      }

      else
      {
        v62 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v133.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v133.__r_.__value_.__l.__size_;
      }

      v64 = std::string::append(&v134, v62, size);
      v65 = *&v64->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      v66 = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = v66;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v67 = v132.__r_.__value_.__r.__words[0];
    }

    operator delete(v67);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
    v4 = *&__sz[16];
    v5 = __sz[39];
    memset(&__sz[16], 0, 24);
    if (SHIBYTE(v138.__begin_) < 0)
    {
      operator delete(v137);
    }

LABEL_90:
    if (DWORD2(v121))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2h, Args = <pxrInternal__aapl__pxrReserved__::GfVec2h>]";
      __sz[32] = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_99:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_151;
    }

    v56 = v121;
    if (*(&v122 + 1))
    {
      goto LABEL_197;
    }

    v57 = v123;
    if (v123)
    {
      v58 = atomic_load(v123 - 2);
      if (v58 != 1)
      {
        goto LABEL_197;
      }

      v57 = v123;
      v59 = *(v123 - 1);
    }

    else
    {
      v59 = 0;
    }

    if (v121 != v59)
    {
      *(v57 + v121) = 0;
LABEL_98:
      *&v121 = v121 + 1;
      goto LABEL_99;
    }

LABEL_197:
    v100 = v123;
    v101 = 1;
    do
    {
      v102 = v101;
      v101 *= 2;
    }

    while (v102 < v121 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(&v121, v102);
    v104 = New;
    if (v56)
    {
      v105 = 4 * v56;
      v106 = New;
      do
      {
        v107 = *v100;
        v100 = (v100 + 4);
        *v106 = v107;
        v106 = (v106 + 4);
        v105 -= 4;
      }

      while (v105);
    }

    *(New + v56) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
    v123 = v104;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v135, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v20);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v130 = v21;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v133.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2h>(&v133))
      {
        v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2h>(&v133);
        v23 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v133);
        goto LABEL_81;
      }

      v34 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v133);
      {
        v36 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2h>(&v133);
        v37 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v136, v36);
        v23 = v136.__r_.__value_.__l.__size_ != 0;
        if (v136.__r_.__value_.__l.__size_)
        {
          v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2h>(v37);
        }

        else
        {
          v69 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v69 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v69);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
          v22 = *__sz;
          v4 = *&__sz[16];
          v5 = __sz[39];
          memset(&__sz[16], 0, 24);
          if (SHIBYTE(v138.__begin_) < 0)
          {
            operator delete(v137);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v136);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v137, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((SHIBYTE(v138.__begin_) & 0x80000000) == 0)
      {
LABEL_79:
        v23 = 0;
        goto LABEL_80;
      }

      v45 = v137;
    }

    else
    {
      v31 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v31 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
      }

      std::operator+<char>();
      v39 = std::string::append(&v134, ") at the given time: ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v132, v130);
      if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v132;
      }

      else
      {
        v41 = v132.__r_.__value_.__r.__words[0];
      }

      if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v132.__r_.__value_.__l.__size_;
      }

      v43 = std::string::append(&v136, v41, v42);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v138.__begin_ = v43->__r_.__value_.__r.__words[2];
      v137 = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if (SHIBYTE(v138.__begin_) < 0)
      {
        operator delete(v137);
      }

      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v45 = v134.__r_.__value_.__r.__words[0];
    }

    operator delete(v45);
    goto LABEL_79;
  }

  v24 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v24 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
  v22 = *__sz;
  v4 = *&__sz[16];
  v5 = __sz[39];
  memset(&__sz[16], 0, 24);
  if (SHIBYTE(v138.__begin_) < 0)
  {
    operator delete(v137);
  }

  v23 = 0;
LABEL_81:
  type_name = v135.__type_name;
  if (v135.__type_name && atomic_fetch_add_explicit((v135.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v23)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v121))
  {
    v52 = v121;
    if (*(&v122 + 1))
    {
      goto LABEL_204;
    }

    v53 = v123;
    if (v123)
    {
      v54 = atomic_load(v123 - 2);
      if (v54 != 1)
      {
        goto LABEL_204;
      }

      v53 = v123;
      v55 = *(v123 - 1);
    }

    else
    {
      v55 = 0;
    }

    if (v121 != v55)
    {
      *(v53 + v121) = v22;
LABEL_104:
      *&v121 = v121 + 1;
      goto LABEL_151;
    }

LABEL_204:
    v108 = v123;
    v109 = 1;
    do
    {
      v110 = v109;
      v109 *= 2;
    }

    while (v110 < v121 + 1);
    v111 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(&v121, v110);
    v112 = v111;
    if (v52)
    {
      v113 = 4 * v52;
      v114 = v111;
      do
      {
        v115 = *v108;
        v108 = (v108 + 4);
        *v114 = v115;
        v114 = (v114 + 4);
        v113 -= 4;
      }

      while (v113);
    }

    *(v111 + v52) = v22;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
    v123 = v112;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2h, Args = <const pxrInternal__aapl__pxrReserved__::GfVec2h &>]";
  __sz[32] = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_151:
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v118, v121);
  v78 = v118;
  if (v121)
  {
    v79 = v123;
    v80 = v123 + 2 * v121;
    v81 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v82) = *(v81 + 4 * *v79);
      HIDWORD(v82) = *(v81 + 4 * v79[1]);
      *v78++ = v82;
      v79 += 2;
    }

    while (v79 != v80);
    v78 = v118;
  }

  if (!IsPrimvar)
  {
    goto LABEL_171;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v84 = Indices;
  if (Indices)
  {
    v137 = 0uLL;
    v138.__begin_ = 0;
    std::vector<int>::resize(&v137, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v85 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v86 = *&__sz[32] + 4 * *__sz;
    if (v85 != v86)
    {
      v87 = v137;
      do
      {
        v88 = *v85++;
        *v87++ = v88;
      }

      while (v85 != v86);
    }

    if (!a3)
    {
      v89 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v90 = (*v89 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v89 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
      if (*(v90 + 23) < 0)
      {
        v92 = *v90;
      }
    }

    v91 = REGeomModelDescriptorAddIndexedAttributeVector2F();
    if (v137)
    {
      *(&v137 + 1) = v137;
      operator delete(v137);
    }
  }

  else
  {
    v91 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v84 & 1) == 0)
  {
LABEL_171:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v94 = 1;
    }

    else
    {
      v94 = IsArray;
    }

    if ((v94 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v96 = IsScalar) : (v96 = 0), v96 == 1))
    {
      if (!a3)
      {
        v97 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v97 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v97 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v97);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37F0](a1, a3, v13, v121, v78))
      {
        v91 = 1;
        goto LABEL_188;
      }
    }

    goto LABEL_187;
  }

LABEL_188:
  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v127 & 7) != 0)
  {
    atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v126);
  if (v125)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v125);
  }

  v98 = *MEMORY[0x277D85DE8];
  return v91;
}

void sub_247572360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v64, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v64);
  }

  else
  {
    v64 = 3;
    v65 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v67 = 0;
    v68 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
        v61 = *&__sz[1];
        v62 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v63 = v56;
        v56 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v61 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_37;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_73:
    v31 = 0;
    goto LABEL_74;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    v72 = 0uLL;
    if (DWORD2(v61))
    {
      v69.__begin_ = "vt/array.h";
      v69.__end_ = "emplace_back";
      v69.__end_cap_.__value_ = 416;
      v70 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4f, Args = <pxrInternal__aapl__pxrReserved__::GfVec4f>]";
      v71 = 0;
      goto LABEL_97;
    }

    v12 = v61;
    if (!*(&v62 + 1))
    {
      v13 = v63;
      if (!v63)
      {
        v17 = 0;
LABEL_30:
        if (v61 != v17)
        {
          v18 = v72;
          goto LABEL_32;
        }

        goto LABEL_89;
      }

      v16 = atomic_load(v63 - 2);
      if (v16 == 1)
      {
        v13 = v63;
        v17 = *(v63 - 1);
        goto LABEL_30;
      }
    }

LABEL_89:
    v48 = v63;
    v49 = 1;
    do
    {
      v50 = v49;
      v49 *= 2;
    }

    while (v50 < v61 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(&v61, v50);
    v44 = New;
    if (v12)
    {
      v52 = 16 * v12;
      v53 = New;
      do
      {
        v54 = *v48;
        v48 += 2;
        *v53 = v54;
        v53 += 2;
        v52 -= 16;
      }

      while (v52);
    }

    *&New[2 * v12] = v72;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
    goto LABEL_95;
  }

  if (DWORD2(v61))
  {
    v69.__begin_ = "vt/array.h";
    v69.__end_ = "emplace_back";
    v69.__end_cap_.__value_ = 416;
    v70 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4f, Args = <const pxrInternal__aapl__pxrReserved__::GfVec4f &>]";
    v71 = 0;
LABEL_97:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    goto LABEL_34;
  }

  v12 = v61;
  if (*(&v62 + 1))
  {
    goto LABEL_83;
  }

  v13 = v63;
  if (v63)
  {
    v14 = atomic_load(v63 - 2);
    if (v14 != 1)
    {
      goto LABEL_83;
    }

    v13 = v63;
    v15 = *(v63 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v61 == v15)
  {
LABEL_83:
    v40 = v63;
    v41 = 1;
    do
    {
      v42 = v41;
      v41 *= 2;
    }

    while (v42 < v61 + 1);
    v43 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(&v61, v42);
    v44 = v43;
    if (v12)
    {
      v45 = 16 * v12;
      v46 = v43;
      do
      {
        v47 = *v40;
        v40 += 2;
        *v46 = v47;
        v46 += 2;
        v45 -= 16;
      }

      while (v45);
    }

    *&v43[2 * v12] = *&__sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
LABEL_95:
    v63 = v44;
    goto LABEL_33;
  }

  v18 = *&__sz[1];
LABEL_32:
  *&v13[2 * v12] = v18;
LABEL_33:
  *&v61 = v61 + 1;
LABEL_34:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v56) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_37:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v58, v61);
  v19 = v58;
  if (v61)
  {
    v20 = v63;
    v21 = 16 * v61;
    do
    {
      v22 = *v20;
      v20 += 2;
      *v19++ = v22;
      v21 -= 16;
    }

    while (v21);
    v19 = v58;
  }

  if (!IsPrimvar)
  {
    goto LABEL_57;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v24 = Indices;
  if (Indices)
  {
    memset(&v69, 0, sizeof(v69));
    std::vector<int>::resize(&v69, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v25 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v26 = __sz[4] + 4 * __sz[0];
    if (v25 != v26)
    {
      begin = v69.__begin_;
      do
      {
        v28 = *v25++;
        *begin++ = v28;
      }

      while (v25 != v26);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v30 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v30 + 23) < 0)
      {
        v32 = *v30;
      }
    }

    v31 = REGeomModelDescriptorAddIndexedAttributeVector4F();
    if (v69.__begin_)
    {
      v69.__end_ = v69.__begin_;
      operator delete(v69.__begin_);
    }
  }

  else
  {
    v31 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v24 & 1) == 0)
  {
LABEL_57:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v34 = 1;
    }

    else
    {
      v34 = IsArray;
    }

    if ((v34 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v36 = IsScalar) : (v36 = 0), v36 == 1))
    {
      if (!a3)
      {
        v37 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v37 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v37 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v37);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3810](a1, a3, v11, v61, v19))
      {
        v31 = 1;
        goto LABEL_74;
      }
    }

    goto LABEL_73;
  }

LABEL_74:
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
  if (v65)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v31;
}

void sub_247572C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a24);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a30);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, uint64_t *a4)
{
  v153 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v138, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v138);
  }

  else
  {
    v138 = 3;
    v139 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v141 = 0;
    v142 = 0;
    v11 = *a4;
    *__sz = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v12 = realityio::meshAttributeRateForInterpolation(__sz, v10);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_187;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v151, 200, &realityio::FoundationErrorCategory(void)::instance, &v150);
      *&__sz[8] = v151;
      *&__sz[24] = *v152;
      *&__sz[39] = *&v152[15];
      v36 = v152[23];
      memset(v152, 0, sizeof(v152));
      __sz[0] = 0;
      __sz[47] = v36;
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v144, a2);
    v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v144);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v15))
    {
      v28 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v144);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v28);
    }

    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v144);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v16);
    __p = v29;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v35 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v35 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v151, 200, &realityio::FoundationErrorCategory(void)::instance, &v150);
      *&__sz[8] = v151;
      *&__sz[24] = *v152;
      *&__sz[39] = *&v152[15];
      v52 = v152[23];
      memset(v152, 0, sizeof(v152));
      __sz[0] = 0;
      __sz[47] = v52;
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v149.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(&v149))
      {
        v30 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(&v149);
        v31 = *(v30 + 16);
        v151 = *v30;
        *v152 = v31;
        v32 = *(v30 + 32);
        if (v32)
        {
          v33 = *&v152[8];
          if (!*&v152[8])
          {
            v33 = (v32 - 16);
          }

          atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v151;
        *&__sz[24] = *v152;
        v151 = 0u;
        memset(v152, 0, sizeof(v152));
        *&__sz[40] = v32;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v151);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v149);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(&v149))
        {
          v56 = &v149;
        }

        else
        {
          v56 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v149, &v151);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v151);
        }

        v79 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v148, v56);
        if (v148.__r_.__value_.__l.__size_)
        {
          v80 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(v79);
          v81 = *(v80 + 16);
          v151 = *v80;
          *v152 = v81;
          v82 = *(v80 + 32);
          if (v82)
          {
            v83 = *&v152[8];
            if (!*&v152[8])
            {
              v83 = (v82 - 16);
            }

            atomic_fetch_add_explicit(v83, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v151;
          *&__sz[24] = *v152;
          v151 = 0u;
          memset(v152, 0, sizeof(v152));
          *&__sz[40] = v82;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v151);
        }

        else
        {
          v84 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v84 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v84);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v151, 200, &realityio::FoundationErrorCategory(void)::instance, &v150);
          *&__sz[8] = v151;
          *&__sz[24] = *v152;
          *&__sz[39] = *&v152[15];
          v86 = v152[23];
          memset(v152, 0, sizeof(v152));
          __sz[0] = 0;
          __sz[47] = v86;
          if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v150.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v148);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v150, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v151, 200, &realityio::FoundationErrorCategory(void)::instance, &v150);
      *&__sz[8] = v151;
      *&__sz[24] = *v152;
      *&__sz[39] = *&v152[15];
      v77 = v152[23];
      memset(v152, 0, sizeof(v152));
      __sz[0] = 0;
      __sz[47] = v77;
      if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v149);
LABEL_143:
        v87 = v145;
        if (v145 && atomic_fetch_add_explicit((v145 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v87 + 8))(v87);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v135);
          v135 = *&__sz[8];
          v136 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v137 = *&__sz[40];
          if (v12)
          {
            v12 = v12;
          }

          else
          {
            v12 = 4 * (v135 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,realityio::DetailedError>::~Result(__sz);
LABEL_187:
        v101 = 0;
        goto LABEL_188;
      }

      v76 = v150.__r_.__value_.__r.__words[0];
    }

    else
    {
      v43 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v43 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v43);
      }

      std::operator+<char>();
      v69 = std::string::append(&v146, ") at the given time: ");
      v70 = *&v69->__r_.__value_.__l.__data_;
      v148.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&v148.__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v147, *&__p);
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v147;
      }

      else
      {
        v71 = v147.__r_.__value_.__r.__words[0];
      }

      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v147.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v147.__r_.__value_.__l.__size_;
      }

      v73 = std::string::append(&v148, v71, size);
      v74 = *&v73->__r_.__value_.__l.__data_;
      v150.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
      *&v150.__r_.__value_.__l.__data_ = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v151, 200, &realityio::FoundationErrorCategory(void)::instance, &v150);
      *&__sz[8] = v151;
      *&__sz[24] = *v152;
      *&__sz[39] = *&v152[15];
      v75 = v152[23];
      memset(v152, 0, sizeof(v152));
      __sz[0] = 0;
      __sz[47] = v75;
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v147.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v148.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v76 = v146.__r_.__value_.__r.__words[0];
    }

    operator delete(v76);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v17 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v17 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
    v27 = *&__sz[16];
    v4 = __sz[39];
    memset(&__sz[16], 0, 24);
    __p = v27;
    if ((v152[7] & 0x80000000) != 0)
    {
      operator delete(v151);
    }

LABEL_90:
    v151 = 0u;
    *v152 = 0u;
    if (DWORD2(v135))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4d, Args = <pxrInternal__aapl__pxrReserved__::GfVec4d>]";
      __sz[32] = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_99:
      if (v4 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_151;
    }

    v63 = v135;
    if (*(&v136 + 1))
    {
      goto LABEL_197;
    }

    v64 = v137;
    if (v137)
    {
      v65 = atomic_load(v137 - 2);
      if (v65 != 1)
      {
        goto LABEL_197;
      }

      v64 = v137;
      v66 = *(v137 - 1);
    }

    else
    {
      v66 = 0;
    }

    if (v135 != v66)
    {
      v67 = &v64[4 * v135];
      *v67 = v151;
      *(v67 + 1) = *v152;
LABEL_98:
      *&v135 = v135 + 1;
      goto LABEL_99;
    }

LABEL_197:
    v110 = v137;
    v111 = 1;
    do
    {
      v112 = v111;
      v111 *= 2;
    }

    while (v112 < v135 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(&v135, v112);
    v114 = New;
    if (v63)
    {
      v115 = 32 * v63;
      v116 = New;
      do
      {
        v117 = *v110;
        v118 = *(v110 + 1);
        v110 += 4;
        *v116 = v117;
        *(v116 + 1) = v118;
        v116 += 4;
        v115 -= 32;
      }

      while (v115);
    }

    v119 = &New[4 * v63];
    *v119 = v151;
    *(v119 + 1) = *v152;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v135);
    v137 = v114;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v149, a2);
  v13 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v149);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v13))
  {
    v19 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v149);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v19);
  }

  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v149);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v14);
  v144 = v20;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v147.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4d>(&v147))
      {
        v21 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4d>(&v147);
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 24);
        __p = *(v21 + 16);
        v25 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v147);
        goto LABEL_81;
      }

      v38 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v147);
      {
        v40 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4d>(&v147);
        v41 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v150, v40);
        v25 = v150.__r_.__value_.__l.__size_ != 0;
        if (v150.__r_.__value_.__l.__size_)
        {
          v42 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4d>(v41);
          v22 = *v42;
          v23 = *(v42 + 8);
          v24 = *(v42 + 24);
          __p = *(v42 + 16);
        }

        else
        {
          v78 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v78 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v78);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
          v22 = *__sz;
          v23 = *&__sz[8];
          v85 = *&__sz[16];
          v24 = *&__sz[24];
          v4 = __sz[39];
          memset(&__sz[16], 0, 24);
          __p = v85;
          if ((v152[7] & 0x80000000) != 0)
          {
            operator delete(v151);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v150);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v151, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
      v22 = *__sz;
      v23 = *&__sz[8];
      v57 = *&__sz[16];
      v24 = *&__sz[24];
      v4 = __sz[39];
      memset(&__sz[16], 0, 24);
      __p = v57;
      if ((v152[7] & 0x80000000) == 0)
      {
LABEL_79:
        v25 = 0;
        goto LABEL_80;
      }

      v51 = v151;
    }

    else
    {
      v34 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v34 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
      }

      std::operator+<char>();
      v44 = std::string::append(&v148, ") at the given time: ");
      v45 = *&v44->__r_.__value_.__l.__data_;
      v150.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v150.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v146, v144);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v146;
      }

      else
      {
        v46 = v146.__r_.__value_.__r.__words[0];
      }

      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v146.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v150, v46, v47);
      v49 = *&v48->__r_.__value_.__l.__data_;
      *v152 = *(&v48->__r_.__value_.__l + 2);
      v151 = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
      v22 = *__sz;
      v23 = *&__sz[8];
      v50 = *&__sz[16];
      v24 = *&__sz[24];
      v4 = __sz[39];
      memset(&__sz[16], 0, 24);
      __p = v50;
      if ((v152[7] & 0x80000000) != 0)
      {
        operator delete(v151);
      }

      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v51 = v148.__r_.__value_.__r.__words[0];
    }

    operator delete(v51);
    goto LABEL_79;
  }

  v26 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v26 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
  v22 = *__sz;
  v23 = *&__sz[8];
  v37 = *&__sz[16];
  v24 = *&__sz[24];
  v4 = __sz[39];
  memset(&__sz[16], 0, 24);
  __p = v37;
  if ((v152[7] & 0x80000000) != 0)
  {
    operator delete(v151);
  }

  v25 = 0;
LABEL_81:
  type_name = v149.__type_name;
  if (v149.__type_name && atomic_fetch_add_explicit((v149.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v25)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v135))
  {
    v59 = v135;
    if (*(&v136 + 1))
    {
      goto LABEL_204;
    }

    v60 = v137;
    if (v137)
    {
      v61 = atomic_load(v137 - 2);
      if (v61 != 1)
      {
        goto LABEL_204;
      }

      v60 = v137;
      v62 = *(v137 - 1);
    }

    else
    {
      v62 = 0;
    }

    if (v135 != v62)
    {
      v68 = &v60[4 * v135];
      *v68 = v22;
      v68[1] = v23;
      v68[2] = __p;
      v68[3] = v24;
LABEL_104:
      *&v135 = v135 + 1;
      goto LABEL_151;
    }

LABEL_204:
    v120 = v137;
    v121 = 1;
    do
    {
      v122 = v121;
      v121 *= 2;
    }

    while (v122 < v135 + 1);
    v123 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(&v135, v122);
    v124 = v123;
    if (v59)
    {
      v125 = 32 * v59;
      v126 = v123;
      do
      {
        v127 = *v120;
        v128 = *(v120 + 1);
        v120 += 4;
        *v126 = v127;
        *(v126 + 1) = v128;
        v126 += 4;
        v125 -= 32;
      }

      while (v125);
    }

    v129 = &v123[4 * v59];
    *v129 = v22;
    v129[1] = v23;
    v129[2] = __p;
    v129[3] = v24;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v135);
    v137 = v124;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4d, Args = <const pxrInternal__aapl__pxrReserved__::GfVec4d &>]";
  __sz[32] = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_151:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v132, v135);
  v88 = v132;
  if (v135)
  {
    v89 = v137;
    v90 = 32 * v135;
    do
    {
      v92 = *v89;
      v91 = v89[1];
      v89 += 2;
      *v88++ = vcvt_hight_f32_f64(vcvt_f32_f64(v92), v91);
      v90 -= 32;
    }

    while (v90);
    v88 = v132;
  }

  if (!IsPrimvar)
  {
    goto LABEL_171;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v94 = Indices;
  if (Indices)
  {
    v151 = 0uLL;
    *v152 = 0;
    std::vector<int>::resize(&v151, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v95 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v96 = *&__sz[32] + 4 * *__sz;
    if (v95 != v96)
    {
      v97 = v151;
      do
      {
        v98 = *v95++;
        *v97++ = v98;
      }

      while (v95 != v96);
    }

    if (!a3)
    {
      v99 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v100 = (*v99 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v99 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v99);
      if (*(v100 + 23) < 0)
      {
        v102 = *v100;
      }
    }

    v101 = REGeomModelDescriptorAddIndexedAttributeVector4F();
    if (v151)
    {
      *(&v151 + 1) = v151;
      operator delete(v151);
    }
  }

  else
  {
    v101 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v94 & 1) == 0)
  {
LABEL_171:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v12 == 4)
    {
      v104 = 1;
    }

    else
    {
      v104 = IsArray;
    }

    if ((v104 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v12) ? (v106 = IsScalar) : (v106 = 0), v106 == 1))
    {
      if (!a3)
      {
        v107 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v107 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v107 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v107);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3810](a1, a3, v12, v135, v88))
      {
        v101 = 1;
        goto LABEL_188;
      }
    }

    goto LABEL_187;
  }

LABEL_188:
  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v135);
  if ((v142 & 7) != 0)
  {
    atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v141 & 7) != 0)
  {
    atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v140);
  if (v139)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v139);
  }

  v108 = *MEMORY[0x277D85DE8];
  return v101;
}

void sub_247573DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, uint64_t *a4)
{
  v139 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v124, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v124);
  }

  else
  {
    v124 = 3;
    v125 = 0;
    v4 = &v124;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v127 = 0;
    v128 = 0;
    v12 = *a4;
    *__sz = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_187;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      value_high = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = value_high;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v130, a2);
    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v130);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v16))
    {
      v25 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v130);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v25);
    }

    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v130);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
    v129 = v26;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v32 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v32 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      v46 = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = v46;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v135.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(&v135))
      {
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(&v135);
        v28 = *(v27 + 16);
        v137 = *v27;
        *&v138.__begin_ = v28;
        v29 = *(v27 + 32);
        if (v29)
        {
          end = v138.__end_;
          if (!v138.__end_)
          {
            end = (v29 - 16);
          }

          atomic_fetch_add_explicit(end, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v137;
        *&__sz[24] = *&v138.__begin_;
        v137 = 0u;
        memset(&v138, 0, sizeof(v138));
        *&__sz[40] = v29;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v137);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v135);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(&v135))
        {
          v50 = &v135;
        }

        else
        {
          v50 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v135, &v137);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v137);
        }

        v70 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v134, v50);
        if (v134.__r_.__value_.__l.__size_)
        {
          v71 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(v70);
          v72 = *(v71 + 16);
          v137 = *v71;
          *&v138.__begin_ = v72;
          v73 = *(v71 + 32);
          if (v73)
          {
            v74 = v138.__end_;
            if (!v138.__end_)
            {
              v74 = (v73 - 16);
            }

            atomic_fetch_add_explicit(v74, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v137;
          *&__sz[24] = *&v138.__begin_;
          v137 = 0u;
          memset(&v138, 0, sizeof(v138));
          *&__sz[40] = v73;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v137);
        }

        else
        {
          v75 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v75 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v75);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
          *&__sz[8] = v137;
          *&__sz[24] = v138.__begin_;
          *&__sz[32] = v138.__end_;
          *&__sz[39] = *(&v138.__end_ + 7);
          v76 = HIBYTE(v138.__end_cap_.__value_);
          memset(&v138, 0, sizeof(v138));
          __sz[0] = 0;
          __sz[47] = v76;
          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v134);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v136, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      v68 = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = v68;
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v135);
LABEL_143:
        v77 = v131;
        if (v131 && atomic_fetch_add_explicit((v131 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v77 + 8))(v77);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
          v121 = *&__sz[8];
          v122 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v123 = *&__sz[40];
          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = 4 * (v121 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,realityio::DetailedError>::~Result(__sz);
LABEL_187:
        v91 = 0;
        goto LABEL_188;
      }

      v67 = v136.__r_.__value_.__r.__words[0];
    }

    else
    {
      v38 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v38 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
      }

      std::operator+<char>();
      v60 = std::string::append(&v132, ") at the given time: ");
      v61 = *&v60->__r_.__value_.__l.__data_;
      v134.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v134.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v133, v129);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v133;
      }

      else
      {
        v62 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v133.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v133.__r_.__value_.__l.__size_;
      }

      v64 = std::string::append(&v134, v62, size);
      v65 = *&v64->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v137, 200, &realityio::FoundationErrorCategory(void)::instance, &v136);
      *&__sz[8] = v137;
      *&__sz[24] = v138.__begin_;
      *&__sz[32] = v138.__end_;
      *&__sz[39] = *(&v138.__end_ + 7);
      v66 = HIBYTE(v138.__end_cap_.__value_);
      memset(&v138, 0, sizeof(v138));
      __sz[0] = 0;
      __sz[47] = v66;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v67 = v132.__r_.__value_.__r.__words[0];
    }

    operator delete(v67);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
    v4 = *&__sz[16];
    v5 = __sz[39];
    memset(&__sz[16], 0, 24);
    if (SHIBYTE(v138.__begin_) < 0)
    {
      operator delete(v137);
    }

LABEL_90:
    if (DWORD2(v121))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4h, Args = <pxrInternal__aapl__pxrReserved__::GfVec4h>]";
      __sz[32] = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_99:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_151;
    }

    v56 = v121;
    if (*(&v122 + 1))
    {
      goto LABEL_197;
    }

    v57 = v123;
    if (v123)
    {
      v58 = atomic_load(v123 - 2);
      if (v58 != 1)
      {
        goto LABEL_197;
      }

      v57 = v123;
      v59 = *(v123 - 1);
    }

    else
    {
      v59 = 0;
    }

    if (v121 != v59)
    {
      v57[v121] = 0;
LABEL_98:
      *&v121 = v121 + 1;
      goto LABEL_99;
    }

LABEL_197:
    v100 = v123;
    v101 = 1;
    do
    {
      v102 = v101;
      v101 *= 2;
    }

    while (v102 < v121 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(&v121, v102);
    v104 = New;
    if (v56)
    {
      v105 = 8 * v56;
      v106 = New;
      do
      {
        v107 = *v100++;
        *v106++ = v107;
        v105 -= 8;
      }

      while (v105);
    }

    New[v56] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
    v123 = v104;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v135, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v20);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v130 = v21;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v133.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4h>(&v133))
      {
        v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4h>(&v133);
        v23 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v133);
        goto LABEL_81;
      }

      v34 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v133);
      {
        v36 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4h>(&v133);
        v37 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v136, v36);
        v23 = v136.__r_.__value_.__l.__size_ != 0;
        if (v136.__r_.__value_.__l.__size_)
        {
          v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4h>(v37);
        }

        else
        {
          v69 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v69 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v69);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
          v22 = *__sz;
          v4 = *&__sz[16];
          v5 = __sz[39];
          memset(&__sz[16], 0, 24);
          if (SHIBYTE(v138.__begin_) < 0)
          {
            operator delete(v137);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v136);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v137, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((SHIBYTE(v138.__begin_) & 0x80000000) == 0)
      {
LABEL_79:
        v23 = 0;
        goto LABEL_80;
      }

      v45 = v137;
    }

    else
    {
      v31 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v31 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
      }

      std::operator+<char>();
      v39 = std::string::append(&v134, ") at the given time: ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v132, v130);
      if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v132;
      }

      else
      {
        v41 = v132.__r_.__value_.__r.__words[0];
      }

      if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v132.__r_.__value_.__l.__size_;
      }

      v43 = std::string::append(&v136, v41, v42);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v138.__begin_ = v43->__r_.__value_.__r.__words[2];
      v137 = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if (SHIBYTE(v138.__begin_) < 0)
      {
        operator delete(v137);
      }

      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v45 = v134.__r_.__value_.__r.__words[0];
    }

    operator delete(v45);
    goto LABEL_79;
  }

  v24 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v24 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
  v22 = *__sz;
  v4 = *&__sz[16];
  v5 = __sz[39];
  memset(&__sz[16], 0, 24);
  if (SHIBYTE(v138.__begin_) < 0)
  {
    operator delete(v137);
  }

  v23 = 0;
LABEL_81:
  type_name = v135.__type_name;
  if (v135.__type_name && atomic_fetch_add_explicit((v135.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v23)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v121))
  {
    v52 = v121;
    if (*(&v122 + 1))
    {
      goto LABEL_204;
    }

    v53 = v123;
    if (v123)
    {
      v54 = atomic_load(v123 - 2);
      if (v54 != 1)
      {
        goto LABEL_204;
      }

      v53 = v123;
      v55 = *(v123 - 1);
    }

    else
    {
      v55 = 0;
    }

    if (v121 != v55)
    {
      v53[v121] = v22;
LABEL_104:
      *&v121 = v121 + 1;
      goto LABEL_151;
    }

LABEL_204:
    v108 = v123;
    v109 = 1;
    do
    {
      v110 = v109;
      v109 *= 2;
    }

    while (v110 < v121 + 1);
    v111 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(&v121, v110);
    v112 = v111;
    if (v52)
    {
      v113 = 8 * v52;
      v114 = v111;
      do
      {
        v115 = *v108++;
        *v114++ = v115;
        v113 -= 8;
      }

      while (v113);
    }

    v111[v52] = v22;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
    v123 = v112;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4h, Args = <const pxrInternal__aapl__pxrReserved__::GfVec4h &>]";
  __sz[32] = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
LABEL_151:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v118, v121);
  v78 = v118;
  if (v121)
  {
    v79 = v123;
    v80 = &v123[v121];
    v81 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v82) = *(v81 + 4 * *v79);
      DWORD1(v82) = *(v81 + 4 * v79[1]);
      DWORD2(v82) = *(v81 + 4 * v79[2]);
      HIDWORD(v82) = *(v81 + 4 * v79[3]);
      *v78++ = v82;
      v79 += 4;
    }

    while (v79 != v80);
    v78 = v118;
  }

  if (!IsPrimvar)
  {
    goto LABEL_171;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v84 = Indices;
  if (Indices)
  {
    v137 = 0uLL;
    v138.__begin_ = 0;
    std::vector<int>::resize(&v137, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v85 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v86 = *&__sz[32] + 4 * *__sz;
    if (v85 != v86)
    {
      v87 = v137;
      do
      {
        v88 = *v85++;
        *v87++ = v88;
      }

      while (v85 != v86);
    }

    if (!a3)
    {
      v89 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v90 = (*v89 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v89 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
      if (*(v90 + 23) < 0)
      {
        v92 = *v90;
      }
    }

    v91 = REGeomModelDescriptorAddIndexedAttributeVector4F();
    if (v137)
    {
      *(&v137 + 1) = v137;
      operator delete(v137);
    }
  }

  else
  {
    v91 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v84 & 1) == 0)
  {
LABEL_171:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v94 = 1;
    }

    else
    {
      v94 = IsArray;
    }

    if ((v94 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v96 = IsScalar) : (v96 = 0), v96 == 1))
    {
      if (!a3)
      {
        v97 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v97 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v97 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v97);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3810](a1, a3, v13, v121, v78))
      {
        v91 = 1;
        goto LABEL_188;
      }
    }

    goto LABEL_187;
  }

LABEL_188:
  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v121);
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v127 & 7) != 0)
  {
    atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v126);
  if (v125)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v125);
  }

  v98 = *MEMORY[0x277D85DE8];
  return v91;
}

void sub_247575058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<int,int>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v47, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v47);
  }

  else
  {
    v47 = 3;
    v48 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v50 = 0;
    v51 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
        v44 = *&__sz[1];
        v45 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v46 = v42;
        v42 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v44 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_29;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_61:
    v25 = 0;
    goto LABEL_62;
  }

  realityio::getAttributeValue<int>(a2, __sz);
  if (LOBYTE(__sz[0]) == 1)
  {
    if (DWORD2(v44))
    {
      v52.__begin_ = "vt/array.h";
      v52.__end_ = "emplace_back";
      v52.__end_cap_.__value_ = 416;
      v53 = "void pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back(Args &&...) [T = int, Args = <const int &>]";
      v54 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
      goto LABEL_26;
    }

    v12 = v44;
    if (*(&v45 + 1))
    {
      goto LABEL_69;
    }

    v13 = v46;
    if (v46)
    {
      v14 = atomic_load(v46 - 2);
      if (v14 != 1)
      {
        goto LABEL_69;
      }

      v13 = v46;
      v15 = *(v46 - 1);
    }

    else
    {
      v15 = 0;
    }

    if (v44 != v15)
    {
      *(v13 + v44) = __sz[1];
LABEL_25:
      *&v44 = v44 + 1;
      goto LABEL_26;
    }

LABEL_69:
    v33 = v46;
    v34 = 1;
    do
    {
      v35 = v34;
      v34 *= 2;
    }

    while (v35 < v44 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(&v44, v35);
    v37 = New;
    if (v12)
    {
      v38 = 4 * v12;
      v39 = New;
      do
      {
        v40 = *v33;
        v33 = (v33 + 4);
        *v39 = v40;
        v39 = (v39 + 4);
        v38 -= 4;
      }

      while (v38);
    }

    *(New + v12) = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
    v46 = v37;
    goto LABEL_25;
  }

  LODWORD(v52.__begin_) = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back<int>(&v44, &v52);
LABEL_26:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v42) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_29:
  v16 = v46;
  if (!IsPrimvar)
  {
    goto LABEL_45;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v18 = Indices;
  if (Indices)
  {
    memset(&v52, 0, sizeof(v52));
    std::vector<int>::resize(&v52, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v19 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v20 = __sz[4] + 4 * __sz[0];
    if (v19 != v20)
    {
      begin = v52.__begin_;
      do
      {
        v22 = *v19++;
        *begin++ = v22;
      }

      while (v19 != v20);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v24 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v24 + 23) < 0)
      {
        v26 = *v24;
      }
    }

    v25 = REGeomModelDescriptorAddIndexedAttributeInt32();
    if (v52.__begin_)
    {
      v52.__end_ = v52.__begin_;
      operator delete(v52.__begin_);
    }
  }

  else
  {
    v25 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v18 & 1) == 0)
  {
LABEL_45:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v28 = 1;
    }

    else
    {
      v28 = IsArray;
    }

    if ((v28 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v30 = IsScalar) : (v30 = 0), v30 == 1))
    {
      if (!a3)
      {
        v31 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v31 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v31 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37A0](a1, a3, v11, v44, v16))
      {
        v25 = 1;
        goto LABEL_62;
      }
    }

    goto LABEL_61;
  }

LABEL_62:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
  if (v48)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v48);
  }

  return v25;
}

void sub_2475757AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<unsigned int,unsigned int>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v58, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v58);
  }

  else
  {
    v58 = 3;
    v59 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v61 = 0;
    v62 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
        v55 = *&__sz[1];
        v56 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v57 = v53;
        v53 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v55 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_68:
    v29 = 0;
    goto LABEL_69;
  }

  realityio::getAttributeValue<unsigned int>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v55))
    {
      v63.__begin_ = "vt/array.h";
      v63.__end_ = "emplace_back";
      v63.__end_cap_.__value_ = 416;
      v64 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::emplace_back(Args &&...) [T = unsigned int, Args = <unsigned int>]";
      v65 = 0;
      goto LABEL_90;
    }

    v16 = v55;
    if (!*(&v56 + 1))
    {
      v17 = v57;
      if (!v57)
      {
        v19 = 0;
LABEL_30:
        if (v55 != v19)
        {
          *(v17 + v55) = 0;
          goto LABEL_32;
        }

        goto LABEL_82;
      }

      v18 = atomic_load(v57 - 2);
      if (v18 == 1)
      {
        v17 = v57;
        v19 = *(v57 - 1);
        goto LABEL_30;
      }
    }

LABEL_82:
    v45 = v57;
    v46 = 1;
    do
    {
      v47 = v46;
      v46 *= 2;
    }

    while (v47 < v55 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(&v55, v47);
    v41 = New;
    if (v16)
    {
      v49 = 4 * v16;
      v50 = New;
      do
      {
        v51 = *v45;
        v45 = (v45 + 4);
        *v50 = v51;
        v50 = (v50 + 4);
        v49 -= 4;
      }

      while (v49);
    }

    *(New + v16) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
    goto LABEL_88;
  }

  if (DWORD2(v55))
  {
    v63.__begin_ = "vt/array.h";
    v63.__end_ = "emplace_back";
    v63.__end_cap_.__value_ = 416;
    v64 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::emplace_back(Args &&...) [T = unsigned int, Args = <const unsigned int &>]";
    v65 = 0;
LABEL_90:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    goto LABEL_33;
  }

  v12 = v55;
  if (*(&v56 + 1))
  {
    goto LABEL_76;
  }

  v13 = v57;
  if (v57)
  {
    v14 = atomic_load(v57 - 2);
    if (v14 != 1)
    {
      goto LABEL_76;
    }

    v13 = v57;
    v15 = *(v57 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v55 == v15)
  {
LABEL_76:
    v37 = v57;
    v38 = 1;
    do
    {
      v39 = v38;
      v38 *= 2;
    }

    while (v39 < v55 + 1);
    v40 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(&v55, v39);
    v41 = v40;
    if (v12)
    {
      v42 = 4 * v12;
      v43 = v40;
      do
      {
        v44 = *v37;
        v37 = (v37 + 4);
        *v43 = v44;
        v43 = (v43 + 4);
        v42 -= 4;
      }

      while (v42);
    }

    *(v40 + v12) = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
LABEL_88:
    v57 = v41;
    goto LABEL_32;
  }

  *(v13 + v55) = __sz[1];
LABEL_32:
  *&v55 = v55 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v53) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  v20 = v57;
  if (!IsPrimvar)
  {
    goto LABEL_52;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v22 = Indices;
  if (Indices)
  {
    memset(&v63, 0, sizeof(v63));
    std::vector<int>::resize(&v63, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v23 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v24 = __sz[4] + 4 * __sz[0];
    if (v23 != v24)
    {
      begin = v63.__begin_;
      do
      {
        v26 = *v23++;
        *begin++ = v26;
      }

      while (v23 != v24);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v28 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v28 + 23) < 0)
      {
        v30 = *v28;
      }
    }

    v29 = REGeomModelDescriptorAddIndexedAttributeUInt32();
    if (v63.__begin_)
    {
      v63.__end_ = v63.__begin_;
      operator delete(v63.__begin_);
    }
  }

  else
  {
    v29 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v22 & 1) == 0)
  {
LABEL_52:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v32 = 1;
    }

    else
    {
      v32 = IsArray;
    }

    if ((v32 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v34 = IsScalar) : (v34 = 0), v34 == 1))
    {
      if (!a3)
      {
        v35 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v35 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v35 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37D0](a1, a3, v11, v55, v20))
      {
        v29 = 1;
        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

LABEL_69:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
  if (v59)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v59);
  }

  return v29;
}

void sub_247575E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<unsigned char,unsigned char>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v58, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v58);
  }

  else
  {
    v58 = 3;
    v59 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v61 = 0;
    v62 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
        v55 = *&__sz[1];
        v56 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v57 = v53;
        v53 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v55 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_68:
    v29 = 0;
    goto LABEL_69;
  }

  realityio::getAttributeValue<unsigned char>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v55))
    {
      v63.__begin_ = "vt/array.h";
      v63.__end_ = "emplace_back";
      v63.__end_cap_.__value_ = 416;
      v64 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::emplace_back(Args &&...) [T = unsigned char, Args = <unsigned char>]";
      v65 = 0;
      goto LABEL_90;
    }

    v16 = v55;
    if (!*(&v56 + 1))
    {
      v17 = v57;
      if (!v57)
      {
        v19 = 0;
LABEL_30:
        if (v55 != v19)
        {
          *(v17 + v55) = 0;
          goto LABEL_32;
        }

        goto LABEL_82;
      }

      v18 = atomic_load(v57 - 2);
      if (v18 == 1)
      {
        v17 = v57;
        v19 = *(v57 - 1);
        goto LABEL_30;
      }
    }

LABEL_82:
    v45 = v57;
    v46 = 1;
    do
    {
      v47 = v46;
      v46 *= 2;
    }

    while (v47 < v55 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(&v55, v47);
    v41 = New;
    if (v16)
    {
      v49 = v16;
      v50 = New;
      do
      {
        v51 = *v45;
        v45 = (v45 + 1);
        *v50 = v51;
        v50 = (v50 + 1);
        --v49;
      }

      while (v49);
    }

    *(New + v16) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
    goto LABEL_88;
  }

  if (DWORD2(v55))
  {
    v63.__begin_ = "vt/array.h";
    v63.__end_ = "emplace_back";
    v63.__end_cap_.__value_ = 416;
    v64 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::emplace_back(Args &&...) [T = unsigned char, Args = <const unsigned char &>]";
    v65 = 0;
LABEL_90:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    goto LABEL_33;
  }

  v12 = v55;
  if (*(&v56 + 1))
  {
    goto LABEL_76;
  }

  v13 = v57;
  if (v57)
  {
    v14 = atomic_load(v57 - 2);
    if (v14 != 1)
    {
      goto LABEL_76;
    }

    v13 = v57;
    v15 = *(v57 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v55 == v15)
  {
LABEL_76:
    v37 = v57;
    v38 = 1;
    do
    {
      v39 = v38;
      v38 *= 2;
    }

    while (v39 < v55 + 1);
    v40 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(&v55, v39);
    v41 = v40;
    if (v12)
    {
      v42 = v12;
      v43 = v40;
      do
      {
        v44 = *v37;
        v37 = (v37 + 1);
        *v43 = v44;
        v43 = (v43 + 1);
        --v42;
      }

      while (v42);
    }

    *(v40 + v12) = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
LABEL_88:
    v57 = v41;
    goto LABEL_32;
  }

  *(v13 + v55) = __sz[1];
LABEL_32:
  *&v55 = v55 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v53) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  v20 = v57;
  if (!IsPrimvar)
  {
    goto LABEL_52;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v22 = Indices;
  if (Indices)
  {
    memset(&v63, 0, sizeof(v63));
    std::vector<int>::resize(&v63, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v23 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v24 = __sz[4] + 4 * __sz[0];
    if (v23 != v24)
    {
      begin = v63.__begin_;
      do
      {
        v26 = *v23++;
        *begin++ = v26;
      }

      while (v23 != v24);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v28 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v28 + 23) < 0)
      {
        v30 = *v28;
      }
    }

    v29 = REGeomModelDescriptorAddIndexedAttributeUInt8();
    if (v63.__begin_)
    {
      v63.__end_ = v63.__begin_;
      operator delete(v63.__begin_);
    }
  }

  else
  {
    v29 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v22 & 1) == 0)
  {
LABEL_52:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v32 = 1;
    }

    else
    {
      v32 = IsArray;
    }

    if ((v32 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v34 = IsScalar) : (v34 = 0), v34 == 1))
    {
      if (!a3)
      {
        v35 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v35 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v35 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37E0](a1, a3, v11, v55, v20))
      {
        v29 = 1;
        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

LABEL_69:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
  if (v59)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v59);
  }

  return v29;
}

void sub_247576524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<float,float>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v47, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v47);
  }

  else
  {
    v47 = 3;
    v48 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v50 = 0;
    v51 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
        v44 = *&__sz[1];
        v45 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v46 = v42;
        v42 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v44 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_29;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_61:
    v25 = 0;
    goto LABEL_62;
  }

  realityio::getAttributeValue<float>(a2, __sz);
  if (LOBYTE(__sz[0]) == 1)
  {
    if (DWORD2(v44))
    {
      v52.__begin_ = "vt/array.h";
      v52.__end_ = "emplace_back";
      v52.__end_cap_.__value_ = 416;
      v53 = "void pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back(Args &&...) [T = float, Args = <const float &>]";
      v54 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
      goto LABEL_26;
    }

    v12 = v44;
    if (*(&v45 + 1))
    {
      goto LABEL_69;
    }

    v13 = v46;
    if (v46)
    {
      v14 = atomic_load(v46 - 2);
      if (v14 != 1)
      {
        goto LABEL_69;
      }

      v13 = v46;
      v15 = *(v46 - 1);
    }

    else
    {
      v15 = 0;
    }

    if (v44 != v15)
    {
      *(v13 + v44) = __sz[1];
LABEL_25:
      *&v44 = v44 + 1;
      goto LABEL_26;
    }

LABEL_69:
    v33 = v46;
    v34 = 1;
    do
    {
      v35 = v34;
      v34 *= 2;
    }

    while (v35 < v44 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(&v44, v35);
    v37 = New;
    if (v12)
    {
      v38 = 4 * v12;
      v39 = New;
      do
      {
        v40 = *v33;
        v33 = (v33 + 4);
        *v39 = v40;
        v39 = (v39 + 4);
        v38 -= 4;
      }

      while (v38);
    }

    *(New + v12) = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
    v46 = v37;
    goto LABEL_25;
  }

  LODWORD(v52.__begin_) = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back<float>(&v44, &v52);
LABEL_26:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v42) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_29:
  v16 = v46;
  if (!IsPrimvar)
  {
    goto LABEL_45;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v18 = Indices;
  if (Indices)
  {
    memset(&v52, 0, sizeof(v52));
    std::vector<int>::resize(&v52, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v19 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v20 = __sz[4] + 4 * __sz[0];
    if (v19 != v20)
    {
      begin = v52.__begin_;
      do
      {
        v22 = *v19++;
        *begin++ = v22;
      }

      while (v19 != v20);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v24 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v24 + 23) < 0)
      {
        v26 = *v24;
      }
    }

    v25 = REGeomModelDescriptorAddIndexedAttributeFloat();
    if (v52.__begin_)
    {
      v52.__end_ = v52.__begin_;
      operator delete(v52.__begin_);
    }
  }

  else
  {
    v25 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v18 & 1) == 0)
  {
LABEL_45:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v28 = 1;
    }

    else
    {
      v28 = IsArray;
    }

    if ((v28 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v30 = IsScalar) : (v30 = 0), v30 == 1))
    {
      if (!a3)
      {
        v31 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v31 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v31 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3790](a1, a3, v11, v44, v16))
      {
        v25 = 1;
        goto LABEL_62;
      }
    }

    goto LABEL_61;
  }

LABEL_62:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
  if (v48)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v48);
  }

  return v25;
}

void sub_247576ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<double,double>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v58, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v58);
  }

  else
  {
    v58 = 3;
    v59 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v61 = 0;
    v62 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
        v55 = *&__sz[1];
        v56 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v57 = v53;
        v53 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v55 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_68:
    v29 = 0;
    goto LABEL_69;
  }

  realityio::getAttributeValue<double>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v55))
    {
      v63.__begin_ = "vt/array.h";
      v63.__end_ = "emplace_back";
      v63.__end_cap_.__value_ = 416;
      v64 = "void pxrInternal__aapl__pxrReserved__::VtArray<double>::emplace_back(Args &&...) [T = double, Args = <double>]";
      v65 = 0;
      goto LABEL_90;
    }

    v16 = v55;
    if (!*(&v56 + 1))
    {
      v17 = v57;
      if (!v57)
      {
        v19 = 0;
LABEL_30:
        if (v55 != v19)
        {
          v17[v55] = 0;
          goto LABEL_32;
        }

        goto LABEL_82;
      }

      v18 = atomic_load(v57 - 2);
      if (v18 == 1)
      {
        v17 = v57;
        v19 = *(v57 - 1);
        goto LABEL_30;
      }
    }

LABEL_82:
    v45 = v57;
    v46 = 1;
    do
    {
      v47 = v46;
      v46 *= 2;
    }

    while (v47 < v55 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(&v55, v47);
    v41 = New;
    if (v16)
    {
      v49 = 8 * v16;
      v50 = New;
      do
      {
        v51 = *v45++;
        *v50++ = v51;
        v49 -= 8;
      }

      while (v49);
    }

    New[v16] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
    goto LABEL_88;
  }

  if (DWORD2(v55))
  {
    v63.__begin_ = "vt/array.h";
    v63.__end_ = "emplace_back";
    v63.__end_cap_.__value_ = 416;
    v64 = "void pxrInternal__aapl__pxrReserved__::VtArray<double>::emplace_back(Args &&...) [T = double, Args = <const double &>]";
    v65 = 0;
LABEL_90:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    goto LABEL_33;
  }

  v12 = v55;
  if (*(&v56 + 1))
  {
    goto LABEL_76;
  }

  v13 = v57;
  if (v57)
  {
    v14 = atomic_load(v57 - 2);
    if (v14 != 1)
    {
      goto LABEL_76;
    }

    v13 = v57;
    v15 = *(v57 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v55 == v15)
  {
LABEL_76:
    v37 = v57;
    v38 = 1;
    do
    {
      v39 = v38;
      v38 *= 2;
    }

    while (v39 < v55 + 1);
    v40 = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(&v55, v39);
    v41 = v40;
    if (v12)
    {
      v42 = 8 * v12;
      v43 = v40;
      do
      {
        v44 = *v37++;
        *v43++ = v44;
        v42 -= 8;
      }

      while (v42);
    }

    v40[v12] = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
LABEL_88:
    v57 = v41;
    goto LABEL_32;
  }

  v13[v55] = __sz[1];
LABEL_32:
  *&v55 = v55 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v53) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  v20 = v57;
  if (!IsPrimvar)
  {
    goto LABEL_52;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v22 = Indices;
  if (Indices)
  {
    memset(&v63, 0, sizeof(v63));
    std::vector<int>::resize(&v63, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v23 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v24 = __sz[4] + 4 * __sz[0];
    if (v23 != v24)
    {
      begin = v63.__begin_;
      do
      {
        v26 = *v23++;
        *begin++ = v26;
      }

      while (v23 != v24);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      v28 = (*Name & 0xFFFFFFFFFFFFFFF8) != 0 ? (*Name & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      if (*(v28 + 23) < 0)
      {
        v30 = *v28;
      }
    }

    v29 = REGeomModelDescriptorAddIndexedAttributeDouble();
    if (v63.__begin_)
    {
      v63.__end_ = v63.__begin_;
      operator delete(v63.__begin_);
    }
  }

  else
  {
    v29 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v22 & 1) == 0)
  {
LABEL_52:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v32 = 1;
    }

    else
    {
      v32 = IsArray;
    }

    if ((v32 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v34 = IsScalar) : (v34 = 0), v34 == 1))
    {
      if (!a3)
      {
        v35 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v35 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v35 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3780](a1, a3, v11, v55, v20))
      {
        v29 = 1;
        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

LABEL_69:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v55);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
  if (v59)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v59);
  }

  return v29;
}