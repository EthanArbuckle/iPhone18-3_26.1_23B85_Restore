uint64_t SnippetUI::ImageElement_Source::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 > 3)
  {
    if (v2 != 4 && v2 != 5 && v2 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v2 != 1 && v2 != 2 && v2 != 3)
  {
    goto LABEL_11;
  }

  this = *(this + 16);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_11:
  *(v1 + 28) = 0;
  return this;
}

void google::protobuf::internal::AssignDescriptors(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 32);
  if (atomic_load_explicit(v1, memory_order_acquire) != -1)
  {
    v4[1] = &v2;
    v3 = v4;
    std::__call_once(v1, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(google::protobuf::internal::DescriptorTable const*),google::protobuf::internal::DescriptorTable const*&>>);
  }
}

void siri::dialogengine::GetListInfo(siri::dialogengine *this, siri::dialogengine::Context *a2, const google::protobuf::Message *a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  siri::dialogengine::GetStoredItems(&v15, a3);
  v3 = v15;
  if (v15 != v16)
  {
    do
    {
      v11 = *(v3 + 8);
      siri::dialogengine::CatBinary::vcat_item::vcat_item(v12, (v3 + 5));
      if (v14 == 3)
      {
        memset(v9, 0, sizeof(v9));
        memset(&__p, 0, sizeof(__p));
        std::string::operator=(v9, v13[3]);
        v4 = &siri::dialogengine::CatBinary::_vcat_item_repetition_default_instance_;
        if (v14 == 3)
        {
          v4 = v13;
        }

        std::string::operator=(&v9[1], v4[4]);
        v5 = &siri::dialogengine::CatBinary::_vcat_item_repetition_default_instance_;
        if (v14 == 3)
        {
          v5 = v13;
        }

        std::string::operator=(&__p, v5[5]);
        siri::dialogengine::StringSplit(v9, ".");
      }

      siri::dialogengine::CatBinary::vcat_item::~vcat_item(v12);
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v16);
  }

  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(v16[0]);
}

void sub_1BFBDEFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  *(v38 - 144) = v38 - 120;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v38 - 144));
  siri::dialogengine::ListInfo::~ListInfo(&a16);
  siri::dialogengine::CatBinary::vcat_item::~vcat_item(&a29);
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(a37);
  std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(*a12);
  _Unwind_Resume(a1);
}

siri::dialogengine::CatBinary::vcat_item *siri::dialogengine::CatBinary::vcat_item::vcat_item(siri::dialogengine::CatBinary::vcat_item *this)
{
  *this = &unk_1F3F18AC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_vcat_item_CatBinary_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_vcat_item_CatBinary_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = 0;
  return this;
}

