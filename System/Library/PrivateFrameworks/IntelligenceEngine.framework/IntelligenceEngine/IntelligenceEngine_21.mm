void sub_254DBA280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ParseIntelligence_DialogResponse(siri::intelligence *this, protobuf::Intelligence_DialogResponse *a2, const YAML::Node *a3)
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
  v274 = a2;
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

  YAML::Node::operator[]<char [3]>(v274, "id", __p);
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
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 15, &google::protobuf::internal::fixed_address_empty_string, v289);
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

  YAML::Node::operator[]<char [3]>(v274, "id", __p);
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
  YAML::Node::operator[]<char [8]>(v274, "nextIds", __p);
  v13 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v13)
  {
    goto LABEL_142;
  }

  YAML::Node::operator[]<char [8]>(v274, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v228 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v228, &v291);
  }

  v15 = v282 && (v14 = **v282, *v14 == 1) && *(v14 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v15)
    {
LABEL_57:
      YAML::Node::operator[]<char [8]>(v274, "nextIds", &v291);
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v17 = v293;
        v16 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v17;
          v290 = v16;
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
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
        v18 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *__p;
          v20 = *&__p[8];
          v21 = *&__p[16];
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          v270 = v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v270 = 0;
          v19 = *__p;
          v20 = *&__p[8];
          v21 = *&__p[16];
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v270 = 0;
        v19 = 0;
      }

      for (i = 0; ; ++i)
      {
        if (*v289 == v19)
        {
          v23 = v20;
          v24 = &v289[8];
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              goto LABEL_120;
            }

            v23 = v21;
            v24 = &v289[16];
          }

          if (*v24 == v23)
          {
LABEL_120:
            if (v270)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v270);
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
              goto LABEL_141;
            }

            goto LABEL_142;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        if ((__p[0] & 1) == 0)
        {
          v222 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v222, &v299);
        }

        v299.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v299, &v279);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 72, &v279);
        if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v279.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_107;
          }
        }

        else if (!a3)
        {
          goto LABEL_107;
        }

        std::to_string(&v276, i);
        v25 = std::string::insert(&v276, 0, "nextIds[");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v277, "]=");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v278.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v278.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v223 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v223, &v299);
        }

        if (v282)
        {
          v29 = *(**v282 + 8) + 1;
        }

        else
        {
          v29 = 0;
        }

        std::to_string(&v275, v29);
        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v275;
        }

        else
        {
          v30 = v275.__r_.__value_.__r.__words[0];
        }

        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v275.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v275.__r_.__value_.__l.__size_;
        }

        v32 = std::string::append(&v278, v30, v31);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v279.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v279.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, &v279);
        if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v279.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v278.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

LABEL_107:
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

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

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }
    }
  }

  else if (v15)
  {
    goto LABEL_57;
  }

  YAML::Node::operator[]<char [8]>(v274, "nextIds", __p);
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

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 72, v289);
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
      goto LABEL_142;
    }
  }

  else if (!a3)
  {
    goto LABEL_142;
  }

  YAML::Node::operator[]<char [8]>(v274, "nextIds", __p);
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
    v35 = *(**v282 + 8) + 1;
  }

  else
  {
    v35 = 0;
  }

  std::to_string(&v299, v35);
  v36 = std::string::insert(&v299, 0, "nextIds[0]=");
  v37 = *&v36->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v36->__r_.__value_.__l + 2);
  *v289 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
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
    size = *&__p[8];
LABEL_141:
    operator delete(size);
  }

LABEL_142:
  YAML::Node::operator[]<char [14]>(v274, "selectionMode", __p);
  v38 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v38)
    {
      goto LABEL_174;
    }
  }

  else if (v38)
  {
    goto LABEL_174;
  }

  YAML::Node::operator[]<char [14]>(v274, "selectionMode", __p);
  if ((__p[0] & 1) == 0)
  {
    v229 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v229, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x40u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 21, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_174;
    }
  }

  else if (!a3)
  {
    goto LABEL_174;
  }

  YAML::Node::operator[]<char [14]>(v274, "selectionMode", __p);
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

  if (v282)
  {
    v39 = *(**v282 + 8) + 1;
  }

  else
  {
    v39 = 0;
  }

  std::to_string(&v299, v39);
  v40 = std::string::insert(&v299, 0, "selectionMode=");
  v41 = *&v40->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v40->__r_.__value_.__l + 2);
  *v289 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
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

LABEL_174:
  YAML::Node::operator[]<char [12]>(v274, "conditionId", __p);
  v42 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v42)
    {
      goto LABEL_206;
    }
  }

  else if (v42)
  {
    goto LABEL_206;
  }

  YAML::Node::operator[]<char [12]>(v274, "conditionId", __p);
  if ((__p[0] & 1) == 0)
  {
    v230 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v230, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x800u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 26, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_206;
    }
  }

  else if (!a3)
  {
    goto LABEL_206;
  }

  YAML::Node::operator[]<char [12]>(v274, "conditionId", __p);
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

  if (v282)
  {
    v43 = *(**v282 + 8) + 1;
  }

  else
  {
    v43 = 0;
  }

  std::to_string(&v299, v43);
  v44 = std::string::insert(&v299, 0, "conditionId=");
  v45 = *&v44->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v44->__r_.__value_.__l + 2);
  *v289 = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
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

LABEL_206:
  YAML::Node::operator[]<char [9]>(__p, v274, "priority");
  v46 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v46)
    {
      goto LABEL_238;
    }
  }

  else if (v46)
  {
    goto LABEL_238;
  }

  YAML::Node::operator[]<char [9]>(__p, v274, "priority");
  if ((__p[0] & 1) == 0)
  {
    v231 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v231, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x10u;
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
      goto LABEL_238;
    }
  }

  else if (!a3)
  {
    goto LABEL_238;
  }

  YAML::Node::operator[]<char [9]>(__p, v274, "priority");
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

  if (v282)
  {
    v47 = *(**v282 + 8) + 1;
  }

  else
  {
    v47 = 0;
  }

  std::to_string(&v299, v47);
  v48 = std::string::insert(&v299, 0, "priority=");
  v49 = *&v48->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v48->__r_.__value_.__l + 2);
  *v289 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
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

LABEL_238:
  YAML::Node::operator[]<char [7]>(v274, "repeat", __p);
  v50 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v50)
    {
      goto LABEL_270;
    }
  }

  else if (v50)
  {
    goto LABEL_270;
  }

  YAML::Node::operator[]<char [7]>(v274, "repeat", __p);
  if ((__p[0] & 1) == 0)
  {
    v232 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v232, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v51 = siri::intelligence::StringToBool(v289, 0);
  *(this + 4) |= 0x8000u;
  *(this + 236) = v51;
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
      goto LABEL_270;
    }
  }

  else if (!a3)
  {
    goto LABEL_270;
  }

  YAML::Node::operator[]<char [7]>(v274, "repeat", __p);
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

  if (v282)
  {
    v52 = *(**v282 + 8) + 1;
  }

  else
  {
    v52 = 0;
  }

  std::to_string(&v299, v52);
  v53 = std::string::insert(&v299, 0, "repeat=");
  v54 = *&v53->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v53->__r_.__value_.__l + 2);
  *v289 = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
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

LABEL_270:
  YAML::Node::operator[]<char [13]>(v274, "inputGroupId", __p);
  v55 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v55)
    {
      goto LABEL_302;
    }
  }

  else if (v55)
  {
    goto LABEL_302;
  }

  YAML::Node::operator[]<char [13]>(v274, "inputGroupId", __p);
  if ((__p[0] & 1) == 0)
  {
    v233 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v233, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x1000u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 27, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_302;
    }
  }

  else if (!a3)
  {
    goto LABEL_302;
  }

  YAML::Node::operator[]<char [13]>(v274, "inputGroupId", __p);
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

  if (v282)
  {
    v56 = *(**v282 + 8) + 1;
  }

  else
  {
    v56 = 0;
  }

  std::to_string(&v299, v56);
  v57 = std::string::insert(&v299, 0, "inputGroupId=");
  v58 = *&v57->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v57->__r_.__value_.__l + 2);
  *v289 = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
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

LABEL_302:
  YAML::Node::operator[]<char [5]>(v274, "text", __p);
  v59 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v59)
    {
      goto LABEL_334;
    }
  }

  else if (v59)
  {
    goto LABEL_334;
  }

  YAML::Node::operator[]<char [5]>(v274, "text", __p);
  if ((__p[0] & 1) == 0)
  {
    v234 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v234, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x80u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 22, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_334;
    }
  }

  else if (!a3)
  {
    goto LABEL_334;
  }

  YAML::Node::operator[]<char [5]>(v274, "text", __p);
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
    v60 = *(**v282 + 8) + 1;
  }

  else
  {
    v60 = 0;
  }

  std::to_string(&v299, v60);
  v61 = std::string::insert(&v299, 0, "text=");
  v62 = *&v61->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v61->__r_.__value_.__l + 2);
  *v289 = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
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

LABEL_334:
  YAML::Node::operator[]<char [14]>(v274, "sensitiveData", __p);
  v63 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v63)
    {
      goto LABEL_366;
    }
  }

  else if (v63)
  {
    goto LABEL_366;
  }

  YAML::Node::operator[]<char [14]>(v274, "sensitiveData", __p);
  if ((__p[0] & 1) == 0)
  {
    v235 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v235, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v64 = siri::intelligence::StringToBool(v289, 0);
  *(this + 4) |= 0x10000u;
  *(this + 237) = v64;
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
      goto LABEL_366;
    }
  }

  else if (!a3)
  {
    goto LABEL_366;
  }

  YAML::Node::operator[]<char [14]>(v274, "sensitiveData", __p);
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
    v65 = *(**v282 + 8) + 1;
  }

  else
  {
    v65 = 0;
  }

  std::to_string(&v299, v65);
  v66 = std::string::insert(&v299, 0, "sensitiveData=");
  v67 = *&v66->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v66->__r_.__value_.__l + 2);
  *v289 = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
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

LABEL_366:
  YAML::Node::operator[]<char [12]>(v274, "dialogPhase", __p);
  v68 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v68)
    {
      goto LABEL_398;
    }
  }

  else if (v68)
  {
    goto LABEL_398;
  }

  YAML::Node::operator[]<char [12]>(v274, "dialogPhase", __p);
  if ((__p[0] & 1) == 0)
  {
    v236 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v236, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x2000u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 28, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_398;
    }
  }

  else if (!a3)
  {
    goto LABEL_398;
  }

  YAML::Node::operator[]<char [12]>(v274, "dialogPhase", __p);
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
    v69 = *(**v282 + 8) + 1;
  }

  else
  {
    v69 = 0;
  }

  std::to_string(&v299, v69);
  v70 = std::string::insert(&v299, 0, "dialogPhase=");
  v71 = *&v70->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v70->__r_.__value_.__l + 2);
  *v289 = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
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

LABEL_398:
  YAML::Node::operator[]<char [12]>(v274, "characterId", __p);
  v72 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v72)
    {
      goto LABEL_430;
    }
  }

  else if (v72)
  {
    goto LABEL_430;
  }

  YAML::Node::operator[]<char [12]>(v274, "characterId", __p);
  if ((__p[0] & 1) == 0)
  {
    v237 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v237, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  v73 = siri::intelligence::StringToIntegralType<int>(v289, 0);
  *(this + 4) |= 0x4000u;
  *(this + 58) = v73;
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
      goto LABEL_430;
    }
  }

  else if (!a3)
  {
    goto LABEL_430;
  }

  YAML::Node::operator[]<char [12]>(v274, "characterId", __p);
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
    v74 = *(**v282 + 8) + 1;
  }

  else
  {
    v74 = 0;
  }

  std::to_string(&v299, v74);
  v75 = std::string::insert(&v299, 0, "characterId=");
  v76 = *&v75->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v75->__r_.__value_.__l + 2);
  *v289 = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
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

LABEL_430:
  YAML::Node::operator[]<char [9]>(__p, v274, "userData");
  v77 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v77)
    {
      goto LABEL_462;
    }
  }

  else if (v77)
  {
    goto LABEL_462;
  }

  YAML::Node::operator[]<char [9]>(__p, v274, "userData");
  if ((__p[0] & 1) == 0)
  {
    v238 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v238, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x100u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 23, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_462;
    }
  }

  else if (!a3)
  {
    goto LABEL_462;
  }

  YAML::Node::operator[]<char [9]>(__p, v274, "userData");
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
    v78 = *(**v282 + 8) + 1;
  }

  else
  {
    v78 = 0;
  }

  std::to_string(&v299, v78);
  v79 = std::string::insert(&v299, 0, "userData=");
  v80 = *&v79->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v79->__r_.__value_.__l + 2);
  *v289 = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
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

