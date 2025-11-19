std::string *std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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
  std::vector<SipHeaderTemplateMap::HeaderTemplate>::__init_with_size[abi:ne200100]<SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*>(&this[1], *(a2 + 3), *(a2 + 4), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1E4CC9D5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SipHeaderTemplateMap::HeaderTemplate>::__init_with_size[abi:ne200100]<SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SipHeaderTemplateMap::HeaderTemplate>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4CC9DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<SipHeaderTemplateMap::HeaderTemplate>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SipSecurityAgreementConfig>::__assign_with_size[abi:ne200100]<SipSecurityAgreementConfig*,SipSecurityAgreementConfig*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<SipSecurityAgreementConfig>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SipSecurityAgreementConfig>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<SipSecurityAgreementConfig *,SipSecurityAgreementConfig *,SipSecurityAgreementConfig *>(&v22, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      v16 = v15 - 9;
      v17 = v15 - 9;
      v18 = v15 - 9;
      do
      {
        v19 = *v18;
        v18 -= 9;
        result = (*v19)(v17);
        v16 -= 9;
        v20 = v17 == v14;
        v17 = v18;
      }

      while (!v20);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<SipSecurityAgreementConfig *,SipSecurityAgreementConfig *,SipSecurityAgreementConfig *>(&v21, a2, a2 + v11, v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipSecurityAgreementConfig>,SipSecurityAgreementConfig*,SipSecurityAgreementConfig*,SipSecurityAgreementConfig*>(a1, a2 + v11, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void std::vector<SipSecurityAgreementConfig>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 72;
      v6 = v3 - 72;
      v7 = v3 - 72;
      do
      {
        v8 = *v7;
        v7 -= 72;
        (*v8)(v6);
        v5 -= 72;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<SipSecurityAgreementConfig>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipSecurityAgreementConfig>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipSecurityAgreementConfig>,SipSecurityAgreementConfig*,SipSecurityAgreementConfig*,SipSecurityAgreementConfig*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    v8 = a2 + 48;
    do
    {
      *(a4 + v7) = &unk_1F5EE5120;
      v9 = (a4 + v7 + 8);
      v10 = a2 + v7;
      if (*(a2 + v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        *(a4 + v7 + 24) = *(v10 + 24);
        *&v9->__r_.__value_.__l.__data_ = v11;
      }

      v12 = a4 + v7;
      *(a4 + v7 + 32) = &unk_1F5EBEF50;
      std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>((a4 + v7 + 40), *(a2 + v7 + 40), (v8 + v7));
      *(v12 + 65) = 1;
      *(v12 + 64) = *(a2 + v7 + 64);
      v7 += 72;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1E4CCA1A0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 72;
    v5 = -v2;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 -= 9;
      (*v8)(v6);
      v4 -= 72;
      v6 = v7;
      v5 += 72;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<SipSecurityAgreementConfig *,SipSecurityAgreementConfig *,SipSecurityAgreementConfig *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    std::string::operator=((a4 + v7 + 8), (a2 + v7 + 8));
    if (a2 != a4)
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((v8 + 40), *(v9 + 40), (a2 + 48 + v7));
    }

    *(v8 + 64) = *(v9 + 64);
    v7 += 72;
  }

  while (a2 + v7 != v6);
  return v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipSecurityAgreementConfig>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void BambiCallSessionTerminatedEvent::~BambiCallSessionTerminatedEvent(void **this)
{
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(this);

  JUMPOUT(0x1E69235B0);
}

void BambiCallEvent::loggableName(BambiCallEvent *this@<X0>, std::string *a2@<X8>)
{
  (*(*this + 40))(&__p);
  LoggableString::LoggableString(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4CCA3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(BambiCallSessionTerminationBaseEvent *this, const BambiCallSessionTerminationBaseEvent *a2)
{
  BambiCallEvent::BambiCallEvent(this, a2);
  *v4 = &unk_1F5ED0980;
  *(v4 + 32) = *(a2 + 8);
  v5 = *(a2 + 6);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v7;
  }

  *(this + 28) = *(a2 + 28);
  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v8 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v8;
  }

  v9 = *(a2 + 36);
  *(this + 148) = *(a2 + 148);
  *(this + 36) = v9;
  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v10;
  }

  *(this + 44) = *(a2 + 44);
  SipUri::SipUri((this + 184), (a2 + 184));
}

void sub_1E4CCA598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *v1 = &unk_1F5EC4090;
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallEvent::~BambiCallEvent(BambiCallEvent *this)
{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void BambiCallEvent::fullName(BambiCallEvent *this@<X0>, std::string *a2@<X8>)
{
  v2 = eventNames + 24 * *(this + 2);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 16);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t ims::SharedLoggable<BambiEmergencyCallHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiEmergencyCallHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::deque<SipUri>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 4];
    v7 = *v6 + 408 * (v5 & 0xF);
    v8 = *(v2 + (((a1[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      do
      {
        (**v7)(v7);
        v7 += 408;
        if (v7 - *v6 == 6528)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 8;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 16;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<SipUri *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<SipUri *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_emplace<BambiEmergencyCallHandler::create(std::shared_ptr<SipStack>)::Wrapper,std::allocator<BambiEmergencyCallHandler::create(std::shared_ptr<SipStack>)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC3B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void BambiEmergencyCallHandler::create(std::shared_ptr<SipStack>)::Wrapper::~Wrapper(BambiEmergencyCallHandler *a1)
{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiEmergencyCallHandler::create(std::shared_ptr<SipStack>)::Wrapper::~Wrapper(uint64_t a1)
{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 8));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 16));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 24));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 24));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 32));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 32));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 168));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 168));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 184));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((a1 - 184));

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__110shared_ptrIK25BambiEmergencyCallHandlerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c54_ZTSNSt3__110shared_ptrIK25BambiEmergencyCallHandlerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::deque<SipUri>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<SipUri *>::emplace_back<SipUri *&>(a1, &v10);
}

void sub_1E4CCADE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<SipUri *>::emplace_back<SipUri *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(result, v11);
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

const void **std::__split_buffer<SipUri *>::emplace_front<SipUri *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(result, v9);
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

void *std::__split_buffer<SipUri *>::emplace_back<SipUri *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(result[4], v11);
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

const void **std::__split_buffer<SipUri *>::emplace_front<SipUri *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(result[4], v9);
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

void *std::__function::__func<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0,std::allocator<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3DA8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0,std::allocator<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3DA8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0,std::allocator<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC3DA8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0,std::allocator<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0,std::allocator<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0,std::allocator<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0,std::allocator<BambiEmergencyCallHandler::prepareCall(std::shared_ptr<BambiCall>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::string>::__count_unique<std::string>(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void *std::__function::__func<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0,std::allocator<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3E28;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0,std::allocator<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3E28;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0,std::allocator<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC3E28;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0,std::allocator<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0,std::allocator<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0,std::allocator<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0,std::allocator<BambiEmergencyCallHandler::processPendingEmergencyCall(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0,std::allocator<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3EA8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0,std::allocator<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3EA8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0,std::allocator<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC3EA8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0,std::allocator<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0,std::allocator<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0,std::allocator<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0,std::allocator<BambiEmergencyCallHandler::startEmergencyCallBackMode(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<BambiEmergencyCallHandler::checkTimers(void)::$_0,std::allocator<BambiEmergencyCallHandler::checkTimers(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3F28;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiEmergencyCallHandler::checkTimers(void)::$_0,std::allocator<BambiEmergencyCallHandler::checkTimers(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC3F28;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::checkTimers(void)::$_0,std::allocator<BambiEmergencyCallHandler::checkTimers(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC3F28;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiEmergencyCallHandler::checkTimers(void)::$_0,std::allocator<BambiEmergencyCallHandler::checkTimers(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiEmergencyCallHandler::checkTimers(void)::$_0,std::allocator<BambiEmergencyCallHandler::checkTimers(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiEmergencyCallHandler::checkTimers(void)::$_0,std::allocator<BambiEmergencyCallHandler::checkTimers(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiEmergencyCallHandler::checkTimers(void)::$_0,std::allocator<BambiEmergencyCallHandler::checkTimers(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_BambiEmergencyCallHandler_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&kEmergencyCallSetupTimer, "EmergencyCallSetupTimer");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], &kEmergencyCallSetupTimer, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&kEmergencySessionSetupTimer, "EmergencySessionSetupTimer");

  return __cxa_atexit(v0, &kEmergencySessionSetupTimer, &dword_1E4C3F000);
}

void SipStackConfig::initializeFromPrefs(SipStackConfig *this, const ImsPrefs *a2, const ims::StackConfig *a3, const ClientConfig *a4)
{
  SipTransportLayerConfig::initializeFromPrefs((this + 1400), a2, a3, a4);
  SipUserAgentConfig::initializeFromPrefs(this, a2);
  if (*(a3 + 731) != 1)
  {
    goto LABEL_6;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "ForceTcp");
  v7 = std::__tree<std::string>::__count_unique<std::string>(a2 + 280, &__str.__r_.__value_.__l.__data_);
  v8 = v7;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_34:
    *(this + 1839) = 1;
    goto LABEL_4;
  }

  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_4:
  std::string::basic_string[abi:ne200100]<0>(&__str, "ForceTls");
  v9 = std::__tree<std::string>::__count_unique<std::string>(a2 + 280, &__str.__r_.__value_.__l.__data_);
  v10 = v9;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  *(this + 1841) = 1;
LABEL_6:
  *(this + 2488) = *(a3 + 556);
  *(this + 2584) = *(a3 + 609);
  *(this + 2489) = *(a3 + 731);
  std::string::basic_string[abi:ne200100]<0>(&v19, "AttestationPrivateKey");
  ImsPrefs::stringValue(a2, &v19, &__str);
  v11 = (this + 2496);
  if (*(this + 2519) < 0)
  {
    operator delete(*v11);
  }

  *v11 = *&__str.__r_.__value_.__l.__data_;
  *(this + 314) = *(&__str.__r_.__value_.__l + 2);
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  if (v21 < 0)
  {
    operator delete(v19);
  }

  *(this + 1260) = *(a3 + 366);
  *(this + 2522) = ImsPrefs::CarrierBased(a2);
  std::string::basic_string[abi:ne200100]<0>(&__str, "PinnedCertificateDigests");
  ImsPrefs::stringArrayValues(a2, &__str.__r_.__value_.__l.__data_, this + 316);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v12 = *(a3 + 608);
  ImsPrefs::PCSCFDomainName(a2, &__str);
  *(this + 2553) = v12;
  std::string::operator=((this + 2560), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v19 = 0;
  v20 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "CallEndReasons");
  ImsPrefs::dictValue(a2, &__str.__r_.__value_.__l.__data_, &v19);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v20)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "");
    BambiCallTerminationReasonsBase::setReasonsFromPref(this + 257, &v19, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v17 = 0;
  v18 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "IncomingCallEndReasons");
  ImsPrefs::dictValue(a2, &__str.__r_.__value_.__l.__data_, &v17);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "Override_");
    BambiCallTerminationReasonsBase::setReasonsFromPref(this + 278, &v17, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v16[0] = 0;
  v16[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "IncomingPhoneNumberPrefixMap");
  ImsPrefs::dictValue(a2, &__str.__r_.__value_.__l.__data_, v16);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  ims::CFDictionary::asStringMap(v16, this + 2456, v15);
  ImsResult::~ImsResult(v15);
  *(this + 2480) = ImsPrefs::AddConferenceParticipantsToInvite(a2);
  *(this + 2481) = ImsPrefs::DeferMediaActivationOnSessionConfirmed(a2);
  ImsPrefs::MediaInterface(a2, &__str);
  v13 = (this + 2416);
  if (*(this + 2439) < 0)
  {
    operator delete(*v13);
  }

  *v13 = *&__str.__r_.__value_.__l.__data_;
  *(this + 304) = *(&__str.__r_.__value_.__l + 2);
  *(this + 510) = ImsPrefs::MediaInitTimeout(a2);
  *(this + 2444) = ImsPrefs::PerCallQoSIndications(a2);
  *(this + 2445) = ImsPrefs::NetworkBasedCallWaiting(a2);
  *(this + 2446) = ImsPrefs::EnableVideoCallWaiting(a2);
  *(this + 2448) = ImsPrefs::UsePublicDomainForPhoneContext(a2);
  *(this + 621) = ImsPrefs::AutoRingTimerMilliseconds(a2);
  if (*(this + 2520) == 1)
  {
    v14 = *(this + 348);
    if (v14 >= 0x1F40)
    {
      v14 = 8000;
    }

    *(this + 348) = v14;
  }

  ims::CFType::~CFType(v16);
  ims::CFType::~CFType(&v17);
  ims::CFType::~CFType(&v19);
}

void sub_1E4CCC1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  _Unwind_Resume(exception_object);
}

void SipStackConfig::getRcsNetworkBundleId(SipStackConfig *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 2489))
  {
    if (*(this + 2520))
    {
      v4 = "com.apple.datausage.telephony.rcs.private";
    }

    else
    {
      v4 = "com.apple.datausage.telephony.rcs";
    }

    if (_os_feature_enabled_impl() && (*(this + 2522) & 1) == 0)
    {

      std::string::basic_string[abi:ne200100]<0>(a2, v4);
    }

    else
    {

      ims::convertBundleIdToUuid(a2);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void XcapDocumentCommWaiting::XcapDocumentCommWaiting(XcapDocumentCommWaiting *this)
{
  v3 = 0;
  v4 = &v3;
  v2 = (std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v3) + 5);
  *this = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(this + 8, "communication-waiting", v2);
  *(this + 8) = "communication-waiting";
  *(this + 9) = v2;
  *(this + 80) = 1;
  *this = &unk_1F5EC40D0;
  *(this + 1) = &unk_1F5EC4168;
}

uint64_t XcapDocumentCommWaiting::createChild(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  v3 = 0;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size == 21)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v6 = 0x636F6D6D756E6963;
    v7 = bswap64(*p_p);
    if (v7 == 0x636F6D6D756E6963 && (v6 = 0x6174696F6E2D7761, v7 = bswap64(p_p[1]), v7 == 0x6174696F6E2D7761) && (v6 = 0x2D77616974696E67, v7 = bswap64(*(p_p + 13)), v7 == 0x2D77616974696E67))
    {
      v8 = 0;
    }

    else if (v7 < v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void XcapDocumentCommWaiting::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size != 21)
  {
    goto LABEL_13;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v8 = p_p->__r_.__value_.__r.__words[0];
  v9 = p_p->__r_.__value_.__l.__size_;
  v10 = *(&p_p->__r_.__value_.__r.__words[1] + 5);
  v11 = v8 == 0x63696E756D6D6F63 && v9 == 0x61772D6E6F697461;
  if (!v11 || v10 != 0x676E69746961772DLL)
  {
LABEL_13:
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

  bambi::XmlParserItem::parseChild(a1, a2, a3);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4CCC630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XcapDocumentCommWaiting::asString@<X0>(XcapDocumentCommWaiting *this@<X0>, _BYTE *a2@<X8>)
{
  v21 = 0;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *__p = 0u;
  v18 = 0u;
  v15 = 0u;
  *__src = 0u;
  v13 = 0u;
  v14 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Call Waiting: ", 14);
  if (*(this + 80))
  {
    v5 = "Enabled";
  }

  else
  {
    v5 = "Disabled";
  }

  if (*(this + 80))
  {
    v6 = 7;
  }

  else
  {
    v6 = 8;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v22, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v22);
  std::ostream::put();
  std::ostream::flush();
  if ((BYTE8(v19) & 0x10) != 0)
  {
    v10 = v19;
    if (v19 < __src[1])
    {
      *&v19 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
  }

  else
  {
    if ((BYTE8(v19) & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    v11 = *(&v14 + 1);
    v10 = *(&v15 + 1);
  }

  v9 = v10 - v11;
  if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, v11, v9);
  }

LABEL_20:
  a2[v9] = 0;
  *&v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v13 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v20);
}

void sub_1E4CCC924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::locale::~locale((v23 - 56));
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a23);
  _Unwind_Resume(a1);
}

void XcapDocumentCommWaiting::~XcapDocumentCommWaiting(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4CCCB08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x1E69235B0](v2, v3);
  _Unwind_Resume(a1);
}

void non-virtual thunk toXcapDocumentCommWaiting::~XcapDocumentCommWaiting(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::vector<bambi::XmlTreeNs>::__init_with_size[abi:ne200100]<bambi::XmlTreeNs*,bambi::XmlTreeNs*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<bambi::XmlTreeNs>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4CCCBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<bambi::XmlTreeNs>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<bambi::XmlTreeNs>,bambi::XmlTreeNs*,bambi::XmlTreeNs*,bambi::XmlTreeNs*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1E4CCCD04(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void SipPComNameIdReputationHeader::~SipPComNameIdReputationHeader(SipPComNameIdReputationHeader *this)
{
  *this = &unk_1F5EC34F8;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EC34F8;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPMediaCandidate::SDPMediaCandidate(uint64_t a1, __int16 a2, const std::string *a3, __int16 a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "candidate");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v10;
  }

  *a1 = &unk_1F5EC4298;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 40) = a2;
  std::string::operator=((a1 + 48), a3);
  *(a1 + 72) = a4;
  return a1;
}

void sub_1E4CCCFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaCandidate::value@<X0>(SDPMediaCandidate *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v36 = 0;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  *v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  *__src = 0u;
  v28 = 0u;
  v29 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  v6 = *(this + 20);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "1", 1);
  __p.__r_.__value_.__s.__data_[0] = 32;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &__p, 1);
  v9 = MEMORY[0x1E6923390](v8, *(this + 20));
  __p.__r_.__value_.__s.__data_[0] = 32;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &__p, 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "UDP", 3);
  __p.__r_.__value_.__s.__data_[0] = 32;
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &__p, 1);
  v13 = MEMORY[0x1E6923350](v12, (2130706432 - v6));
  __p.__r_.__value_.__s.__data_[0] = 32;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &__p, 1);
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, IpAddress::kAnonymousIPv4);
  }

  else if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
  }

  else
  {
    __p = *(this + 2);
  }

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

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, p_p, size);
  v37 = 32;
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v37, 1);
  v19 = MEMORY[0x1E6923390](v18, *(this + 36));
  v37 = 32;
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v37, 1);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "typ", 3);
  v37 = 32;
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, &v37, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "host", 4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((BYTE8(v34) & 0x10) != 0)
  {
    v24 = v34;
    if (v34 < __src[1])
    {
      *&v34 = __src[1];
      v24 = __src[1];
    }

    v25 = __src[0];
  }

  else
  {
    if ((BYTE8(v34) & 8) == 0)
    {
      v23 = 0;
      a3[23] = 0;
      goto LABEL_27;
    }

    v25 = *(&v29 + 1);
    v24 = *(&v30 + 1);
  }

  v23 = v24 - v25;
  if ((v24 - v25) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  a3[23] = v23;
  if (v23)
  {
    memmove(a3, v25, v23);
  }

LABEL_27:
  a3[v23] = 0;
  *&v28 = *MEMORY[0x1E69E54E8];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v28 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  *(&v28 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v29);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v35);
}