unint64_t google::protobuf::Reflection::GetUnknownFields(google::protobuf::Reflection *this, const google::protobuf::Message *a2)
{
  v2 = *(a2 + *(this + 9));
  if (v2)
  {
    return v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    return google::protobuf::UnknownFieldSet::default_instance(this);
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      siri::dialogengine::CatBinary::vcat_item::~vcat_item((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(*(a1 + 1));
    if (a1[151] < 0)
    {
      operator delete(*(a1 + 16));
    }

    if (a1[127] < 0)
    {
      operator delete(*(a1 + 13));
    }

    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    v2 = *(a1 + 9);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void siri::dialogengine::GetConditionInfo(siri::dialogengine *this, const google::protobuf::Message *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  siri::dialogengine::GetStoredItems(&v12, a2);
  v4 = v12;
  if (v12 != v13)
  {
    while (1)
    {
      v8 = *(v4 + 8);
      siri::dialogengine::CatBinary::vcat_item::vcat_item(v9, (v4 + 5));
      if (v11 != 2 && (v9[16] & 2) != 0)
      {
        break;
      }

      siri::dialogengine::CatBinary::vcat_item::~vcat_item(v9);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
      if (v6 == v13)
      {
        goto LABEL_12;
      }
    }

    std::string::operator=(v3, __str);
    *this = v8;
    siri::dialogengine::CatBinary::vcat_item::~vcat_item(v9);
  }

LABEL_12:
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(v13[0]);
}

void sub_1BFBDF384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  siri::dialogengine::CatBinary::vcat_item::~vcat_item(&a11);
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(a19);
  if (*(v19 + 31) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::ConditionIsTrue(siri::dialogengine *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    v8 = 1;
    return v8 & 1;
  }

  v6 = *(a1 + 63);
  v5 = *(a1 + 64);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = *(a1 + 63);
    v5 = *(a1 + 64);
    v8 = v5 == 0;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = *(a1 + 63);
    v8 = 1;
  }

  v9 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(v7 + 272, a2);
  if (v7 + 280 == v9)
  {
    v11 = 0;
    v12 = 0;
    if ((v8 & 1) == 0)
    {
LABEL_15:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v12 = *(v9 + 56);
    v11 = *(v9 + 64);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    goto LABEL_20;
  }

  v13 = *(v12 + 144);
  if (v13 != *(v12 + 152))
  {
    v8 = siri::dialogengine::EvaluateConditionEntry(a1, *v13, 0, v10);
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = 0;
  if (v11)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v12)
  {
    return v8 & 1;
  }

LABEL_21:
  siri::dialogengine::ResolveType(0, a1, a2, __s1);
  v14 = strlen(siri::dialogengine::TYPE_UNKNOWN);
  if ((v21 & 0x8000000000000000) != 0)
  {
    if (v14 == __s1[1])
    {
      if (v14 == -1)
      {
        std::basic_string<char32_t>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = __s1[0];
      v17 = memcmp(__s1[0], siri::dialogengine::TYPE_UNKNOWN, v14);
      operator delete(v16);
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    else
    {
      operator delete(__s1[0]);
    }

LABEL_39:
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12dialogengine9ConditionENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v14 != v21 || memcmp(__s1, siri::dialogengine::TYPE_UNKNOWN, v14))
  {
    goto LABEL_39;
  }

LABEL_32:
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  siri::dialogengine::Log::Info("Could not resolve type for condition '%s', result will be false", v15, v18);
  v8 = 0;
  return v8 & 1;
}

void sub_1BFBDF6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::ClearUnknownField(siri::dialogengine *this, google::protobuf::Message *a2)
{
  if (!a2)
  {
    return;
  }

  v2 = a2;
  (*(*this + 168))(this);
  if (v4)
  {
    google::protobuf::Reflection::MutableUnknownFields(v4, this);
    if (v5)
    {

      google::protobuf::UnknownFieldSet::DeleteByNumber(v5, v2);
      return;
    }

    v6 = "Could not get unknown field set";
  }

  else
  {
    v6 = "Could not get message reflection";
  }

  siri::dialogengine::Log::Error(v6, v4);
}

siri::dialogengine::TemporaryVariable *siri::dialogengine::TemporaryVariable::TemporaryVariable(siri::dialogengine::TemporaryVariable *this, siri::dialogengine::Context *a2, const siri::dialogengine::ListInfo *a3)
{
  *this = a2;
  siri::dialogengine::ListInfo::ListInfo(this + 8, a3);
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  if (a2)
  {
    v6 = *(a3 + 71);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 7);
    }

    if (v6)
    {
      siri::dialogengine::Context::FindVariable(a2, a3 + 48, &v9);
      v7 = *(this + 16);
      *(this + 120) = v9;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  return this;
}

void sub_1BFBDFB0C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 112);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  siri::dialogengine::ListInfo::~ListInfo((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::ListInfo::ListInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
  }

  return a1;
}

void sub_1BFBDFBF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::TemporaryVariable::SetIndex(siri::dialogengine::TemporaryVariable *this, const char *a2)
{
  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (!*(this + 5))
    {
      return;
    }
  }

  else if (!*(this + 55))
  {
    return;
  }

  if ((*(this + 79) & 0x8000000000000000) != 0)
  {
    if (!*(this + 8))
    {
      return;
    }
  }

  else if (!*(this + 79))
  {
    return;
  }

  if (*this)
  {
    siri::dialogengine::TemporaryVariable::RemoveFromContext(this);
    v5 = *(this + 2);
    if (!v5)
    {
      return;
    }

    v7 = v5 + 72;
    v6 = *(v5 + 72);
    v36 = 0u;
    if (a2 >= (*(v7 + 8) - v6) >> 4)
    {
      goto LABEL_22;
    }

    v8 = *(v6 + 16 * a2);
    v36 = v8;
    v9 = *(v6 + 16 * a2 + 8);
    if (*(&v8 + 1))
    {
      atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v8)
    {
LABEL_22:
      siri::dialogengine::Log::Error("Could not get item %zu for iterator", v4, a2);
      v9 = *(&v36 + 1);
LABEL_99:
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      return;
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v8 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *(v8 + 32), *(v8 + 40));
    }

    else
    {
      v40 = *(v8 + 32);
    }

    v10 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v40.__r_.__value_.__l.__size_ != 12)
      {
        if (v40.__r_.__value_.__l.__size_ != 13)
        {
          if (v40.__r_.__value_.__l.__size_ == 14)
          {
            v11 = v40.__r_.__value_.__r.__words[0];
            v12 = *v40.__r_.__value_.__l.__data_;
LABEL_33:
            v13 = *(v11->__r_.__value_.__r.__words + 6);
            if (v12 == 0x422E676F6C616964 && v13 == 0x6E61656C6F6F422ELL)
            {
              v15 = **v36;
              {
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              operator new();
            }
          }

LABEL_75:
          if (*(v36 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v36 + 8), *(v36 + 16));
            v10 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = *(v36 + 8);
            __str.__r_.__value_.__r.__words[2] = *(v36 + 24);
            *&__str.__r_.__value_.__l.__data_ = v27;
          }

          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v29 = v10 < 0;
          v30 = &v40;
          if (v29)
          {
            v30 = v40.__r_.__value_.__r.__words[0];
          }

          siri::dialogengine::Log::Error("Unable to duplicate variable '%s' of type '%s'", v4, p_str, v30);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

LABEL_84:
          if (*(v36 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v36 + 32), *(v36 + 40));
          }

          else
          {
            __str = *(v36 + 32);
          }

          std::string::operator=(0x20, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          MEMORY[0x38] = *(v36 + 56);
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          v31 = *(this + 14);
          *(this + 13) = 0;
          *(this + 14) = 0;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          std::string::operator=((*(this + 13) + 8), (this + 56));
          v32 = *(this + 13);
          *(v32 + 64) = 1;
          v33 = *this;
          v34 = *(this + 14);
          v37[0] = v32;
          v37[1] = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::dialogengine::Context::AddVariable(v33, v37);
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          goto LABEL_99;
        }

        v11 = v40.__r_.__value_.__r.__words[0];
        if (*v40.__r_.__value_.__l.__data_ != 0x532E676F6C616964 || *(v40.__r_.__value_.__r.__words[0] + 5) != 0x676E697274532E67)
        {
          if (*v40.__r_.__value_.__l.__data_ != 0x4E2E676F6C616964 || *(v40.__r_.__value_.__r.__words[0] + 5) != 0x7265626D754E2E67)
          {
            v18 = *v40.__r_.__value_.__l.__data_;
LABEL_60:
            v21 = *(v11->__r_.__value_.__r.__words + 5);
            if (v18 == 0x4F2E676F6C616964 && v21 == 0x7463656A624F2E67)
            {
              v23 = **v36;
              {
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            goto LABEL_75;
          }

LABEL_104:
          v35 = **v36;
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          operator new();
        }

LABEL_69:
        operator new();
      }

      v11 = v40.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = &v40;
      if (HIBYTE(v40.__r_.__value_.__r.__words[2]) != 12)
      {
        if (HIBYTE(v40.__r_.__value_.__r.__words[2]) != 13)
        {
          if (HIBYTE(v40.__r_.__value_.__r.__words[2]) == 14)
          {
            v12 = v40.__r_.__value_.__r.__words[0];
            goto LABEL_33;
          }

          goto LABEL_75;
        }

        if (v40.__r_.__value_.__r.__words[0] != 0x532E676F6C616964 || *(v40.__r_.__value_.__r.__words + 5) != 0x676E697274532E67)
        {
          if (v40.__r_.__value_.__r.__words[0] != 0x4E2E676F6C616964 || *(v40.__r_.__value_.__r.__words + 5) != 0x7265626D754E2E67)
          {
            v18 = v40.__r_.__value_.__r.__words[0];
            goto LABEL_60;
          }

          goto LABEL_104;
        }

        goto LABEL_69;
      }
    }

    v24 = v11->__r_.__value_.__r.__words[0];
    v25 = v11->__r_.__value_.__r.__words[1];
    if (v24 == 0x412E676F6C616964 && v25 == 2036429426)
    {
      std::dynamic_pointer_cast[abi:ne200100]<siri::dialogengine::VariableArray,siri::dialogengine::Variable>(&v39, v36, v9);
      if (v39.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      if (v39.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39.__r_.__value_.__l.__size_);
      }

      goto LABEL_84;
    }

    goto LABEL_75;
  }

  siri::dialogengine::Log::Error("Context must not be null when setting temporary value", a2);
}

void sub_1BFBE0618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1C68D4E80](v22, 0x10B3C40C1072A30);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::Message::GetTypeName(google::protobuf::Message *this@<X0>, std::string *a2@<X8>)
{
  v3 = *((*(*this + 168))(this) + 8);
  if (*(v3 + 23) < 0)
  {
    v5 = *v3;
    v6 = *(v3 + 1);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    v4 = *v3;
    a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

void siri::dialogengine::GetMessageCondition(std::string *this, const google::protobuf::Message *a2)
{
  siri::dialogengine::GetConditionInfo(&v3, a2);
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external(this, __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&this->__r_.__value_.__l.__data_ = *__p;
    this->__r_.__value_.__r.__words[2] = v5;
  }
}

void sub_1BFBE09A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double google::protobuf::Reflection::MutableUnknownFields(google::protobuf::Reflection *this, google::protobuf::Message *a2)
{
  v2 = *(this + 9);
  if ((*(a2 + v2) & 1) == 0)
  {
    return google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::mutable_unknown_fields_slow((a2 + v2));
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::Message const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<google::protobuf::FieldDescriptor const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::Message const*>>(result, a2);
    }

    std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t google::protobuf::UnknownFieldSet::default_instance(google::protobuf::UnknownFieldSet *this)
{
  {
    operator new();
  }

  return google::protobuf::UnknownFieldSet::default_instance(void)::instance;
}

uint64_t *siri::dialogengine::vcat::GetRequiredFields(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v692 = *MEMORY[0x1E69E9840];
  {
    std::string::basic_string[abi:ne200100]<0>(v362, "SnippetUI.ActionElement");
    std::string::basic_string[abi:ne200100]<0>(v583, "command");
    std::set<std::string>::set[abi:ne200100](v361, v583, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v585, v362, v361);
    std::string::basic_string[abi:ne200100]<0>(v359, "SnippetUI.ActionProperty");
    std::string::basic_string[abi:ne200100]<0>(v581, "actions");
    std::set<std::string>::set[abi:ne200100](v358, v581, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v586, v359, v358);
    std::string::basic_string[abi:ne200100]<0>(v356, "SnippetUI.BackgroundElement");
    std::string::basic_string[abi:ne200100]<0>(v579, "is_hidden_on_idioms");
    std::string::basic_string[abi:ne200100]<0>(v580, "visual");
    std::set<std::string>::set[abi:ne200100](v355, v579, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v587, v356, v355);
    std::string::basic_string[abi:ne200100]<0>(v353, "SnippetUI.BinaryButton");
    std::string::basic_string[abi:ne200100]<0>(v577, "primary_button");
    std::string::basic_string[abi:ne200100]<0>(v578, "secondary_button");
    std::set<std::string>::set[abi:ne200100](v352, v577, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v588, v353, v352);
    std::string::basic_string[abi:ne200100]<0>(v350, "SnippetUI.Button");
    std::string::basic_string[abi:ne200100]<0>(v575, "action");
    std::string::basic_string[abi:ne200100]<0>(v576, "label");
    std::set<std::string>::set[abi:ne200100](v349, v575, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v589, v350, v349);
    std::string::basic_string[abi:ne200100]<0>(v347, "SnippetUI.Color.HexValue");
    std::string::basic_string[abi:ne200100]<0>(v573, "rgba");
    std::set<std::string>::set[abi:ne200100](v346, v573, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v590, v347, v346);
    std::string::basic_string[abi:ne200100]<0>(v344, "SnippetUI.Color");
    std::string::basic_string[abi:ne200100]<0>(v571, "value");
    std::set<std::string>::set[abi:ne200100](v343, v571, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v591, v344, v343);
    std::string::basic_string[abi:ne200100]<0>(v341, "SnippetUI.ColorElement");
    std::string::basic_string[abi:ne200100]<0>(v569, "color");
    std::set<std::string>::set[abi:ne200100](v340, v569, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v592, v341, v340);
    std::string::basic_string[abi:ne200100]<0>(v338, "SnippetUI.Command.AppPunchout");
    std::string::basic_string[abi:ne200100]<0>(v567, "punch_out_uri");
    std::set<std::string>::set[abi:ne200100](v337, v567, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v593, v338, v337);
    std::string::basic_string[abi:ne200100]<0>(v335, "SnippetUI.Command.ChangeBackground");
    std::string::basic_string[abi:ne200100]<0>(v565, "background");
    std::set<std::string>::set[abi:ne200100](v334, v565, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v594, v335, v334);
    std::string::basic_string[abi:ne200100]<0>(v332, "SnippetUI.Command.ResponseGroup");
    std::string::basic_string[abi:ne200100]<0>(v563, "group_id");
    std::set<std::string>::set[abi:ne200100](v331, v563, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v595, v332, v331);
    std::string::basic_string[abi:ne200100]<0>(v329, "SnippetUI.Command");
    std::string::basic_string[abi:ne200100]<0>(v561, "value");
    std::set<std::string>::set[abi:ne200100](v328, v561, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v596, v329, v328);
    std::string::basic_string[abi:ne200100]<0>(v326, "SnippetUI.Control_PlayerButton");
    std::string::basic_string[abi:ne200100]<0>(v559, "label_1");
    std::string::basic_string[abi:ne200100]<0>(v560, "player");
    std::set<std::string>::set[abi:ne200100](v325, v559, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v597, v326, v325);
    std::string::basic_string[abi:ne200100]<0>(v323, "SnippetUI.Control_Slider");
    std::string::basic_string[abi:ne200100]<0>(v557, "slider");
    std::set<std::string>::set[abi:ne200100](v322, v557, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v598, v323, v322);
    std::string::basic_string[abi:ne200100]<0>(v320, "SnippetUI.Control_Switch");
    std::string::basic_string[abi:ne200100]<0>(v555, "switch");
    std::string::basic_string[abi:ne200100]<0>(v556, "text_1");
    std::set<std::string>::set[abi:ne200100](v319, v555, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v599, v320, v319);
    std::string::basic_string[abi:ne200100]<0>(v317, "SnippetUI.CoreChart");
    std::string::basic_string[abi:ne200100]<0>(v553, "data");
    std::set<std::string>::set[abi:ne200100](v316, v553, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v600, v317, v316);
    std::string::basic_string[abi:ne200100]<0>(v314, "SnippetUI.CoreChartElement");
    std::string::basic_string[abi:ne200100]<0>(v551, "chart");
    std::set<std::string>::set[abi:ne200100](v313, v551, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v601, v314, v313);
    std::string::basic_string[abi:ne200100]<0>(v311, "SnippetUI.CustomCanvas");
    std::string::basic_string[abi:ne200100]<0>(v548, "bundle_name");
    std::string::basic_string[abi:ne200100]<0>(v549, "view_data");
    std::string::basic_string[abi:ne200100]<0>(v550, "view_id");
    std::set<std::string>::set[abi:ne200100](v310, v548, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v602, v311, v310);
    std::string::basic_string[abi:ne200100]<0>(v308, "SnippetUI.CustomElement");
    std::string::basic_string[abi:ne200100]<0>(v546, "canvas");
    std::set<std::string>::set[abi:ne200100](v307, v546, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v603, v308, v307);
    std::string::basic_string[abi:ne200100]<0>(v305, "SnippetUI.FactItem_Button");
    std::string::basic_string[abi:ne200100]<0>(v544, "button_1");
    std::string::basic_string[abi:ne200100]<0>(v545, "text_1");
    std::set<std::string>::set[abi:ne200100](v304, v544, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v604, v305, v304);
    std::string::basic_string[abi:ne200100]<0>(v302, "SnippetUI.FactItem_HeroNumber");
    std::string::basic_string[abi:ne200100]<0>(v542, "number");
    std::set<std::string>::set[abi:ne200100](v301, v542, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v605, v302, v301);
    std::string::basic_string[abi:ne200100]<0>(v299, "SnippetUI.FactItem_ShortNumber");
    std::string::basic_string[abi:ne200100]<0>(v540, "number");
    std::string::basic_string[abi:ne200100]<0>(v541, "text_1");
    std::set<std::string>::set[abi:ne200100](v298, v540, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v606, v299, v298);
    std::string::basic_string[abi:ne200100]<0>(v296, "SnippetUI.FactItem_Standard");
    std::string::basic_string[abi:ne200100]<0>(v538, "text_1");
    std::set<std::string>::set[abi:ne200100](v295, v538, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v607, v296, v295);
    std::string::basic_string[abi:ne200100]<0>(v293, "SnippetUI.HeroHeader");
    std::string::basic_string[abi:ne200100]<0>(v536, "banner");
    std::string::basic_string[abi:ne200100]<0>(v537, "text_1");
    std::set<std::string>::set[abi:ne200100](v292, v536, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v608, v293, v292);
    std::string::basic_string[abi:ne200100]<0>(v290, "SnippetUI.HorizontalList_Standard.Item");
    std::string::basic_string[abi:ne200100]<0>(v533, "style");
    std::string::basic_string[abi:ne200100]<0>(v534, "text_1");
    std::string::basic_string[abi:ne200100]<0>(v535, "thumbnail");
    std::set<std::string>::set[abi:ne200100](v289, v533, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v609, v290, v289);
    std::string::basic_string[abi:ne200100]<0>(v287, "SnippetUI.HorizontalList_Standard");
    std::string::basic_string[abi:ne200100]<0>(v531, "items");
    std::set<std::string>::set[abi:ne200100](v286, v531, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v610, v287, v286);
    std::string::basic_string[abi:ne200100]<0>(v284, "SnippetUI.ImageElement.AppIcon");
    std::string::basic_string[abi:ne200100]<0>(v529, "application_bundle_identifier");
    std::set<std::string>::set[abi:ne200100](v283, v529, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v611, v284, v283);
    std::string::basic_string[abi:ne200100]<0>(v281, "SnippetUI.ImageElement.AspectRatio");
    std::string::basic_string[abi:ne200100]<0>(v527, "height");
    std::string::basic_string[abi:ne200100]<0>(v528, "width");
    std::set<std::string>::set[abi:ne200100](v280, v527, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v612, v281, v280);
    std::string::basic_string[abi:ne200100]<0>(v278, "SnippetUI.ImageElement.Bundle");
    std::string::basic_string[abi:ne200100]<0>(v525, "name");
    std::set<std::string>::set[abi:ne200100](v277, v525, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v613, v278, v277);
    std::string::basic_string[abi:ne200100]<0>(v275, "SnippetUI.ImageElement.Contact.Avatar");
    std::string::basic_string[abi:ne200100]<0>(v523, "contact_ids");
    std::set<std::string>::set[abi:ne200100](v274, v523, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v614, v275, v274);
    std::string::basic_string[abi:ne200100]<0>(v272, "SnippetUI.ImageElement.Contact.Monogram");
    std::string::basic_string[abi:ne200100]<0>(v521, "letters");
    std::set<std::string>::set[abi:ne200100](v271, v521, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v615, v272, v271);
    std::string::basic_string[abi:ne200100]<0>(v269, "SnippetUI.ImageElement.Contact");
    std::string::basic_string[abi:ne200100]<0>(v519, "content");
    std::set<std::string>::set[abi:ne200100](v268, v519, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v616, v269, v268);
    std::string::basic_string[abi:ne200100]<0>(v266, "SnippetUI.ImageElement.Data");
    std::string::basic_string[abi:ne200100]<0>(v517, "png_data");
    std::set<std::string>::set[abi:ne200100](v265, v517, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v617, v266, v265);
    std::string::basic_string[abi:ne200100]<0>(v263, "SnippetUI.ImageElement.Source");
    std::string::basic_string[abi:ne200100]<0>(v515, "value");
    std::set<std::string>::set[abi:ne200100](v262, v515, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v618, v263, v262);
    std::string::basic_string[abi:ne200100]<0>(v260, "SnippetUI.ImageElement.Symbol");
    std::string::basic_string[abi:ne200100]<0>(v513, "name");
    std::set<std::string>::set[abi:ne200100](v259, v513, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v619, v260, v259);
    std::string::basic_string[abi:ne200100]<0>(v257, "SnippetUI.ImageElement.Url");
    std::string::basic_string[abi:ne200100]<0>(v511, "source");
    std::set<std::string>::set[abi:ne200100](v256, v511, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v620, v257, v256);
    std::string::basic_string[abi:ne200100]<0>(v254, "SnippetUI.ImageElement");
    std::string::basic_string[abi:ne200100]<0>(v509, "sources");
    std::set<std::string>::set[abi:ne200100](v253, v509, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v621, v254, v253);
    std::string::basic_string[abi:ne200100]<0>(v251, "SnippetUI.IntentsUI_Standard.Slot");
    std::string::basic_string[abi:ne200100]<0>(v507, "fallback");
    std::string::basic_string[abi:ne200100]<0>(v508, "parameter_key_paths");
    std::set<std::string>::set[abi:ne200100](v250, v507, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v622, v251, v250);
    std::string::basic_string[abi:ne200100]<0>(v248, "SnippetUI.IntentsUI_Standard");
    std::string::basic_string[abi:ne200100]<0>(v505, "interaction");
    std::string::basic_string[abi:ne200100]<0>(v506, "slots");
    std::set<std::string>::set[abi:ne200100](v247, v505, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v623, v248, v247);
    std::string::basic_string[abi:ne200100]<0>(v245, "SnippetUI.LongItem_Text");
    std::string::basic_string[abi:ne200100]<0>(v503, "text_1");
    std::set<std::string>::set[abi:ne200100](v244, v503, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v624, v245, v244);
    std::string::basic_string[abi:ne200100]<0>(v242, "SnippetUI.MultilineTextProperty.Line");
    std::string::basic_string[abi:ne200100]<0>(v501, "text_elements");
    std::set<std::string>::set[abi:ne200100](v241, v501, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v625, v242, v241);
    std::string::basic_string[abi:ne200100]<0>(v239, "SnippetUI.MultilineTextProperty");
    std::string::basic_string[abi:ne200100]<0>(v499, "lines");
    std::set<std::string>::set[abi:ne200100](v238, v499, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v626, v239, v238);
    std::string::basic_string[abi:ne200100]<0>(v236, "SnippetUI.OptionalBool");
    std::string::basic_string[abi:ne200100]<0>(v497, "value");
    std::set<std::string>::set[abi:ne200100](v235, v497, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v627, v236, v235);
    std::string::basic_string[abi:ne200100]<0>(v233, "SnippetUI.OptionalDouble");
    std::string::basic_string[abi:ne200100]<0>(v495, "value");
    std::set<std::string>::set[abi:ne200100](v232, v495, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v628, v233, v232);
    std::string::basic_string[abi:ne200100]<0>(v230, "SnippetUI.OptionalInt");
    std::string::basic_string[abi:ne200100]<0>(v493, "value");
    std::set<std::string>::set[abi:ne200100](v229, v493, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v629, v230, v229);
    std::string::basic_string[abi:ne200100]<0>(v227, "SnippetUI.OrnamentElement");
    std::string::basic_string[abi:ne200100]<0>(v491, "is_hidden_on_idioms");
    std::string::basic_string[abi:ne200100]<0>(v492, "visual");
    std::set<std::string>::set[abi:ne200100](v226, v491, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v630, v227, v226);
    std::string::basic_string[abi:ne200100]<0>(v224, "SnippetUI.Player");
    std::string::basic_string[abi:ne200100]<0>(v489, "control");
    std::set<std::string>::set[abi:ne200100](v223, v489, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v631, v224, v223);
    std::string::basic_string[abi:ne200100]<0>(v221, "SnippetUI.PlayerButton");
    std::string::basic_string[abi:ne200100]<0>(v487, "pause_button");
    std::string::basic_string[abi:ne200100]<0>(v488, "play_button");
    std::set<std::string>::set[abi:ne200100](v220, v487, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v632, v221, v220);
    std::string::basic_string[abi:ne200100]<0>(v218, "SnippetUI.PrimaryHeader_Marquee");
    std::string::basic_string[abi:ne200100]<0>(v485, "text_1");
    std::set<std::string>::set[abi:ne200100](v217, v485, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v633, v218, v217);
    std::string::basic_string[abi:ne200100]<0>(v215, "SnippetUI.PrimaryHeader_Rich");
    std::string::basic_string[abi:ne200100]<0>(v483, "text_1");
    std::set<std::string>::set[abi:ne200100](v214, v483, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v634, v215, v214);
    std::string::basic_string[abi:ne200100]<0>(v212, "SnippetUI.PrimaryHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v481, "text_1");
    std::set<std::string>::set[abi:ne200100](v211, v481, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v635, v212, v211);
    std::string::basic_string[abi:ne200100]<0>(v209, "SnippetUI.Reference_Button");
    std::string::basic_string[abi:ne200100]<0>(v479, "label");
    std::set<std::string>::set[abi:ne200100](v208, v479, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v636, v209, v208);
    std::string::basic_string[abi:ne200100]<0>(v206, "SnippetUI.Reference_Footnote");
    std::string::basic_string[abi:ne200100]<0>(v477, "text_1");
    std::set<std::string>::set[abi:ne200100](v205, v477, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v637, v206, v205);
    std::string::basic_string[abi:ne200100]<0>(v203, "SnippetUI.Reference_Logo");
    std::string::basic_string[abi:ne200100]<0>(v475, "thumbnail");
    std::set<std::string>::set[abi:ne200100](v202, v475, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v638, v203, v202);
    std::string::basic_string[abi:ne200100]<0>(v200, "SnippetUI.Reference_Rich");
    std::string::basic_string[abi:ne200100]<0>(v473, "text_1");
    std::set<std::string>::set[abi:ne200100](v199, v473, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v639, v200, v199);
    std::string::basic_string[abi:ne200100]<0>(v197, "SnippetUI.Reference_Standard");
    std::string::basic_string[abi:ne200100]<0>(v471, "text_1");
    std::set<std::string>::set[abi:ne200100](v196, v471, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v640, v197, v196);
    std::string::basic_string[abi:ne200100]<0>(v194, "SnippetUI.Response.Group");
    std::string::basic_string[abi:ne200100]<0>(v469, "components");
    std::string::basic_string[abi:ne200100]<0>(v470, "id");
    std::set<std::string>::set[abi:ne200100](v193, v469, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v641, v194, v193);
    std::string::basic_string[abi:ne200100]<0>(v191, "SnippetUI.Response.Section");
    std::string::basic_string[abi:ne200100]<0>(v466, "component_list");
    std::string::basic_string[abi:ne200100]<0>(v467, "is_hidden_on_idioms");
    std::string::basic_string[abi:ne200100]<0>(v468, "level_of_detail");
    std::set<std::string>::set[abi:ne200100](v190, v466, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v642, v191, v190);
    std::string::basic_string[abi:ne200100]<0>(v188, "SnippetUI.Response");
    std::string::basic_string[abi:ne200100]<0>(v464, "hide_redacted_elements");
    std::string::basic_string[abi:ne200100]<0>(v465, "sections");
    std::set<std::string>::set[abi:ne200100](v187, v464, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v643, v188, v187);
    std::string::basic_string[abi:ne200100]<0>(v185, "SnippetUI.Sash_Standard");
    std::string::basic_string[abi:ne200100]<0>(v462, "title");
    std::set<std::string>::set[abi:ne200100](v184, v462, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v644, v185, v184);
    std::string::basic_string[abi:ne200100]<0>(v182, "SnippetUI.SecondaryHeader_Emphasized");
    std::string::basic_string[abi:ne200100]<0>(v460, "text_1");
    std::set<std::string>::set[abi:ne200100](v181, v460, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v645, v182, v181);
    std::string::basic_string[abi:ne200100]<0>(v179, "SnippetUI.SecondaryHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v458, "text_1");
    std::set<std::string>::set[abi:ne200100](v178, v458, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v646, v179, v178);
    std::string::basic_string[abi:ne200100]<0>(v176, "SnippetUI.SectionHeader_Rich");
    std::string::basic_string[abi:ne200100]<0>(v456, "text_1");
    std::set<std::string>::set[abi:ne200100](v175, v456, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v647, v176, v175);
    std::string::basic_string[abi:ne200100]<0>(v173, "SnippetUI.SectionHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v454, "text_1");
    std::set<std::string>::set[abi:ne200100](v172, v454, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v648, v173, v172);
    std::string::basic_string[abi:ne200100]<0>(v170, "SnippetUI.SimpleItem_Player");
    std::string::basic_string[abi:ne200100]<0>(v452, "player");
    std::string::basic_string[abi:ne200100]<0>(v453, "text_1");
    std::set<std::string>::set[abi:ne200100](v169, v452, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v649, v170, v169);
    std::string::basic_string[abi:ne200100]<0>(v167, "SnippetUI.SimpleItem_ReverseRich");
    std::string::basic_string[abi:ne200100]<0>(v450, "text_1");
    std::set<std::string>::set[abi:ne200100](v166, v450, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v650, v167, v166);
    std::string::basic_string[abi:ne200100]<0>(v164, "SnippetUI.SimpleItem_Rich");
    std::string::basic_string[abi:ne200100]<0>(v448, "text_1");
    std::set<std::string>::set[abi:ne200100](v163, v448, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v651, v164, v163);
    std::string::basic_string[abi:ne200100]<0>(v161, "SnippetUI.SimpleItem_RichSearchResult");
    std::string::basic_string[abi:ne200100]<0>(v446, "text_1");
    std::set<std::string>::set[abi:ne200100](v160, v446, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v652, v161, v160);
    std::string::basic_string[abi:ne200100]<0>(v158, "SnippetUI.SimpleItem_Standard");
    std::string::basic_string[abi:ne200100]<0>(v444, "text_1");
    std::set<std::string>::set[abi:ne200100](v157, v444, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v653, v158, v157);
    std::string::basic_string[abi:ne200100]<0>(v155, "SnippetUI.SimpleItem_Visual");
    std::string::basic_string[abi:ne200100]<0>(v442, "thumbnails");
    std::set<std::string>::set[abi:ne200100](v154, v442, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v654, v155, v154);
    std::string::basic_string[abi:ne200100]<0>(v152, "SnippetUI.Slider");
    std::string::basic_string[abi:ne200100]<0>(v439, "identifier");
    std::string::basic_string[abi:ne200100]<0>(v440, "maximum");
    std::string::basic_string[abi:ne200100]<0>(v441, "minimum");
    std::set<std::string>::set[abi:ne200100](v151, v439, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v655, v152, v151);
    std::string::basic_string[abi:ne200100]<0>(v149, "SnippetUI.StandardPlayerButton");
    std::string::basic_string[abi:ne200100]<0>(v437, "pause_action");
    std::string::basic_string[abi:ne200100]<0>(v438, "play_action");
    std::set<std::string>::set[abi:ne200100](v148, v437, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v656, v149, v148);
    std::string::basic_string[abi:ne200100]<0>(v146, "SnippetUI.StatusIndicator_Cancelled");
    std::string::basic_string[abi:ne200100]<0>(v435, "text");
    std::set<std::string>::set[abi:ne200100](v145, v435, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v657, v146, v145);
    std::string::basic_string[abi:ne200100]<0>(v143, "SnippetUI.StatusIndicator_Error");
    std::string::basic_string[abi:ne200100]<0>(v433, "text");
    std::set<std::string>::set[abi:ne200100](v142, v433, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v658, v143, v142);
    std::string::basic_string[abi:ne200100]<0>(v140, "SnippetUI.StatusIndicator_InProgress");
    std::string::basic_string[abi:ne200100]<0>(v431, "text");
    std::set<std::string>::set[abi:ne200100](v139, v431, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v659, v140, v139);
    std::string::basic_string[abi:ne200100]<0>(v137, "SnippetUI.StatusIndicator_Success");
    std::string::basic_string[abi:ne200100]<0>(v429, "text");
    std::set<std::string>::set[abi:ne200100](v136, v429, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v660, v137, v136);
    std::string::basic_string[abi:ne200100]<0>(v134, "SnippetUI.SummaryItem_Button");
    std::string::basic_string[abi:ne200100]<0>(v427, "button_1");
    std::string::basic_string[abi:ne200100]<0>(v428, "text_1");
    std::set<std::string>::set[abi:ne200100](v133, v427, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v661, v134, v133);
    std::string::basic_string[abi:ne200100]<0>(v131, "SnippetUI.SummaryItem_DetailedText");
    std::string::basic_string[abi:ne200100]<0>(v425, "text_1");
    std::string::basic_string[abi:ne200100]<0>(v426, "text_3");
    std::set<std::string>::set[abi:ne200100](v130, v425, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v662, v131, v130);
    std::string::basic_string[abi:ne200100]<0>(v128, "SnippetUI.SummaryItem_LargeText");
    std::string::basic_string[abi:ne200100]<0>(v423, "text_1");
    std::set<std::string>::set[abi:ne200100](v127, v423, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v663, v128, v127);
    std::string::basic_string[abi:ne200100]<0>(v125, "SnippetUI.SummaryItem_Pair");
    std::string::basic_string[abi:ne200100]<0>(v421, "text_4");
    std::string::basic_string[abi:ne200100]<0>(v422, "text_6");
    std::set<std::string>::set[abi:ne200100](v124, v421, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v664, v125, v124);
    std::string::basic_string[abi:ne200100]<0>(v122, "SnippetUI.SummaryItem_PairNumber");
    std::string::basic_string[abi:ne200100]<0>(v419, "number_1");
    std::string::basic_string[abi:ne200100]<0>(v420, "number_2");
    std::set<std::string>::set[abi:ne200100](v121, v419, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v665, v122, v121);
    std::string::basic_string[abi:ne200100]<0>(v119, "SnippetUI.SummaryItem_PairNumberV2");
    std::string::basic_string[abi:ne200100]<0>(v417, "number_1");
    std::string::basic_string[abi:ne200100]<0>(v418, "number_2");
    std::set<std::string>::set[abi:ne200100](v118, v417, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v666, v119, v118);
    std::string::basic_string[abi:ne200100]<0>(v116, "SnippetUI.SummaryItem_PairV2");
    std::string::basic_string[abi:ne200100]<0>(v414, "text_1");
    std::string::basic_string[abi:ne200100]<0>(v415, "thumbnail_1");
    std::string::basic_string[abi:ne200100]<0>(v416, "thumbnail_2");
    std::set<std::string>::set[abi:ne200100](v115, v414, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v667, v116, v115);
    std::string::basic_string[abi:ne200100]<0>(v113, "SnippetUI.SummaryItem_Player");
    std::string::basic_string[abi:ne200100]<0>(v412, "player");
    std::string::basic_string[abi:ne200100]<0>(v413, "text_1");
    std::set<std::string>::set[abi:ne200100](v112, v412, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v668, v113, v112);
    std::string::basic_string[abi:ne200100]<0>(v110, "SnippetUI.SummaryItem_ShortNumber");
    std::string::basic_string[abi:ne200100]<0>(v410, "number");
    std::string::basic_string[abi:ne200100]<0>(v411, "text_2");
    std::set<std::string>::set[abi:ne200100](v109, v410, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v669, v110, v109);
    std::string::basic_string[abi:ne200100]<0>(v107, "SnippetUI.SummaryItem_Standard");
    std::string::basic_string[abi:ne200100]<0>(v408, "text_1");
    std::set<std::string>::set[abi:ne200100](v106, v408, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v670, v107, v106);
    std::string::basic_string[abi:ne200100]<0>(v104, "SnippetUI.SummaryItem_Switch");
    std::string::basic_string[abi:ne200100]<0>(v406, "switch");
    std::string::basic_string[abi:ne200100]<0>(v407, "text_1");
    std::set<std::string>::set[abi:ne200100](v103, v406, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v671, v104, v103);
    std::string::basic_string[abi:ne200100]<0>(v101, "SnippetUI.SummaryItem_SwitchV2");
    std::string::basic_string[abi:ne200100]<0>(v404, "switch");
    std::string::basic_string[abi:ne200100]<0>(v405, "text_1");
    std::set<std::string>::set[abi:ne200100](v100, v404, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v672, v101, v100);
    std::string::basic_string[abi:ne200100]<0>(v98, "SnippetUI.SummaryItem_Text");
    std::string::basic_string[abi:ne200100]<0>(v402, "text_2");
    std::set<std::string>::set[abi:ne200100](v97, v402, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v673, v98, v97);
    std::string::basic_string[abi:ne200100]<0>(v95, "SnippetUI.Switch");
    std::string::basic_string[abi:ne200100]<0>(v400, "identifier");
    std::set<std::string>::set[abi:ne200100](v94, v400, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v674, v95, v94);
    std::string::basic_string[abi:ne200100]<0>(v92, "SnippetUI.SystemText_ClarificationTitle");
    std::string::basic_string[abi:ne200100]<0>(v398, "text_1");
    std::set<std::string>::set[abi:ne200100](v91, v398, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v675, v92, v91);
    std::string::basic_string[abi:ne200100]<0>(v89, "SnippetUI.Table.Header");
    std::string::basic_string[abi:ne200100]<0>(v396, "cells");
    std::set<std::string>::set[abi:ne200100](v88, v396, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v676, v89, v88);
    std::string::basic_string[abi:ne200100]<0>(v86, "SnippetUI.Table.Row");
    std::string::basic_string[abi:ne200100]<0>(v394, "cells");
    std::set<std::string>::set[abi:ne200100](v85, v394, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v677, v86, v85);
    std::string::basic_string[abi:ne200100]<0>(v83, "SnippetUI.Table");
    std::string::basic_string[abi:ne200100]<0>(v391, "columns");
    std::string::basic_string[abi:ne200100]<0>(v392, "rows");
    std::string::basic_string[abi:ne200100]<0>(v393, "separator_lines");
    std::set<std::string>::set[abi:ne200100](v82, v391, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v678, v83, v82);
    std::string::basic_string[abi:ne200100]<0>(v80, "SnippetUI.TertiaryHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v389, "text_1");
    std::set<std::string>::set[abi:ne200100](v79, v389, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v679, v80, v79);
    std::string::basic_string[abi:ne200100]<0>(v77, "SnippetUI.TextElement.Font.SystemFont");
    std::string::basic_string[abi:ne200100]<0>(v386, "design");
    std::string::basic_string[abi:ne200100]<0>(v387, "size");
    std::string::basic_string[abi:ne200100]<0>(v388, "weight");
    std::set<std::string>::set[abi:ne200100](v76, v386, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v680, v77, v76);
    std::string::basic_string[abi:ne200100]<0>(v74, "SnippetUI.TextElement.Font");
    std::string::basic_string[abi:ne200100]<0>(v384, "value");
    std::set<std::string>::set[abi:ne200100](v73, v384, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v681, v74, v73);
    std::string::basic_string[abi:ne200100]<0>(v71, "SnippetUI.TextElement.FontWeight");
    std::string::basic_string[abi:ne200100]<0>(v382, "value");
    std::set<std::string>::set[abi:ne200100](v70, v382, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v682, v71, v70);
    std::string::basic_string[abi:ne200100]<0>(v68, "SnippetUI.TextElement");
    std::string::basic_string[abi:ne200100]<0>(v380, "value");
    std::set<std::string>::set[abi:ne200100](v67, v380, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v683, v68, v67);
    std::string::basic_string[abi:ne200100]<0>(v65, "SnippetUI.TextInput");
    std::string::basic_string[abi:ne200100]<0>(v378, "identifier");
    std::set<std::string>::set[abi:ne200100](v64, v378, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v684, v65, v64);
    std::string::basic_string[abi:ne200100]<0>(v62, "SnippetUI.TextProperty");
    std::string::basic_string[abi:ne200100]<0>(v376, "text_elements");
    std::set<std::string>::set[abi:ne200100](v61, v376, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v685, v62, v61);
    std::string::basic_string[abi:ne200100]<0>(v59, "SnippetUI.VisualElement");
    std::string::basic_string[abi:ne200100]<0>(v374, "element");
    std::set<std::string>::set[abi:ne200100](v58, v374, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v686, v59, v58);
    std::string::basic_string[abi:ne200100]<0>(v56, "SnippetUI.VisualProperty");
    std::string::basic_string[abi:ne200100]<0>(v372, "visuals");
    std::set<std::string>::set[abi:ne200100](v55, v372, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v687, v56, v55);
    std::string::basic_string[abi:ne200100]<0>(v53, "SnippetUI.Visualization_Chart");
    std::string::basic_string[abi:ne200100]<0>(v370, "visual");
    std::set<std::string>::set[abi:ne200100](v52, v370, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v688, v53, v52);
    std::string::basic_string[abi:ne200100]<0>(v50, "SnippetUI.Visualization_Image");
    std::string::basic_string[abi:ne200100]<0>(v368, "visual");
    std::set<std::string>::set[abi:ne200100](v49, v368, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v689, v50, v49);
    std::string::basic_string[abi:ne200100]<0>(v47, "SnippetUI.Visualization_Map");
    std::string::basic_string[abi:ne200100]<0>(v366, "map_property");
    std::set<std::string>::set[abi:ne200100](v46, v366, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v690, v47, v46);
    v8 = v691;
    std::string::basic_string[abi:ne200100]<0>(v44, "SnippetUI.WatchListButton");
    std::string::basic_string[abi:ne200100]<0>(__p, "canonical_id");
    std::set<std::string>::set[abi:ne200100](v43, __p, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v691, v44, v43);
    std::map<std::string const,std::set<std::string> const,std::less<std::string const>,std::allocator<std::pair<std::string const,std::set<std::string> const>>>::map[abi:ne200100](v585, 107);
    v9 = -5136;
    do
    {
      Category::~Category(v8);
      v8 -= 6;
      v9 += 48;
    }

    while (v9);
    std::__tree<std::string>::destroy(v43, v43[1]);
    if (v365 < 0)
    {
      operator delete(__p[0]);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    std::__tree<std::string>::destroy(v46, v46[1]);
    if (v367 < 0)
    {
      operator delete(v366[0]);
    }

    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    std::__tree<std::string>::destroy(v49, v49[1]);
    if (v369 < 0)
    {
      operator delete(v368[0]);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    std::__tree<std::string>::destroy(v52, v52[1]);
    if (v371 < 0)
    {
      operator delete(v370[0]);
    }

    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    std::__tree<std::string>::destroy(v55, v55[1]);
    if (v373 < 0)
    {
      operator delete(v372[0]);
    }

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    std::__tree<std::string>::destroy(v58, v58[1]);
    if (v375 < 0)
    {
      operator delete(v374[0]);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    std::__tree<std::string>::destroy(v61, v61[1]);
    if (v377 < 0)
    {
      operator delete(v376[0]);
    }

    if (v63 < 0)
    {
      operator delete(v62[0]);
    }

    std::__tree<std::string>::destroy(v64, v64[1]);
    if (v379 < 0)
    {
      operator delete(v378[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    std::__tree<std::string>::destroy(v67, v67[1]);
    if (v381 < 0)
    {
      operator delete(v380[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    std::__tree<std::string>::destroy(v70, v70[1]);
    if (v383 < 0)
    {
      operator delete(v382[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    std::__tree<std::string>::destroy(v73, v73[1]);
    if (v385 < 0)
    {
      operator delete(v384[0]);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    std::__tree<std::string>::destroy(v76, v76[1]);
    for (i = 0; i != -72; i -= 24)
    {
      if (v388[i + 23] < 0)
      {
        operator delete(*&v388[i]);
      }
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    std::__tree<std::string>::destroy(v79, v79[1]);
    if (v390 < 0)
    {
      operator delete(v389[0]);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    std::__tree<std::string>::destroy(v82, v82[1]);
    for (j = 0; j != -72; j -= 24)
    {
      if (v393[j + 23] < 0)
      {
        operator delete(*&v393[j]);
      }
    }

    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    std::__tree<std::string>::destroy(v85, v85[1]);
    if (v395 < 0)
    {
      operator delete(v394[0]);
    }

    if (v87 < 0)
    {
      operator delete(v86[0]);
    }

    std::__tree<std::string>::destroy(v88, v88[1]);
    if (v397 < 0)
    {
      operator delete(v396[0]);
    }

    if (v90 < 0)
    {
      operator delete(v89[0]);
    }

    std::__tree<std::string>::destroy(v91, v91[1]);
    if (v399 < 0)
    {
      operator delete(v398[0]);
    }

    if (v93 < 0)
    {
      operator delete(v92[0]);
    }

    std::__tree<std::string>::destroy(v94, v94[1]);
    if (v401 < 0)
    {
      operator delete(v400[0]);
    }

    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    std::__tree<std::string>::destroy(v97, v97[1]);
    if (v403 < 0)
    {
      operator delete(v402[0]);
    }

    if (v99 < 0)
    {
      operator delete(v98[0]);
    }

    std::__tree<std::string>::destroy(v100, v100[1]);
    for (k = 0; k != -6; k -= 3)
    {
      if (v405[k * 8 + 23] < 0)
      {
        operator delete(v404[k + 3]);
      }
    }

    if (v102 < 0)
    {
      operator delete(v101[0]);
    }

    std::__tree<std::string>::destroy(v103, v103[1]);
    for (m = 0; m != -6; m -= 3)
    {
      if (v407[m * 8 + 23] < 0)
      {
        operator delete(v406[m + 3]);
      }
    }

    if (v105 < 0)
    {
      operator delete(v104[0]);
    }

    std::__tree<std::string>::destroy(v106, v106[1]);
    if (v409 < 0)
    {
      operator delete(v408[0]);
    }

    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    std::__tree<std::string>::destroy(v109, v109[1]);
    for (n = 0; n != -6; n -= 3)
    {
      if (v411[n * 8 + 23] < 0)
      {
        operator delete(v410[n + 3]);
      }
    }

    if (v111 < 0)
    {
      operator delete(v110[0]);
    }

    std::__tree<std::string>::destroy(v112, v112[1]);
    for (ii = 0; ii != -6; ii -= 3)
    {
      if (v413[ii * 8 + 23] < 0)
      {
        operator delete(v412[ii + 3]);
      }
    }

    if (v114 < 0)
    {
      operator delete(v113[0]);
    }

    std::__tree<std::string>::destroy(v115, v115[1]);
    for (jj = 0; jj != -72; jj -= 24)
    {
      if (v416[jj + 23] < 0)
      {
        operator delete(*&v416[jj]);
      }
    }

    if (v117 < 0)
    {
      operator delete(v116[0]);
    }

    std::__tree<std::string>::destroy(v118, v118[1]);
    for (kk = 0; kk != -6; kk -= 3)
    {
      if (v418[kk * 8 + 23] < 0)
      {
        operator delete(v417[kk + 3]);
      }
    }

    if (v120 < 0)
    {
      operator delete(v119[0]);
    }

    std::__tree<std::string>::destroy(v121, v121[1]);
    for (mm = 0; mm != -6; mm -= 3)
    {
      if (v420[mm * 8 + 23] < 0)
      {
        operator delete(v419[mm + 3]);
      }
    }

    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    std::__tree<std::string>::destroy(v124, v124[1]);
    for (nn = 0; nn != -6; nn -= 3)
    {
      if (v422[nn * 8 + 23] < 0)
      {
        operator delete(v421[nn + 3]);
      }
    }

    if (v126 < 0)
    {
      operator delete(v125[0]);
    }

    std::__tree<std::string>::destroy(v127, v127[1]);
    if (v424 < 0)
    {
      operator delete(v423[0]);
    }

    if (v129 < 0)
    {
      operator delete(v128[0]);
    }

    std::__tree<std::string>::destroy(v130, v130[1]);
    for (i1 = 0; i1 != -6; i1 -= 3)
    {
      if (v426[i1 * 8 + 23] < 0)
      {
        operator delete(v425[i1 + 3]);
      }
    }

    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    std::__tree<std::string>::destroy(v133, v133[1]);
    for (i2 = 0; i2 != -6; i2 -= 3)
    {
      if (v428[i2 * 8 + 23] < 0)
      {
        operator delete(v427[i2 + 3]);
      }
    }

    if (v135 < 0)
    {
      operator delete(v134[0]);
    }

    std::__tree<std::string>::destroy(v136, v136[1]);
    if (v430 < 0)
    {
      operator delete(v429[0]);
    }

    if (v138 < 0)
    {
      operator delete(v137[0]);
    }

    std::__tree<std::string>::destroy(v139, v139[1]);
    if (v432 < 0)
    {
      operator delete(v431[0]);
    }

    if (v141 < 0)
    {
      operator delete(v140[0]);
    }

    std::__tree<std::string>::destroy(v142, v142[1]);
    if (v434 < 0)
    {
      operator delete(v433[0]);
    }

    if (v144 < 0)
    {
      operator delete(v143[0]);
    }

    std::__tree<std::string>::destroy(v145, v145[1]);
    if (v436 < 0)
    {
      operator delete(v435[0]);
    }

    if (v147 < 0)
    {
      operator delete(v146[0]);
    }

    std::__tree<std::string>::destroy(v148, v148[1]);
    for (i3 = 0; i3 != -6; i3 -= 3)
    {
      if (v438[i3 * 8 + 23] < 0)
      {
        operator delete(v437[i3 + 3]);
      }
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    std::__tree<std::string>::destroy(v151, v151[1]);
    for (i4 = 0; i4 != -72; i4 -= 24)
    {
      if (v441[i4 + 23] < 0)
      {
        operator delete(*&v441[i4]);
      }
    }

    if (v153 < 0)
    {
      operator delete(v152[0]);
    }

    std::__tree<std::string>::destroy(v154, v154[1]);
    if (v443 < 0)
    {
      operator delete(v442[0]);
    }

    if (v156 < 0)
    {
      operator delete(v155[0]);
    }

    std::__tree<std::string>::destroy(v157, v157[1]);
    if (v445 < 0)
    {
      operator delete(v444[0]);
    }

    if (v159 < 0)
    {
      operator delete(v158[0]);
    }

    std::__tree<std::string>::destroy(v160, v160[1]);
    if (v447 < 0)
    {
      operator delete(v446[0]);
    }

    if (v162 < 0)
    {
      operator delete(v161[0]);
    }

    std::__tree<std::string>::destroy(v163, v163[1]);
    if (v449 < 0)
    {
      operator delete(v448[0]);
    }

    if (v165 < 0)
    {
      operator delete(v164[0]);
    }

    std::__tree<std::string>::destroy(v166, v166[1]);
    if (v451 < 0)
    {
      operator delete(v450[0]);
    }

    if (v168 < 0)
    {
      operator delete(v167[0]);
    }

    std::__tree<std::string>::destroy(v169, v169[1]);
    for (i5 = 0; i5 != -6; i5 -= 3)
    {
      if (v453[i5 * 8 + 23] < 0)
      {
        operator delete(v452[i5 + 3]);
      }
    }

    if (v171 < 0)
    {
      operator delete(v170[0]);
    }

    std::__tree<std::string>::destroy(v172, v172[1]);
    if (v455 < 0)
    {
      operator delete(v454[0]);
    }

    if (v174 < 0)
    {
      operator delete(v173[0]);
    }

    std::__tree<std::string>::destroy(v175, v175[1]);
    if (v457 < 0)
    {
      operator delete(v456[0]);
    }

    if (v177 < 0)
    {
      operator delete(v176[0]);
    }

    std::__tree<std::string>::destroy(v178, v178[1]);
    if (v459 < 0)
    {
      operator delete(v458[0]);
    }

    if (v180 < 0)
    {
      operator delete(v179[0]);
    }

    std::__tree<std::string>::destroy(v181, v181[1]);
    if (v461 < 0)
    {
      operator delete(v460[0]);
    }

    if (v183 < 0)
    {
      operator delete(v182[0]);
    }

    std::__tree<std::string>::destroy(v184, v184[1]);
    if (v463 < 0)
    {
      operator delete(v462[0]);
    }

    if (v186 < 0)
    {
      operator delete(v185[0]);
    }

    std::__tree<std::string>::destroy(v187, v187[1]);
    for (i6 = 0; i6 != -6; i6 -= 3)
    {
      if (v465[i6 * 8 + 23] < 0)
      {
        operator delete(v464[i6 + 3]);
      }
    }

    if (v189 < 0)
    {
      operator delete(v188[0]);
    }

    std::__tree<std::string>::destroy(v190, v190[1]);
    for (i7 = 0; i7 != -72; i7 -= 24)
    {
      if (v468[i7 + 23] < 0)
      {
        operator delete(*&v468[i7]);
      }
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    std::__tree<std::string>::destroy(v193, v193[1]);
    for (i8 = 0; i8 != -6; i8 -= 3)
    {
      if (v470[i8 * 8 + 23] < 0)
      {
        operator delete(v469[i8 + 3]);
      }
    }

    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    std::__tree<std::string>::destroy(v196, v196[1]);
    if (v472 < 0)
    {
      operator delete(v471[0]);
    }

    if (v198 < 0)
    {
      operator delete(v197[0]);
    }

    std::__tree<std::string>::destroy(v199, v199[1]);
    if (v474 < 0)
    {
      operator delete(v473[0]);
    }

    if (v201 < 0)
    {
      operator delete(v200[0]);
    }

    std::__tree<std::string>::destroy(v202, v202[1]);
    if (v476 < 0)
    {
      operator delete(v475[0]);
    }

    if (v204 < 0)
    {
      operator delete(v203[0]);
    }

    std::__tree<std::string>::destroy(v205, v205[1]);
    if (v478 < 0)
    {
      operator delete(v477[0]);
    }

    if (v207 < 0)
    {
      operator delete(v206[0]);
    }

    std::__tree<std::string>::destroy(v208, v208[1]);
    if (v480 < 0)
    {
      operator delete(v479[0]);
    }

    if (v210 < 0)
    {
      operator delete(v209[0]);
    }

    std::__tree<std::string>::destroy(v211, v211[1]);
    if (v482 < 0)
    {
      operator delete(v481[0]);
    }

    if (v213 < 0)
    {
      operator delete(v212[0]);
    }

    std::__tree<std::string>::destroy(v214, v214[1]);
    if (v484 < 0)
    {
      operator delete(v483[0]);
    }

    if (v216 < 0)
    {
      operator delete(v215[0]);
    }

    std::__tree<std::string>::destroy(v217, v217[1]);
    if (v486 < 0)
    {
      operator delete(v485[0]);
    }

    if (v219 < 0)
    {
      operator delete(v218[0]);
    }

    std::__tree<std::string>::destroy(v220, v220[1]);
    for (i9 = 0; i9 != -6; i9 -= 3)
    {
      if (v488[i9 * 8 + 23] < 0)
      {
        operator delete(v487[i9 + 3]);
      }
    }

    if (v222 < 0)
    {
      operator delete(v221[0]);
    }

    std::__tree<std::string>::destroy(v223, v223[1]);
    if (v490 < 0)
    {
      operator delete(v489[0]);
    }

    if (v225 < 0)
    {
      operator delete(v224[0]);
    }

    std::__tree<std::string>::destroy(v226, v226[1]);
    for (i10 = 0; i10 != -6; i10 -= 3)
    {
      if (v492[i10 * 8 + 23] < 0)
      {
        operator delete(v491[i10 + 3]);
      }
    }

    if (v228 < 0)
    {
      operator delete(v227[0]);
    }

    std::__tree<std::string>::destroy(v229, v229[1]);
    if (v494 < 0)
    {
      operator delete(v493[0]);
    }

    if (v231 < 0)
    {
      operator delete(v230[0]);
    }

    std::__tree<std::string>::destroy(v232, v232[1]);
    if (v496 < 0)
    {
      operator delete(v495[0]);
    }

    if (v234 < 0)
    {
      operator delete(v233[0]);
    }

    std::__tree<std::string>::destroy(v235, v235[1]);
    if (v498 < 0)
    {
      operator delete(v497[0]);
    }

    if (v237 < 0)
    {
      operator delete(v236[0]);
    }

    std::__tree<std::string>::destroy(v238, v238[1]);
    if (v500 < 0)
    {
      operator delete(v499[0]);
    }

    if (v240 < 0)
    {
      operator delete(v239[0]);
    }

    std::__tree<std::string>::destroy(v241, v241[1]);
    if (v502 < 0)
    {
      operator delete(v501[0]);
    }

    if (v243 < 0)
    {
      operator delete(v242[0]);
    }

    std::__tree<std::string>::destroy(v244, v244[1]);
    if (v504 < 0)
    {
      operator delete(v503[0]);
    }

    if (v246 < 0)
    {
      operator delete(v245[0]);
    }

    std::__tree<std::string>::destroy(v247, v247[1]);
    for (i11 = 0; i11 != -6; i11 -= 3)
    {
      if (v506[i11 * 8 + 23] < 0)
      {
        operator delete(v505[i11 + 3]);
      }
    }

    if (v249 < 0)
    {
      operator delete(v248[0]);
    }

    std::__tree<std::string>::destroy(v250, v250[1]);
    for (i12 = 0; i12 != -6; i12 -= 3)
    {
      if (v508[i12 * 8 + 23] < 0)
      {
        operator delete(v507[i12 + 3]);
      }
    }

    if (v252 < 0)
    {
      operator delete(v251[0]);
    }

    std::__tree<std::string>::destroy(v253, v253[1]);
    if (v510 < 0)
    {
      operator delete(v509[0]);
    }

    if (v255 < 0)
    {
      operator delete(v254[0]);
    }

    std::__tree<std::string>::destroy(v256, v256[1]);
    if (v512 < 0)
    {
      operator delete(v511[0]);
    }

    if (v258 < 0)
    {
      operator delete(v257[0]);
    }

    std::__tree<std::string>::destroy(v259, v259[1]);
    if (v514 < 0)
    {
      operator delete(v513[0]);
    }

    if (v261 < 0)
    {
      operator delete(v260[0]);
    }

    std::__tree<std::string>::destroy(v262, v262[1]);
    if (v516 < 0)
    {
      operator delete(v515[0]);
    }

    if (v264 < 0)
    {
      operator delete(v263[0]);
    }

    std::__tree<std::string>::destroy(v265, v265[1]);
    if (v518 < 0)
    {
      operator delete(v517[0]);
    }

    if (v267 < 0)
    {
      operator delete(v266[0]);
    }

    std::__tree<std::string>::destroy(v268, v268[1]);
    if (v520 < 0)
    {
      operator delete(v519[0]);
    }

    if (v270 < 0)
    {
      operator delete(v269[0]);
    }

    std::__tree<std::string>::destroy(v271, v271[1]);
    if (v522 < 0)
    {
      operator delete(v521[0]);
    }

    if (v273 < 0)
    {
      operator delete(v272[0]);
    }

    std::__tree<std::string>::destroy(v274, v274[1]);
    if (v524 < 0)
    {
      operator delete(v523[0]);
    }

    if (v276 < 0)
    {
      operator delete(v275[0]);
    }

    std::__tree<std::string>::destroy(v277, v277[1]);
    if (v526 < 0)
    {
      operator delete(v525[0]);
    }

    if (v279 < 0)
    {
      operator delete(v278[0]);
    }

    std::__tree<std::string>::destroy(v280, v280[1]);
    for (i13 = 0; i13 != -6; i13 -= 3)
    {
      if (v528[i13 * 8 + 23] < 0)
      {
        operator delete(v527[i13 + 3]);
      }
    }

    if (v282 < 0)
    {
      operator delete(v281[0]);
    }

    std::__tree<std::string>::destroy(v283, v283[1]);
    if (v530 < 0)
    {
      operator delete(v529[0]);
    }

    if (v285 < 0)
    {
      operator delete(v284[0]);
    }

    std::__tree<std::string>::destroy(v286, v286[1]);
    if (v532 < 0)
    {
      operator delete(v531[0]);
    }

    if (v288 < 0)
    {
      operator delete(v287[0]);
    }

    std::__tree<std::string>::destroy(v289, v289[1]);
    for (i14 = 0; i14 != -72; i14 -= 24)
    {
      if (v535[i14 + 23] < 0)
      {
        operator delete(*&v535[i14]);
      }
    }

    if (v291 < 0)
    {
      operator delete(v290[0]);
    }

    std::__tree<std::string>::destroy(v292, v292[1]);
    for (i15 = 0; i15 != -6; i15 -= 3)
    {
      if (v537[i15 * 8 + 23] < 0)
      {
        operator delete(v536[i15 + 3]);
      }
    }

    if (v294 < 0)
    {
      operator delete(v293[0]);
    }

    std::__tree<std::string>::destroy(v295, v295[1]);
    if (v539 < 0)
    {
      operator delete(v538[0]);
    }

    if (v297 < 0)
    {
      operator delete(v296[0]);
    }

    std::__tree<std::string>::destroy(v298, v298[1]);
    for (i16 = 0; i16 != -6; i16 -= 3)
    {
      if (v541[i16 * 8 + 23] < 0)
      {
        operator delete(v540[i16 + 3]);
      }
    }

    if (v300 < 0)
    {
      operator delete(v299[0]);
    }

    std::__tree<std::string>::destroy(v301, v301[1]);
    if (v543 < 0)
    {
      operator delete(v542[0]);
    }

    if (v303 < 0)
    {
      operator delete(v302[0]);
    }

    std::__tree<std::string>::destroy(v304, v304[1]);
    for (i17 = 0; i17 != -6; i17 -= 3)
    {
      if (v545[i17 * 8 + 23] < 0)
      {
        operator delete(v544[i17 + 3]);
      }
    }

    if (v306 < 0)
    {
      operator delete(v305[0]);
    }

    std::__tree<std::string>::destroy(v307, v307[1]);
    if (v547 < 0)
    {
      operator delete(v546[0]);
    }

    if (v309 < 0)
    {
      operator delete(v308[0]);
    }

    std::__tree<std::string>::destroy(v310, v310[1]);
    for (i18 = 0; i18 != -72; i18 -= 24)
    {
      if (v550[i18 + 23] < 0)
      {
        operator delete(*&v550[i18]);
      }
    }

    if (v312 < 0)
    {
      operator delete(v311[0]);
    }

    std::__tree<std::string>::destroy(v313, v313[1]);
    if (v552 < 0)
    {
      operator delete(v551[0]);
    }

    if (v315 < 0)
    {
      operator delete(v314[0]);
    }

    std::__tree<std::string>::destroy(v316, v316[1]);
    if (v554 < 0)
    {
      operator delete(v553[0]);
    }

    if (v318 < 0)
    {
      operator delete(v317[0]);
    }

    std::__tree<std::string>::destroy(v319, v319[1]);
    for (i19 = 0; i19 != -6; i19 -= 3)
    {
      if (v556[i19 * 8 + 23] < 0)
      {
        operator delete(v555[i19 + 3]);
      }
    }

    if (v321 < 0)
    {
      operator delete(v320[0]);
    }

    std::__tree<std::string>::destroy(v322, v322[1]);
    if (v558 < 0)
    {
      operator delete(v557[0]);
    }

    if (v324 < 0)
    {
      operator delete(v323[0]);
    }

    std::__tree<std::string>::destroy(v325, v325[1]);
    for (i20 = 0; i20 != -6; i20 -= 3)
    {
      if (v560[i20 * 8 + 23] < 0)
      {
        operator delete(v559[i20 + 3]);
      }
    }

    if (v327 < 0)
    {
      operator delete(v326[0]);
    }

    std::__tree<std::string>::destroy(v328, v328[1]);
    if (v562 < 0)
    {
      operator delete(v561[0]);
    }

    if (v330 < 0)
    {
      operator delete(v329[0]);
    }

    std::__tree<std::string>::destroy(v331, v331[1]);
    if (v564 < 0)
    {
      operator delete(v563[0]);
    }

    if (v333 < 0)
    {
      operator delete(v332[0]);
    }

    std::__tree<std::string>::destroy(v334, v334[1]);
    if (v566 < 0)
    {
      operator delete(v565[0]);
    }

    if (v336 < 0)
    {
      operator delete(v335[0]);
    }

    std::__tree<std::string>::destroy(v337, v337[1]);
    if (v568 < 0)
    {
      operator delete(v567[0]);
    }

    if (v339 < 0)
    {
      operator delete(v338[0]);
    }

    std::__tree<std::string>::destroy(v340, v340[1]);
    if (v570 < 0)
    {
      operator delete(v569[0]);
    }

    if (v342 < 0)
    {
      operator delete(v341[0]);
    }

    std::__tree<std::string>::destroy(v343, v343[1]);
    if (v572 < 0)
    {
      operator delete(v571[0]);
    }

    if (v345 < 0)
    {
      operator delete(v344[0]);
    }

    std::__tree<std::string>::destroy(v346, v346[1]);
    if (v574 < 0)
    {
      operator delete(v573[0]);
    }

    if (v348 < 0)
    {
      operator delete(v347[0]);
    }

    std::__tree<std::string>::destroy(v349, v349[1]);
    for (i21 = 0; i21 != -6; i21 -= 3)
    {
      if (v576[i21 * 8 + 23] < 0)
      {
        operator delete(v575[i21 + 3]);
      }
    }

    if (v351 < 0)
    {
      operator delete(v350[0]);
    }

    std::__tree<std::string>::destroy(v352, v352[1]);
    for (i22 = 0; i22 != -6; i22 -= 3)
    {
      if (v578[i22 * 8 + 23] < 0)
      {
        operator delete(v577[i22 + 3]);
      }
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    std::__tree<std::string>::destroy(v355, v355[1]);
    for (i23 = 0; i23 != -6; i23 -= 3)
    {
      if (v580[i23 * 8 + 23] < 0)
      {
        operator delete(v579[i23 + 3]);
      }
    }

    if (v357 < 0)
    {
      operator delete(v356[0]);
    }

    std::__tree<std::string>::destroy(v358, v358[1]);
    if (v582 < 0)
    {
      operator delete(v581[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    std::__tree<std::string>::destroy(v361, v361[1]);
    if (v584 < 0)
    {
      operator delete(v583[0]);
    }

    if (v363 < 0)
    {
      operator delete(v362[0]);
    }

    __cxa_atexit(std::map<std::string const,std::set<std::string> const,std::less<std::string const>,std::allocator<std::pair<std::string const,std::set<std::string> const>>>::~map[abi:ne200100], &siri::dialogengine::vcat::GetRequiredFields(std::string const&)::fullNameToRequiredFields, &dword_1BFB68000);
  }

  {
    qword_1EBE03ED0 = 0;
    qword_1EBE03EC8 = 0;
    siri::dialogengine::vcat::GetRequiredFields(std::string const&)::empty = &qword_1EBE03EC8;
    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &siri::dialogengine::vcat::GetRequiredFields(std::string const&)::empty, &dword_1BFB68000);
  }

  v2 = qword_1EBE03EA8;
  if (!qword_1EBE03EA8)
  {
    goto LABEL_13;
  }

  v3 = &qword_1EBE03EA8;
  do
  {
    v4 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>((v2 + 32), v1);
    if (v4)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      v3 = v2;
    }

    v2 = *(v2 + v5);
  }

  while (v2);
  if (v3 == &qword_1EBE03EA8 || std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v1, v3 + 4))
  {
LABEL_13:
    v3 = &qword_1EBE03EA8;
  }

  if (v3 == &qword_1EBE03EA8)
  {
    result = &siri::dialogengine::vcat::GetRequiredFields(std::string const&)::empty;
  }

  else
  {
    result = v3 + 7;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BFBE4C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, char *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, char *a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, char *a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, char *a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, char *a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  v90 = -5136;
  v91 = v86;
  do
  {
    Category::~Category(v91);
    v91 = (v92 - 48);
    v90 += 48;
  }

  while (v90);
  std::__tree<std::string>::destroy(&a9, a10);
  if (v87[1199] < 0)
  {
    operator delete(STACK[0x1410]);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::__tree<std::string>::destroy(&a18, a19);
  if (v87[1223] < 0)
  {
    operator delete(STACK[0x1428]);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::__tree<std::string>::destroy(&a27, a28);
  if (v87[1247] < 0)
  {
    operator delete(STACK[0x1440]);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::__tree<std::string>::destroy(&a36, a37);
  if (v87[1271] < 0)
  {
    operator delete(STACK[0x1458]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::__tree<std::string>::destroy(&a45, a46);
  if (v87[1295] < 0)
  {
    operator delete(STACK[0x1470]);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  std::__tree<std::string>::destroy(&a54, a55);
  if (v87[1319] < 0)
  {
    operator delete(STACK[0x1488]);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  std::__tree<std::string>::destroy(&a63, a64);
  if (v87[1343] < 0)
  {
    operator delete(STACK[0x14A0]);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  std::__tree<std::string>::destroy(&a72, a73);
  if (v87[1367] < 0)
  {
    operator delete(STACK[0x14B8]);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  std::__tree<std::string>::destroy(&a76, a77);
  if (v87[1391] < 0)
  {
    operator delete(STACK[0x14D0]);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  std::__tree<std::string>::destroy(&a80, a81);
  if (v87[1415] < 0)
  {
    operator delete(STACK[0x14E8]);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  std::__tree<std::string>::destroy(&a84, a85);
  if (v87[1439] < 0)
  {
    operator delete(STACK[0x1500]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a86);
  }

  std::__tree<std::string>::destroy(&STACK[0x210], STACK[0x218]);
  v93 = &STACK[0x155F];
  v94 = -72;
  v95 = &STACK[0x155F];
  while (1)
  {
    v96 = *v95;
    v95 -= 3;
    if (v96 < 0)
    {
      operator delete(*(v93 - 23));
    }

    v93 = v95;
    v94 += 24;
    if (!v94)
    {
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        operator delete(STACK[0x228]);
      }

      std::__tree<std::string>::destroy(&STACK[0x240], STACK[0x248]);
      if (v87[1535] < 0)
      {
        operator delete(STACK[0x1560]);
      }

      if (SLOBYTE(STACK[0x26F]) < 0)
      {
        operator delete(STACK[0x258]);
      }

      std::__tree<std::string>::destroy(&STACK[0x270], STACK[0x278]);
      v97 = &STACK[0x15BF];
      v98 = -72;
      v99 = &STACK[0x15BF];
      while (1)
      {
        v100 = *v99;
        v99 -= 3;
        if (v100 < 0)
        {
          operator delete(*(v97 - 23));
        }

        v97 = v99;
        v98 += 24;
        if (!v98)
        {
          if (SLOBYTE(STACK[0x29F]) < 0)
          {
            operator delete(STACK[0x288]);
          }

          std::__tree<std::string>::destroy(&STACK[0x2A0], STACK[0x2A8]);
          if (v87[1631] < 0)
          {
            operator delete(STACK[0x15C0]);
          }

          if (SLOBYTE(STACK[0x2CF]) < 0)
          {
            operator delete(STACK[0x2B8]);
          }

          std::__tree<std::string>::destroy(&STACK[0x2D0], STACK[0x2D8]);
          if (v87[1655] < 0)
          {
            operator delete(STACK[0x15D8]);
          }

          if (SLOBYTE(STACK[0x2FF]) < 0)
          {
            operator delete(STACK[0x2E8]);
          }

          std::__tree<std::string>::destroy(&STACK[0x300], STACK[0x308]);
          if (v87[1679] < 0)
          {
            operator delete(STACK[0x15F0]);
          }

          if (SLOBYTE(STACK[0x32F]) < 0)
          {
            operator delete(STACK[0x318]);
          }

          std::__tree<std::string>::destroy(&STACK[0x330], STACK[0x338]);
          if (v87[1703] < 0)
          {
            operator delete(STACK[0x1608]);
          }

          if (SLOBYTE(STACK[0x35F]) < 0)
          {
            operator delete(STACK[0x348]);
          }

          std::__tree<std::string>::destroy(&STACK[0x360], STACK[0x368]);
          if (v87[1727] < 0)
          {
            operator delete(STACK[0x1620]);
          }

          if (SLOBYTE(STACK[0x38F]) < 0)
          {
            operator delete(STACK[0x378]);
          }

          std::__tree<std::string>::destroy(&STACK[0x390], STACK[0x398]);
          v101 = &STACK[0x1667];
          v102 = -48;
          v103 = &STACK[0x1667];
          while (1)
          {
            v104 = *v103;
            v103 -= 3;
            if (v104 < 0)
            {
              operator delete(*(v101 - 23));
            }

            v101 = v103;
            v102 += 24;
            if (!v102)
            {
              if (SLOBYTE(STACK[0x3BF]) < 0)
              {
                operator delete(STACK[0x3A8]);
              }

              std::__tree<std::string>::destroy(&STACK[0x3C0], STACK[0x3C8]);
              v105 = &STACK[0x1697];
              v106 = -48;
              v107 = &STACK[0x1697];
              while (1)
              {
                v108 = *v107;
                v107 -= 3;
                if (v108 < 0)
                {
                  operator delete(*(v105 - 23));
                }

                v105 = v107;
                v106 += 24;
                if (!v106)
                {
                  if (SLOBYTE(STACK[0x3EF]) < 0)
                  {
                    operator delete(STACK[0x3D8]);
                  }

                  std::__tree<std::string>::destroy(&STACK[0x3F0], STACK[0x3F8]);
                  if (v87[1847] < 0)
                  {
                    operator delete(STACK[0x1698]);
                  }

                  if (SLOBYTE(STACK[0x41F]) < 0)
                  {
                    operator delete(STACK[0x408]);
                  }

                  std::__tree<std::string>::destroy(&STACK[0x420], STACK[0x428]);
                  v109 = &STACK[0x16DF];
                  v110 = -48;
                  v111 = &STACK[0x16DF];
                  while (1)
                  {
                    v112 = *v111;
                    v111 -= 3;
                    if (v112 < 0)
                    {
                      operator delete(*(v109 - 23));
                    }

                    v109 = v111;
                    v110 += 24;
                    if (!v110)
                    {
                      if (SLOBYTE(STACK[0x44F]) < 0)
                      {
                        operator delete(STACK[0x438]);
                      }

                      std::__tree<std::string>::destroy(&STACK[0x450], STACK[0x458]);
                      v113 = &STACK[0x170F];
                      v114 = -48;
                      v115 = &STACK[0x170F];
                      while (1)
                      {
                        v116 = *v115;
                        v115 -= 3;
                        if (v116 < 0)
                        {
                          operator delete(*(v113 - 23));
                        }

                        v113 = v115;
                        v114 += 24;
                        if (!v114)
                        {
                          if (SLOBYTE(STACK[0x47F]) < 0)
                          {
                            operator delete(STACK[0x468]);
                          }

                          std::__tree<std::string>::destroy(&STACK[0x480], STACK[0x488]);
                          v117 = &STACK[0x1757];
                          v118 = -72;
                          v119 = &STACK[0x1757];
                          while (1)
                          {
                            v120 = *v119;
                            v119 -= 3;
                            if (v120 < 0)
                            {
                              operator delete(*(v117 - 23));
                            }

                            v117 = v119;
                            v118 += 24;
                            if (!v118)
                            {
                              if (SLOBYTE(STACK[0x4AF]) < 0)
                              {
                                operator delete(STACK[0x498]);
                              }

                              std::__tree<std::string>::destroy(&STACK[0x4B0], STACK[0x4B8]);
                              v121 = &STACK[0x1787];
                              v122 = -48;
                              v123 = &STACK[0x1787];
                              while (1)
                              {
                                v124 = *v123;
                                v123 -= 3;
                                if (v124 < 0)
                                {
                                  operator delete(*(v121 - 23));
                                }

                                v121 = v123;
                                v122 += 24;
                                if (!v122)
                                {
                                  if (SLOBYTE(STACK[0x4DF]) < 0)
                                  {
                                    operator delete(STACK[0x4C8]);
                                  }

                                  std::__tree<std::string>::destroy(&STACK[0x4E0], STACK[0x4E8]);
                                  v125 = &STACK[0x17B7];
                                  v126 = -48;
                                  v127 = &STACK[0x17B7];
                                  while (1)
                                  {
                                    v128 = *v127;
                                    v127 -= 3;
                                    if (v128 < 0)
                                    {
                                      operator delete(*(v125 - 23));
                                    }

                                    v125 = v127;
                                    v126 += 24;
                                    if (!v126)
                                    {
                                      if (SLOBYTE(STACK[0x50F]) < 0)
                                      {
                                        operator delete(STACK[0x4F8]);
                                      }

                                      std::__tree<std::string>::destroy(&STACK[0x510], STACK[0x518]);
                                      v129 = &STACK[0x17E7];
                                      v130 = -48;
                                      v131 = &STACK[0x17E7];
                                      while (1)
                                      {
                                        v132 = *v131;
                                        v131 -= 3;
                                        if (v132 < 0)
                                        {
                                          operator delete(*(v129 - 23));
                                        }

                                        v129 = v131;
                                        v130 += 24;
                                        if (!v130)
                                        {
                                          if (SLOBYTE(STACK[0x53F]) < 0)
                                          {
                                            operator delete(STACK[0x528]);
                                          }

                                          std::__tree<std::string>::destroy(&STACK[0x540], STACK[0x548]);
                                          if (v87[2183] < 0)
                                          {
                                            operator delete(STACK[0x17E8]);
                                          }

                                          if (SLOBYTE(STACK[0x56F]) < 0)
                                          {
                                            operator delete(STACK[0x558]);
                                          }

                                          std::__tree<std::string>::destroy(&STACK[0x570], STACK[0x578]);
                                          v133 = &STACK[0x182F];
                                          v134 = -48;
                                          v135 = &STACK[0x182F];
                                          while (1)
                                          {
                                            v136 = *v135;
                                            v135 -= 3;
                                            if (v136 < 0)
                                            {
                                              operator delete(*(v133 - 23));
                                            }

                                            v133 = v135;
                                            v134 += 24;
                                            if (!v134)
                                            {
                                              if (SLOBYTE(STACK[0x59F]) < 0)
                                              {
                                                operator delete(STACK[0x588]);
                                              }

                                              std::__tree<std::string>::destroy(&STACK[0x5A0], STACK[0x5A8]);
                                              v137 = &STACK[0x185F];
                                              v138 = -48;
                                              v139 = &STACK[0x185F];
                                              while (1)
                                              {
                                                v140 = *v139;
                                                v139 -= 3;
                                                if (v140 < 0)
                                                {
                                                  operator delete(*(v137 - 23));
                                                }

                                                v137 = v139;
                                                v138 += 24;
                                                if (!v138)
                                                {
                                                  if (SLOBYTE(STACK[0x5CF]) < 0)
                                                  {
                                                    operator delete(STACK[0x5B8]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x5D0], STACK[0x5D8]);
                                                  if (v87[2303] < 0)
                                                  {
                                                    operator delete(STACK[0x1860]);
                                                  }

                                                  if (SLOBYTE(STACK[0x5FF]) < 0)
                                                  {
                                                    operator delete(STACK[0x5E8]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x600], STACK[0x608]);
                                                  if (v87[2327] < 0)
                                                  {
                                                    operator delete(STACK[0x1878]);
                                                  }

                                                  if (SLOBYTE(STACK[0x62F]) < 0)
                                                  {
                                                    operator delete(STACK[0x618]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x630], STACK[0x638]);
                                                  if (v87[2351] < 0)
                                                  {
                                                    operator delete(STACK[0x1890]);
                                                  }

                                                  if (SLOBYTE(STACK[0x65F]) < 0)
                                                  {
                                                    operator delete(STACK[0x648]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x660], STACK[0x668]);
                                                  if (v87[2375] < 0)
                                                  {
                                                    operator delete(STACK[0x18A8]);
                                                  }

                                                  if (SLOBYTE(STACK[0x68F]) < 0)
                                                  {
                                                    operator delete(STACK[0x678]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x690], STACK[0x698]);
                                                  v141 = &STACK[0x18EF];
                                                  v142 = -48;
                                                  v143 = &STACK[0x18EF];
                                                  while (1)
                                                  {
                                                    v144 = *v143;
                                                    v143 -= 3;
                                                    if (v144 < 0)
                                                    {
                                                      operator delete(*(v141 - 23));
                                                    }

                                                    v141 = v143;
                                                    v142 += 24;
                                                    if (!v142)
                                                    {
                                                      if (SLOBYTE(STACK[0x6BF]) < 0)
                                                      {
                                                        operator delete(STACK[0x6A8]);
                                                      }

                                                      std::__tree<std::string>::destroy(&STACK[0x6C0], STACK[0x6C8]);
                                                      v145 = &STACK[0x1937];
                                                      v146 = -72;
                                                      v147 = &STACK[0x1937];
                                                      while (1)
                                                      {
                                                        v148 = *v147;
                                                        v147 -= 3;
                                                        if (v148 < 0)
                                                        {
                                                          operator delete(*(v145 - 23));
                                                        }

                                                        v145 = v147;
                                                        v146 += 24;
                                                        if (!v146)
                                                        {
                                                          if (SLOBYTE(STACK[0x6EF]) < 0)
                                                          {
                                                            operator delete(STACK[0x6D8]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x6F0], STACK[0x6F8]);
                                                          if (v87[2519] < 0)
                                                          {
                                                            operator delete(STACK[0x1938]);
                                                          }

                                                          if (SLOBYTE(STACK[0x71F]) < 0)
                                                          {
                                                            operator delete(STACK[0x708]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x720], STACK[0x728]);
                                                          if (v87[2543] < 0)
                                                          {
                                                            operator delete(STACK[0x1950]);
                                                          }

                                                          if (SLOBYTE(STACK[0x74F]) < 0)
                                                          {
                                                            operator delete(STACK[0x738]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x750], STACK[0x758]);
                                                          if (v87[2567] < 0)
                                                          {
                                                            operator delete(STACK[0x1968]);
                                                          }

                                                          if (SLOBYTE(STACK[0x77F]) < 0)
                                                          {
                                                            operator delete(STACK[0x768]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x780], STACK[0x788]);
                                                          if (v87[2591] < 0)
                                                          {
                                                            operator delete(STACK[0x1980]);
                                                          }

                                                          if (SLOBYTE(STACK[0x7AF]) < 0)
                                                          {
                                                            operator delete(STACK[0x798]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x7B0], STACK[0x7B8]);
                                                          if (v87[2615] < 0)
                                                          {
                                                            operator delete(STACK[0x1998]);
                                                          }

                                                          if (SLOBYTE(STACK[0x7DF]) < 0)
                                                          {
                                                            operator delete(STACK[0x7C8]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x7E0], STACK[0x7E8]);
                                                          v149 = &STACK[0x19DF];
                                                          v150 = -48;
                                                          v151 = &STACK[0x19DF];
                                                          while (1)
                                                          {
                                                            v152 = *v151;
                                                            v151 -= 3;
                                                            if (v152 < 0)
                                                            {
                                                              operator delete(*(v149 - 23));
                                                            }

                                                            v149 = v151;
                                                            v150 += 24;
                                                            if (!v150)
                                                            {
                                                              if (SLOBYTE(STACK[0x80F]) < 0)
                                                              {
                                                                operator delete(STACK[0x7F8]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x810], STACK[0x818]);
                                                              if (v87[2687] < 0)
                                                              {
                                                                operator delete(STACK[0x19E0]);
                                                              }

                                                              if (SLOBYTE(STACK[0x83F]) < 0)
                                                              {
                                                                operator delete(STACK[0x828]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x840], STACK[0x848]);
                                                              if (v87[2711] < 0)
                                                              {
                                                                operator delete(STACK[0x19F8]);
                                                              }

                                                              if (SLOBYTE(STACK[0x86F]) < 0)
                                                              {
                                                                operator delete(STACK[0x858]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x870], STACK[0x878]);
                                                              if (v87[2735] < 0)
                                                              {
                                                                operator delete(STACK[0x1A10]);
                                                              }

                                                              if (SLOBYTE(STACK[0x89F]) < 0)
                                                              {
                                                                operator delete(STACK[0x888]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x8A0], STACK[0x8A8]);
                                                              if (v87[2759] < 0)
                                                              {
                                                                operator delete(STACK[0x1A28]);
                                                              }

                                                              if (SLOBYTE(STACK[0x8CF]) < 0)
                                                              {
                                                                operator delete(STACK[0x8B8]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x8D0], STACK[0x8D8]);
                                                              if (v87[2783] < 0)
                                                              {
                                                                operator delete(STACK[0x1A40]);
                                                              }

                                                              if (SLOBYTE(STACK[0x8FF]) < 0)
                                                              {
                                                                operator delete(STACK[0x8E8]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x900], STACK[0x908]);
                                                              v153 = &STACK[0x1A87];
                                                              v154 = -48;
                                                              v155 = &STACK[0x1A87];
                                                              while (1)
                                                              {
                                                                v156 = *v155;
                                                                v155 -= 3;
                                                                if (v156 < 0)
                                                                {
                                                                  operator delete(*(v153 - 23));
                                                                }

                                                                v153 = v155;
                                                                v154 += 24;
                                                                if (!v154)
                                                                {
                                                                  if (SLOBYTE(STACK[0x92F]) < 0)
                                                                  {
                                                                    operator delete(STACK[0x918]);
                                                                  }

                                                                  std::__tree<std::string>::destroy(&STACK[0x930], STACK[0x938]);
                                                                  v157 = &STACK[0x1ACF];
                                                                  v158 = -72;
                                                                  v159 = &STACK[0x1ACF];
                                                                  while (1)
                                                                  {
                                                                    v160 = *v159;
                                                                    v159 -= 3;
                                                                    if (v160 < 0)
                                                                    {
                                                                      operator delete(*(v157 - 23));
                                                                    }

                                                                    v157 = v159;
                                                                    v158 += 24;
                                                                    if (!v158)
                                                                    {
                                                                      if (SLOBYTE(STACK[0x95F]) < 0)
                                                                      {
                                                                        operator delete(STACK[0x948]);
                                                                      }

                                                                      std::__tree<std::string>::destroy(&STACK[0x960], STACK[0x968]);
                                                                      v161 = &STACK[0x1AFF];
                                                                      v162 = -48;
                                                                      v163 = &STACK[0x1AFF];
                                                                      while (1)
                                                                      {
                                                                        v164 = *v163;
                                                                        v163 -= 3;
                                                                        if (v164 < 0)
                                                                        {
                                                                          operator delete(*(v161 - 23));
                                                                        }

                                                                        v161 = v163;
                                                                        v162 += 24;
                                                                        if (!v162)
                                                                        {
                                                                          if (SLOBYTE(STACK[0x98F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0x978]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0x990], STACK[0x998]);
                                                                          if (v87[2975] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B00]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0x9BF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0x9A8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0x9C0], STACK[0x9C8]);
                                                                          if (v87[2999] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B18]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0x9EF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0x9D8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0x9F0], STACK[0x9F8]);
                                                                          if (v87[3023] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B30]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xA1F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA08]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xA20], STACK[0xA28]);
                                                                          if (v87[3047] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B48]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xA4F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA38]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xA50], STACK[0xA58]);
                                                                          if (v87[3071] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B60]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xA7F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA68]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xA80], STACK[0xA88]);
                                                                          if (v87[3095] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B78]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xAAF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA98]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xAB0], STACK[0xAB8]);
                                                                          if (v87[3119] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B90]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xADF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xAC8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xAE0], STACK[0xAE8]);
                                                                          if (v87[3143] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1BA8]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xB0F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xAF8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xB10], STACK[0xB18]);
                                                                          v165 = &STACK[0x1BEF];
                                                                          v166 = -48;
                                                                          v167 = &STACK[0x1BEF];
                                                                          while (1)
                                                                          {
                                                                            v168 = *v167;
                                                                            v167 -= 3;
                                                                            if (v168 < 0)
                                                                            {
                                                                              operator delete(*(v165 - 23));
                                                                            }

                                                                            v165 = v167;
                                                                            v166 += 24;
                                                                            if (!v166)
                                                                            {
                                                                              if (SLOBYTE(STACK[0xB3F]) < 0)
                                                                              {
                                                                                operator delete(STACK[0xB28]);
                                                                              }

                                                                              std::__tree<std::string>::destroy(&STACK[0xB40], STACK[0xB48]);
                                                                              if (v87[3215] < 0)
                                                                              {
                                                                                operator delete(STACK[0x1BF0]);
                                                                              }

                                                                              if (SLOBYTE(STACK[0xB6F]) < 0)
                                                                              {
                                                                                operator delete(STACK[0xB58]);
                                                                              }

                                                                              std::__tree<std::string>::destroy(&STACK[0xB70], STACK[0xB78]);
                                                                              v169 = &STACK[0x1C37];
                                                                              v170 = -48;
                                                                              v171 = &STACK[0x1C37];
                                                                              while (1)
                                                                              {
                                                                                v172 = *v171;
                                                                                v171 -= 3;
                                                                                if (v172 < 0)
                                                                                {
                                                                                  operator delete(*(v169 - 23));
                                                                                }

                                                                                v169 = v171;
                                                                                v170 += 24;
                                                                                if (!v170)
                                                                                {
                                                                                  if (SLOBYTE(STACK[0xB9F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xB88]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xBA0], STACK[0xBA8]);
                                                                                  if (v87[3287] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C38]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xBCF]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xBB8]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xBD0], STACK[0xBD8]);
                                                                                  if (v87[3311] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C50]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xBFF]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xBE8]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC00], STACK[0xC08]);
                                                                                  if (v87[3335] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C68]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xC2F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xC18]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC30], STACK[0xC38]);
                                                                                  if (v87[3359] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C80]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xC5F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xC48]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC60], STACK[0xC68]);
                                                                                  if (v87[3383] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C98]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xC8F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xC78]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC90], STACK[0xC98]);
                                                                                  if (v87[3407] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1CB0]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xCBF]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xCA8]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xCC0], STACK[0xCC8]);
                                                                                  v173 = &STACK[0x1CF7];
                                                                                  v174 = -48;
                                                                                  v175 = &STACK[0x1CF7];
                                                                                  while (1)
                                                                                  {
                                                                                    v176 = *v175;
                                                                                    v175 -= 3;
                                                                                    if (v176 < 0)
                                                                                    {
                                                                                      operator delete(*(v173 - 23));
                                                                                    }

                                                                                    v173 = v175;
                                                                                    v174 += 24;
                                                                                    if (!v174)
                                                                                    {
                                                                                      if (SLOBYTE(STACK[0xCEF]) < 0)
                                                                                      {
                                                                                        operator delete(STACK[0xCD8]);
                                                                                      }

                                                                                      std::__tree<std::string>::destroy(&STACK[0xCF0], STACK[0xCF8]);
                                                                                      v177 = &STACK[0x1D27];
                                                                                      v178 = -48;
                                                                                      v179 = &STACK[0x1D27];
                                                                                      while (1)
                                                                                      {
                                                                                        v180 = *v179;
                                                                                        v179 -= 3;
                                                                                        if (v180 < 0)
                                                                                        {
                                                                                          operator delete(*(v177 - 23));
                                                                                        }

                                                                                        v177 = v179;
                                                                                        v178 += 24;
                                                                                        if (!v178)
                                                                                        {
                                                                                          if (SLOBYTE(STACK[0xD1F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD08]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xD20], STACK[0xD28]);
                                                                                          if (v87[3527] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D28]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xD4F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD38]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xD50], STACK[0xD58]);
                                                                                          if (v87[3551] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D40]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xD7F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD68]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xD80], STACK[0xD88]);
                                                                                          if (v87[3575] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D58]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xDAF]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD98]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xDB0], STACK[0xDB8]);
                                                                                          if (v87[3599] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D70]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xDDF]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xDC8]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xDE0], STACK[0xDE8]);
                                                                                          if (v87[3623] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D88]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE0F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xDF8]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xE10], STACK[0xE18]);
                                                                                          if (v87[3647] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DA0]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE3F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xE28]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xE40], STACK[0xE48]);
                                                                                          if (v87[3671] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DB8]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE6F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xE58]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xE70], STACK[0xE78]);
                                                                                          if (v87[3695] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DD0]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE9F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xE88]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xEA0], STACK[0xEA8]);
                                                                                          if (v87[3719] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DE8]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xECF]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xEB8]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xED0], STACK[0xED8]);
                                                                                          v181 = &STACK[0x1E2F];
                                                                                          v182 = -48;
                                                                                          v183 = &STACK[0x1E2F];
                                                                                          while (1)
                                                                                          {
                                                                                            v184 = *v183;
                                                                                            v183 -= 3;
                                                                                            if (v184 < 0)
                                                                                            {
                                                                                              operator delete(*(v181 - 23));
                                                                                            }

                                                                                            v181 = v183;
                                                                                            v182 += 24;
                                                                                            if (!v182)
                                                                                            {
                                                                                              if (SLOBYTE(STACK[0xEFF]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0xEE8]);
                                                                                              }

                                                                                              std::__tree<std::string>::destroy(&STACK[0xF00], STACK[0xF08]);
                                                                                              if (v87[3791] < 0)
                                                                                              {
                                                                                                operator delete(STACK[0x1E30]);
                                                                                              }

                                                                                              if (SLOBYTE(STACK[0xF2F]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0xF18]);
                                                                                              }

                                                                                              std::__tree<std::string>::destroy(&STACK[0xF30], STACK[0xF38]);
                                                                                              if (v87[3815] < 0)
                                                                                              {
                                                                                                operator delete(STACK[0x1E48]);
                                                                                              }

                                                                                              if (SLOBYTE(STACK[0xF5F]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0xF48]);
                                                                                              }

                                                                                              std::__tree<std::string>::destroy(&STACK[0xF60], STACK[0xF68]);
                                                                                              v185 = &STACK[0x1EA7];
                                                                                              v186 = -72;
                                                                                              v187 = &STACK[0x1EA7];
                                                                                              while (1)
                                                                                              {
                                                                                                v188 = *v187;
                                                                                                v187 -= 3;
                                                                                                if (v188 < 0)
                                                                                                {
                                                                                                  operator delete(*(v185 - 23));
                                                                                                }

                                                                                                v185 = v187;
                                                                                                v186 += 24;
                                                                                                if (!v186)
                                                                                                {
                                                                                                  if (v87[23] < 0)
                                                                                                  {
                                                                                                    operator delete(STACK[0xF78]);
                                                                                                  }

                                                                                                  std::__tree<std::string>::destroy(&STACK[0xF90], STACK[0xF98]);
                                                                                                  v189 = &STACK[0x1ED7];
                                                                                                  v190 = -48;
                                                                                                  v191 = &STACK[0x1ED7];
                                                                                                  while (1)
                                                                                                  {
                                                                                                    v192 = *v191;
                                                                                                    v191 -= 3;
                                                                                                    if (v192 < 0)
                                                                                                    {
                                                                                                      operator delete(*(v189 - 23));
                                                                                                    }

                                                                                                    v189 = v191;
                                                                                                    v190 += 24;
                                                                                                    if (!v190)
                                                                                                    {
                                                                                                      if (v87[71] < 0)
                                                                                                      {
                                                                                                        operator delete(STACK[0xFA8]);
                                                                                                      }

                                                                                                      std::__tree<std::string>::destroy(&STACK[0xFC0], STACK[0xFC8]);
                                                                                                      if (v87[3959] < 0)
                                                                                                      {
                                                                                                        operator delete(STACK[0x1ED8]);
                                                                                                      }

                                                                                                      if (v87[119] < 0)
                                                                                                      {
                                                                                                        operator delete(STACK[0xFD8]);
                                                                                                      }

                                                                                                      std::__tree<std::string>::destroy(&STACK[0xFF0], STACK[0xFF8]);
                                                                                                      v193 = &STACK[0x1F1F];
                                                                                                      v194 = -48;
                                                                                                      v195 = &STACK[0x1F1F];
                                                                                                      while (1)
                                                                                                      {
                                                                                                        v196 = *v195;
                                                                                                        v195 -= 3;
                                                                                                        if (v196 < 0)
                                                                                                        {
                                                                                                          operator delete(*(v193 - 23));
                                                                                                        }

                                                                                                        v193 = v195;
                                                                                                        v194 += 24;
                                                                                                        if (!v194)
                                                                                                        {
                                                                                                          if (v87[167] < 0)
                                                                                                          {
                                                                                                            operator delete(STACK[0x1008]);
                                                                                                          }

                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1020], STACK[0x1028]);
                                                                                                          if (v87[4031] < 0)
                                                                                                          {
                                                                                                            operator delete(STACK[0x1F20]);
                                                                                                          }

                                                                                                          if (v87[215] < 0)
                                                                                                          {
                                                                                                            operator delete(STACK[0x1038]);
                                                                                                          }

                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1050], STACK[0x1058]);
                                                                                                          v197 = &STACK[0x1F67];
                                                                                                          v198 = -48;
                                                                                                          v199 = &STACK[0x1F67];
                                                                                                          while (1)
                                                                                                          {
                                                                                                            v200 = *v199;
                                                                                                            v199 -= 3;
                                                                                                            if (v200 < 0)
                                                                                                            {
                                                                                                              operator delete(*(v197 - 23));
                                                                                                            }

                                                                                                            v197 = v199;
                                                                                                            v198 += 24;
                                                                                                            if (!v198)
                                                                                                            {
                                                                                                              if (v87[263] < 0)
                                                                                                              {
                                                                                                                operator delete(STACK[0x1068]);
                                                                                                              }

                                                                                                              std::__tree<std::string>::destroy(&STACK[0x1080], STACK[0x1088]);
                                                                                                              if (v88[23] < 0)
                                                                                                              {
                                                                                                                operator delete(STACK[0x1F68]);
                                                                                                              }

                                                                                                              if (v87[311] < 0)
                                                                                                              {
                                                                                                                operator delete(STACK[0x1098]);
                                                                                                              }

                                                                                                              std::__tree<std::string>::destroy(&STACK[0x10B0], STACK[0x10B8]);
                                                                                                              v201 = &STACK[0x1FC7];
                                                                                                              v202 = -72;
                                                                                                              v203 = &STACK[0x1FC7];
                                                                                                              while (1)
                                                                                                              {
                                                                                                                v204 = *v203;
                                                                                                                v203 -= 3;
                                                                                                                if (v204 < 0)
                                                                                                                {
                                                                                                                  operator delete(*(v201 - 23));
                                                                                                                }

                                                                                                                v201 = v203;
                                                                                                                v202 += 24;
                                                                                                                if (!v202)
                                                                                                                {
                                                                                                                  if (v87[359] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x10C8]);
                                                                                                                  }

                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x10E0], STACK[0x10E8]);
                                                                                                                  if (v88[119] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x1FC8]);
                                                                                                                  }

                                                                                                                  if (v87[407] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x10F8]);
                                                                                                                  }

                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x1110], STACK[0x1118]);
                                                                                                                  if (v88[143] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x1FE0]);
                                                                                                                  }

                                                                                                                  if (v87[455] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x1128]);
                                                                                                                  }

                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x1140], STACK[0x1148]);
                                                                                                                  v205 = &STACK[0x2027];
                                                                                                                  v206 = -48;
                                                                                                                  v207 = &STACK[0x2027];
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    v208 = *v207;
                                                                                                                    v207 -= 3;
                                                                                                                    if (v208 < 0)
                                                                                                                    {
                                                                                                                      operator delete(*(v205 - 23));
                                                                                                                    }

                                                                                                                    v205 = v207;
                                                                                                                    v206 += 24;
                                                                                                                    if (!v206)
                                                                                                                    {
                                                                                                                      if (v87[503] < 0)
                                                                                                                      {
                                                                                                                        operator delete(STACK[0x1158]);
                                                                                                                      }

                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x1170], STACK[0x1178]);
                                                                                                                      if (v88[215] < 0)
                                                                                                                      {
                                                                                                                        operator delete(STACK[0x2028]);
                                                                                                                      }

                                                                                                                      if (v87[551] < 0)
                                                                                                                      {
                                                                                                                        operator delete(STACK[0x1188]);
                                                                                                                      }

                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x11A0], STACK[0x11A8]);
                                                                                                                      v209 = &STACK[0x206F];
                                                                                                                      v210 = -48;
                                                                                                                      v211 = &STACK[0x206F];
                                                                                                                      while (1)
                                                                                                                      {
                                                                                                                        v212 = *v211;
                                                                                                                        v211 -= 3;
                                                                                                                        if (v212 < 0)
                                                                                                                        {
                                                                                                                          operator delete(*(v209 - 23));
                                                                                                                        }

                                                                                                                        v209 = v211;
                                                                                                                        v210 += 24;
                                                                                                                        if (!v210)
                                                                                                                        {
                                                                                                                          if (v87[599] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x11B8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x11D0], STACK[0x11D8]);
                                                                                                                          if (v88[287] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x2070]);
                                                                                                                          }

                                                                                                                          if (v87[647] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x11E8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1200], STACK[0x1208]);
                                                                                                                          if (v88[311] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x2088]);
                                                                                                                          }

                                                                                                                          if (v87[695] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1218]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1230], STACK[0x1238]);
                                                                                                                          if (v88[335] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20A0]);
                                                                                                                          }

                                                                                                                          if (v87[743] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1248]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1260], STACK[0x1268]);
                                                                                                                          if (v88[359] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20B8]);
                                                                                                                          }

                                                                                                                          if (v87[791] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1278]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1290], STACK[0x1298]);
                                                                                                                          if (v88[383] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20D0]);
                                                                                                                          }

                                                                                                                          if (v87[839] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x12A8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x12C0], STACK[0x12C8]);
                                                                                                                          if (v88[407] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20E8]);
                                                                                                                          }

                                                                                                                          if (v87[887] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x12D8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x12F0], STACK[0x12F8]);
                                                                                                                          if (v88[431] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x2100]);
                                                                                                                          }

                                                                                                                          if (v87[935] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1308]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1320], STACK[0x1328]);
                                                                                                                          v213 = &STACK[0x2147];
                                                                                                                          v214 = -48;
                                                                                                                          v215 = &STACK[0x2147];
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            v216 = *v215;
                                                                                                                            v215 -= 3;
                                                                                                                            if (v216 < 0)
                                                                                                                            {
                                                                                                                              operator delete(*(v213 - 23));
                                                                                                                            }

                                                                                                                            v213 = v215;
                                                                                                                            v214 += 24;
                                                                                                                            if (!v214)
                                                                                                                            {
                                                                                                                              if (v87[983] < 0)
                                                                                                                              {
                                                                                                                                operator delete(STACK[0x1338]);
                                                                                                                              }

                                                                                                                              std::__tree<std::string>::destroy(&STACK[0x1350], STACK[0x1358]);
                                                                                                                              v217 = &STACK[0x2177];
                                                                                                                              v218 = -48;
                                                                                                                              v219 = &STACK[0x2177];
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                v220 = *v219;
                                                                                                                                v219 -= 3;
                                                                                                                                if (v220 < 0)
                                                                                                                                {
                                                                                                                                  operator delete(*(v217 - 23));
                                                                                                                                }

                                                                                                                                v217 = v219;
                                                                                                                                v218 += 24;
                                                                                                                                if (!v218)
                                                                                                                                {
                                                                                                                                  if (v87[1031] < 0)
                                                                                                                                  {
                                                                                                                                    operator delete(STACK[0x1368]);
                                                                                                                                  }

                                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x1380], STACK[0x1388]);
                                                                                                                                  v221 = &STACK[0x21A7];
                                                                                                                                  v222 = -48;
                                                                                                                                  v223 = &STACK[0x21A7];
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    v224 = *v223;
                                                                                                                                    v223 -= 3;
                                                                                                                                    if (v224 < 0)
                                                                                                                                    {
                                                                                                                                      operator delete(*(v221 - 23));
                                                                                                                                    }

                                                                                                                                    v221 = v223;
                                                                                                                                    v222 += 24;
                                                                                                                                    if (!v222)
                                                                                                                                    {
                                                                                                                                      if (v87[1079] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x1398]);
                                                                                                                                      }

                                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x13B0], STACK[0x13B8]);
                                                                                                                                      if (v88[599] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x21A8]);
                                                                                                                                      }

                                                                                                                                      if (v87[1127] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x13C8]);
                                                                                                                                      }

                                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x13E0], STACK[0x13E8]);
                                                                                                                                      if (v88[623] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x21C0]);
                                                                                                                                      }

                                                                                                                                      if (v87[1175] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x13F8]);
                                                                                                                                      }

                                                                                                                                      _Unwind_Resume(a1);
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
            }
          }
        }
      }
    }
  }
}

