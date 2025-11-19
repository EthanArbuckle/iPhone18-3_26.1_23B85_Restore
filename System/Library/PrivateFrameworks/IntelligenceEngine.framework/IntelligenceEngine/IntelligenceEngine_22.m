void sub_254DC8B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  *(v51 - 240) = v51 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 240));
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseIntelligence_InputGroup(siri::intelligence *this, protobuf::Intelligence_InputGroup *a2, const YAML::Node *a3)
{
  v296 = 0;
  v297 = 0;
  v298 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v291, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v291, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v296, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v291.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v272 = a2;
  v9 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v9)
    {
      goto LABEL_38;
    }
  }

  else if (v9)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [3]>(v272, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 18, &google::protobuf::internal::fixed_address_empty_string, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  else if (!a3)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [3]>(v272, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    v255 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v255, &v291);
  }

  if (v282)
  {
    v10 = *(**v282 + 8) + 1;
  }

  else
  {
    v10 = 0;
  }

  std::to_string(&v299, v10);
  v11 = std::string::insert(&v299, 0, "id=");
  v12 = *&v11->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v11->__r_.__value_.__l + 2);
  *v289 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_38:
  YAML::Node::operator[]<char [9]>(__p, v272, "toplevel");
  v13 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
      goto LABEL_70;
    }
  }

  else if (v13)
  {
    goto LABEL_70;
  }

  YAML::Node::operator[]<char [9]>(__p, v272, "toplevel");
  if ((__p[0] & 1) == 0)
  {
    v243 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v243, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v14 = siri::intelligence::StringToBool(v289, 0);
  *(this + 4) |= 0x10u;
  *(this + 169) = v14;
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_70;
    }
  }

  else if (!a3)
  {
    goto LABEL_70;
  }

  YAML::Node::operator[]<char [9]>(__p, v272, "toplevel");
  if ((__p[0] & 1) == 0)
  {
    v256 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v256, &v291);
  }

  if (v282)
  {
    v15 = *(**v282 + 8) + 1;
  }

  else
  {
    v15 = 0;
  }

  std::to_string(&v299, v15);
  v16 = std::string::insert(&v299, 0, "toplevel=");
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v16->__r_.__value_.__l + 2);
  *v289 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_70:
  YAML::Node::operator[]<char [20]>(__p, v272, "listenAfterSpeaking");
  v18 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v18)
    {
      goto LABEL_102;
    }
  }

  else if (v18)
  {
    goto LABEL_102;
  }

  YAML::Node::operator[]<char [20]>(__p, v272, "listenAfterSpeaking");
  if ((__p[0] & 1) == 0)
  {
    v244 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v244, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v19 = siri::intelligence::StringToBool(v289, 0);
  *(this + 4) |= 0x20u;
  *(this + 170) = v19;
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_102;
    }
  }

  else if (!a3)
  {
    goto LABEL_102;
  }

  YAML::Node::operator[]<char [20]>(__p, v272, "listenAfterSpeaking");
  if ((__p[0] & 1) == 0)
  {
    v257 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v257, &v291);
  }

  if (v282)
  {
    v20 = *(**v282 + 8) + 1;
  }

  else
  {
    v20 = 0;
  }

  std::to_string(&v299, v20);
  v21 = std::string::insert(&v299, 0, "listenAfterSpeaking=");
  v22 = *&v21->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v21->__r_.__value_.__l + 2);
  *v289 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_102:
  YAML::Node::operator[]<char [27]>(__p, v272);
  v23 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v23)
    {
      goto LABEL_134;
    }
  }

  else if (v23)
  {
    goto LABEL_134;
  }

  YAML::Node::operator[]<char [27]>(__p, v272);
  if ((__p[0] & 1) == 0)
  {
    v245 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v245, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v24 = siri::intelligence::StringToBool(v289, 0);
  *(this + 4) |= 0x40u;
  *(this + 171) = v24;
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_134;
    }
  }

  else if (!a3)
  {
    goto LABEL_134;
  }

  YAML::Node::operator[]<char [27]>(__p, v272);
  if ((__p[0] & 1) == 0)
  {
    v258 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v258, &v291);
  }

  if (v282)
  {
    v25 = *(**v282 + 8) + 1;
  }

  else
  {
    v25 = 0;
  }

  std::to_string(&v299, v25);
  v26 = std::string::insert(&v299, 0, "shouldCoordinateWithSpeech=");
  v27 = *&v26->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v26->__r_.__value_.__l + 2);
  *v289 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_134:
  YAML::Node::operator[]<char [20]>(__p, v272, "immersiveExperience");
  v28 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v28)
    {
      goto LABEL_166;
    }
  }

  else if (v28)
  {
    goto LABEL_166;
  }

  YAML::Node::operator[]<char [20]>(__p, v272, "immersiveExperience");
  if ((__p[0] & 1) == 0)
  {
    v246 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v246, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v29 = siri::intelligence::StringToBool(v289, 0);
  *(this + 4) |= 0x80u;
  *(this + 172) = v29;
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_166;
    }
  }

  else if (!a3)
  {
    goto LABEL_166;
  }

  YAML::Node::operator[]<char [20]>(__p, v272, "immersiveExperience");
  if ((__p[0] & 1) == 0)
  {
    v259 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v259, &v291);
  }

  if (v282)
  {
    v30 = *(**v282 + 8) + 1;
  }

  else
  {
    v30 = 0;
  }

  std::to_string(&v299, v30);
  v31 = std::string::insert(&v299, 0, "immersiveExperience=");
  v32 = *&v31->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v31->__r_.__value_.__l + 2);
  *v289 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_166:
  YAML::Node::operator[]<char [7]>(v272, "events", __p);
  v33 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v33)
  {
    goto LABEL_276;
  }

  YAML::Node::operator[]<char [7]>(v272, "events", __p);
  if ((__p[0] & 1) == 0)
  {
    v247 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v247, &v291);
  }

  v35 = v282 && (v34 = **v282, *v34 == 1) && *(v34 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v35)
    {
LABEL_185:
      YAML::Node::operator[]<char [7]>(v272, "events", &v291);
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v37 = v293;
        v36 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v37;
          v290 = v36;
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v293;
          v290 = 0;
        }
      }

      else
      {
        *v289 = 0;
        memset(&v289[8], 0, 32);
        v290 = 0;
      }

      if (v291.__r_.__value_.__s.__data_[0] == 1 && v295)
      {
        YAML::detail::node_data::end(**v295, __p);
        v42 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v43 = *__p;
          v44 = *&__p[8];
          v268 = *&__p[16];
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        else
        {
          v43 = *__p;
          v44 = *&__p[8];
          v268 = *&__p[16];
        }
      }

      else
      {
        v44 = 0;
        v268 = 0;
        v42 = 0;
        v43 = 0;
      }

      v45 = 0;
      v46 = v42;
      while (1)
      {
        if (*v289 == v43)
        {
          v47 = v44;
          v48 = &v289[8];
          if (v43 != 1)
          {
            if (v43 != 2)
            {
              goto LABEL_246;
            }

            v47 = v268;
            v48 = &v289[16];
          }

          if (*v48 == v47)
          {
LABEL_246:
            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            if (v290)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v290);
            }

            if (v294)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v294);
            }

            if (v292 < 0)
            {
              size = v291.__r_.__value_.__l.__size_;
              goto LABEL_275;
            }

            goto LABEL_276;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v49 = *(this + 17);
        if (!v49)
        {
          break;
        }

        v50 = *(this + 32);
        v51 = *v49;
        if (v50 < *v49)
        {
          *(this + 32) = v50 + 1;
          v52 = *&v49[2 * v50 + 2];
          if (!a3)
          {
            goto LABEL_233;
          }

          goto LABEL_213;
        }

        if (v51 == *(this + 33))
        {
          goto LABEL_211;
        }

LABEL_212:
        *v49 = v51 + 1;
        v52 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Event>(*(this + 15));
        v53 = *(this + 32);
        v54 = *(this + 17) + 8 * v53;
        *(this + 32) = v53 + 1;
        *(v54 + 8) = v52;
        if (!a3)
        {
          goto LABEL_233;
        }

LABEL_213:
        std::to_string(&v275, v45);
        v55 = std::string::insert(&v275, 0, "events[");
        v56 = *&v55->__r_.__value_.__l.__data_;
        v276.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v276.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        v57 = std::string::append(&v276, "]=");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v237 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v237, &v299);
        }

        if (v282)
        {
          v59 = *(**v282 + 8) + 1;
        }

        else
        {
          v59 = 0;
        }

        std::to_string(&v274, v59);
        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v274;
        }

        else
        {
          v60 = v274.__r_.__value_.__r.__words[0];
        }

        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = HIBYTE(v274.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v61 = v274.__r_.__value_.__l.__size_;
        }

        v62 = std::string::append(&v277, v60, v61);
        v63 = *&v62->__r_.__value_.__l.__data_;
        v279 = v62->__r_.__value_.__r.__words[2];
        *v278 = v63;
        v62->__r_.__value_.__l.__size_ = 0;
        v62->__r_.__value_.__r.__words[2] = 0;
        v62->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, v278);
        if (SHIBYTE(v279) < 0)
        {
          operator delete(v278[0]);
        }

        if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v274.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

LABEL_233:
        siri::intelligence::ParseIntelligence_InputGroup_Event(v52, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v42 = v46;
        if (v287 < 0)
        {
          operator delete(v286);
        }

        if (v285)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v285);
        }

        if (v284 < 0)
        {
          operator delete(v283);
        }

        if (v281)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v281);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v45;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v51 = *(this + 33);
LABEL_211:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v51 + 1);
      v49 = *(this + 17);
      v51 = *v49;
      goto LABEL_212;
    }
  }

  else if (v35)
  {
    goto LABEL_185;
  }

  v38 = *(this + 17);
  if (!v38)
  {
    v40 = *(this + 33);
LABEL_256:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v40 + 1);
    v38 = *(this + 17);
    v40 = *v38;
    goto LABEL_257;
  }

  v39 = *(this + 32);
  v40 = *v38;
  if (v39 < *v38)
  {
    *(this + 32) = v39 + 1;
    v41 = *&v38[2 * v39 + 2];
    goto LABEL_258;
  }

  if (v40 == *(this + 33))
  {
    goto LABEL_256;
  }

LABEL_257:
  *v38 = v40 + 1;
  v41 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Event>(*(this + 15));
  v65 = *(this + 32);
  v66 = *(this + 17) + 8 * v65;
  *(this + 32) = v65 + 1;
  *(v66 + 8) = v41;
LABEL_258:
  if (a3)
  {
    YAML::Node::operator[]<char [7]>(v272, "events", __p);
    if ((__p[0] & 1) == 0)
    {
      v263 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
      }

      else
      {
        v291 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v263, &v291);
    }

    if (v282)
    {
      v67 = *(**v282 + 8) + 1;
    }

    else
    {
      v67 = 0;
    }

    std::to_string(&v299, v67);
    v68 = std::string::insert(&v299, 0, "events[0]=");
    v69 = *&v68->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v68->__r_.__value_.__l + 2);
    *v289 = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
    if ((v289[23] & 0x80000000) != 0)
    {
      operator delete(*v289);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    if (v281)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v281);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [7]>(v272, "events", __p);
  siri::intelligence::ParseIntelligence_InputGroup_Event(v41, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_275:
    operator delete(size);
  }

LABEL_276:
  YAML::Node::operator[]<char [13]>(v272, "nlParameters", __p);
  v70 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v70)
    {
      goto LABEL_387;
    }
  }

  else if (v70)
  {
    goto LABEL_387;
  }

  YAML::Node::operator[]<char [13]>(v272, "nlParameters", __p);
  if ((__p[0] & 1) == 0)
  {
    v248 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v248, &v291);
  }

  v72 = v282 && (v71 = **v282, *v71 == 1) && *(v71 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v72)
    {
LABEL_296:
      YAML::Node::operator[]<char [13]>(v272, "nlParameters", &v291);
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v74 = v293;
        v73 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v74;
          v290 = v73;
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v73);
        }

        else
        {
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v293;
          v290 = 0;
        }
      }

      else
      {
        *v289 = 0;
        memset(&v289[8], 0, 32);
        v290 = 0;
      }

      if (v291.__r_.__value_.__s.__data_[0] == 1 && v295)
      {
        YAML::detail::node_data::end(**v295, __p);
        v79 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v80 = *__p;
          v81 = *&__p[8];
          v269 = *&__p[16];
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        else
        {
          v80 = *__p;
          v81 = *&__p[8];
          v269 = *&__p[16];
        }
      }

      else
      {
        v81 = 0;
        v269 = 0;
        v79 = 0;
        v80 = 0;
      }

      v82 = 0;
      v83 = v79;
      while (1)
      {
        if (*v289 == v80)
        {
          v84 = v81;
          v85 = &v289[8];
          if (v80 != 1)
          {
            if (v80 != 2)
            {
              goto LABEL_357;
            }

            v84 = v269;
            v85 = &v289[16];
          }

          if (*v85 == v84)
          {
LABEL_357:
            if (v79)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
            }

            if (v290)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v290);
            }

            if (v294)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v294);
            }

            if (v292 < 0)
            {
              v101 = v291.__r_.__value_.__l.__size_;
              goto LABEL_386;
            }

            goto LABEL_387;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v86 = *(this + 14);
        if (!v86)
        {
          break;
        }

        v87 = *(this + 26);
        v88 = *v86;
        if (v87 < *v86)
        {
          *(this + 26) = v87 + 1;
          v89 = *&v86[2 * v87 + 2];
          if (!a3)
          {
            goto LABEL_344;
          }

          goto LABEL_324;
        }

        if (v88 == *(this + 27))
        {
          goto LABEL_322;
        }

LABEL_323:
        *v86 = v88 + 1;
        v89 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 12));
        v90 = *(this + 26);
        v91 = *(this + 14) + 8 * v90;
        *(this + 26) = v90 + 1;
        *(v91 + 8) = v89;
        if (!a3)
        {
          goto LABEL_344;
        }

LABEL_324:
        std::to_string(&v275, v82);
        v92 = std::string::insert(&v275, 0, "nlParameters[");
        v93 = *&v92->__r_.__value_.__l.__data_;
        v276.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v276.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = std::string::append(&v276, "]=");
        v95 = *&v94->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v238 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v238, &v299);
        }

        if (v282)
        {
          v96 = *(**v282 + 8) + 1;
        }

        else
        {
          v96 = 0;
        }

        std::to_string(&v274, v96);
        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v97 = &v274;
        }

        else
        {
          v97 = v274.__r_.__value_.__r.__words[0];
        }

        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v98 = HIBYTE(v274.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v98 = v274.__r_.__value_.__l.__size_;
        }

        v99 = std::string::append(&v277, v97, v98);
        v100 = *&v99->__r_.__value_.__l.__data_;
        v279 = v99->__r_.__value_.__r.__words[2];
        *v278 = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, v278);
        if (SHIBYTE(v279) < 0)
        {
          operator delete(v278[0]);
        }

        if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v274.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