LABEL_462:
  YAML::Node::operator[]<char [6]>(v274, "catId", __p);
  v81 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v81)
    {
      goto LABEL_494;
    }
  }

  else if (v81)
  {
    goto LABEL_494;
  }

  YAML::Node::operator[]<char [6]>(v274, "catId", __p);
  if ((__p[0] & 1) == 0)
  {
    v239 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v239, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x200u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 24, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_494;
    }
  }

  else if (!a3)
  {
    goto LABEL_494;
  }

  YAML::Node::operator[]<char [6]>(v274, "catId", __p);
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
    v82 = *(**v282 + 8) + 1;
  }

  else
  {
    v82 = 0;
  }

  std::to_string(&v299, v82);
  v83 = std::string::insert(&v299, 0, "catId=");
  v84 = *&v83->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v83->__r_.__value_.__l + 2);
  *v289 = v84;
  v83->__r_.__value_.__l.__size_ = 0;
  v83->__r_.__value_.__r.__words[2] = 0;
  v83->__r_.__value_.__r.__words[0] = 0;
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

LABEL_494:
  YAML::Node::operator[]<char [14]>(v274, "catParameters", __p);
  v85 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v85)
    {
      goto LABEL_605;
    }
  }

  else if (v85)
  {
    goto LABEL_605;
  }

  YAML::Node::operator[]<char [14]>(v274, "catParameters", __p);
  if ((__p[0] & 1) == 0)
  {
    v240 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v240, &v291);
  }

  v87 = v282 && (v86 = **v282, *v86 == 1) && *(v86 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v87)
    {
LABEL_514:
      YAML::Node::operator[]<char [14]>(v274, "catParameters", &v291);
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v89 = v293;
        v88 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v89;
          v290 = v88;
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
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
        v94 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v95 = *__p;
          v96 = *&__p[8];
          v271 = *&__p[16];
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v94);
        }

        else
        {
          v95 = *__p;
          v96 = *&__p[8];
          v271 = *&__p[16];
        }
      }

      else
      {
        v96 = 0;
        v271 = 0;
        v94 = 0;
        v95 = 0;
      }

      v97 = 0;
      v98 = v94;
      while (1)
      {
        if (*v289 == v95)
        {
          v99 = v96;
          v100 = &v289[8];
          if (v95 != 1)
          {
            if (v95 != 2)
            {
              goto LABEL_575;
            }

            v99 = v271;
            v100 = &v289[16];
          }

          if (*v100 == v99)
          {
LABEL_575:
            if (v94)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v94);
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
              v116 = v291.__r_.__value_.__l.__size_;
              goto LABEL_604;
            }

            goto LABEL_605;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v101 = *(this + 5);
        if (!v101)
        {
          break;
        }

        v102 = *(this + 8);
        v103 = *v101;
        if (v102 < *v101)
        {
          *(this + 8) = v102 + 1;
          v104 = *&v101[2 * v102 + 2];
          if (!a3)
          {
            goto LABEL_562;
          }

          goto LABEL_542;
        }

        if (v103 == *(this + 9))
        {
          goto LABEL_540;
        }

LABEL_541:
        *v101 = v103 + 1;
        v104 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 3));
        v105 = *(this + 8);
        v106 = *(this + 5) + 8 * v105;
        *(this + 8) = v105 + 1;
        *(v106 + 8) = v104;
        if (!a3)
        {
          goto LABEL_562;
        }

LABEL_542:
        std::to_string(&v276, v97);
        v107 = std::string::insert(&v276, 0, "catParameters[");
        v108 = *&v107->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v108;
        v107->__r_.__value_.__l.__size_ = 0;
        v107->__r_.__value_.__r.__words[2] = 0;
        v107->__r_.__value_.__r.__words[0] = 0;
        v109 = std::string::append(&v277, "]=");
        v110 = *&v109->__r_.__value_.__l.__data_;
        v278.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
        *&v278.__r_.__value_.__l.__data_ = v110;
        v109->__r_.__value_.__l.__size_ = 0;
        v109->__r_.__value_.__r.__words[2] = 0;
        v109->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v224 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v224, &v299);
        }

        if (v282)
        {
          v111 = *(**v282 + 8) + 1;
        }

        else
        {
          v111 = 0;
        }

        std::to_string(&v275, v111);
        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v112 = &v275;
        }

        else
        {
          v112 = v275.__r_.__value_.__r.__words[0];
        }

        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v113 = HIBYTE(v275.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v113 = v275.__r_.__value_.__l.__size_;
        }

        v114 = std::string::append(&v278, v112, v113);
        v115 = *&v114->__r_.__value_.__l.__data_;
        v279.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
        *&v279.__r_.__value_.__l.__data_ = v115;
        v114->__r_.__value_.__l.__size_ = 0;
        v114->__r_.__value_.__r.__words[2] = 0;
        v114->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, &v279);
        if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v279.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v278.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

LABEL_562:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v104, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v94 = v98;
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

        ++v97;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v103 = *(this + 9);
LABEL_540:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v103 + 1);
      v101 = *(this + 5);
      v103 = *v101;
      goto LABEL_541;
    }
  }

  else if (v87)
  {
    goto LABEL_514;
  }

  v90 = *(this + 5);
  if (!v90)
  {
    v92 = *(this + 9);
LABEL_585:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v92 + 1);
    v90 = *(this + 5);
    v92 = *v90;
    goto LABEL_586;
  }

  v91 = *(this + 8);
  v92 = *v90;
  if (v91 < *v90)
  {
    *(this + 8) = v91 + 1;
    v93 = *&v90[2 * v91 + 2];
    goto LABEL_587;
  }

  if (v92 == *(this + 9))
  {
    goto LABEL_585;
  }

LABEL_586:
  *v90 = v92 + 1;
  v93 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 3));
  v117 = *(this + 8);
  v118 = *(this + 5) + 8 * v117;
  *(this + 8) = v117 + 1;
  *(v118 + 8) = v93;
LABEL_587:
  if (a3)
  {
    YAML::Node::operator[]<char [14]>(v274, "catParameters", __p);
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
      v119 = *(**v282 + 8) + 1;
    }

    else
    {
      v119 = 0;
    }

    std::to_string(&v299, v119);
    v120 = std::string::insert(&v299, 0, "catParameters[0]=");
    v121 = *&v120->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v120->__r_.__value_.__l + 2);
    *v289 = v121;
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
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

  YAML::Node::operator[]<char [14]>(v274, "catParameters", __p);
  siri::intelligence::ParseIntelligence_KeyValueParameter(v93, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v116 = *&__p[8];
LABEL_604:
    operator delete(v116);
  }

LABEL_605:
  YAML::Node::operator[]<char [17]>(__p, v274, "visualParameters");
  v122 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v122)
    {
      goto LABEL_716;
    }
  }

  else if (v122)
  {
    goto LABEL_716;
  }

  YAML::Node::operator[]<char [17]>(__p, v274, "visualParameters");
  if ((__p[0] & 1) == 0)
  {
    v241 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v241, &v291);
  }

  v124 = v282 && (v123 = **v282, *v123 == 1) && *(v123 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v124)
    {
LABEL_625:
      YAML::Node::operator[]<char [17]>(&v291, v274, "visualParameters");
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v126 = v293;
        v125 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v126;
          v290 = v125;
          atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v125);
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
        v131 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v132 = *__p;
          v133 = *&__p[8];
          v272 = *&__p[16];
          atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v131);
        }

        else
        {
          v132 = *__p;
          v133 = *&__p[8];
          v272 = *&__p[16];
        }
      }

      else
      {
        v133 = 0;
        v272 = 0;
        v131 = 0;
        v132 = 0;
      }

      v134 = 0;
      v135 = v131;
      while (1)
      {
        if (*v289 == v132)
        {
          v136 = v133;
          v137 = &v289[8];
          if (v132 != 1)
          {
            if (v132 != 2)
            {
              goto LABEL_686;
            }

            v136 = v272;
            v137 = &v289[16];
          }

          if (*v137 == v136)
          {
LABEL_686:
            if (v131)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v131);
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
              v153 = v291.__r_.__value_.__l.__size_;
              goto LABEL_715;
            }

            goto LABEL_716;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v138 = *(this + 14);
        if (!v138)
        {
          break;
        }

        v139 = *(this + 26);
        v140 = *v138;
        if (v139 < *v138)
        {
          *(this + 26) = v139 + 1;
          v141 = *&v138[2 * v139 + 2];
          if (!a3)
          {
            goto LABEL_673;
          }

          goto LABEL_653;
        }

        if (v140 == *(this + 27))
        {
          goto LABEL_651;
        }

LABEL_652:
        *v138 = v140 + 1;
        v141 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 12));
        v142 = *(this + 26);
        v143 = *(this + 14) + 8 * v142;
        *(this + 26) = v142 + 1;
        *(v143 + 8) = v141;
        if (!a3)
        {
          goto LABEL_673;
        }

LABEL_653:
        std::to_string(&v276, v134);
        v144 = std::string::insert(&v276, 0, "visualParameters[");
        v145 = *&v144->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v145;
        v144->__r_.__value_.__l.__size_ = 0;
        v144->__r_.__value_.__r.__words[2] = 0;
        v144->__r_.__value_.__r.__words[0] = 0;
        v146 = std::string::append(&v277, "]=");
        v147 = *&v146->__r_.__value_.__l.__data_;
        v278.__r_.__value_.__r.__words[2] = v146->__r_.__value_.__r.__words[2];
        *&v278.__r_.__value_.__l.__data_ = v147;
        v146->__r_.__value_.__l.__size_ = 0;
        v146->__r_.__value_.__r.__words[2] = 0;
        v146->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v225 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v225, &v299);
        }

        if (v282)
        {
          v148 = *(**v282 + 8) + 1;
        }

        else
        {
          v148 = 0;
        }

        std::to_string(&v275, v148);
        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v149 = &v275;
        }

        else
        {
          v149 = v275.__r_.__value_.__r.__words[0];
        }

        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v150 = HIBYTE(v275.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v150 = v275.__r_.__value_.__l.__size_;
        }

        v151 = std::string::append(&v278, v149, v150);
        v152 = *&v151->__r_.__value_.__l.__data_;
        v279.__r_.__value_.__r.__words[2] = v151->__r_.__value_.__r.__words[2];
        *&v279.__r_.__value_.__l.__data_ = v152;
        v151->__r_.__value_.__l.__size_ = 0;
        v151->__r_.__value_.__r.__words[2] = 0;
        v151->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, &v279);
        if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v279.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v278.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

LABEL_673:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v141, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v131 = v135;
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

        ++v134;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v140 = *(this + 27);
LABEL_651:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v140 + 1);
      v138 = *(this + 14);
      v140 = *v138;
      goto LABEL_652;
    }
  }

  else if (v124)
  {
    goto LABEL_625;
  }

  v127 = *(this + 14);
  if (!v127)
  {
    v129 = *(this + 27);
LABEL_696:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v129 + 1);
    v127 = *(this + 14);
    v129 = *v127;
    goto LABEL_697;
  }

  v128 = *(this + 26);
  v129 = *v127;
  if (v128 < *v127)
  {
    *(this + 26) = v128 + 1;
    v130 = *&v127[2 * v128 + 2];
    goto LABEL_698;
  }

  if (v129 == *(this + 27))
  {
    goto LABEL_696;
  }

LABEL_697:
  *v127 = v129 + 1;
  v130 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 12));
  v154 = *(this + 26);
  v155 = *(this + 14) + 8 * v154;
  *(this + 26) = v154 + 1;
  *(v155 + 8) = v130;
LABEL_698:
  if (a3)
  {
    YAML::Node::operator[]<char [17]>(__p, v274, "visualParameters");
    if ((__p[0] & 1) == 0)
    {
      v268 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
      }

      else
      {
        v291 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v268, &v291);
    }

    if (v282)
    {
      v156 = *(**v282 + 8) + 1;
    }

    else
    {
      v156 = 0;
    }

    std::to_string(&v299, v156);
    v157 = std::string::insert(&v299, 0, "visualParameters[0]=");
    v158 = *&v157->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v157->__r_.__value_.__l + 2);
    *v289 = v158;
    v157->__r_.__value_.__l.__size_ = 0;
    v157->__r_.__value_.__r.__words[2] = 0;
    v157->__r_.__value_.__r.__words[0] = 0;
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

  YAML::Node::operator[]<char [17]>(__p, v274, "visualParameters");
  siri::intelligence::ParseIntelligence_KeyValueParameter(v130, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v153 = *&__p[8];
LABEL_715:
    operator delete(v153);
  }

LABEL_716:
  YAML::Node::operator[]<char [10]>(v274, "patternId", __p);
  v159 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v159)
    {
      goto LABEL_748;
    }
  }

  else if (v159)
  {
    goto LABEL_748;
  }

  YAML::Node::operator[]<char [10]>(v274, "patternId", __p);
  if ((__p[0] & 1) == 0)
  {
    v242 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
    }

    else
    {
      v291 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v242, &v291);
  }

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x400u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 25, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_748;
    }
  }

  else if (!a3)
  {
    goto LABEL_748;
  }

  YAML::Node::operator[]<char [10]>(v274, "patternId", __p);
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
    v160 = *(**v282 + 8) + 1;
  }

  else
  {
    v160 = 0;
  }

  std::to_string(&v299, v160);
  v161 = std::string::insert(&v299, 0, "patternId=");
  v162 = *&v161->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v161->__r_.__value_.__l + 2);
  *v289 = v162;
  v161->__r_.__value_.__l.__size_ = 0;
  v161->__r_.__value_.__r.__words[2] = 0;
  v161->__r_.__value_.__r.__words[0] = 0;
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