void sub_1BFBE772C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1578])
    {
      JUMPOUT(0x1BFBE7754);
    }
  }
}

void sub_1BFBE775C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1710])
    {
      JUMPOUT(0x1BFBE7784);
    }
  }
}

void sub_1BFBE778C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x18F0])
    {
      JUMPOUT(0x1BFBE77B4);
    }
  }
}

void sub_1BFBE77BC()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1A88])
    {
      JUMPOUT(0x1BFBE77E4);
    }
  }
}

void sub_1BFBE77EC()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1E60])
    {
      JUMPOUT(0x1BFBE7814);
    }
  }
}

void sub_1BFBE781C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1F80])
    {
      JUMPOUT(0x1BFBE7844);
    }
  }
}

void std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void siri::dialogengine::TemporaryVariable::~TemporaryVariable(siri::dialogengine::TemporaryVariable *this)
{
  siri::dialogengine::TemporaryVariable::RemoveFromContext(this);
  v2 = *(this + 15);
  if (v2)
  {
    if (*(v2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v2 + 8), *(v2 + 16));
      v2 = *(this + 15);
    }

    else
    {
      v3 = *(v2 + 8);
      __str.__r_.__value_.__r.__words[2] = *(v2 + 24);
      *&__str.__r_.__value_.__l.__data_ = v3;
    }

    std::string::operator=((v2 + 8), (this + 56));
    v4 = *this;
    v5 = *(this + 16);
    v11[0] = *(this + 15);
    v11[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::dialogengine::Context::AddVariable(v4, v11);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::string::operator=((*(this + 15) + 8), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v6 = *(this + 16);
  *(this + 15) = 0;
  *(this + 16) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *this = 0;
  v8 = *(this + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 14);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v10 = *(this + 3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void siri::dialogengine::TemporaryVariable::RemoveFromContext(siri::dialogengine::TemporaryVariable *this)
{
  if (*this)
  {
    v2 = *(this + 13);
    if (v2)
    {
      std::string::operator=((v2 + 8), (this + 56));
      v3 = *this;
      v4 = *(this + 13);
      v5 = *(this + 14);
      v6[0] = v4;
      v6[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::dialogengine::Context::RemoveVariable(v3, v6);
      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_1BFBE7A6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Descriptor::FindFieldByName(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 144);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = (v4 + 1);
    do
    {
      v6 = 5 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = v3[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = v6 ^ (16777619 * a1);
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6 ^ (16777619 * a1);
    if (v10 >= *&v9)
    {
      v13 = v10 % *&v9;
    }
  }

  else
  {
    v13 = (*&v9 - 1) & v10;
  }

  v14 = *(*v3 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (!*v14)
  {
    return 0;
  }

  while (1)
  {
    v16 = v15[1];
    if (v10 == v16)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v9)
      {
        v16 %= *&v9;
      }
    }

    else
    {
      v16 &= *&v9 - 1;
    }

    if (v16 != v13)
    {
      return 0;
    }

LABEL_25:
    v15 = *v15;
    if (!v15)
    {
      return 0;
    }
  }

  if (v15[2] != a1 || strcmp(v15[3], v4))
  {
    goto LABEL_25;
  }

  if (*(v15 + 8) != 2)
  {
    return 0;
  }

  if (*(v15[5] + 66))
  {
    return 0;
  }

  else
  {
    return v15[5];
  }
}

uint64_t google::protobuf::Reflection::HasField(const std::string::value_type ***this, const google::protobuf::Message *a2, const std::string::value_type **a3, uint64_t a4, const char *a5)
{
  v8 = *this;
  if (a3[10] != v8)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  if (*(a3 + 66) == 1)
  {
    v9 = (a2 + google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1)));
    v10 = *(a3 + 17);

    return google::protobuf::internal::ExtensionSet::Has(v9, v10);
  }

  else
  {
    v12 = a3[11];
    if (v12)
    {
      return *(a2 + *(this + 11) - 1431655764 * (&v12[-*(*(v12 + 2) + 48)] >> 4)) == *(a3 + 17);
    }

    else
    {

      return google::protobuf::Reflection::HasBit(this, a2, a3);
    }
  }
}

void siri::dialogengine::SetField(uint64_t a1, char *a2, const std::string::value_type ***a3, google::protobuf::FieldDescriptor *this, const std::string *a5)
{
  v128 = *MEMORY[0x1E69E9840];
  {
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[8],0>(__str);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[8],0>(v127);
    std::map<std::string,std::string>::map[abi:ne200100](siri::dialogengine::SetField(siri::dialogengine::Context *,google::protobuf::Message *,google::protobuf::Reflection const*,google::protobuf::FieldDescriptor const*,std::string const&)::sEnumSynonyms, &__str[0].__r_.__value_.__l.__data_, 2);
    for (i = 48; i != -48; i -= 48)
    {
      std::pair<std::string const,std::string>::~pair(&__str[i / 0x18]);
    }

    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], siri::dialogengine::SetField(siri::dialogengine::Context *,google::protobuf::Message *,google::protobuf::Reflection const*,google::protobuf::FieldDescriptor const*,std::string const&)::sEnumSynonyms, &dword_1BFB68000);
  }

  if (!a2 || !a3)
  {
    if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = a5;
    }

    else
    {
      v19 = a5->__r_.__value_.__r.__words[0];
    }

    siri::dialogengine::Log::Debug("Null value attempting to set field to '%s'", a2, v19);
    goto LABEL_19;
  }

  v10 = *(this + 15);
  v11 = *(this + 6);
  if (v11)
  {
    v122.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v121.__r_.__value_.__r.__words[0] = this;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      __str[0].__r_.__value_.__r.__words[0] = &v122;
      __str[0].__r_.__value_.__l.__size_ = &v121;
      __p.__r_.__value_.__r.__words[0] = __str;
      std::__call_once(v11, &__p, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v42 = siri::dialogengine::StringToUInt(a5, 0, 0);
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddUInt32(a3, a2, this, v42, v41);
          v44 = *(this + 1);
          if (*(v44 + 23) < 0)
          {
            v44 = *v44;
          }

          siri::dialogengine::Log::Debug("Added UInt32 to repeated field '%s': %u", v43, v44, v42);
        }

        else
        {
          google::protobuf::Reflection::SetUInt32(a3, a2, this, v42, v41);
          v78 = *(this + 1);
          if (*(v78 + 23) < 0)
          {
            v78 = *v78;
          }

          siri::dialogengine::Log::Debug("Set UInt32 field '%s' to %u", v77, v78, v42);
        }
      }

      else if (v12 == 4)
      {
        v52 = siri::dialogengine::StringToIntegralType<unsigned long long>(a5, 0, 0);
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddUInt64(a3, a2, this, v52, v51);
          v54 = *(this + 1);
          if (*(v54 + 23) < 0)
          {
            v54 = *v54;
          }

          siri::dialogengine::Log::Debug("Added UInt64 to repeated field '%s': %llu", v53, v54, v52);
        }

        else
        {
          google::protobuf::Reflection::SetUInt64(a3, a2, this, v52, v51);
          v82 = *(this + 1);
          if (*(v82 + 23) < 0)
          {
            v82 = *v82;
          }

          siri::dialogengine::Log::Debug("Set UInt64 field '%s' to %llu", v81, v82, v52);
        }
      }

      else
      {
        v15 = siri::dialogengine::StringToDouble(a5, 0);
        v16 = v15;
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddDouble(a3, a2, this, v15, v13, v14);
          v18 = *(this + 1);
          if (*(v18 + 23) < 0)
          {
            v18 = *v18;
          }

          siri::dialogengine::Log::Debug("Added Double to repeated field '%s': %g", v17, v18, *&v16);
        }

        else
        {
          google::protobuf::Reflection::SetDouble(a3, a2, this, v15, v13, v14);
          v80 = *(this + 1);
          if (*(v80 + 23) < 0)
          {
            v80 = *v80;
          }

          siri::dialogengine::Log::Debug("Set Double field '%s' to %g", v79, v80, *&v16);
        }
      }

      goto LABEL_19;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v23 = siri::dialogengine::StringToInt64(a5, 0, 0);
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddInt64(a3, a2, this, v23, v22);
          v25 = *(this + 1);
          if (*(v25 + 23) < 0)
          {
            v25 = *v25;
          }

          siri::dialogengine::Log::Debug("Added Int64 to repeated field '%s': %lld", v24, v25, v23);
        }

        else
        {
          google::protobuf::Reflection::SetInt64(a3, a2, this, v23, v22);
          v69 = *(this + 1);
          if (*(v69 + 23) < 0)
          {
            v69 = *v69;
          }

          siri::dialogengine::Log::Debug("Set Int64 field '%s' to %lld", v68, v69, v23);
        }

        goto LABEL_19;
      }

      goto LABEL_90;
    }

    v31 = siri::dialogengine::StringToInt(a5, 0, 0);
    if (v10 == 3)
    {
      google::protobuf::Reflection::AddInt32(a3, a2, this, v31, v30);
      v33 = *(this + 1);
      if (*(v33 + 23) < 0)
      {
        v33 = *v33;
      }

      siri::dialogengine::Log::Debug("Added Int32 to repeated field '%s': %d", v32, v33, v31);
    }

    else
    {
      google::protobuf::Reflection::SetInt32(a3, a2, this, v31, v30);
      v73 = *(this + 1);
      if (*(v73 + 23) < 0)
      {
        v73 = *v73;
      }

      siri::dialogengine::Log::Debug("Set Int32 field '%s' to %d", v72, v73, v31);
    }

    goto LABEL_19;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      v36 = siri::dialogengine::StringToDouble(a5, 0);
      v37 = v36;
      if (v10 == 3)
      {
        v38 = v36;
        google::protobuf::Reflection::AddFloat(a3, a2, this, v38, v34, v35);
        v40 = *(this + 1);
        if (*(v40 + 23) < 0)
        {
          v40 = *v40;
        }

        siri::dialogengine::Log::Debug("Added Float to repeated field '%s': %g", v39, v40, v37);
      }

      else
      {
        v74 = v36;
        google::protobuf::Reflection::SetFloat(a3, a2, this, v74, v34, v35);
        v76 = *(this + 1);
        if (*(v76 + 23) < 0)
        {
          v76 = *v76;
        }

        siri::dialogengine::Log::Debug("Set Float field '%s' to %g", v75, v76, v37);
      }
    }

    else
    {
      v27 = siri::dialogengine::StringToBool(a5);
      if (v10 == 3)
      {
        google::protobuf::Reflection::AddBool(a3, a2, this, v27, v26);
        v29 = *(this + 1);
        if (*(v29 + 23) < 0)
        {
          v29 = *v29;
        }

        siri::dialogengine::Log::Debug("Added Bool to repeated field '%s': %d", v28, v29, v27);
      }

      else
      {
        google::protobuf::Reflection::SetBool(a3, a2, this, v27, v26);
        v71 = *(this + 1);
        if (*(v71 + 23) < 0)
        {
          v71 = *v71;
        }

        siri::dialogengine::Log::Debug("Set Bool field '%s' to %d", v70, v71, v27);
      }
    }

    goto LABEL_19;
  }

  if (v12 == 8)
  {
    v45 = google::protobuf::FieldDescriptor::enum_type(this);
    if (!v45)
    {
      v83 = *(this + 1);
      std::operator+<char>();
      siri::dialogengine::Log::LogWithLevel(__str, 3u);
      goto LABEL_182;
    }

    siri::dialogengine::StringTrim(" \t\n\r", a5, __str);
    v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(siri::dialogengine::SetField(siri::dialogengine::Context *,google::protobuf::Message *,google::protobuf::Reflection const*,google::protobuf::FieldDescriptor const*,std::string const&)::sEnumSynonyms, __str);
    if (v46 != &siri::dialogengine::SetField(siri::dialogengine::Context *,google::protobuf::Message *,google::protobuf::Reflection const*,google::protobuf::FieldDescriptor const*,std::string const&)::sEnumSynonyms[1])
    {
      std::string::operator=(__str, (v46 + 56));
    }

    ValueByName = google::protobuf::EnumDescriptor::FindValueByName(v45, __str);
    if (!ValueByName)
    {
      std::operator+<char>();
      v98 = std::string::append(&v120, " for field '");
      v99 = *&v98->__r_.__value_.__l.__data_;
      v121.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
      *&v121.__r_.__value_.__l.__data_ = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      v100 = *(this + 1);
      v101 = *(v100 + 23);
      if (v101 >= 0)
      {
        v102 = *(this + 1);
      }

      else
      {
        v102 = *v100;
      }

      if (v101 >= 0)
      {
        v103 = *(v100 + 23);
      }

      else
      {
        v103 = *(v100 + 8);
      }

      v104 = std::string::append(&v121, v102, v103);
      v105 = *&v104->__r_.__value_.__l.__data_;
      v122.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
      *&v122.__r_.__value_.__l.__data_ = v105;
      v104->__r_.__value_.__l.__size_ = 0;
      v104->__r_.__value_.__r.__words[2] = 0;
      v104->__r_.__value_.__r.__words[0] = 0;
      v106 = std::string::append(&v122, "'");
      v107 = *&v106->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v107;
      v106->__r_.__value_.__l.__size_ = 0;
      v106->__r_.__value_.__r.__words[2] = 0;
      v106->__r_.__value_.__r.__words[0] = 0;
      siri::dialogengine::Context::AddValidationError(a1, &__p, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v122.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_182;
      }

      v108 = v120.__r_.__value_.__r.__words[0];
LABEL_181:
      operator delete(v108);
LABEL_182:
      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__data_);
      }

      goto LABEL_19;
    }

    if (v10 == 3)
    {
      google::protobuf::Reflection::AddEnum(a3, a2, this, ValueByName);
      v49 = *(this + 1);
      v50 = "Added to repeated enum '%s': %d";
      if (*(v49 + 23) < 0)
      {
        goto LABEL_161;
      }
    }

    else
    {
      google::protobuf::Reflection::SetEnum(a3, a2, this, ValueByName);
      v49 = *(this + 1);
      v50 = "Set enum field '%s' to %d";
      if (*(v49 + 23) < 0)
      {
LABEL_161:
        v49 = *v49;
      }
    }

    siri::dialogengine::Log::Debug(v50, v48, v49, ValueByName[4]);
    goto LABEL_182;
  }

  if (v12 == 9)
  {
    siri::dialogengine::StringTrim(" \t\n\r", a5, __str);
    siri::dialogengine::StringTrim(" \t\n\r", __str, &__p);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0 && __str[0].__r_.__value_.__l.__size_ >= 0x400)
    {
      std::string::basic_string(&v121, __str, 0, 0x28uLL, &v120);
      v56 = std::string::append(&v121, "...");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v122.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v122.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str[0].__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&v120, __str, size - 40, 0xFFFFFFFFFFFFFFFFLL, &v124);
      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v120;
      }

      else
      {
        v59 = v120.__r_.__value_.__r.__words[0];
      }

      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v120.__r_.__value_.__l.__size_;
      }

      v61 = std::string::append(&v122, v59, v60);
      v62 = v61->__r_.__value_.__r.__words[0];
      v125[0] = v61->__r_.__value_.__l.__size_;
      *(v125 + 7) = *(&v61->__r_.__value_.__r.__words[1] + 7);
      v63 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v62;
      __p.__r_.__value_.__l.__size_ = v125[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v125 + 7);
      *(&__p.__r_.__value_.__s + 23) = v63;
      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
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

    v64 = *(this + 1);
    if ((*(v64 + 23) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    v84 = *(v64 + 8);
    if (v84 == 37)
    {
      if (memcmp(*v64, "SnippetUI.Response.Component.group_id", 0x25uLL) || (siri::dialogengine::ResponseHasGroup(*(a1 + 504), *(a1 + 512), __str) & 1) != 0)
      {
LABEL_80:
        v65 = *(this + 6);
        if (v65)
        {
          v120.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v125[0] = this;
          if (atomic_load_explicit(v65, memory_order_acquire) != -1)
          {
            v122.__r_.__value_.__r.__words[0] = &v120;
            v122.__r_.__value_.__l.__size_ = v125;
            v121.__r_.__value_.__r.__words[0] = &v122;
            std::__call_once(v65, &v121, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }
        }

        if (*(this + 14) == 12)
        {
          siri::dialogengine::DecodeBase64(__str, &v122);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          __str[0] = v122;
        }

        if (v10 == 3)
        {
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v119, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v119 = __str[0];
          }

          google::protobuf::Reflection::AddString(a3, a2, this, &v119, v55);
          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }

          v110 = *(this + 1);
          if (*(v110 + 23) < 0)
          {
            v110 = *v110;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v112 = "Added to repeated string '%s': '%s'";
        }

        else
        {
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v118, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v118 = __str[0];
          }

          google::protobuf::Reflection::SetString(a3, a2, this, &v118, v55);
          if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v118.__r_.__value_.__l.__data_);
          }

          v110 = *(this + 1);
          if (*(v110 + 23) < 0)
          {
            v110 = *v110;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v112 = "Set string field '%s' to '%s'";
        }

        siri::dialogengine::Log::Debug(v112, v109, v110, p_p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_182;
        }

        v108 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_181;
      }
    }

    else
    {
      if (v84 != 27)
      {
        goto LABEL_80;
      }

      v85 = *v64;
      v86 = *v85;
      v87 = v85[1];
      v88 = v85[2];
      v89 = *(v85 + 19);
      v90 = v86 == 0x5574657070696E53 && v87 == 0x6E6F707365522E49;
      v91 = v90 && v88 == 0x70756F72472E6573;
      if (!v91 || v89 != 0x64692E70756F7247)
      {
        goto LABEL_80;
      }

      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v93 = __str;
      }

      else
      {
        v93 = __str[0].__r_.__value_.__r.__words[0];
      }

      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v94 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v94 = __str[0].__r_.__value_.__l.__size_;
      }

      if (v94 >= 1)
      {
        v95 = v93 + v94;
        v96 = v93;
        do
        {
          v97 = memchr(v96, 35, v94);
          if (!v97)
          {
            break;
          }

          if (*v97 == 35)
          {
            if (v97 != v95 && v97 - v93 != -1)
            {
              std::operator+<char>();
              v113 = std::string::append(&v121, "'");
              v114 = *&v113->__r_.__value_.__l.__data_;
              v122.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
              *&v122.__r_.__value_.__l.__data_ = v114;
              v113->__r_.__value_.__l.__size_ = 0;
              v113->__r_.__value_.__r.__words[2] = 0;
              v113->__r_.__value_.__r.__words[0] = 0;
              siri::dialogengine::Context::AddValidationError(a1, &v122, 0);
              if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v122.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v121.__r_.__value_.__l.__data_);
              }
            }

            break;
          }

          v96 = (v97 + 1);
          v94 = v95 - v96;
        }

        while (v95 - v96 >= 1);
      }

      if (!siri::dialogengine::ResponseHasGroup(*(a1 + 504), *(a1 + 512), __str))
      {
        goto LABEL_80;
      }
    }

    std::operator+<char>();
    v115 = std::string::append(&v121, "'");
    v116 = *&v115->__r_.__value_.__l.__data_;
    v122.__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
    *&v122.__r_.__value_.__l.__data_ = v116;
    v115->__r_.__value_.__l.__size_ = 0;
    v115->__r_.__value_.__r.__words[2] = 0;
    v115->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::Context::AddValidationError(a1, &v122, 0);
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    goto LABEL_80;
  }

  if (v12 != 10)
  {
LABEL_90:
    v66 = *(this + 1);
    if (*(v66 + 23) < 0)
    {
      v66 = *v66;
    }

    v67 = *(this + 6);
    if (v67)
    {
      v122.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v121.__r_.__value_.__r.__words[0] = this;
      if (atomic_load_explicit(v67, memory_order_acquire) != -1)
      {
        __str[0].__r_.__value_.__r.__words[0] = &v122;
        __str[0].__r_.__value_.__l.__size_ = &v121;
        __p.__r_.__value_.__r.__words[0] = __str;
        std::__call_once(v67, &__p, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }

      v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
    }

    siri::dialogengine::Log::Error("Field '%s' is of unhandled cpp type '%s'", a2, v66, google::protobuf::FieldDescriptor::kCppTypeToName[v12]);
    goto LABEL_19;
  }

  v21 = *(this + 1);
  if (*(v21 + 23) < 0)
  {
    v21 = *v21;
  }

  siri::dialogengine::Log::Error("Field '%s' is of type Message and should not be handled here", a2, v21);
LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1BFBE8AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v60 = v58 + 48;
  v61 = -96;
  do
  {
    v60 = std::pair<std::string const,std::string>::~pair(v60) - 48;
    v61 += 48;
  }

  while (v61);
  _Unwind_Resume(a1);
}