LABEL_344:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v89, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v79 = v83;
        if (v287 < 0)
        {
          operator delete(v286);
        }

        if (v285)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v285);
        }

        if (v284 < 0)
        {
          operator delete(v283);
        }

        if (v281)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v281);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v82;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v88 = *(this + 27);
LABEL_322:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v88 + 1);
      v86 = *(this + 14);
      v88 = *v86;
      goto LABEL_323;
    }
  }

  else if (v72)
  {
    goto LABEL_296;
  }

  v75 = *(this + 14);
  if (!v75)
  {
    v77 = *(this + 27);
LABEL_367:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v77 + 1);
    v75 = *(this + 14);
    v77 = *v75;
    goto LABEL_368;
  }

  v76 = *(this + 26);
  v77 = *v75;
  if (v76 < *v75)
  {
    *(this + 26) = v76 + 1;
    v78 = *&v75[2 * v76 + 2];
    goto LABEL_369;
  }

  if (v77 == *(this + 27))
  {
    goto LABEL_367;
  }

LABEL_368:
  *v75 = v77 + 1;
  v78 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 12));
  v102 = *(this + 26);
  v103 = *(this + 14) + 8 * v102;
  *(this + 26) = v102 + 1;
  *(v103 + 8) = v78;
LABEL_369:
  if (a3)
  {
    YAML::Node::operator[]<char [13]>(v272, "nlParameters", __p);
    if ((__p[0] & 1) == 0)
    {
      v264 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
      }

      else
      {
        v291 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v264, &v291);
    }

    if (v282)
    {
      v104 = *(**v282 + 8) + 1;
    }

    else
    {
      v104 = 0;
    }

    std::to_string(&v299, v104);
    v105 = std::string::insert(&v299, 0, "nlParameters[0]=");
    v106 = *&v105->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v105->__r_.__value_.__l + 2);
    *v289 = v106;
    v105->__r_.__value_.__l.__size_ = 0;
    v105->__r_.__value_.__r.__words[2] = 0;
    v105->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
    if ((v289[23] & 0x80000000) != 0)
    {
      operator delete(*v289);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    if (v281)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v281);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [13]>(v272, "nlParameters", __p);
  siri::intelligence::ParseIntelligence_KeyValueParameter(v78, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v101 = *&__p[8];
LABEL_386:
    operator delete(v101);
  }

LABEL_387:
  YAML::Node::operator[]<char [10]>(v272, "fallbacks", __p);
  v107 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v107)
    {
      goto LABEL_498;
    }
  }

  else if (v107)
  {
    goto LABEL_498;
  }

  YAML::Node::operator[]<char [10]>(v272, "fallbacks", __p);
  if ((__p[0] & 1) == 0)
  {
    v249 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v249, &v291);
  }

  v109 = v282 && (v108 = **v282, *v108 == 1) && *(v108 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v109)
    {
LABEL_407:
      YAML::Node::operator[]<char [10]>(v272, "fallbacks", &v291);
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v111 = v293;
        v110 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v111;
          v290 = v110;
          atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v110);
        }

        else
        {
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v293;
          v290 = 0;
        }
      }

      else
      {
        *v289 = 0;
        memset(&v289[8], 0, 32);
        v290 = 0;
      }

      if (v291.__r_.__value_.__s.__data_[0] == 1 && v295)
      {
        YAML::detail::node_data::end(**v295, __p);
        v116 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v117 = *__p;
          v118 = *&__p[8];
          v270 = *&__p[16];
          atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v116);
        }

        else
        {
          v117 = *__p;
          v118 = *&__p[8];
          v270 = *&__p[16];
        }
      }

      else
      {
        v118 = 0;
        v270 = 0;
        v116 = 0;
        v117 = 0;
      }

      v119 = 0;
      v120 = v116;
      while (1)
      {
        if (*v289 == v117)
        {
          v121 = v118;
          v122 = &v289[8];
          if (v117 != 1)
          {
            if (v117 != 2)
            {
              goto LABEL_468;
            }

            v121 = v270;
            v122 = &v289[16];
          }

          if (*v122 == v121)
          {
LABEL_468:
            if (v116)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v116);
            }

            if (v290)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v290);
            }

            if (v294)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v294);
            }

            if (v292 < 0)
            {
              v138 = v291.__r_.__value_.__l.__size_;
              goto LABEL_497;
            }

            goto LABEL_498;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v123 = *(this + 8);
        if (!v123)
        {
          break;
        }

        v124 = *(this + 14);
        v125 = *v123;
        if (v124 < *v123)
        {
          *(this + 14) = v124 + 1;
          v126 = *&v123[2 * v124 + 2];
          if (!a3)
          {
            goto LABEL_455;
          }

          goto LABEL_435;
        }

        if (v125 == *(this + 15))
        {
          goto LABEL_433;
        }

LABEL_434:
        *v123 = v125 + 1;
        v126 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Fallback>(*(this + 6));
        v127 = *(this + 14);
        v128 = *(this + 8) + 8 * v127;
        *(this + 14) = v127 + 1;
        *(v128 + 8) = v126;
        if (!a3)
        {
          goto LABEL_455;
        }

LABEL_435:
        std::to_string(&v275, v119);
        v129 = std::string::insert(&v275, 0, "fallbacks[");
        v130 = *&v129->__r_.__value_.__l.__data_;
        v276.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
        *&v276.__r_.__value_.__l.__data_ = v130;
        v129->__r_.__value_.__l.__size_ = 0;
        v129->__r_.__value_.__r.__words[2] = 0;
        v129->__r_.__value_.__r.__words[0] = 0;
        v131 = std::string::append(&v276, "]=");
        v132 = *&v131->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v132;
        v131->__r_.__value_.__l.__size_ = 0;
        v131->__r_.__value_.__r.__words[2] = 0;
        v131->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v239 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v239, &v299);
        }

        if (v282)
        {
          v133 = *(**v282 + 8) + 1;
        }

        else
        {
          v133 = 0;
        }

        std::to_string(&v274, v133);
        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v134 = &v274;
        }

        else
        {
          v134 = v274.__r_.__value_.__r.__words[0];
        }

        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v135 = HIBYTE(v274.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v135 = v274.__r_.__value_.__l.__size_;
        }

        v136 = std::string::append(&v277, v134, v135);
        v137 = *&v136->__r_.__value_.__l.__data_;
        v279 = v136->__r_.__value_.__r.__words[2];
        *v278 = v137;
        v136->__r_.__value_.__l.__size_ = 0;
        v136->__r_.__value_.__r.__words[2] = 0;
        v136->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, v278);
        if (SHIBYTE(v279) < 0)
        {
          operator delete(v278[0]);
        }

        if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v274.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

LABEL_455:
        siri::intelligence::ParseIntelligence_InputGroup_Fallback(v126, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v116 = v120;
        if (v287 < 0)
        {
          operator delete(v286);
        }

        if (v285)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v285);
        }

        if (v284 < 0)
        {
          operator delete(v283);
        }

        if (v281)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v281);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v119;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v125 = *(this + 15);
LABEL_433:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v125 + 1);
      v123 = *(this + 8);
      v125 = *v123;
      goto LABEL_434;
    }
  }

  else if (v109)
  {
    goto LABEL_407;
  }

  v112 = *(this + 8);
  if (!v112)
  {
    v114 = *(this + 15);
LABEL_478:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v114 + 1);
    v112 = *(this + 8);
    v114 = *v112;
    goto LABEL_479;
  }

  v113 = *(this + 14);
  v114 = *v112;
  if (v113 < *v112)
  {
    *(this + 14) = v113 + 1;
    v115 = *&v112[2 * v113 + 2];
    goto LABEL_480;
  }

  if (v114 == *(this + 15))
  {
    goto LABEL_478;
  }

LABEL_479:
  *v112 = v114 + 1;
  v115 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Fallback>(*(this + 6));
  v139 = *(this + 14);
  v140 = *(this + 8) + 8 * v139;
  *(this + 14) = v139 + 1;
  *(v140 + 8) = v115;
LABEL_480:
  if (a3)
  {
    YAML::Node::operator[]<char [10]>(v272, "fallbacks", __p);
    if ((__p[0] & 1) == 0)
    {
      v265 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
      }

      else
      {
        v291 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v265, &v291);
    }

    if (v282)
    {
      v141 = *(**v282 + 8) + 1;
    }

    else
    {
      v141 = 0;
    }

    std::to_string(&v299, v141);
    v142 = std::string::insert(&v299, 0, "fallbacks[0]=");
    v143 = *&v142->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v142->__r_.__value_.__l + 2);
    *v289 = v143;
    v142->__r_.__value_.__l.__size_ = 0;
    v142->__r_.__value_.__r.__words[2] = 0;
    v142->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
    if ((v289[23] & 0x80000000) != 0)
    {
      operator delete(*v289);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    if (v281)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v281);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [10]>(v272, "fallbacks", __p);
  siri::intelligence::ParseIntelligence_InputGroup_Fallback(v115, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v138 = *&__p[8];
LABEL_497:
    operator delete(v138);
  }

LABEL_498:
  YAML::Node::operator[]<char [9]>(__p, v272, "activity");
  v144 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v144)
    {
      goto LABEL_530;
    }
  }

  else if (v144)
  {
    goto LABEL_530;
  }

  YAML::Node::operator[]<char [9]>(__p, v272, "activity");
  if ((__p[0] & 1) == 0)
  {
    v250 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v250, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 19, &google::protobuf::internal::fixed_address_empty_string, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_530;
    }
  }

  else if (!a3)
  {
    goto LABEL_530;
  }

  YAML::Node::operator[]<char [9]>(__p, v272, "activity");
  if ((__p[0] & 1) == 0)
  {
    v260 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v260, &v291);
  }

  if (v282)
  {
    v145 = *(**v282 + 8) + 1;
  }

  else
  {
    v145 = 0;
  }

  std::to_string(&v299, v145);
  v146 = std::string::insert(&v299, 0, "activity=");
  v147 = *&v146->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v146->__r_.__value_.__l + 2);
  *v289 = v147;
  v146->__r_.__value_.__l.__size_ = 0;
  v146->__r_.__value_.__r.__words[2] = 0;
  v146->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_530:
  YAML::Node::operator[]<char [16]>(v272, "canUseServerTTS", __p);
  v148 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v148)
    {
      goto LABEL_562;
    }
  }

  else if (v148)
  {
    goto LABEL_562;
  }

  YAML::Node::operator[]<char [16]>(v272, "canUseServerTTS", __p);
  if ((__p[0] & 1) == 0)
  {
    v251 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v251, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v149 = siri::intelligence::StringToBool(v289, 0);
  *(this + 4) |= 8u;
  *(this + 168) = v149;
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_562;
    }
  }

  else if (!a3)
  {
    goto LABEL_562;
  }

  YAML::Node::operator[]<char [16]>(v272, "canUseServerTTS", __p);
  if ((__p[0] & 1) == 0)
  {
    v261 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v261, &v291);
  }

  if (v282)
  {
    v150 = *(**v282 + 8) + 1;
  }

  else
  {
    v150 = 0;
  }

  std::to_string(&v299, v150);
  v151 = std::string::insert(&v299, 0, "canUseServerTTS=");
  v152 = *&v151->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v151->__r_.__value_.__l + 2);
  *v289 = v152;
  v151->__r_.__value_.__l.__size_ = 0;
  v151->__r_.__value_.__r.__words[2] = 0;
  v151->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_562:
  YAML::Node::operator[]<char [12]>(v272, "dialogPhase", __p);
  v153 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v153)
    {
      goto LABEL_594;
    }
  }

  else if (v153)
  {
    goto LABEL_594;
  }

  YAML::Node::operator[]<char [12]>(v272, "dialogPhase", __p);
  if ((__p[0] & 1) == 0)
  {
    v252 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v252, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 20, &google::protobuf::internal::fixed_address_empty_string, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_594;
    }
  }

  else if (!a3)
  {
    goto LABEL_594;
  }

  YAML::Node::operator[]<char [12]>(v272, "dialogPhase", __p);
  if ((__p[0] & 1) == 0)
  {
    v262 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v262, &v291);
  }

  if (v282)
  {
    v154 = *(**v282 + 8) + 1;
  }

  else
  {
    v154 = 0;
  }

  std::to_string(&v299, v154);
  v155 = std::string::insert(&v299, 0, "dialogPhase=");
  v156 = *&v155->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v155->__r_.__value_.__l + 2);
  *v289 = v156;
  v155->__r_.__value_.__l.__size_ = 0;
  v155->__r_.__value_.__r.__words[2] = 0;
  v155->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
  if ((v289[23] & 0x80000000) != 0)
  {
    operator delete(*v289);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_594:
  YAML::Node::operator[]<char [13]>(v272, "legacyEvents", __p);
  v157 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v157)
    {
      goto LABEL_705;
    }
  }

  else if (v157)
  {
    goto LABEL_705;
  }

  YAML::Node::operator[]<char [13]>(v272, "legacyEvents", __p);
  if ((__p[0] & 1) == 0)
  {
    v253 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v253, &v291);
  }

  v159 = v282 && (v158 = **v282, *v158 == 1) && *(v158 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v159)
    {
LABEL_614:
      YAML::Node::operator[]<char [13]>(v272, "legacyEvents", &v291);
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v161 = v293;
        v160 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v161;
          v290 = v160;
          atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v160);
        }

        else
        {
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v293;
          v290 = 0;
        }
      }

      else
      {
        *v289 = 0;
        memset(&v289[8], 0, 32);
        v290 = 0;
      }

      if (v291.__r_.__value_.__s.__data_[0] == 1 && v295)
      {
        YAML::detail::node_data::end(**v295, __p);
        v166 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v167 = *__p;
          v168 = *&__p[8];
          v271 = *&__p[16];
          atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v166);
        }

        else
        {
          v167 = *__p;
          v168 = *&__p[8];
          v271 = *&__p[16];
        }
      }

      else
      {
        v168 = 0;
        v271 = 0;
        v166 = 0;
        v167 = 0;
      }

      v169 = 0;
      v170 = v166;
      while (1)
      {
        if (*v289 == v167)
        {
          v171 = v168;
          v172 = &v289[8];
          if (v167 != 1)
          {
            if (v167 != 2)
            {
              goto LABEL_675;
            }

            v171 = v271;
            v172 = &v289[16];
          }

          if (*v172 == v171)
          {
LABEL_675:
            if (v166)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v166);
            }

            if (v290)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v290);
            }

            if (v294)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v294);
            }

            if (v292 < 0)
            {
              v188 = v291.__r_.__value_.__l.__size_;
              goto LABEL_704;
            }

            goto LABEL_705;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v173 = *(this + 11);
        if (!v173)
        {
          break;
        }

        v174 = *(this + 20);
        v175 = *v173;
        if (v174 < *v173)
        {
          *(this + 20) = v174 + 1;
          v176 = *&v173[2 * v174 + 2];
          if (!a3)
          {
            goto LABEL_662;
          }

          goto LABEL_642;
        }

        if (v175 == *(this + 21))
        {
          goto LABEL_640;
        }