LABEL_748:
  YAML::Node::operator[]<char [18]>(__p, v274, "patternParameters");
  v163 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v163)
    {
      goto LABEL_859;
    }
  }

  else if (v163)
  {
    goto LABEL_859;
  }

  YAML::Node::operator[]<char [18]>(__p, v274, "patternParameters");
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

  v165 = v282 && (v164 = **v282, *v164 == 1) && *(v164 + 16) == 3;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v165)
    {
LABEL_768:
      YAML::Node::operator[]<char [18]>(&v291, v274, "patternParameters");
      if ((v291.__r_.__value_.__s.__data_[0] & 1) != 0 && v295)
      {
        YAML::detail::node_data::begin(**v295, __p);
        v167 = v293;
        v166 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          *v289 = *__p;
          *&v289[16] = *&__p[16];
          *&v289[32] = v167;
          v290 = v166;
          atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v166);
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
        v172 = v294;
        if (v294)
        {
          atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
          v173 = *__p;
          v174 = *&__p[8];
          v273 = *&__p[16];
          atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v172);
        }

        else
        {
          v173 = *__p;
          v174 = *&__p[8];
          v273 = *&__p[16];
        }
      }

      else
      {
        v174 = 0;
        v273 = 0;
        v172 = 0;
        v173 = 0;
      }

      v175 = 0;
      v176 = v172;
      while (1)
      {
        if (*v289 == v173)
        {
          v177 = v174;
          v178 = &v289[8];
          if (v173 != 1)
          {
            if (v173 != 2)
            {
              goto LABEL_829;
            }

            v177 = v273;
            v178 = &v289[16];
          }

          if (*v178 == v177)
          {
LABEL_829:
            if (v172)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v172);
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
              v194 = v291.__r_.__value_.__l.__size_;
              goto LABEL_858;
            }

            goto LABEL_859;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v289, __p);
        v179 = *(this + 8);
        if (!v179)
        {
          break;
        }

        v180 = *(this + 14);
        v181 = *v179;
        if (v180 < *v179)
        {
          *(this + 14) = v180 + 1;
          v182 = *&v179[2 * v180 + 2];
          if (!a3)
          {
            goto LABEL_816;
          }

          goto LABEL_796;
        }

        if (v181 == *(this + 15))
        {
          goto LABEL_794;
        }

LABEL_795:
        *v179 = v181 + 1;
        v182 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 6));
        v183 = *(this + 14);
        v184 = *(this + 8) + 8 * v183;
        *(this + 14) = v183 + 1;
        *(v184 + 8) = v182;
        if (!a3)
        {
          goto LABEL_816;
        }

LABEL_796:
        std::to_string(&v276, v175);
        v185 = std::string::insert(&v276, 0, "patternParameters[");
        v186 = *&v185->__r_.__value_.__l.__data_;
        v277.__r_.__value_.__r.__words[2] = v185->__r_.__value_.__r.__words[2];
        *&v277.__r_.__value_.__l.__data_ = v186;
        v185->__r_.__value_.__l.__size_ = 0;
        v185->__r_.__value_.__r.__words[2] = 0;
        v185->__r_.__value_.__r.__words[0] = 0;
        v187 = std::string::append(&v277, "]=");
        v188 = *&v187->__r_.__value_.__l.__data_;
        v278.__r_.__value_.__r.__words[2] = v187->__r_.__value_.__r.__words[2];
        *&v278.__r_.__value_.__l.__data_ = v188;
        v187->__r_.__value_.__l.__size_ = 0;
        v187->__r_.__value_.__r.__words[2] = 0;
        v187->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v226 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v299, *&__p[8], *&__p[16]);
          }

          else
          {
            v299 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v226, &v299);
        }

        if (v282)
        {
          v189 = *(**v282 + 8) + 1;
        }

        else
        {
          v189 = 0;
        }

        std::to_string(&v275, v189);
        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v190 = &v275;
        }

        else
        {
          v190 = v275.__r_.__value_.__r.__words[0];
        }

        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v191 = HIBYTE(v275.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v191 = v275.__r_.__value_.__l.__size_;
        }

        v192 = std::string::append(&v278, v190, v191);
        v193 = *&v192->__r_.__value_.__l.__data_;
        v279.__r_.__value_.__r.__words[2] = v192->__r_.__value_.__r.__words[2];
        *&v279.__r_.__value_.__l.__data_ = v193;
        v192->__r_.__value_.__l.__size_ = 0;
        v192->__r_.__value_.__r.__words[2] = 0;
        v192->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v296, &v279);
        if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v279.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v278.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v276.__r_.__value_.__l.__data_);
        }

LABEL_816:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v182, __p, a3);
        if (v288)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v288);
        }

        v172 = v176;
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

        ++v175;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v289);
      }

      v181 = *(this + 15);
LABEL_794:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v181 + 1);
      v179 = *(this + 8);
      v181 = *v179;
      goto LABEL_795;
    }
  }

  else if (v165)
  {
    goto LABEL_768;
  }

  v168 = *(this + 8);
  if (!v168)
  {
    v170 = *(this + 15);
LABEL_839:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v170 + 1);
    v168 = *(this + 8);
    v170 = *v168;
    goto LABEL_840;
  }

  v169 = *(this + 14);
  v170 = *v168;
  if (v169 < *v168)
  {
    *(this + 14) = v169 + 1;
    v171 = *&v168[2 * v169 + 2];
    goto LABEL_841;
  }

  if (v170 == *(this + 15))
  {
    goto LABEL_839;
  }

LABEL_840:
  *v168 = v170 + 1;
  v171 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 6));
  v195 = *(this + 14);
  v196 = *(this + 8) + 8 * v195;
  *(this + 14) = v195 + 1;
  *(v196 + 8) = v171;
LABEL_841:
  if (a3)
  {
    YAML::Node::operator[]<char [18]>(__p, v274, "patternParameters");
    if ((__p[0] & 1) == 0)
    {
      v269 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v291, *&__p[8], *&__p[16]);
      }

      else
      {
        v291 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v269, &v291);
    }

    if (v282)
    {
      v197 = *(**v282 + 8) + 1;
    }

    else
    {
      v197 = 0;
    }

    std::to_string(&v299, v197);
    v198 = std::string::insert(&v299, 0, "patternParameters[0]=");
    v199 = *&v198->__r_.__value_.__l.__data_;
    *&v289[16] = *(&v198->__r_.__value_.__l + 2);
    *v289 = v199;
    v198->__r_.__value_.__l.__size_ = 0;
    v198->__r_.__value_.__r.__words[2] = 0;
    v198->__r_.__value_.__r.__words[0] = 0;
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

  YAML::Node::operator[]<char [18]>(__p, v274, "patternParameters");
  siri::intelligence::ParseIntelligence_KeyValueParameter(v171, __p, a3);
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v194 = *&__p[8];
LABEL_858:
    operator delete(v194);
  }

LABEL_859:
  YAML::Node::operator[]<char [9]>(__p, v274, "childIds");
  v200 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v200)
    {
      goto LABEL_891;
    }
  }

  else if (v200)
  {
    goto LABEL_891;
  }

  YAML::Node::operator[]<char [9]>(__p, v274, "childIds");
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
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 16, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_891;
    }
  }

  else if (!a3)
  {
    goto LABEL_891;
  }

  YAML::Node::operator[]<char [9]>(__p, v274, "childIds");
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
    v201 = *(**v282 + 8) + 1;
  }

  else
  {
    v201 = 0;
  }

  std::to_string(&v299, v201);
  v202 = std::string::insert(&v299, 0, "childIds=");
  v203 = *&v202->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v202->__r_.__value_.__l + 2);
  *v289 = v203;
  v202->__r_.__value_.__l.__size_ = 0;
  v202->__r_.__value_.__r.__words[2] = 0;
  v202->__r_.__value_.__r.__words[0] = 0;
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

LABEL_891:
  YAML::Node::operator[]<char [10]>(v274, "condition", __p);
  v204 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v204)
    {
      goto LABEL_923;
    }
  }

  else if (v204)
  {
    goto LABEL_923;
  }

  YAML::Node::operator[]<char [10]>(v274, "condition", __p);
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
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 17, &google::protobuf::internal::fixed_address_empty_string, v289);
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
      goto LABEL_923;
    }
  }

  else if (!a3)
  {
    goto LABEL_923;
  }

  YAML::Node::operator[]<char [10]>(v274, "condition", __p);
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
    v205 = *(**v282 + 8) + 1;
  }

  else
  {
    v205 = 0;
  }

  std::to_string(&v299, v205);
  v206 = std::string::insert(&v299, 0, "condition=");
  v207 = *&v206->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v206->__r_.__value_.__l + 2);
  *v289 = v207;
  v206->__r_.__value_.__l.__size_ = 0;
  v206->__r_.__value_.__r.__words[2] = 0;
  v206->__r_.__value_.__r.__words[0] = 0;
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

LABEL_923:
  YAML::Node::operator[]<char [8]>(v274, "ruleset", __p);
  v208 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v208)
    {
      goto LABEL_955;
    }
  }

  else if (v208)
  {
    goto LABEL_955;
  }

  YAML::Node::operator[]<char [8]>(v274, "ruleset", __p);
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
  *(this + 4) |= 8u;
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
      goto LABEL_955;
    }
  }

  else if (!a3)
  {
    goto LABEL_955;
  }

  YAML::Node::operator[]<char [8]>(v274, "ruleset", __p);
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
    v209 = *(**v282 + 8) + 1;
  }

  else
  {
    v209 = 0;
  }

  std::to_string(&v299, v209);
  v210 = std::string::insert(&v299, 0, "ruleset=");
  v211 = *&v210->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v210->__r_.__value_.__l + 2);
  *v289 = v211;
  v210->__r_.__value_.__l.__size_ = 0;
  v210->__r_.__value_.__r.__words[2] = 0;
  v210->__r_.__value_.__r.__words[0] = 0;
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

LABEL_955:
  YAML::Node::operator[]<char [11]>(v274, "inputGroup", __p);
  v212 = __p[0] != 1 || v282 && (***v282 & 1) == 0;
  if (v281)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v281);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v212)
    {
      goto LABEL_987;
    }
  }

  else if (v212)
  {
    goto LABEL_987;
  }

  YAML::Node::operator[]<char [11]>(v274, "inputGroup", __p);
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

  v291.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v291, v289);
  *(this + 4) |= 0x20u;
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
      goto LABEL_987;
    }
  }

  else if (!a3)
  {
    goto LABEL_987;
  }

  YAML::Node::operator[]<char [11]>(v274, "inputGroup", __p);
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
    v213 = *(**v282 + 8) + 1;
  }

  else
  {
    v213 = 0;
  }

  std::to_string(&v299, v213);
  v214 = std::string::insert(&v299, 0, "inputGroup=");
  v215 = *&v214->__r_.__value_.__l.__data_;
  *&v289[16] = *(&v214->__r_.__value_.__l + 2);
  *v289 = v215;
  v214->__r_.__value_.__l.__size_ = 0;
  v214->__r_.__value_.__r.__words[2] = 0;
  v214->__r_.__value_.__r.__words[0] = 0;
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

LABEL_987:
  if (v296 != v297)
  {
    std::string::basic_string[abi:ne200100]<0>(&v291, ";");
    siri::intelligence::StringJoin(&v296, &v291, __p);
    v218 = *(this + 1);
    v217 = (this + 8);
    v216 = v218;
    if (v218)
    {
      v219 = v216 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v217);
      v219 = v221;
    }

    if (*(v219 + 23) < 0)
    {
      operator delete(*v219);
    }

    v220 = *__p;
    *(v219 + 16) = *&__p[16];
    *v219 = v220;
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

void sub_254DBED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
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