void google::protobuf::Reflection::SetBool(const std::string::value_type ***this, google::protobuf::Message *a2, const std::string::value_type **a3, char a4, const char *a5)
{
  v9 = *this;
  if (a3[10] != v9)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  v10 = a3[6];
  if (v10)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v10, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
  }

  if (*(a3 + 66) == 1)
  {
    v11 = (a2 + google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1)));
    v12 = *(a3 + 17);
    v13 = a3[6];
    if (v13)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v13, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    google::protobuf::internal::ExtensionSet::SetBool(v11, v12, *(a3 + 56), a4, a3);
  }

  else
  {
    v14 = a3[11];
    if (v14 && *(a2 + *(this + 11) - 1431655764 * ((v14 - *(*(v14 + 16) + 48)) >> 4)) != *(a3 + 17))
    {
      google::protobuf::Reflection::ClearOneof(this, a2, v14);
    }

    *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3)) = a4;
    v15 = a3[11];
    if (v15)
    {
      *(a2 + *(this + 11) - 1431655764 * (&v15[-*(*(v15 + 2) + 48)] >> 4)) = *(a3 + 17);
    }

    else
    {
      google::protobuf::Reflection::SetBit(this, a2, a3);
    }
  }
}

void google::protobuf::Reflection::SetBit(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  if (*(*(a3 + 15) + 79) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 1983);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !field->options().weak(): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 8) != -1)
  {
    HasBitIndex = google::protobuf::internal::ReflectionSchema::HasBitIndex((this + 8), a3);
    if (*(this + 8) == -1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 1873);
      v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: schema_.HasHasbits(): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, v8);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    HasBitsOffset = google::protobuf::internal::ReflectionSchema::HasBitsOffset((this + 8));
    *(a2 + 4 * (HasBitIndex >> 5) + HasBitsOffset) |= 1 << HasBitIndex;
  }
}