void sub_1E4CCD3C0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

uint64_t BambiXcapClient::initialize(BambiXcapClient *this, const XcapConfig *a2)
{
  *(this + 8) = 1;
  XcapConfig::operator=(this + 16, a2);
  return 1;
}

uint64_t XcapConfig::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  std::string::operator=((a1 + 80), (a2 + 80));
  std::string::operator=((a1 + 104), (a2 + 104));
  v4 = *(a2 + 132);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = v4;
  std::string::operator=((a1 + 136), (a2 + 136));
  v5 = *(a2 + 164);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = v5;
  std::string::operator=((a1 + 168), (a2 + 168));
  *(a1 + 192) = *(a2 + 192);
  std::string::operator=((a1 + 200), (a2 + 200));
  *(a1 + 224) = *(a2 + 224);
  std::string::operator=((a1 + 232), (a2 + 232));
  std::string::operator=((a1 + 256), (a2 + 256));
  v6 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v6;
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 296), *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 3));
  }

  *(a1 + 320) = *(a2 + 320);
  std::string::operator=((a1 + 328), (a2 + 328));
  v7 = *(a2 + 356);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 356) = v7;
  return a1;
}

void SipUssdSession::SipUssdSession(SipUssdSession *this, const ClientConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "sip.ussd");
  SipSessionInterface::SipSessionInterface(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5EC43D8;
  *(this + 17) = &unk_1F5EC4500;
  *(this + 18) = &unk_1F5EC4530;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 88) = 0;
  *(this + 356) = 1;
  *(this + 183) = 0;
  *(this + 716) = 0u;
}

void sub_1E4CCD6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipUssdSession::~SipUssdSession(SipUssdSession *this)
{
  *this = &unk_1F5EC43D8;
  *(this + 17) = &unk_1F5EC4500;
  *(this + 18) = &unk_1F5EC4530;
  v2 = *(this + 91);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
  }

  v3 = *(this + 85);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  SipSessionInterface::~SipSessionInterface(this);
}

{
  SipUssdSession::~SipUssdSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipUssdSession::~SipUssdSession(SipUssdSession *this)
{
  SipUssdSession::~SipUssdSession((this - 136));
}

{
  SipUssdSession::~SipUssdSession((this - 144));
}

{
  SipUssdSession::~SipUssdSession((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  SipUssdSession::~SipUssdSession((this - 144));

  JUMPOUT(0x1E69235B0);
}

void SipUssdSession::deinitialize(const void **this)
{
  SipUssdSession::setState(this, 0);
  (*(*this + 11))(this);
  *(this + 600) = 0;
  (*(*this + 13))(this);
  v2 = this[85];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = this[84];
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

const void **SipUssdSession::setState(const void **result, int a2)
{
  if (*(result + 179) != a2)
  {
    v3 = result;
    v4 = (*(*result + 8))(result);
    (*(*v3 + 16))(v3, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "state transition [", 18);
    *(v4 + 17) = 0;
    v5 = v3[89].i32[1] - 1;
    v6 = v5 > 2 ? "Uninitialized" : off_1E8769918[v5];
    v7 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v6, v7);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " -> ", 4);
    *(v4 + 17) = 0;
    v8 = (a2 - 1) > 2 ? "Uninitialized" : off_1E8769918[a2 - 1];
    v9 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v8, v9);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
    *(v4 + 17) = 0;
    result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    v3[89].i32[1] = a2;
    if (a2 >= 3)
    {

      return SipTimerContainer::cancelTimer(v3 + 33, "UssdResponseTimer");
    }
  }

  return result;
}

void SipUssdSession::loggableName(SipUssdSession *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4CCDCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipUssdSession::initialize(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionInterface::initialize(a1, v3);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4CCDDC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipUssdSession::startSession(std::__shared_weak_count *this@<X0>, ImsResult *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  SipSessionInterface::stack(this, &v33);
  if (v33)
  {
    v5 = *(v33 + 31);
    v4 = *(v33 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v31 = 0;
      v32 = 0;
      SipDialog::createRequestInDialog(&this[10].~__shared_weak_count, 0, &v31);
      v6 = v31;
      std::string::basic_string[abi:ne200100]<0>(__p, "g.3gpp.ussd");
      SipMessage::addHeader(v6, "Recv-Info", __p, 0);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      v7 = SipMessage::header<SipAcceptHeader>(v31, 1);
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v7 + 8), &SipUssdDataBody::kContentType);
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v7 + 8), "multipart/mixed");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v7 + 8), "application/sdp");
      v30 = 0;
      v9 = v33;
      v8 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = SipStack::prefs(v9);
      LOBYTE(v30) = ImsPrefs::AllowIPv6UnicastAddress(v10);
      HIBYTE(v30) = *(v9 + 2817);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (LOBYTE(this[29].__shared_weak_owners_) == 1)
      {
        operator new();
      }

      if (*(SipUserAgent::config(v5) + 548) == 1)
      {
        SipMessage::addHeader(v31, "P-Preferred-Service", BambiServices::kFeatureTagMmtel, 0);
      }

      v13 = this[10].__vftable;
      v20 = v31;
      v21 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "");
      SipDialog::sendRequest(v13, &v20, __p, &v29);
      v14 = v29;
      v29 = 0;
      shared_owners = this[30].__shared_owners_;
      this[30].std::__shared_count = v14;
      if (shared_owners)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
        if (v29.__shared_owners_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29.__shared_owners_);
        }
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (this[30].__vftable)
      {
        SipUssdSession::setState(&this->__vftable, 1);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(__p, &this[6].__shared_owners_);
        v16 = __p[1];
        if (__p[1])
        {
          v17 = (__p[1] + 16);
          atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
          BYTE1(this[29].__shared_weak_owners_) = 1;
          atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
        }

        else
        {
          BYTE1(this[29].__shared_weak_owners_) = 1;
        }

        v35 = 0;
        operator new();
      }

      v25 = 0u;
      v26 = 0u;
      *v27 = 0u;
      v28 = 0u;
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      v23 = 0x40000000;
      v18 = ImsResult::operator<<<char [22]>(__p, "unable to send INVITE");
      ImsResult::ImsResult(a2, v18);
      ImsResult::~ImsResult(__p);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      *v27 = 0u;
      v28 = 0u;
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      v23 = 1073741826;
      v12 = ImsResult::operator<<<char [14]>(__p, "no user agent");
      ImsResult::ImsResult(a2, v12);
      ImsResult::~ImsResult(__p);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    *v27 = 0u;
    v28 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v23 = 1073741826;
    v11 = ImsResult::operator<<<char [12]>(__p, "no sipStack");
    ImsResult::ImsResult(a2, v11);
    ImsResult::~ImsResult(__p);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4CCE530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, char a44)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  SipHost::~SipHost(&a44);
  v48 = *(v46 - 144);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v49 = *(v46 - 128);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [14]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

const void **SipMessage::header<SipAcceptHeader>(SipMessage *a1, int a2)
{
  result = SipMessage::headerWithName(a1, "Accept", a2);
  if (result)
  {
    v3 = **result;
  }

  return result;
}

void SipUssdSession::sendAdditionalData(uint64_t a1@<X0>, const std::string *a2@<X1>, ImsResult *a3@<X8>)
{
  SipUssdData::SipUssdData(&v5, a2, (a1 + 688));
  SipUssdSession::sendInfo(a1, a3);
  v5 = &unk_1F5ED18C0;
  v6[0] = &unk_1F5ED1938;
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[7]);
  }

  bambi::XmlTreeItem::~XmlTreeItem(v6);
}

void sub_1E4CCE918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SipUssdData::~SipUssdData(va);
  _Unwind_Resume(a1);
}

void SipUssdSession::sendInfo(std::__shared_weak_count *this@<X0>, ImsResult *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  SipSessionInterface::stack(this, &v22);
  if (v22)
  {
    v6 = *(v22 + 31);
    v5 = *(v22 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      if (BYTE1(this[29].__shared_weak_owners_) != 1)
      {
        v13[0] = 0;
        v13[1] = 0;
        SipDialog::createRequestInDialog(&this[10].~__shared_weak_count, 0, v13);
        v10 = v13[0];
        std::string::basic_string[abi:ne200100]<0>(&__p, "g.3gpp.ussd");
        SipMessage::addHeader(v10, "Info-Package", &__p, 0);
        if (v17 < 0)
        {
          operator delete(__p);
        }

        v11 = v13[0];
        std::string::basic_string[abi:ne200100]<0>(&__p, "Info-Package");
        SipMessage::addHeader(v11, "Content-Disposition", &__p, 0);
        if (v17 < 0)
        {
          operator delete(__p);
        }

        operator new();
      }

      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      __p = &unk_1F5EBDEF8;
      v15 = &_bambiDomain;
      v16 = 1073741826;
      v7 = ImsResult::operator<<<char [30]>(&__p, "woah, slow down there maestro");
      ImsResult::ImsResult(a2, v7);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      __p = &unk_1F5EBDEF8;
      v15 = &_bambiDomain;
      v16 = 1073741826;
      v9 = ImsResult::operator<<<char [14]>(&__p, "no user agent");
      ImsResult::ImsResult(a2, v9);
    }

    ImsResult::~ImsResult(&__p);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    __p = &unk_1F5EBDEF8;
    v15 = &_bambiDomain;
    v16 = 1073741826;
    v8 = ImsResult::operator<<<char [12]>(&__p, "no sipstack");
    ImsResult::ImsResult(a2, v8);
    ImsResult::~ImsResult(&__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4CCEE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v32 - 120);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [30]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

BOOL SipUssdSession::handleRequest(uint64_t a1, uint64_t *a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v73 = 0;
  SipSessionInterface::stack(a1, &v72);
  if (v72)
  {
    v5 = *(v72 + 31);
    v4 = *(v72 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      v7 = (*(**a2 + 120))();
      v77 = 0;
      v78 = 0;
      SipSessionInterface::stack(a1, &v77);
      if (!v77)
      {
        v17 = *(a1 + 184);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          (*(*(a1 + 144) + 16))(&v74);
          v68 = v76 >= 0 ? &v74 : v74;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          v80 = 2081;
          v81 = v68;
          _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
          if (v76 < 0)
          {
            operator delete(v74);
          }
        }

        v13 = 0;
LABEL_63:
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        if (!v13)
        {
          v74 = 0;
          v75 = 0;
          LODWORD(v77) = 405;
          *buf = v5 + 384;
          std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
        }

        v33 = (*(**a2 + 120))();
        v34 = *(v33 + 23);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(v33 + 8);
        }

        if (v34 == 6)
        {
          v36 = v35 >= 0 ? v33 : *v33;
          v37 = *v36;
          v38 = *(v36 + 4);
          if (v37 == *"INVITE" && v38 == *"TE")
          {
            v59 = *(a1 + 240);
            v60 = SipMessage::header<SipFromHeader>(*a2);
            v61 = (v60 ? SipUriHeader::tag(v60) : &ims::kEmptyString);
            v63 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v59 + 2944, v61);
            if (v59 + 2952 != v63)
            {
              v65 = *(v63 + 56);
              v64 = *(v63 + 64);
              if (v64)
              {
                atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v65)
              {
                v66 = a2[1];
                v71[0] = *a2;
                v71[1] = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipDialogFork::updateRouteSet(v65, v71);
                if (v66)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v66);
                }

                v67 = a2[1];
                v69 = *a2;
                v70 = v67;
                if (v67)
                {
                  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipDialogFork::handleTargetRefresh(v65, &v69);
                if (v70)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                }
              }

              if (v64)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v64);
              }
            }
          }
        }

        v40 = (*(**a2 + 120))();
        v41 = *(v40 + 23);
        v42 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v41 = *(v40 + 8);
        }

        if (v41 == 3)
        {
          if (v42 >= 0)
          {
            v43 = v40;
          }

          else
          {
            v43 = *v40;
          }

          v44 = *v43;
          v45 = *(v43 + 2);
        }

        v46 = SipMessage::body<SipUssdDataBody>(*a2);
        if (!v46)
        {
          v51 = SipMessage::bodyWithContentType(*a2, "application/ussd");
          {
            v53 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v53);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), "legacy USSD body found, but CT doesn't consume it", 49);
            *(v53 + 17) = 0;
            v54 = (v53 + 17);
            (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          else
          {
            v56 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v56);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "no USSD body", 12);
            *(v56 + 17) = 0;
            v54 = (v56 + 17);
            (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          *v54 = 0;
LABEL_98:
          v74 = 0;
          v75 = 0;
          LODWORD(v77) = 200;
          *buf = v5 + 384;
          std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
        }

        *(a1 + 713) = 0;
        SipTimerContainer::cancelTimer((a1 + 264), "UssdResponseTimer");
        v47 = *(a1 + 680);
        if (v47)
        {
          v48 = std::__shared_weak_count::lock(v47);
          if (v48)
          {
            v49 = *(a1 + 672);
            if (v49)
            {
              v50 = *v49;
              if (*(v46 + 36))
              {
                v50[1]();
              }

              else
              {
                (*v50)();
              }

LABEL_95:
              std::__shared_weak_count::__release_shared[abi:ne200100](v48);
              goto LABEL_98;
            }
          }
        }

        else
        {
          v48 = 0;
        }

        v55 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "no delegate", 11);
        *(v55 + 17) = 0;
        (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v55 + 17) = 0;
        if (!v48)
        {
          goto LABEL_98;
        }

        goto LABEL_95;
      }

      v8 = *(v77 + 31);
      v9 = *(v77 + 32);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v8)
      {
        v18 = *(a1 + 184);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          (*(*(a1 + 144) + 16))(&v74);
          v19 = v76 >= 0 ? &v74 : v74;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          v80 = 2081;
          v81 = v19;
          _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
          if (v76 < 0)
          {
            operator delete(v74);
          }
        }

        goto LABEL_60;
      }

      v10 = *(v7 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v7 + 8);
      }

      if (v10 == 3)
      {
        if (v11 >= 0)
        {
          v25 = v7;
        }

        else
        {
          v25 = *v7;
        }

        v21 = *v25;
        v22 = SipRequest::kMethodBye;
        v23 = *(v25 + 2);
        v24 = BYTE2(SipRequest::kMethodBye);
      }

      else
      {
        if (v10 != 7)
        {
          if (v10 == 4)
          {
            v12 = v11 >= 0 ? v7 : *v7;
            if (*v12 == *"INFO")
            {
LABEL_18:
              v13 = 1;
              goto LABEL_61;
            }
          }

LABEL_47:
          if (*(SipUserAgent::config(v8) + 628) == 1)
          {
            v27 = *(v7 + 23);
            v28 = v27;
            if ((v27 & 0x80u) != 0)
            {
              v27 = *(v7 + 8);
            }

            if (v27 == 6)
            {
              if (v28 >= 0)
              {
                v29 = v7;
              }

              else
              {
                v29 = *v7;
              }

              v30 = *v29;
              v31 = v29[2];
              v13 = v30 == *"INVITE" && v31 == *"TE";
LABEL_61:
              if (v9)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              }

              goto LABEL_63;
            }
          }

LABEL_60:
          v13 = 0;
          goto LABEL_61;
        }

        if (v11 >= 0)
        {
          v20 = v7;
        }

        else
        {
          v20 = *v7;
        }

        v21 = *v20;
        v22 = *"MESSAGE";
        v23 = *(v20 + 3);
        v24 = *"SAGE";
      }

      if (v21 == v22 && v23 == v24)
      {
        goto LABEL_18;
      }

      goto LABEL_47;
    }

    v15 = *(a1 + 184);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 144) + 16))(&v74, a1 + 144);
      v16 = v76 >= 0 ? &v74 : v74;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v80 = 2081;
      v81 = v16;
      _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
      if (v76 < 0)
      {
        operator delete(v74);
      }
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    v14 = *(a1 + 184);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 144) + 16))(&v74, a1 + 144);
      v62 = v76 >= 0 ? &v74 : v74;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v80 = 2081;
      v81 = v62;
      _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (v76 < 0)
      {
        operator delete(v74);
      }
    }

    v6 = 0;
  }

  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  v57 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1E4CCFBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v35 = *(v33 - 184);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