LABEL_641:
        *v173 = v175 + 1;
        v176 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_LegacyEvent>(*(this + 9));
        v177 = *(this + 20);
        v178 = *(this + 11) + 8 * v177;
        *(this + 20) = v177 + 1;
        *(v178 + 8) = v176;
        if (!a3)
        {
          goto LABEL_662;
        }

LABEL_642:
        std::to_string(&v275, v169);
        v179 = std::string::insert(&v275, 0, "legacyEvents[");
        v180 = *&v179->__r_.__value_.__l.__data_;
        v276.__r_.__value_.__r.__words[2] = v179->__r_.__value_.__r.__words[2];
        *&v276.__r_.__value_.__l.__data_ = v180;
        v179->__r_.__value_.__l.__size_ = 0;
        v179->__r_.__value_.__r.__words[2] = 0;
        v179->__r_.__value_.__r.__words[0] = 0;
        v181 = std::string::append(&v276, "]=");
        v182 = *&v181->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v182;
        v181->__r_.__value_.__l.__size_ = 0;
        v181->__r_.__value_.__r.__words[2] = 0;
        v181->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v240 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v240, &v299);
        }

        if (v282)
        {
          v183 = *(**v282 + 8) + 1;
        }

        else
        {
          v183 = 0;
        }

        std::to_string(&v274, v183);
        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v184 = &v274;
        }

        else
        {
          v184 = v274.__r_.__value_.__r.__words[0];
        }

        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v185 = HIBYTE(v274.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v185 = v274.__r_.__value_.__l.__size_;
        }

        v186 = std::string::append(&v277, v184, v185);
        v187 = *&v186->__r_.__value_.__l.__data_;
        v279 = v186->__r_.__value_.__r.__words[2];
        *v278 = v187;
        v186->__r_.__value_.__l.__size_ = 0;
        v186->__r_.__value_.__r.__words[2] = 0;
        v186->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, v278);
        if (SHIBYTE(v279) < 0)
        {
          operator delete(v278[0]);
        }

        if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v274.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

LABEL_662:
        siri::intelligence::ParseIntelligence_InputGroup_LegacyEvent(v176, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v166 = v170;
        if (v287 < 0)
        {
          operator delete(v286);
        }

        if (v285)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v285);
        }

        if (v284 < 0)
        {
          operator delete(v283);
        }

        if (v281)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v281);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v169;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v175 = *(this + 21);
LABEL_640:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v175 + 1);
      v173 = *(this + 11);
      v175 = *v173;
      goto LABEL_641;
    }
  }

  else if (v159)
  {
    goto LABEL_614;
  }

  v162 = *(this + 11);
  if (!v162)
  {
    v164 = *(this + 21);
LABEL_685:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v164 + 1);
    v162 = *(this + 11);
    v164 = *v162;
    goto LABEL_686;
  }

  v163 = *(this + 20);
  v164 = *v162;
  if (v163 < *v162)
  {
    *(this + 20) = v163 + 1;
    v165 = *&v162[2 * v163 + 2];
    goto LABEL_687;
  }

  if (v164 == *(this + 21))
  {
    goto LABEL_685;
  }

LABEL_686:
  *v162 = v164 + 1;
  v165 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_LegacyEvent>(*(this + 9));
  v189 = *(this + 20);
  v190 = *(this + 11) + 8 * v189;
  *(this + 20) = v189 + 1;
  *(v190 + 8) = v165;
LABEL_687:
  if (a3)
  {
    YAML::Node::operator[]<char [13]>(v272, "legacyEvents", __p);
    if ((__p[0] & 1) == 0)
    {
      v266 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
      }

      else
      {
        v291 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v266, &v291);
    }

    if (v282)
    {
      v191 = *(**v282 + 8) + 1;
    }

    else
    {
      v191 = 0;
    }

    std::to_string(&v299, v191);
    v192 = std::string::insert(&v299, 0, "legacyEvents[0]=");
    v193 = *&v192->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v192->__r_.__value_.__l + 2);
    *v289 = v193;
    v192->__r_.__value_.__l.__size_ = 0;
    v192->__r_.__value_.__r.__words[2] = 0;
    v192->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
    if ((v289[23] & 0x80000000) != 0)
    {
      operator delete(*v289);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    if (v281)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v281);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [13]>(v272, "legacyEvents", __p);
  siri::intelligence::ParseIntelligence_InputGroup_LegacyEvent(v165, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v188 = *&__p[8];
LABEL_704:
    operator delete(v188);
  }

LABEL_705:
  YAML::Node::operator[]<char [8]>(v272, "intents", __p);
  v194 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v194)
    {
      goto LABEL_816;
    }
  }

  else if (v194)
  {
    goto LABEL_816;
  }

  YAML::Node::operator[]<char [8]>(v272, "intents", __p);
  if ((__p[0] & 1) == 0)
  {
    v254 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v254, &v291);
  }

  v196 = v282 && (v195 = **v282, *v195 == 1) && *(v195 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v196)
    {
LABEL_725:
      YAML::Node::operator[]<char [8]>(v272, "intents", &v291);
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v198 = v293;
        v197 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v198;
          v290 = v197;
          atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        }

        else
        {
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v293;
          v290 = 0;
        }
      }

      else
      {
        *v289 = 0;
        memset(&v289[8], 0, 32);
        v290 = 0;
      }

      if (v291.__r_.__value_.__s.__data_[0] == 1 && v295)
      {
        YAML::detail::node_data::end(**v295, __p);
        v203 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v204 = *__p;
          v205 = *&__p[8];
          v273 = *&__p[16];
          atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v203);
        }

        else
        {
          v204 = *__p;
          v205 = *&__p[8];
          v273 = *&__p[16];
        }
      }

      else
      {
        v205 = 0;
        v273 = 0;
        v203 = 0;
        v204 = 0;
      }

      v206 = 0;
      v207 = v203;
      while (1)
      {
        if (*v289 == v204)
        {
          v208 = v205;
          v209 = &v289[8];
          if (v204 != 1)
          {
            if (v204 != 2)
            {
              goto LABEL_786;
            }

            v209 = &v289[16];
            v208 = v273;
          }

          if (*v209 == v208)
          {
LABEL_786:
            if (v203)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v203);
            }

            if (v290)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v290);
            }

            if (v294)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v294);
            }

            if (v292 < 0)
            {
              v225 = v291.__r_.__value_.__l.__size_;
              goto LABEL_815;
            }

            goto LABEL_816;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v210 = *(this + 5);
        if (!v210)
        {
          break;
        }

        v211 = *(this + 8);
        v212 = *v210;
        if (v211 < *v210)
        {
          *(this + 8) = v211 + 1;
          v213 = *&v210[2 * v211 + 2];
          if (!a3)
          {
            goto LABEL_773;
          }

          goto LABEL_753;
        }

        if (v212 == *(this + 9))
        {
          goto LABEL_751;
        }

LABEL_752:
        *v210 = v212 + 1;
        v213 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Intent>(*(this + 3));
        v214 = *(this + 8);
        v215 = *(this + 5) + 8 * v214;
        *(this + 8) = v214 + 1;
        *(v215 + 8) = v213;
        if (!a3)
        {
          goto LABEL_773;
        }

LABEL_753:
        std::to_string(&v275, v206);
        v216 = std::string::insert(&v275, 0, "intents[");
        v217 = *&v216->__r_.__value_.__l.__data_;
        v276.__r_.__value_.__r.__words[2] = v216->__r_.__value_.__r.__words[2];
        *&v276.__r_.__value_.__l.__data_ = v217;
        v216->__r_.__value_.__l.__size_ = 0;
        v216->__r_.__value_.__r.__words[2] = 0;
        v216->__r_.__value_.__r.__words[0] = 0;
        v218 = std::string::append(&v276, "]=");
        v219 = *&v218->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v218->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v219;
        v218->__r_.__value_.__l.__size_ = 0;
        v218->__r_.__value_.__r.__words[2] = 0;
        v218->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v241 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v241, &v299);
        }

        if (v282)
        {
          v220 = *(**v282 + 8) + 1;
        }

        else
        {
          v220 = 0;
        }

        std::to_string(&v274, v220);
        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v221 = &v274;
        }

        else
        {
          v221 = v274.__r_.__value_.__r.__words[0];
        }

        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v222 = HIBYTE(v274.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v222 = v274.__r_.__value_.__l.__size_;
        }

        v223 = std::string::append(&v277, v221, v222);
        v224 = *&v223->__r_.__value_.__l.__data_;
        v279 = v223->__r_.__value_.__r.__words[2];
        *v278 = v224;
        v223->__r_.__value_.__l.__size_ = 0;
        v223->__r_.__value_.__r.__words[2] = 0;
        v223->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, v278);
        if (SHIBYTE(v279) < 0)
        {
          operator delete(v278[0]);
        }

        if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v274.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

LABEL_773:
        siri::intelligence::ParseIntelligence_InputGroup_Intent(v213, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v203 = v207;
        if (v287 < 0)
        {
          operator delete(v286);
        }

        if (v285)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v285);
        }

        if (v284 < 0)
        {
          operator delete(v283);
        }

        if (v281)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v281);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v206;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v212 = *(this + 9);
LABEL_751:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v212 + 1);
      v210 = *(this + 5);
      v212 = *v210;
      goto LABEL_752;
    }
  }

  else if (v196)
  {
    goto LABEL_725;
  }

  v199 = *(this + 5);
  if (!v199)
  {
    v201 = *(this + 9);
LABEL_796:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v201 + 1);
    v199 = *(this + 5);
    v201 = *v199;
    goto LABEL_797;
  }

  v200 = *(this + 8);
  v201 = *v199;
  if (v200 < *v199)
  {
    *(this + 8) = v200 + 1;
    v202 = *&v199[2 * v200 + 2];
    goto LABEL_798;
  }

  if (v201 == *(this + 9))
  {
    goto LABEL_796;
  }

LABEL_797:
  *v199 = v201 + 1;
  v202 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Intent>(*(this + 3));
  v226 = *(this + 8);
  v227 = *(this + 5) + 8 * v226;
  *(this + 8) = v226 + 1;
  *(v227 + 8) = v202;
LABEL_798:
  if (a3)
  {
    YAML::Node::operator[]<char [8]>(v272, "intents", __p);
    if ((__p[0] & 1) == 0)
    {
      v267 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
      }

      else
      {
        v291 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v267, &v291);
    }

    if (v282)
    {
      v228 = *(**v282 + 8) + 1;
    }

    else
    {
      v228 = 0;
    }

    std::to_string(&v299, v228);
    v229 = std::string::insert(&v299, 0, "intents[0]=");
    v230 = *&v229->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v229->__r_.__value_.__l + 2);
    *v289 = v230;
    v229->__r_.__value_.__l.__size_ = 0;
    v229->__r_.__value_.__r.__words[2] = 0;
    v229->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v296, v289);
    if ((v289[23] & 0x80000000) != 0)
    {
      operator delete(*v289);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    if (v281)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v281);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [8]>(v272, "intents", __p);
  siri::intelligence::ParseIntelligence_InputGroup_Intent(v202, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v225 = *&__p[8];
LABEL_815:
    operator delete(v225);
  }