void sub_1BFBE8FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::UnknownField::Delete(uint64_t this)
{
  v1 = *(this + 4);
  if (v1 == 4)
  {
    v3 = *(this + 8);
    if (v3)
    {
      v4 = *v3;
      if (*v3 != *(v3 + 1))
      {
        google::protobuf::UnknownFieldSet::ClearFallback(v3);
        v4 = *v3;
      }

      if (v4)
      {
        *(v3 + 1) = v4;
        operator delete(v4);
      }

LABEL_12:

      JUMPOUT(0x1C68D4E80);
    }
  }

  else if (v1 == 3)
  {
    v2 = *(this + 8);
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      goto LABEL_12;
    }
  }

  return this;
}

void google::protobuf::UnknownFieldSet::DeleteByNumber(google::protobuf::UnknownFieldSet *this, int a2)
{
  v3 = *this;
  if (*(this + 1) == *this)
  {
    v8 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v3 + v5) == a2)
      {
        google::protobuf::UnknownField::Delete(v3 + v5);
      }

      else
      {
        if (v6 != v7)
        {
          *(v3 + 16 * v7) = *(v3 + v5);
        }

        ++v7;
      }

      ++v6;
      v3 = *this;
      v5 += 16;
    }

    while (v6 < (*(this + 1) - *this) >> 4);
    v8 = v7;
  }

  std::vector<google::protobuf::UnknownField>::resize(this, v8);
}