void YAML::Node::operator[]<char [18]>(uint64_t a1, YAML::Node *this, char *a3)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *(this + 1), *(this + 2));
    }

    else
    {
      v19 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v19);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  v7 = *(this + 5);
  v17 = *(this + 4);
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v10;
        *(a1 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a1 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v10;
        *(a1 + 40) = 0;
        *(a1 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  v11 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, a3, v11);
  std::stringbuf::str();
  __p[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v21 = v12;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v25);
  *a1 = 0;
  v13 = (a1 + 8);
  if (SHIBYTE(v16) < 0)
  {
    std::string::__init_copy_ctor_external(v13, v15[0], v15[1]);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    operator delete(v15[0]);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *v15;
    *(a1 + 24) = v16;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_254DBF784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ParseIntelligence_BehaviorResponse(siri::intelligence *this, protobuf::Intelligence_BehaviorResponse *a2, const YAML::Node *a3)
{
  v221 = 0;
  v222 = 0;
  v223 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v240, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v240, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v221, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v240.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v217 = a2;
  v9 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
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

  YAML::Node::operator[]<char [3]>(v217, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 9, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
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

  YAML::Node::operator[]<char [3]>(v217, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    v194 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v194, &v240);
  }

  if (v231)
  {
    v10 = *(**v231 + 8) + 1;
  }

  else
  {
    v10 = 0;
  }

  std::to_string(v238, v10);
  v11 = std::string::insert(v238, 0, "id=");
  v12 = *&v11->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v11->__r_.__value_.__l + 2);
  *v218 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_38:
  YAML::Node::operator[]<char [8]>(v217, "nextIds", __p);
  v13 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v13)
  {
    goto LABEL_142;
  }

  YAML::Node::operator[]<char [8]>(v217, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v182 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v182, &v240);
  }

  v15 = v231 && (v14 = **v231, *v14 == 1) && *(v14 + 16) == 3;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v15)
    {
LABEL_57:
      YAML::Node::operator[]<char [8]>(v217, "nextIds", &v240);
      if ((v240.__r_.__value_.__s.__data_[0] & 1) != 0 && v244)
      {
        YAML::detail::node_data::begin(**v244, __p);
        v17 = v242;
        v16 = v243;
        if (v243)
        {
          atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          *v218 = *__p;
          *&v218[16] = *&__p[16];
          *&v218[32] = v17;
          v219 = v16;
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          *v218 = *__p;
          *&v218[16] = *&__p[16];
          *&v218[32] = v242;
          v219 = 0;
        }
      }

      else
      {
        *v218 = 0;
        memset(&v218[8], 0, 32);
        v219 = 0;
      }

      if (v240.__r_.__value_.__s.__data_[0] == 1 && v244)
      {
        YAML::detail::node_data::end(**v244, __p);
        v18 = v243;
        if (v243)
        {
          atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *__p;
          v20 = *&__p[8];
          v21 = *&__p[16];
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          v214 = v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v214 = 0;
          v19 = *__p;
          v20 = *&__p[8];
          v21 = *&__p[16];
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v214 = 0;
        v19 = 0;
      }

      for (i = 0; ; ++i)
      {
        if (*v218 == v19)
        {
          v23 = v20;
          v24 = &v218[8];
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              goto LABEL_120;
            }

            v23 = v21;
            v24 = &v218[16];
          }

          if (*v24 == v23)
          {
LABEL_120:
            if (v214)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v214);
            }

            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (v243)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v243);
            }

            if (v241 < 0)
            {
              size = v240.__r_.__value_.__l.__size_;
              goto LABEL_141;
            }

            goto LABEL_142;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v218, __p);
        if ((__p[0] & 1) == 0)
        {
          v177 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v238, *&__p[8], *&__p[16]);
          }

          else
          {
            *v238 = *&__p[8];
            *&v238[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v177, v238);
        }

        *v238 = __p;
        YAML::as_if<std::string,void>::operator()(v238, &v246);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 48, &v246);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_107;
          }
        }

        else if (!a3)
        {
          goto LABEL_107;
        }

        std::to_string(&v227, i);
        v25 = std::string::insert(&v227, 0, "nextIds[");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v228.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v228.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v228, "]=");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v245.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v245.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v178 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v238, *&__p[8], *&__p[16]);
          }

          else
          {
            *v238 = *&__p[8];
            *&v238[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v178, v238);
        }

        if (v231)
        {
          v29 = *(**v231 + 8) + 1;
        }

        else
        {
          v29 = 0;
        }

        std::to_string(&v226, v29);
        if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v226;
        }

        else
        {
          v30 = v226.__r_.__value_.__r.__words[0];
        }

        if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v226.__r_.__value_.__l.__size_;
        }

        v32 = std::string::append(&v245, v30, v31);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v221, &v246);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v245.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

LABEL_107:
        if (v237)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v237);
        }

        if (v236 < 0)
        {
          operator delete(v235);
        }

        if (v234)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v234);
        }

        if (v233 < 0)
        {
          operator delete(v232);
        }

        if (v230)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v230);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v218);
      }
    }
  }

  else if (v15)
  {
    goto LABEL_57;
  }

  YAML::Node::operator[]<char [8]>(v217, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v195 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v195, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 48, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_142;
    }
  }

  else if (!a3)
  {
    goto LABEL_142;
  }

  YAML::Node::operator[]<char [8]>(v217, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v210 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v210, &v240);
  }

  if (v231)
  {
    v35 = *(**v231 + 8) + 1;
  }

  else
  {
    v35 = 0;
  }

  std::to_string(v238, v35);
  v36 = std::string::insert(v238, 0, "nextIds[0]=");
  v37 = *&v36->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v36->__r_.__value_.__l + 2);
  *v218 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_141:
    operator delete(size);
  }

LABEL_142:
  YAML::Node::operator[]<char [14]>(v217, "selectionMode", __p);
  v38 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v38)
    {
      goto LABEL_174;
    }
  }

  else if (v38)
  {
    goto LABEL_174;
  }

  YAML::Node::operator[]<char [14]>(v217, "selectionMode", __p);
  if ((__p[0] & 1) == 0)
  {
    v183 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v183, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 0x40u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 15, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_174;
    }
  }

  else if (!a3)
  {
    goto LABEL_174;
  }

  YAML::Node::operator[]<char [14]>(v217, "selectionMode", __p);
  if ((__p[0] & 1) == 0)
  {
    v196 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v196, &v240);
  }

  if (v231)
  {
    v39 = *(**v231 + 8) + 1;
  }

  else
  {
    v39 = 0;
  }

  std::to_string(v238, v39);
  v40 = std::string::insert(v238, 0, "selectionMode=");
  v41 = *&v40->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v40->__r_.__value_.__l + 2);
  *v218 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_174:
  YAML::Node::operator[]<char [12]>(v217, "conditionId", __p);
  v42 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v42)
    {
      goto LABEL_206;
    }
  }

  else if (v42)
  {
    goto LABEL_206;
  }

  YAML::Node::operator[]<char [12]>(v217, "conditionId", __p);
  if ((__p[0] & 1) == 0)
  {
    v184 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v184, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 0x100u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 17, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_206;
    }
  }

  else if (!a3)
  {
    goto LABEL_206;
  }

  YAML::Node::operator[]<char [12]>(v217, "conditionId", __p);
  if ((__p[0] & 1) == 0)
  {
    v197 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v197, &v240);
  }

  if (v231)
  {
    v43 = *(**v231 + 8) + 1;
  }

  else
  {
    v43 = 0;
  }

  std::to_string(v238, v43);
  v44 = std::string::insert(v238, 0, "conditionId=");
  v45 = *&v44->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v44->__r_.__value_.__l + 2);
  *v218 = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_206:
  YAML::Node::operator[]<char [9]>(__p, v217, "priority");
  v46 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v46)
    {
      goto LABEL_238;
    }
  }

  else if (v46)
  {
    goto LABEL_238;
  }

  YAML::Node::operator[]<char [9]>(__p, v217, "priority");
  if ((__p[0] & 1) == 0)
  {
    v185 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v185, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 0x10u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 13, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_238;
    }
  }

  else if (!a3)
  {
    goto LABEL_238;
  }

  YAML::Node::operator[]<char [9]>(__p, v217, "priority");
  if ((__p[0] & 1) == 0)
  {
    v198 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v198, &v240);
  }

  if (v231)
  {
    v47 = *(**v231 + 8) + 1;
  }

  else
  {
    v47 = 0;
  }

  std::to_string(v238, v47);
  v48 = std::string::insert(v238, 0, "priority=");
  v49 = *&v48->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v48->__r_.__value_.__l + 2);
  *v218 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_238:
  YAML::Node::operator[]<char [7]>(v217, "repeat", __p);
  v50 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v50)
    {
      goto LABEL_270;
    }
  }

  else if (v50)
  {
    goto LABEL_270;
  }

  YAML::Node::operator[]<char [7]>(v217, "repeat", __p);
  if ((__p[0] & 1) == 0)
  {
    v186 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v186, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  v51 = siri::intelligence::StringToBool(v218, 0);
  *(this + 4) |= 0x800u;
  *(this + 160) = v51;
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
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

  YAML::Node::operator[]<char [7]>(v217, "repeat", __p);
  if ((__p[0] & 1) == 0)
  {
    v199 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v199, &v240);
  }

  if (v231)
  {
    v52 = *(**v231 + 8) + 1;
  }

  else
  {
    v52 = 0;
  }

  std::to_string(v238, v52);
  v53 = std::string::insert(v238, 0, "repeat=");
  v54 = *&v53->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v53->__r_.__value_.__l + 2);
  *v218 = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_270:
  YAML::Node::operator[]<char [13]>(v217, "inputGroupId", __p);
  v55 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v55)
    {
      goto LABEL_302;
    }
  }

  else if (v55)
  {
    goto LABEL_302;
  }

  YAML::Node::operator[]<char [13]>(v217, "inputGroupId", __p);
  if ((__p[0] & 1) == 0)
  {
    v187 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v187, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 0x200u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 18, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_302;
    }
  }

  else if (!a3)
  {
    goto LABEL_302;
  }

  YAML::Node::operator[]<char [13]>(v217, "inputGroupId", __p);
  if ((__p[0] & 1) == 0)
  {
    v200 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v200, &v240);
  }

  if (v231)
  {
    v56 = *(**v231 + 8) + 1;
  }

  else
  {
    v56 = 0;
  }

  std::to_string(v238, v56);
  v57 = std::string::insert(v238, 0, "inputGroupId=");
  v58 = *&v57->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v57->__r_.__value_.__l + 2);
  *v218 = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_302:
  YAML::Node::operator[]<char [5]>(v217, "name", __p);
  v59 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v59)
    {
      goto LABEL_334;
    }
  }

  else if (v59)
  {
    goto LABEL_334;
  }

  YAML::Node::operator[]<char [5]>(v217, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v188 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v188, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 0x80u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 16, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_334;
    }
  }

  else if (!a3)
  {
    goto LABEL_334;
  }

  YAML::Node::operator[]<char [5]>(v217, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v201 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v201, &v240);
  }

  if (v231)
  {
    v60 = *(**v231 + 8) + 1;
  }

  else
  {
    v60 = 0;
  }

  std::to_string(v238, v60);
  v61 = std::string::insert(v238, 0, "name=");
  v62 = *&v61->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v61->__r_.__value_.__l + 2);
  *v218 = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_334:
  YAML::Node::operator[]<char [11]>(v217, "parameters", __p);
  v63 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v63)
    {
      goto LABEL_445;
    }
  }

  else if (v63)
  {
    goto LABEL_445;
  }

  YAML::Node::operator[]<char [11]>(v217, "parameters", __p);
  if ((__p[0] & 1) == 0)
  {
    v189 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v189, &v240);
  }

  v65 = v231 && (v64 = **v231, *v64 == 1) && *(v64 + 16) == 3;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v65)
    {
LABEL_354:
      YAML::Node::operator[]<char [11]>(v217, "parameters", &v240);
      if ((v240.__r_.__value_.__s.__data_[0] & 1) != 0 && v244)
      {
        YAML::detail::node_data::begin(**v244, __p);
        v67 = v242;
        v66 = v243;
        if (v243)
        {
          atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          *v218 = *__p;
          *&v218[16] = *&__p[16];
          *&v218[32] = v67;
          v219 = v66;
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        else
        {
          *v218 = *__p;
          *&v218[16] = *&__p[16];
          *&v218[32] = v242;
          v219 = 0;
        }
      }

      else
      {
        *v218 = 0;
        memset(&v218[8], 0, 32);
        v219 = 0;
      }

      if (v240.__r_.__value_.__s.__data_[0] == 1 && v244)
      {
        YAML::detail::node_data::end(**v244, __p);
        v72 = v243;
        if (v243)
        {
          atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          v73 = *__p;
          v74 = *&__p[8];
          v215 = *&__p[16];
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        else
        {
          v73 = *__p;
          v74 = *&__p[8];
          v215 = *&__p[16];
        }
      }

      else
      {
        v74 = 0;
        v215 = 0;
        v72 = 0;
        v73 = 0;
      }

      v75 = 0;
      v76 = v72;
      while (1)
      {
        if (*v218 == v73)
        {
          v77 = v74;
          v78 = &v218[8];
          if (v73 != 1)
          {
            if (v73 != 2)
            {
              goto LABEL_415;
            }

            v77 = v215;
            v78 = &v218[16];
          }

          if (*v78 == v77)
          {
LABEL_415:
            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v72);
            }

            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (v243)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v243);
            }

            if (v241 < 0)
            {
              v94 = v240.__r_.__value_.__l.__size_;
              goto LABEL_444;
            }

            goto LABEL_445;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v218, __p);
        v79 = *(this + 5);
        if (!v79)
        {
          break;
        }

        v80 = *(this + 8);
        v81 = *v79;
        if (v80 < *v79)
        {
          *(this + 8) = v80 + 1;
          v82 = *&v79[2 * v80 + 2];
          if (!a3)
          {
            goto LABEL_402;
          }

          goto LABEL_382;
        }

        if (v81 == *(this + 9))
        {
          goto LABEL_380;
        }

LABEL_381:
        *v79 = v81 + 1;
        v82 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 3));
        v83 = *(this + 8);
        v84 = *(this + 5) + 8 * v83;
        *(this + 8) = v83 + 1;
        *(v84 + 8) = v82;
        if (!a3)
        {
          goto LABEL_402;
        }