LABEL_816:
  if (v296 != v297)
  {
    std::string::basic_string[abi:ne200100]<0>(&v291, ";");
    siri::intelligence::StringJoin(&v296, &v291, __p);
    v233 = *(this + 1);
    v232 = (this + 8);
    v231 = v233;
    if (v233)
    {
      v234 = v231 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v232);
      v234 = v236;
    }

    if (*(v234 + 23) < 0)
    {
      operator delete(*v234);
    }

    v235 = *__p;
    *(v234 + 16) = *&__p[16];
    *v234 = v235;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v291.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v296;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DCC964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  *(v51 - 240) = v51 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 240));
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseIntelligence_Activity(siri::intelligence *this, protobuf::Intelligence_Activity *a2, const YAML::Node *a3)
{
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v76 = a3;
  if (a3)
  {
    v5 = YAML::Node::Mark(a2);
    std::to_string(&v93, HIDWORD(v5) + 1);
    v6 = std::string::insert(&v93, 0, "<msg>=");
    v7 = *&v6->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v6->__r_.__value_.__l + 2);
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v98, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v75 = a2;
  v8 = __p[0] != 1 || v84 && (***v84 & 1) == 0;
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v8)
    {
      goto LABEL_37;
    }
  }

  else if (v8)
  {
    goto LABEL_37;
  }

  YAML::Node::operator[]<char [3]>(v75, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
    }

    else
    {
      v93 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v93);
  }

  v93.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v93, v91);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 7, &google::protobuf::internal::fixed_address_empty_string, v91);
  if ((v91[23] & 0x80000000) != 0)
  {
    operator delete(*v91);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v76)
  {
    YAML::Node::operator[]<char [3]>(v75, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      v66 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
      }

      else
      {
        v93 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v66, &v93);
    }

    if (v84)
    {
      v9 = *(**v84 + 8) + 1;
    }

    else
    {
      v9 = 0;
    }

    std::to_string(&v101, v9);
    v10 = std::string::insert(&v101, 0, "id=");
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v91[16] = *(&v10->__r_.__value_.__l + 2);
    *v91 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v98, v91);
    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_37:
  YAML::Node::operator[]<char [5]>(v75, "name", __p);
  v12 = __p[0] != 1 || v84 && (***v84 & 1) == 0;
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v12)
    {
      goto LABEL_68;
    }
  }

  else if (v12)
  {
    goto LABEL_68;
  }

  YAML::Node::operator[]<char [5]>(v75, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v61 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
    }

    else
    {
      v93 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v61, &v93);
  }

  v93.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v93, v91);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 6, &google::protobuf::internal::fixed_address_empty_string, v91);
  if ((v91[23] & 0x80000000) != 0)
  {
    operator delete(*v91);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v76)
  {
    YAML::Node::operator[]<char [5]>(v75, "name", __p);
    if ((__p[0] & 1) == 0)
    {
      v67 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
      }

      else
      {
        v93 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v67, &v93);
    }

    if (v84)
    {
      v13 = *(**v84 + 8) + 1;
    }

    else
    {
      v13 = 0;
    }

    std::to_string(&v101, v13);
    v14 = std::string::insert(&v101, 0, "name=");
    v15 = *&v14->__r_.__value_.__l.__data_;
    *&v91[16] = *(&v14->__r_.__value_.__l + 2);
    *v91 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v98, v91);
    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_68:
  YAML::Node::operator[]<char [12]>(v75, "responseIds", __p);
  v16 = __p[0] != 1 || v84 && (***v84 & 1) == 0;
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v16)
    {
      goto LABEL_171;
    }
  }

  else if (v16)
  {
    goto LABEL_171;
  }

  YAML::Node::operator[]<char [12]>(v75, "responseIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v62 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
    }

    else
    {
      v93 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v62, &v93);
  }

  v18 = v84 && (v17 = **v84, *v17 == 1) && *(v17 + 16) == 3;
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v18)
    {
LABEL_88:
      YAML::Node::operator[]<char [12]>(v75, "responseIds", &v93);
      if ((v93.__r_.__value_.__s.__data_[0] & 1) != 0 && v97)
      {
        YAML::detail::node_data::begin(**v97, __p);
        v20 = v95;
        v19 = v96;
        if (v96)
        {
          atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
          *v91 = *__p;
          *&v91[16] = *&__p[16];
          *&v91[32] = v20;
          v92 = v19;
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          *v91 = *__p;
          *&v91[16] = *&__p[16];
          *&v91[32] = v95;
          v92 = 0;
        }
      }

      else
      {
        *v91 = 0;
        memset(&v91[8], 0, 32);
        v92 = 0;
      }

      if (v93.__r_.__value_.__s.__data_[0] == 1 && v97)
      {
        YAML::detail::node_data::end(**v97, __p);
        v22 = v96;
        if (v96)
        {
          atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *__p;
          v24 = *&__p[8];
          v73 = v22;
          v74 = *&__p[16];
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        else
        {
          v23 = *__p;
          v24 = *&__p[8];
          v73 = 0;
          v74 = *&__p[16];
        }
      }

      else
      {
        v24 = 0;
        v73 = 0;
        v74 = 0;
        v23 = 0;
      }

      for (i = 0; ; ++i)
      {
        if (*v91 == v23)
        {
          v26 = v24;
          v27 = &v91[8];
          if (v23 != 1)
          {
            if (v23 != 2)
            {
              break;
            }

            v26 = v74;
            v27 = &v91[16];
          }

          if (*v27 == v26)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v91, __p);
        if ((__p[0] & 1) == 0)
        {
          v58 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v101, *&__p[8], *&__p[16]);
          }

          else
          {
            v101 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v58, &v101);
        }

        v101.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v101, &v81);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 24, &v81);
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if (v76)
        {
          std::to_string(&v78, i);
          v28 = std::string::insert(&v78, 0, "responseIds[");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v79.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v79.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v79, "]=");
          v31 = *&v30->__r_.__value_.__l.__data_;
          v80.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&v80.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          if ((__p[0] & 1) == 0)
          {
            v59 = __cxa_allocate_exception(0x38uLL);
            if ((__p[31] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v101, *&__p[8], *&__p[16]);
            }

            else
            {
              v101 = *&__p[8];
            }

            YAML::InvalidNode::InvalidNode(v59, &v101);
          }

          if (v84)
          {
            v32 = *(**v84 + 8) + 1;
          }

          else
          {
            v32 = 0;
          }

          std::to_string(&v77, v32);
          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v77;
          }

          else
          {
            v33 = v77.__r_.__value_.__r.__words[0];
          }

          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v77.__r_.__value_.__l.__size_;
          }

          v35 = std::string::append(&v80, v33, size);
          v36 = *&v35->__r_.__value_.__l.__data_;
          v81.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
          *&v81.__r_.__value_.__l.__data_ = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          std::vector<std::string>::push_back[abi:ne200100](&v98, &v81);
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v77.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v79.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v78.__r_.__value_.__l.__data_);
          }
        }

        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (v89 < 0)
        {
          operator delete(v88);
        }

        if (v87)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        }

        if (v86 < 0)
        {
          operator delete(v85);
        }

        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v91);
      }

      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }

      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }

      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      if (v94 < 0)
      {
        v37 = v93.__r_.__value_.__l.__size_;
LABEL_170:
        operator delete(v37);
        goto LABEL_171;
      }

      goto LABEL_171;
    }
  }

  else if (v18)
  {
    goto LABEL_88;
  }

  YAML::Node::operator[]<char [12]>(v75, "responseIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v68 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
    }

    else
    {
      v93 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v68, &v93);
  }

  v93.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v93, v91);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 24, v91);
  if ((v91[23] & 0x80000000) != 0)
  {
    operator delete(*v91);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v76)
  {
    YAML::Node::operator[]<char [12]>(v75, "responseIds", __p);
    if ((__p[0] & 1) == 0)
    {
      v72 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
      }

      else
      {
        v93 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v72, &v93);
    }

    if (v84)
    {
      v21 = *(**v84 + 8) + 1;
    }

    else
    {
      v21 = 0;
    }

    std::to_string(&v101, v21);
    v38 = std::string::insert(&v101, 0, "responseIds[0]=");
    v39 = *&v38->__r_.__value_.__l.__data_;
    *&v91[16] = *(&v38->__r_.__value_.__l + 2);
    *v91 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v98, v91);
    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      v37 = *&__p[8];
      goto LABEL_170;
    }
  }