char **SipMessage::body<SipUssdDataBody>(uint64_t a1)
{
  result = SipMessage::bodyWithContentType(a1, &SipUssdDataBody::kContentType);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

uint64_t SipUssdSession::handleResponse(const void **a1, uint64_t *a2, void *a3)
{
  v6 = a2[1];
  v38[0] = *a2;
  v38[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v37[0] = *a3;
  v37[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = SipSessionInterface::handleResponse(a1, v38, v37);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v8)
  {
    v9 = *(*a2 + 128);
    if (v9 >= 0x12C)
    {
      v10 = a1[85];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v11;
          v13 = a1[84];
          if (v13)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "");
            (*(*v13 + 8))(v13, __p, 1);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

LABEL_51:
      (*(*a1 + 24))(a1);
      return 1;
    }

    if (v9 - 200 > 0x63)
    {
      goto LABEL_39;
    }

    v14 = SipMessage::header<SipCSeqHeader>(*a2);
    v15 = (v14 + 64);
    if (!v14)
    {
      v15 = &ims::kEmptyString;
    }

    v16 = *(v15 + 23);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v15 + 1);
    }

    if (v16 != 6)
    {
      goto LABEL_39;
    }

    if (v17 < 0)
    {
      v15 = *v15;
    }

    v18 = *v15;
    v19 = *(v15 + 2);
    v20 = v18 == *"INVITE" && v19 == *"TE";
    if (v20 && *(a1 + 179) == 1)
    {
      SipUssdSession::setState(a1, 2);
      v21 = a3[1];
      v33 = *a3;
      v34 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = a2[1];
      v31 = *a2;
      v32 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSessionInterface::addAckRetransmitHandlerForClientTransaction(a1, &v33, &v31, 0);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }
    }

    else
    {
LABEL_39:
      v23 = SipMessage::header<SipCSeqHeader>(*a2);
      v24 = (v23 + 64);
      if (!v23)
      {
        v24 = &ims::kEmptyString;
      }

      v25 = *(v24 + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v24 + 1);
      }

      if (v25 == 3)
      {
        if (v26 < 0)
        {
          v24 = *v24;
        }

        v27 = *v24;
        v28 = *(v24 + 2);
        if (v27 == SipRequest::kMethodBye && v28 == BYTE2(SipRequest::kMethodBye))
        {
          goto LABEL_51;
        }
      }
    }
  }

  return 1;
}

void sub_1E4CD0014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUssdSession::handleTransactionError(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == *(a1 + 720))
  {
    v4 = *(a1 + 728);
    *(a1 + 720) = 0u;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = *(a1 + 680);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 672);
      if (v8)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        (*(*v8 + 8))(v8, __p, 1);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return (*(*a1 + 192))(a1);
}

void sub_1E4CD0160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void SipUssdSession::removeClientTransaction(uint64_t a1, uint64_t *a2)
{
  if (*a2 == *(a1 + 720))
  {
    v4 = *(a1 + 728);
    *(a1 + 720) = 0u;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = *a2;
  v6 = a2[1];
  v7[0] = v5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionInterface::removeClientTransaction(a1, v7);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4CD0228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipUssdSession::handleTimer(int *a1, uint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipUssdSession::handleTimer", 27);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5 == 17)
  {
    v7 = v6 >= 0 ? a2 : *a2;
    v8 = *v7;
    v9 = v7[1];
    v10 = *(v7 + 16);
    v11 = v8 == 0x7073655264737355 && v9 == 0x656D695465736E6FLL;
    if (v11 && v10 == 114)
    {
      v13 = *a1;
      if (a1[179] > 2)
      {
        v19 = (*(v13 + 64))(a1);
        (*(*a1 + 16))(a1, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "ignoring timer ", 15);
        *(v19 + 17) = 0;
        (*(*v19 + 32))(v19, "UssdResponseTimer");
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " in state ", 10);
        *(v19 + 17) = 0;
        v20 = a1[179] - 1;
        if (v20 > 2)
        {
          v21 = "Uninitialized";
        }

        else
        {
          v21 = off_1E8769918[v20];
        }

        v22 = strlen(v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), v21, v22);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
      }

      else
      {
        v14 = (*(v13 + 48))(a1);
        (*(*a1 + 16))(a1, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "no response from USSD server", 28);
        *(v14 + 17) = 0;
        (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v14 + 17) = 0;
        v15 = *(a1 + 85);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(a1 + 84);
            if (v18)
            {
              std::string::basic_string[abi:ne200100]<0>(v24, "");
              (*(*v18 + 8))(v18, v24, 1);
              if (v25 < 0)
              {
                operator delete(v24[0]);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }

        SipUssdSession::cancelSession(a1, v23);
        ImsResult::~ImsResult(v23);
      }
    }
  }
}

void sub_1E4CD0600(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipUssdSession::cancelSession(SipUssdSession *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 179);
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  v6 = *(v5 + 8);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v7 = "SipUssdSession::cancelSession: StateTerminated: no op";
      v8 = 53;
      goto LABEL_21;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "SipUssdSession::cancelSession: StateUnconfirmed: sendBye...", 59);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v28 = 0;
    v29 = 0;
    SipDialog::createRequestInDialog(*(this + 30), 0, &v28);
    v26 = 0;
    v27 = 0;
    v9 = *(this + 30);
    v24 = v28;
    v25 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    SipDialog::sendRequest(v9, &v24, &__p, &v26);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v26)
    {
      SipUssdSession::setState(this, 3);
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 8) = &_bambiDomain;
      *(a2 + 16) = 0;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      __p = &unk_1F5EBDEF8;
      v17 = &_bambiDomain;
      v18 = 0x40000000;
      v15 = ImsResult::operator<<<char [27]>(&__p, "unable to send BYE request");
      ImsResult::ImsResult(a2, v15);
      ImsResult::~ImsResult(&__p);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }
  }

  else
  {
    if (!v4)
    {
      v7 = "SipUssdSession::cancelSession: StateUninitialized: no op";
      v8 = 56;
LABEL_21:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 8) = &_bambiDomain;
      *(a2 + 16) = 0;
      return;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "SipUssdSession::cancelSession: StateUnconfirmed: sendCancel...", 62);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v10 = *(this + 90);
    if (v10)
    {
      *(a2 + 80) = 0;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v11 = *(this + 30);
      v12 = *(this + 91);
      __p = v10;
      v17 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipDialog::cancelInviteRequest(v11, &__p, 0, a2);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      SipUssdSession::setState(this, 3);
      if ((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)))
      {
        (*(*this + 192))(this);
      }
    }

    else
    {
      v13 = (*(*this + 56))(this);
      (*(*this + 16))(this, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "no INVITE transaction to cancel", 31);
      *(v13 + 17) = 0;
      (*(*this + 192))(this);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      __p = &unk_1F5EBDEF8;
      v17 = &_bambiDomain;
      v18 = 1073741826;
      v14 = ImsResult::operator<<<char [32]>(&__p, "no INVITE transaction to cancel");
      ImsResult::ImsResult(a2, v14);
      ImsResult::~ImsResult(&__p);
    }
  }
}

void sub_1E4CD0B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 - 56);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(v15 - 40);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsResult::operator<<<char [27]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

BOOL SipUssdSession::desiredServices(std::__shared_weak_count *this)
{
  SipSessionInterface::stack(this, &v4);
  v1 = SipStack::prefs(v4);
  v2 = ImsPrefs::AddServicesToUssdSessions(v1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1E4CD0C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double SipSessionInterface::fillCommonRequestHeaders@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ImsOutStream::putStreamable<char const*&>(uint64_t a1, const char **a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = strlen(*a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
  *(a1 + 17) = 0;
  return a1;
}

void *std::__function::__func<SipUssdSession::startSession(void)::$_0,std::allocator<SipUssdSession::startSession(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC4570;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipUssdSession::startSession(void)::$_0,std::allocator<SipUssdSession::startSession(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC4570;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipUssdSession::startSession(void)::$_0,std::allocator<SipUssdSession::startSession(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC4570;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipUssdSession::startSession(void)::$_0,std::allocator<SipUssdSession::startSession(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipUssdSession::startSession(void)::$_0,std::allocator<SipUssdSession::startSession(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipUssdSession::startSession(void)::$_0,std::allocator<SipUssdSession::startSession(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipUssdSession::startSession(void)::$_0,std::allocator<SipUssdSession::startSession(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipUssdSession::sendInfo(SipUssdData const&)::$_0,std::allocator<SipUssdSession::sendInfo(SipUssdData const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC45F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipUssdSession::sendInfo(SipUssdData const&)::$_0,std::allocator<SipUssdSession::sendInfo(SipUssdData const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC45F0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipUssdSession::sendInfo(SipUssdData const&)::$_0,std::allocator<SipUssdSession::sendInfo(SipUssdData const&)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC45F0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipUssdSession::sendInfo(SipUssdData const&)::$_0,std::allocator<SipUssdSession::sendInfo(SipUssdData const&)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipUssdSession::sendInfo(SipUssdData const&)::$_0,std::allocator<SipUssdSession::sendInfo(SipUssdData const&)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipUssdSession::sendInfo(SipUssdData const&)::$_0,std::allocator<SipUssdSession::sendInfo(SipUssdData const&)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipUssdSession::sendInfo(SipUssdData const&)::$_0,std::allocator<SipUssdSession::sendInfo(SipUssdData const&)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_SipUssdSession_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(kUssdSdp, "v=0\r\no=- 2987933615 2987933615 IN IP6 5555::aaa:bbb:ccc:ddd\r\ns=-\r\nc=IN IP6 5555::aaa:bbb:ccc:ddd\r\nt=0 0\r\nm=audio 0 RTP/AVP 97 96\r\na=rtpmap:97 AMR/8000\r\na=fmtp:97 mode-set=0,2,5,7; maxframes=2\r\na=rtpmap:96 telephone-event/8000\r\n");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, kUssdSdp, &dword_1E4C3F000);
}

void IBISipLogger::IBISipLogger(IBISipLogger *this)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "ibi.sip.logger");
  v2[0] = 0;
  v5 = 0;
  ImsLogContainer::ImsLogContainer(this, v6, v2);
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  *(this + 18) = 0;
  *(this + 17) = &unk_1F5EC4A00;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_1F5EC4A30;
  ctu::OsLogLogger::OsLogLogger((this + 184), "com.apple.ipTelephony", "ibi.sip.logger");
  *this = &unk_1F5EC4670;
  *(this + 17) = &unk_1F5EC47B8;
  *(this + 21) = &unk_1F5EC47E8;
  *(this + 22) = &unk_1F5EC4908;
  *(this + 192) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 112) = 257;
}

void sub_1E4CD14C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = v25;
  *(v24 + 136) = v27;
  if (*(v24 + 167) < 0)
  {
    operator delete(*v26);
  }

  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void IBISipLogger::~IBISipLogger(IBISipLogger *this)
{
  *this = &unk_1F5EC4670;
  *(this + 17) = &unk_1F5EC47B8;
  *(this + 21) = &unk_1F5EC47E8;
  *(this + 22) = &unk_1F5EC4908;
  v2 = *(this + 27);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    dispatch_release(v3);
  }

  MEMORY[0x1E69225A0](this + 184);
  *(this + 17) = &unk_1F5EC4A00;
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  IBISipLogger::~IBISipLogger(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIBISipLogger::~IBISipLogger(IBISipLogger *this)
{
  IBISipLogger::~IBISipLogger((this - 176));
}

{
  IBISipLogger::~IBISipLogger((this - 176));

  JUMPOUT(0x1E69235B0);
}

uint64_t IBISipLogger::start(IBISipLogger *this, char a2)
{
  *(this + 225) = a2;
  if ((a2 & 1) == 0)
  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    v7 = *(v6 + 8);
    v8 = "No Baseband for architecture: skip start";
    v9 = 40;
LABEL_8:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    return 0;
  }

  v3 = *this;
  if ((*(this + 224) & 1) == 0)
  {
    v6 = (*(v3 + 64))(this);
    (*(*this + 16))(this, v6);
    v7 = *(v6 + 8);
    v8 = "Baseband is currently not available: skip start";
    v9 = 47;
    goto LABEL_8;
  }

  v4 = *(v3 + 80);

  return v4();
}

uint64_t IBISipLogger::start(IBISipLogger *this)
{
  if ((*(this + 192) & 1) == 0)
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "initializing IBISipLogger", 25);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    if (!*(this + 25))
    {
      v3 = dispatch_queue_create("IBISipLogger", 0);
      v4 = *(this + 25);
      *(this + 25) = v3;
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v14 = 0;
    v15 = 0;
    std::string::basic_string[abi:ne200100]<0>(v12, "IBISipLogger");
    ctu::LogServer::create();
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v14)
    {
      operator new();
    }

    v5 = *(this + 25);
    object = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    std::string::basic_string[abi:ne200100]<0>(v12, "IBISipLogger");
    v9 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ice::Client::create();
    v6 = *(this + 27);
    *(this + 13) = v11;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (object)
    {
      dispatch_release(object);
    }

    v7 = *(this + 26);
    v12[0] = &__block_literal_global_0;
    ice::Client::setEventHandler<void({block_pointer})(void)>(v7, 0, v12);
    ice::Client::start(*(this + 26));
    *(this + 192) = 1;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  return 1;
}

void sub_1E4CD1B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4CD1B74()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x1E4CD1B6CLL);
}

void ice::Client::setEventHandler<void({block_pointer})(void)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  aBlock = 0;
  ice::detail::wrapEventCallback<void>(*a3, &aBlock);
  v3 = aBlock;
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  v4 = v3;
  ice::Client::regEventHandlerInternal();
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_1E4CD1C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, void *a10)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a10)
  {
    _Block_release(a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12IBISipLogger5startEv_block_invoke()
{
  v0 = std::string::basic_string[abi:ne200100]<0>(&v6, "ibiclient");
  v2[0] = 0;
  v5 = 0;
  v1 = ims::debug(v0, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v1 + 8), "IBISipLogger ICE client started", 31);
  *(v1 + 17) = 0;
  (*(*v1 + 64))(v1, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v1 + 17) = 0;
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1E4CD1D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void IBISipLogger::stop(IBISipLogger *this)
{
  if (*(this + 192) == 1)
  {
    *(this + 192) = 0;
    *(this + 225) = 0;
    v1 = *(this + 27);
    *(this + 26) = 0;
    *(this + 27) = 0;
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }
}

void non-virtual thunk toIBISipLogger::stop(IBISipLogger *this)
{
  if (*(this + 56) == 1)
  {
    *(this + 56) = 0;
    *(this + 89) = 0;
    v1 = *(this + 10);
    *(this + 9) = 0;
    *(this + 10) = 0;
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }
}

uint64_t IBISipLogger::eventIdForSipResponse(uint64_t *a1, int a2)
{
  v4 = *a1;
  v5 = *(v4 + 128);
  v6 = SipMessage::header<SipCSeqHeader>(v4);
  if (v6)
  {
    v7 = v6[15] == 1;
  }

  else
  {
    v7 = 0;
  }

  memset(&__p, 0, sizeof(__p));
  v8 = SipMessage::header<SipCSeqHeader>(*a1);
  v9 = (v8 + 64);
  if (!v8)
  {
    v9 = &ims::kEmptyString;
  }

  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
  }

  else
  {
    __p = *v9;
  }

  v10 = *(*a1 + 128);
  if (v10 - 100 > 0x63)
  {
    if (v10 - 200 > 0x63)
    {
      if (v10 >= 0x12C)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size == 5)
        {
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          data = p_p->__r_.__value_.__l.__data_;
          v26 = p_p->__r_.__value_.__s.__data_[4];
          if (data == *"PRACK" && v26 == SipRequest::kMethodPrack[4])
          {
            v11 = 38;
            goto LABEL_56;
          }
        }

        else if (size == 6)
        {
          v19 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v19 = __p.__r_.__value_.__r.__words[0];
          }

          v20 = v19->__r_.__value_.__l.__data_;
          v21 = WORD2(v19->__r_.__value_.__r.__words[0]);
          if (v20 == *"INVITE" && v21 == *"TE")
          {
            if (v7)
            {
              if (v5 == 487)
              {
                v23 = 0;
              }

              else
              {
                v23 = 22;
              }

              if (v5 == 408)
              {
                v11 = 23;
              }

              else
              {
                v11 = v23;
              }
            }

            else
            {
              v11 = 25;
            }

            goto LABEL_56;
          }
        }
      }
    }

    else
    {
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = __p.__r_.__value_.__l.__size_;
      }

      if (v12 == 6)
      {
        v13 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = __p.__r_.__value_.__r.__words[0];
        }

        v14 = v13->__r_.__value_.__l.__data_;
        v15 = WORD2(v13->__r_.__value_.__r.__words[0]);
        if (v14 == *"INVITE" && v15 == *"TE")
        {
          if (a2)
          {
            v17 = 13;
          }

          else
          {
            v17 = 12;
          }

          if (v7)
          {
            v11 = v17;
          }

          else
          {
            v11 = 19;
          }

          goto LABEL_56;
        }
      }
    }

    v11 = 0;
    goto LABEL_56;
  }

  if (v5 == 180)
  {
    v11 = 9;
  }

  else
  {
    v11 = 0;
  }