LABEL_382:
        std::to_string(&v227, v75);
        v85 = std::string::insert(&v227, 0, "parameters[");
        v86 = *&v85->__r_.__value_.__l.__data_;
        v228.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
        *&v228.__r_.__value_.__l.__data_ = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
        v87 = std::string::append(&v228, "]=");
        v88 = *&v87->__r_.__value_.__l.__data_;
        v245.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
        *&v245.__r_.__value_.__l.__data_ = v88;
        v87->__r_.__value_.__l.__size_ = 0;
        v87->__r_.__value_.__r.__words[2] = 0;
        v87->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v179 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v238, *&__p[8], *&__p[16]);
          }

          else
          {
            *v238 = *&__p[8];
            *&v238[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v179, v238);
        }

        if (v231)
        {
          v89 = *(**v231 + 8) + 1;
        }

        else
        {
          v89 = 0;
        }

        std::to_string(&v226, v89);
        if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = &v226;
        }

        else
        {
          v90 = v226.__r_.__value_.__r.__words[0];
        }

        if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v91 = v226.__r_.__value_.__l.__size_;
        }

        v92 = std::string::append(&v245, v90, v91);
        v93 = *&v92->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v221, &v246);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v245.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

LABEL_402:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v82, __p, a3);
        if (v237)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v237);
        }

        v72 = v76;
        if (v236 < 0)
        {
          operator delete(v235);
        }

        if (v234)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v234);
        }

        if (v233 < 0)
        {
          operator delete(v232);
        }

        if (v230)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v230);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v75;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v218);
      }

      v81 = *(this + 9);
LABEL_380:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v81 + 1);
      v79 = *(this + 5);
      v81 = *v79;
      goto LABEL_381;
    }
  }

  else if (v65)
  {
    goto LABEL_354;
  }

  v68 = *(this + 5);
  if (!v68)
  {
    v70 = *(this + 9);
LABEL_425:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v70 + 1);
    v68 = *(this + 5);
    v70 = *v68;
    goto LABEL_426;
  }

  v69 = *(this + 8);
  v70 = *v68;
  if (v69 < *v68)
  {
    *(this + 8) = v69 + 1;
    v71 = *&v68[2 * v69 + 2];
    goto LABEL_427;
  }

  if (v70 == *(this + 9))
  {
    goto LABEL_425;
  }

LABEL_426:
  *v68 = v70 + 1;
  v71 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 3));
  v95 = *(this + 8);
  v96 = *(this + 5) + 8 * v95;
  *(this + 8) = v95 + 1;
  *(v96 + 8) = v71;
LABEL_427:
  if (a3)
  {
    YAML::Node::operator[]<char [11]>(v217, "parameters", __p);
    if ((__p[0] & 1) == 0)
    {
      v211 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
      }

      else
      {
        v240 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v211, &v240);
    }

    if (v231)
    {
      v97 = *(**v231 + 8) + 1;
    }

    else
    {
      v97 = 0;
    }

    std::to_string(v238, v97);
    v98 = std::string::insert(v238, 0, "parameters[0]=");
    v99 = *&v98->__r_.__value_.__l.__data_;
    *&v218[16] = *(&v98->__r_.__value_.__l + 2);
    *v218 = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
    if ((v218[23] & 0x80000000) != 0)
    {
      operator delete(*v218);
    }

    if ((v238[23] & 0x80000000) != 0)
    {
      operator delete(*v238);
    }

    if (v230)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v230);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [11]>(v217, "parameters", __p);
  siri::intelligence::ParseIntelligence_KeyValueParameter(v71, __p, a3);
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v94 = *&__p[8];
LABEL_444:
    operator delete(v94);
  }

LABEL_445:
  YAML::Node::operator[]<char [5]>(v217, "undo", __p);
  v100 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v100)
    {
      goto LABEL_638;
    }
  }

  else if (v100)
  {
    goto LABEL_638;
  }

  *(this + 4) |= 0x400u;
  v101 = *(this + 19);
  if (!v101)
  {
    v101 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Undo>(0);
    *(this + 19) = v101;
  }

  if (a3)
  {
    YAML::Node::operator[]<char [5]>(v217, "undo", __p);
    if ((__p[0] & 1) == 0)
    {
      v202 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
      }

      else
      {
        v240 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v202, &v240);
    }

    if (v231)
    {
      v102 = *(**v231 + 8) + 1;
    }

    else
    {
      v102 = 0;
    }

    std::to_string(v238, v102);
    v103 = std::string::insert(v238, 0, "undo=");
    v104 = *&v103->__r_.__value_.__l.__data_;
    *&v218[16] = *(&v103->__r_.__value_.__l + 2);
    *v218 = v104;
    v103->__r_.__value_.__l.__size_ = 0;
    v103->__r_.__value_.__r.__words[2] = 0;
    v103->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
    if ((v218[23] & 0x80000000) != 0)
    {
      operator delete(*v218);
    }

    if ((v238[23] & 0x80000000) != 0)
    {
      operator delete(*v238);
    }

    if (v230)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v230);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [5]>(v217, "undo", v218);
  memset(&v245, 0, sizeof(v245));
  if (a3)
  {
    if ((v218[0] & 1) == 0)
    {
      v203 = __cxa_allocate_exception(0x38uLL);
      if ((v218[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(__p, *&v218[8], *&v218[16]);
      }

      else
      {
        *__p = *&v218[8];
        *&__p[16] = *&v218[24];
      }

      YAML::InvalidNode::InvalidNode(v203, __p);
    }

    if (v220)
    {
      v105 = *(**v220 + 8) + 1;
    }

    else
    {
      v105 = 0;
    }

    std::to_string(v238, v105);
    v106 = std::string::insert(v238, 0, "<msg>=");
    v107 = *&v106->__r_.__value_.__l.__data_;
    v240.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v240.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v245, &v240);
    if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v240.__r_.__value_.__l.__data_);
    }

    if ((v238[23] & 0x80000000) != 0)
    {
      operator delete(*v238);
    }
  }

  YAML::Node::operator[]<char [11]>(v218, "identifier", __p);
  v108 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v108)
    {
      goto LABEL_512;
    }
  }

  else if (v108)
  {
    goto LABEL_512;
  }

  YAML::Node::operator[]<char [11]>(v218, "identifier", __p);
  if ((__p[0] & 1) == 0)
  {
    v204 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v204, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v238);
  *(v101 + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v101 + 6, &google::protobuf::internal::fixed_address_empty_string, v238);
  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_512;
    }
  }

  else if (!a3)
  {
    goto LABEL_512;
  }

  YAML::Node::operator[]<char [11]>(v218, "identifier", __p);
  if ((__p[0] & 1) == 0)
  {
    v212 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v212, &v240);
  }

  if (v231)
  {
    v109 = *(**v231 + 8) + 1;
  }

  else
  {
    v109 = 0;
  }

  std::to_string(&v246, v109);
  v110 = std::string::insert(&v246, 0, "identifier=");
  v111 = *&v110->__r_.__value_.__l.__data_;
  *&v238[16] = *(&v110->__r_.__value_.__l + 2);
  *v238 = v111;
  v110->__r_.__value_.__l.__size_ = 0;
  v110->__r_.__value_.__r.__words[2] = 0;
  v110->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v245, v238);
  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_512:
  YAML::Node::operator[]<char [9]>(__p, v218, "userData");
  v112 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v112)
    {
      goto LABEL_627;
    }
  }

  else if (v112)
  {
    goto LABEL_627;
  }

  YAML::Node::operator[]<char [9]>(__p, v218, "userData");
  if ((__p[0] & 1) == 0)
  {
    v205 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v205, &v240);
  }

  v114 = v231 && (v113 = **v231, *v113 == 1) && *(v113 + 16) == 3;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v114)
    {
LABEL_532:
      YAML::Node::operator[]<char [9]>(&v240, v218, "userData");
      if ((v240.__r_.__value_.__s.__data_[0] & 1) != 0 && v244)
      {
        YAML::detail::node_data::begin(**v244, __p);
        v116 = v242;
        v115 = v243;
        if (v243)
        {
          atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          *v238 = *__p;
          *&v238[16] = *&__p[16];
          *&v238[32] = v116;
          v239 = v115;
          atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v115);
        }

        else
        {
          *v238 = *__p;
          *&v238[16] = *&__p[16];
          *&v238[32] = v242;
          v239 = 0;
        }
      }

      else
      {
        *v238 = 0;
        memset(&v238[8], 0, 32);
        v239 = 0;
      }

      if (v240.__r_.__value_.__s.__data_[0] == 1 && v244)
      {
        YAML::detail::node_data::end(**v244, __p);
        v121 = v243;
        if (v243)
        {
          atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          v122 = *__p;
          v123 = *&__p[8];
          v216 = *&__p[16];
          atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v121);
        }

        else
        {
          v122 = *__p;
          v123 = *&__p[8];
          v216 = *&__p[16];
        }
      }

      else
      {
        v123 = 0;
        v216 = 0;
        v121 = 0;
        v122 = 0;
      }

      v124 = 0;
      v125 = v121;
      while (1)
      {
        if (*v238 == v122)
        {
          v126 = v123;
          v127 = &v238[8];
          if (v122 != 1)
          {
            if (v122 != 2)
            {
              goto LABEL_594;
            }

            v126 = v216;
            v127 = &v238[16];
          }

          if (*v127 == v126)
          {
LABEL_594:
            if (v121)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v121);
            }

            if (v239)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v239);
            }

            if (v243)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v243);
            }

            if (v241 < 0)
            {
              v143 = v240.__r_.__value_.__l.__size_;
              goto LABEL_626;
            }

            goto LABEL_627;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v238, __p);
        v128 = *(v101 + 5);
        if (!v128)
        {
          break;
        }

        v129 = *(v101 + 8);
        v130 = *v128;
        if (v129 < *v128)
        {
          *(v101 + 8) = v129 + 1;
          v131 = *&v128[2 * v129 + 2];
          if (!a3)
          {
            goto LABEL_581;
          }

          goto LABEL_561;
        }

        if (v130 == *(v101 + 9))
        {
          goto LABEL_559;
        }

LABEL_560:
        *v128 = v130 + 1;
        v131 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(v101 + 3));
        v132 = *(v101 + 8);
        v133 = *(v101 + 5) + 8 * v132;
        *(v101 + 8) = v132 + 1;
        *(v133 + 8) = v131;
        if (!a3)
        {
          goto LABEL_581;
        }

LABEL_561:
        std::to_string(&v225, v124);
        v134 = std::string::insert(&v225, 0, "userData[");
        v135 = *&v134->__r_.__value_.__l.__data_;
        v226.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
        *&v226.__r_.__value_.__l.__data_ = v135;
        v134->__r_.__value_.__l.__size_ = 0;
        v134->__r_.__value_.__r.__words[2] = 0;
        v134->__r_.__value_.__r.__words[0] = 0;
        v136 = std::string::append(&v226, "]=");
        v137 = *&v136->__r_.__value_.__l.__data_;
        v227.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
        *&v227.__r_.__value_.__l.__data_ = v137;
        v136->__r_.__value_.__l.__size_ = 0;
        v136->__r_.__value_.__r.__words[2] = 0;
        v136->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v180 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v246, *&__p[8], *&__p[16]);
          }

          else
          {
            v246 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v180, &v246);
        }

        if (v231)
        {
          v138 = *(**v231 + 8) + 1;
        }

        else
        {
          v138 = 0;
        }

        std::to_string(&v224, v138);
        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v139 = &v224;
        }

        else
        {
          v139 = v224.__r_.__value_.__r.__words[0];
        }

        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v140 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v140 = v224.__r_.__value_.__l.__size_;
        }

        v141 = std::string::append(&v227, v139, v140);
        v142 = *&v141->__r_.__value_.__l.__data_;
        v228.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
        *&v228.__r_.__value_.__l.__data_ = v142;
        v141->__r_.__value_.__l.__size_ = 0;
        v141->__r_.__value_.__r.__words[2] = 0;
        v141->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v245, &v228);
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

LABEL_581:
        siri::intelligence::ParseIntelligence_KeyValueParameter(v131, __p, a3);
        if (v237)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v237);
        }

        v121 = v125;
        if (v236 < 0)
        {
          operator delete(v235);
        }

        if (v234)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v234);
        }

        if (v233 < 0)
        {
          operator delete(v232);
        }

        if (v230)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v230);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v124;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v238);
      }

      v130 = *(v101 + 9);