uint64_t google::protobuf::internal::ReflectionSchema::IsFieldInlined(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  v3 = *(a2 + 11);
  if (!v3)
  {
    if (*(a2 + 66))
    {
      v8 = *(a2 + 12);
      if (v8)
      {
        v9 = (v8 + 80);
      }

      else
      {
        v9 = (*(a2 + 5) + 128);
      }
    }

    else
    {
      v9 = (*(a2 + 10) + 40);
    }

    v4 = *(*(this + 1) + ((0x286BCA1B00000000 * ((a2 - *v9) >> 3)) >> 30));
    v10 = *(a2 + 6);
    if (v10)
    {
      v13 = a2;
      v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v10, memory_order_acquire) != -1)
      {
        v16 = &v14;
        v17 = &v13;
        v15 = &v16;
        std::__call_once(v10, &v15, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    v11 = *(a2 + 14);
    if (v11 != 12 && v11 != 9)
    {
      return 0;
    }

    return v4 & 1;
  }

  v4 = *(*(this + 1) + 4 * (*(*(a2 + 10) + 104) - 1431655765 * ((v3 - *(*(v3 + 16) + 48)) >> 4)));
  v5 = *(a2 + 6);
  if (v5)
  {
    v13 = a2;
    v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v5, memory_order_acquire) != -1)
    {
      v16 = &v14;
      v17 = &v13;
      v15 = &v16;
      std::__call_once(v5, &v15, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v6 = *(a2 + 14);
  if (v6 == 12 || v6 == 9)
  {
    return v4 & 1;
  }

  return 0;
}

uint64_t google::protobuf::Reflection::MutableMessage(const std::string::value_type ***this, google::protobuf::Message *a2, const std::string::value_type **a3, google::protobuf::MessageFactory *a4, const char *a5)
{
  v9 = *this;
  if (a3[10] != v9)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  v10 = a3[6];
  if (v10)
  {
    v21 = a3;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v24[0] = &v22;
      v24[1] = &v21;
      v23 = v24;
      std::__call_once(v10, &v23, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
  }

  if (!a4)
  {
    a4 = this[8];
  }

  if (*(a3 + 66) == 1)
  {
    ExtensionSetOffset = google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1));
    return google::protobuf::internal::ExtensionSet::MutableMessage((a2 + ExtensionSetOffset), a3, a4);
  }

  FieldOffset = google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3);
  v14 = a3[11];
  if (!v14)
  {
    google::protobuf::Reflection::SetBit(this, a2, a3);
LABEL_19:
    v16 = (a2 + FieldOffset);
    result = *v16;
    if (*v16)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (*(a2 + *(this + 11) - 1431655764 * ((v14 - *(*(v14 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    goto LABEL_19;
  }

  google::protobuf::Reflection::ClearOneof(this, a2, v14);
  v15 = a3[11];
  if (v15)
  {
    *(a2 + *(this + 11) - 1431655764 * (&v15[-*(*(v15 + 2) + 48)] >> 4)) = *(a3 + 17);
  }

  else
  {
    google::protobuf::Reflection::SetBit(this, a2, a3);
  }

  v16 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3));
  v19 = *google::protobuf::internal::ReflectionSchema::GetFieldDefault((this + 1), a3);
  v20 = (*(*a2 + 40))(a2);
  result = (*(*v19 + 32))(v19, v20);
  *v16 = result;
  if (!result)
  {
LABEL_20:
    v17 = *google::protobuf::internal::ReflectionSchema::GetFieldDefault((this + 1), a3);
    v18 = (*(*a2 + 40))(a2);
    result = (*(*v17 + 32))(v17, v18);
    *v16 = result;
  }

  return result;
}

siri::dialogengine::CatBinary::vcat_item_expression *google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_expression>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<siri::dialogengine::CatBinary::vcat_item_expression>);
  siri::dialogengine::CatBinary::vcat_item_expression::vcat_item_expression(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

siri::dialogengine::CatBinary::vcat_item_expression *siri::dialogengine::CatBinary::vcat_item_expression::vcat_item_expression(siri::dialogengine::CatBinary::vcat_item_expression *this)
{
  *this = &unk_1F3F189A8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_vcat_item_expression_CatBinary_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_vcat_item_expression_CatBinary_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void siri::dialogengine::CatBinary::vcat_item_expression::~vcat_item_expression(siri::dialogengine::CatBinary::vcat_item_expression *this)
{
  siri::dialogengine::CatBinary::vcat_item_expression::~vcat_item_expression(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F189A8;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 5);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x1C68D4E80](v6, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

uint64_t google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  v3 = *(a3 + 11);
  if (!v3 || *(a2 + *(a1 + 44) - 1431655764 * ((v3 - *(*(v3 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  v5 = (a1 + 8);

  return google::protobuf::internal::ReflectionSchema::GetFieldDefault(v5, a3);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFBE99C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<google::protobuf::UnknownField>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<google::protobuf::UnknownField>::__append(a1, a2 - v2);
  }
}

google::protobuf::internal *siri::dialogengine::CatBinary::vcat_item_expression::_InternalParse(siri::dialogengine::CatBinary::vcat_item_expression *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v14 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v14, *(a3 + 23)))
    {
      return v14;
    }

    TagFallback = (v14 + 1);
    LODWORD(v6) = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v14 + 2);
LABEL_6:
      v14 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v14, v6);
    v14 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v12;
LABEL_7:
    v7 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 == 26)
      {
        *(this + 4) |= 4u;
        v11 = *(this + 5);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 40, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_26;
      }
    }

    else if (v7 == 2)
    {
      if (v6 == 18)
      {
        *(this + 4) |= 2u;
        v11 = *(this + 4);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 32, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_26;
      }
    }

    else if (v7 == 1 && v6 == 10)
    {
      *(this + 4) |= 1u;
      v11 = *(this + 3);
      if (v11 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, &google::protobuf::internal::fixed_address_empty_string);
      }

LABEL_26:
      v10 = google::protobuf::internal::InlineGreedyStringParser(v11, TagFallback, a3);
      goto LABEL_27;
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = google::protobuf::internal::UnknownFieldParse(v6, this + 1, TagFallback, a3);
LABEL_27:
    v14 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 20) = v6 - 1;
  return TagFallback;
}

void siri::dialogengine::CatBinary::vcat_item_expression::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/engine/CatBinary.pb.cc", 3698);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = this[3];
      *(this + 4) |= 1u;
      v8 = a2[3];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 3), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[4];
      *(this + 4) |= 2u;
      v10 = a2[4];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 4), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v13 = this[5];
      v12 = (this + 5);
      v11 = v13;
      *(v12 - 6) |= 4u;
      v14 = a2[5];
      if (v13 != v14)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v12, v14);
        }

        std::string::operator=(v11, v14);
      }
    }
  }
}

void sub_1BFBE9D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::dialogengine::ExpandField(siri::dialogengine::Context *a1, google::protobuf::Message *a2, uint64_t a3, uint64_t a4)
{
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  siri::dialogengine::GetMessageInterface(&v57, a2);
  if (v57)
  {
    v8 = v58;
    v9 = *(v58 + 8);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      v56.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&v56.__r_.__value_.__l.__data_ = v10;
    }

    FieldByName = google::protobuf::Descriptor::FindFieldByName(v8, a3);
    v15 = FieldByName;
    if (FieldByName)
    {
      if (*(FieldByName + 60) == 3 || !google::protobuf::Reflection::HasField(*(&v58 + 1), a2, FieldByName, v13, v14))
      {
        siri::dialogengine::ParseSpeakableString(a4, &v54);
        memset(&v37, 0, sizeof(v37));
        std::vector<std::shared_ptr<siri::dialogengine::ChunkText>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::dialogengine::ChunkText>*,std::shared_ptr<siri::dialogengine::ChunkText>*>(&v37, v54, v55, (v55 - v54) >> 4);
        size = v37.__r_.__value_.__l.__size_;
        for (i = v37.__r_.__value_.__r.__words[0]; i != size; i += 16)
        {
          v21 = *i;
          v22 = *(i + 8);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v21)
          {
            v23 = **v21;
            if (v24)
            {
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v24[223] < 0)
              {
                std::string::__init_copy_ctor_external(&__str, *(v24 + 25), *(v24 + 26));
              }

              else
              {
                __str = *(v24 + 200);
              }

              siri::dialogengine::StringSplit(&__str, ".");
            }
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

        __str.__r_.__value_.__r.__words[0] = &v37;
        std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&__str);
        siri::dialogengine::ChunkList::Expand(v53, &v54, a1);
        siri::dialogengine::ExpandToText(&v37, v53[0], v53[1]);
        v26 = *(v15 + 48);
        if (v26)
        {
          v51.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v50 = v15;
          if (atomic_load_explicit(v26, memory_order_acquire) != -1)
          {
            __str.__r_.__value_.__r.__words[0] = &v51;
            __str.__r_.__value_.__l.__size_ = &v50;
            v52.__r_.__value_.__r.__words[0] = &__str;
            std::__call_once(v26, &v52, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }
        }

        if (*(v15 + 56) == 9)
        {
          siri::dialogengine::Dialog::ProcessString(&v37, &__str);
        }

        v30 = *(v15 + 8);
        if (*(v30 + 23) < 0)
        {
          v30 = *v30;
        }

        siri::dialogengine::Log::Debug("String processing not appropriate for field '%s'", v25, v30);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
        }

        else
        {
          __str = v37;
        }

        v32 = *(v15 + 8);
        if (*(v32 + 23) < 0)
        {
          v32 = *v32;
        }

        if (*(a4 + 23) >= 0)
        {
          v33 = a4;
        }

        else
        {
          v33 = *a4;
        }

        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        siri::dialogengine::Log::Debug("Expanded field '%s' expression '%s' to '%s'", v31, v32, v33, p_str);
        siri::dialogengine::SetField(a1, a2, *(&v58 + 1), v15, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        if (v47 < 0)
        {
          operator delete(v46);
        }

        if (v45 < 0)
        {
          operator delete(v44);
        }

        if (v43 < 0)
        {
          operator delete(v42);
        }

        if (v41 < 0)
        {
          operator delete(v40);
        }

        if (v39 < 0)
        {
          operator delete(v38);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        v37.__r_.__value_.__r.__words[0] = v53;
        std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v37);
        v37.__r_.__value_.__r.__words[0] = &v54;
        std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v37);
      }

      else
      {
        v17 = &v56;
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v56.__r_.__value_.__r.__words[0];
        }

        v18 = *v15;
        if (*(*v15 + 23) < 0)
        {
          v18 = *v18;
        }

        siri::dialogengine::Log::Info("Message '%s' field '%s' has already been set", v16, v17, v18);
      }
    }

    else
    {
      if (*(a3 + 23) >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      v28 = &v56;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v56.__r_.__value_.__r.__words[0];
      }

      if (*(a4 + 23) >= 0)
      {
        v29 = a4;
      }

      else
      {
        v29 = *a4;
      }

      siri::dialogengine::Log::Error("Could not get field '%s' from message '%s' with stored expression '%s'", v12, v27, v28, v29);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    siri::dialogengine::Log::Error("Could not get message interface", v7);
  }
}

void sub_1BFBEA564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  siri::dialogengine::SpeakableString::~SpeakableString(&a38);
  a38 = v38 - 224;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&a38);
  *(v38 - 224) = v38 - 200;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100]((v38 - 224));
  if (*(v38 - 153) < 0)
  {
    operator delete(*(v38 - 176));
  }

  _Unwind_Resume(a1);
}