LABEL_56:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

uint64_t IBISipLogger::eventIdForSipRequest(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = (*(**a2 + 120))();
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 6 || (v8 >= 0 ? (v9 = v6) : (v9 = *v6), (v10 = *v9, v11 = *(v9 + 4), v10 == *"INVITE") ? (v12 = v11 == *"TE") : (v12 = 0), !v12))
  {
    v13 = (*(**a2 + 120))();
    v14 = *(v13 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v13 + 8);
    }

    if (v14 == 6 && (v15 >= 0 ? (v16 = v13) : (v16 = *v13), (v17 = *v16, v18 = *(v16 + 4), v17 == *"UPDATE") ? (v19 = v18 == *"TE") : (v19 = 0), v19))
    {
      v53 = a3 == 0;
      v54 = 27;
    }

    else
    {
      v20 = (*(**a2 + 120))();
      v21 = *(v20 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v20 + 8);
      }

      if (v21 != 5 || (v22 >= 0 ? (v23 = v20) : (v23 = *v20), (v24 = *v23, v25 = *(v23 + 4), v24 == *"PRACK") ? (v26 = v25 == SipRequest::kMethodPrack[4]) : (v26 = 0), !v26))
      {
        v27 = (*(**a2 + 120))();
        v28 = *(v27 + 23);
        v29 = v28;
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(v27 + 8);
        }

        if (v28 != 6)
        {
          return 0;
        }

        v30 = v29 >= 0 ? v27 : *v27;
        v31 = *v30;
        v32 = *(v30 + 4);
        v33 = v31 == *"NOTIFY" && v32 == *"FY";
        v34 = !v33;
        if (v34 || a3 == 0)
        {
          return 0;
        }

        v36 = SipMessage::header<SipEventHeader>(*a2);
        if (!v36)
        {
          return 0;
        }

        v37 = *(v36 + 127);
        v38 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v37 = v36[14];
        }

        if (v37 != 5)
        {
          return 0;
        }

        v41 = v36[13];
        v39 = (v36 + 13);
        v40 = v41;
        v42 = v38 >= 0 ? v39 : v40;
        v43 = *v42;
        v44 = v42[4];
        if (v43 != *"refer" || v44 != SipReferEventPackage::kPackageName[4])
        {
          return 0;
        }

        v46 = *a2;
        v47 = a2[1];
        v55[0] = v46;
        v55[1] = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v48 = *(*a1 + 248);
        v49 = *(*a1 + 256);
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = SipReferEventPackage::decodeSipFragmentResponseCodeFromNotify(v55, v48 + 384);
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        if (v50 == 200)
        {
          return 42;
        }

        else
        {
          return 0;
        }
      }

      v53 = a3 == 0;
      v54 = 31;
    }

    if (v53)
    {
      return 0;
    }

    else
    {
      return v54;
    }
  }

  result = SipMessage::header<SipCSeqHeader>(*a2);
  if (result)
  {
    if (a3)
    {
      v52 = 6;
    }

    else
    {
      v52 = 5;
    }

    if (*(result + 60) == 1)
    {
      return v52;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E4CD22E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void *SipMessage::header<SipEventHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Event");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

uint64_t IBISipLogger::logAriRequest(IBISipLogger *this, AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK *a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "-------------------------------------------------------------------------", 73);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "event id: ", 10);
  *(v5 + 17) = 0;
  v6 = **(a2 + 18);
  if (v6 > 22)
  {
    if (v6 > 31)
    {
      if (v6 > 37)
      {
        if (v6 == 38)
        {
          v7 = "IBI_SIP_EVENT_PRACK_FAILURE";
          goto LABEL_41;
        }

        if (v6 == 42)
        {
          v7 = "IBI_SIP_EVENT_REFER_NOTIFY_OK";
          goto LABEL_41;
        }
      }

      else
      {
        if (v6 == 32)
        {
          v7 = "IBI_SIP_EVENT_INCOMING_SESSION_REFER";
          goto LABEL_41;
        }

        if (v6 == 35)
        {
          v7 = "IBI_SIP_EVENT_FINAL_REFER";
          goto LABEL_41;
        }
      }
    }

    else if (v6 > 26)
    {
      if (v6 == 27)
      {
        v7 = "IBI_SIP_EVENT_INCOMING_UPDATE";
        goto LABEL_41;
      }

      if (v6 == 31)
      {
        v7 = "IBI_SIP_EVENT_PRACK";
        goto LABEL_41;
      }
    }

    else
    {
      if (v6 == 23)
      {
        v7 = "IBI_SIP_EVENT_SESSION_FAILIRE_TIMEOUT";
        goto LABEL_41;
      }

      if (v6 == 25)
      {
        v7 = "IBI_SIP_EVENT_REINVITE_FAILIRE";
        goto LABEL_41;
      }
    }
  }

  else if (v6 > 11)
  {
    if (v6 > 18)
    {
      if (v6 == 19)
      {
        v7 = "IBI_SIP_EVENT_REINVITE_EST";
        goto LABEL_41;
      }

      if (v6 == 22)
      {
        v7 = "IBI_SIP_EVENT_SESSION_FAILURE";
        goto LABEL_41;
      }
    }

    else
    {
      if (v6 == 12)
      {
        v7 = "IBI_SIP_EVENT_INCOMING_SESSION_EST";
        goto LABEL_41;
      }

      if (v6 == 13)
      {
        v7 = "IBI_SIP_EVENT_OUTGOING_SESSION_EST";
        goto LABEL_41;
      }
    }
  }

  else if (v6 > 5)
  {
    if (v6 == 6)
    {
      v7 = "IBI_SIP_EVENT_INCOMING_SESSION";
      goto LABEL_41;
    }

    if (v6 == 9)
    {
      v7 = "IBI_SIP_EVENT_RINGING";
      goto LABEL_41;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = "IBI_SIP_EVENT_NA";
      goto LABEL_41;
    }

    if (v6 == 5)
    {
      v7 = "IBI_SIP_EVENT_OUTGOING_SESSION";
      goto LABEL_41;
    }
  }

  v7 = "unknown";
LABEL_41:
  std::string::basic_string[abi:ne200100]<0>(__p, v7);
  (*(*v5 + 32))(v5, __p);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*this + 64))(this);
  (*(*this + 16))(this, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "direction: ", 11);
  *(v8 + 17) = 0;
  if (**(a2 + 9) == 1)
  {
    v9 = "incoming";
  }

  else
  {
    v9 = "outgoing";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9, 8);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v10 = (*(*this + 64))(this);
  (*(*this + 16))(this, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sdp present: ", 13);
  *(v10 + 17) = 0;
  v11 = **(a2 + 10);
  if (v11)
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v12, v13);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v14 = (*(*this + 64))(this);
  (*(*this + 16))(this, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "message id: ", 12);
  *(v14 + 17) = 0;
  v15 = **(a2 + 11);
  if (v15 > 0xE)
  {
    v16 = "unknown";
  }

  else
  {
    v16 = off_1E8769A20[v15];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v16);
  (*(*v14 + 32))(v14, __p);
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = (*(*this + 64))(this);
  (*(*this + 16))(this, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "response code: ", 15);
  *(v17 + 17) = 0;
  MEMORY[0x1E6923390](*(v17 + 8), **(a2 + 12));
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  v18 = (*(*this + 64))(this);
  (*(*this + 16))(this, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SIP call id: ", 13);
  *(v18 + 17) = 0;
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(__p, *(a2 + 15), *(a2 + 16), *(a2 + 16) - *(a2 + 15));
  (*(*v18 + 32))(v18, __p);
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = (*(*this + 64))(this);
  (*(*this + 16))(this, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "app call id: ", 13);
  *(v19 + 17) = 0;
  MEMORY[0x1E6923350](*(v19 + 8), **(a2 + 13));
  *(v19 + 17) = 0;
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  v20 = (*(*this + 64))(this);
  (*(*this + 16))(this, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "call type: ", 11);
  *(v20 + 17) = 0;
  v21 = **(a2 + 19);
  if (v21 > 7)
  {
    v22 = "unknown";
  }

  else
  {
    v22 = off_1E8769A98[v21];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v22);
  (*(*v20 + 32))(v20, __p);
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = (*(*this + 64))(this);
  (*(*this + 16))(this, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "sip_call_id_len_t8: ", 20);
  *(v23 + 17) = 0;
  MEMORY[0x1E6923340](*(v23 + 8), **(a2 + 14));
  *(v23 + 17) = 0;
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  v24 = (*(*this + 64))(this);
  (*(*this + 16))(this, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "msg_length_t12: ", 16);
  *(v24 + 17) = 0;
  MEMORY[0x1E6923390](*(v24 + 8), **(a2 + 20));
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  v25 = (*(*this + 64))(this);
  (*(*this + 16))(this, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "-------------------------------------------------------------------------", 73);
  *(v25 + 17) = 0;
  result = (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v25 + 17) = 0;
  return result;
}

void sub_1E4CD2F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IBISipLogger::logSipRequest(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    v6 = *(v5 + 4372);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (!v4)
    {
LABEL_6:
      v10 = v6;
      memset(v9, 0, sizeof(v9));
      AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK(v9);
      v7 = a3[1];
      v8[0] = *a3;
      v8[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      fillCommonFields<AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK>(v8);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  goto LABEL_6;
}

void sub_1E4CD32C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x1E6922CD0](&a27);
  MEMORY[0x1E6922D40](&a67);
  _Unwind_Resume(a1);
}

void fillCommonFields<AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK>(IPTelephonyManager *a1)
{
  v21[0] = 0;
  v21[1] = 0;
  IPTelephonyManager::getCallManager(a1, v21);
  v20[0] = 0;
  v20[1] = 0;
  IPTelephonyManager::getBambiClient(v20);
  v19 = -1;
  v18[0] = 0;
  v18[1] = 0;
  v2 = v21[0];
  v3 = SipMessage::header<SipCallIdHeader>(*a1);
  if (v3)
  {
    v4 = (v3 + 64);
  }

  else
  {
    v4 = &ims::kEmptyString;
  }

  IMSCallManager::callInfoForSipCallId(v2, v4, v18);
  v5 = v18[0];
  if (v18[0])
  {
    v7 = *(v18[0] + 160);
    v6 = *(v18[0] + 168);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(v5 + 72);
  }

  else
  {
    *&v17.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v2 + 200))(&v17, v2);
    v8 = v17.__r_.__value_.__r.__words[0];
    if (v17.__r_.__value_.__r.__words[0])
    {
      v9 = SipMessage::header<SipCallIdHeader>(*a1);
      v10 = (v9 + 64);
      if (!v9)
      {
        v10 = &ims::kEmptyString;
      }

      v11 = *(v8 + 527);
      if (v11 >= 0)
      {
        v12 = *(v8 + 527);
      }

      else
      {
        v12 = *(v8 + 512);
      }

      v13 = *(v10 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v10 + 1);
      }

      if (v12 == v13)
      {
        v15 = v11 >= 0 ? (v8 + 504) : *(v8 + 504);
        v16 = v14 >= 0 ? v10 : *v10;
        if (!memcmp(v15, v16, v12) && v17.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v17.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }
      }
    }

    if (v17.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17.__r_.__value_.__l.__size_);
    }
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = 1;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD3E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  if (*(v57 - 153) < 0)
  {
    operator delete(*(v57 - 176));
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v59 = *(v57 - 136);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v60 = *(v57 - 112);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  v61 = *(v57 - 96);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(a1);
}