LABEL_559:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v101 + 6, v130 + 1);
      v128 = *(v101 + 5);
      v130 = *v128;
      goto LABEL_560;
    }
  }

  else if (v114)
  {
    goto LABEL_532;
  }

  v117 = *(v101 + 5);
  if (!v117)
  {
    v119 = *(v101 + 9);
LABEL_604:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v101 + 6, v119 + 1);
    v117 = *(v101 + 5);
    v119 = *v117;
    goto LABEL_605;
  }

  v118 = *(v101 + 8);
  v119 = *v117;
  if (v118 < *v117)
  {
    *(v101 + 8) = v118 + 1;
    v120 = *&v117[2 * v118 + 2];
    if (!a3)
    {
      goto LABEL_622;
    }

LABEL_606:
    YAML::Node::operator[]<char [9]>(__p, v218, "userData");
    if ((__p[0] & 1) == 0)
    {
      v213 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
      }

      else
      {
        v240 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v213, &v240);
    }

    if (v231)
    {
      v146 = *(**v231 + 8) + 1;
    }

    else
    {
      v146 = 0;
    }

    std::to_string(&v246, v146);
    v147 = std::string::insert(&v246, 0, "userData[0]=");
    v148 = *&v147->__r_.__value_.__l.__data_;
    *&v238[16] = *(&v147->__r_.__value_.__l + 2);
    *v238 = v148;
    v147->__r_.__value_.__l.__size_ = 0;
    v147->__r_.__value_.__r.__words[2] = 0;
    v147->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v245, v238);
    if ((v238[23] & 0x80000000) != 0)
    {
      operator delete(*v238);
    }

    if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v246.__r_.__value_.__l.__data_);
    }

    if (v230)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v230);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_622;
  }

  if (v119 == *(v101 + 9))
  {
    goto LABEL_604;
  }

LABEL_605:
  *v117 = v119 + 1;
  v120 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(v101 + 3));
  v144 = *(v101 + 8);
  v145 = *(v101 + 5) + 8 * v144;
  *(v101 + 8) = v144 + 1;
  *(v145 + 8) = v120;
  if (a3)
  {
    goto LABEL_606;
  }

LABEL_622:
  YAML::Node::operator[]<char [9]>(__p, v218, "userData");
  siri::intelligence::ParseIntelligence_KeyValueParameter(v120, __p, a3);
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v143 = *&__p[8];
LABEL_626:
    operator delete(v143);
  }

LABEL_627:
  if (v245.__r_.__value_.__r.__words[0] != v245.__r_.__value_.__l.__size_)
  {
    std::string::basic_string[abi:ne200100]<0>(&v240, ";");
    siri::intelligence::StringJoin(&v245, &v240, __p);
    v151 = *(v101 + 1);
    v150 = (v101 + 8);
    v149 = v151;
    if (v151)
    {
      v152 = v149 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v150);
      v152 = v176;
    }

    if (*(v152 + 23) < 0)
    {
      operator delete(*v152);
    }

    v153 = *__p;
    *(v152 + 16) = *&__p[16];
    *v152 = v153;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v240.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v245;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v219)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v219);
  }

  if ((v218[31] & 0x80000000) != 0)
  {
    operator delete(*&v218[8]);
  }

LABEL_638:
  YAML::Node::operator[]<char [9]>(__p, v217, "childIds");
  v154 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v154)
    {
      goto LABEL_670;
    }
  }

  else if (v154)
  {
    goto LABEL_670;
  }

  YAML::Node::operator[]<char [9]>(__p, v217, "childIds");
  if ((__p[0] & 1) == 0)
  {
    v190 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v190, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 10, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_670;
    }
  }

  else if (!a3)
  {
    goto LABEL_670;
  }

  YAML::Node::operator[]<char [9]>(__p, v217, "childIds");
  if ((__p[0] & 1) == 0)
  {
    v206 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v206, &v240);
  }

  if (v231)
  {
    v155 = *(**v231 + 8) + 1;
  }

  else
  {
    v155 = 0;
  }

  std::to_string(v238, v155);
  v156 = std::string::insert(v238, 0, "childIds=");
  v157 = *&v156->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v156->__r_.__value_.__l + 2);
  *v218 = v157;
  v156->__r_.__value_.__l.__size_ = 0;
  v156->__r_.__value_.__r.__words[2] = 0;
  v156->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_670:
  YAML::Node::operator[]<char [10]>(v217, "condition", __p);
  v158 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v158)
    {
      goto LABEL_702;
    }
  }

  else if (v158)
  {
    goto LABEL_702;
  }

  YAML::Node::operator[]<char [10]>(v217, "condition", __p);
  if ((__p[0] & 1) == 0)
  {
    v191 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v191, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 11, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_702;
    }
  }

  else if (!a3)
  {
    goto LABEL_702;
  }

  YAML::Node::operator[]<char [10]>(v217, "condition", __p);
  if ((__p[0] & 1) == 0)
  {
    v207 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v207, &v240);
  }

  if (v231)
  {
    v159 = *(**v231 + 8) + 1;
  }

  else
  {
    v159 = 0;
  }

  std::to_string(v238, v159);
  v160 = std::string::insert(v238, 0, "condition=");
  v161 = *&v160->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v160->__r_.__value_.__l + 2);
  *v218 = v161;
  v160->__r_.__value_.__l.__size_ = 0;
  v160->__r_.__value_.__r.__words[2] = 0;
  v160->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_702:
  YAML::Node::operator[]<char [8]>(v217, "ruleset", __p);
  v162 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v162)
    {
      goto LABEL_734;
    }
  }

  else if (v162)
  {
    goto LABEL_734;
  }

  YAML::Node::operator[]<char [8]>(v217, "ruleset", __p);
  if ((__p[0] & 1) == 0)
  {
    v192 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v192, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 8u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 12, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_734;
    }
  }

  else if (!a3)
  {
    goto LABEL_734;
  }

  YAML::Node::operator[]<char [8]>(v217, "ruleset", __p);
  if ((__p[0] & 1) == 0)
  {
    v208 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v208, &v240);
  }

  if (v231)
  {
    v163 = *(**v231 + 8) + 1;
  }

  else
  {
    v163 = 0;
  }

  std::to_string(v238, v163);
  v164 = std::string::insert(v238, 0, "ruleset=");
  v165 = *&v164->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v164->__r_.__value_.__l + 2);
  *v218 = v165;
  v164->__r_.__value_.__l.__size_ = 0;
  v164->__r_.__value_.__r.__words[2] = 0;
  v164->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_734:
  YAML::Node::operator[]<char [11]>(v217, "inputGroup", __p);
  v166 = __p[0] != 1 || v231 && (***v231 & 1) == 0;
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v166)
    {
      goto LABEL_766;
    }
  }

  else if (v166)
  {
    goto LABEL_766;
  }

  YAML::Node::operator[]<char [11]>(v217, "inputGroup", __p);
  if ((__p[0] & 1) == 0)
  {
    v193 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v193, &v240);
  }

  v240.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v240, v218);
  *(this + 4) |= 0x20u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 14, &google::protobuf::internal::fixed_address_empty_string, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_766;
    }
  }

  else if (!a3)
  {
    goto LABEL_766;
  }

  YAML::Node::operator[]<char [11]>(v217, "inputGroup", __p);
  if ((__p[0] & 1) == 0)
  {
    v209 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v240, *&__p[8], *&__p[16]);
    }

    else
    {
      v240 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v209, &v240);
  }

  if (v231)
  {
    v167 = *(**v231 + 8) + 1;
  }

  else
  {
    v167 = 0;
  }

  std::to_string(v238, v167);
  v168 = std::string::insert(v238, 0, "inputGroup=");
  v169 = *&v168->__r_.__value_.__l.__data_;
  *&v218[16] = *(&v168->__r_.__value_.__l + 2);
  *v218 = v169;
  v168->__r_.__value_.__l.__size_ = 0;
  v168->__r_.__value_.__r.__words[2] = 0;
  v168->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v221, v218);
  if ((v218[23] & 0x80000000) != 0)
  {
    operator delete(*v218);
  }

  if ((v238[23] & 0x80000000) != 0)
  {
    operator delete(*v238);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_766:
  if (v221 != v222)
  {
    std::string::basic_string[abi:ne200100]<0>(&v240, ";");
    siri::intelligence::StringJoin(&v221, &v240, __p);
    v172 = *(this + 1);
    v171 = (this + 8);
    v170 = v172;
    if (v172)
    {
      v173 = v170 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v171);
      v173 = v175;
    }

    if (*(v173 + 23) < 0)
    {
      operator delete(*v173);
    }

    v174 = *__p;
    *(v173 + 16) = *&__p[16];
    *v173 = v174;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v240.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v221;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DC3198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 185) < 0)
  {
    operator delete(*(v46 - 208));
  }

  *(v46 - 256) = v46 - 144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v46 - 256));
  YAML::Node::~Node(&a13);
  a13 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void YAML::Node::operator[]<char [19]>(uint64_t a1, YAML::Node *this)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(this + 1), *(this + 2));
    }

    else
    {
      v16 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v16);
  }

  YAML::Node::EnsureNodeExists(this);
  v4 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, "referenceResponses");
  v5 = *(this + 5);
  v14 = *(this + 4);
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = YAML::detail::node::get<std::string>(v4, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_8:
      v8 = *(this + 4);
      v7 = *(this + 5);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v8;
        *(a1 + 40) = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a1 + 48) = v6;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v8;
        *(a1 + 40) = 0;
        *(a1 + 48) = v6;
      }

      return;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "referenceResponses", 18);
  std::stringbuf::str();
  __p[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v18 = v9;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v22);
  *a1 = 0;
  v10 = (a1 + 8);
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v12[0], v12[1]);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    operator delete(v12[0]);
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *v12;
    *(a1 + 24) = v13;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_254DC3CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ParseIntelligence_ReferenceResponse(siri::intelligence *this, protobuf::Intelligence_ReferenceResponse *a2, const YAML::Node *a3)
{
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v118 = a3;
  if (a3)
  {
    v5 = YAML::Node::Mark(a2);
    std::to_string(&v136, HIDWORD(v5) + 1);
    v6 = std::string::insert(&v136, 0, "<msg>=");
    v7 = *&v6->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v6->__r_.__value_.__l + 2);
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v119 = a2;
  v8 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
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

  YAML::Node::operator[]<char [3]>(v119, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 6, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [3]>(v119, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      v102 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v102, &v136);
    }

    if (v127)
    {
      v9 = *(**v127 + 8) + 1;
    }

    else
    {
      v9 = 0;
    }

    std::to_string(&v144, v9);
    v10 = std::string::insert(&v144, 0, "id=");
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v10->__r_.__value_.__l + 2);
    *v134 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_37:
  YAML::Node::operator[]<char [8]>(v119, "nextIds", __p);
  v12 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v12)
    {
      goto LABEL_140;
    }
  }

  else if (v12)
  {
    goto LABEL_140;
  }

  YAML::Node::operator[]<char [8]>(v119, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v90 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v90, &v136);
  }

  v14 = v127 && (v13 = **v127, *v13 == 1) && *(v13 + 16) == 3;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v14)
    {
LABEL_57:
      YAML::Node::operator[]<char [8]>(v119, "nextIds", &v136);
      if ((v136.__r_.__value_.__s.__data_[0] & 1) != 0 && v140)
      {
        YAML::detail::node_data::begin(**v140, __p);
        v16 = v138;
        v15 = v139;
        if (v139)
        {
          atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
          *v134 = *__p;
          *&v134[16] = *&__p[16];
          *&v134[32] = v16;
          v135 = v15;
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          *v134 = *__p;
          *&v134[16] = *&__p[16];
          *&v134[32] = v138;
          v135 = 0;
        }
      }

      else
      {
        *v134 = 0;
        memset(&v134[8], 0, 32);
        v135 = 0;
      }

      if (v136.__r_.__value_.__s.__data_[0] == 1 && v140)
      {
        YAML::detail::node_data::end(**v140, __p);
        v18 = v139;
        if (v139)
        {
          atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *__p;
          v20 = *&__p[8];
          v116 = v18;
          v117 = *&__p[16];
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v19 = *__p;
          v20 = *&__p[8];
          v116 = 0;
          v117 = *&__p[16];
        }
      }

      else
      {
        v20 = 0;
        v116 = 0;
        v117 = 0;
        v19 = 0;
      }

      for (i = 0; ; ++i)
      {
        if (*v134 == v19)
        {
          v22 = v20;
          v23 = &v134[8];
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              break;
            }

            v22 = v117;
            v23 = &v134[16];
          }

          if (*v23 == v22)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v134, __p);
        if ((__p[0] & 1) == 0)
        {
          v87 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v144, *&__p[8], *&__p[16]);
          }

          else
          {
            v144 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v87, &v144);
        }

        v144.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v144, &v124);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 24, &v124);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (v118)
        {
          std::to_string(&v121, i);
          v24 = std::string::insert(&v121, 0, "nextIds[");
          v25 = *&v24->__r_.__value_.__l.__data_;
          v122.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v122.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&v122, "]=");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v123.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
          *&v123.__r_.__value_.__l.__data_ = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          if ((__p[0] & 1) == 0)
          {
            v88 = __cxa_allocate_exception(0x38uLL);
            if ((__p[31] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v144, *&__p[8], *&__p[16]);
            }

            else
            {
              v144 = *&__p[8];
            }

            YAML::InvalidNode::InvalidNode(v88, &v144);
          }

          if (v127)
          {
            v28 = *(**v127 + 8) + 1;
          }

          else
          {
            v28 = 0;
          }

          std::to_string(&v120, v28);
          if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v120;
          }

          else
          {
            v29 = v120.__r_.__value_.__r.__words[0];
          }

          if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v120.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v120.__r_.__value_.__l.__size_;
          }

          v31 = std::string::append(&v123, v29, size);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v124.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
          *&v124.__r_.__value_.__l.__data_ = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          std::vector<std::string>::push_back[abi:ne200100](&v141, &v124);
          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v120.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v123.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v122.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }
        }

        if (v133)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }

        if (v132 < 0)
        {
          operator delete(v131);
        }

        if (v130)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v130);
        }

        if (v129 < 0)
        {
          operator delete(v128);
        }

        if (v126)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v126);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v134);
      }

      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v135);
      }

      if (v139)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v139);
      }

      if (v137 < 0)
      {
        v33 = v136.__r_.__value_.__l.__size_;
LABEL_139:
        operator delete(v33);
        goto LABEL_140;
      }

      goto LABEL_140;
    }
  }

  else if (v14)
  {
    goto LABEL_57;
  }

  YAML::Node::operator[]<char [8]>(v119, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v103 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v103, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 24, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [8]>(v119, "nextIds", __p);
    if ((__p[0] & 1) == 0)
    {
      v115 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v115, &v136);
    }

    if (v127)
    {
      v17 = *(**v127 + 8) + 1;
    }

    else
    {
      v17 = 0;
    }

    std::to_string(&v144, v17);
    v34 = std::string::insert(&v144, 0, "nextIds[0]=");
    v35 = *&v34->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v34->__r_.__value_.__l + 2);
    *v134 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      v33 = *&__p[8];
      goto LABEL_139;
    }
  }