LABEL_171:
  YAML::Node::operator[]<char [13]>(v75, "inputGroupId", __p);
  v40 = __p[0] != 1 || v84 && (***v84 & 1) == 0;
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v40)
    {
      goto LABEL_202;
    }
  }

  else if (v40)
  {
    goto LABEL_202;
  }

  YAML::Node::operator[]<char [13]>(v75, "inputGroupId", __p);
  if ((__p[0] & 1) == 0)
  {
    v63 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
    }

    else
    {
      v93 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v63, &v93);
  }

  v93.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v93, v91);
  *(this + 4) |= 0x10u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 10, &google::protobuf::internal::fixed_address_empty_string, v91);
  if ((v91[23] & 0x80000000) != 0)
  {
    operator delete(*v91);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v76)
  {
    YAML::Node::operator[]<char [13]>(v75, "inputGroupId", __p);
    if ((__p[0] & 1) == 0)
    {
      v69 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
      }

      else
      {
        v93 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v69, &v93);
    }

    if (v84)
    {
      v41 = *(**v84 + 8) + 1;
    }

    else
    {
      v41 = 0;
    }

    std::to_string(&v101, v41);
    v42 = std::string::insert(&v101, 0, "inputGroupId=");
    v43 = *&v42->__r_.__value_.__l.__data_;
    *&v91[16] = *(&v42->__r_.__value_.__l + 2);
    *v91 = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v98, v91);
    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_202:
  YAML::Node::operator[]<char [7]>(v75, "params", __p);
  v44 = __p[0] != 1 || v84 && (***v84 & 1) == 0;
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v44)
    {
      goto LABEL_233;
    }
  }

  else if (v44)
  {
    goto LABEL_233;
  }

  YAML::Node::operator[]<char [7]>(v75, "params", __p);
  if ((__p[0] & 1) == 0)
  {
    v64 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
    }

    else
    {
      v93 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v64, &v93);
  }

  v93.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v93, v91);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 8, &google::protobuf::internal::fixed_address_empty_string, v91);
  if ((v91[23] & 0x80000000) != 0)
  {
    operator delete(*v91);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v76)
  {
    YAML::Node::operator[]<char [7]>(v75, "params", __p);
    if ((__p[0] & 1) == 0)
    {
      v70 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
      }

      else
      {
        v93 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v70, &v93);
    }

    if (v84)
    {
      v45 = *(**v84 + 8) + 1;
    }

    else
    {
      v45 = 0;
    }

    std::to_string(&v101, v45);
    v46 = std::string::insert(&v101, 0, "params=");
    v47 = *&v46->__r_.__value_.__l.__data_;
    *&v91[16] = *(&v46->__r_.__value_.__l + 2);
    *v91 = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v98, v91);
    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_233:
  YAML::Node::operator[]<char [11]>(v75, "inputGroup", __p);
  v48 = __p[0] != 1 || v84 && (***v84 & 1) == 0;
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v48)
    {
      goto LABEL_264;
    }
  }

  else if (v48)
  {
    goto LABEL_264;
  }

  YAML::Node::operator[]<char [11]>(v75, "inputGroup", __p);
  if ((__p[0] & 1) == 0)
  {
    v65 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
    }

    else
    {
      v93 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v65, &v93);
  }

  v93.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v93, v91);
  *(this + 4) |= 8u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 9, &google::protobuf::internal::fixed_address_empty_string, v91);
  if ((v91[23] & 0x80000000) != 0)
  {
    operator delete(*v91);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v76)
  {
    YAML::Node::operator[]<char [11]>(v75, "inputGroup", __p);
    if ((__p[0] & 1) == 0)
    {
      v71 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v93, *&__p[8], *&__p[16]);
      }

      else
      {
        v93 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v71, &v93);
    }

    if (v84)
    {
      v49 = *(**v84 + 8) + 1;
    }

    else
    {
      v49 = 0;
    }

    std::to_string(&v101, v49);
    v50 = std::string::insert(&v101, 0, "inputGroup=");
    v51 = *&v50->__r_.__value_.__l.__data_;
    *&v91[16] = *(&v50->__r_.__value_.__l + 2);
    *v91 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v98, v91);
    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_264:
  if (v98 != v99)
  {
    std::string::basic_string[abi:ne200100]<0>(&v93, ";");
    siri::intelligence::StringJoin(&v98, &v93, __p);
    v54 = *(this + 1);
    v53 = (this + 8);
    v52 = v54;
    if (v54)
    {
      v55 = v52 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v53);
      v55 = v57;
    }

    if (*(v55 + 23) < 0)
    {
      operator delete(*v55);
    }

    v56 = *__p;
    *(v55 + 16) = *&__p[16];
    *v55 = v56;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v98;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DCE408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  *(v51 - 240) = v51 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 240));
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseIntelligence_Utterance(siri::intelligence *this, protobuf::Intelligence_Utterance *a2, const YAML::Node *a3)
{
  v3 = a3;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v42, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v42, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v39, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v9 = __p[0] != 1 || v38 && (***v38 & 1) == 0;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v9)
  {
    YAML::Node::operator[]<char [3]>(a2, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v42, *&__p[8], *&__p[16]);
      }

      else
      {
        v42 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(exception, &v42);
    }

    v42.__r_.__value_.__r.__words[0] = __p;
    YAML::as_if<std::string,void>::operator()(&v42, &v35);
    *(this + 4) |= 1u;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 3, &google::protobuf::internal::fixed_address_empty_string, &v35);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
      if (!v3)
      {
        goto LABEL_37;
      }
    }

    else if (!v3)
    {
      goto LABEL_37;
    }

    YAML::Node::operator[]<char [3]>(a2, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      v31 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v42, *&__p[8], *&__p[16]);
      }

      else
      {
        v42 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v31, &v42);
    }

    if (v38)
    {
      v10 = *(**v38 + 8) + 1;
    }

    else
    {
      v10 = 0;
    }

    std::to_string(&v34, v10);
    v11 = std::string::insert(&v34, 0, "id=");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v39, &v35);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_37:
  YAML::Node::operator[]<char [5]>(a2, "text", __p);
  v13 = __p[0] != 1 || v38 && (***v38 & 1) == 0;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
      goto LABEL_69;
    }
  }

  else if (v13)
  {
    goto LABEL_69;
  }

  YAML::Node::operator[]<char [5]>(a2, "text", __p);
  if ((__p[0] & 1) == 0)
  {
    v29 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v42, *&__p[8], *&__p[16]);
    }

    else
    {
      v42 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v29, &v42);
  }

  v42.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v42, &v35);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 4, &google::protobuf::internal::fixed_address_empty_string, &v35);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!v3)
    {
      goto LABEL_69;
    }
  }

  else if (!v3)
  {
    goto LABEL_69;
  }

  YAML::Node::operator[]<char [5]>(a2, "text", __p);
  if ((__p[0] & 1) == 0)
  {
    v32 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v42, *&__p[8], *&__p[16]);
    }

    else
    {
      v42 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v32, &v42);
  }

  if (v38)
  {
    v14 = *(**v38 + 8) + 1;
  }

  else
  {
    v14 = 0;
  }

  std::to_string(&v34, v14);
  v15 = std::string::insert(&v34, 0, "text=");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v39, &v35);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_69:
  YAML::Node::operator[]<char [12]>(a2, "characterId", __p);
  v17 = __p[0] != 1 || v38 && (***v38 & 1) == 0;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v17)
    {
      goto LABEL_101;
    }
  }

  else if (v17)
  {
    goto LABEL_101;
  }

  YAML::Node::operator[]<char [12]>(a2, "characterId", __p);
  if ((__p[0] & 1) == 0)
  {
    v30 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v42, *&__p[8], *&__p[16]);
    }

    else
    {
      v42 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v30, &v42);
  }

  v42.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v42, &v35);
  v18 = siri::intelligence::StringToIntegralType<int>(&v35, 0);
  *(this + 4) |= 4u;
  *(this + 10) = v18;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!v3)
    {
      goto LABEL_101;
    }
  }

  else if (!v3)
  {
    goto LABEL_101;
  }

  YAML::Node::operator[]<char [12]>(a2, "characterId", __p);
  if ((__p[0] & 1) == 0)
  {
    v33 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v42, *&__p[8], *&__p[16]);
    }

    else
    {
      v42 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v33, &v42);
  }

  if (v38)
  {
    v19 = *(**v38 + 8) + 1;
  }

  else
  {
    v19 = 0;
  }

  std::to_string(&v34, v19);
  v20 = std::string::insert(&v34, 0, "characterId=");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v39, &v35);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_101:
  if (v39 != v40)
  {
    std::string::basic_string[abi:ne200100]<0>(&v42, ";");
    siri::intelligence::StringJoin(&v39, &v42, __p);
    v24 = *(this + 1);
    v23 = (this + 8);
    v22 = v24;
    if (v24)
    {
      v25 = v22 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v23);
      v25 = v27;
    }

    if (*(v25 + 23) < 0)
    {
      operator delete(*v25);
    }

    v26 = *__p;
    *(v25 + 16) = *&__p[16];
    *v25 = v26;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DCF028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  __p = (v28 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseIntelligence_Character(siri::intelligence *this, protobuf::Intelligence_Character *a2, const YAML::Node *a3)
{
  v3 = a3;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v41, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v41, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v38, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v9 = __p[0] != 1 || v37 && (***v37 & 1) == 0;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v9)
  {
    YAML::Node::operator[]<char [3]>(a2, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v41, *&__p[8], *&__p[16]);
      }

      else
      {
        v41 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(exception, &v41);
    }

    v41.__r_.__value_.__r.__words[0] = __p;
    YAML::as_if<std::string,void>::operator()(&v41, &v34);
    *(this + 4) |= 1u;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 3, &google::protobuf::internal::fixed_address_empty_string, &v34);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
      if (!v3)
      {
        goto LABEL_37;
      }
    }

    else if (!v3)
    {
      goto LABEL_37;
    }

    YAML::Node::operator[]<char [3]>(a2, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      v30 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v41, *&__p[8], *&__p[16]);
      }

      else
      {
        v41 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v30, &v41);
    }

    if (v37)
    {
      v10 = *(**v37 + 8) + 1;
    }

    else
    {
      v10 = 0;
    }

    std::to_string(&v33, v10);
    v11 = std::string::insert(&v33, 0, "id=");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v34);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_37:
  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  v13 = __p[0] != 1 || v37 && (***v37 & 1) == 0;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
      goto LABEL_69;
    }
  }

  else if (v13)
  {
    goto LABEL_69;
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v28 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v41, *&__p[8], *&__p[16]);
    }

    else
    {
      v41 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v28, &v41);
  }

  v41.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v41, &v34);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 4, &google::protobuf::internal::fixed_address_empty_string, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!v3)
    {
      goto LABEL_69;
    }
  }

  else if (!v3)
  {
    goto LABEL_69;
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v31 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v41, *&__p[8], *&__p[16]);
    }

    else
    {
      v41 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v31, &v41);
  }

  if (v37)
  {
    v14 = *(**v37 + 8) + 1;
  }

  else
  {
    v14 = 0;
  }

  std::to_string(&v33, v14);
  v15 = std::string::insert(&v33, 0, "name=");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v38, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_69:
  YAML::Node::operator[]<char [13]>(a2, "ttsVoiceName", __p);
  v17 = __p[0] != 1 || v37 && (***v37 & 1) == 0;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v17)
    {
      goto LABEL_101;
    }
  }

  else if (v17)
  {
    goto LABEL_101;
  }

  YAML::Node::operator[]<char [13]>(a2, "ttsVoiceName", __p);
  if ((__p[0] & 1) == 0)
  {
    v29 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v41, *&__p[8], *&__p[16]);
    }

    else
    {
      v41 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v29, &v41);
  }

  v41.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v41, &v34);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 5, &google::protobuf::internal::fixed_address_empty_string, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!v3)
    {
      goto LABEL_101;
    }
  }

  else if (!v3)
  {
    goto LABEL_101;
  }

  YAML::Node::operator[]<char [13]>(a2, "ttsVoiceName", __p);
  if ((__p[0] & 1) == 0)
  {
    v32 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v41, *&__p[8], *&__p[16]);
    }

    else
    {
      v41 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v32, &v41);
  }

  if (v37)
  {
    v18 = *(**v37 + 8) + 1;
  }

  else
  {
    v18 = 0;
  }

  std::to_string(&v33, v18);
  v19 = std::string::insert(&v33, 0, "ttsVoiceName=");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v38, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_101:
  if (v38 != v39)
  {
    std::string::basic_string[abi:ne200100]<0>(&v41, ";");
    siri::intelligence::StringJoin(&v38, &v41, __p);
    v23 = *(this + 1);
    v22 = (this + 8);
    v21 = v23;
    if (v23)
    {
      v24 = v21 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v22);
      v24 = v26;
    }

    if (*(v24 + 23) < 0)
    {
      operator delete(*v24);
    }

    v25 = *__p;
    *(v24 + 16) = *&__p[16];
    *v24 = v25;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DCFA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  __p = (v28 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseIntelligence_Event(siri::intelligence *this, protobuf::Intelligence_Event *a2, const YAML::Node *a3)
{
  v208 = 0;
  v209 = 0;
  v210 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v203, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v203, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v208, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v203.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v9 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v9)
    {
      goto LABEL_38;
    }
  }

  else if (v9)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 15, &google::protobuf::internal::fixed_address_empty_string, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  else if (!a3)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    v166 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v166, &v203);
  }

  if (v194)
  {
    v10 = *(**v194 + 8) + 1;
  }

  else
  {
    v10 = 0;
  }

  std::to_string(&v211, v10);
  v11 = std::string::insert(&v211, 0, "id=");
  v12 = *&v11->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v11->__r_.__value_.__l + 2);
  *v201 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_38:
  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  v13 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
      goto LABEL_70;
    }
  }

  else if (v13)
  {
    goto LABEL_70;
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v158 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v158, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 16, &google::protobuf::internal::fixed_address_empty_string, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_70;
    }
  }

  else if (!a3)
  {
    goto LABEL_70;
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v167 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v167, &v203);
  }

  if (v194)
  {
    v14 = *(**v194 + 8) + 1;
  }

  else
  {
    v14 = 0;
  }

  std::to_string(&v211, v14);
  v15 = std::string::insert(&v211, 0, "name=");
  v16 = *&v15->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v15->__r_.__value_.__l + 2);
  *v201 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_70:
  YAML::Node::operator[]<char [13]>(a2, "catiEnsemble", __p);
  v17 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v17)
    {
      goto LABEL_102;
    }
  }

  else if (v17)
  {
    goto LABEL_102;
  }

  YAML::Node::operator[]<char [13]>(a2, "catiEnsemble", __p);
  if ((__p[0] & 1) == 0)
  {
    v159 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v159, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  *(this + 4) |= 0x10u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 19, &google::protobuf::internal::fixed_address_empty_string, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_102;
    }
  }

  else if (!a3)
  {
    goto LABEL_102;
  }

  YAML::Node::operator[]<char [13]>(a2, "catiEnsemble", __p);
  if ((__p[0] & 1) == 0)
  {
    v168 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v168, &v203);
  }

  if (v194)
  {
    v18 = *(**v194 + 8) + 1;
  }

  else
  {
    v18 = 0;
  }

  std::to_string(&v211, v18);
  v19 = std::string::insert(&v211, 0, "catiEnsemble=");
  v20 = *&v19->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v19->__r_.__value_.__l + 2);
  *v201 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_102:
  YAML::Node::operator[]<char [9]>(__p, a2, "catiName");
  v21 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v21)
    {
      goto LABEL_134;
    }
  }

  else if (v21)
  {
    goto LABEL_134;
  }

  YAML::Node::operator[]<char [9]>(__p, a2, "catiName");
  if ((__p[0] & 1) == 0)
  {
    v160 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v160, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 17, &google::protobuf::internal::fixed_address_empty_string, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_134;
    }
  }

  else if (!a3)
  {
    goto LABEL_134;
  }

  YAML::Node::operator[]<char [9]>(__p, a2, "catiName");
  if ((__p[0] & 1) == 0)
  {
    v169 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v169, &v203);
  }

  if (v194)
  {
    v22 = *(**v194 + 8) + 1;
  }

  else
  {
    v22 = 0;
  }

  std::to_string(&v211, v22);
  v23 = std::string::insert(&v211, 0, "catiName=");
  v24 = *&v23->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v23->__r_.__value_.__l + 2);
  *v201 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_134:
  YAML::Node::operator[]<char [9]>(__p, a2, "catiGuid");
  v25 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v25)
    {
      goto LABEL_166;
    }
  }

  else if (v25)
  {
    goto LABEL_166;
  }

  YAML::Node::operator[]<char [9]>(__p, a2, "catiGuid");
  if ((__p[0] & 1) == 0)
  {
    v161 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v161, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  *(this + 4) |= 8u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 18, &google::protobuf::internal::fixed_address_empty_string, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_166;
    }
  }

  else if (!a3)
  {
    goto LABEL_166;
  }

  YAML::Node::operator[]<char [9]>(__p, a2, "catiGuid");
  if ((__p[0] & 1) == 0)
  {
    v170 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v170, &v203);
  }

  if (v194)
  {
    v26 = *(**v194 + 8) + 1;
  }

  else
  {
    v26 = 0;
  }

  std::to_string(&v211, v26);
  v27 = std::string::insert(&v211, 0, "catiGuid=");
  v28 = *&v27->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v27->__r_.__value_.__l + 2);
  *v201 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_166:
  YAML::Node::operator[]<char [15]>(a2, "userDialogActs", __p);
  v29 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  v186 = a2;
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v29)
  {
    goto LABEL_270;
  }

  YAML::Node::operator[]<char [15]>(a2, "userDialogActs", __p);
  if ((__p[0] & 1) == 0)
  {
    v162 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v162, &v203);
  }

  v31 = v194 && (v30 = **v194, *v30 == 1) && *(v30 + 16) == 3;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v31)
    {
LABEL_185:
      YAML::Node::operator[]<char [15]>(a2, "userDialogActs", &v203);
      if ((v203.__r_.__value_.__s.__data_[0] & 1) != 0 && v207)
      {
        YAML::detail::node_data::begin(**v207, __p);
        v33 = v205;
        v32 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v33;
          v202 = v32;
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        else
        {
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v205;
          v202 = 0;
        }
      }

      else
      {
        *v201 = 0;
        memset(&v201[8], 0, 32);
        v202 = 0;
      }

      if (v203.__r_.__value_.__s.__data_[0] == 1 && v207)
      {
        YAML::detail::node_data::end(**v207, __p);
        v34 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          v35 = *__p;
          v36 = *&__p[8];
          v179 = v34;
          v182 = *&__p[16];
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        else
        {
          v35 = *__p;
          v36 = *&__p[8];
          v179 = 0;
          v182 = *&__p[16];
        }
      }

      else
      {
        v36 = 0;
        v179 = 0;
        v182 = 0;
        v35 = 0;
      }

      for (i = 0; ; ++i)
      {
        if (*v201 == v35)
        {
          v38 = v36;
          v39 = &v201[8];
          if (v35 != 1)
          {
            if (v35 != 2)
            {
              goto LABEL_248;
            }

            v38 = v182;
            v39 = &v201[16];
          }

          if (*v39 == v38)
          {
LABEL_248:
            if (v179)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v179);
            }

            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            if (v206)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v206);
            }

            if (v204 < 0)
            {
              size = v203.__r_.__value_.__l.__size_;
              goto LABEL_269;
            }

            goto LABEL_270;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v201, __p);
        if ((__p[0] & 1) == 0)
        {
          v150 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v211, *&__p[8], *&__p[16]);
          }

          else
          {
            v211 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v150, &v211);
        }

        v211.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v211, &v191);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 48, &v191);
        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_235;
          }
        }

        else if (!a3)
        {
          goto LABEL_235;
        }

        std::to_string(&v188, i);
        v40 = std::string::insert(&v188, 0, "userDialogActs[");
        v41 = *&v40->__r_.__value_.__l.__data_;
        v189.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v189.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v189, "]=");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v190.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v190.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v153 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v211, *&__p[8], *&__p[16]);
          }

          else
          {
            v211 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v153, &v211);
        }

        if (v194)
        {
          v44 = *(**v194 + 8) + 1;
        }

        else
        {
          v44 = 0;
        }

        std::to_string(&v187, v44);
        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v187;
        }

        else
        {
          v45 = v187.__r_.__value_.__r.__words[0];
        }

        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = HIBYTE(v187.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v46 = v187.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v190, v45, v46);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v191.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&v191.__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v208, &v191);
        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v187.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v190.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

LABEL_235:
        if (v200)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v200);
        }

        if (v199 < 0)
        {
          operator delete(v198);
        }

        if (v197)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        }

        if (v196 < 0)
        {
          operator delete(v195);
        }

        if (v193)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v193);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v201);
      }
    }
  }

  else if (v31)
  {
    goto LABEL_185;
  }

  YAML::Node::operator[]<char [15]>(a2, "userDialogActs", __p);
  if ((__p[0] & 1) == 0)
  {
    v171 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v171, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 48, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_270;
    }
  }

  else if (!a3)
  {
    goto LABEL_270;
  }

  YAML::Node::operator[]<char [15]>(a2, "userDialogActs", __p);
  if ((__p[0] & 1) == 0)
  {
    v175 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v175, &v203);
  }

  if (v194)
  {
    v50 = *(**v194 + 8) + 1;
  }

  else
  {
    v50 = 0;
  }

  std::to_string(&v211, v50);
  v51 = std::string::insert(&v211, 0, "userDialogActs[0]=");
  v52 = *&v51->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v51->__r_.__value_.__l + 2);
  *v201 = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_269:
    operator delete(size);
  }

LABEL_270:
  YAML::Node::operator[]<char [18]>(__p, a2, "directInvocations");
  v53 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v53)
    {
      goto LABEL_375;
    }
  }

  else if (v53)
  {
    goto LABEL_375;
  }

  YAML::Node::operator[]<char [18]>(__p, a2, "directInvocations");
  if ((__p[0] & 1) == 0)
  {
    v163 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v163, &v203);
  }

  v55 = v194 && (v54 = **v194, *v54 == 1) && *(v54 + 16) == 3;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v55)
    {
LABEL_290:
      YAML::Node::operator[]<char [18]>(&v203, a2, "directInvocations");
      if ((v203.__r_.__value_.__s.__data_[0] & 1) != 0 && v207)
      {
        YAML::detail::node_data::begin(**v207, __p);
        v57 = v205;
        v56 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v57;
          v202 = v56;
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        else
        {
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v205;
          v202 = 0;
        }
      }

      else
      {
        *v201 = 0;
        memset(&v201[8], 0, 32);
        v202 = 0;
      }

      if (v203.__r_.__value_.__s.__data_[0] == 1 && v207)
      {
        YAML::detail::node_data::end(**v207, __p);
        v58 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          v59 = *__p;
          v60 = *&__p[8];
          v180 = v58;
          v183 = *&__p[16];
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        else
        {
          v59 = *__p;
          v60 = *&__p[8];
          v180 = 0;
          v183 = *&__p[16];
        }
      }

      else
      {
        v60 = 0;
        v180 = 0;
        v183 = 0;
        v59 = 0;
      }

      for (j = 0; ; ++j)
      {
        if (*v201 == v59)
        {
          v62 = v60;
          v63 = &v201[8];
          if (v59 != 1)
          {
            if (v59 != 2)
            {
              goto LABEL_353;
            }

            v62 = v183;
            v63 = &v201[16];
          }

          if (*v63 == v62)
          {
LABEL_353:
            if (v180)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v180);
            }

            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            if (v206)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v206);
            }

            if (v204 < 0)
            {
              v73 = v203.__r_.__value_.__l.__size_;
              goto LABEL_374;
            }

            goto LABEL_375;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v201, __p);
        if ((__p[0] & 1) == 0)
        {
          v151 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v211, *&__p[8], *&__p[16]);
          }

          else
          {
            v211 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v151, &v211);
        }

        v211.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v211, &v191);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 72, &v191);
        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_340;
          }
        }

        else if (!a3)
        {
          goto LABEL_340;
        }

        std::to_string(&v188, j);
        v64 = std::string::insert(&v188, 0, "directInvocations[");
        v65 = *&v64->__r_.__value_.__l.__data_;
        v189.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v189.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&v189, "]=");
        v67 = *&v66->__r_.__value_.__l.__data_;
        v190.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
        *&v190.__r_.__value_.__l.__data_ = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v154 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v211, *&__p[8], *&__p[16]);
          }

          else
          {
            v211 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v154, &v211);
        }

        if (v194)
        {
          v68 = *(**v194 + 8) + 1;
        }

        else
        {
          v68 = 0;
        }

        std::to_string(&v187, v68);
        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &v187;
        }

        else
        {
          v69 = v187.__r_.__value_.__r.__words[0];
        }

        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = HIBYTE(v187.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v70 = v187.__r_.__value_.__l.__size_;
        }

        v71 = std::string::append(&v190, v69, v70);
        v72 = *&v71->__r_.__value_.__l.__data_;
        v191.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
        *&v191.__r_.__value_.__l.__data_ = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v208, &v191);
        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v187.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v190.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