double IBISipLogger::send<AriSdk::ARI_AriACK_SDK,AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a2[192])
  {
    v6 = *(a2 + 26);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN12IBISipLogger4sendIN6AriSdk14ARI_AriACK_SDKENS1_38ARI_IBISipMsgInjectToCpIMSTraceReq_SDKEEE9ImsResultRT0_b_block_invoke;
    v9[3] = &__block_descriptor_tmp_171;
    v9[4] = a2;
    v15 = 0;
    ice::detail::wrapCallback<void>(v9, &v15);
    LODWORD(v13) = 0;
    if (!*(a3 + 64))
    {
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }

    memset(v10, 0, sizeof(v10));
    v11 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, (v6 + 8));
    ice::SendMsgBaseProxy::SendMsgBaseProxy();
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v12 = v15;
    v15 = 0;
    ice::SendMsgBaseProxy::callback();
    if (v12)
    {
      _Block_release(v12);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    MEMORY[0x1E69226E0](v10);
  }

  else
  {
    v7 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "IBISipLogger is not initialized: skip send", 42);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }

  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

void sub_1E4CD42A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 - 64);
  if (v9)
  {
    _Block_release(v9);
  }

  MEMORY[0x1E69226E0](va);
  v10 = *(v7 - 40);
  if (v10)
  {
    _Block_release(v10);
  }

  _Unwind_Resume(a1);
}

void fillCommonFields<AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK>(IPTelephonyManager *a1)
{
  v21[0] = 0;
  v21[1] = 0;
  IPTelephonyManager::getCallManager(a1, v21);
  v20[0] = 0;
  v20[1] = 0;
  IPTelephonyManager::getBambiClient(v20);
  v19 = -1;
  v18[0] = 0;
  v18[1] = 0;
  v2 = v21[0];
  v3 = SipMessage::header<SipCallIdHeader>(*a1);
  if (v3)
  {
    v4 = (v3 + 64);
  }

  else
  {
    v4 = &ims::kEmptyString;
  }

  IMSCallManager::callInfoForSipCallId(v2, v4, v18);
  v5 = v18[0];
  if (v18[0])
  {
    v7 = *(v18[0] + 160);
    v6 = *(v18[0] + 168);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(v5 + 72);
  }

  else
  {
    *&v17.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v2 + 200))(&v17, v2);
    v8 = v17.__r_.__value_.__r.__words[0];
    if (v17.__r_.__value_.__r.__words[0])
    {
      v9 = SipMessage::header<SipCallIdHeader>(*a1);
      v10 = (v9 + 64);
      if (!v9)
      {
        v10 = &ims::kEmptyString;
      }

      v11 = *(v8 + 527);
      if (v11 >= 0)
      {
        v12 = *(v8 + 527);
      }

      else
      {
        v12 = *(v8 + 512);
      }

      v13 = *(v10 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v10 + 1);
      }

      if (v12 == v13)
      {
        v15 = v11 >= 0 ? (v8 + 504) : *(v8 + 504);
        v16 = v14 >= 0 ? v10 : *v10;
        if (!memcmp(v15, v16, v12) && v17.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v17.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }
      }
    }

    if (v17.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17.__r_.__value_.__l.__size_);
    }
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = 1;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD4DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  if (*(v57 - 153) < 0)
  {
    operator delete(*(v57 - 176));
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v59 = *(v57 - 136);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v60 = *(v57 - 112);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  v61 = *(v57 - 96);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(a1);
}

double IBISipLogger::send<AriSdk::ARI_AriACK_SDK,AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK>(uint64_t a1, _BYTE *a2)
{
  if (a2[192])
  {
    v4 = *(a2 + 26);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___ZN12IBISipLogger4sendIN6AriSdk14ARI_AriACK_SDKENS1_36ARI_IBISipMessageInjectToCpTrace_SDKEEE9ImsResultRT0_b_block_invoke;
    v7[3] = &__block_descriptor_tmp_175;
    v7[4] = a2;
    v13 = 0;
    ice::detail::wrapCallback<void>(v7, &v13);
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v11, (v4 + 8));
    ice::SendMsgBaseProxy::SendMsgBaseProxy();
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v10 = v13;
    v13 = 0;
    ice::SendMsgBaseProxy::callback();
    if (v10)
    {
      _Block_release(v10);
    }

    if (v13)
    {
      _Block_release(v13);
    }

    MEMORY[0x1E69226E0](v8);
  }

  else
  {
    v5 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "IBISipLogger is not initialized: skip send", 42);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
  }

  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

void sub_1E4CD51C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 - 64);
  if (v9)
  {
    _Block_release(v9);
  }

  MEMORY[0x1E69226E0](va);
  v10 = *(v7 - 40);
  if (v10)
  {
    _Block_release(v10);
  }

  _Unwind_Resume(a1);
}

void IBISipLogger::logSipResponse(uint64_t a1, uint64_t *a2, void *a3)
{
  memset(v13, 0, sizeof(v13));
  AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK(v13);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK::ARI_IBISipMessageInjectToCpTrace_SDK(v11);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    v7 = *(v6 + 4372);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
LABEL_6:
      v10 = v7;
      v8 = a3[1];
      v9[0] = *a3;
      v9[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      fillCommonFields<AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK>(v9);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  goto LABEL_6;
}

void sub_1E4CD5530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  MEMORY[0x1E6922CD0](&a41);
  MEMORY[0x1E6922D40](v41 - 256);
  _Unwind_Resume(a1);
}

void IBISipLogger::sendSessionStarted(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v19 = a3;
  v18 = a4;
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "telling baseband ", 17);
  *(v8 + 17) = 0;
  if (a3)
  {
    v9 = "emergency ";
  }

  else
  {
    v9 = "";
  }

  if (a3)
  {
    v10 = 10;
  }

  else
  {
    v10 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9, v10);
  *(v8 + 17) = 0;
  if (a4)
  {
    v11 = "emergencyNormal ";
  }

  else
  {
    v11 = "";
  }

  if (a4)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v11, v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "session started", 15);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v16);
  v13 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    LODWORD(v13) = *(v13 + 4372);
  }

  v15 = v13;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

double IBISipLogger::send<AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK,AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a2 + 26);
  if (v5 && (a2[224] & 1) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN12IBISipLogger4sendIN6AriSdk54ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDKENS1_52ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDKEEE9ImsResultRT0_b_block_invoke;
    v9[3] = &__block_descriptor_tmp_176;
    v9[4] = a2;
    v15 = 0;
    ice::detail::wrapCallback<void>(v9, &v15);
    LODWORD(v13) = 0;
    if (!*(a3 + 64))
    {
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }

    memset(v10, 0, sizeof(v10));
    v11 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, (v5 + 8));
    ice::SendMsgBaseProxy::SendMsgBaseProxy();
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v12 = v15;
    v15 = 0;
    ice::SendMsgBaseProxy::callback();
    if (v12)
    {
      _Block_release(v12);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    MEMORY[0x1E69226E0](v10);
  }

  else
  {
    v7 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "No Baseband for architecture or Baseband is currently not available: skip send", 78);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }

  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

void sub_1E4CD5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 - 64);
  if (v9)
  {
    _Block_release(v9);
  }

  MEMORY[0x1E69226E0](va);
  v10 = *(v7 - 40);
  if (v10)
  {
    _Block_release(v10);
  }

  _Unwind_Resume(a1);
}

void IBISipLogger::sendSessionEnded(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v19 = a3;
  v18 = a4;
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "telling baseband ", 17);
  *(v8 + 17) = 0;
  if (a3)
  {
    v9 = "emergency ";
  }

  else
  {
    v9 = "";
  }

  if (a3)
  {
    v10 = 10;
  }

  else
  {
    v10 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9, v10);
  *(v8 + 17) = 0;
  if (a4)
  {
    v11 = "emergencyNormal ";
  }

  else
  {
    v11 = "";
  }

  if (a4)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v11, v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "session ended", 13);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v16);
  v13 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    LODWORD(v13) = *(v13 + 4372);
  }

  v15 = v13;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD5D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

void IBISipLogger::sendSessionDropped(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v19 = a3;
  v18 = a4;
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "telling baseband ", 17);
  *(v8 + 17) = 0;
  if (a3)
  {
    v9 = "emergency ";
  }

  else
  {
    v9 = "";
  }

  if (a3)
  {
    v10 = 10;
  }

  else
  {
    v10 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9, v10);
  *(v8 + 17) = 0;
  if (a4)
  {
    v11 = "emergencyNormal ";
  }

  else
  {
    v11 = "";
  }

  if (a4)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v11, v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "session dropped", 15);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v16);
  v13 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    LODWORD(v13) = *(v13 + 4372);
  }

  v15 = v13;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD5F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

void IBISipLogger::sendSessionFailed(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v19 = a3;
  v18 = a4;
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "telling baseband ", 17);
  *(v8 + 17) = 0;
  if (a3)
  {
    v9 = "emergency ";
  }

  else
  {
    v9 = "";
  }

  if (a3)
  {
    v10 = 10;
  }

  else
  {
    v10 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9, v10);
  *(v8 + 17) = 0;
  if (a4)
  {
    v11 = "emergencyNormal ";
  }

  else
  {
    v11 = "";
  }

  if (a4)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v11, v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "session failed", 14);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v16);
  v13 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    LODWORD(v13) = *(v13 + 4372);
  }

  v15 = v13;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD61E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

void IBISipLogger::logEarlyMTSessionRequestedEvent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 384);
  if (!v5 || (v6 = std::__shared_weak_count::lock(v5)) == 0)
  {
    if (ims::AccessNetwork::isWifi(0xD68))
    {
      return;
    }

LABEL_6:
    v9 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "telling baseband about incoming session attempt", 47);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v14);
    v10 = *a2;
    v11 = *(*a2 + 384);
    if (v11 && std::__shared_weak_count::lock(v11))
    {
      v12 = *(v10 + 376);
      if (v12)
      {
        LODWORD(v12) = *(v12 + 4372);
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v13 = v12;
    AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
  }

  v7 = v6;
  isWifi = ims::AccessNetwork::isWifi((*(v4 + 376) + 3432));
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (!isWifi)
  {
    goto LABEL_6;
  }
}

void sub_1E4CD6414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

void sub_1E4CD6438()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1E4CD6428);
}

void IBISipLogger::logSessionRequestedEvent(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = *a2;
    v7 = *(*a2 + 384);
    if (v7 && (v8 = std::__shared_weak_count::lock(v7)) != 0)
    {
      v9 = v8;
      isWifi = ims::AccessNetwork::isWifi((*(v6 + 376) + 3432));
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (isWifi)
      {
        return;
      }
    }

    else if (ims::AccessNetwork::isWifi(0xD68))
    {
      return;
    }

    IPTelephonyManager::getBambiClient(&v27);
    v24[0] = 0uLL;
    v11 = BambiClient::callCountExcludingCall(v27, v24);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v11 < 2)
    {
      v13 = *(*a2 + 552);
      v26 = v13 != 0;
      v14 = *a1 + 64;
      if (v13)
      {
        v15 = "emergency ";
      }

      else
      {
        v15 = "";
      }

      if (v13)
      {
        v16 = 10;
      }

      else
      {
        v16 = 0;
      }

      v17 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "telling baseband about ", 23);
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), v15, v16);
      *(v17 + 17) = 0;
      v18 = (*(**a2 + 104))();
      if (v18)
      {
        v19 = "emergencyNormal ";
      }

      else
      {
        v19 = "";
      }

      if (v18)
      {
        v20 = 16;
      }

      else
      {
        v20 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), v19, v20);
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "session attempt", 15);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v24);
      v21 = *a2;
      v22 = *(*a2 + 384);
      if (v22 && std::__shared_weak_count::lock(v22))
      {
        v23 = *(v21 + 376);
        if (v23)
        {
          LODWORD(v23) = *(v23 + 4372);
        }
      }

      else
      {
        LODWORD(v23) = 0;
      }

      LODWORD(v27) = v23;
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }

    v12 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "call count = ", 13);
    *(v12 + 17) = 0;
    MEMORY[0x1E6923370](*(v12 + 8), v11);
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ". We already told baseband we're in a call.", 43);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
  }
}

void sub_1E4CD6844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

void sub_1E4CD6878()
{
  v1 = *(v0 - 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E4CD6870);
}

uint64_t IBISipLogger::logSessionConfirmedEvent(uint64_t a1, uint64_t *a2)
{
  IPTelephonyManager::getBambiClient(&v19);
  v21[0] = 0;
  v21[1] = 0;
  v4 = BambiClient::callCountExcludingCall(v19, v21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v4 == 1)
  {
    v5 = *a2;
    v6 = *(*a2 + 384);
    if (v6 && (v7 = std::__shared_weak_count::lock(v6)) != 0)
    {
      v8 = v7;
      isWifi = ims::AccessNetwork::isWifi((*(v5 + 376) + 3432));
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (!isWifi)
      {
        goto LABEL_7;
      }
    }

    else if (!ims::AccessNetwork::isWifi(0xD68))
    {
LABEL_7:
      v10 = *a2;
      v17 = 0;
      v18 = 0;
      v11 = *(v10 + 384);
      if (v11)
      {
        v18 = std::__shared_weak_count::lock(v11);
        if (v18)
        {
          v17 = *(v10 + 376);
        }
      }

      v14 = *a2;
      v15 = *(*a2 + 552);
      v16 = (*(*v14 + 104))(v14);
      IBISipLogger::sendSessionStarted(a1, &v17, v15 != 0, v16);
    }
  }

  v12 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "call count = ", 13);
  *(v12 + 17) = 0;
  MEMORY[0x1E6923370](*(v12 + 8), v4);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ". We already told baseband we're in a call.", 43);
  *(v12 + 17) = 0;
  result = (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  return result;
}

void sub_1E4CD6ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IBISipLogger::logSessionTerminationEvent(IBISipLogger *this, const BambiCallSessionTerminationBaseEvent *a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "logSessionTerminationEvent() for ", 33);
  *(v4 + 17) = 0;
  v5 = *(a2 + 8);
  if (v5 <= 37)
  {
    v6 = reasonStrings + 24 * v5;
  }

  else
  {
    v6 = reasonStrings + 240;
  }

  (*(*v4 + 32))(v4, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "...", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v7 = *(a2 + 3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v8 = *(a2 + 2);
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = std::__shared_weak_count::lock(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!v9 || !v8)
  {
LABEL_13:
    v16 = (*(*this + 64))(this);
    (*(*this + 16))(this, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "this call is null: no op", 24);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v10 = v8[48];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v11 = v8[69];
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12 || (v13 = v8[47]) == 0)
  {
LABEL_16:
    v17 = (*(*this + 64))(this);
    (*(*this + 16))(this, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "this sipStack is null: no op", 28);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (!v12)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v14 = (*(*this + 64))(this);
  (*(*this + 16))(this, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "this [sipStack simInstance] = [", 31);
  *(v14 + 17) = 0;
  v15 = (v13 + 4432);
  if (*(v13 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *(v13 + 4432), *(v13 + 4440));
  }

  else
  {
    *&v31.__r_.__value_.__l.__data_ = *v15;
    v31.__r_.__value_.__r.__words[2] = *(v13 + 4448);
  }

  (*(*v14 + 32))(v14, &v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " ", 1);
  *(v14 + 17) = 0;
  MEMORY[0x1E6923350](*(v14 + 8), *(v13 + 4372));
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (ims::AccessNetwork::isWifi((v13 + 3432)))
  {
    v18 = (*(*this + 64))(this);
    (*(*this + 16))(this, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "this call was on wifi: no op", 28);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    IPTelephonyManager::getBambiClient(&v29);
    v19 = v29;
    if (*(v13 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(v13 + 4432), *(v13 + 4440));
    }

    else
    {
      *&v31.__r_.__value_.__l.__data_ = *v15;
      v31.__r_.__value_.__r.__words[2] = *(v13 + 4448);
    }

    v20 = BambiClient::activeCallCountForStack(v19, v11 != 0, &v31.__r_.__value_.__l.__data_);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (!v20)
    {
      v22 = *(a2 + 8);
      if (v22 != 17)
      {
        if (v22 == 20)
        {
          v28[0] = v13;
          v28[1] = v12;
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = (*(*v8 + 104))(v8);
          IBISipLogger::sendSessionDropped(this, v28, v11 != 0, v23);
        }

        v26[0] = v13;
        v26[1] = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v25 = (*(*v8 + 104))(v8);
        IBISipLogger::sendSessionEnded(this, v26, v11 != 0, v25);
      }

      v27[0] = v13;
      v27[1] = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = (*(*v8 + 104))(v8);
      IBISipLogger::sendSessionFailed(this, v27, v11 != 0, v24);
    }

    v18 = (*(*this + 64))(this);
    (*(*this + 16))(this, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "this sipStack still has ", 24);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923370](*(v18 + 8), v20);
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " other active calls: no op", 26);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v18 + 17) = 0;
LABEL_33:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_34:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  return 0;
}