LABEL_140:
  YAML::Node::operator[]<char [14]>(v119, "selectionMode", __p);
  v36 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v36)
    {
      goto LABEL_171;
    }
  }

  else if (v36)
  {
    goto LABEL_171;
  }

  YAML::Node::operator[]<char [14]>(v119, "selectionMode", __p);
  if ((__p[0] & 1) == 0)
  {
    v91 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v91, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 0x40u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 12, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [14]>(v119, "selectionMode", __p);
    if ((__p[0] & 1) == 0)
    {
      v104 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v104, &v136);
    }

    if (v127)
    {
      v37 = *(**v127 + 8) + 1;
    }

    else
    {
      v37 = 0;
    }

    std::to_string(&v144, v37);
    v38 = std::string::insert(&v144, 0, "selectionMode=");
    v39 = *&v38->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v38->__r_.__value_.__l + 2);
    *v134 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_171:
  YAML::Node::operator[]<char [12]>(v119, "conditionId", __p);
  v40 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
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

  YAML::Node::operator[]<char [12]>(v119, "conditionId", __p);
  if ((__p[0] & 1) == 0)
  {
    v92 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v92, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 0x200u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 15, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [12]>(v119, "conditionId", __p);
    if ((__p[0] & 1) == 0)
    {
      v105 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v105, &v136);
    }

    if (v127)
    {
      v41 = *(**v127 + 8) + 1;
    }

    else
    {
      v41 = 0;
    }

    std::to_string(&v144, v41);
    v42 = std::string::insert(&v144, 0, "conditionId=");
    v43 = *&v42->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v42->__r_.__value_.__l + 2);
    *v134 = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_202:
  YAML::Node::operator[]<char [9]>(__p, v119, "priority");
  v44 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
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

  YAML::Node::operator[]<char [9]>(__p, v119, "priority");
  if ((__p[0] & 1) == 0)
  {
    v93 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v93, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 0x10u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 10, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [9]>(__p, v119, "priority");
    if ((__p[0] & 1) == 0)
    {
      v106 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v106, &v136);
    }

    if (v127)
    {
      v45 = *(**v127 + 8) + 1;
    }

    else
    {
      v45 = 0;
    }

    std::to_string(&v144, v45);
    v46 = std::string::insert(&v144, 0, "priority=");
    v47 = *&v46->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v46->__r_.__value_.__l + 2);
    *v134 = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_233:
  YAML::Node::operator[]<char [7]>(v119, "repeat", __p);
  v48 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
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

  YAML::Node::operator[]<char [7]>(v119, "repeat", __p);
  if ((__p[0] & 1) == 0)
  {
    v94 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v94, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  v49 = siri::intelligence::StringToBool(v134, 0);
  *(this + 4) |= 0x800u;
  *(this + 136) = v49;
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [7]>(v119, "repeat", __p);
    if ((__p[0] & 1) == 0)
    {
      v107 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v107, &v136);
    }

    if (v127)
    {
      v50 = *(**v127 + 8) + 1;
    }

    else
    {
      v50 = 0;
    }

    std::to_string(&v144, v50);
    v51 = std::string::insert(&v144, 0, "repeat=");
    v52 = *&v51->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v51->__r_.__value_.__l + 2);
    *v134 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_264:
  YAML::Node::operator[]<char [13]>(v119, "inputGroupId", __p);
  v53 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v53)
    {
      goto LABEL_295;
    }
  }

  else if (v53)
  {
    goto LABEL_295;
  }

  YAML::Node::operator[]<char [13]>(v119, "inputGroupId", __p);
  if ((__p[0] & 1) == 0)
  {
    v95 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v95, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 0x400u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 16, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [13]>(v119, "inputGroupId", __p);
    if ((__p[0] & 1) == 0)
    {
      v108 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v108, &v136);
    }

    if (v127)
    {
      v54 = *(**v127 + 8) + 1;
    }

    else
    {
      v54 = 0;
    }

    std::to_string(&v144, v54);
    v55 = std::string::insert(&v144, 0, "inputGroupId=");
    v56 = *&v55->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v55->__r_.__value_.__l + 2);
    *v134 = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_295:
  YAML::Node::operator[]<char [6]>(v119, "refId", __p);
  v57 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v57)
    {
      goto LABEL_326;
    }
  }

  else if (v57)
  {
    goto LABEL_326;
  }

  YAML::Node::operator[]<char [6]>(v119, "refId", __p);
  if ((__p[0] & 1) == 0)
  {
    v96 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v96, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 0x80u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 13, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [6]>(v119, "refId", __p);
    if ((__p[0] & 1) == 0)
    {
      v109 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v109, &v136);
    }

    if (v127)
    {
      v58 = *(**v127 + 8) + 1;
    }

    else
    {
      v58 = 0;
    }

    std::to_string(&v144, v58);
    v59 = std::string::insert(&v144, 0, "refId=");
    v60 = *&v59->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v59->__r_.__value_.__l + 2);
    *v134 = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_326:
  YAML::Node::operator[]<char [5]>(v119, "mode", __p);
  v61 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v61)
    {
      goto LABEL_357;
    }
  }

  else if (v61)
  {
    goto LABEL_357;
  }

  YAML::Node::operator[]<char [5]>(v119, "mode", __p);
  if ((__p[0] & 1) == 0)
  {
    v97 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v97, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 0x100u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 14, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [5]>(v119, "mode", __p);
    if ((__p[0] & 1) == 0)
    {
      v110 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v110, &v136);
    }

    if (v127)
    {
      v62 = *(**v127 + 8) + 1;
    }

    else
    {
      v62 = 0;
    }

    std::to_string(&v144, v62);
    v63 = std::string::insert(&v144, 0, "mode=");
    v64 = *&v63->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v63->__r_.__value_.__l + 2);
    *v134 = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_357:
  YAML::Node::operator[]<char [9]>(__p, v119, "childIds");
  v65 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v65)
    {
      goto LABEL_388;
    }
  }

  else if (v65)
  {
    goto LABEL_388;
  }

  YAML::Node::operator[]<char [9]>(__p, v119, "childIds");
  if ((__p[0] & 1) == 0)
  {
    v98 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v98, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 7, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [9]>(__p, v119, "childIds");
    if ((__p[0] & 1) == 0)
    {
      v111 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v111, &v136);
    }

    if (v127)
    {
      v66 = *(**v127 + 8) + 1;
    }

    else
    {
      v66 = 0;
    }

    std::to_string(&v144, v66);
    v67 = std::string::insert(&v144, 0, "childIds=");
    v68 = *&v67->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v67->__r_.__value_.__l + 2);
    *v134 = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_388:
  YAML::Node::operator[]<char [10]>(v119, "condition", __p);
  v69 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v69)
    {
      goto LABEL_419;
    }
  }

  else if (v69)
  {
    goto LABEL_419;
  }

  YAML::Node::operator[]<char [10]>(v119, "condition", __p);
  if ((__p[0] & 1) == 0)
  {
    v99 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v99, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 8, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [10]>(v119, "condition", __p);
    if ((__p[0] & 1) == 0)
    {
      v112 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v112, &v136);
    }

    if (v127)
    {
      v70 = *(**v127 + 8) + 1;
    }

    else
    {
      v70 = 0;
    }

    std::to_string(&v144, v70);
    v71 = std::string::insert(&v144, 0, "condition=");
    v72 = *&v71->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v71->__r_.__value_.__l + 2);
    *v134 = v72;
    v71->__r_.__value_.__l.__size_ = 0;
    v71->__r_.__value_.__r.__words[2] = 0;
    v71->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_419:
  YAML::Node::operator[]<char [8]>(v119, "ruleset", __p);
  v73 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v73)
    {
      goto LABEL_450;
    }
  }

  else if (v73)
  {
    goto LABEL_450;
  }

  YAML::Node::operator[]<char [8]>(v119, "ruleset", __p);
  if ((__p[0] & 1) == 0)
  {
    v100 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v100, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 8u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 9, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [8]>(v119, "ruleset", __p);
    if ((__p[0] & 1) == 0)
    {
      v113 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v113, &v136);
    }

    if (v127)
    {
      v74 = *(**v127 + 8) + 1;
    }

    else
    {
      v74 = 0;
    }

    std::to_string(&v144, v74);
    v75 = std::string::insert(&v144, 0, "ruleset=");
    v76 = *&v75->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v75->__r_.__value_.__l + 2);
    *v134 = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_450:
  YAML::Node::operator[]<char [11]>(v119, "inputGroup", __p);
  v77 = __p[0] != 1 || v127 && (***v127 & 1) == 0;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v77)
    {
      goto LABEL_481;
    }
  }

  else if (v77)
  {
    goto LABEL_481;
  }

  YAML::Node::operator[]<char [11]>(v119, "inputGroup", __p);
  if ((__p[0] & 1) == 0)
  {
    v101 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
    }

    else
    {
      v136 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v101, &v136);
  }

  v136.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v136, v134);
  *(this + 4) |= 0x20u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 11, &google::protobuf::internal::fixed_address_empty_string, v134);
  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v118)
  {
    YAML::Node::operator[]<char [11]>(v119, "inputGroup", __p);
    if ((__p[0] & 1) == 0)
    {
      v114 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
      }

      else
      {
        v136 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v114, &v136);
    }

    if (v127)
    {
      v78 = *(**v127 + 8) + 1;
    }

    else
    {
      v78 = 0;
    }

    std::to_string(&v144, v78);
    v79 = std::string::insert(&v144, 0, "inputGroup=");
    v80 = *&v79->__r_.__value_.__l.__data_;
    *&v134[16] = *(&v79->__r_.__value_.__l + 2);
    *v134 = v80;
    v79->__r_.__value_.__l.__size_ = 0;
    v79->__r_.__value_.__r.__words[2] = 0;
    v79->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v141, v134);
    if ((v134[23] & 0x80000000) != 0)
    {
      operator delete(*v134);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_481:
  if (v141 != v142)
  {
    std::string::basic_string[abi:ne200100]<0>(&v136, ";");
    siri::intelligence::StringJoin(&v141, &v136, __p);
    v83 = *(this + 1);
    v82 = (this + 8);
    v81 = v83;
    if (v83)
    {
      v84 = v81 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v82);
      v84 = v86;
    }

    if (*(v84 + 23) < 0)
    {
      operator delete(*v84);
    }

    v85 = *__p;
    *(v84 + 16) = *&__p[16];
    *v84 = v85;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v141;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DC6464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
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

void siri::intelligence::ParseIntelligence_ResponseGroup(siri::intelligence *this, protobuf::Intelligence_ResponseGroup *a2, const YAML::Node *a3)
{
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v106 = a3;
  if (a3)
  {
    v5 = YAML::Node::Mark(a2);
    std::to_string(&v124, HIDWORD(v5) + 1);
    v6 = std::string::insert(&v124, 0, "<msg>=");
    v7 = *&v6->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v6->__r_.__value_.__l + 2);
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [3]>(a2, "id", __p);
  v107 = a2;
  v8 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
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

  YAML::Node::operator[]<char [3]>(v107, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 6, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [3]>(v107, "id", __p);
    if ((__p[0] & 1) == 0)
    {
      v92 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v92, &v124);
    }

    if (v115)
    {
      v9 = *(**v115 + 8) + 1;
    }

    else
    {
      v9 = 0;
    }

    std::to_string(&v132, v9);
    v10 = std::string::insert(&v132, 0, "id=");
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v10->__r_.__value_.__l + 2);
    *v122 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_37:
  YAML::Node::operator[]<char [8]>(v107, "nextIds", __p);
  v12 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v12)
    {
      goto LABEL_140;
    }
  }

  else if (v12)
  {
    goto LABEL_140;
  }

  YAML::Node::operator[]<char [8]>(v107, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v82 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v82, &v124);
  }

  v14 = v115 && (v13 = **v115, *v13 == 1) && *(v13 + 16) == 3;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v14)
    {
LABEL_57:
      YAML::Node::operator[]<char [8]>(v107, "nextIds", &v124);
      if ((v124.__r_.__value_.__s.__data_[0] & 1) != 0 && v128)
      {
        YAML::detail::node_data::begin(**v128, __p);
        v16 = v126;
        v15 = v127;
        if (v127)
        {
          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          *v122 = *__p;
          *&v122[16] = *&__p[16];
          *&v122[32] = v16;
          v123 = v15;
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          *v122 = *__p;
          *&v122[16] = *&__p[16];
          *&v122[32] = v126;
          v123 = 0;
        }
      }

      else
      {
        *v122 = 0;
        memset(&v122[8], 0, 32);
        v123 = 0;
      }

      if (v124.__r_.__value_.__s.__data_[0] == 1 && v128)
      {
        YAML::detail::node_data::end(**v128, __p);
        v18 = v127;
        if (v127)
        {
          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *__p;
          v20 = *&__p[8];
          v104 = v18;
          v105 = *&__p[16];
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v19 = *__p;
          v20 = *&__p[8];
          v104 = 0;
          v105 = *&__p[16];
        }
      }

      else
      {
        v20 = 0;
        v104 = 0;
        v105 = 0;
        v19 = 0;
      }

      for (i = 0; ; ++i)
      {
        if (*v122 == v19)
        {
          v22 = v20;
          v23 = &v122[8];
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              break;
            }

            v22 = v105;
            v23 = &v122[16];
          }

          if (*v23 == v22)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v122, __p);
        if ((__p[0] & 1) == 0)
        {
          v79 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v132, *&__p[8], *&__p[16]);
          }

          else
          {
            v132 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v79, &v132);
        }

        v132.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v132, &v112);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 24, &v112);
        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (v106)
        {
          std::to_string(&v109, i);
          v24 = std::string::insert(&v109, 0, "nextIds[");
          v25 = *&v24->__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v110.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&v110, "]=");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v111.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
          *&v111.__r_.__value_.__l.__data_ = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          if ((__p[0] & 1) == 0)
          {
            v80 = __cxa_allocate_exception(0x38uLL);
            if ((__p[31] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v132, *&__p[8], *&__p[16]);
            }

            else
            {
              v132 = *&__p[8];
            }

            YAML::InvalidNode::InvalidNode(v80, &v132);
          }

          if (v115)
          {
            v28 = *(**v115 + 8) + 1;
          }

          else
          {
            v28 = 0;
          }

          std::to_string(&v108, v28);
          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v108;
          }

          else
          {
            v29 = v108.__r_.__value_.__r.__words[0];
          }

          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v108.__r_.__value_.__l.__size_;
          }

          v31 = std::string::append(&v111, v29, size);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v112.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
          *&v112.__r_.__value_.__l.__data_ = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          std::vector<std::string>::push_back[abi:ne200100](&v129, &v112);
          if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v112.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v111.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
          }
        }

        if (v121)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v121);
        }

        if (v120 < 0)
        {
          operator delete(v119);
        }

        if (v118)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v118);
        }

        if (v117 < 0)
        {
          operator delete(v116);
        }

        if (v114)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v114);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v122);
      }

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      if (v123)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v123);
      }

      if (v127)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v127);
      }

      if (v125 < 0)
      {
        v33 = v124.__r_.__value_.__l.__size_;
LABEL_139:
        operator delete(v33);
        goto LABEL_140;
      }

      goto LABEL_140;
    }
  }

  else if (v14)
  {
    goto LABEL_57;
  }

  YAML::Node::operator[]<char [8]>(v107, "nextIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v93 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v93, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 24, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [8]>(v107, "nextIds", __p);
    if ((__p[0] & 1) == 0)
    {
      v103 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v103, &v124);
    }

    if (v115)
    {
      v17 = *(**v115 + 8) + 1;
    }

    else
    {
      v17 = 0;
    }

    std::to_string(&v132, v17);
    v34 = std::string::insert(&v132, 0, "nextIds[0]=");
    v35 = *&v34->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v34->__r_.__value_.__l + 2);
    *v122 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      v33 = *&__p[8];
      goto LABEL_139;
    }
  }