LABEL_340:
        if (v200)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v200);
        }

        if (v199 < 0)
        {
          operator delete(v198);
        }

        if (v197)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        }

        if (v196 < 0)
        {
          operator delete(v195);
        }

        if (v193)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v193);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v201);
      }
    }
  }

  else if (v55)
  {
    goto LABEL_290;
  }

  YAML::Node::operator[]<char [18]>(__p, a2, "directInvocations");
  if ((__p[0] & 1) == 0)
  {
    v172 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v172, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 72, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_375;
    }
  }

  else if (!a3)
  {
    goto LABEL_375;
  }

  YAML::Node::operator[]<char [18]>(__p, a2, "directInvocations");
  if ((__p[0] & 1) == 0)
  {
    v176 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v176, &v203);
  }

  if (v194)
  {
    v74 = *(**v194 + 8) + 1;
  }

  else
  {
    v74 = 0;
  }

  std::to_string(&v211, v74);
  v75 = std::string::insert(&v211, 0, "directInvocations[0]=");
  v76 = *&v75->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v75->__r_.__value_.__l + 2);
  *v201 = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v73 = *&__p[8];
LABEL_374:
    operator delete(v73);
  }

LABEL_375:
  YAML::Node::operator[]<char [11]>(a2, "utterances", __p);
  v77 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v77)
    {
      goto LABEL_480;
    }
  }

  else if (v77)
  {
    goto LABEL_480;
  }

  YAML::Node::operator[]<char [11]>(a2, "utterances", __p);
  if ((__p[0] & 1) == 0)
  {
    v164 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v164, &v203);
  }

  v79 = v194 && (v78 = **v194, *v78 == 1) && *(v78 + 16) == 3;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v79)
    {
LABEL_395:
      YAML::Node::operator[]<char [11]>(a2, "utterances", &v203);
      if ((v203.__r_.__value_.__s.__data_[0] & 1) != 0 && v207)
      {
        YAML::detail::node_data::begin(**v207, __p);
        v81 = v205;
        v80 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v81;
          v202 = v80;
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        else
        {
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v205;
          v202 = 0;
        }
      }

      else
      {
        *v201 = 0;
        memset(&v201[8], 0, 32);
        v202 = 0;
      }

      if (v203.__r_.__value_.__s.__data_[0] == 1 && v207)
      {
        YAML::detail::node_data::end(**v207, __p);
        v82 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          v83 = *__p;
          v84 = *&__p[8];
          v181 = v82;
          v184 = *&__p[16];
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        else
        {
          v83 = *__p;
          v84 = *&__p[8];
          v181 = 0;
          v184 = *&__p[16];
        }
      }

      else
      {
        v84 = 0;
        v181 = 0;
        v184 = 0;
        v83 = 0;
      }

      for (k = 0; ; ++k)
      {
        if (*v201 == v83)
        {
          v86 = v84;
          v87 = &v201[8];
          if (v83 != 1)
          {
            if (v83 != 2)
            {
              goto LABEL_458;
            }

            v86 = v184;
            v87 = &v201[16];
          }

          if (*v87 == v86)
          {
LABEL_458:
            if (v181)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v181);
            }

            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            if (v206)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v206);
            }

            if (v204 < 0)
            {
              v97 = v203.__r_.__value_.__l.__size_;
              goto LABEL_479;
            }

            goto LABEL_480;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v201, __p);
        if ((__p[0] & 1) == 0)
        {
          v152 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v211, *&__p[8], *&__p[16]);
          }

          else
          {
            v211 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v152, &v211);
        }

        v211.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v211, &v191);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 96, &v191);
        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_445;
          }
        }

        else if (!a3)
        {
          goto LABEL_445;
        }

        std::to_string(&v188, k);
        v88 = std::string::insert(&v188, 0, "utterances[");
        v89 = *&v88->__r_.__value_.__l.__data_;
        v189.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
        *&v189.__r_.__value_.__l.__data_ = v89;
        v88->__r_.__value_.__l.__size_ = 0;
        v88->__r_.__value_.__r.__words[2] = 0;
        v88->__r_.__value_.__r.__words[0] = 0;
        v90 = std::string::append(&v189, "]=");
        v91 = *&v90->__r_.__value_.__l.__data_;
        v190.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
        *&v190.__r_.__value_.__l.__data_ = v91;
        v90->__r_.__value_.__l.__size_ = 0;
        v90->__r_.__value_.__r.__words[2] = 0;
        v90->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v155 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v211, *&__p[8], *&__p[16]);
          }

          else
          {
            v211 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v155, &v211);
        }

        if (v194)
        {
          v92 = *(**v194 + 8) + 1;
        }

        else
        {
          v92 = 0;
        }

        std::to_string(&v187, v92);
        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v93 = &v187;
        }

        else
        {
          v93 = v187.__r_.__value_.__r.__words[0];
        }

        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v94 = HIBYTE(v187.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v94 = v187.__r_.__value_.__l.__size_;
        }

        v95 = std::string::append(&v190, v93, v94);
        v96 = *&v95->__r_.__value_.__l.__data_;
        v191.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
        *&v191.__r_.__value_.__l.__data_ = v96;
        v95->__r_.__value_.__l.__size_ = 0;
        v95->__r_.__value_.__r.__words[2] = 0;
        v95->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v208, &v191);
        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v187.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v190.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

LABEL_445:
        if (v200)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v200);
        }

        if (v199 < 0)
        {
          operator delete(v198);
        }

        if (v197)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        }

        if (v196 < 0)
        {
          operator delete(v195);
        }

        if (v193)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v193);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v201);
      }
    }
  }

  else if (v79)
  {
    goto LABEL_395;
  }

  YAML::Node::operator[]<char [11]>(a2, "utterances", __p);
  if ((__p[0] & 1) == 0)
  {
    v173 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v173, &v203);
  }

  v203.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v203, v201);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 96, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_480;
    }
  }

  else if (!a3)
  {
    goto LABEL_480;
  }

  YAML::Node::operator[]<char [11]>(a2, "utterances", __p);
  if ((__p[0] & 1) == 0)
  {
    v177 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v177, &v203);
  }

  if (v194)
  {
    v98 = *(**v194 + 8) + 1;
  }

  else
  {
    v98 = 0;
  }

  std::to_string(&v211, v98);
  v99 = std::string::insert(&v211, 0, "utterances[0]=");
  v100 = *&v99->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v99->__r_.__value_.__l + 2);
  *v201 = v100;
  v99->__r_.__value_.__l.__size_ = 0;
  v99->__r_.__value_.__r.__words[2] = 0;
  v99->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v97 = *&__p[8];
LABEL_479:
    operator delete(v97);
  }

LABEL_480:
  YAML::Node::operator[]<char [10]>(a2, "nlParsers", __p);
  v101 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v101)
    {
      goto LABEL_591;
    }
  }

  else if (v101)
  {
    goto LABEL_591;
  }

  YAML::Node::operator[]<char [10]>(a2, "nlParsers", __p);
  if ((__p[0] & 1) == 0)
  {
    v165 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v165, &v203);
  }

  v103 = v194 && (v102 = **v194, *v102 == 1) && *(v102 + 16) == 3;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v103)
    {
LABEL_500:
      YAML::Node::operator[]<char [10]>(a2, "nlParsers", &v203);
      if ((v203.__r_.__value_.__s.__data_[0] & 1) != 0 && v207)
      {
        YAML::detail::node_data::begin(**v207, __p);
        v105 = v205;
        v104 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v105;
          v202 = v104;
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v104);
        }

        else
        {
          *v201 = *__p;
          *&v201[16] = *&__p[16];
          *&v201[32] = v205;
          v202 = 0;
        }
      }

      else
      {
        *v201 = 0;
        memset(&v201[8], 0, 32);
        v202 = 0;
      }

      if (v203.__r_.__value_.__s.__data_[0] == 1 && v207)
      {
        YAML::detail::node_data::end(**v207, __p);
        v111 = v206;
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          v112 = *__p;
          v113 = *&__p[8];
          v185 = *&__p[16];
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v111);
        }

        else
        {
          v112 = *__p;
          v113 = *&__p[8];
          v185 = *&__p[16];
        }
      }

      else
      {
        v113 = 0;
        v185 = 0;
        v111 = 0;
        v112 = 0;
      }

      v114 = 0;
      v115 = v111;
      while (1)
      {
        if (*v201 == v112)
        {
          v116 = v113;
          v117 = &v201[8];
          if (v112 != 1)
          {
            if (v112 != 2)
            {
              goto LABEL_562;
            }

            v116 = v185;
            v117 = &v201[16];
          }

          if (*v117 == v116)
          {
LABEL_562:
            if (v111)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v111);
            }

            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            if (v206)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v206);
            }

            if (v204 < 0)
            {
              v133 = v203.__r_.__value_.__l.__size_;
              goto LABEL_590;
            }

            goto LABEL_591;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v201, __p);
        v118 = *(this + 5);
        if (!v118)
        {
          break;
        }

        v119 = *(this + 8);
        v120 = *v118;
        if (v119 < *v118)
        {
          *(this + 8) = v119 + 1;
          v121 = *&v118[2 * v119 + 2];
          if (!a3)
          {
            goto LABEL_549;
          }

          goto LABEL_529;
        }

        if (v120 == *(this + 9))
        {
          goto LABEL_527;
        }

LABEL_528:
        *v118 = v120 + 1;
        v121 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(*(this + 3));
        v122 = *(this + 8);
        v123 = *(this + 5) + 8 * v122;
        *(this + 8) = v122 + 1;
        *(v123 + 8) = v121;
        if (!a3)
        {
          goto LABEL_549;
        }

LABEL_529:
        std::to_string(&v188, v114);
        v124 = std::string::insert(&v188, 0, "nlParsers[");
        v125 = *&v124->__r_.__value_.__l.__data_;
        v189.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
        *&v189.__r_.__value_.__l.__data_ = v125;
        v124->__r_.__value_.__l.__size_ = 0;
        v124->__r_.__value_.__r.__words[2] = 0;
        v124->__r_.__value_.__r.__words[0] = 0;
        v126 = std::string::append(&v189, "]=");
        v127 = *&v126->__r_.__value_.__l.__data_;
        v190.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
        *&v190.__r_.__value_.__l.__data_ = v127;
        v126->__r_.__value_.__l.__size_ = 0;
        v126->__r_.__value_.__r.__words[2] = 0;
        v126->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v156 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v211, *&__p[8], *&__p[16]);
          }

          else
          {
            v211 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v156, &v211);
        }

        if (v194)
        {
          v128 = *(**v194 + 8) + 1;
        }

        else
        {
          v128 = 0;
        }

        std::to_string(&v187, v128);
        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v129 = &v187;
        }

        else
        {
          v129 = v187.__r_.__value_.__r.__words[0];
        }

        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v130 = HIBYTE(v187.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v130 = v187.__r_.__value_.__l.__size_;
        }

        v131 = std::string::append(&v190, v129, v130);
        v132 = *&v131->__r_.__value_.__l.__data_;
        v191.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
        *&v191.__r_.__value_.__l.__data_ = v132;
        v131->__r_.__value_.__l.__size_ = 0;
        v131->__r_.__value_.__r.__words[2] = 0;
        v131->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v208, &v191);
        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v187.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v190.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

LABEL_549:
        siri::intelligence::ParseIntelligence_NLParameters(v121, __p, a3);
        if (v200)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v200);
        }

        v111 = v115;
        if (v199 < 0)
        {
          operator delete(v198);
        }

        if (v197)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        }

        if (v196 < 0)
        {
          operator delete(v195);
        }

        if (v193)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v193);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v114;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v201);
      }

      v120 = *(this + 9);
LABEL_527:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v120 + 1);
      v118 = *(this + 5);
      v120 = *v118;
      goto LABEL_528;
    }
  }

  else if (v103)
  {
    goto LABEL_500;
  }

  v106 = *(this + 5);
  if (!v106)
  {
    v108 = *(this + 9);
    v109 = a2;
LABEL_572:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v108 + 1);
    v106 = *(this + 5);
    v108 = *v106;
    goto LABEL_573;
  }

  v107 = *(this + 8);
  v108 = *v106;
  v109 = a2;
  if (v107 < *v106)
  {
    *(this + 8) = v107 + 1;
    v110 = *&v106[2 * v107 + 2];
    if (!a3)
    {
      goto LABEL_586;
    }

    goto LABEL_574;
  }

  if (v108 == *(this + 9))
  {
    goto LABEL_572;
  }

LABEL_573:
  *v106 = v108 + 1;
  v110 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(*(this + 3));
  v134 = *(this + 8);
  v135 = *(this + 5) + 8 * v134;
  *(this + 8) = v134 + 1;
  *(v135 + 8) = v110;
  if (!a3)
  {
    goto LABEL_586;
  }