void siri::dialogengine::GetMessageInterface(siri::dialogengine *this, google::protobuf::Message *a2)
{
  *this = 0;
  if (!a2)
  {
    return;
  }

  *(this + 1) = a2;
  v4 = (*(*a2 + 168))(a2);
  if (!v4)
  {
    siri::dialogengine::Log::Error("Message has null descriptor", v5);
    *(this + 2) = 0;
    v24 = "Could not get message descriptor";
LABEL_22:

    siri::dialogengine::Log::Error(v24, v23);
    return;
  }

  v6 = v4;
  *(this + 2) = v4;
  (*(*a2 + 168))(a2);
  if (!v7)
  {
    siri::dialogengine::Log::Error("Message has null Reflection", 0);
    *(this + 3) = 0;
    v24 = "Could not get message reflection";
    goto LABEL_22;
  }

  *(this + 3) = v7;
  v10 = google::protobuf::Reflection::MutableUnknownFields(v7, a2);
  *(this + 4) = v8;
  if (v8)
  {
    v11 = v8;
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    v12 = *v8;
    if (((v8[1] - *v8) >> 4) < 1)
    {
      v16 = (this + 40);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v26 = *(v12 + v13);
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v27, &v26);
        ++v14;
        v12 = *v11;
        v13 += 16;
      }

      while (v14 < ((v11[1] - *v11) >> 4));
      v15 = v28[0];
      v16 = (this + 40);
      if (v28[0])
      {
        for (i = 20000; ; ++i)
        {
          v18 = v28;
          v19 = v28[0];
          do
          {
            v20 = v19;
            v21 = v18;
            v22 = *(v19 + 7);
            if (v22 >= i)
            {
              v18 = v19;
            }

            v19 = *&v19[8 * (v22 < i)];
          }

          while (v19);
          if (v18 == v28)
          {
            break;
          }

          if (v22 < i)
          {
            v20 = v21;
          }

          if (i < *(v20 + 7))
          {
            break;
          }

          if (i == 32000)
          {
            *v16 = 32000;
            goto LABEL_34;
          }
        }

        *v16 = i;
        if (i >> 8 < 0x7D)
        {
          goto LABEL_30;
        }

LABEL_34:
        siri::dialogengine::Log::Error("Exceeded limit of unknown field numbers", v15);
        v15 = v28[0];
        goto LABEL_35;
      }
    }

    v15 = 0;
    *v16 = 20000;
LABEL_30:
    *this = 1;
LABEL_35:
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(&v27, v15);
    return;
  }

  v25 = *(v6 + 8);
  if (*(v25 + 23) < 0)
  {
    v25 = *v25;
  }

  siri::dialogengine::Log::Error("UnknownFieldSet is null for message '%s'", v9, v10, v25);
}

void google::protobuf::Reflection::SetString(uint64_t a1, google::protobuf::Message *a2, const std::string::value_type **a3, uint64_t *a4, const char *a5)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (a3[10] != v9)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  v10 = a3[6];
  if (v10)
  {
    v32 = a3;
    v33 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v35 = &v33;
      v36 = &v32;
      v34 = &v35;
      std::__call_once(v10, &v34, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
  }

  if (*(a3 + 66) == 1)
  {
    ExtensionSetOffset = google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((a1 + 8));
    v12 = *(a3 + 17);
    v13 = a3[6];
    if (v13)
    {
      v32 = a3;
      v33 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v35 = &v33;
        v36 = &v32;
        v34 = &v35;
        std::__call_once(v13, &v34, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    v14 = (a2 + ExtensionSetOffset);
    v15 = *(a3 + 56);
    v16 = *a4;
    v37[0] = a4[1];
    *(v37 + 7) = *(a4 + 15);
    v17 = *(a4 + 23);
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v18 = google::protobuf::internal::ExtensionSet::MutableString(v14, v12, v15, a3);
    v19 = v18;
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v20 = v37[0];
    *v19 = v16;
    *(v19 + 8) = v20;
    *(v19 + 15) = *(v37 + 7);
    *(v19 + 23) = v17;
  }

  else
  {
    if (google::protobuf::internal::ReflectionSchema::IsFieldInlined((a1 + 8), a3))
    {
      v21 = a3[11];
      if (v21)
      {
        *(a2 + *(a1 + 44) - 1431655764 * (&v21[-*(*(v21 + 2) + 48)] >> 4)) = *(a3 + 17);
      }

      else
      {
        google::protobuf::Reflection::SetBit(a1, a2, a3);
      }

      v25 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
      if (v25[23] < 0)
      {
        operator delete(*v25);
      }

      v26 = *a4;
      *(v25 + 2) = a4[2];
      *v25 = v26;
    }

    else
    {
      v22 = *google::protobuf::internal::ReflectionSchema::GetFieldDefault((a1 + 8), a3);
      v23 = a3[11];
      if (!v23)
      {
        goto LABEL_31;
      }

      if (*(a2 + *(a1 + 44) - 1431655764 * ((v23 - *(*(v23 + 16) + 48)) >> 4)) == *(a3 + 17))
      {
        goto LABEL_30;
      }

      google::protobuf::Reflection::ClearOneof(a1, a2, v23);
      v24 = a3[11];
      if (v24)
      {
        *(a2 + *(a1 + 44) - 1431655764 * (&v24[-*(*(v24 + 2) + 48)] >> 4)) = *(a3 + 17);
      }

      else
      {
        google::protobuf::Reflection::SetBit(a1, a2, a3);
      }

      *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3)) = v22;
      v23 = a3[11];
      if (v23)
      {
LABEL_30:
        *(a2 + *(a1 + 44) - 1431655764 * ((v23 - *(*(v23 + 16) + 48)) >> 4)) = *(a3 + 17);
      }

      else
      {
LABEL_31:
        google::protobuf::Reflection::SetBit(a1, a2, a3);
      }

      v27 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v28 = *(a2 + *(a1 + 36));
      if (v28)
      {
        v28 = *((v28 & 0xFFFFFFFFFFFFFFFELL) + 24);
      }

      v29 = *v27;
      if (*v27 == v22)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance(v27, v28, v22);
        v29 = *v27;
      }

      if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29->__r_.__value_.__l.__data_);
      }

      v30 = *a4;
      v29->__r_.__value_.__r.__words[2] = a4[2];
      *&v29->__r_.__value_.__l.__data_ = v30;
    }

    *(a4 + 23) = 0;
    *a4 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1BFBEAD50(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ReflectionSchema::GetFieldDefault(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 66))
  {
    v3 = *(a2 + 12);
    if (v3)
    {
      v4 = (v3 + 80);
    }

    else
    {
      v4 = (*(a2 + 5) + 128);
    }
  }

  else
  {
    v4 = (*(a2 + 10) + 40);
  }

  v5 = *this;
  v6 = *(*(this + 1) + ((0x286BCA1B00000000 * ((a2 - *v4) >> 3)) >> 30));
  v7 = *(a2 + 6);
  if (v7)
  {
    v12 = a2;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v7, &v14, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v8 = *(a2 + 14);
  v9 = v8 == 12 || v8 == 9;
  v10 = v6 & 0xFFFFFFFE;
  if (!v9)
  {
    v10 = v6;
  }

  return v5 + v10;
}

void SnippetUI::Response_Component::Clear(SnippetUI::Response_Component *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  SnippetUI::Response_Component::clear_value(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    google::protobuf::internal::InternalMetadataWithArena::DoClear(v3);
  }
}