LABEL_140:
  YAML::Node::operator[]<char [14]>(v107, "selectionMode", __p);
  v36 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v36)
    {
      goto LABEL_171;
    }
  }

  else if (v36)
  {
    goto LABEL_171;
  }

  YAML::Node::operator[]<char [14]>(v107, "selectionMode", __p);
  if ((__p[0] & 1) == 0)
  {
    v83 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v83, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 0x40u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 12, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [14]>(v107, "selectionMode", __p);
    if ((__p[0] & 1) == 0)
    {
      v94 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v94, &v124);
    }

    if (v115)
    {
      v37 = *(**v115 + 8) + 1;
    }

    else
    {
      v37 = 0;
    }

    std::to_string(&v132, v37);
    v38 = std::string::insert(&v132, 0, "selectionMode=");
    v39 = *&v38->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v38->__r_.__value_.__l + 2);
    *v122 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_171:
  YAML::Node::operator[]<char [12]>(v107, "conditionId", __p);
  v40 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
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

  YAML::Node::operator[]<char [12]>(v107, "conditionId", __p);
  if ((__p[0] & 1) == 0)
  {
    v84 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v84, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 0x80u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 13, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [12]>(v107, "conditionId", __p);
    if ((__p[0] & 1) == 0)
    {
      v95 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v95, &v124);
    }

    if (v115)
    {
      v41 = *(**v115 + 8) + 1;
    }

    else
    {
      v41 = 0;
    }

    std::to_string(&v132, v41);
    v42 = std::string::insert(&v132, 0, "conditionId=");
    v43 = *&v42->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v42->__r_.__value_.__l + 2);
    *v122 = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_202:
  YAML::Node::operator[]<char [9]>(__p, v107, "priority");
  v44 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
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

  YAML::Node::operator[]<char [9]>(__p, v107, "priority");
  if ((__p[0] & 1) == 0)
  {
    v85 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v85, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 0x10u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 10, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [9]>(__p, v107, "priority");
    if ((__p[0] & 1) == 0)
    {
      v96 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v96, &v124);
    }

    if (v115)
    {
      v45 = *(**v115 + 8) + 1;
    }

    else
    {
      v45 = 0;
    }

    std::to_string(&v132, v45);
    v46 = std::string::insert(&v132, 0, "priority=");
    v47 = *&v46->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v46->__r_.__value_.__l + 2);
    *v122 = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_233:
  YAML::Node::operator[]<char [7]>(v107, "repeat", __p);
  v48 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
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

  YAML::Node::operator[]<char [7]>(v107, "repeat", __p);
  if ((__p[0] & 1) == 0)
  {
    v86 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v86, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  v49 = siri::intelligence::StringToBool(v122, 0);
  *(this + 4) |= 0x200u;
  *(this + 120) = v49;
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [7]>(v107, "repeat", __p);
    if ((__p[0] & 1) == 0)
    {
      v97 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v97, &v124);
    }

    if (v115)
    {
      v50 = *(**v115 + 8) + 1;
    }

    else
    {
      v50 = 0;
    }

    std::to_string(&v132, v50);
    v51 = std::string::insert(&v132, 0, "repeat=");
    v52 = *&v51->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v51->__r_.__value_.__l + 2);
    *v122 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_264:
  YAML::Node::operator[]<char [13]>(v107, "inputGroupId", __p);
  v53 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v53)
    {
      goto LABEL_295;
    }
  }

  else if (v53)
  {
    goto LABEL_295;
  }

  YAML::Node::operator[]<char [13]>(v107, "inputGroupId", __p);
  if ((__p[0] & 1) == 0)
  {
    v87 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v87, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 0x100u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 14, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [13]>(v107, "inputGroupId", __p);
    if ((__p[0] & 1) == 0)
    {
      v98 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v98, &v124);
    }

    if (v115)
    {
      v54 = *(**v115 + 8) + 1;
    }

    else
    {
      v54 = 0;
    }

    std::to_string(&v132, v54);
    v55 = std::string::insert(&v132, 0, "inputGroupId=");
    v56 = *&v55->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v55->__r_.__value_.__l + 2);
    *v122 = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_295:
  YAML::Node::operator[]<char [9]>(__p, v107, "childIds");
  v57 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v57)
    {
      goto LABEL_326;
    }
  }

  else if (v57)
  {
    goto LABEL_326;
  }

  YAML::Node::operator[]<char [9]>(__p, v107, "childIds");
  if ((__p[0] & 1) == 0)
  {
    v88 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v88, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 7, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [9]>(__p, v107, "childIds");
    if ((__p[0] & 1) == 0)
    {
      v99 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v99, &v124);
    }

    if (v115)
    {
      v58 = *(**v115 + 8) + 1;
    }

    else
    {
      v58 = 0;
    }

    std::to_string(&v132, v58);
    v59 = std::string::insert(&v132, 0, "childIds=");
    v60 = *&v59->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v59->__r_.__value_.__l + 2);
    *v122 = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_326:
  YAML::Node::operator[]<char [10]>(v107, "condition", __p);
  v61 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v61)
    {
      goto LABEL_357;
    }
  }

  else if (v61)
  {
    goto LABEL_357;
  }

  YAML::Node::operator[]<char [10]>(v107, "condition", __p);
  if ((__p[0] & 1) == 0)
  {
    v89 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v89, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 4u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 8, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [10]>(v107, "condition", __p);
    if ((__p[0] & 1) == 0)
    {
      v100 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v100, &v124);
    }

    if (v115)
    {
      v62 = *(**v115 + 8) + 1;
    }

    else
    {
      v62 = 0;
    }

    std::to_string(&v132, v62);
    v63 = std::string::insert(&v132, 0, "condition=");
    v64 = *&v63->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v63->__r_.__value_.__l + 2);
    *v122 = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_357:
  YAML::Node::operator[]<char [8]>(v107, "ruleset", __p);
  v65 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v65)
    {
      goto LABEL_388;
    }
  }

  else if (v65)
  {
    goto LABEL_388;
  }

  YAML::Node::operator[]<char [8]>(v107, "ruleset", __p);
  if ((__p[0] & 1) == 0)
  {
    v90 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v90, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 8u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 9, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [8]>(v107, "ruleset", __p);
    if ((__p[0] & 1) == 0)
    {
      v101 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v101, &v124);
    }

    if (v115)
    {
      v66 = *(**v115 + 8) + 1;
    }

    else
    {
      v66 = 0;
    }

    std::to_string(&v132, v66);
    v67 = std::string::insert(&v132, 0, "ruleset=");
    v68 = *&v67->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v67->__r_.__value_.__l + 2);
    *v122 = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_388:
  YAML::Node::operator[]<char [11]>(v107, "inputGroup", __p);
  v69 = __p[0] != 1 || v115 && (***v115 & 1) == 0;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v69)
    {
      goto LABEL_419;
    }
  }

  else if (v69)
  {
    goto LABEL_419;
  }

  YAML::Node::operator[]<char [11]>(v107, "inputGroup", __p);
  if ((__p[0] & 1) == 0)
  {
    v91 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
    }

    else
    {
      v124 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v91, &v124);
  }

  v124.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v124, v122);
  *(this + 4) |= 0x20u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 11, &google::protobuf::internal::fixed_address_empty_string, v122);
  if ((v122[23] & 0x80000000) != 0)
  {
    operator delete(*v122);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v106)
  {
    YAML::Node::operator[]<char [11]>(v107, "inputGroup", __p);
    if ((__p[0] & 1) == 0)
    {
      v102 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v124, *&__p[8], *&__p[16]);
      }

      else
      {
        v124 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v102, &v124);
    }

    if (v115)
    {
      v70 = *(**v115 + 8) + 1;
    }

    else
    {
      v70 = 0;
    }

    std::to_string(&v132, v70);
    v71 = std::string::insert(&v132, 0, "inputGroup=");
    v72 = *&v71->__r_.__value_.__l.__data_;
    *&v122[16] = *(&v71->__r_.__value_.__l + 2);
    *v122 = v72;
    v71->__r_.__value_.__l.__size_ = 0;
    v71->__r_.__value_.__r.__words[2] = 0;
    v71->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v129, v122);
    if ((v122[23] & 0x80000000) != 0)
    {
      operator delete(*v122);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_419:
  if (v129 != v130)
  {
    std::string::basic_string[abi:ne200100]<0>(&v124, ";");
    siri::intelligence::StringJoin(&v129, &v124, __p);
    v75 = *(this + 1);
    v74 = (this + 8);
    v73 = v75;
    if (v75)
    {
      v76 = v73 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v74);
      v76 = v78;
    }

    if (*(v76 + 23) < 0)
    {
      operator delete(*v76);
    }

    v77 = *__p;
    *(v76 + 16) = *&__p[16];
    *v76 = v77;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v129;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}