void sub_1E4CD7294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void IBISipLogger::logWiFiHandover(uint64_t a1, uint64_t *a2, int a3, char a4)
{
  if (!*a2)
  {
    goto LABEL_11;
  }

  IPTelephonyManager::getBambiClient(&v28);
  v8 = v28;
  v9 = *a2;
  if (*(*a2 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(v9 + 4432), *(v9 + 4440));
  }

  else
  {
    v27 = *(v9 + 4432);
  }

  v10 = BambiClient::callCountForStack(v8, &v27.__r_.__value_.__l.__data_);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v10)
  {
LABEL_11:
    if (TelephonyRadiosGetRadioVendor() != 3 || (a4 & 1) != 0)
    {
      IPTelephonyManager::getBambiClient(&v27);
      v14 = *(v27.__r_.__value_.__r.__words[0] + 368);
      if (v14)
      {
        v15 = 0;
        do
        {
          if (*(v14[2] + 552))
          {
            ++v15;
          }

          v14 = *v14;
        }

        while (v14);
        v16 = v15 != 0;
      }

      else
      {
        v16 = 0;
      }

      if (v27.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
      }

      IPTelephonyManager::getBambiClient(&v27);
      v17 = *(v27.__r_.__value_.__r.__words[0] + 368);
      if (v17)
      {
        v18 = 0;
        do
        {
          v18 += (*(*v17[2] + 104))(v17[2]);
          v17 = *v17;
        }

        while (v17);
        LODWORD(v17) = v18 != 0;
      }

      if (v27.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
      }

      v19 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v19);
      v20 = *(v19 + 8);
      if (a3)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Cellular to WiFi handover: will send SESSION_FINISHED event to BB", 65);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        v21 = *a2;
        v22 = a2[1];
        v26[0] = v21;
        v26[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        IBISipLogger::sendSessionEnded(a1, v26, v16, v17);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "WiFi to Cellular handover: will send SESSION_STARTED event to BB", 64);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      v23 = *a2;
      v24 = a2[1];
      v25[0] = v23;
      v25[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      IBISipLogger::sendSessionStarted(a1, v25, v16, v17);
    }

    v11 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v11);
    if (a3)
    {
      v12 = "On WiFi: skipped extra SESSION_FINISHED event to BB";
      v13 = 51;
    }

    else
    {
      v12 = "On Cellular: skipped extra SESSION_STARTED event to BB";
      v13 = 54;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12, v13);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
  }
}

void sub_1E4CD7704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void IBISipLogger::logRegistrationError(uint64_t a1, uint64_t *a2, SipRegistrationNotification *a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "telling baseband about registration error. Throttle for ", 56);
  *(v6 + 17) = 0;
  Retry = SipRegistrationNotification::secondsUntilNextRetry(a3);
  MEMORY[0x1E6923360](*(v6 + 8), Retry);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " seconds", 8);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  memset(v11, 0, sizeof(v11));
  AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK(v11);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    LODWORD(v8) = *(v8 + 4372);
  }

  v10 = v8;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD7968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922ED0](va);
  _Unwind_Resume(a1);
}

double IBISipLogger::send<AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK,AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a2 + 26);
  if (v5 && (a2[224] & 1) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN12IBISipLogger4sendIN6AriSdk46ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDKENS1_44ARI_IBINetDcImsRegistrationStatusInfoReq_SDKEEE9ImsResultRT0_b_block_invoke;
    v9[3] = &__block_descriptor_tmp_177;
    v9[4] = a2;
    v15 = 0;
    ice::detail::wrapCallback<void>(v9, &v15);
    LODWORD(v13) = 0;
    if (!*(a3 + 64))
    {
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }

    memset(v10, 0, sizeof(v10));
    v11 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, (v5 + 8));
    ice::SendMsgBaseProxy::SendMsgBaseProxy();
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v12 = v15;
    v15 = 0;
    ice::SendMsgBaseProxy::callback();
    if (v12)
    {
      _Block_release(v12);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    MEMORY[0x1E69226E0](v10);
  }

  else
  {
    v7 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "No Baseband for architecture or Baseband is currently not available: skip send", 78);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }

  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

void sub_1E4CD7BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 - 64);
  if (v9)
  {
    _Block_release(v9);
  }

  MEMORY[0x1E69226E0](va);
  v10 = *(v7 - 40);
  if (v10)
  {
    _Block_release(v10);
  }

  _Unwind_Resume(a1);
}

void IBISipLogger::logRegistrationRequest(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "telling baseband about registration attempt", 43);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  memset(v8, 0, sizeof(v8));
  AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK(v8);
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    LODWORD(v5) = *(v5 + 4372);
  }

  v7 = v5;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD7DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922ED0](va);
  _Unwind_Resume(a1);
}

void sub_1E4CD7E04()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1E4CD7DF4);
}

void IBISipLogger::logSmsSendAttemptedEvent(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "telling baseband about sms attempt", 34);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v8);
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    LODWORD(v5) = *(v5 + 4372);
  }

  v7 = v5;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD7FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

void sub_1E4CD7FE4()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1E4CD7FD4);
}

void IBISipLogger::logSmsSendCompletedEvent(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "telling baseband about sms send finish.", 39);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(v8);
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    LODWORD(v5) = *(v5 + 4372);
  }

  v7 = v5;
  AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
}

void sub_1E4CD81A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922F50](va);
  _Unwind_Resume(a1);
}

void sub_1E4CD81C8()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1E4CD81B8);
}

uint64_t IBISipLogger::setBasebandAvailable(IBISipLogger *this, uint64_t a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setting baseband available as ", 30);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923320](*(v4 + 8), a2);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  *(this + 224) = a2;
  if (a2 && *(this + 225) == 1 && (*(this + 192) & 1) == 0)
  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Airplane mode changed to disabled, starting client...", 53);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    v7 = *(*this + 80);

    return v7(this);
  }

  return result;
}

void *IBISipLogger::logPrefix(IBISipLogger *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "IBISipLogger: ", 14);
  *(a2 + 17) = 0;
  return result;
}

void std::__shared_ptr_emplace<ImsLogWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC4B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *ice::detail::wrapEventCallback<void>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke;
  aBlock[3] = &unk_1E8769958;
  aBlock[4] = a1;
  result = _Block_copy(aBlock);
  *a2 = result;
  return result;
}

BOOL isCallRelatedMethod(unsigned __int16 *a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1 == 3)
  {
    if (v2 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (*v11 != SipRequest::kMethodAck || *(v11 + 2) != BYTE2(SipRequest::kMethodAck))
    {
      v6 = *v11;
      v7 = SipRequest::kMethodBye;
      v8 = *(v11 + 2);
      v9 = BYTE2(SipRequest::kMethodBye);
      return v6 == v7 && v8 == v9;
    }

    return 1;
  }

  if (v1 == 5)
  {
    if (v2 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    v6 = *v10;
    v7 = *"PRACK";
    v8 = *(v10 + 4);
    v9 = SipRequest::kMethodPrack[4];
    return v6 == v7 && v8 == v9;
  }

  if (v1 != 6)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (*v3 == *"INVITE" && v3[2] == *"TE")
  {
    return 1;
  }

  if (*v3 == *"UPDATE" && v3[2] == *"TE")
  {
    return 1;
  }

  v6 = *v3;
  v7 = *"CANCEL";
  v8 = v3[2];
  v9 = *"EL";
  return v6 == v7 && v8 == v9;
}

uint64_t messageIdForMethod(unsigned __int16 *a1)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        if (v3 >= 0)
        {
          v18 = a1;
        }

        else
        {
          v18 = *a1;
        }

        v19 = *v18;
        v20 = *(v18 + 3);
        if (v19 == *"MESSAGE" && v20 == *"SAGE")
        {
          return 11;
        }

        break;
      case 9:
        if (v3 >= 0)
        {
          v27 = a1;
        }

        else
        {
          v27 = *a1;
        }

        v28 = *v27;
        v29 = *(v27 + 8);
        if (v28 == *"SUBSCRIBE" && v29 == SipRequest::kMethodSubscribe[8])
        {
          return 7;
        }

        break;
      case 8:
        v12 = v3 >= 0 ? a1 : *a1;
        if (*v12 == *"REGISTER")
        {
          return 1;
        }

        break;
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        if (v3 >= 0)
        {
          v13 = a1;
        }

        else
        {
          v13 = *a1;
        }

        if (*v13 == SipRequest::kMethodAck && *(v13 + 2) == BYTE2(SipRequest::kMethodAck))
        {
          return 5;
        }

        v15 = *v13;
        v16 = *(v13 + 2);
        if (v15 == SipRequest::kMethodBye && v16 == BYTE2(SipRequest::kMethodBye))
        {
          return 6;
        }

        break;
      case 5:
        if (v3 >= 0)
        {
          v22 = a1;
        }

        else
        {
          v22 = *a1;
        }

        if (*v22 == *"PRACK" && *(v22 + 4) == SipRequest::kMethodPrack[4])
        {
          return 3;
        }

        v24 = *v22;
        v25 = *(v22 + 4);
        if (v24 == *"REFER" && v25 == SipRequest::kMethodRefer[4])
        {
          return 10;
        }

        break;
      case 6:
        if (v3 >= 0)
        {
          v4 = a1;
        }

        else
        {
          v4 = *a1;
        }

        if (*v4 == *"INVITE" && v4[2] == *"TE")
        {
          return 2;
        }

        if (*v4 == *"CANCEL" && v4[2] == *"EL")
        {
          return 4;
        }

        if (*v4 == *"NOTIFY" && v4[2] == *"FY")
        {
          return 8;
        }

        v8 = *v4;
        v9 = v4[2];
        if (v8 == *"UPDATE" && v9 == *"TE")
        {
          return 9;
        }

        break;
    }
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "INFO"))
  {
    return 12;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "PUBLISH"))
  {
    return 13;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "OPTIONS"))
  {
    return 14;
  }

  return 0;
}

Ari *AriSdk::TlvArray<unsigned char,129ul>::operator=(Ari *a1, char **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  if ((v5 - v4) < 0x82)
  {
    if (a1 != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, v4, v5, v5 - v4);
    }
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v16, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v9);
        v14 = v17 >= 0 ? v16 : v16[0];
        v15 = a2[1] - *a2;
        *__p = 136316418;
        *&__p[4] = "ari";
        v19 = 2080;
        v20 = v14;
        v21 = 1024;
        v22 = 349;
        v23 = 2048;
        v24 = a1;
        v25 = 2048;
        v26 = v15;
        v27 = 2048;
        v28 = 129;
        _os_log_error_impl(&dword_1E4C3F000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%d) max(%d)", __p, 0x3Au);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v9);
      if (v21 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%d) max(%d)", v10, v11, 349, a1, a2[1] - *a2, 129);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E4CD8C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Ari *AriSdk::TlvArray<unsigned char,2001ul>::operator=(Ari *a1, char **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  if ((v5 - v4) < 0x7D2)
  {
    if (a1 != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, v4, v5, v5 - v4);
    }
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v16, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v9);
        v14 = v17 >= 0 ? v16 : v16[0];
        v15 = a2[1] - *a2;
        *__p = 136316418;
        *&__p[4] = "ari";
        v19 = 2080;
        v20 = v14;
        v21 = 1024;
        v22 = 349;
        v23 = 2048;
        v24 = a1;
        v25 = 2048;
        v26 = v15;
        v27 = 2048;
        v28 = 2001;
        _os_log_error_impl(&dword_1E4C3F000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%d) max(%d)", __p, 0x3Au);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v9);
      if (v21 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%d) max(%d)", v10, v11, 349, a1, a2[1] - *a2, 2001);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E4CD8F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t ___ZN12IBISipLogger4sendIN6AriSdk14ARI_AriACK_SDKENS1_38ARI_IBISipMsgInjectToCpIMSTraceReq_SDKEEE9ImsResultRT0_b_block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  AriSdk::ARI_AriACK_SDK::ARI_AriACK_SDK(v5, a2);
  if (AriSdk::ARI_AriACK_SDK::unpack(v5))
  {
    v3 = (*(*v2 + 32))(v2);
    (*(*v2 + 16))(v2, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Couldn't unpack ARI result", 26);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
  }

  return MEMORY[0x1E6922920](v5);
}

void *ice::detail::wrapCallback<void>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke;
  aBlock[3] = &unk_1E87699A0;
  aBlock[4] = a1;
  result = _Block_copy(aBlock);
  *a2 = result;
  return result;
}

uint64_t ___ZN12IBISipLogger4sendIN6AriSdk14ARI_AriACK_SDKENS1_36ARI_IBISipMessageInjectToCpTrace_SDKEEE9ImsResultRT0_b_block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  AriSdk::ARI_AriACK_SDK::ARI_AriACK_SDK(v5, a2);
  if (AriSdk::ARI_AriACK_SDK::unpack(v5))
  {
    v3 = (*(*v2 + 32))(v2);
    (*(*v2 + 16))(v2, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Couldn't unpack ARI result", 26);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
  }

  return MEMORY[0x1E6922920](v5);
}

uint64_t ___ZN12IBISipLogger4sendIN6AriSdk54ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDKENS1_52ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDKEEE9ImsResultRT0_b_block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  memset(v5, 0, sizeof(v5));
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK(v5, a2);
  if (AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK::unpack(v5))
  {
    v3 = (*(*v2 + 32))(v2);
    (*(*v2 + 16))(v2, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Couldn't unpack ARI result", 26);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
  }

  return MEMORY[0x1E6922F80](v5);
}

uint64_t ___ZN12IBISipLogger4sendIN6AriSdk46ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDKENS1_44ARI_IBINetDcImsRegistrationStatusInfoReq_SDKEEE9ImsResultRT0_b_block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  memset(v5, 0, sizeof(v5));
  AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK(v5, a2);
  if (AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK::unpack(v5))
  {
    v3 = (*(*v2 + 32))(v2);
    (*(*v2 + 16))(v2, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Couldn't unpack ARI result", 26);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
  }

  return MEMORY[0x1E6922F30](v5);
}

uint64_t SipInsecureTransportGroup::SipInsecureTransportGroup(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportGroup::SipTransportGroup(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EC4BB8;
  *(a1 + 8) = &unk_1F5EC4D00;
  *(a1 + 192) = &unk_1F5EC4D60;
  *(a1 + 290) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return a1;
}

void sub_1E4CD9618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipInsecureTransportGroup::~SipInsecureTransportGroup(SipInsecureTransportGroup *this)
{
  v5 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5EC4BB8;
  *(this + 1) = &unk_1F5EC4D00;
  *(this + 24) = &unk_1F5EC4D60;
  if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_INFO))
  {
    SipTransportGroup::logPrefixStr(this);
  }

  v2 = *(this + 35);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  SipTransportGroup::~SipTransportGroup(this);
  v4 = *MEMORY[0x1E69E9840];
}