void SnippetUI::Button_Container::~Button_Container(SnippetUI::Button_Container *this)
{
  *this = &unk_1F3F1FC48;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v1);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::Button_Container_ButtonItem::~Button_Container_ButtonItem(SnippetUI::Button_Container_ButtonItem *this)
{
  SnippetUI::Button_Container_ButtonItem::~Button_Container_ButtonItem(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F1FB88;
  if (*(this + 7))
  {
    SnippetUI::Button_Container_ButtonItem::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

void SnippetUI::Button::~Button(SnippetUI::Button *this)
{
  SnippetUI::Button::~Button(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F19008;
  v2 = *(this + 2);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 3);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  if (this != &SnippetUI::_Button_default_instance_)
  {
    v6 = *(this + 4);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 5);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

void SnippetUI::ActionProperty::~ActionProperty(SnippetUI::ActionProperty *this)
{
  *this = &unk_1F3F14060;
  v2 = *(this + 5);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::ActionProperty::~ActionProperty(this);

  JUMPOUT(0x1C68D4E80);
}

uint64_t google::protobuf::UnknownFieldSet::ClearFallback(google::protobuf::UnknownFieldSet *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (*this == v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/unknown_field_set.cc", 59);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !fields_.empty(): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v3 = *this;
    v2 = *(this + 1);
  }

  v5 = ((v2 - v3) >> 4);
  v6 = v5 + 1;
  v7 = 16 * v5 - 16;
  do
  {
    result = google::protobuf::UnknownField::Delete(*this + v7);
    --v6;
    v7 -= 16;
  }

  while (v6 > 1);
  *(this + 1) = *this;
  return result;
}

void sub_1BFBEB2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void SnippetUI::Command::~Command(SnippetUI::Command *this)
{
  *this = &unk_1F3F1B878;
  if (*(this + 9))
  {
    SnippetUI::Command::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::Command::~Command(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::TextProperty::~TextProperty(SnippetUI::TextProperty *this)
{
  *this = &unk_1F3F1CDB8;
  if (this != &SnippetUI::_TextProperty_default_instance_)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::TextProperty::~TextProperty(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::VisualProperty::~VisualProperty(SnippetUI::VisualProperty *this)
{
  *this = &unk_1F3F1F688;
  if (this != &SnippetUI::_VisualProperty_default_instance_)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::VisualProperty::~VisualProperty(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::VisualElement::~VisualElement(SnippetUI::VisualElement *this)
{
  *this = &unk_1F3F21770;
  if (*(this + 7))
  {
    SnippetUI::VisualElement::clear_element(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::VisualElement::~VisualElement(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::ImageElement::~ImageElement(SnippetUI::ImageElement *this)
{
  *this = &unk_1F3F16150;
  v2 = (this + 8);
  google::protobuf::RepeatedField<int>::~RepeatedField(this + 40);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v2);
}

{
  SnippetUI::ImageElement::~ImageElement(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::ImageElement_Symbol::~ImageElement_Symbol(SnippetUI::ImageElement_Symbol *this)
{
  *this = &unk_1F3F15FD0;
  v2 = *(this + 2);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 3);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  if (this != &SnippetUI::_ImageElement_Symbol_default_instance_)
  {
    v6 = *(this + 4);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 5);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::ImageElement_Symbol::~ImageElement_Symbol(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::ImageElement_Source::~ImageElement_Source(SnippetUI::ImageElement_Source *this)
{
  *this = &unk_1F3F15910;
  if (*(this + 7))
  {
    SnippetUI::ImageElement_Source::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::ImageElement_Source::~ImageElement_Source(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::Color::~Color(SnippetUI::Color *this)
{
  *this = &unk_1F3F1E6B0;
  v2 = *(this + 7);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(this + 2);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }
    }

    *(this + 7) = 0;
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::Color::~Color(this);

  JUMPOUT(0x1C68D4E80);
}

void google::protobuf::internal::InternalMetadataWithArena::DoClear(atomic_ullong **this)
{
  if (*this)
  {
    v1 = (*this & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::mutable_unknown_fields_slow(this);
  }

  if (*v1 != *(v1 + 1))
  {

    google::protobuf::UnknownFieldSet::ClearFallback(v1);
  }
}

uint64_t *google::protobuf::MutableRepeatedFieldRef<google::protobuf::Message,void>::MutableRepeatedFieldRef(uint64_t *a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  (*(*a2 + 168))(a2);
  v7 = v6;
  *a1 = google::protobuf::Reflection::RepeatedFieldData(v6, a2, a3, 10, 0);
  a1[1] = google::protobuf::Reflection::RepeatedFieldAccessor(v7, a3);
  MessageFactory = google::protobuf::Reflection::GetMessageFactory(v7);
  v9 = google::protobuf::FieldDescriptor::message_type(a3);
  a1[2] = (*(*MessageFactory + 16))(MessageFactory, v9);
  return a1;
}

uint64_t google::protobuf::Reflection::RepeatedFieldData(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, int a4, uint64_t a5)
{
  if (*(a3 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 2194);
    v10 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: field->is_repeated(): ");
    google::protobuf::internal::LogFinisher::operator=(&v30, v10);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v28 = a3;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v27[0].__r_.__value_.__r.__words[0] = &v29;
      v27[0].__r_.__value_.__l.__size_ = &v28;
      v30 = v27;
      std::__call_once(v11, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
  if (v12 == a4)
  {
    goto LABEL_13;
  }

  v13 = *(a3 + 6);
  if (v13)
  {
    v28 = a3;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v13, memory_order_acquire) != -1)
    {
      v27[0].__r_.__value_.__r.__words[0] = &v29;
      v27[0].__r_.__value_.__l.__size_ = &v28;
      v30 = v27;
      std::__call_once(v13, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }

    v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
  }

  if (a4 == 1 && v12 == 8)
  {
LABEL_13:
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 2197);
    v22 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: field->cpp_type() == cpp_type || (field->cpp_type() == FieldDescriptor::CPPTYPE_ENUM && cpp_type == FieldDescriptor::CPPTYPE_INT32): ");
    v23 = google::protobuf::internal::LogMessage::operator<<(v22, "The type parameter T in RepeatedFieldRef<T> API doesn't match ");
    v24 = google::protobuf::internal::LogMessage::operator<<(v23, "the actual field type (for enums T should be the generated enum ");
    v25 = google::protobuf::internal::LogMessage::operator<<(v24, "type or int32).");
    google::protobuf::internal::LogFinisher::operator=(&v26, v25);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (google::protobuf::FieldDescriptor::message_type(a3) != a5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 2202);
    v14 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (message_type) == (field->message_type()): ");
    google::protobuf::internal::LogFinisher::operator=(&v30, v14);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

LABEL_16:
  v15 = (a1 + 8);
  if (*(a3 + 66) != 1)
  {
    return a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffsetNonOneof(v15, a3);
  }

  v16 = (a2 + google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset(v15));
  v17 = *(a3 + 17);
  v18 = *(a3 + 6);
  if (v18)
  {
    v28 = a3;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v18, memory_order_acquire) != -1)
    {
      v27[0].__r_.__value_.__r.__words[0] = &v29;
      v27[0].__r_.__value_.__l.__size_ = &v28;
      v30 = v27;
      std::__call_once(v18, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v19 = *(a3 + 56);
  is_packed = google::protobuf::FieldDescriptor::is_packed(a3);
  return google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v16, v17, v19, is_packed, a3);
}

void sub_1BFBEBEAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::Reflection::RepeatedFieldAccessor(google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 670);
    v3 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: field->is_repeated(): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v4, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v4, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v5 = *(a2 + 14);
  v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v5];
  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        result = &qword_1EBE03470;
        if ((atomic_load_explicit(&qword_1EBE03478, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else if (v6 == 4)
      {
        result = &qword_1EBE03490;
        if ((atomic_load_explicit(&qword_1EBE03498, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        result = &qword_1EBE034B0;
        if ((atomic_load_explicit(&qword_1EBE034B8, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      return result;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        result = &qword_1EBE03480;
        if ((atomic_load_explicit(&qword_1EBE03488, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }

        return result;
      }

LABEL_40:
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 698);
      v9 = google::protobuf::internal::LogMessage::operator<<(v10, "Should not reach here.");
      google::protobuf::internal::LogFinisher::operator=(&v13, v9);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_31:
    return &_MergedGlobals;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      result = &qword_1EBE034A0;
      if ((atomic_load_explicit(&qword_1EBE034A8, memory_order_acquire) & 1) == 0)
      {
        google::protobuf::Reflection::RepeatedFieldAccessor(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      result = &qword_1EBE034C0;
      if ((atomic_load_explicit(&qword_1EBE034C8, memory_order_acquire) & 1) == 0)
      {
        google::protobuf::Reflection::RepeatedFieldAccessor(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    return result;
  }

  if (v6 == 8)
  {
    goto LABEL_31;
  }

  if (v6 == 9)
  {
    result = &qword_1EBE034D0;
    if ((atomic_load_explicit(&qword_1EBE034D8, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::Reflection::RepeatedFieldAccessor(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }

    return result;
  }

  if (v6 != 10)
  {
    goto LABEL_40;
  }

  v8 = *(a2 + 6);
  if (v8)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v8, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }

    LODWORD(v5) = *(a2 + 14);
  }

  if (v5 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a2))
  {
    result = &qword_1EBE034E0;
    if ((atomic_load_explicit(&qword_1EBE034E8, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::Reflection::RepeatedFieldAccessor(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    result = &qword_1EBE034F0;
    if ((atomic_load_explicit(&qword_1EBE034F8, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::Reflection::RepeatedFieldAccessor(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  return result;
}

void sub_1BFBEC1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::anonymous namespace::GeneratedMessageFactory::GetPrototype(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  v20 = a2;
  std::mutex::lock((this + 48));
  v3 = std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(this + 14, &v20);
  if (v3)
  {
    v4 = v3[3];
    std::mutex::unlock((this + 48));
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    std::mutex::unlock((this + 48));
  }

  v6 = *(*(v20 + 2) + 16);
  if (v6 != google::protobuf::DescriptorPool::generated_pool(v5))
  {
    return 0;
  }

  v7 = **(v20 + 2);
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  v19[0].__r_.__value_.__r.__words[0] = v7;
  v8 = std::__hash_table<std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>,google::protobuf::hash<char const*>,google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>,google::protobuf::streq,google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>>>::find<char const*>(this + 1, &v19[0].__r_.__value_.__l.__data_);
  if (!v8 || (v9 = v8[3]) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 618);
    v15 = google::protobuf::internal::LogMessage::operator<<(v19, "File appears to be in generated pool but wasn't registered: ");
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, **(v20 + 2));
    google::protobuf::internal::LogFinisher::operator=(&v18, v16);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    return 0;
  }

  std::mutex::lock((this + 48));
  v10 = std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(this + 14, &v20);
  if (!v10 || (v4 = v10[3]) == 0)
  {
    google::protobuf::internal::RegisterFileLevelMetadata(v9);
    v11 = std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(this + 14, &v20);
    if (!v11 || (v4 = v11[3]) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 636);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "Type appears to be in generated pool but wasn't ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, "registered: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(v20 + 1));
      google::protobuf::internal::LogFinisher::operator=(&v18, v14);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      v4 = 0;
    }
  }

  std::mutex::unlock((this + 48));
  return v4;
}

void sub_1BFBEC3C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  std::mutex::unlock((v2 + 48));
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t SnippetUI::Command::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 <= 5)
  {
    if (v2 > 3)
    {
      if (v2 != 4)
      {
        goto LABEL_14;
      }
    }

    else if (v2 != 2 && v2 != 3)
    {
      goto LABEL_25;
    }

LABEL_18:
    v3 = *(this + 24);
    if (v3 == &google::protobuf::internal::fixed_address_empty_string || v3 == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v2 <= 8)
  {
    if (v2 != 6 && v2 != 7)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (v2 != 9 && v2 != 10)
  {
    if (v2 != 11)
    {
      goto LABEL_25;
    }

    v3 = *(this + 24);
    if (v3 == &google::protobuf::internal::fixed_address_empty_string || !v3)
    {
      goto LABEL_25;
    }

LABEL_22:
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x1C68D4E80](v3, 0x1012C40EC159624);
    goto LABEL_25;
  }

LABEL_14:
  this = *(this + 24);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_25:
  *(v1 + 36) = 0;
  return this;
}

void siri::dialogengine::PatternFile::LoadFromId(uint64_t a1, uint64_t *a2)
{
  v12 = 0uLL;
  v13 = 0;
  if (a1)
  {
    siri::dialogengine::RequestInfo::RequestInfo(__p, (a1 + 8));
    v10 = 0uLL;
    v11 = 0;
    std::vector<siri::dialogengine::UpdatableDir>::__init_with_size[abi:ne200100]<siri::dialogengine::UpdatableDir*,siri::dialogengine::UpdatableDir*>(&v10, __p[0].__r_.__value_.__l.__size_, __p[0].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((__p[0].__r_.__value_.__r.__words[2] - __p[0].__r_.__value_.__l.__size_) >> 5));
    std::vector<siri::dialogengine::UpdatableDir>::__vdeallocate(&v12);
    v12 = v10;
    v13 = v11;
    v11 = 0;
    v10 = 0uLL;
    v8.__r_.__value_.__r.__words[0] = &v10;
    std::vector<siri::dialogengine::UpdatableDir>::__destroy_vector::operator()[abi:ne200100](&v8);
    siri::dialogengine::RequestInfo::~RequestInfo(&__p[0].__r_.__value_.__l.__data_);
  }

  v3 = *(a2 + 23);
  v4 = *a2;
  siri::dialogengine::GetBaseDir(&v12, __p);
  if (v3 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0].__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Debug("Attempting to load a pattern file from Id '%s' and template dir '%s'", v5, v6, v7);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  siri::dialogengine::FindPatternFile(&v12);
}

void sub_1BFBEC804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 121) < 0)
  {
    operator delete(*(v23 - 144));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a18 = (v23 - 112);
  std::vector<siri::dialogengine::UpdatableDir>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void *siri::dialogengine::Context::GetUseCaseState@<X0>(siri::dialogengine::Context *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(this + 960) & 1) == 0)
  {
    if (*(this + 63))
    {
      siri::dialogengine::DialogStateBase::Get(this);
    }

    siri::dialogengine::Log::Error("Calling GetUseCaseState() before CAT file is loaded", a2);
  }

  v5 = *(this + 840);
  *a3 = *(this + 824);
  *(a3 + 16) = v5;
  std::set<std::string>::set[abi:ne200100]((a3 + 32), this + 107);
  std::set<std::string>::set[abi:ne200100]((a3 + 56), this + 110);
  return std::map<std::string,siri::dialogengine::GroundingInfo>::map[abi:ne200100]((a3 + 80), this + 113);
}

void sub_1BFBECB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::dialogengine::getCatCount(siri::dialogengine *this, siri::dialogengine::Context *a2)
{
  siri::dialogengine::Context::GetUseCaseState(this, a2, &v5);
  v2 = v5;
  v3 = v6;
  std::__tree<std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::GroundingInfo>>>::destroy(v8[4]);
  std::__tree<std::string>::destroy(v8, v8[1]);
  std::__tree<std::string>::destroy(v7, v7[1]);
  if (v3)
  {
    return v2 + 1;
  }

  else
  {
    return 1;
  }
}

void siri::dialogengine::DialogStateClient::GetUseCase(uint64_t *a1@<X2>, void *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a1[1];
  }

  if (v3)
  {
    v5 = os_log_create("com.apple.siri.DialogEngine", "DialogState");
    v6 = os_signpost_id_generate(v5);
    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v9;
      _os_signpost_emit_with_name_impl(&dword_1BFB68000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LoadState", "CAT_ID = %s", &buf, 0xCu);
    }

    v10 = +[DEBundle frameworkUserSettings];
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    v13 = [v10 dictionaryForKey:v12];
    siri::dialogengine::DialogStateUseCaseFromNSDictionary(v13, a2);
    v14 = v8;
    v15 = v14;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BFB68000, v15, OS_SIGNPOST_INTERVAL_END, v6, "LoadState", "", &buf, 2u);
    }
  }

  else
  {
    *(&buf + 1) = 0;
    v22 = 0;
    v20[1] = 0;
    *&buf = &buf + 8;
    v19 = v20;
    v20[0] = 0;
    v18[0] = 0;
    v18[1] = 0;
    v17 = v18;
    siri::dialogengine::DialogStateUseCase::DialogStateUseCase(a2, 0, 0, 0, 0, &buf, &v19, &v17);
    std::__tree<std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::GroundingInfo>>>::destroy(v18[0]);
    std::__tree<std::string>::destroy(&v19, v20[0]);
    std::__tree<std::string>::destroy(&buf, *(&buf + 1));
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1BFBECE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13, uint64_t a14, char a15, char *a16)
{
  std::__tree<std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::GroundingInfo>>>::destroy(a10);
  std::__tree<std::string>::destroy(&a12, a13);
  std::__tree<std::string>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void sub_1BFBECF40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::ConditionEntry *,std::shared_ptr<siri::dialogengine::ConditionEntry>::__shared_ptr_default_delete<siri::dialogengine::ConditionEntry,siri::dialogengine::ConditionEntry>,std::allocator<siri::dialogengine::ConditionEntry>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void siri::dialogengine::GroupFirst::~GroupFirst(siri::dialogengine::GroupFirst *this)
{
  siri::dialogengine::Group::~Group(this);

  JUMPOUT(0x1C68D4E80);
}

void siri::dialogengine::PatternContext::AddEntryToPatternCache(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = 24;
  }

  else
  {
    v6 = 48;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1 + v6, &v7.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1BFBED0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::WalkNodesForDialogId(_BYTE *a1, uint64_t a2, char **a3, const void **a4)
{
  v4 = a1;
  if (!a2)
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "");
    return;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  std::vector<std::shared_ptr<siri::dialogengine::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::dialogengine::Node>*,std::shared_ptr<siri::dialogengine::Node>*>(&v58, *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 4);
  v7 = v58;
  v6 = v59;
  if (v58 == v59)
  {
LABEL_59:
    v55 = &v58;
    std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v55);
    std::string::basic_string[abi:ne200100]<0>(v4, "");
    return;
  }

  v8 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v9 = "node";
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v55, v9);
    v10 = *v7;
    if (!*v7)
    {
      goto LABEL_56;
    }

    v11 = *v10;
    v12 = **v10;
    {
      MEMORY[0x1C68D49D0](&v55, "dialog");
      v13 = v8 + 1;
      v8 = (v8 + 1);
    }

    else
    {
      v14 = *v11;
      {
        MEMORY[0x1C68D49D0](&v55, "text");
        v13 = ++HIDWORD(v49);
      }

      else
      {
        v15 = *v11;
        {
          MEMORY[0x1C68D49D0](&v55, "first");
          v13 = v49 + 1;
          LODWORD(v49) = v49 + 1;
        }

        else
        {
          v16 = *v11;
          {
            MEMORY[0x1C68D49D0](&v55, "random");
            v13 = ++HIDWORD(v48);
          }

          else
          {
            v17 = *v11;
            {
              MEMORY[0x1C68D49D0](&v55, "all");
              v13 = v48 + 1;
              LODWORD(v48) = v48 + 1;
            }

            else
            {
              v18 = *v11;
              {
                MEMORY[0x1C68D49D0](&v55, "switch");
                v13 = ++v47;
              }

              else
              {
                v13 = 0;
              }
            }
          }
        }
      }
    }

    if (v10 == a3)
    {
      break;
    }

    v19 = **v10;
    if (v20)
    {
      v21 = v20;
      v22 = v6;
      v23 = v4;
      v24 = v8;
      v25 = v9;
      if (*(a4 + 23) >= 0)
      {
        v26 = *(a4 + 23);
      }

      else
      {
        v26 = a4[1];
      }

      std::string::basic_string[abi:ne200100](&v52, v26 + 1);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v52;
      }

      else
      {
        v27 = v52.__r_.__value_.__r.__words[0];
      }

      if (v26)
      {
        if (*(a4 + 23) >= 0)
        {
          v28 = a4;
        }

        else
        {
          v28 = *a4;
        }

        memmove(v27, v28, v26);
      }

      *(&v27->__r_.__value_.__l.__data_ + v26) = 35;
      if ((v57 & 0x80u) == 0)
      {
        v29 = &v55;
      }

      else
      {
        v29 = v55;
      }

      if ((v57 & 0x80u) == 0)
      {
        v30 = v57;
      }

      else
      {
        v30 = v56;
      }

      v31 = std::string::append(&v52, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v51, v13);
      v9 = v25;
      v4 = v23;
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v51;
      }

      else
      {
        v33 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v51.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v53, v33, size);
      v8 = v24;
      __p = *v35;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      siri::dialogengine::WalkNodesForDialogId(v23, v21, a3, &__p);
      v6 = v22;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (v4[23] < 0)
      {
        if (*(v4 + 1))
        {
          goto LABEL_91;
        }

        operator delete(*v4);
      }

      else if (v4[23])
      {
        goto LABEL_91;
      }
    }

LABEL_56:
    if (v57 < 0)
    {
      operator delete(v55);
    }

    v7 += 2;
    if (v7 == v6)
    {
      goto LABEL_59;
    }
  }

  if (*(a4 + 23) >= 0)
  {
    v36 = *(a4 + 23);
  }

  else
  {
    v36 = a4[1];
  }

  v37 = &v53;
  std::string::basic_string[abi:ne200100](&v53, v36 + 1);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = v53.__r_.__value_.__r.__words[0];
  }

  if (v36)
  {
    if (*(a4 + 23) >= 0)
    {
      v38 = a4;
    }

    else
    {
      v38 = *a4;
    }

    memmove(v37, v38, v36);
  }

  *(&v37->__r_.__value_.__l.__data_ + v36) = 35;
  if ((v57 & 0x80u) == 0)
  {
    v39 = &v55;
  }

  else
  {
    v39 = v55;
  }

  if ((v57 & 0x80u) == 0)
  {
    v40 = v57;
  }

  else
  {
    v40 = v56;
  }

  v41 = std::string::append(&v53, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v52, v13);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v52;
  }

  else
  {
    v43 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v52.__r_.__value_.__l.__size_;
  }

  v45 = std::string::append(&__p, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  *(v4 + 2) = *(&v45->__r_.__value_.__l + 2);
  *v4 = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_91:
  if (v57 < 0)
  {
    operator delete(v55);
  }

  v55 = &v58;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v55);
}

void sub_1BFBED6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a24 < 0)
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

  if (a43 < 0)
  {
    operator delete(a38);
  }

  a38 = (v43 - 112);
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

void siri::dialogengine::PatternContext::AddPatternSetting(uint64_t a1, void *a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    v5 = *(v4 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v4 + 24);
    *&__p.__r_.__value_.__l.__data_ = v5;
  }

  p_p = &__p;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Parameter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Parameter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Parameter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__p.__r_.__value_.__l.__data_);
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 64);
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BFBEDAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::PatternContext::PatternContext(siri::dialogengine::PatternContext *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 6) = this + 56;
  operator new();
}

void sub_1BFBEDC04(_Unwind_Exception *a1)
{
  v5 = *(v2 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  siri::dialogengine::PatternCache::~PatternCache(v1);
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>>>::destroy(*v3);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t siri::dialogengine::ExecutePatternBase::GetGroups@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 56);
  v3 = *(this + 64);
  if (v3 != v2)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 3);
    if (v4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>(v4);
    }

    std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

uint64_t siri::dialogengine::ExecutePatternSimple::Execute@<X0>(siri::dialogengine::ExecutePatternSimple *this@<X0>, uint64_t a2@<X1>, siri::dialogengine::VariableObject *a3@<X2>, void *a4@<X8>)
{
  v6 = *(this + 13);
  v7 = *(this + 14);
  while (v6 != v7)
  {
    v8 = *(v6 + 23);
    if (v8 < 0)
    {
      if (*(v6 + 8) == 4)
      {
        v9 = *v6;
LABEL_7:
        if (*v9 == 1752392019 && !siri::dialogengine::ExecutePatternBase::ShouldExecuteSashGroup(this, a2, a3))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v9 = v6;
      if (v8 == 4)
      {
        goto LABEL_7;
      }
    }

    siri::dialogengine::ExecutePatternBase::AddGroup(this, v6);
LABEL_10:
    v6 += 24;
  }

  return siri::dialogengine::ExecutePatternBase::GetGroups(this, a4);
}

void siri::dialogengine::ExecutePatternBase::AddGroup(void *a1, uint64_t a2, uint64_t *a3, const void ***a4)
{
  v8 = a1[1];
  v9 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(v8 + 208, a2);
  if (v8 + 216 == v9)
  {
    v12 = 0;
LABEL_8:
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    siri::dialogengine::Log::Debug("Pattern instance does not contain group '%s'; Ignoring it", v10, v13);
    goto LABEL_38;
  }

  v11 = *(v9 + 56);
  v12 = *(v9 + 64);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  if (*(v11 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(v31, *(v11 + 136), *(v11 + 144));
  }

  else
  {
    *v31 = *(v11 + 136);
    *&v31[16] = *(v11 + 152);
  }

  if ((v31[23] & 0x80000000) != 0)
  {
    v14 = *&v31[8];
    operator delete(*v31);
    if (v14)
    {
LABEL_15:
      if (*(v11 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(v31, *(v11 + 136), *(v11 + 144));
      }

      else
      {
        *v31 = *(v11 + 136);
        *&v31[16] = *(v11 + 152);
      }

      siri::dialogengine::ExecutePatternBase::GetNestedInstance(a1);
    }
  }

  else if (v31[23])
  {
    goto LABEL_15;
  }

  v16 = a1[8];
  v15 = a1[9];
  if (v16 >= v15)
  {
    v19 = a1[7];
    v20 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v19) >> 3);
    if ((v20 + 1) > 0x492492492492492)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v19) >> 3);
    v22 = 2 * v21;
    if (2 * v21 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x249249249249249)
    {
      v23 = 0x492492492492492;
    }

    else
    {
      v23 = v22;
    }

    v32 = a1 + 7;
    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>(v23);
    }

    *v31 = 0;
    *&v31[8] = 56 * v20;
    *&v31[16] = (56 * v20);
    std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,std::shared_ptr<siri::dialogengine::PatternGroup> &,std::shared_ptr<siri::dialogengine::VariableObject> &,std::set<std::string> const&>((56 * v20), v11, v12, a3, a4);
    *&v31[16] += 56;
    v24 = a1[7];
    v25 = a1[8];
    v26 = *&v31[8] + v24 - v25;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>,siri::dialogengine::ExecutePatternBase::Stage*>((a1 + 7), v24, v25, v26);
    v27 = a1[7];
    a1[7] = v26;
    v28 = a1[9];
    v30 = *&v31[16];
    *(a1 + 4) = *&v31[16];
    *&v31[16] = v27;
    *&v31[24] = v28;
    *v31 = v27;
    *&v31[8] = v27;
    std::__split_buffer<siri::dialogengine::ExecutePatternBase::Stage>::~__split_buffer(v31);
    v18 = v30;
  }

  else
  {
    std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,std::shared_ptr<siri::dialogengine::PatternGroup> &,std::shared_ptr<siri::dialogengine::VariableObject> &,std::set<std::string> const&>(a1[8], v11, v12, a3, a4);
    v18 = v16 + 56;
    a1[8] = v16 + 56;
  }

  a1[8] = v18;
  if (*(v11 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(v31, *(v11 + 64), *(v11 + 72));
  }

  else
  {
    *v31 = *(v11 + 64);
    *&v31[16] = *(v11 + 80);
  }

  v29 = v31;
  if (v31[23] < 0)
  {
    v29 = *v31;
  }

  siri::dialogengine::Log::Debug("Added group: %s", v17, v29);
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

LABEL_38:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1BFBEE3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,std::shared_ptr<siri::dialogengine::PatternGroup> &,std::shared_ptr<siri::dialogengine::VariableObject> &,std::set<std::string> const&>(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, const void ***a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[2] = v6;
  a1[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::set<std::string>::set[abi:ne200100](a1 + 4, a5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (a3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }
}

void sub_1BFBEE514(_Unwind_Exception *exception_object)
{
  v5 = *(v3 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (!v2)
    {
LABEL_5:
      if (!v1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_7;
}

void siri::dialogengine::ExecutePatternBase::AddGroup(void *a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  siri::dialogengine::ExecutePatternBase::AddGroup(a1, a2, v4, &v2);
  std::__tree<std::string>::destroy(v3[0]);
}

uint64_t siri::dialogengine::ExecutePatternBase::ShouldExecuteSashGroup(siri::dialogengine **this, uint64_t a2, siri::dialogengine::VariableObject *a3)
{
  if (siri::dialogengine::DeviceIsWatch(this[5], this[3], a3))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "true");
  if (v7 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  siri::dialogengine::Log::Info("Should execute 'Sash' group: %s", v3, p_p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_1BFBEE6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::dialogengine::DeviceIsWatch(siri::dialogengine *this, siri::dialogengine::VariableObject *a2, siri::dialogengine::VariableObject *a3)
{
  DeviceParameter = siri::dialogengine::GetDeviceParameter(this, a2, a3);
  if (DeviceParameter)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "isWatch");
    IsTrue = siri::dialogengine::DeviceFieldIsTrue(DeviceParameter, __p);
    LOBYTE(DeviceParameter) = IsTrue;
    if (v12 < 0)
    {
      operator delete(__p[0]);
      if (DeviceParameter)
      {
        goto LABEL_4;
      }
    }

    else if (IsTrue)
    {
LABEL_4:
      v5 = "true";
      goto LABEL_7;
    }
  }

  v5 = "false";
LABEL_7:
  std::string::basic_string[abi:ne200100]<0>(v9, v5);
  if (v10 >= 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = v9[0];
  }

  siri::dialogengine::Log::Debug("Is watch (from device.isWatch): %s", v6, v7);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return DeviceParameter & 1;
}

void sub_1BFBEE798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

siri::dialogengine *siri::dialogengine::GetDeviceParameter(siri::dialogengine *this, siri::dialogengine::VariableObject *a2, siri::dialogengine::VariableObject *a3)
{
  if (this)
  {
    v3 = this;
    std::string::basic_string[abi:ne200100]<0>(__p, "device");
    v5 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(v3 + 72, __p);
    if ((v3 + 80) == v5)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = *(v5 + 56);
      v7 = *(v5 + 64);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
      if (v6)
      {
LABEL_9:
        v8 = **v6;
        if (!v7)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if (v6)
    {
      goto LABEL_9;
    }

    if (!v7)
    {
LABEL_11:
      if (v6)
      {
        return v3;
      }

      goto LABEL_12;
    }

LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_11;
  }

LABEL_12:
  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "device");
  v9 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(a2 + 72, __p);
  if ((a2 + 80) == v9)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = v9[7];
    v11 = v9[8];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    v12 = **v10;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!v10)
  {
    return 0;
  }

  return v3;
}

void siri::dialogengine::ExecutePatternBase::AddParameter(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = *(a1 + 40);
    v3 = a2[1];
    v4[0] = *a2;
    v4[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::dialogengine::VariableObject::AddProperty(v2, v4);
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1BFBEE9E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<siri::dialogengine::ExecutePatternBase::Stage>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 56;
    std::allocator_traits<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>::destroy[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,0>(v3 - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>,siri::dialogengine::ExecutePatternBase::Stage*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,siri::dialogengine::ExecutePatternBase::Stage>(a4, v7);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>::destroy[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,0>(v6);
      v6 += 56;
    }

    while (v6 != a3);
  }
}

id DE_VariableToNSObject(char **a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_35;
  }

  v4 = *a1;
  v5 = **a1;
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    if (a2)
    {
      if (v6[95] < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *(v6 + 9), *(v6 + 10));
      }

      else
      {
        v37 = *(v6 + 3);
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v37;
      }

      else
      {
        v12 = v37.__r_.__value_.__r.__words[0];
      }

      v2 = [v7 stringWithUTF8String:v12];
    }

    else
    {
      (*(*v6 + 48))(&v37);
      siri::dialogengine::SpeakableString::ToMultiplexedString(&v37, &v51);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v51;
      }

      else
      {
        v11 = v51.__r_.__value_.__r.__words[0];
      }

      v2 = [v7 stringWithUTF8String:v11];
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (v50 < 0)
      {
        operator delete(__p);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }

      if (v44 < 0)
      {
        operator delete(v43);
      }

      if (v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 < 0)
      {
        operator delete(v38);
      }
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    goto LABEL_35;
  }

  v8 = *v4;
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v9[9]];
LABEL_34:
    v2 = v10;
    goto LABEL_35;
  }

  v13 = *v4;
  if (v14)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v14[66]];
    goto LABEL_34;
  }

  v16 = *v4;
  if (v17)
  {
    v18 = v17;
    v2 = objc_opt_new();
    v19 = v18[10] - v18[9];
    if (v19)
    {
      v20 = 0;
      v21 = v19 >> 4;
      do
      {
        v22 = v18[9];
        v23 = 0uLL;
        if (v20 < (v18[10] - v22) >> 4)
        {
          v23 = *(v22 + 16 * v20);
          v24 = *(v22 + 16 * v20 + 8);
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }
        }

        v36 = *(&v23 + 1);
        v25 = DE_VariableToNSObject(v23, a2);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v25)
        {
          [v2 addObject:v25];
        }

        ++v20;
      }

      while (v21 != v20);
    }
  }

  else
  {
    v26 = *v4;
    if (v27)
    {
      v28 = v27;
      v2 = objc_opt_new();
      std::map<std::string,std::shared_ptr<siri::dialogengine::Variable>>::map[abi:ne200100](&v51, v28 + 9);
      v29 = v51.__r_.__value_.__r.__words[0];
      if (v51.__r_.__value_.__l.__data_ != &v51.__r_.__value_.__r.__words[1])
      {
        do
        {
          std::pair<std::string const,std::shared_ptr<siri::dialogengine::JSONValue>>::pair[abi:ne200100](&v37, (v29 + 32));
          v30 = DE_VariableToNSObject(v38, a2);
          if (v30)
          {
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v37;
            }

            else
            {
              v31 = v37.__r_.__value_.__r.__words[0];
            }

            v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
            [v2 setObject:v30 forKey:v32];
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          v33 = *(v29 + 8);
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = v33->__r_.__value_.__r.__words[0];
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = *(v29 + 16);
              v35 = v34->__r_.__value_.__r.__words[0] == v29;
              v29 = v34;
            }

            while (!v35);
          }

          v29 = v34;
        }

        while (v34 != &v51.__r_.__value_.__r.__words[1]);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>>>::destroy(v51.__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_35:

  return v2;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void siri::dialogengine::EncodeBase64(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_6;
    }

LABEL_24:

    std::string::basic_string[abi:ne200100]<0>(a2, "");
    return;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_24;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = *a1;
LABEL_6:
  v5 = 0;
  v6 = &v2[v4];
  do
  {
    while (1)
    {
      v7 = v5;
      *(&v33 + v5) = *v2;
      if (v5 < 2)
      {
        break;
      }

      siri::dialogengine::GetBase64Chars(a1);
      v8 = v33;
      if (byte_1EBE0297F >= 0)
      {
        v9 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v9 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v9 + (v33 >> 2)));
      siri::dialogengine::GetBase64Chars(v10);
      v11 = v34;
      if (byte_1EBE0297F >= 0)
      {
        v12 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v12 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v12 + ((v34 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v8 & 3)))));
      siri::dialogengine::GetBase64Chars(v13);
      v14 = v35;
      if (byte_1EBE0297F >= 0)
      {
        v15 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v15 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v15 + ((v35 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v11 & 0xF)))));
      siri::dialogengine::GetBase64Chars(v16);
      if (byte_1EBE0297F >= 0)
      {
        v17 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v17 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v17 + (v14 & 0x3F)));
      v5 = 0;
      if (++v2 == v6)
      {
        return;
      }
    }

    ++v5;
    ++v2;
  }

  while (v2 != v6);
  bzero(&v33 + v5, (2 - v7));
  siri::dialogengine::GetBase64Chars(v18);
  v20 = v33;
  if (byte_1EBE0297F >= 0)
  {
    v21 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v21 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[0] = *(v21 + (v33 >> 2));
  siri::dialogengine::GetBase64Chars(v19);
  v23 = v34;
  if (byte_1EBE0297F >= 0)
  {
    v24 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v24 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[1] = *(v24 + ((v34 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v20 & 3))));
  siri::dialogengine::GetBase64Chars(v22);
  v26 = v35;
  if (byte_1EBE0297F >= 0)
  {
    v27 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v27 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[2] = *(v27 + ((v35 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v23 & 0xF))));
  siri::dialogengine::GetBase64Chars(v25);
  v28 = 0;
  if (byte_1EBE0297F >= 0)
  {
    v29 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v29 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[3] = *(v29 + (v26 & 0x3F));
  do
  {
    std::string::push_back(a2, v32[v28++]);
  }

  while (v7 + 2 != v28);
  v30 = v7 - 3;
  while (!__CFADD__(v30++, 1))
  {
    std::string::push_back(a2, 61);
  }
}

void sub_1BFBEF344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::VerifyUtf8String(google::protobuf::internal *a1, const char *a2, int a3, google::protobuf::internal *a4)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    v7 = "serializing";
    if (a3 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = "parsing";
    }

    google::protobuf::internal::PrintUTF8ErrorLog(a4, v8, 0);
  }

  return IsStructurallyValidUTF8;
}

const google::protobuf::UnknownFieldSet *SnippetUI::ActionElement::InternalSerializeWithCachedSizesToArray(SnippetUI::ActionElement *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  if (this != &SnippetUI::_ActionElement_default_instance_)
  {
    v7 = *(this + 8);
    if (v7)
    {
      if (*a3 <= a2)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v7 = *(this + 8);
      }

      *v5 = 10;
      v8 = *(v7 + 8);
      if (v8 > 0x7F)
      {
        v5[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v11 = v5 + 2;
          do
          {
            v12 = v11;
            *v11++ = v10 | 0x80;
            v13 = v10 >> 7;
            v14 = v10 >> 14;
            v10 >>= 7;
          }

          while (v14);
          v9 = v12 + 2;
          *v11 = v13;
        }

        else
        {
          v5[2] = v10;
          v9 = v5 + 3;
        }
      }

      else
      {
        v5[1] = v8;
        v9 = v5 + 2;
      }

      v5 = SnippetUI::Command::InternalSerializeWithCachedSizesToArray(v7, v9, a3, a4);
    }
  }

  v15 = *(this + 6);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::TextElement>::TypeHandler>(this + 16, i);
      *v5 = 18;
      v19 = *(v17 + 24);
      if (v19 > 0x7F)
      {
        v5[1] = v19 | 0x80;
        v21 = v19 >> 7;
        if (v19 >> 14)
        {
          v22 = v5 + 2;
          do
          {
            v23 = v22;
            *v22++ = v21 | 0x80;
            v24 = v21 >> 7;
            v25 = v21 >> 14;
            v21 >>= 7;
          }

          while (v25);
          v20 = (v23 + 2);
          *v22 = v24;
        }

        else
        {
          v5[2] = v21;
          v20 = (v5 + 3);
        }
      }

      else
      {
        v5[1] = v19;
        v20 = (v5 + 2);
      }

      v5 = SnippetUI::TextElement::InternalSerializeWithCachedSizesToArray(v17, v20, a3, v18);
    }
  }

  v26 = *(this + 14);
  if (v26 > 0)
  {
    v27 = *a3;
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v27 = *a3;
    }

    if (v27 <= v5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v43, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/io/coded_stream.h", 856);
      v28 = google::protobuf::internal::LogMessage::operator<<(v43, "CHECK failed: ptr < end_: ");
      google::protobuf::internal::LogFinisher::operator=(&v42, v28);
      google::protobuf::internal::LogMessage::~LogMessage(&v43[0].__r_.__value_.__l.__data_);
    }

    *v5 = 26;
    v29 = v5 + 1;
    if (v26 >= 0x80)
    {
      do
      {
        *v29++ = v26 | 0x80;
        v41 = v26 >> 14;
        v26 >>= 7;
      }

      while (v41);
      v5 = v29 - 1;
    }

    v5 += 2;
    *v29 = v26;
    v30 = *(this + 6);
    v31 = &v30[*(this + 10)];
    do
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v33 = *v30++;
      v32 = v33;
      if (v33 > 0x7F)
      {
        *v5 = v32 | 0x80;
        v34 = v32 >> 7;
        if (v32 >> 14)
        {
          v35 = v5 + 1;
          do
          {
            v36 = v35;
            *v35++ = v34 | 0x80;
            v37 = v34 >> 7;
            v38 = v34 >> 14;
            v34 >>= 7;
          }

          while (v38);
          v5 = v36 + 2;
          *v35 = v37;
        }

        else
        {
          v5[1] = v34;
          v5 += 2;
        }
      }

      else
      {
        *v5++ = v32;
      }
    }

    while (v30 < v31);
  }

  v39 = *(this + 1);
  if (v39)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v39 & 0xFFFFFFFFFFFFFFFELL), v5, a3, a4);
  }

  return v5;
}