LABEL_574:
  YAML::Node::operator[]<char [10]>(v109, "nlParsers", __p);
  if ((__p[0] & 1) == 0)
  {
    v178 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
    }

    else
    {
      v203 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v178, &v203);
  }

  if (v194)
  {
    v136 = *(**v194 + 8) + 1;
  }

  else
  {
    v136 = 0;
  }

  std::to_string(&v211, v136);
  v137 = std::string::insert(&v211, 0, "nlParsers[0]=");
  v138 = *&v137->__r_.__value_.__l.__data_;
  *&v201[16] = *(&v137->__r_.__value_.__l + 2);
  *v201 = v138;
  v137->__r_.__value_.__l.__size_ = 0;
  v137->__r_.__value_.__r.__words[2] = 0;
  v137->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_586:
  YAML::Node::operator[]<char [10]>(v109, "nlParsers", __p);
  siri::intelligence::ParseIntelligence_NLParameters(v110, __p, a3);
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v133 = *&__p[8];
LABEL_590:
    operator delete(v133);
  }

LABEL_591:
  YAML::Node::operator[]<char [11]>(v186, "nlProducer", __p);
  v139 = __p[0] != 1 || v194 && (***v194 & 1) == 0;
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v139)
    {
      goto LABEL_622;
    }
  }

  else if (v139)
  {
    goto LABEL_622;
  }

  *(this + 4) |= 0x20u;
  v140 = *(this + 20);
  if (v140)
  {
    if (!a3)
    {
      goto LABEL_618;
    }

LABEL_606:
    YAML::Node::operator[]<char [11]>(v186, "nlProducer", __p);
    if ((__p[0] & 1) == 0)
    {
      v174 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v203, *&__p[8], *&__p[16]);
      }

      else
      {
        v203 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v174, &v203);
    }

    if (v194)
    {
      v141 = *(**v194 + 8) + 1;
    }

    else
    {
      v141 = 0;
    }

    std::to_string(&v211, v141);
    v142 = std::string::insert(&v211, 0, "nlProducer=");
    v143 = *&v142->__r_.__value_.__l.__data_;
    *&v201[16] = *(&v142->__r_.__value_.__l + 2);
    *v201 = v143;
    v142->__r_.__value_.__l.__size_ = 0;
    v142->__r_.__value_.__r.__words[2] = 0;
    v142->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v208, v201);
    if ((v201[23] & 0x80000000) != 0)
    {
      operator delete(*v201);
    }

    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v211.__r_.__value_.__l.__data_);
    }

    if (v193)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v193);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_618;
  }

  v140 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(0);
  *(this + 20) = v140;
  if (a3)
  {
    goto LABEL_606;
  }

LABEL_618:
  YAML::Node::operator[]<char [11]>(v186, "nlProducer", __p);
  siri::intelligence::ParseIntelligence_NLParameters(v140, __p, a3);
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_622:
  if (v208 != v209)
  {
    std::string::basic_string[abi:ne200100]<0>(&v203, ";");
    siri::intelligence::StringJoin(&v208, &v203, __p);
    v146 = *(this + 1);
    v145 = (this + 8);
    v144 = v146;
    if (v146)
    {
      v147 = v144 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v145);
      v147 = v149;
    }

    if (*(v147 + 23) < 0)
    {
      operator delete(*v147);
    }

    v148 = *__p;
    *(v147 + 16) = *&__p[16];
    *v147 = v148;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v203.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v208;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DD2998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  *(v51 - 240) = v51 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 240));
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseIntelligence_Condition(siri::intelligence *this, protobuf::Intelligence_Condition *a2, const YAML::Node *a3)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v35, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v35, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v32, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v9 = __p[0] != 1 || v31 && (***v31 & 1) == 0;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v9)
  {
    YAML::Node::operator[]<char [3]>(a2, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v35, *&__p[8], *&__p[16]);
      }

      else
      {
        v35 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(exception, &v35);
    }

    v35.__r_.__value_.__r.__words[0] = __p;
    YAML::as_if<std::string,void>::operator()(&v35, &v28);
    *(this + 4) |= 1u;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 3, &google::protobuf::internal::fixed_address_empty_string, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
      if (!a3)
      {
        goto LABEL_37;
      }
    }

    else if (!a3)
    {
      goto LABEL_37;
    }

    YAML::Node::operator[]<char [3]>(a2, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      v25 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v35, *&__p[8], *&__p[16]);
      }

      else
      {
        v35 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v25, &v35);
    }

    if (v31)
    {
      v10 = *(**v31 + 8) + 1;
    }

    else
    {
      v10 = 0;
    }

    std::to_string(&v27, v10);
    v11 = std::string::insert(&v27, 0, "id=");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v32, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_37:
  YAML::Node::operator[]<char [10]>(a2, "condition", __p);
  v13 = __p[0] != 1 || v31 && (***v31 & 1) == 0;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
      goto LABEL_68;
    }
  }

  else if (v13)
  {
    goto LABEL_68;
  }

  *(this + 4) |= 2u;
  v14 = *(this + 4);
  if (v14)
  {
    if (!a3)
    {
      goto LABEL_64;
    }

LABEL_52:
    YAML::Node::operator[]<char [10]>(a2, "condition", __p);
    if ((__p[0] & 1) == 0)
    {
      v26 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v35, *&__p[8], *&__p[16]);
      }

      else
      {
        v35 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v26, &v35);
    }

    if (v31)
    {
      v15 = *(**v31 + 8) + 1;
    }

    else
    {
      v15 = 0;
    }

    std::to_string(&v27, v15);
    v16 = std::string::insert(&v27, 0, "condition=");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v32, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_64;
  }

  v14 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(0);
  *(this + 4) = v14;
  if (a3)
  {
    goto LABEL_52;
  }

LABEL_64:
  YAML::Node::operator[]<char [10]>(a2, "condition", __p);
  siri::intelligence::ParseIntelligence_Condition_ConditionEntry(v14, __p, a3);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_68:
  if (v32 != v33)
  {
    std::string::basic_string[abi:ne200100]<0>(&v35, ";");
    siri::intelligence::StringJoin(&v32, &v35, __p);
    v20 = *(this + 1);
    v19 = (this + 8);
    v18 = v20;
    if (v20)
    {
      v21 = v18 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v19);
      v21 = v23;
    }

    if (*(v21 + 23) < 0)
    {
      operator delete(*v21);
    }

    v22 = *__p;
    *(v21 + 16) = *&__p[16];
    *v21 = v22;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DD34E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  __p = (v28 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseIntelligence_Variable(siri::intelligence *this, protobuf::Intelligence_Variable *a2, const YAML::Node *a3)
{
  v172 = 0;
  v173 = 0;
  v174 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v167, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v167, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v172, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v167.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  v9 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v9)
    {
      goto LABEL_38;
    }
  }

  else if (v9)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v167);
  }

  v167.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v167, v165);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 9, &google::protobuf::internal::fixed_address_empty_string, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  else if (!a3)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v137 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v137, &v167);
  }

  if (v158)
  {
    v10 = *(**v158 + 8) + 1;
  }

  else
  {
    v10 = 0;
  }

  std::to_string(&v175, v10);
  v11 = std::string::insert(&v175, 0, "name=");
  v12 = *&v11->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v11->__r_.__value_.__l + 2);
  *v165 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_38:
  YAML::Node::operator[]<char [5]>(a2, "type", __p);
  v13 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
      goto LABEL_70;
    }
  }

  else if (v13)
  {
    goto LABEL_70;
  }

  YAML::Node::operator[]<char [5]>(a2, "type", __p);
  if ((__p[0] & 1) == 0)
  {
    v129 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v129, &v167);
  }

  v167.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v167, v165);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 10, &google::protobuf::internal::fixed_address_empty_string, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_70;
    }
  }

  else if (!a3)
  {
    goto LABEL_70;
  }

  YAML::Node::operator[]<char [5]>(a2, "type", __p);
  if ((__p[0] & 1) == 0)
  {
    v138 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v138, &v167);
  }

  if (v158)
  {
    v14 = *(**v158 + 8) + 1;
  }

  else
  {
    v14 = 0;
  }

  std::to_string(&v175, v14);
  v15 = std::string::insert(&v175, 0, "type=");
  v16 = *&v15->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v15->__r_.__value_.__l + 2);
  *v165 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_70:
  YAML::Node::operator[]<char [11]>(a2, "persistent", __p);
  v17 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v17)
    {
      goto LABEL_102;
    }
  }

  else if (v17)
  {
    goto LABEL_102;
  }

  YAML::Node::operator[]<char [11]>(a2, "persistent", __p);
  if ((__p[0] & 1) == 0)
  {
    v130 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v130, &v167);
  }

  v167.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v167, v165);
  v18 = siri::intelligence::StringToBool(v165, 0);
  *(this + 4) |= 0x40u;
  *(this + 120) = v18;
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_102;
    }
  }

  else if (!a3)
  {
    goto LABEL_102;
  }

  YAML::Node::operator[]<char [11]>(a2, "persistent", __p);
  if ((__p[0] & 1) == 0)
  {
    v139 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v139, &v167);
  }

  if (v158)
  {
    v19 = *(**v158 + 8) + 1;
  }

  else
  {
    v19 = 0;
  }

  std::to_string(&v175, v19);
  v20 = std::string::insert(&v175, 0, "persistent=");
  v21 = *&v20->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v20->__r_.__value_.__l + 2);
  *v165 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_102:
  YAML::Node::operator[]<char [12]>(a2, "description", __p);
  v22 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v22)
    {
      goto LABEL_134;
    }
  }

  else if (v22)
  {
    goto LABEL_134;
  }

  YAML::Node::operator[]<char [12]>(a2, "description", __p);
  if ((__p[0] & 1) == 0)
  {
    v131 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v131, &v167);
  }

  v167.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v167, v165);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 11, &google::protobuf::internal::fixed_address_empty_string, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_134;
    }
  }

  else if (!a3)
  {
    goto LABEL_134;
  }

  YAML::Node::operator[]<char [12]>(a2, "description", __p);
  if ((__p[0] & 1) == 0)
  {
    v140 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v140, &v167);
  }

  if (v158)
  {
    v23 = *(**v158 + 8) + 1;
  }

  else
  {
    v23 = 0;
  }

  std::to_string(&v175, v23);
  v24 = std::string::insert(&v175, 0, "description=");
  v25 = *&v24->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v24->__r_.__value_.__l + 2);
  *v165 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_134:
  YAML::Node::operator[]<char [13]>(a2, "defaultValue", __p);
  v26 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v26)
    {
      goto LABEL_165;
    }
  }

  else if (v26)
  {
    goto LABEL_165;
  }

  *(this + 4) |= 0x10u;
  v27 = *(this + 13);
  if (v27)
  {
    if (!a3)
    {
      goto LABEL_161;
    }

LABEL_149:
    YAML::Node::operator[]<char [13]>(a2, "defaultValue", __p);
    if ((__p[0] & 1) == 0)
    {
      v141 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
      }

      else
      {
        v167 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v141, &v167);
    }

    if (v158)
    {
      v28 = *(**v158 + 8) + 1;
    }

    else
    {
      v28 = 0;
    }

    std::to_string(&v175, v28);
    v29 = std::string::insert(&v175, 0, "defaultValue=");
    v30 = *&v29->__r_.__value_.__l.__data_;
    *&v165[16] = *(&v29->__r_.__value_.__l + 2);
    *v165 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
    if ((v165[23] & 0x80000000) != 0)
    {
      operator delete(*v165);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    if (v157)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v157);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_161;
  }

  v27 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
  *(this + 13) = v27;
  if (a3)
  {
    goto LABEL_149;
  }

LABEL_161:
  YAML::Node::operator[]<char [13]>(a2, "defaultValue", __p);
  siri::intelligence::ParseIntelligence_KeyValueParameter(v27, __p, a3);
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_165:
  YAML::Node::operator[]<char [14]>(a2, "defaultString", __p);
  v31 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v31)
    {
      goto LABEL_197;
    }
  }

  else if (v31)
  {
    goto LABEL_197;
  }

  YAML::Node::operator[]<char [14]>(a2, "defaultString", __p);
  if ((__p[0] & 1) == 0)
  {
    v132 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v132, &v167);
  }

  v167.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v167, v165);
  *(this + 4) |= 8u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 12, &google::protobuf::internal::fixed_address_empty_string, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_197;
    }
  }

  else if (!a3)
  {
    goto LABEL_197;
  }

  YAML::Node::operator[]<char [14]>(a2, "defaultString", __p);
  if ((__p[0] & 1) == 0)
  {
    v142 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v142, &v167);
  }

  if (v158)
  {
    v32 = *(**v158 + 8) + 1;
  }

  else
  {
    v32 = 0;
  }

  std::to_string(&v175, v32);
  v33 = std::string::insert(&v175, 0, "defaultString=");
  v34 = *&v33->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v33->__r_.__value_.__l + 2);
  *v165 = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_197:
  YAML::Node::operator[]<char [14]>(a2, "defaultNumber", __p);
  v35 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v35)
    {
      goto LABEL_229;
    }
  }

  else if (v35)
  {
    goto LABEL_229;
  }

  YAML::Node::operator[]<char [14]>(a2, "defaultNumber", __p);
  if ((__p[0] & 1) == 0)
  {
    v133 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v133, &v167);
  }

  v167.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v167, v165);
  siri::intelligence::StringToDouble(v165, 0);
  *(this + 4) |= 0x20u;
  *(this + 14) = v36;
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_229;
    }
  }

  else if (!a3)
  {
    goto LABEL_229;
  }

  YAML::Node::operator[]<char [14]>(a2, "defaultNumber", __p);
  if ((__p[0] & 1) == 0)
  {
    v143 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v143, &v167);
  }

  if (v158)
  {
    v37 = *(**v158 + 8) + 1;
  }

  else
  {
    v37 = 0;
  }

  std::to_string(&v175, v37);
  v38 = std::string::insert(&v175, 0, "defaultNumber=");
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v38->__r_.__value_.__l + 2);
  *v165 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_229:
  YAML::Node::operator[]<char [15]>(a2, "defaultBoolean", __p);
  v40 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v40)
    {
      goto LABEL_261;
    }
  }

  else if (v40)
  {
    goto LABEL_261;
  }

  YAML::Node::operator[]<char [15]>(a2, "defaultBoolean", __p);
  if ((__p[0] & 1) == 0)
  {
    v134 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v134, &v167);
  }

  v167.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v167, v165);
  v41 = siri::intelligence::StringToBool(v165, 0);
  *(this + 4) |= 0x80u;
  *(this + 121) = v41;
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_261;
    }
  }

  else if (!a3)
  {
    goto LABEL_261;
  }

  YAML::Node::operator[]<char [15]>(a2, "defaultBoolean", __p);
  if ((__p[0] & 1) == 0)
  {
    v144 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v144, &v167);
  }

  if (v158)
  {
    v42 = *(**v158 + 8) + 1;
  }

  else
  {
    v42 = 0;
  }

  std::to_string(&v175, v42);
  v43 = std::string::insert(&v175, 0, "defaultBoolean=");
  v44 = *&v43->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v43->__r_.__value_.__l + 2);
  *v165 = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_261:
  YAML::Node::operator[]<char [13]>(a2, "defaultArray", __p);
  v45 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  v148 = a2;
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v45)
  {
    goto LABEL_371;
  }

  YAML::Node::operator[]<char [13]>(a2, "defaultArray", __p);
  if ((__p[0] & 1) == 0)
  {
    v135 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v135, &v167);
  }

  v47 = v158 && (v46 = **v158, *v46 == 1) && *(v46 + 16) == 3;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v47)
    {
LABEL_280:
      YAML::Node::operator[]<char [13]>(a2, "defaultArray", &v167);
      if ((v167.__r_.__value_.__s.__data_[0] & 1) != 0 && v171)
      {
        YAML::detail::node_data::begin(**v171, __p);
        v49 = v169;
        v48 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
          *v165 = *__p;
          *&v165[16] = *&__p[16];
          *&v165[32] = v49;
          v166 = v48;
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        else
        {
          *v165 = *__p;
          *&v165[16] = *&__p[16];
          *&v165[32] = v169;
          v166 = 0;
        }
      }

      else
      {
        *v165 = 0;
        memset(&v165[8], 0, 32);
        v166 = 0;
      }

      if (v167.__r_.__value_.__s.__data_[0] == 1 && v171)
      {
        YAML::detail::node_data::end(**v171, __p);
        v54 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
          v55 = *__p;
          v56 = *&__p[8];
          v147 = *&__p[16];
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        else
        {
          v55 = *__p;
          v56 = *&__p[8];
          v147 = *&__p[16];
        }
      }

      else
      {
        v56 = 0;
        v147 = 0;
        v54 = 0;
        v55 = 0;
      }

      v57 = 0;
      v58 = v54;
      while (1)
      {
        if (*v165 == v55)
        {
          v59 = v56;
          v60 = &v165[8];
          if (v55 != 1)
          {
            if (v55 != 2)
            {
              goto LABEL_342;
            }

            v59 = v147;
            v60 = &v165[16];
          }

          if (*v60 == v59)
          {
LABEL_342:
            if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }

            if (v166)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v166);
            }

            if (v170)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v170);
            }

            if (v168 < 0)
            {
              size = v167.__r_.__value_.__l.__size_;
              goto LABEL_370;
            }

            goto LABEL_371;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v165, __p);
        v61 = *(this + 5);
        if (!v61)
        {
          break;
        }

        v62 = *(this + 8);
        v63 = *v61;
        if (v62 < *v61)
        {
          *(this + 8) = v62 + 1;
          v64 = *&v61[2 * v62 + 2];
          if (!a3)
          {
            goto LABEL_329;
          }

          goto LABEL_309;
        }

        if (v63 == *(this + 9))
        {
          goto LABEL_307;
        }