{
  SipInsecureTransportGroup::~SipInsecureTransportGroup(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4CD9798(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void non-virtual thunk toSipInsecureTransportGroup::~SipInsecureTransportGroup(SipInsecureTransportGroup *this)
{
  SipInsecureTransportGroup::~SipInsecureTransportGroup((this - 8));
}

{
  SipInsecureTransportGroup::~SipInsecureTransportGroup((this - 192));
}

{
  SipInsecureTransportGroup::~SipInsecureTransportGroup((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipInsecureTransportGroup::~SipInsecureTransportGroup((this - 192));

  JUMPOUT(0x1E69235B0);
}

void SipInsecureTransportGroup::loggableName(SipInsecureTransportGroup *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4CD9A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a13 == 1)
  {
    if (a12)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipInsecureTransportGroup::initialize(uint64_t a1@<X0>, uint64_t a2@<X1>, ImsResult *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 248);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7 || (v8 = *(a1 + 240)) == 0)
  {
LABEL_13:
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = &unk_1F5EBDEF8;
    v16 = &_bambiDomain;
    LODWORD(__p) = 0x40000000;
    v11 = ImsResult::operator<<<char [33]>(&v15, "No transport layer to initialize");
    ImsResult::ImsResult(a3, v11);
    ImsResult::~ImsResult(&v15);
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (*(*v8 + 128))(&v15, *(a1 + 240));
  if (v16)
  {
    v9 = std::__shared_weak_count::lock(v16);
    if (v9)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v10)
    {
      v14[0] = 0;
      v14[1] = 0;
      (*(**a2 + 32))(v14);
      operator new();
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = &unk_1F5EBDEF8;
  v16 = &_bambiDomain;
  LODWORD(__p) = 1073741826;
  v12 = ImsResult::operator<<<char [12]>(&v15, "no sipstack");
  ImsResult::ImsResult(a3, v12);
  ImsResult::~ImsResult(&v15);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_18:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_19:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4CDA344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [33]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipInsecureTransportGroup::sendData(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X5>, ImsResult *a5@<X8>)
{
  if (!*(a1 + 256))
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    v23 = 1073741827;
    v18 = ImsResult::operator<<<char [41]>(&v21, "send() called on uninitialized transport");
    ImsResult::ImsResult(a5, v18);
    goto LABEL_18;
  }

  *(a1 + 292) = (*(**a3 + 56))();
  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 != 3)
  {
LABEL_16:
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    v23 = 1073741825;
    v16 = ImsResult::operator<<<char [24]>(&v21, "unknown transport type ");
    v17 = ImsResult::operator<<<std::string>(v16, a2);
    ImsResult::ImsResult(a5, v17);
LABEL_18:
    ImsResult::~ImsResult(&v21);
    return;
  }

  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (*v11 == SipTransport::kTransportUDP && *(v11 + 2) == 80)
  {
    if (a4 && *a4)
    {
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = &unk_1F5EBDEF8;
      v22 = &_bambiDomain;
      v23 = 1073741825;
      v19 = ImsResult::operator<<<char [53]>(&v21, "UDP transport specified, but TCP connection provided");
      ImsResult::ImsResult(a5, v19);
      goto LABEL_18;
    }

    v20 = *(**(a1 + 256) + 32);
  }

  else
  {
    v13 = *v11;
    v14 = *(v11 + 2);
    if (v13 != SipTransport::kTransportTCP || v14 != 80)
    {
      goto LABEL_16;
    }

    v20 = *(**(a1 + 272) + 32);
  }

  v20();
}

void sub_1E4CDA818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t SipInsecureTransportGroup::localClientAddress@<X0>(SipInsecureTransportGroup *this@<X0>, void *a2@<X8>)
{
  result = *(this + 32);
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t SipInsecureTransportGroup::localServerAddress@<X0>(SipInsecureTransportGroup *this@<X0>, void *a2@<X8>)
{
  result = *(this + 32);
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t SipInsecureTransportGroup::remoteServerUri(SipInsecureTransportGroup *this)
{
  v2 = *(this + 31);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 30);
  if (v5)
  {
    v6 = (*(*v5 + 88))(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void SipInsecureTransportGroup::processMessageFromTransport(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = a1[31];
  if (v8)
  {
    v14 = std::__shared_weak_count::lock(v8);
    if (v14)
    {
      v15 = v14;
      v16 = a1[30];
      if (v16)
      {
        v17 = a2[1];
        v23 = *a2;
        v24 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v21, a1 + 25);
        v18 = a7[1];
        v19 = *a7;
        v20 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v16 + 96))(v16, &v23, a3, a4, a5, &v21, &v19);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E4CDAA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SipInsecureTransportGroup::printTransportInfo(SipInsecureTransportGroup *this, ImsOutStream *a2, int a3)
{
  (*(*this + 24))(__p);
  (*(*a2 + 40))(a2, __p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v6 = *(this + 34);
  if (v6)
  {
    if (*(v6 + 288))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Open connections:", 19);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      SipTcpTransport::printConnectionMap(*(this + 34), a2);
    }
  }
}

void sub_1E4CDABDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipInsecureTransportGroup::addTransportSpecificHeaders(void *a1, uint64_t *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a1[31];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = a1[30];
      if (v6)
      {
        (*(*v6 + 128))(buf);
        if (*&buf[8])
        {
          v7 = std::__shared_weak_count::lock(*&buf[8]);
          if (v7)
          {
            v8 = *buf;
          }

          else
          {
            v8 = 0;
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_weak(*&buf[8]);
          }

          if (v8)
          {
            if (v8[2166] != 1 || (v8[2316] & 1) != 0)
            {
LABEL_13:
              v9 = a2[1];
              v38 = *a2;
              v39 = v9;
              if (v9)
              {
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipTransportGroup::addAccessNetworkInfoHeader(a1, &v38);
              if (v39)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v39);
              }

              v10 = a2[1];
              v36 = *a2;
              v37 = v10;
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipTransportGroup::addRoutableLocalAddressHeader(a1, &v36);
              if (v37)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v37);
              }

              goto LABEL_27;
            }

            if (v8[296] == 1)
            {
              v18 = SipMessage::header<SipCSeqHeader>(*a2);
              v19 = (v18 + 64);
              if (!v18)
              {
                v19 = &ims::kEmptyString;
              }

              v20 = *(v19 + 23);
              v21 = v20;
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(v19 + 1);
              }

              if (v20 != 8)
              {
                goto LABEL_49;
              }

              if (v21 < 0)
              {
                v19 = *v19;
              }

              if (*v19 != *"REGISTER")
              {
LABEL_49:
                v22 = a1[29];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*a1 + 144))(v42, a1);
                  v23 = v43;
                  v24 = v42[0];
                  (*(**a2 + 40))(__p);
                  v25 = v42;
                  if (v23 < 0)
                  {
                    v25 = v24;
                  }

                  if (v41 >= 0)
                  {
                    v26 = __p;
                  }

                  else
                  {
                    v26 = __p[0];
                  }

                  *buf = 141558531;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 2081;
                  *&buf[14] = v25;
                  v45 = 2080;
                  v46 = v26;
                  _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sthis is the emergency stack. Allowing P-Access-Network-Info in insecure %s", buf, 0x20u);
                  if (v41 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v43 < 0)
                  {
                    operator delete(v42[0]);
                  }
                }

                goto LABEL_13;
              }
            }

            v27 = a1[29];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 144))(v42, a1);
              v28 = v43;
              v29 = v42[0];
              (*(**a2 + 40))(__p);
              v30 = v42;
              if (v28 < 0)
              {
                v30 = v29;
              }

              if (v41 >= 0)
              {
                v31 = __p;
              }

              else
              {
                v31 = __p[0];
              }

              *buf = 141558531;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v30;
              v45 = 2080;
              v46 = v31;
              _os_log_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot adding P-Access-Network-Info to insecure %s", buf, 0x20u);
LABEL_72:
              if (v41 < 0)
              {
                operator delete(__p[0]);
              }

              if (v43 < 0)
              {
                operator delete(v42[0]);
              }

              goto LABEL_27;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v7 = 0;
        }

        v12 = a1[29];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          (*(*a1 + 144))(v42, a1);
          v32 = v43;
          v33 = v42[0];
          (*(**a2 + 40))(__p);
          v34 = v42;
          if (v32 < 0)
          {
            v34 = v33;
          }

          if (v41 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v34;
          v45 = 2080;
          v46 = v35;
          _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo sipstack.  Not adding P-ANI to insecure %s", buf, 0x20u);
          goto LABEL_72;
        }

LABEL_27:
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

LABEL_29:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_30;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = a1[29];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 144))(v42, a1);
    v14 = v43;
    v15 = v42[0];
    (*(**a2 + 40))(__p);
    v16 = v42;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v41 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v16;
    v45 = 2080;
    v46 = v17;
    _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo transport layer found. Not adding P-ANI to insecure %s", buf, 0x20u);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }
  }

  if (v5)
  {
    goto LABEL_29;
  }

LABEL_30:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4CDB1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

void SipInsecureTransportGroup::updateServiceClass(SipInsecureTransportGroup *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 30);
      if (v4)
      {
        (*(*v4 + 144))(&v8);
        v5 = v8;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 104;
LABEL_7:
  v6 = *(this + 32);
  if (v6)
  {
    (*(*v6 + 40))(v6, v5);
  }

  v7 = *(this + 34);
  if (v7)
  {
    (*(*v7 + 40))(v7, v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SipInsecureTransportGroup::updateCrlfKeepAliveInterval(SipInsecureTransportGroup *this, __int32 a2)
{
  v2 = *(this + 34);
  if (v2)
  {
    SipTcpTransport::updateCrlfKeepAliveInterval(v2, a2);
  }
}

void SipInsecureTransportGroup::updateCrlfKeepAliveNetwork(SipInsecureTransportGroup *this)
{
  v1 = *(this + 34);
  if (v1)
  {
    SipTcpTransport::updateCrlfKeepAliveNetwork(v1);
  }
}

SipTcpTransport *SipInsecureTransportGroup::handleKeepAliveWake(SipInsecureTransportGroup *this)
{
  result = *(this + 34);
  if (result)
  {
    return SipTcpTransport::handleKeepAliveWake(result);
  }

  return result;
}

SipTcpTransport *SipInsecureTransportGroup::handleTcpIdleExtend(SipInsecureTransportGroup *this)
{
  result = *(this + 34);
  if (result)
  {
    return SipTcpTransport::handleTcpIdleExtend(result);
  }

  return result;
}

uint64_t SipInsecureTransportGroup::udpTransport@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 264);
  *a2 = *(this + 256);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t SipInsecureTransportGroup::tcpTransport@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 280);
  *a2 = *(this + 272);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void SipConversationIdHeader::~SipConversationIdHeader(void **this)
{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SipUnsupportedHeader::~SipUnsupportedHeader(char **this)
{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

time_t ims::AccessNetwork::set(std::string *a1, const std::string *a2, const std::string *a3)
{
  std::string::operator=(a1, a2);
  std::string::operator=(a1 + 1, a3);
  result = time(0);
  a1[2].__r_.__value_.__l.__size_ = result;
  return result;
}

BOOL ims::AccessNetwork::isNR(ims::AccessNetwork *this)
{
  v1 = *(this + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(this + 1);
  }

  if (v1 != 13)
  {
    if (v1 != 11)
    {
      return 0;
    }

    v3 = v2 >= 0 ? this : *this;
    if (*v3 != 0x2D524E2D50504733 || *(v3 + 3) != 0x4444462D524E2D50)
    {
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v5 != 0x2D524E2D50504733 || v6 != 0x4444542D524E2D50)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 >= 0)
  {
    v9 = this;
  }

  else
  {
    v9 = *this;
  }

  if (*v9 == 0x2D524E2D50504733 && *(v9 + 5) == 0x4444462D552D524ELL)
  {
    return 1;
  }

  v11 = *v9;
  v12 = *(v9 + 5);
  return v11 == 0x2D524E2D50504733 && v12 == 0x4444542D552D524ELL;
}

BOOL ims::AccessNetwork::isIMS(ims::AccessNetwork *this)
{
  if (ims::AccessNetwork::isLTE(this) || ims::AccessNetwork::isWifi(this))
  {
    return 1;
  }

  return ims::AccessNetwork::isNR(this);
}

BOOL ims::AccessNetwork::isLTE(ims::AccessNetwork *this)
{
  v1 = *(this + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(this + 1);
  }

  if (v1 != 16)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v3 = this;
  }

  else
  {
    v3 = *this;
  }

  if (*v3 == 0x552D452D50504733 && *(v3 + 1) == 0x4444462D4E415254)
  {
    return 1;
  }

  v6 = *v3;
  v5 = *(v3 + 1);
  return v6 == 0x552D452D50504733 && v5 == 0x4444542D4E415254;
}

BOOL ims::AccessNetwork::isCellularIMS(ims::AccessNetwork *this)
{
  if (ims::AccessNetwork::isLTE(this))
  {
    return 1;
  }

  return ims::AccessNetwork::isNR(this);
}

BOOL ims::AccessNetwork::isUMTS(ims::AccessNetwork *this)
{
  v1 = *(this + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(this + 1);
  }

  if (v1 != 14)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v3 = this;
  }

  else
  {
    v3 = *this;
  }

  if (*v3 == 0x5254552D50504733 && *(v3 + 6) == 0x4444462D4E415254)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(v3 + 6);
  return v5 == 0x5254552D50504733 && v6 == 0x4444542D4E415254;
}

BOOL ims::AccessNetwork::isGSM(ims::AccessNetwork *this)
{
  v1 = *(this + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(this + 1);
  }

  if (v1 != 10)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v3 = this;
  }

  else
  {
    v3 = *this;
  }

  v4 = *v3;
  v5 = *(v3 + 4);
  return v4 == 0x5245472D50504733 && v5 == 20033;
}

BOOL ims::AccessNetwork::is3GPP2(ims::AccessNetwork *this)
{
  v1 = *(this + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(this + 1);
  }

  if (v1 == 8)
  {
    if (v2 >= 0)
    {
      v12 = this;
    }

    else
    {
      v12 = *this;
    }

    return *v12 == 0x58312D3250504733;
  }

  else
  {
    if (v1 == 13)
    {
      if (v2 >= 0)
      {
        v8 = this;
      }

      else
      {
        v8 = *this;
      }

      v9 = *v8;
      v5 = *(v8 + 5);
      v6 = v9 == 0x58312D3250504733;
      v7 = 760754477;
    }

    else
    {
      if (v1 != 11)
      {
        return 0;
      }

      if (v2 >= 0)
      {
        v3 = this;
      }

      else
      {
        v3 = *this;
      }

      v4 = *v3;
      v5 = *(v3 + 3);
      v6 = v4 == 0x48452D3250504733;
      v7 = 1160589904;
    }

    v10 = v7 | 0x4450524800000000;
    return v6 && v5 == v10;
  }
}

BOOL ims::AccessNetwork::isEHRPD(ims::AccessNetwork *this)
{
  v1 = *(this + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(this + 1);
  }

  if (v1 != 11)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v3 = this;
  }

  else
  {
    v3 = *this;
  }

  v4 = *v3;
  v5 = *(v3 + 3);
  return v4 == 0x48452D3250504733 && v5 == 0x44505248452D3250;
}

BOOL ims::AccessNetwork::isTDD(ims::AccessNetwork *this)
{
  v1 = this;
  v2 = *(this + 23);
  if (v2 < 0)
  {
    v1 = *this;
    v2 = *(this + 1);
  }

  v3 = v1 + v2;
  if (v2 >= 3)
  {
    v4 = v1;
    do
    {
      v5 = memchr(v4, 84, v2 - 2);
      if (!v5)
      {
        break;
      }

      if (*v5 == 17492 && v5[2] == 68)
      {
        return v5 != v3 && v5 - v1 != -1;
      }

      v4 = (v5 + 1);
      v2 = v3 - v4;
    }

    while (v3 - v4 > 2);
  }

  v5 = v3;
  return v5 != v3 && v5 - v1 != -1;
}

BOOL ims::AccessNetwork::isFDD(ims::AccessNetwork *this)
{
  v1 = this;
  v2 = *(this + 23);
  if (v2 < 0)
  {
    v1 = *this;
    v2 = *(this + 1);
  }

  v3 = v1 + v2;
  if (v2 >= 3)
  {
    v4 = v1;
    do
    {
      v5 = memchr(v4, 70, v2 - 2);
      if (!v5)
      {
        break;
      }

      if (*v5 == 17478 && v5[2] == 68)
      {
        return v5 != v3 && v5 - v1 != -1;
      }

      v4 = (v5 + 1);
      v2 = v3 - v4;
    }

    while (v3 - v4 > 2);
  }

  v5 = v3;
  return v5 != v3 && v5 - v1 != -1;
}

uint64_t ims::operator<<(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = *(a1 + 8);
  if (v3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "[type: ", 7);
    *(a1 + 17) = 0;
    LoggableString::LoggableString(&__p, a2);
    (*(*a1 + 40))(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v6 = *(a2 + 47);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 32);
    }

    if (v6)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), ", info: ", 8);
      *(a1 + 17) = 0;
      (*(*a1 + 32))(a1, a2 + 24);
    }

    if (*(a2 + 56))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), ", timestamp: ", 13);
      *(a1 + 17) = 0;
      v15 = *(a2 + 56);
      memset(&__p, 0, sizeof(__p));
      p_p = &__p;
      ims::ctime(&v15, v8, &__p);
      v9 = __p.__r_.__value_.__r.__words[0];
      *(__p.__r_.__value_.__r.__words[0] + 24) = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = v9;
      }

      v10 = strlen(p_p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), p_p, v10);
      *(a1 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v4 = *(a1 + 8);
    v11 = "]";
    v12 = 1;
  }

  else
  {
    v11 = "[none]";
    v12 = 6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v11, v12);
  *(a1 + 17) = 0;
  return a1;
}

void sub_1E4CDBE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::asString@<X0>(ims *this@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *__p = 0u;
  v24 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v20);
  v5 = *(this + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(this + 1);
  }

  if (v5)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "[type: ", 7);
    v7 = *(this + 23);
    if (v7 >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = *this;
    }

    if (v7 >= 0)
    {
      v9 = *(this + 23);
    }

    else
    {
      v9 = *(this + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    v10 = *(this + 47);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(this + 4);
    }

    if (v10)
    {
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", info: ", 8);
      v12 = *(this + 47);
      if (v12 >= 0)
      {
        v13 = this + 24;
      }

      else
      {
        v13 = *(this + 3);
      }

      if (v12 >= 0)
      {
        v14 = *(this + 47);
      }

      else
      {
        v14 = *(this + 4);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    }

    if (*(this + 7))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", timestamp: ", 13);
      ims::_formatTime(*(this + 7), &v20, v15);
    }

    v16 = "]";
    v17 = 1;
  }

  else
  {
    v16 = "[none]";
    v17 = 6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v16, v17);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v20, a2);
  *&v20 = *MEMORY[0x1E69E54D8];
  v18 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v21 = v18;
  *(&v21 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E6923510](v26);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1E4CDC3A8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E6923510](v1);
  _Unwind_Resume(a1);
}

uint64_t ims::_formatTime(uint64_t a1, uint64_t a2, tm *a3)
{
  v9 = 0;
  v10 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v4 = __p;
  ims::ctime(&v10, a3, __p);
  v5 = __p[0];
  *(__p[0] + 24) = 0;
  if (v9 < 0)
  {
    v4 = v5;
  }

  v6 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a2 + 16), v4, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1E4CDC450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E6923510](a1 + 128);
  return a1;
}

uint64_t ims::AccessNetwork::logStr@<X0>(ims::AccessNetwork *this@<X0>, _BYTE *a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v18);
  v4 = *(this + 23);
  if (v4 < 0)
  {
    v4 = *(this + 1);
  }

  if (!v4)
  {
    v9 = "[none]";
    v10 = 6;
    goto LABEL_25;
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "[type: ", 7);
  v6 = *(this + 23);
  if (v6 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = *this;
  }

  if (v6 >= 0)
  {
    v8 = *(this + 23);
  }

  else
  {
    v8 = *(this + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  if ((*(this + 47) & 0x8000000000000000) == 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_22;
    }

LABEL_15:
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", info: ", 8);
    v12 = *(this + 47);
    if (v12 >= 0)
    {
      v13 = this + 24;
    }

    else
    {
      v13 = *(this + 3);
    }

    if (v12 >= 0)
    {
      v14 = *(this + 47);
    }

    else
    {
      v14 = *(this + 4);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    goto LABEL_22;
  }

  if (*(this + 4))
  {
    goto LABEL_15;
  }

LABEL_22:
  if (*(this + 7))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", timestamp: ", 13);
    ims::_formatTime(*(this + 7), &v18, v15);
  }

  v9 = "]";
  v10 = 1;
LABEL_25:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v9, v10);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v18, a2);
  *&v18 = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v19 = v16;
  *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E6923510](v24);
}

void ims::AccessNetworks::log(ims::AccessNetworks *this, ImsOutStream *a2, int a3)
{
  v5 = a3;
  std::string::basic_string[abi:ne200100](&v6, a3, 32);
  LoggableString::LoggableString(&__p, &v6);
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "reported: ", 10);
  *(a2 + 17) = 0;
  ims::operator<<(a2, this);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100](&v6, v5, 32);
  LoggableString::LoggableString(&__p, &v6);
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "last: ", 6);
  *(a2 + 17) = 0;
  ims::operator<<(a2, this + 144);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100](&v6, v5, 32);
  LoggableString::LoggableString(&__p, &v6);
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "camped: ", 8);
  *(a2 + 17) = 0;
  ims::operator<<(a2, this + 72);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4CDCB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

__n128 ims::AccessNetworks::cellular@<Q0>(ims::AccessNetworks *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 95);
  if (v4 < 0)
  {
    if (!*(this + 10))
    {
      goto LABEL_10;
    }
  }

  else if (!*(this + 95))
  {
    goto LABEL_10;
  }

  v5 = *(this + 119);
  if (v5 < 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_10;
    }

LABEL_9:
    if (ims::AccessNetwork::isWifi((this + 72)))
    {
      goto LABEL_10;
    }

    if ((v4 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
      if ((*(this + 119) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *a2 = *(this + 72);
      *(a2 + 16) = *(this + 11);
      if ((v5 & 0x80) == 0)
      {
LABEL_19:
        *(a2 + 24) = *(this + 6);
        *(a2 + 40) = *(this + 14);
LABEL_34:
        v8 = 120;
        goto LABEL_38;
      }
    }

    std::string::__init_copy_ctor_external((a2 + 24), *(this + 12), *(this + 13));
    goto LABEL_34;
  }

  if (*(this + 119))
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = *(this + 23);
  if (v6 < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_22;
    }
  }

  else if (!*(this + 23))
  {
    goto LABEL_22;
  }

  v7 = *(this + 47);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_22;
    }

LABEL_21:
    if (ims::AccessNetwork::isWifi(this))
    {
      goto LABEL_22;
    }

    if ((v6 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
      if ((*(this + 47) & 0x80) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a2 = *this;
      *(a2 + 16) = *(this + 2);
      if ((v7 & 0x80) == 0)
      {
LABEL_31:
        *(a2 + 24) = *(this + 24);
        *(a2 + 40) = *(this + 5);
LABEL_37:
        v8 = 48;
        goto LABEL_38;
      }
    }

    std::string::__init_copy_ctor_external((a2 + 24), *(this + 3), *(this + 4));
    goto LABEL_37;
  }

  if (*(this + 4))
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(this + 167) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 18), *(this + 19));
  }

  else
  {
    *a2 = *(this + 9);
    *(a2 + 16) = *(this + 20);
  }

  if (*(this + 191) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), *(this + 21), *(this + 22));
  }

  else
  {
    *(a2 + 24) = *(this + 168);
    *(a2 + 40) = *(this + 23);
  }

  v8 = 192;
LABEL_38:
  v9 = (this + v8);
  result = *v9;
  *(a2 + 48) = *v9;
  *(a2 + 64) = v9[1].n128_u8[0];
  return result;
}

void sub_1E4CDCE34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL ims::AccessNetworks::isIwlanOverCellular(ims::AccessNetworks *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (!*(this + 1))
    {
      return 0;
    }
  }

  else if (!*(this + 23))
  {
    return 0;
  }

  if ((*(this + 47) & 0x8000000000000000) != 0)
  {
    if (!*(this + 4))
    {
      return 0;
    }
  }

  else if (!*(this + 47))
  {
    return 0;
  }

  result = ims::AccessNetwork::isWifi(this);
  if (!result)
  {
    return result;
  }

  if ((*(this + 95) & 0x8000000000000000) != 0)
  {
    if (!*(this + 10))
    {
      return 0;
    }
  }

  else if (!*(this + 95))
  {
    return 0;
  }

  v3 = *(this + 119);
  if (v3 < 0)
  {
    v3 = *(this + 13);
  }

  if (v3)
  {
    return !ims::AccessNetwork::isWifi((this + 72));
  }

  return 0;
}

void ims::AccessNetwork::extractCellularInfo(uint64_t *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  if (*(a1 + 23) < 0)
  {
    v14 = a1[1];
    switch(v14)
    {
      case 11:
        v39 = *a1;
        if (**a1 == 0x2D524E2D50504733 && *(*a1 + 3) == 0x4444542D524E2D50)
        {
          goto LABEL_88;
        }

        v41 = *v39;
        v42 = *(v39 + 3);
        if (v41 == 0x2D524E2D50504733 && v42 == 0x4444462D524E2D50)
        {
          goto LABEL_88;
        }

        goto LABEL_72;
      case 14:
        v15 = 0x5254552D50504733;
        v27 = *a1;
        if (**a1 == 0x5254552D50504733 && *(*a1 + 6) == 0x4444462D4E415254)
        {
          goto LABEL_57;
        }

        v19 = *v27;
        v18 = *(v27 + 6);
        break;
      case 16:
        v15 = 0x552D452D50504733;
        v16 = *a1;
        if (**a1 == 0x552D452D50504733 && *(*a1 + 8) == 0x4444462D4E415254)
        {
          goto LABEL_57;
        }

        v19 = *v16;
        v18 = v16[1];
        break;
      default:
        goto LABEL_72;
    }

    if (v19 == v15 && v18 == 0x4444542D4E415254)
    {
      goto LABEL_57;
    }

LABEL_72:
    if (a1[1] != 10 || (**a1 == 0x5245472D50504733 ? (v44 = *(*a1 + 8) == 20033) : (v44 = 0), !v44))
    {
      if (a1[1] != 11)
      {
        return;
      }

      v13 = *a1;
      goto LABEL_79;
    }

    goto LABEL_91;
  }

  v10 = *(a1 + 23);
  if (v10 <= 0xD)
  {
    if (v10 != 10)
    {
      if (v10 != 11)
      {
        return;
      }

      if (*a1 != 0x2D524E2D50504733 || *(a1 + 3) != 0x4444542D524E2D50)
      {
        v12 = *a1 == 0x2D524E2D50504733 && *(a1 + 3) == 0x4444462D524E2D50;
        v13 = a1;
        if (!v12)
        {
LABEL_79:
          v45 = *v13;
          v46 = *(v13 + 3);
          if (v45 == 0x48452D3250504733 && v46 == 0x44505248452D3250)
          {
            *a2 = v48 & ~(v48 >> 31);
            v49 = *(a1 + 47);
            if (v49 < 0)
            {
              v49 = a1[4];
            }

            if (v49)
            {
              v50 = 2;
            }

            else
            {
              v50 = 3;
            }

            *a3 = v63 & ~(v63 >> 31);
          }

          return;
        }
      }

LABEL_88:
      *a2 = v51 & ~(v51 >> 31);
      v52 = *(a1 + 47);
      if (v52 < 0)
      {
        v52 = a1[4];
        if (v52 == 21)
        {
          goto LABEL_90;
        }
      }

      else if (v52 == 21)
      {
LABEL_90:
        *a3 = v53 & ~(v53 >> 31);
        *a4 = v54 & ~(v54 >> 31);
        v34 = (a1 + 3);
        v35 = 12;
LABEL_97:
        v38 = 9;
        goto LABEL_102;
      }

      if (v52 != 20)
      {
        return;
      }

      *a3 = v59 & ~(v59 >> 31);
      *a4 = v60 & ~(v60 >> 31);
      v34 = (a1 + 3);
      v35 = 11;
      goto LABEL_97;
    }

    if (*a1 != 0x5245472D50504733 || *(a1 + 4) != 20033)
    {
      return;
    }

LABEL_91:
    *a2 = v55 & ~(v55 >> 31);
    v56 = *(a1 + 47);
    if (v56 < 0)
    {
      v56 = a1[4];
      if (v56 == 14)
      {
        goto LABEL_93;
      }
    }

    else if (v56 == 14)
    {
LABEL_93:
      *a3 = v57 & ~(v57 >> 31);
      *a4 = v58 & ~(v58 >> 31);
      v34 = (a1 + 3);
      v35 = 10;
LABEL_101:
      v38 = 4;
      goto LABEL_102;
    }

    if (v56 != 13)
    {
      return;
    }

    *a3 = v61 & ~(v61 >> 31);
    *a4 = v62 & ~(v62 >> 31);
    v34 = (a1 + 3);
    v35 = 9;
    goto LABEL_101;
  }

  if (v10 == 14)
  {
    v20 = 0x5254552D50504733;
    if (*a1 == 0x5254552D50504733 && *(a1 + 6) == 0x4444462D4E415254)
    {
      goto LABEL_57;
    }

    v22 = *a1;
    v23 = *(a1 + 6);
  }

  else
  {
    if (v10 != 16)
    {
      return;
    }

    v20 = 0x552D452D50504733;
    if (*a1 == 0x552D452D50504733 && a1[1] == 0x4444462D4E415254)
    {
      goto LABEL_57;
    }

    v22 = *a1;
    v23 = a1[1];
  }

  if (v22 != v20 || v23 != 0x4444542D4E415254)
  {
    return;
  }

LABEL_57:
  *a2 = v30 & ~(v30 >> 31);
  v31 = *(a1 + 47);
  if (v31 < 0)
  {
    v31 = a1[4];
    if (v31 == 17)
    {
      goto LABEL_59;
    }

LABEL_61:
    if (v31 != 16)
    {
      return;
    }

    *a3 = v36 & ~(v36 >> 31);
    *a4 = v37 & ~(v37 >> 31);
    v34 = (a1 + 3);
    v35 = 9;
    goto LABEL_63;
  }

  if (v31 != 17)
  {
    goto LABEL_61;
  }

LABEL_59:
  *a3 = v32 & ~(v32 >> 31);
  *a4 = v33 & ~(v33 >> 31);
  v34 = (a1 + 3);
  v35 = 10;
LABEL_63:
  v38 = 7;
LABEL_102:
  std::string::basic_string(&v64, v34, v35, v38, &v65);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v64;
}

uint64_t anonymous namespace::parseNetinfo(std::string *__str, std::string::size_type __pos, std::string::size_type __n)
{
  v3 = __pos;
  memset(&__stra, 0, sizeof(__stra));
  std::string::basic_string(&v8, __str, __pos, __n, &v10);
  __stra = v8;
  size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __stra.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (v3 <= 4)
    {
      v5 = 10;
    }

    else
    {
      v5 = 16;
    }

    v6 = std::stoi(&__stra, 0, v5);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1E4CDD698(_Unwind_Exception *a1)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_1E4CDD6A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  MEMORY[0x1E6923120](&a20);
  __cxa_end_catch();
  JUMPOUT(0x1E4CDD6DCLL);
}