LABEL_308:
        *v61 = v63 + 1;
        v64 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 3));
        v65 = *(this + 8);
        v66 = *(this + 5) + 8 * v65;
        *(this + 8) = v65 + 1;
        *(v66 + 8) = v64;
        if (!a3)
        {
          goto LABEL_329;
        }

LABEL_309:
        std::to_string(&v151, v57);
        v67 = std::string::insert(&v151, 0, "defaultArray[");
        v68 = *&v67->__r_.__value_.__l.__data_;
        v152.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
        *&v152.__r_.__value_.__l.__data_ = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = std::string::append(&v152, "]=");
        v70 = *&v69->__r_.__value_.__l.__data_;
        v153.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
        *&v153.__r_.__value_.__l.__data_ = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v126 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v175, *&__p[8], *&__p[16]);
          }

          else
          {
            v175 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v126, &v175);
        }

        if (v158)
        {
          v71 = *(**v158 + 8) + 1;
        }

        else
        {
          v71 = 0;
        }

        std::to_string(&v150, v71);
        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = &v150;
        }

        else
        {
          v72 = v150.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v73 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v73 = v150.__r_.__value_.__l.__size_;
        }

        v74 = std::string::append(&v153, v72, v73);
        v75 = *&v74->__r_.__value_.__l.__data_;
        v155 = v74->__r_.__value_.__r.__words[2];
        *v154 = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v172, v154);
        if (SHIBYTE(v155) < 0)
        {
          operator delete(v154[0]);
        }

        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v153.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v151.__r_.__value_.__l.__data_);
        }

LABEL_329:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v64, __p, a3);
        if (v164)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

        v54 = v58;
        if (v163 < 0)
        {
          operator delete(v162);
        }

        if (v161)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v161);
        }

        if (v160 < 0)
        {
          operator delete(v159);
        }

        if (v157)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v157);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v57;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v165);
      }

      v63 = *(this + 9);
LABEL_307:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v63 + 1);
      v61 = *(this + 5);
      v63 = *v61;
      goto LABEL_308;
    }
  }

  else if (v47)
  {
    goto LABEL_280;
  }

  v50 = *(this + 5);
  if (!v50)
  {
    v52 = *(this + 9);
LABEL_352:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v52 + 1);
    v50 = *(this + 5);
    v52 = *v50;
    goto LABEL_353;
  }

  v51 = *(this + 8);
  v52 = *v50;
  if (v51 < *v50)
  {
    *(this + 8) = v51 + 1;
    v53 = *&v50[2 * v51 + 2];
    if (!a3)
    {
      goto LABEL_366;
    }

    goto LABEL_354;
  }

  if (v52 == *(this + 9))
  {
    goto LABEL_352;
  }

LABEL_353:
  *v50 = v52 + 1;
  v53 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 3));
  v77 = *(this + 8);
  v78 = *(this + 5) + 8 * v77;
  *(this + 8) = v77 + 1;
  *(v78 + 8) = v53;
  if (!a3)
  {
    goto LABEL_366;
  }

LABEL_354:
  YAML::Node::operator[]<char [13]>(a2, "defaultArray", __p);
  if ((__p[0] & 1) == 0)
  {
    v145 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v145, &v167);
  }

  if (v158)
  {
    v79 = *(**v158 + 8) + 1;
  }

  else
  {
    v79 = 0;
  }

  std::to_string(&v175, v79);
  v80 = std::string::insert(&v175, 0, "defaultArray[0]=");
  v81 = *&v80->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v80->__r_.__value_.__l + 2);
  *v165 = v81;
  v80->__r_.__value_.__l.__size_ = 0;
  v80->__r_.__value_.__r.__words[2] = 0;
  v80->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_366:
  YAML::Node::operator[]<char [13]>(a2, "defaultArray", __p);
  siri::intelligence::ParseIntelligence_KeyValueParameter(v53, __p, a3);
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_370:
    operator delete(size);
  }

LABEL_371:
  YAML::Node::operator[]<char [18]>(__p, v148, "defaultDictionary");
  v82 = __p[0] != 1 || v158 && (***v158 & 1) == 0;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v82)
    {
      goto LABEL_482;
    }
  }

  else if (v82)
  {
    goto LABEL_482;
  }

  YAML::Node::operator[]<char [18]>(__p, v148, "defaultDictionary");
  if ((__p[0] & 1) == 0)
  {
    v136 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v136, &v167);
  }

  v84 = v158 && (v83 = **v158, *v83 == 1) && *(v83 + 16) == 3;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v84)
    {
LABEL_391:
      YAML::Node::operator[]<char [18]>(&v167, v148, "defaultDictionary");
      if ((v167.__r_.__value_.__s.__data_[0] & 1) != 0 && v171)
      {
        YAML::detail::node_data::begin(**v171, __p);
        v86 = v169;
        v85 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
          *v165 = *__p;
          *&v165[16] = *&__p[16];
          *&v165[32] = v86;
          v166 = v85;
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }

        else
        {
          *v165 = *__p;
          *&v165[16] = *&__p[16];
          *&v165[32] = v169;
          v166 = 0;
        }
      }

      else
      {
        *v165 = 0;
        memset(&v165[8], 0, 32);
        v166 = 0;
      }

      if (v167.__r_.__value_.__s.__data_[0] == 1 && v171)
      {
        YAML::detail::node_data::end(**v171, __p);
        v92 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
          v93 = *__p;
          v94 = *&__p[8];
          v149 = *&__p[16];
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        }

        else
        {
          v93 = *__p;
          v94 = *&__p[8];
          v149 = *&__p[16];
        }
      }

      else
      {
        v94 = 0;
        v149 = 0;
        v92 = 0;
        v93 = 0;
      }

      v95 = 0;
      v96 = v92;
      while (1)
      {
        if (*v165 == v93)
        {
          v97 = v94;
          v98 = &v165[8];
          if (v93 != 1)
          {
            if (v93 != 2)
            {
              goto LABEL_453;
            }

            v97 = v149;
            v98 = &v165[16];
          }

          if (*v98 == v97)
          {
LABEL_453:
            if (v92)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v92);
            }

            if (v166)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v166);
            }

            if (v170)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v170);
            }

            if (v168 < 0)
            {
              v114 = v167.__r_.__value_.__l.__size_;
              goto LABEL_481;
            }

            goto LABEL_482;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v165, __p);
        v99 = *(this + 8);
        if (!v99)
        {
          break;
        }

        v100 = *(this + 14);
        v101 = *v99;
        if (v100 < *v99)
        {
          *(this + 14) = v100 + 1;
          v102 = *&v99[2 * v100 + 2];
          if (!a3)
          {
            goto LABEL_440;
          }

          goto LABEL_420;
        }

        if (v101 == *(this + 15))
        {
          goto LABEL_418;
        }

LABEL_419:
        *v99 = v101 + 1;
        v102 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 6));
        v103 = *(this + 14);
        v104 = *(this + 8) + 8 * v103;
        *(this + 14) = v103 + 1;
        *(v104 + 8) = v102;
        if (!a3)
        {
          goto LABEL_440;
        }

LABEL_420:
        std::to_string(&v151, v95);
        v105 = std::string::insert(&v151, 0, "defaultDictionary[");
        v106 = *&v105->__r_.__value_.__l.__data_;
        v152.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
        *&v152.__r_.__value_.__l.__data_ = v106;
        v105->__r_.__value_.__l.__size_ = 0;
        v105->__r_.__value_.__r.__words[2] = 0;
        v105->__r_.__value_.__r.__words[0] = 0;
        v107 = std::string::append(&v152, "]=");
        v108 = *&v107->__r_.__value_.__l.__data_;
        v153.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
        *&v153.__r_.__value_.__l.__data_ = v108;
        v107->__r_.__value_.__l.__size_ = 0;
        v107->__r_.__value_.__r.__words[2] = 0;
        v107->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v127 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v175, *&__p[8], *&__p[16]);
          }

          else
          {
            v175 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v127, &v175);
        }

        if (v158)
        {
          v109 = *(**v158 + 8) + 1;
        }

        else
        {
          v109 = 0;
        }

        std::to_string(&v150, v109);
        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v110 = &v150;
        }

        else
        {
          v110 = v150.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v111 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v111 = v150.__r_.__value_.__l.__size_;
        }

        v112 = std::string::append(&v153, v110, v111);
        v113 = *&v112->__r_.__value_.__l.__data_;
        v155 = v112->__r_.__value_.__r.__words[2];
        *v154 = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v172, v154);
        if (SHIBYTE(v155) < 0)
        {
          operator delete(v154[0]);
        }

        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v153.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v151.__r_.__value_.__l.__data_);
        }

LABEL_440:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v102, __p, a3);
        if (v164)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

        v92 = v96;
        if (v163 < 0)
        {
          operator delete(v162);
        }

        if (v161)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v161);
        }

        if (v160 < 0)
        {
          operator delete(v159);
        }

        if (v157)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v157);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v95;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v165);
      }

      v101 = *(this + 15);
LABEL_418:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v101 + 1);
      v99 = *(this + 8);
      v101 = *v99;
      goto LABEL_419;
    }
  }

  else if (v84)
  {
    goto LABEL_391;
  }

  v87 = *(this + 8);
  if (!v87)
  {
    v89 = *(this + 15);
    v90 = v148;
LABEL_463:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v89 + 1);
    v87 = *(this + 8);
    v89 = *v87;
    goto LABEL_464;
  }

  v88 = *(this + 14);
  v89 = *v87;
  v90 = v148;
  if (v88 < *v87)
  {
    *(this + 14) = v88 + 1;
    v91 = *&v87[2 * v88 + 2];
    if (!a3)
    {
      goto LABEL_477;
    }

    goto LABEL_465;
  }

  if (v89 == *(this + 15))
  {
    goto LABEL_463;
  }

LABEL_464:
  *v87 = v89 + 1;
  v91 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 6));
  v115 = *(this + 14);
  v116 = *(this + 8) + 8 * v115;
  *(this + 14) = v115 + 1;
  *(v116 + 8) = v91;
  if (!a3)
  {
    goto LABEL_477;
  }

LABEL_465:
  YAML::Node::operator[]<char [18]>(__p, v90, "defaultDictionary");
  if ((__p[0] & 1) == 0)
  {
    v146 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v167, *&__p[8], *&__p[16]);
    }

    else
    {
      v167 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v146, &v167);
  }

  if (v158)
  {
    v117 = *(**v158 + 8) + 1;
  }

  else
  {
    v117 = 0;
  }

  std::to_string(&v175, v117);
  v118 = std::string::insert(&v175, 0, "defaultDictionary[0]=");
  v119 = *&v118->__r_.__value_.__l.__data_;
  *&v165[16] = *(&v118->__r_.__value_.__l + 2);
  *v165 = v119;
  v118->__r_.__value_.__l.__size_ = 0;
  v118->__r_.__value_.__r.__words[2] = 0;
  v118->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v172, v165);
  if ((v165[23] & 0x80000000) != 0)
  {
    operator delete(*v165);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_477:
  YAML::Node::operator[]<char [18]>(__p, v90, "defaultDictionary");
  siri::intelligence::ParseIntelligence_KeyValueParameter(v91, __p, a3);
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v114 = *&__p[8];
LABEL_481:
    operator delete(v114);
  }

LABEL_482:
  if (v172 != v173)
  {
    std::string::basic_string[abi:ne200100]<0>(&v167, ";");
    siri::intelligence::StringJoin(&v172, &v167, __p);
    v122 = *(this + 1);
    v121 = (this + 8);
    v120 = v122;
    if (v122)
    {
      v123 = v120 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v121);
      v123 = v125;
    }

    if (*(v123 + 23) < 0)
    {
      operator delete(*v123);
    }

    v124 = *__p;
    *(v123 + 16) = *&__p[16];
    *v123 = v124;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v167.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v172;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}