void sub_1E4EA368C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::preconditionsSatisfiedInFork(uint64_t a1, void **a2)
{
  if (!SipPreconditions::preconditionsEnabled(a1, a2))
  {
    return 1;
  }

  result = SipPreconditions::localPreconditionsSatisfied(a1, a2);
  if (result)
  {

    return SipPreconditions::remotePreconditionsSatisfiedInFork(a1, a2);
  }

  return result;
}

uint64_t SipPreconditions::preconditionsSatisfiedInAnyFork(SipPreconditions *this)
{
  v1 = *(this + 10);
  if (v1 == (this + 88))
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 7);
    if (v2)
    {
      if (*(v2 + 44) != 5 || *(v2 + 52) != 1 || *(v2 + 53) == 1 && (*(v2 + 48) == 3 || *(v2 + 80) != 3))
      {
        break;
      }
    }

    v3 = *(v1 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
    }

    v1 = v4;
    if (v4 == (this + 88))
    {
      return 0;
    }
  }

  return SipPreconditions::localPreconditionsSatisfied(this, v1 + 4);
}

uint64_t SipPreconditions::preconditionsActiveInFork(uint64_t a1, void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 80, a2);
  if (a1 + 88 == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      if (*(v5 + 44) == 5)
      {
        v7 = *(v5 + 52);
        if (!v6)
        {
          return v7 & 1;
        }
      }

      else
      {
        v7 = 0;
        if (!v6)
        {
          return v7 & 1;
        }
      }

      goto LABEL_10;
    }
  }

  v8 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "unknown remote tag ", 19);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v7 = 0;
  *(v8 + 17) = 0;
  if (v6)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v7 & 1;
}

void sub_1E4EA3910(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::preconditionsActiveInAnyFork(SipPreconditions *this)
{
  v1 = *(this + 10);
  if (v1 == (this + 88))
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 7);
    if (*(v2 + 44) == 5 && (*(v2 + 52) & 1) != 0)
    {
      break;
    }

    v3 = *(v1 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
    }

    v1 = v4;
    if (v4 == (this + 88))
    {
      return 0;
    }
  }

  return 1;
}

void SipPreconditions::setRemotePreconditionsSatisfiedInFork(void *a1, void **a2, int a3)
{
  v7 = 0;
  v8 = 0;
  SipPreconditions::forkStatusWithTag(a1, a2, 0, &v7);
  if (v7)
  {
    if (SipPreconditions::ForkStatus::setSatisfied(v7, 0, 3, a3))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, &str_54);
      SipPreconditions::checkPreconditionStatus(a1, __p);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4EA3A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::supportLevelFromString(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v31, "Required");
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v32;
  v4 = v31[0];
  if (v32 >= 0)
  {
    v5 = v31;
  }

  else
  {
    v5 = v31[0];
  }

  v6 = strcasecmp(v2, v5);
  v7 = v6;
  if ((v3 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_9;
    }

    return 4;
  }

  operator delete(v4);
  if (!v7)
  {
    return 4;
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(v31, "SupportedOptional");
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v32;
  v10 = v31[0];
  if (v32 >= 0)
  {
    v11 = v31;
  }

  else
  {
    v11 = v31[0];
  }

  v12 = strcasecmp(v8, v11);
  v13 = v12;
  if ((v9 & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_17;
    }

    return 2;
  }

  operator delete(v10);
  if (!v13)
  {
    return 2;
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(v31, "SupportedMandatory");
  if (*(a1 + 23) >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  v15 = v32;
  if (v32 >= 0)
  {
    v16 = v31;
  }

  else
  {
    v16 = v31[0];
  }

  if (strcasecmp(v14, v16))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SupportedButMandatory");
    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    v18 = v30;
    if (v30 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if (!strcasecmp(v17, v19))
    {
      v25 = 3;
      if (v18 < 0)
      {
LABEL_43:
        operator delete(__p[0]);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "Supported");
      if (*(a1 + 23) >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = *a1;
      }

      v21 = v28;
      v22 = v27[0];
      if (v28 >= 0)
      {
        v23 = v27;
      }

      else
      {
        v23 = v27[0];
      }

      v24 = strcasecmp(v20, v23);
      if (v21 < 0)
      {
        operator delete(v22);
      }

      if (v24)
      {
        v25 = 1;
      }

      else
      {
        v25 = 3;
      }

      if (v30 < 0)
      {
        goto LABEL_43;
      }
    }

    if (v32 < 0)
    {
      goto LABEL_51;
    }

    return v25;
  }

  v25 = 3;
  if (v15 < 0)
  {
LABEL_51:
    operator delete(v31[0]);
  }

  return v25;
}

void sub_1E4EA3C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::strengthFromString(uint64_t *a1, uint64_t a2)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
    if (v2 != 4)
    {
      if (v2 == 8)
      {
        if (*a1 == 0x6C616E6F6974706FLL)
        {
          return 2;
        }

        else
        {
          return a2;
        }
      }

      else if (v2 == 9)
      {
        if (*a1 ^ 0x726F7461646E616DLL | *(a1 + 8) ^ 0x79)
        {
          return a2;
        }

        else
        {
          return 3;
        }
      }

      return a2;
    }

    goto LABEL_23;
  }

  v3 = a1[1];
  if (v3 == 4)
  {
    a1 = *a1;
LABEL_23:
    v5 = bswap32(*a1);
    v6 = v5 >= 0x6E6F6E65;
    v7 = v5 > 0x6E6F6E65;
    v8 = !v6;
    if (v7 == v8)
    {
      return 1;
    }

    else
    {
      return a2;
    }
  }

  if (v3 == 8)
  {
    if (**a1 == 0x6C616E6F6974706FLL)
    {
      return 2;
    }
  }

  else if (v3 == 9 && **a1 == 0x726F7461646E616DLL && *(*a1 + 8) == 121)
  {
    return 3;
  }

  return a2;
}

void SipPreconditions::ForkStatus::~ForkStatus(SipPreconditions::ForkStatus *this)
{
  *this = &unk_1F5ED7378;
  *(this + 2) = &unk_1F5ED73D8;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x1E69225A0](this + 24);
}

{
  *this = &unk_1F5ED7378;
  *(this + 2) = &unk_1F5ED73D8;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x1E69225A0](this + 24);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipPreconditions::ForkStatus::~ForkStatus(SipPreconditions::ForkStatus *this)
{
  *(this - 2) = &unk_1F5ED7378;
  *this = &unk_1F5ED73D8;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  JUMPOUT(0x1E69225A0);
}

{
  *(this - 2) = &unk_1F5ED7378;
  *this = &unk_1F5ED73D8;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  MEMORY[0x1E69225A0](this + 8);

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void *std::__shared_ptr_emplace<SipPreconditions::ForkStatus>::__shared_ptr_emplace[abi:ne200100]<SipPreconditions*,std::string const&,std::allocator<SipPreconditions::ForkStatus>,0>(void *a1, uint64_t *a2, const std::string *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ED7568;
  SipPreconditions::ForkStatus::ForkStatus((a1 + 3), *a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<SipPreconditions::ForkStatus>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED7568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t BambiUnlistedEmergencyCall::BambiUnlistedEmergencyCall(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::BambiCall(a1, &v10, &v8, a4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *a1 = &unk_1F5ED75B8;
  *(a1 + 8) = &unk_1F5ED7648;
  *(a1 + 144) = &unk_1F5ED76A8;
  *(a1 + 1864) = &unk_1F5ED76D0;
  *(a1 + 1872) = 0;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0x40A7700000000000;
  *(a1 + 2032) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 2012) = 0u;
  return a1;
}

void sub_1E4EA448C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall(BambiUnlistedEmergencyCall *this)
{
  *this = &unk_1F5ED75B8;
  *(this + 1) = &unk_1F5ED7648;
  *(this + 18) = &unk_1F5ED76A8;
  *(this + 233) = &unk_1F5ED76D0;
  BambiUnlistedEmergencyCall::clearLocation(this);
  v2 = *(this + 255);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 2023) < 0)
  {
    operator delete(*(this + 250));
  }

  if (*(this + 1999) < 0)
  {
    operator delete(*(this + 247));
  }

  if (*(this + 1975) < 0)
  {
    operator delete(*(this + 244));
  }

  if (*(this + 1951) < 0)
  {
    operator delete(*(this + 241));
  }

  BambiCall::~BambiCall(this);
}

{
  BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall(this);

  JUMPOUT(0x1E69235B0);
}

void BambiUnlistedEmergencyCall::clearLocation(BambiUnlistedEmergencyCall *this)
{
  v2 = *(this + 255);
  v3 = 0uLL;
  *(this + 127) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = 0uLL;
  }

  *(this + 1880) = v3;
  *(this + 1896) = v3;
  *(this + 239) = 0x40A7700000000000;
  *(this + 240) = 0;
  v4 = (this + 1928);
  if (*(this + 1951) < 0)
  {
    operator delete(*v4);
  }

  v5 = (this + 1952);
  *v4 = 0;
  *(this + 242) = 0;
  *(this + 243) = 0;
  if (*(this + 1975) < 0)
  {
    operator delete(*v5);
  }

  v6 = (this + 1976);
  *v5 = 0;
  *(this + 245) = 0;
  *(this + 246) = 0;
  if (*(this + 1999) < 0)
  {
    operator delete(*v6);
  }

  v7 = (this + 2000);
  *v6 = 0;
  *(this + 248) = 0;
  *(this + 249) = 0;
  if (*(this + 2023) < 0)
  {
    operator delete(*v7);
  }

  *v7 = 0;
  *(this + 251) = 0;
  *(this + 252) = 0;
}

void non-virtual thunk toBambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall(BambiUnlistedEmergencyCall *this)
{
  BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall((this - 8));
}

{
  BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall((this - 144));
}

{
  BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall((this - 1864));
}

{
  BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall((this - 144));

  JUMPOUT(0x1E69235B0);
}

{
  BambiUnlistedEmergencyCall::~BambiUnlistedEmergencyCall((this - 1864));

  JUMPOUT(0x1E69235B0);
}

void BambiUnlistedEmergencyCall::handleLocationUpdate(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 8;
  v5 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleLocationUpdate(", 21);
  *(v5 + 17) = 0;
  if (*(a2 + 5) <= 0.0)
  {
    v6 = "false";
  }

  else
  {
    v6 = "true";
  }

  std::string::basic_string[abi:ne200100]<0>(v55, v6);
  (*(*v5 + 32))(v5, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  v7 = *(a1 + 2024);
  if (*(a2 + 5) <= 0.0)
  {
    if (v7 == 4)
    {
      v12 = (*(*v4 + 56))(v4);
      (*(*v4 + 16))(v4, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "We don't have a location to send in UPDATE", 42);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      return;
    }

    if (v7 != 1)
    {
      return;
    }

    v11 = (*(*(a1 + 8) + 64))(v4);
    (*(*(a1 + 8) + 16))(v4, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Initial location not available ", 31);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    memset(v18, 0, sizeof(v18));
    v19 = 0x40A7700000000000;
    *v20 = 0u;
    v21 = 0u;
    *v22 = 0u;
    *v23 = 0u;
    v24 = 0u;
    *__p = 0u;
    v26 = 0;
    BambiCall::setEmergencyLocationInfo(a1, v18);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v23[0]) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[1]);
    }

    *(a1 + 2024) = 3;
    goto LABEL_29;
  }

  switch(v7)
  {
    case 4:
      v17 = (*(*(a1 + 8) + 64))(v4);
      (*(*(a1 + 8) + 16))(v4, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Update location available ", 26);
      *(v17 + 17) = 0;
      MEMORY[0x1E6923330](*(v17 + 8), *a2);
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), ", ", 2);
      *(v17 + 17) = 0;
      MEMORY[0x1E6923330](*(v17 + 8), *(a2 + 1));
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      ims::LocationInfo::LocationInfo(v27, a2);
      BambiCall::sendEmergencyLocationUpdate(a1, v27, v36);
      ImsResult::~ImsResult(v36);
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v29 < 0)
      {
        v16 = v28;
        goto LABEL_48;
      }

      break;
    case 2:
      v13 = (*(*(a1 + 8) + 64))(v4);
      (*(*(a1 + 8) + 16))(v4, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Updated initial location available ", 35);
      *(v13 + 17) = 0;
      MEMORY[0x1E6923330](*(v13 + 8), *a2);
      *(v13 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ", ", 2);
      *(v13 + 17) = 0;
      MEMORY[0x1E6923330](*(v13 + 8), *(a2 + 1));
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      v14 = *a2;
      v15 = a2[2];
      *(a1 + 1896) = a2[1];
      *(a1 + 1912) = v15;
      *(a1 + 1880) = v14;
      std::string::operator=((a1 + 1928), a2 + 2);
      std::string::operator=((a1 + 1952), a2 + 3);
      std::string::operator=((a1 + 1976), a2 + 4);
      std::string::operator=((a1 + 2000), a2 + 5);
      ims::LocationInfo::LocationInfo(v37, (a1 + 1880));
      BambiCall::setEmergencyLocationInfo(a1, v37);
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
        v16 = v38;
LABEL_48:
        operator delete(v16);
      }

      break;
    case 1:
      v8 = (*(*(a1 + 8) + 64))(v4);
      (*(*(a1 + 8) + 16))(v4, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Initial location available ", 27);
      *(v8 + 17) = 0;
      MEMORY[0x1E6923330](*(v8 + 8), *a2);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", ", 2);
      *(v8 + 17) = 0;
      MEMORY[0x1E6923330](*(v8 + 8), *(a2 + 1));
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      *(a1 + 2024) = 2;
      v9 = *a2;
      v10 = a2[2];
      *(a1 + 1896) = a2[1];
      *(a1 + 1912) = v10;
      *(a1 + 1880) = v9;
      std::string::operator=((a1 + 1928), a2 + 2);
      std::string::operator=((a1 + 1952), a2 + 3);
      std::string::operator=((a1 + 1976), a2 + 4);
      std::string::operator=((a1 + 2000), a2 + 5);
      ims::LocationInfo::LocationInfo(v46, (a1 + 1880));
      BambiCall::setEmergencyLocationInfo(a1, v46);
      if (v54 < 0)
      {
        operator delete(v53);
      }

      if (v52 < 0)
      {
        operator delete(v51);
      }

      if (v50 < 0)
      {
        operator delete(v49);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }

LABEL_29:
      if (*(a1 + 1872) == 1)
      {
        (*(*a1 + 96))(a1);
      }

      return;
    default:
      return;
  }
}

void BambiUnlistedEmergencyCall::prepareCall(BambiUnlistedEmergencyCall *this)
{
  *(this + 1872) = 0;
  v2 = *(this + 48);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    *(this + 1872) = 1;
    return;
  }

  v4 = v3;
  v5 = *(this + 47);
  if (v5)
  {
    v6 = *(this + 506);
    if ((v6 & 0xFFFFFFFE) == 2)
    {
      v7 = SipStack::prefs(*(this + 47));
      if (ImsPrefs::SendEmergencyLocationUpdates(v7))
      {
        if (*(this + 254))
        {
          *(this + 506) = 4;
        }
      }

      BambiCall::prepareCall(this);
      goto LABEL_12;
    }

    if (!v6)
    {
      BambiUnlistedEmergencyCall::clearLocation(this);
      v26 = 0;
      v27 = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, this + 19);
      {
        v26 = v9;
        v27 = v25;
        p_lpsrc = &lpsrc;
      }

      else
      {
        p_lpsrc = &v26;
      }

      *p_lpsrc = 0;
      p_lpsrc[1] = 0;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      lpsrc = 0;
      v25 = 0;
      v22 = v5;
      v23 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v27;
      v20 = v26;
      v21 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      BambiEmergencyCallHandler::createLocation(&v22, &v20, &lpsrc);
      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v12 = lpsrc;
      if (lpsrc)
      {
        *(this + 506) = 1;
        v13 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(this + 254) = v12;
        v14 = *(this + 255);
        *(this + 255) = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        *(this + 1880) = 0u;
        *(this + 1896) = 0u;
        *(this + 239) = 0x40A7700000000000;
        *(this + 240) = 0;
        v15 = (this + 1928);
        if (*(this + 1951) < 0)
        {
          operator delete(*v15);
        }

        v16 = (this + 1952);
        *v15 = 0;
        *(this + 242) = 0;
        *(this + 243) = 0;
        if (*(this + 1975) < 0)
        {
          operator delete(*v16);
        }

        v17 = (this + 1976);
        *v16 = 0;
        *(this + 245) = 0;
        *(this + 246) = 0;
        if (*(this + 1999) < 0)
        {
          operator delete(*v17);
        }

        v18 = (this + 2000);
        *v17 = 0;
        *(this + 248) = 0;
        *(this + 249) = 0;
        if (*(this + 2023) < 0)
        {
          operator delete(*v18);
        }

        *v18 = 0;
        *(this + 251) = 0;
        *(this + 252) = 0;
        *(this + 1872) = 1;
      }

      else
      {
        v19 = (*(*(this + 1) + 64))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Location lookup not required", 28);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        *(this + 506) = 3;
        BambiCall::prepareCall(this);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      goto LABEL_12;
    }
  }

  *(this + 1872) = 1;
LABEL_12:
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_1E4EA531C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SDPMediaLazuliSettings::~SDPMediaLazuliSettings(SDPMediaLazuliSettings *this)
{
  *this = &unk_1F5ED7730;
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

  v4 = (this + 304);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 280);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  SDPMediaSettings::~SDPMediaSettings(this);
}

{
  SDPMediaLazuliSettings::~SDPMediaLazuliSettings(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaLazuliSettings::SDPMediaLazuliSettings(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xFF00FF00000000;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0x100000001;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 272) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *a1 = &unk_1F5ED7730;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 280, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 304, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  std::allocate_shared[abi:ne200100]<LazuliRouteSet,std::allocator<LazuliRouteSet>,LazuliRouteSet&,0>();
}

void sub_1E4EA5560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  SDPMediaSettings::~SDPMediaSettings(v2);
  _Unwind_Resume(a1);
}

void SDPMediaLazuliSettings::SDPMediaLazuliSettings(SDPMediaLazuliSettings *this, const SDPMediaLazuliSettings *a2)
{
  SDPMediaSettings::SDPMediaSettings(this, a2);
  *v4 = &unk_1F5ED7730;
  v4[36] = 0;
  v4[37] = 0;
  v4[35] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 35), *(a2 + 35), *(a2 + 36), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 36) - *(a2 + 35)) >> 3));
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 304, *(a2 + 38), *(a2 + 39), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 39) - *(a2 + 38)) >> 3));
  v5 = *(a2 + 42);
  *(this + 41) = *(a2 + 41);
  *(this + 42) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 44);
  *(this + 43) = *(a2 + 43);
  *(this + 44) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1E4EA5684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  SDPMediaSettings::~SDPMediaSettings(v2);
  _Unwind_Resume(a1);
}

uint64_t SDPMediaLazuliSettings::operator!=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 288);
  if (v5 - v4 == *(a2 + 288) - *(a2 + 280))
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v31, v4, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v28, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 3));
    v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v32[-v31] >> 3));
    if (v32 == v31)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v31, v32, &v34, v7, 1);
    v8 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v28, v29, &v34, v9, 1);
    v10 = v31;
    v11 = v32;
    v12 = v28;
    if (&v32[-v31] == (v29 - v28))
    {
      if (v31 == v32)
      {
        v14 = 0;
      }

      else
      {
        do
        {
          v13 = std::equal_to<std::string>::operator()[abi:ne200100](&v35, v10, v12);
          if (!v13)
          {
            break;
          }

          v10 += 3;
          v12 += 3;
        }

        while (v10 != v11);
        v14 = !v13;
      }
    }

    else
    {
      v14 = 1;
    }

    v35 = &v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
    v28 = &v31;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  }

  else
  {
    v14 = 1;
  }

  v15 = *(a1 + 304);
  v16 = *(a1 + 312);
  if (v16 - v15 == *(a2 + 312) - *(a2 + 304))
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v31, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v28, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 3));
    v17 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v32[-v31] >> 3));
    if (v32 == v31)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v31, v32, &v34, v18, 1);
    v19 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v28, v29, &v34, v20, 1);
    v21 = v31;
    v22 = v32;
    v23 = v28;
    if (&v32[-v31] == (v29 - v28))
    {
      if (v31 == v32)
      {
        v25 = 0;
      }

      else
      {
        do
        {
          v24 = std::equal_to<std::string>::operator()[abi:ne200100](&v35, v21, v23);
          if (!v24)
          {
            break;
          }

          v21 += 3;
          v23 += 3;
        }

        while (v21 != v22);
        v25 = !v24;
      }
    }

    else
    {
      v25 = 1;
    }

    v35 = &v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
    v28 = &v31;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  }

  else
  {
    v25 = 1;
  }

  if (*(a1 + 24) == *(a2 + 24) && (*(a1 + 26) != *(a2 + 26) ? (v26 = 1) : (v26 = v14), ((v25 | v26) & 1) == 0 && LazuliRouteSet::operator==(*(a1 + 344), *(a2 + 344))))
  {
    return LazuliRouteSet::operator==(*(a1 + 328), *(a2 + 328)) ^ 1;
  }

  else
  {
    return 1;
  }
}

void sub_1E4EA5A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1E4EA5AC0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliRouteSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED7780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ImsDefaultPrefs::ImsDefaultPrefs(ImsDefaultPrefs *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *this = this + 8;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 12) = this + 104;
  *(this + 14) = 0;
  *(this + 17) = 0;
  *(this + 16) = 0;
  *(this + 15) = this + 128;
  ImsDefaultPrefs::addDefaultPrefs(this);
}

void sub_1E4EA5C28(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::destroy(v6, *(v1 + 128));
  std::__tree<std::string>::destroy(v5, *(v1 + 104));
  std::__tree<std::string>::destroy(v4, *(v1 + 80));
  std::__tree<std::string>::destroy(v3, *(v1 + 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2, *(v1 + 32));
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1E4EB91A4(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_1E4EBC810()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 176))
    {
      if (*(v1 - 233) < 0)
      {
        v3 = *(v1 - 256);
        JUMPOUT(0x1E4EBC7F4);
      }

      JUMPOUT(0x1E4EBC7F8);
    }
  }
}

void sub_1E4EBC838()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 176))
    {
      if (*(v1 - 233) < 0)
      {
        JUMPOUT(0x1E4EBC8BCLL);
      }

      JUMPOUT(0x1E4EBC7F8);
    }
  }
}

void sub_1E4EBC860()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 176))
    {
      JUMPOUT(0x1E4EBC884);
    }
  }
}

void sub_1E4EBC890()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 176))
    {
      JUMPOUT(0x1E4EBC8B4);
    }
  }
}

void sub_1E4EBC8C4()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 176))
    {
      JUMPOUT(0x1E4EBC8E8);
    }
  }
}

void sub_1E4EBC8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    JUMPOUT(0x1E4EBC55CLL);
  }

  JUMPOUT(0x1E4EBC560);
}

void ImsDefaultPrefs::~ImsDefaultPrefs(char **this)
{
  std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::destroy((this + 15), this[16]);
  std::__tree<std::string>::destroy((this + 12), this[13]);
  std::__tree<std::string>::destroy((this + 9), this[10]);
  std::__tree<std::string>::destroy((this + 6), this[7]);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 3), this[4]);
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(this, this[1]);
}

BOOL ImsDefaultPrefs::isKeyRenamed(uint64_t a1, void **a2, std::string *a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 24, a2);
  v6 = v5;
  v7 = a1 + 32;
  if (v7 == v5)
  {
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      a3->__r_.__value_.__l.__size_ = 0;
      a3 = a3->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
    }

    a3->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    std::string::operator=(a3, (v5 + 56));
  }

  return v7 != v6;
}

void ImsDefaultPrefs::getMatchingKey(void *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(&v29, 0, sizeof(v29));
  ims::lowerCase(a2, &v29);
  v5 = a1[15];
  v6 = a1 + 16;
  if (v5 != a1 + 16)
  {
    while (1)
    {
      ims::lowerCase((v5 + 4), &__p);
      v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v9 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v29.__r_.__value_.__l.__size_;
      }

      if (size == v9)
      {
        break;
      }

      v12 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (v12)
      {
        goto LABEL_26;
      }

      v13 = v5[1];
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
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
      if (v14 == v6)
      {
        goto LABEL_29;
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v29;
    }

    else
    {
      v11 = v29.__r_.__value_.__r.__words[0];
    }

    v12 = memcmp(p_p, v11, size) == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_26:
  if (v5 == v6)
  {
LABEL_29:
    v18 = a1[3];
    v19 = a1 + 4;
    if (v18 == v19)
    {
LABEL_54:
      if (v18 == v19)
      {
LABEL_58:
        v28 = 0;
        a3->__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_62;
      }

      if (*(v18 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(a3, v18[7], v18[8]);
        goto LABEL_61;
      }

      v16 = *(v18 + 7);
      v17 = v18[9];
      goto LABEL_57;
    }

    while (1)
    {
      ims::lowerCase((v18 + 4), &__p);
      v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      v22 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v29.__r_.__value_.__l.__size_;
      }

      if (v21 == v22)
      {
        break;
      }

      v25 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_45;
      }

LABEL_46:
      if (v25)
      {
        goto LABEL_54;
      }

      v26 = v18[1];
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
          v27 = v18[2];
          v15 = *v27 == v18;
          v18 = v27;
        }

        while (!v15);
      }

      v18 = v27;
      if (v27 == v19)
      {
        goto LABEL_58;
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v29;
    }

    else
    {
      v24 = v29.__r_.__value_.__r.__words[0];
    }

    v25 = memcmp(v23, v24, v21) == 0;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_45:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_46;
  }

  if (*(v5 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v5[4], v5[5]);
    goto LABEL_61;
  }

  v16 = *(v5 + 2);
  v17 = v5[6];
LABEL_57:
  a3->__r_.__value_.__r.__words[2] = v17;
  *&a3->__r_.__value_.__l.__data_ = v16;
LABEL_61:
  v28 = 1;
LABEL_62:
  a3[1].__r_.__value_.__s.__data_[0] = v28;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EBCC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsDefaultPrefs::isSection(__int128 **a1, void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v4)
  {
    v7 = v4;
    v8 = *a1;
    if (*a1 == v4)
    {
      return 0;
    }

    while (1)
    {
      v14 = 0;
      *__p = 0u;
      v13 = 0u;
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, v8 + 2);
      isSection = ImsPrefsSection::isSection(*(&v13 + 1), a2);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (isSection)
      {
        break;
      }

      v9 = *(v8 + 1);
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
          v10 = *(v8 + 2);
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
      if (v10 == v7)
      {
        return isSection;
      }
    }
  }

  return 1;
}

std::__shared_weak_count *ImsDefaultPrefs::sectionPtrForKey@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2);
  if ((a1 + 128) == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result;
    *a3 = 0;
    a3[1] = 0;
    result = result[2].__shared_weak_owners_;
    if (result)
    {
      result = std::__shared_weak_count::lock(result);
      a3[1] = result;
      if (result)
      {
        *a3 = v6[2].__shared_owners_;
      }
    }
  }

  return result;
}

void ImsDefaultPrefs::sectionPathForKey(uint64_t a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  v13 = 0;
  v14 = 0;
  ImsDefaultPrefs::sectionPtrForKey(a1, a2, &v13);
  v4 = v13;
  if (v13)
  {
    if (*(v13 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(v13 + 48), *(v13 + 56));
    }

    else
    {
      v11 = *(v13 + 48);
    }

    v5 = std::string::append(&v11, "/", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (*(v4 + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 72), *(v4 + 80));
    }

    else
    {
      __p = *(v4 + 72);
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

    v9 = std::string::append(&v12, p_p, size);
    *a3 = *v9;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1E4EBCF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v30 = *(v28 - 24);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::logMergedPrefs(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a1 + 1);
  v6 = *a1;
  if (*a1 != a1 + 1)
  {
    v10 = a5;
    do
    {
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](v19, v6 + 2);
      std::string::basic_string[abi:ne200100](&__b, v10, 32);
      LoggableString::LoggableString(&__p, &__b);
      (*(*a2 + 40))(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (*(*&v19[24] + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(*&v19[24] + 72), *(*&v19[24] + 80));
      }

      else
      {
        __p = *(*&v19[24] + 72);
      }

      (*(*a2 + 32))(a2, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), ": {", 3);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = *&v19[24];
      v12 = *(a3 + 8);
      v16[0] = &unk_1F5EF3658;
      v16[1] = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      v16[0] = &unk_1F5EBED08;
      ImsPrefsSection::logMergedPrefs(v11, a2, v16, a4, 4);
      ims::CFType::~CFType(v16);
      std::string::basic_string[abi:ne200100](&__b, v10, 32);
      LoggableString::LoggableString(&__p, &__b);
      (*(*a2 + 40))(a2, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "}", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if ((v19[23] & 0x80000000) != 0)
      {
        operator delete(*v19);
      }

      v13 = *(v6 + 1);
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
          v14 = *(v6 + 2);
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
    }

    while (v14 != v5);
  }
}

void ImsDefaultPrefs::getOrCreatePrefSection(uint64_t *a1, uint64_t a2, std::string *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v6 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size < 1)
  {
    goto LABEL_21;
  }

  v9 = v7 + size;
  v10 = v7;
  while (1)
  {
    v11 = memchr(v10, 47, size);
    if (!v11)
    {
      goto LABEL_21;
    }

    if (*v11 == 47)
    {
      break;
    }

    v10 = (v11 + 1);
    size = v9 - v10;
    if (v9 - v10 < 1)
    {
      goto LABEL_21;
    }
  }

  if (v11 == v9 || v11 - v7 == -1)
  {
LABEL_21:
    if (a2 + 8 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2, &a3->__r_.__value_.__l.__data_))
    {
      std::allocate_shared[abi:ne200100]<ImsPrefsSection,std::allocator<ImsPrefsSection>,char const(&)[1],std::string const&,0>();
    }

    v34 = a3;
    v14 = std::__tree<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &a3->__r_.__value_.__l.__data_);
    v16 = *(v14 + 56);
    v15 = *(v14 + 64);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    *a1 = v16;
    a1[1] = v15;
    return;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "/");
  ims::tokenize(a3, &v34, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = v35 - v34;
  if (v35 == v34)
  {
    std::allocate_shared[abi:ne200100]<ImsPrefsSection,std::allocator<ImsPrefsSection>,char const(&)[1],std::string const&,0>();
  }

  memset(&__p, 0, sizeof(__p));
  if (*(v35 - 1) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v35 - 3), *(v35 - 2));
  }

  else
  {
    v13 = *(v35 - 3);
    __p.__r_.__value_.__r.__words[2] = *(v35 - 1);
    *&__p.__r_.__value_.__l.__data_ = v13;
  }

  if (a2 + 8 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2, &v34->__r_.__value_.__l.__data_))
  {
    std::allocate_shared[abi:ne200100]<ImsPrefsSection,std::allocator<ImsPrefsSection>,char const(&)[1],std::string const&,0>();
  }

  v32.__r_.__value_.__r.__words[0] = v34;
  v17 = std::__tree<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &v34->__r_.__value_.__l.__data_);
  v19 = *(v17 + 56);
  v18 = *(v17 + 64);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v21 = 1;
  for (i = 1; ; ++i)
  {
    v23 = v18;
    ImsPrefsSection::getOrCreatePrefSection(v19, &v34[i].__r_.__value_.__l.__data_, 1, &v32);
    v18 = v32.__r_.__value_.__l.__size_;
    v19 = v32.__r_.__value_.__r.__words[0];
    *&v32.__r_.__value_.__l.__data_ = 0uLL;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      if (v32.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32.__r_.__value_.__l.__size_);
      }
    }

    if (v19)
    {
      break;
    }

    if (v21 >= v20)
    {
      goto LABEL_67;
    }

LABEL_61:
    ++v21;
  }

  if (*(v19 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(v19 + 72), *(v19 + 80));
  }

  else
  {
    v32 = *(v19 + 72);
  }

  v24 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v32.__r_.__value_.__l.__size_;
  }

  v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  if (v25 != v26)
  {
    v29 = 0;
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v32;
  }

  else
  {
    v27 = v32.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v29 = memcmp(v27, p_p, v25) == 0;
  if (v24 < 0)
  {
LABEL_56:
    operator delete(v32.__r_.__value_.__l.__data_);
  }

LABEL_57:
  v30 = v21 >= v20 || v29;
  if ((v30 & 1) == 0)
  {
    goto LABEL_61;
  }

  if (!v29)
  {
LABEL_67:
    std::allocate_shared[abi:ne200100]<ImsPrefsSection,std::allocator<ImsPrefsSection>,char const(&)[1],std::string const&,0>();
  }

  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = a1[1];
  *a1 = v19;
  a1[1] = v18;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1E4EBD7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 + 8);
  __p = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void ImsDefaultPrefs::addBoolKey(uint64_t a1, char *a2, int a3, std::string *a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  ImsDefaultPrefs::getOrCreatePrefSection(&v17, a1, a4);
  v9 = v17;
  ImsPrefsSection::addBoolKey(v17, a2, a3);
  v16 = 0u;
  *__p = 0u;
  v10 = v18;
  v14 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    *&v16 = *(a5 + 16);
  }

  DWORD2(v16) = 1;
  v19 = a2;
  v11 = std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 120, a2);
  v12 = v11;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 64);
  *(v12 + 56) = v9;
  *(v12 + 64) = v14;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::string::operator=((v12 + 72), __p);
  *(v12 + 96) = DWORD2(v16);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EBD9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void ImsPref::~ImsPref(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void ImsDefaultPrefs::addIntKey(uint64_t a1, char *a2, unsigned int a3, std::string *a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  ImsDefaultPrefs::getOrCreatePrefSection(&v17, a1, a4);
  v9 = v17;
  ImsPrefsSection::addIntKey(v17, a2, a3);
  v16 = 0u;
  *__p = 0u;
  v10 = v18;
  v14 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    *&v16 = *(a5 + 16);
  }

  DWORD2(v16) = 2;
  v19 = a2;
  v11 = std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 120, a2);
  v12 = v11;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 64);
  *(v12 + 56) = v9;
  *(v12 + 64) = v14;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::string::operator=((v12 + 72), __p);
  *(v12 + 96) = DWORD2(v16);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EBDB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::addStringKey(uint64_t a1, char *a2, uint64_t a3, std::string *a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  ImsDefaultPrefs::getOrCreatePrefSection(&v18, a1, a4);
  v9 = v18;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
  }

  ImsPrefsSection::addStringKey(v9, a2, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  *__p = 0u;
  v16 = 0u;
  v10 = v19;
  v14 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    *&v16 = *(a5 + 16);
  }

  DWORD2(v16) = 3;
  v20 = a2;
  v11 = std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 120, a2);
  v12 = v11;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 64);
  *(v12 + 56) = v9;
  *(v12 + 64) = v14;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::string::operator=((v12 + 72), __p);
  *(v12 + 96) = DWORD2(v16);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EBDD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::addInterpolatedStringKey(uint64_t a1, char *a2, uint64_t a3, std::string *a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  ImsDefaultPrefs::getOrCreatePrefSection(&v18, a1, a4);
  v9 = v18;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
  }

  ImsPrefsSection::addStringKey(v9, a2, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  *__p = 0u;
  v16 = 0u;
  v10 = v19;
  v14 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    *&v16 = *(a5 + 16);
  }

  DWORD2(v16) = 4;
  v20 = a2;
  v11 = std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 120, a2);
  v12 = v11;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 64);
  *(v12 + 56) = v9;
  *(v12 + 64) = v14;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::string::operator=((v12 + 72), __p);
  *(v12 + 96) = DWORD2(v16);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EBDF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::addDictKey(uint64_t a1, char *a2, std::string *a3, uint64_t a4)
{
  v19 = &unk_1F5EF3760;
  v20 = 0;
  ims::CFDictionary::createEmpty(&v19);
  v17 = 0;
  v18 = 0;
  ImsDefaultPrefs::getOrCreatePrefSection(&v17, a1, a3);
  v8 = v17;
  v16[0] = &unk_1F5EF3658;
  v16[1] = v20;
  if (v20)
  {
    CFRetain(v20);
  }

  v16[0] = &unk_1F5EF3760;
  ImsPrefsSection::addDictKey(v8, a2, v16);
  ims::CFType::~CFType(v16);
  v15 = 0u;
  *__p = 0u;
  v9 = v18;
  v13 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    *&v15 = *(a4 + 16);
  }

  DWORD2(v15) = 5;
  v21 = a2;
  v10 = std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 120, a2);
  v11 = v10;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(v10 + 64);
  *(v11 + 56) = v8;
  *(v11 + 64) = v13;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::string::operator=((v11 + 72), __p);
  *(v11 + 96) = DWORD2(v15);
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ims::CFType::~CFType(&v19);
}

void sub_1E4EBE11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  ims::CFType::~CFType((v19 - 72));
  _Unwind_Resume(a1);
}

void ImsDefaultPrefs::addArrayKey(uint64_t a1, char *a2, std::string *a3, std::string *a4, uint64_t a5)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  ims::tokenize(a3, &v29, 0x2Cu);
  v27 = &unk_1F5EBE6A8;
  cf = 0;
  ims::CFMutableArray::create(&v27);
  v9 = v29;
  v10 = v30;
  while (v9 != v10)
  {
    ims::CFString::CFString(&v18, v9);
    ims::CFMutableArray::appendValue(&v27, &v18);
    ims::CFType::~CFType(&v18);
    v9 += 24;
  }

  v25 = &unk_1F5EF3658;
  v26 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v24 = 0;
  v25 = &unk_1F5EC8AD0;
  v23 = 0;
  ImsDefaultPrefs::getOrCreatePrefSection(&v23, a1, a4);
  v11 = v23;
  v22[0] = &unk_1F5EF3658;
  v22[1] = v26;
  if (v26)
  {
    CFRetain(v26);
  }

  v22[0] = &unk_1F5EC8AD0;
  ImsPrefsSection::addArrayKey(v11, a2, v22);
  ims::CFType::~CFType(v22);
  *__p = 0u;
  v21 = 0u;
  v12 = v24;
  v18 = v11;
  v19 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    *&v21 = *(a5 + 16);
  }

  DWORD2(v21) = 6;
  v32 = a2;
  v13 = std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 120, a2);
  v14 = v13;
  v16 = v18;
  v15 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v13 + 64);
  *(v14 + 56) = v16;
  *(v14 + 64) = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  std::string::operator=((v14 + 72), __p);
  *(v14 + 96) = DWORD2(v21);
  if (SBYTE7(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  ims::CFType::~CFType(&v25);
  ims::CFType::~CFType(&v27);
  v18 = &v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_1E4EBE3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, char a21)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  ims::CFType::~CFType(&a19);
  ims::CFType::~CFType(&a21);
  a9 = v21 - 80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ImsDefaultPrefs::addEnumKey(uint64_t a1, char *a2, char **a3, std::string *a4, uint64_t a5)
{
  v28 = &unk_1F5ED77D0;
  v29 = 0;
  ims::CFMutableEnum::create(&v28);
  v10 = *a3;
  v11 = a3[1];
  v12 = *a3;
  if (*a3 != v11)
  {
    do
    {
      ims::CFString::CFString(&v20, v12);
      ims::CFMutableEnum::addToEnum(&v28, v21);
      ims::CFType::~CFType(&v20);
      v12 += 24;
    }

    while (v12 != v11);
    ims::CFString::CFString(&v20, *a3);
    ims::CFMutableEnum::setValue(&v28, v21, v27);
    ImsResult::~ImsResult(v27);
    ims::CFType::~CFType(&v20);
  }

  v25 = 0;
  v26 = 0;
  ImsDefaultPrefs::getOrCreatePrefSection(&v25, a1, a4);
  v13 = v25;
  v24[0] = &unk_1F5EF3658;
  v24[1] = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  v24[0] = &unk_1F5EC8B28;
  ImsPrefsSection::addEnumKey(v13, a2, v24);
  ims::CFType::~CFType(v24);
  *__p = 0u;
  v23 = 0u;
  v14 = v26;
  v20 = v13;
  v21 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    *&v23 = *(a5 + 16);
  }

  DWORD2(v23) = 7;
  v30 = a2;
  v15 = std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 120, a2);
  v16 = v15;
  v18 = v20;
  v17 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(v15 + 64);
  *(v16 + 56) = v18;
  *(v16 + 64) = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::string::operator=((v16 + 72), __p);
  *(v16 + 96) = DWORD2(v23);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  ims::CFType::~CFType(&v28);
}

void sub_1E4EBE6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  ims::CFType::~CFType((v18 - 88));
  _Unwind_Resume(a1);
}

BOOL ImsDefaultPrefs::BOOLValue(uint64_t a1, void **a2)
{
  if (a1 + 128 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2))
  {
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ImsDefaultPrefs::sectionPtrForKey(a1, a2, &v6);
    if (v6)
    {
      v8 = 0;
      ims::CFDictionary::getBoolValue(v6 + 96, a2, &v8);
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return v4;
}

void sub_1E4EBE7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsDefaultPrefs::intValue(uint64_t a1, void **a2)
{
  if (a1 + 128 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  ImsDefaultPrefs::sectionPtrForKey(a1, a2, &v6);
  if (v6)
  {
    v8 = 0;
    ims::CFDictionary::getUint32Value(v6 + 96, a2, &v8);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1E4EBE868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::stringValue(uint64_t a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 + 128 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2))
  {

    std::string::basic_string[abi:ne200100]<0>(a3, &str_19);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    ImsDefaultPrefs::sectionPtrForKey(a1, a2, &v7);
    if (v7)
    {
      ims::CFDictionary::getStringValue(v7 + 96, a2, a3);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(a3, &str_19);
    }

    v6 = v8;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4EBE968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::dictValue(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (a1 + 128 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2))
  {
    *a3 = &unk_1F5EF3760;
    a3[1] = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ImsDefaultPrefs::sectionPtrForKey(a1, a2, &v6);
    if (v6)
    {
      ImsPrefsSection::dictValue(v6, a2, a3);
    }

    else
    {
      *a3 = &unk_1F5EF3760;
      a3[1] = 0;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1E4EBEA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::arrayValue(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (a1 + 128 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2))
  {
    *a3 = &unk_1F5EC8AD0;
    a3[1] = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    ImsDefaultPrefs::sectionPtrForKey(a1, a2, &v6);
    if (v6)
    {
      ImsPrefsSection::arrayValue(v6, a2, a3);
    }

    else
    {
      *a3 = &unk_1F5EC8AD0;
      a3[1] = 0;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1E4EBEB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::enumAsString(uint64_t a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 + 128 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2))
  {

    std::string::basic_string[abi:ne200100]<0>(a3, &str_19);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    ImsDefaultPrefs::sectionPtrForKey(a1, a2, &v7);
    if (v7)
    {
      ImsPrefsSection::enumAsString(v7, a2, a3);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(a3, &str_19);
    }

    v6 = v8;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4EBEC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::join<std::__wrap_iter<std::string *>>()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4EBED80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void ImsDefaultPrefs::getSipTimers(ImsDefaultPrefs *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  std::string::basic_string[abi:ne200100]<0>(v48, "Signaling");
  v6 = *(this + 1);
  v4 = this + 8;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v4;
  do
  {
    v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, v48);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v5;
    }

    v5 = *&v5[(v8 >> 4) & 8];
  }

  while (v5);
  if (v7 == v4 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v48, v7 + 4) & 0x80) != 0)
  {
LABEL_8:
    v7 = v4;
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v4 != v7)
  {
    v42 = 0;
    v43 = 0;
    v9 = *(v7 + 7);
    std::string::basic_string[abi:ne200100]<0>(v48, "SipTimers");
    ImsPrefsSection::getOrCreatePrefSection(v9, v48, 0, &v42);
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    v10 = v42;
    if (v42)
    {
      std::string::basic_string[abi:ne200100]<0>(v48, "A");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v11 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "A");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v11;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "B");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v12 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "B");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v12;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "C");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v13 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "C");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v13;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "D");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v14 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "D");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v14;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "E");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v15 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "E");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v15;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "F");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v16 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "F");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v16;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "G");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v17 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "G");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v17;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "H");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v18 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "H");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v18;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "I");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v19 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "I");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v19;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "J");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v20 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "J");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v20;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "T1");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v21 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "T1");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v21;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "T2");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v22 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "T2");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v22;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "T4");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v23 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "T4");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v23;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "200RetransmitTimer");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v24 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "200RetransmitTimer");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v24;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "AckReceiveTimeout");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v25 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "AckReceiveTimeout");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v25;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "AckRetransmitTimer");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v26 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "AckRetransmitTimer");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v26;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "RegAwaitAuthTimeout");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v27 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "RegAwaitAuthTimeout");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v27;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "InviteResponseTimeout");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v28 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "InviteResponseTimeout");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v28;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "EPSInviteResponseTimeout");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v29 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "EPSInviteResponseTimeout");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v29;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "EmergencyInviteResponseTimeout");
      LODWORD(__p[0]) = 0;
      ims::CFDictionary::getUint32Value(v10 + 96, v48, __p);
      v30 = __p[0];
      std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyInviteResponseTimeout");
      v50 = __p;
      *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v30;
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v31 = __p[0];
    }

    else
    {
      v34 = std::string::basic_string[abi:ne200100]<0>(v48, "prefs");
      v38[0] = 0;
      v41 = 0;
      v35 = ims::error(v34, v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "Can't find 'SipTimers' section in default prefs", 47);
      *(v35 + 17) = 0;
      (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v35 + 17) = 0;
      if (v41 != 1 || (v40 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v31 = v39;
    }

    operator delete(v31);
LABEL_102:
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    return;
  }

  v32 = std::string::basic_string[abi:ne200100]<0>(v48, "prefs");
  v44[0] = 0;
  v47 = 0;
  v33 = ims::error(v32, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Can't find 'Signaling' section in default prefs", 47);
  *(v33 + 17) = 0;
  (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v33 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }
}

void sub_1E4EBFA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::__tree<std::string>::destroy(v23, *(v23 + 8));
  _Unwind_Resume(a1);
}

void sub_1E4EBFBB4()
{
  if (*(v0 - 49) < 0)
  {
    operator delete(*(v0 - 72));
  }

  JUMPOUT(0x1E4EBFBA0);
}

void sub_1E4EBFBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a21 == 1 && a19 < 0)
  {
    JUMPOUT(0x1E4EBFB6CLL);
  }

  JUMPOUT(0x1E4EBFB7CLL);
}

void sub_1E4EBFBE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a30 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 49) < 0)
  {
    operator delete(*(v30 - 72));
  }

  JUMPOUT(0x1E4EBFBA0);
}

void ims::CFMutableEnum::~CFMutableEnum(ims::CFMutableEnum *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::destroy(a1, *(a2 + 1));
    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1E4EBFDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ImsPrefsSection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED7840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,ImsPref>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsPref>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsPref>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL operator==(void *a1, uint64_t a2)
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

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *(a2 + 8);
  v6 = (a2 + 8);
  v7 = v8;
  if (v5 < 0)
  {
    v6 = v7;
  }

  return memcmp(a1, v6, v3) == 0;
}

void SipTimers::SipTimers(SipTimers *this)
{
  *this = &unk_1F5ED7890;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  SipTimers::resetDefaults(this);
}

uint64_t SipTimers::resetDefaults(char **this)
{
  v1 = this + 2;
  v2 = (this + 1);
  std::__tree<std::string>::destroy((this + 1), this[2]);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, &qword_1EE2BCD50) + 56) = 2000;
  *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, &unk_1EE2BCD30) + 56) = 16000;
  *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, &unk_1EE2BCD10) + 56) = 17000;
  result = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, &xmmword_1EE2BCE50);
  *(result + 56) = 128000;
  return result;
}

BOOL SipTimers::isValid(SipTimers *this)
{
  v2 = SipTimers::timerValue(this, &SipTimers::kTimerT1, 0);
  v3 = SipTimers::timerValue(this, &SipTimers::kTimerT2, 0);
  result = 0;
  if (v2 < v3)
  {
    v5 = SipTimers::timerValue(this, &SipTimers::kTimerT2, 0);
    return v5 < SipTimers::timerValue(this, &SipTimers::kTimerT4, 0);
  }

  return result;
}

uint64_t SipTimers::timerValue(SipTimers *this, const SipTimer *a2, int a3)
{
  v5 = 1;
  while (1)
  {
    while (1)
    {
      v6 = a3;
      if (!ImsUuid::operator==(a2, &SipTimers::kTimerA))
      {
        break;
      }

      a3 = 0;
      v5 *= v6;
      a2 = &SipTimers::kTimerT1;
    }

    if (!ImsUuid::operator==(a2, &SipTimers::kTimerE))
    {
      break;
    }

    a3 = 0;
    a2 = &SipTimers::kTimerT1;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  if (!ImsUuid::operator==(a2, &SipTimers::kTimerG) && !ImsUuid::operator==(a2, &SipTimers::kTimer200Retransmit))
  {
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v10 = *(a2 + 8);
      v22.__r_.__value_.__r.__words[2] = *(a2 + 3);
      *&v22.__r_.__value_.__l.__data_ = v10;
    }

    v11 = this + 16;
    v12 = *(this + 2);
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = this + 16;
    do
    {
      v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, &v22.__r_.__value_.__l.__data_);
      if ((v14 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v12 = *&v12[(v14 >> 4) & 8];
    }

    while (v12);
    if (v13 == v11 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22, v13 + 4) & 0x80) != 0)
    {
LABEL_22:
      v13 = this + 16;
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v11 != v13)
    {
      v8 = *(v13 + 14);
      return v8 * v5;
    }

    if (ImsUuid::operator==(a2, &SipTimers::kTimerB) || ImsUuid::operator==(a2, &SipTimers::kTimerD) || ImsUuid::operator==(a2, &SipTimers::kTimerF) || ImsUuid::operator==(a2, &SipTimers::kTimerH))
    {
      goto LABEL_31;
    }

    if (ImsUuid::operator==(a2, &SipTimers::kTimerI))
    {
      goto LABEL_33;
    }

    if (!ImsUuid::operator==(a2, &SipTimers::kTimerJ))
    {
      if (ImsUuid::operator==(a2, &SipTimers::kTimerK))
      {
LABEL_33:
        v15 = &SipTimers::kTimerT4;
        goto LABEL_34;
      }

      if (!ImsUuid::operator==(a2, &SipTimers::kTimerAckReceiveTimeout) && !ImsUuid::operator==(a2, &SipTimers::kTimerAckRetransmitTimeout))
      {
        if (!ImsUuid::operator==(a2, &SipTimers::kTimerRegAwaitAuth))
        {
          if (!ImsUuid::operator==(a2, &SipTimers::kTimerInviteResponseTimeout))
          {
            if (ImsUuid::operator==(a2, &SipTimers::kTimerEmergencyInviteResponseTimeout) || ImsUuid::operator==(a2, &SipTimers::kTimerEPSInviteResponseTimeout))
            {
              v15 = &SipTimers::kTimerInviteResponseTimeout;
              goto LABEL_34;
            }

            std::string::basic_string[abi:ne200100]<0>(&v22, "sip.timer");
            v18[0] = 0;
            v21 = 0;
            v16 = ims::error(&v22, v18);
            v23 = "unknown SIP timer ";
            v17 = ImsOutStream::putStreamable<char const*&>(v16, &v23);
            (*(*a2 + 16))(a2, v17);
            (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v17[17] = 0;
            if (v21 == 1 && v20 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v22.__r_.__value_.__l.__data_);
            }
          }

          v8 = 0;
          return v8 * v5;
        }

        v15 = &SipTimers::kTimerF;
LABEL_34:
        v8 = SipTimers::timerValue(this, v15, 0);
        return v8 * v5;
      }
    }

LABEL_31:
    v8 = SipTimers::timerValue(this, &SipTimers::kTimerT1, 0) << 6;
    return v8 * v5;
  }

LABEL_9:
  v7 = SipTimers::timerValue(this, &SipTimers::kTimerT1, 0) * v6;
  v8 = SipTimers::timerValue(this, &SipTimers::kTimerT2, 0);
  if (v8 >= v7)
  {
    v8 = v7;
  }

  return v8 * v5;
}

void sub_1E4EC07F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void SipTimers::setTimersFromPrefs(uint64_t **this, const ImsPrefs *a2)
{
  v21 = 0;
  v22[0] = 0;
  v22[1] = 0;
  ImsPrefs::getSipTimers(a2, &v21);
  v3 = v21;
  if (v21 != v22)
  {
    do
    {
      memset(&v20, 0, sizeof(v20));
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v3[4], v3[5]);
      }

      else
      {
        v20 = *(v3 + 4);
      }

      v4 = *(v3 + 14);
      if (v4)
      {
        std::string::basic_string[abi:ne200100]<0>(v18, "sip.timer");
        v14[0] = 0;
        v17 = 0;
        v5 = ims::debug(v18, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setting timer ", 14);
        *(v5 + 17) = 0;
        (*(*v5 + 32))(v5, &v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " to ", 4);
        *(v5 + 17) = 0;
        MEMORY[0x1E6923350](*(v5 + 8), v4);
        *(v5 + 17) = 0;
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v5 + 17) = 0;
        if (v17 == 1 && v16 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        v18[0] = &v20;
        *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((this + 1), &v20.__r_.__value_.__l.__data_) + 56) = v4;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v18, "sip.timer");
        v10[0] = 0;
        v13 = 0;
        v6 = ims::debug(v18, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "resetting timer ", 16);
        *(v6 + 17) = 0;
        (*(*v6 + 32))(v6, &v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " to default", 11);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v13 == 1 && v12 < 0)
        {
          operator delete(v11);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        std::__tree<std::string>::__erase_unique<std::string>(this + 1, &v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v22);
  }

  std::__tree<std::string>::destroy(&v21, v22[0]);
}

void SipTimers::log(SipTimers *this, ImsOutStream *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v3, "=");
  std::string::basic_string[abi:ne200100]<0>(&v2, ", ");
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  ImsStringOutStream::ImsStringOutStream(v4);
}

void sub_1E4EC0E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void SipTimers::~SipTimers(char **this)
{
  *this = &unk_1F5ED7890;
  std::__tree<std::string>::destroy((this + 1), this[2]);
}

{
  *this = &unk_1F5ED7890;
  std::__tree<std::string>::destroy((this + 1), this[2]);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipTimer::SipTimer(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_1F5ECDB78;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  return a1;
}

void sub_1E4EC107C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,unsigned int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,unsigned int>,std::__tree_node<std::__value_type<std::string,unsigned int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,unsigned int>,std::__tree_node<std::__value_type<std::string,unsigned int>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::pair<std::string const,unsigned int> const&>();
  }

  return result;
}

void sub_1E4EC12A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,unsigned int>,std::__tree_node<std::__value_type<std::string,unsigned int>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 14) = *(v9 + 14);
          v10 = v17;
          v14 = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v14, v17 + 4);
          std::__tree<unsigned int>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::pair<std::string const,unsigned int> const&>();
  }

  return result;
}

void sub_1E4EC1470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _GLOBAL__sub_I_SipTimer_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "T1");
  SipTimer::SipTimer(&SipTimers::kTimerT1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerT1, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "T2");
  SipTimer::SipTimer(&SipTimers::kTimerT2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerT2, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "T4");
  SipTimer::SipTimer(&SipTimers::kTimerT4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerT4, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "A");
  SipTimer::SipTimer(&SipTimers::kTimerA, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerA, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "B");
  SipTimer::SipTimer(&SipTimers::kTimerB, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerB, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "C");
  SipTimer::SipTimer(&SipTimers::kTimerC, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerC, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "D");
  SipTimer::SipTimer(&SipTimers::kTimerD, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerD, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "E");
  SipTimer::SipTimer(&SipTimers::kTimerE, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerE, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "F");
  SipTimer::SipTimer(&SipTimers::kTimerF, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerF, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "G");
  SipTimer::SipTimer(&SipTimers::kTimerG, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerG, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "H");
  SipTimer::SipTimer(&SipTimers::kTimerH, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerH, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "I");
  SipTimer::SipTimer(&SipTimers::kTimerI, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerI, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "J");
  SipTimer::SipTimer(&SipTimers::kTimerJ, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerJ, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "K");
  SipTimer::SipTimer(&SipTimers::kTimerK, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerK, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "200RetransmitTimer");
  SipTimer::SipTimer(&SipTimers::kTimer200Retransmit, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimer200Retransmit, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "AckReceiveTimeout");
  SipTimer::SipTimer(&SipTimers::kTimerAckReceiveTimeout, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerAckReceiveTimeout, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "AckRetransmitTimer");
  SipTimer::SipTimer(&SipTimers::kTimerAckRetransmitTimeout, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerAckRetransmitTimeout, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "RegAwaitAuthTimeout");
  SipTimer::SipTimer(&SipTimers::kTimerRegAwaitAuth, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerRegAwaitAuth, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "InviteResponseTimeout");
  SipTimer::SipTimer(&SipTimers::kTimerInviteResponseTimeout, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerInviteResponseTimeout, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "EPSInviteResponseTimeout");
  SipTimer::SipTimer(&SipTimers::kTimerEPSInviteResponseTimeout, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerEPSInviteResponseTimeout, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "EmergencyInviteResponseTimeout");
  SipTimer::SipTimer(&SipTimers::kTimerEmergencyInviteResponseTimeout, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(SipTimer::~SipTimer, &SipTimers::kTimerEmergencyInviteResponseTimeout, &dword_1E4C3F000);
}

void sub_1E4EC1B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipAckReceiveHandler::SipAckReceiveHandler(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = &unk_1F5EBEEC0;
  v8 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.session");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v29, (*a2 + 192));
  ImsLogContainer::ImsLogContainer(v8, &__str, v29);
  if (v32 == 1 && v31 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "sip.session");
  v9 = *a2;
  v23 = *(*a2 + 192);
  v24 = *(v9 + 200);
  if (*(v9 + 231) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(v9 + 208), *(v9 + 216));
  }

  else
  {
    v25 = *(v9 + 208);
  }

  v26 = *(v9 + 232);
  ims::getQueue(&v35);
  ClientConfig::getLogTag(&v23, &v33);
  if ((v28 & 0x80u) == 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v11 = v28;
  }

  else
  {
    v11 = v27[1];
  }

  v12 = std::string::insert(&v33, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v15 = v35;
  *(a1 + 168) = v35;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  *(a1 + 144) = &unk_1F5ED7A80;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  *a1 = &unk_1F5ED78D8;
  *(a1 + 8) = &unk_1F5ED7918;
  *(a1 + 144) = &unk_1F5ED7978;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  SipTimerContainer::SipTimerContainer((a1 + 224));
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  v17 = *a2;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 200);
  *(a1 + 192) = v17;
  *(a1 + 200) = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v20 = *a3;
  v19 = a3[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 216);
  *(a1 + 208) = v20;
  *(a1 + 216) = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *a4;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
}

void sub_1E4EC1FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v40);
  _Unwind_Resume(a1);
}

void SipAckReceiveHandler::~SipAckReceiveHandler(SipAckReceiveHandler *this)
{
  *this = &unk_1F5ED78D8;
  *(this + 1) = &unk_1F5ED7918;
  *(this + 18) = &unk_1F5ED7978;
  SipTimerContainer::cancelAllTimers((this + 224));
  v2 = *(this + 51);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  SipTimerContainer::~SipTimerContainer((this + 224));
  v3 = *(this + 27);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  SipAckReceiveHandler::~SipAckReceiveHandler(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipAckReceiveHandler::~SipAckReceiveHandler(SipAckReceiveHandler *this)
{
  SipAckReceiveHandler::~SipAckReceiveHandler((this - 8));
}

{
  SipAckReceiveHandler::~SipAckReceiveHandler((this - 144));
}

{
  SipAckReceiveHandler::~SipAckReceiveHandler((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipAckReceiveHandler::~SipAckReceiveHandler((this - 144));

  JUMPOUT(0x1E69235B0);
}

void SipAckReceiveHandler::loggableName(SipAckReceiveHandler *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4EC2538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
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

void SipAckReceiveHandler::logPrefix(SipAckReceiveHandler *this, ImsOutStream *a2)
{
  (*(*this + 24))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4EC268C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAckReceiveHandler::initialize(SipAckReceiveHandler *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 26))
  {
    v2 = *(this + 25);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(this + 24);
        if (v4)
        {
          v5 = *(this + 20);
          if (v5)
          {
            v6 = *(this + 19);
            v7 = std::__shared_weak_count::lock(v5);
            if (v7)
            {
              p_shared_weak_owners = &v7->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v7);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              *(this + 98) = 1;
              if (*(v4 + 256) == 1)
              {
                atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                operator new();
              }

              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v13 = *(this + 1);
    v12 = this + 8;
    v14 = (*(v13 + 56))(v12);
    (*(*v12 + 16))(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "no session specified", 20);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    result = 0;
    *(v14 + 17) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      result = 0;
    }
  }

  else
  {
    v9 = this + 8;
    v10 = (*(*(this + 1) + 56))(this + 8);
    (*(*v9 + 16))(v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "no transaction specified", 24);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    result = 0;
    *(v10 + 17) = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4EC29E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_weak(v7);
  std::__shared_weak_count::__release_weak(v7);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  _Unwind_Resume(a1);
}

void SipAckReceiveHandler::handleTimer(uint64_t a1, void *a2)
{
  v30[34] = *MEMORY[0x1E69E9840];
  if (operator==(a2, &SipTimers::kTimer200Retransmit))
  {
    v4 = *(a1 + 208);
    v5 = *(v4 + 568);
    v6 = *(v4 + 576);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v7 = *(a1 + 208);
      v8 = *(v7 + 568);
      v9 = *(v7 + 576);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *(v8 + 128) == *(*(a1 + 400) + 128);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        if (!v6)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v10 = *(v8 + 128) == *(*(a1 + 400) + 128);
      if (!v6)
      {
LABEL_8:
        v11 = (*(*(a1 + 8) + 64))(a1 + 8);
        (*(*(a1 + 8) + 16))(a1 + 8, v11);
        v12 = *(v11 + 8);
        if (v10)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "resending previous 200 response", 31);
          *(v11 + 17) = 0;
          (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v11 + 17) = 0;
          (*(**(a1 + 208) + 120))(v30);
          ImsResult::~ImsResult(v30);
          *(a1 + 392) *= 2;
          v21 = *(a1 + 160);
          if (v21)
          {
            v22 = *(a1 + 152);
            v23 = std::__shared_weak_count::lock(v21);
            if (v23)
            {
              p_shared_weak_owners = &v23->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              v30[33] = 0;
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "trying to send 200 response", 27);
        *(v11 + 17) = 0;
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        v19 = *(a1 + 208);
        v20 = *(a1 + 400);
        std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
      }
    }

    else
    {
      v10 = 0;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_8;
  }

  if (operator==(a2, &SipTimers::kTimerAckReceiveTimeout))
  {
    v13 = *(a1 + 200);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = *(a1 + 192);
        if (v15)
        {
          if (((*(*v15 + 264))(*(a1 + 192)) & 1) == 0)
          {
            v17 = *(a1 + 8);
            v16 = a1 + 8;
            v18 = (*(v17 + 32))(v16);
            (*(*v16 + 16))(v16, v18);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "no ACK received by timeout.  Terminating session.", 49);
            *(v18 + 17) = 0;
            (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v18 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&__p, "NoAckReceived");
            SipSessionInterface::terminationReason(v15);
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v26 = *(a1 + 8);
    v25 = a1 + 8;
    v27 = (*(v26 + 56))(v25);
    (*(*v25 + 16))(v25, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "No session to handle AckReceiveTimeout", 38);
    *(v27 + 17) = 0;
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v27 + 17) = 0;
    if (v14)
    {
LABEL_26:
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4EC3038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = *(v28 - 232);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason((v28 - 224));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t SipAckReceiveHandler::handleAck(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "received ACK, terminating transaction", 37);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  result = v1[25];
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

uint64_t ims::SharedLoggable<SipAckReceiveHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipAckReceiveHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipAckReceiveHandler::initialize(void)::$_0,std::allocator<SipAckReceiveHandler::initialize(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED7AA8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAckReceiveHandler::initialize(void)::$_0,std::allocator<SipAckReceiveHandler::initialize(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED7AA8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipAckReceiveHandler::initialize(void)::$_0,std::allocator<SipAckReceiveHandler::initialize(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED7AA8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipAckReceiveHandler::initialize(void)::$_0,std::allocator<SipAckReceiveHandler::initialize(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipAckReceiveHandler::initialize(void)::$_0,std::allocator<SipAckReceiveHandler::initialize(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipAckReceiveHandler::initialize(void)::$_0,std::allocator<SipAckReceiveHandler::initialize(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 32))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipAckReceiveHandler::initialize(void)::$_0,std::allocator<SipAckReceiveHandler::initialize(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipAckReceiveHandler::handleTimer(std::string const&)::$_0,std::allocator<SipAckReceiveHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED7B28;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAckReceiveHandler::handleTimer(std::string const&)::$_0,std::allocator<SipAckReceiveHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED7B28;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipAckReceiveHandler::handleTimer(std::string const&)::$_0,std::allocator<SipAckReceiveHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED7B28;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipAckReceiveHandler::handleTimer(std::string const&)::$_0,std::allocator<SipAckReceiveHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipAckReceiveHandler::handleTimer(std::string const&)::$_0,std::allocator<SipAckReceiveHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipAckReceiveHandler::handleTimer(std::string const&)::$_0,std::allocator<SipAckReceiveHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 32))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipAckReceiveHandler::handleTimer(std::string const&)::$_0,std::allocator<SipAckReceiveHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *SipListenSocketMultiplexer::SipListenSocketMultiplexer(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipSocketMultiplexer<ImsListenSocketInterfaceDelegate>::SipSocketMultiplexer(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_1F5ED7BA8;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void *SipSocketMultiplexer<ImsListenSocketInterfaceDelegate>::SipSocketMultiplexer(void *a1, uint64_t *a2)
{
  a1[2] = 0;
  *a1 = &unk_1F5ED7C18;
  a1[1] = a1 + 2;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[5];
    a1[4] = v3;
    a1[5] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    a1[4] = v3;
    a1[5] = 0;
  }

  return a1;
}

void SipListenSocketMultiplexer::~SipListenSocketMultiplexer(SipListenSocketMultiplexer *this)
{
  *this = &unk_1F5ED7BA8;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 72))(v2);
    v3 = *(this + 7);
    *(this + 6) = 0;
    *(this + 7) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_1F5ED7C18;
  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(*(this + 2));
}

{
  SipListenSocketMultiplexer::~SipListenSocketMultiplexer(this);

  JUMPOUT(0x1E69235B0);
}

void SipListenSocketMultiplexer::handleIncomingConnection(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  (*(**a2 + 104))(&v14);
  SipSocketMultiplexer<ImsListenSocketInterfaceDelegate>::delegateForRemoteAddress(a1, &v14, &__p);
  if (v11)
  {
    v4 = std::__shared_weak_count::lock(v11);
    if (v4)
    {
      v5 = __p;
    }

    else
    {
      v5 = 0;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v5)
  {
    v6 = a2[1];
    v12 = *a2;
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 16))(v5, &v12);
    v7 = v13;
    if (v13)
    {
LABEL_14:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    ims::getStaticLoggerFor("transport", &__p);
    v9 = v11;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 104))(&v14);
      IpAddress::logStr(v14);
    }

    v7 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4EC3C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void *SipSocketMultiplexer<ImsListenSocketInterfaceDelegate>::delegateForRemoteAddress@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (result[3])
  {
    v4 = *a2;
    IpAddress::asString();
  }

  v5 = result[5];
  *a3 = result[4];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1E4EC3D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *ImsPrefsSection::ImsPrefsSection(std::string *a1, __int128 *a2, __int128 *a3)
{
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[0] = &a1->__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[0] = &a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    a1[3].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[3].__r_.__value_.__l.__data_ = v6;
  }

  a1[4].__r_.__value_.__r.__words[0] = &unk_1F5EBED08;
  a1[4].__r_.__value_.__l.__size_ = 0;
  return a1;
}

void sub_1E4EC3E08(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  std::__tree<std::string>::destroy(v2, *(v1 + 32));
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void ImsPrefsSection::~ImsPrefsSection(ImsPrefsSection *this)
{
  ims::CFType::~CFType((this + 96));
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::__tree<std::string>::destroy(this + 24, *(this + 4));
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(this, *(this + 1));
}

void ImsPrefsSection::addSubSection(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  v4 = *(a1 + 71);
  if (v4 < 0)
  {
    if (*(a1 + 56))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 71))
  {
LABEL_3:
    if (v4 >= 0)
    {
      v5 = *(a1 + 71);
    }

    else
    {
      v5 = *(a1 + 56);
    }

    memset(&v15, 0, sizeof(v15));
    v6 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v5 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v15.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(a1 + 71) >= 0)
      {
        v7 = (a1 + 48);
      }

      else
      {
        v7 = *(a1 + 48);
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 47;
    v8 = *(a1 + 95);
    if (v8 >= 0)
    {
      v9 = (a1 + 72);
    }

    else
    {
      v9 = *(a1 + 72);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 95);
    }

    else
    {
      v10 = *(a1 + 80);
    }

    v11 = std::string::append(&v15, v9, v10);
    v12 = v11->__r_.__value_.__r.__words[0];
    v16.__r_.__value_.__r.__words[0] = v11->__r_.__value_.__l.__size_;
    *(v16.__r_.__value_.__r.__words + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v16.__r_.__value_.__r.__words + 7);
    __p.__r_.__value_.__r.__words[0] = v12;
    __p.__r_.__value_.__l.__size_ = v16.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__s + 23) = v13;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

LABEL_23:
    *a2 = 0;
    a2[1] = 0;
    operator new();
  }

  std::string::operator=(&__p, (a1 + 72));
  goto LABEL_23;
}

void sub_1E4EC4124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v30);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsPrefsSection::getOrCreatePrefSection@<X0>(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 8 == result)
  {
    if (a3)
    {
      ImsPrefsSection::addSubSection(a1, &v11);
    }
  }

  else
  {
    *&v11 = a2;
    result = std::__tree<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ImsPrefsSection>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
    v10 = *(result + 56);
    v9 = *(result + 64);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *a4 = v10;
    a4[1] = v9;
  }

  return result;
}

uint64_t ImsPrefsSection::isSection(__int128 **a1, void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v4)
  {
    v7 = v4;
    v8 = *a1;
    if (*a1 == v4)
    {
      return 0;
    }

    while (1)
    {
      v14 = 0;
      *__p = 0u;
      v13 = 0u;
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, v8 + 2);
      isSection = ImsPrefsSection::isSection(*(&v13 + 1), a2);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (isSection)
      {
        break;
      }

      v9 = *(v8 + 1);
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
          v10 = *(v8 + 2);
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
      if (v10 == v7)
      {
        return isSection;
      }
    }
  }

  return 1;
}

void ImsPrefsSection::addBoolKey(uint64_t a1, char *a2, int a3)
{
  v6 = 0;
  key = 0;
  ims::CFString::CFString(&v6, a2);
  v5 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  ims::CFMutableDictionary::setValue((a1 + 96), key, *v5);
  ims::CFType::~CFType(&v6);
}

void ImsPrefsSection::addIntKey(uint64_t a1, char *a2, unsigned int a3)
{
  v5 = 0;
  v6 = 0;
  ims::CFString::CFString(&v5, a2);
  ims::CFMutableDictionary::setUintValue((a1 + 96), v6, a3);
  ims::CFType::~CFType(&v5);
}

void ImsPrefsSection::addStringKey(uint64_t a1, char *a2, char *a3)
{
  v5 = 0;
  v6 = 0;
  ims::CFString::CFString(&v5, a2);
  ims::CFMutableDictionary::setStringValue((a1 + 96), v6, a3);
  ims::CFType::~CFType(&v5);
}

void ImsPrefsSection::addDictKey(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = 0;
  key = 0;
  ims::CFString::CFString(&v5, a2);
  ims::CFMutableDictionary::setValue((a1 + 96), key, *(a3 + 8));
  ims::CFType::~CFType(&v5);
}

void ImsPrefsSection::addArrayKey(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = 0;
  key = 0;
  ims::CFString::CFString(&v5, a2);
  ims::CFMutableDictionary::setValue((a1 + 96), key, *(a3 + 8));
  ims::CFType::~CFType(&v5);
}

void ImsPrefsSection::addEnumKey(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = 0;
  key = 0;
  ims::CFString::CFString(&v5, a2);
  ims::CFMutableDictionary::setValue((a1 + 96), key, *(a3 + 8));
  ims::CFType::~CFType(&v5);
}

uint64_t ImsPrefsSection::dictValue@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F5EF3760;
  a3[1] = 0;
  return ims::CFDictionary::getValue<ims::CFDictionary>(a1 + 96, a2, a3);
}

uint64_t ImsPrefsSection::arrayValue@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F5EC8AD0;
  a3[1] = 0;
  return ims::CFDictionary::getValue<ims::CFArray>(a1 + 96, a2, a3);
}

void ImsPrefsSection::enumAsString(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v5[0] = &unk_1F5EC8B28;
  v5[1] = 0;
  ims::CFDictionary::getValue<ims::CFEnum>(a1 + 96, a2, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  ims::CFEnum::valueAsString(v5, a3, v4);
  ImsResult::~ImsResult(v4);
  ims::CFType::~CFType(v5);
}

void sub_1E4EC46F4(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  ims::CFType::~CFType((v2 - 32));
  _Unwind_Resume(a1);
}

void ImsPrefsSection::logMergedPrefs(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ImsOutStream *a5)
{
  v5 = a5;
  ImsPrefsUtil::logMergedPrefsSectionDict((a1 + 12), a1 + 3, a3, a4, a2, a5);
  v12 = *a1;
  v10 = (a1 + 1);
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](v21, v11 + 2);
      std::string::basic_string[abi:ne200100](&__b, v5, 32);
      LoggableString::LoggableString(&__p, &__b);
      (*(*a2 + 40))(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (*(*&v21[24] + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(*&v21[24] + 72), *(*&v21[24] + 80));
      }

      else
      {
        __p = *(*&v21[24] + 72);
      }

      (*(*a2 + 32))(a2, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), ": {", 3);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v13 = *&v21[24];
      v14 = *(a3 + 8);
      v18[0] = &unk_1F5EF3658;
      v18[1] = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      v18[0] = &unk_1F5EBED08;
      ImsPrefsSection::logMergedPrefs(v13, a2, v18, a4, (v5 + 4));
      ims::CFType::~CFType(v18);
      std::string::basic_string[abi:ne200100](&__b, v5, 32);
      LoggableString::LoggableString(&__p, &__b);
      (*(*a2 + 40))(a2, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "}", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if ((v21[23] & 0x80000000) != 0)
      {
        operator delete(*v21);
      }

      v15 = *(v11 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v11 + 2);
          v17 = *v16 == v11;
          v11 = v16;
        }

        while (!v17);
      }

      v11 = v16;
    }

    while (v16 != v10);
  }
}

uint64_t SipMD5DigestAlgorithm::computeDigest(uint64_t a1, const void *a2, CC_LONG a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  *md = 0;
  v21 = 0;
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, a2, a3);
  CC_MD5_Final(md, &c);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  LOBYTE(v10) = 48;
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v12, &v10);
  v7 = 0;
  *(&v13[-1] + *(v12 - 24) + 8) = *(&v13[-1] + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  do
  {
    *(v13 + *(v12 - 24) + 8) = 2;
    MEMORY[0x1E6923340](&v12, md[v7++]);
  }

  while (v7 != 16);
  std::ostringstream::str[abi:ne200100](&v12, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  *(a4 + 16) = v11;
  *&v12 = *MEMORY[0x1E69E54E8];
  *(&v13[-1] + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v12 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v12 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v17);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E4EC4D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t SipMD5DigestAlgorithm::computeHmac(int a1, const void *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  v11 = *a6;
  v13 = *(a6 + 8) - v11;
  if (v13 > 0xF)
  {
    if (v13 != 16)
    {
      *(a6 + 8) = v11 + 16;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a6, 16 - v13);
    v11 = *a6;
  }

  CCHmac(1u, a2, a3, a4, a5, v11);
  return 1;
}

uint64_t SipSHA1DigestAlgorithm::computeDigest(uint64_t a1, const void *a2, CC_LONG a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  *md = 0;
  v21 = 0;
  v22 = 0;
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, a2, a3);
  CC_SHA1_Final(md, &c);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  LOBYTE(v10) = 48;
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v12, &v10);
  v7 = 0;
  *(&v13[-1] + *(v12 - 24) + 8) = *(&v13[-1] + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  do
  {
    *(v13 + *(v12 - 24) + 8) = 2;
    MEMORY[0x1E6923340](&v12, md[v7++]);
  }

  while (v7 != 20);
  std::ostringstream::str[abi:ne200100](&v12, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  *(a4 + 16) = v11;
  *&v12 = *MEMORY[0x1E69E54E8];
  *(&v13[-1] + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v12 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v12 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v17);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E4EC50B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t SipSHA1DigestAlgorithm::computeHmac(int a1, const void *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  v11 = *a6;
  v13 = *(a6 + 8) - v11;
  if (v13 > 0x13)
  {
    if (v13 != 20)
    {
      *(a6 + 8) = v11 + 20;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a6, 20 - v13);
    v11 = *a6;
  }

  CCHmac(0, a2, a3, a4, a5, v11);
  return 1;
}

uint64_t SipSHA256DigestAlgorithm::computeDigest(uint64_t a1, const void *a2, CC_LONG a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  *md = 0u;
  v21 = 0u;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, a2, a3);
  CC_SHA256_Final(md, &c);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  LOBYTE(v10) = 48;
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v12, &v10);
  v7 = 0;
  *(&v13[-1] + *(v12 - 24) + 8) = *(&v13[-1] + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  do
  {
    *(v13 + *(v12 - 24) + 8) = 2;
    MEMORY[0x1E6923340](&v12, md[v7++]);
  }

  while (v7 != 32);
  std::ostringstream::str[abi:ne200100](&v12, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  *(a4 + 16) = v11;
  *&v12 = *MEMORY[0x1E69E54E8];
  *(&v13[-1] + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v12 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v12 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v17);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E4EC5404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t SipSHA256DigestAlgorithm::computeHmac(int a1, const void *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  v11 = *a6;
  v13 = *(a6 + 8) - v11;
  if (v13 > 0x1F)
  {
    if (v13 != 32)
    {
      *(a6 + 8) = v11 + 32;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a6, 32 - v13);
    v11 = *a6;
  }

  CCHmac(2u, a2, a3, a4, a5, v11);
  return 1;
}

void SipDigestAlgorithmManager::SipDigestAlgorithmManager(SipDigestAlgorithmManager *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  operator new();
}

void SipDigestAlgorithmManager::~SipDigestAlgorithmManager(SipDigestAlgorithmManager *this)
{
  for (i = *(this + 2); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this);
}

const void **std::__hash_table<std::__hash_value_type<std::string,SipDigestAlgorithm *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipDigestAlgorithm *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipDigestAlgorithm *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipDigestAlgorithm *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

uint64_t SipHost::SipHost(uint64_t a1, std::string *a2)
{
  *a1 = &unk_1F5ED7D40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  SipHost::fromString(a1, a2);
  *(a1 + 32) = 0;
  return a1;
}

void sub_1E4EC5B18(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipHost::fromString(uint64_t a1, std::string *a2)
{
  SipHost::clear(a1);
  v13 = 0;
  v14 = 0;
  IpAddress::createAddress(a2, &v13);
  v4 = v13;
  if (v13)
  {
    v5 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(a1 + 32) = (*(*v4 + 56))(v4);
  }

  else
  {
    v7 = std::string::find(a2, 58, 0);
    if (v7 == -1)
    {
      std::string::operator=((a1 + 8), a2);
    }

    else
    {
      v8 = v7;
      std::string::basic_string(&__p, a2, 0, v7, &v15);
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *(a1 + 8) = __p;
      std::string::basic_string(&__p, a2, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v15);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *(a1 + 32) = strtol(p_p, 0, 10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v10 = *(a1 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return 1;
}

void sub_1E4EC5CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipHost::SipHost(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5ED7D40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4)
  {
    (*(*v4 + 32))(&v8);
    v5 = v8;
  }

  else
  {
    v5 = 0uLL;
  }

  v8 = 0uLL;
  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }
  }

  return a1;
}

{
  *(a1 + 8) = 0;
  *a1 = &unk_1F5ED7D40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  v3 = (a1 + 40);
  *(a1 + 48) = 0;
  (*(**a2 + 32))(&v7);
  v4 = v7;
  v7 = 0uLL;
  v5 = *(a1 + 48);
  *(a1 + 40) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }
  }

  *(a1 + 32) = (*(**v3 + 56))(*v3);
  return a1;
}

void sub_1E4EC5DAC(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4EC5EBC(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void SipHost::~SipHost(SipHost *this)
{
  *this = &unk_1F5ED7D40;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t SipHost::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4)
  {
    (*(*v4 + 32))(&v8);
    v5 = v8;
  }

  else
  {
    v5 = 0uLL;
  }

  v8 = 0uLL;
  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }
  }

  return a1;
}

void SipHost::clear(SipHost *this)
{
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  *(this + 16) = 0;
  v1 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void SipHost::address(SipHost *this@<X0>, void *a2@<X8>)
{
  SipHost::resolve(this, 0, v5);
  ImsResult::~ImsResult(v5);
  v4 = *(this + 6);
  *a2 = *(this + 5);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void SipHost::resolve(SipHost *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(this + 5);
  if (v5)
  {
    if ((*(*v5 + 88))(v5))
    {
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
      return;
    }

    if ((a2 & 1) == 0)
    {
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      *&v17 = &unk_1F5EBDEF8;
      *(&v17 + 1) = &_bambiDomain;
      v18 = 0x40000000;
      v10 = ImsResult::operator<<<char [19]>(&v17, "address is invalid");
      ImsResult::ImsResult(a3, v10);
      ImsResult::~ImsResult(&v17);
      return;
    }
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 32) = 0;
  v7 = this + 8;
  if (*(this + 31) < 0)
  {
    if (!*(this + 2))
    {
      goto LABEL_21;
    }

    v16 = 0;
    v7 = *v7;
  }

  else
  {
    if (!*(this + 31))
    {
      goto LABEL_21;
    }

    v16 = 0;
  }

  v8 = getaddrinfo(v7, 0, 0, &v16);
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    *&v17 = &unk_1F5EBDEF8;
    *(&v17 + 1) = &_bambiDomain;
    v18 = 0x40000000;
    v15 = gai_strerror(v8);
    v9 = ImsResult::operator<<<char const*>(&v17, &v15);
    ImsResult::operator=(a3, v9);
    ImsResult::~ImsResult(&v17);
LABEL_12:
    if (v16)
    {
      freeaddrinfo(v16);
    }

    goto LABEL_21;
  }

  v11 = v16;
  if (v16)
  {
    while (1)
    {
      v17 = 0uLL;
      IpAddress::createAddress(v11->ai_addr, &v17);
      v13 = *(&v17 + 1);
      v12 = v17;
      if (v17)
      {
        break;
      }

      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }

      v11 = v11->ai_next;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (*(&v17 + 1))
    {
      atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(this + 6);
    *(this + 5) = v12;
    *(this + 6) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      v12 = *(this + 5);
    }

    (*(*v12 + 64))(v12, *(this + 16));
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    goto LABEL_12;
  }

LABEL_21:
  if (!*(this + 5))
  {
    operator new();
  }
}

void sub_1E4EC63BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  ImsResult::~ImsResult(v11);
  _Unwind_Resume(a1);
}

uint64_t SipHost::setAddress(uint64_t a1, void *a2)
{
  (*(**a2 + 32))(&v7);
  v4 = v7;
  v7 = 0uLL;
  v5 = *(a1 + 48);
  *(a1 + 40) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }
  }

  result = (*(**a2 + 56))(*a2);
  *(a1 + 32) = result;
  return result;
}

void SipHost::toString(SipHost *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4EC6590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipHost::ipAddress(SipHost *this@<X0>, void *a2@<X8>)
{
  SipHost::resolve(this, 0, v5);
  ImsResult::~ImsResult(v5);
  v4 = *(this + 6);
  *a2 = *(this + 5);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

ImsOutStream *SipHost::toStream(SipHost *this, ImsOutStream *a2, int a3)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (*(this + 2))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 31))
  {
LABEL_3:
    LoggableString::LoggableString(&__p, (this + 8));
    (*(*a2 + 40))(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(this + 16) && a3)
    {
      v6 = *(a2 + 1);
      __p.__r_.__value_.__s.__data_[0] = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &__p, 1);
      *(a2 + 17) = 0;
      MEMORY[0x1E6923390](*(a2 + 1), *(this + 16));
      *(a2 + 17) = 0;
    }

    return a2;
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = *v7 + 144;
    if (a3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    (*(*v7 + 144))(v7, a2, v9);
  }

  return a2;
}

void sub_1E4EC6758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipHost::equals(SipHost *this, const SipHost *a2, int a3)
{
  v6 = *(this + 31);
  if (v6 < 0)
  {
    if (*(this + 2))
    {
LABEL_3:
      if (v6 >= 0)
      {
        v7 = *(this + 31);
      }

      else
      {
        v7 = *(this + 2);
      }

      v8 = *(a2 + 31);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a2 + 2);
      }

      if (v7 == v8)
      {
        if (v6 >= 0)
        {
          v10 = this + 8;
        }

        else
        {
          v10 = *(this + 1);
        }

        if (v9 >= 0)
        {
          v11 = a2 + 8;
        }

        else
        {
          v11 = *(a2 + 1);
        }

        v13 = memcmp(v10, v11, v7) == 0;
        result = v13;
        v13 = !v13 || a3 == 0;
        if (!v13)
        {
          return *(this + 16) == *(a2 + 16);
        }

        return result;
      }

      return 0;
    }
  }

  else if (*(this + 31))
  {
    goto LABEL_3;
  }

  result = *(this + 5);
  if (!result)
  {
    return result;
  }

  if (!*(a2 + 5))
  {
    return 0;
  }

  v14 = *(*result + 104);

  return v14();
}

uint64_t SipHost::equalsWithDefaultPort(SipHost *this, const SipHost *a2, unsigned __int16 a3)
{
  v6 = *(this + 31);
  if (v6 < 0)
  {
    if (*(this + 2))
    {
LABEL_3:
      if (v6 >= 0)
      {
        v7 = *(this + 31);
      }

      else
      {
        v7 = *(this + 2);
      }

      v8 = *(a2 + 31);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a2 + 2);
      }

      if (v7 == v8)
      {
        v10 = v6 >= 0 ? (this + 8) : *(this + 1);
        v11 = v9 >= 0 ? (a2 + 8) : *(a2 + 1);
        if (!memcmp(v10, v11, v7))
        {
          v12 = *(this + 16);
          v13 = *(a2 + 16);
          if (v12 == v13 || v12 == a3 && !*(a2 + 16))
          {
            return 1;
          }

          return !*(this + 16) && v13 == a3;
        }
      }

      return 0;
    }
  }

  else if (*(this + 31))
  {
    goto LABEL_3;
  }

  result = *(this + 5);
  if (!result)
  {
    return result;
  }

  if (!*(a2 + 5))
  {
    return 0;
  }

  v15 = a2 + 40;

  return IpAddress::equalsWithDefaultPort(result, v15, a3);
}

void SipHost::logStr(SipHost *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4EC6A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<Ip4Address>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED7D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipMultiPartBody::SipMultiPartBody(SipMultiPartBody *this)
{
  *this = &unk_1F5ED7DC0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  ImsRandomNumberGenerator<unsigned char>::ImsRandomNumberGenerator(this + 7);
}

void sub_1E4EC6BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void SipMultiPartBody::~SipMultiPartBody(SipMultiPartBody *this)
{
  *this = &unk_1F5ED7DC0;
  v2 = *(this + 1);
  for (i = *(this + 2); v2 != i; ++v2)
  {
    if (*v2)
    {
      SipBodyPart::~SipBodyPart(*v2);
      MEMORY[0x1E69235B0]();
    }
  }

  ImsRandomNumberGenerator<unsigned char>::~ImsRandomNumberGenerator(this + 7);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  SipMultiPartBody::~SipMultiPartBody(this);

  JUMPOUT(0x1E69235B0);
}

BOOL SipMultiPartBody::initWithContentTypeHeader(SipMultiPartBody *this, const SipContentTypeHeader *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "boundary");
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 72, __p);
  if ((a2 + 80) == v4)
  {
    v5 = &ims::kEmptyString;
  }

  else
  {
    v5 = (v4 + 56);
  }

  std::string::operator=((this + 32), v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  ims::removeQuotes(this + 32);
  v6 = *(this + 55);
  if (v6 < 0)
  {
    v6 = *(this + 5);
  }

  return v6 != 0;
}

void sub_1E4EC6D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipMultiPartBody::fillContentTypeHeader(SipMultiPartBody *this, SipContentTypeHeader *a2)
{
  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (*(this + 5))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 55))
  {
    goto LABEL_3;
  }

  SipMultiPartBody::generateBoundary(this);
LABEL_3:
  v4 = (*(*this + 40))(this);
  std::string::operator=((a2 + 104), v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "boundary");
  v8 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 72, __p);
  std::string::operator=((v5 + 56), (this + 32));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4EC6E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipMultiPartBody::generateBoundary(SipMultiPartBody *this)
{
  v16 = 0uLL;
  v17 = 0;
  ImsRandomStringGenerator::randomString((this + 56), 20, v10);
  v16 = *v10;
  v17 = *&v10[16];
  v2 = *(this + 1);
  if (v2 != *(this + 2))
  {
    v3 = *v2;
    memset(v10, 0, 24);
    SipBodyPart::encodeToString();
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  v13 = 0u;
  *v11 = 0u;
  memset(v10, 0, sizeof(v10));
  std::ostringstream::basic_ostringstream[abi:ne200100](v10);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "MIME_boundary_", 14);
  if (v17 >= 0)
  {
    v5 = &v16;
  }

  else
  {
    v5 = v16;
  }

  if (v17 >= 0)
  {
    v6 = HIBYTE(v17);
  }

  else
  {
    v6 = *(&v16 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::ostringstream::str[abi:ne200100](v10, &v8);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  *(this + 2) = v8;
  *(this + 6) = v9;
  *v10 = *MEMORY[0x1E69E54E8];
  *&v10[*(*v10 - 24)] = *(MEMORY[0x1E69E54E8] + 24);
  *&v10[8] = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  *&v10[8] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v10[16]);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v14);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }
}

void sub_1E4EC71BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::ostringstream::~ostringstream(&__p, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t SipMultiPartBody::contentLength(SipMultiPartBody *this, uint64_t a2)
{
  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (*(this + 5))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 55))
  {
    goto LABEL_3;
  }

  SipMultiPartBody::generateBoundary(this);
LABEL_3:
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v10 = 8;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(this + 55);
      if (v7 < 0)
      {
        v7 = *(this + 5);
      }

      v8 = *v4++;
      v9 = v6 + v7 + SipBodyPart::contentLength(v8, a2);
      v6 = v9 + 6;
    }

    while (v4 != v5);
    v10 = v9 + 14;
  }

  v11 = *(this + 55);
  if (v11 < 0)
  {
    v11 = *(this + 5);
  }

  return v11 + v10;
}

void *SipMultiPartBody::encode(SipMultiPartBody *this, ImsOutStream *a2)
{
  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (*(this + 5))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 55))
  {
    goto LABEL_3;
  }

  SipMultiPartBody::generateBoundary(this);
LABEL_3:
  v4 = *(this + 1);
  v5 = *(this + 2);
  while (v4 != v5)
  {
    v6 = *v4++;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n--", 4);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, this + 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
    SipBodyPart::encode(v6, a2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n--", 4);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 32);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "--\r\n", 4);
  *(a2 + 17) = 0;
  return result;
}

uint64_t SipMultiPartBody::decode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  memset(&v12, 0, sizeof(v12));
  if (a3)
  {
    v6 = a3;
    v8 = a2 + 4;
    while (1)
    {
      v9 = std::istream::get();
      std::string::push_back(&v12, v9);
      if (*(v8 + *(*a2 - 24)))
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_5:
    v10 = (*(*a1 + 88))(a1, &v12, a4);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1E4EC74EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipMultiPartBody::decode(uint64_t a1, const std::string *a2)
{
  if ((*(a1 + 55) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 40))
    {
LABEL_3:
      v41 = 0;
      v42 = 0;
      v43 = 0;
      std::operator+<char>();
      v34 = 0;
      v35 = 0;
      v36 = 0;
      std::operator+<char>();
      v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v3 < 0)
      {
        v4 = a2->__r_.__value_.__r.__words[0];
        a2->__r_.__value_.__l.__size_;
      }

      else
      {
        v4 = a2;
      }

      v8 = memcmp(v4, &v41, 0) == 0;
      v9 = !v8;
      v23 = v9;
      if (!v8 && v3 < 0)
      {
        v10 = a2->__r_.__value_.__r.__words[0];
        size = a2->__r_.__value_.__l.__size_;
      }

      if (v23)
      {
        v12 = HIBYTE(v36);
        if (v36 < 0)
        {
          v12 = v35;
        }

        v13 = v12;
      }

      else
      {
        v13 = SHIBYTE(v43);
        if ((SHIBYTE(v43) & 0x8000000000000000) != 0)
        {
          v13 = v42;
        }
      }

      v14 = std::string::compare(a2, v13, 2uLL, "--");
      v7 = v14 == 0;
      if (!v14)
      {
        goto LABEL_40;
      }

      if (!std::string::compare(a2, v13, 2uLL, "\r\n"))
      {
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = a2->__r_.__value_.__r.__words[0];
          v16 = a2->__r_.__value_.__l.__size_;
        }

        if (v16 >= v13 + 2 && v13 != -3)
        {
          memset(&v33, 0, sizeof(v33));
          std::string::basic_string(&v33, a2, v13 + 2, 0, &v24);
          operator new();
        }

        v17 = std::string::basic_string[abi:ne200100]<0>(&v33, "sip.decode");
        v25[0] = 0;
        v28 = 0;
        v18 = ims::error(v17, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SipMultiPartBody: missing boundary", 34);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v28 != 1 || (v27 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v19 = v26;
      }

      else
      {
        v21 = std::string::basic_string[abi:ne200100]<0>(&v33, "sip.decode");
        v29[0] = 0;
        v32 = 0;
        v22 = ims::error(v21, v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "SipMultiPartBody: boundary must be followed by CRLF", 51);
        *(v22 + 17) = 0;
        (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v22 + 17) = 0;
        if (v32 != 1 || (v31 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v19 = v30;
      }

      operator delete(v19);
LABEL_37:
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v7 = 0;
LABEL_40:
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v34);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v41);
      }

      return v7;
    }
  }

  else if (*(a1 + 55))
  {
    goto LABEL_3;
  }

  v5 = std::string::basic_string[abi:ne200100]<0>(&v41, "sip.decode");
  v37[0] = 0;
  v40 = 0;
  v6 = ims::error(v5, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipMultiPartBody: no boundary specified in Content-Type header", 62);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v41);
  }

  return 0;
}

void sub_1E4EC7C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (*(v58 - 169) < 0)
  {
    operator delete(*(v58 - 192));
  }

  if (*(v58 - 89) < 0)
  {
    operator delete(*(v58 - 112));
  }

  _Unwind_Resume(exception_object);
}

void SipMultiPartBody::encodeContentOnlyToString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4EC7E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SipBodyPart *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<SipBodyPart *>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v10);
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

uint64_t SipMultiPartBody::partWithContentType(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = *v2;
    v6 = *(*v2 + 24);
    if (v6)
    {
      v7 = (*(*v6 + 40))(v6);
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = *(v7 + 23);
      }

      else
      {
        v9 = v7[1];
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = a2[1];
      }

      if (v9 == v10)
      {
        if (v8 < 0)
        {
          v7 = *v7;
        }

        v12 = *a2;
        v13 = v11 >= 0 ? a2 : *a2;
        if (!memcmp(v7, v13, v9))
        {
          break;
        }
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return v5;
}

void sub_1E4EC81E0(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void SipAcceptLanguageHeader::~SipAcceptLanguageHeader(char **this)
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

void sub_1E4EC8550(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void XcapSession::setup(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v14, kXcapLoggingFacility);
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ": ", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Setting up XcapSession: ", 24);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), a1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  a1[4] = ++XcapSession::_generateSessionId(void)const::kSessionId;
  v4 = a1[54];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      v5 = a1[53];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      (*(*v5 + 48))(v5);
      v9 = a1[4];
      XcapNafServerInfo::create();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4EC886C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v26);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t XcapSession::XcapSession(uint64_t a1, void *a2, XcapConfig *a3, __int128 *a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5ED7EE8;
  *(a1 + 8) = &unk_1F5ED7F68;
  XcapConfig::XcapConfig((a1 + 40), a3);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 400), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 416) = *(a4 + 2);
    *(a1 + 400) = v7;
  }

  v8 = a2[1];
  *(a1 + 424) = *a2;
  *(a1 + 432) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 448) = 0u;
  xcap::getQueue((a1 + 496));
  std::string::basic_string[abi:ne200100]<0>(v15, kXcapLoggingFacility);
  v11[0] = 0;
  v14 = 0;
  v9 = ims::debug(v15, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": ", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Creating XcapSession: ", 22);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923310](*(v9 + 8), a1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return a1;
}

void sub_1E4EC8AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  XcapConfig::~XcapConfig((v24 + 40));
  v26 = *(v24 + 24);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(a1);
}

void XcapSession::~XcapSession(XcapSession *this)
{
  *this = &unk_1F5ED7EE8;
  *(this + 1) = &unk_1F5ED7F68;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v14, kXcapLoggingFacility);
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ": ", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Deleting XcapSession: ", 22);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), this);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Block_release(*(this + 55));
  v4 = *(this + 62);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 61);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 59);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 57);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 54);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  XcapConfig::~XcapConfig(this + 5);
  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  XcapSession::~XcapSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapSession::~XcapSession(XcapSession *this)
{
  XcapSession::~XcapSession((this - 8));
}

{
  XcapSession::~XcapSession((this - 8));

  JUMPOUT(0x1E69235B0);
}

void XcapSession::_sendRequest(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v40 = *MEMORY[0x1E69E9840];
  *(a1 + 440) = _Block_copy(aBlock);
  v9 = *(a1 + 448);
  v10 = *(a1 + 172);
  (*(*v9 + 80))(&__p, v9);
  v11 = (*(**(a1 + 448) + 88))(*(a1 + 448));
  v12 = (*(*v9 + 72))(v9, v10, &__p, v11);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if ((v12 & 1) == 0)
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    __p = &unk_1F5EBDEF8;
    v31 = &_bambiDomain;
    v32 = 0x40000000;
    v34 = 0;
    v35 = 0;
    XcapSession::operationFailure(a1, &__p);
    ImsResult::~ImsResult(&__p);
    goto LABEL_33;
  }

  if (a2)
  {
    v13 = *(a4 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a4 + 8);
    }

    if (!v13)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
      v26[0] = 0;
      v29 = 0;
      v14 = ims::error(&__p, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ": ", 2);
      *(v14 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "PUT request doesn't have a body. Failing request", 48);
      *(v14 + 17) = 0;
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v33 < 0)
      {
        operator delete(__p);
      }

      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      __p = &unk_1F5EBDEF8;
      v31 = &_bambiDomain;
      v32 = 0x40000000;
      v34 = 0;
      v35 = 0;
      XcapSession::operationFailure(a1, &__p);
      ImsResult::~ImsResult(&__p);
    }

    v15 = *(a1 + 448);
    XcapUrlHelper::createUrl((a3 + 16), (a3 + 40), &__p);
    v16 = (*(*v15 + 128))(v15, &__p, a4);
    v17 = v16;
    if (v33 < 0)
    {
      operator delete(__p);
      if (v17)
      {
        goto LABEL_26;
      }
    }

    else if (v16)
    {
      goto LABEL_26;
    }

    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    __p = &unk_1F5EBDEF8;
    v31 = &_bambiDomain;
    v32 = 0x40000000;
    v34 = 0;
    v35 = 0;
    XcapSession::operationFailure(a1, &__p);
LABEL_25:
    ImsResult::~ImsResult(&__p);
    goto LABEL_26;
  }

  v18 = *(a1 + 448);
  XcapUrlHelper::createUrl((a3 + 16), (a3 + 40), &__p);
  v19 = (*(*v18 + 120))(v18, &__p);
  v20 = v19;
  if (v33 < 0)
  {
    operator delete(__p);
    if (v20)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if ((v19 & 1) == 0)
  {
LABEL_22:
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    __p = &unk_1F5EBDEF8;
    v31 = &_bambiDomain;
    v32 = 0x40000000;
    v34 = 0;
    v35 = 0;
    XcapSession::operationFailure(a1, &__p);
    goto LABEL_25;
  }

LABEL_26:
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (*(a1 + 320))
    {
      v23 = *(a1 + 480);
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_31;
    }

    std::__shared_weak_count::__release_weak(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  else if (*(a1 + 320))
  {
    v24 = *(a1 + 480);
LABEL_31:
    v39 = 0;
    operator new();
  }

LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
}

void XcapSession::operationFailure(XcapSession *this, const ImsResult *a2)
{
  (*(*(this + 55) + 16))();
  SipTimerContainer::cancelAllTimers(*(this + 60));
  v3 = *(this + 54);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 53);
      if (v6)
      {
        (*(*v6 + 56))(v6, this);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void XcapSession::deleteDocument()
{
  v0 = std::string::basic_string[abi:ne200100]<0>(&v6, kXcapLoggingFacility);
  v2[0] = 0;
  v5 = 0;
  v1 = ims::warn(v0, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v1 + 8), ": ", 2);
  *(v1 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v1 + 8), "Not implemented", 15);
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

void sub_1E4EC952C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void XcapSession::setDigestCredentials(XcapSession *this, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  {
    v6 = *(this + 58);
LABEL_5:
    v8 = *(*v6 + 104);

    v8();
    return;
  }

  v7 = *v4;
  {
    v6 = *(this + 56);
    goto LABEL_5;
  }

  std::string::basic_string[abi:ne200100]<0>(v10, kXcapLoggingFacility);
  v18[0] = 0;
  v21 = 0;
  v9 = ims::error(v10, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": ", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Non Digest/AKA authentication response is currently unsupported. Terminating session", 84);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v10[0]);
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10[0] = &unk_1F5EBDEF8;
  v10[1] = &_bambiDomain;
  v11 = 0x40000000;
  v13 = 0;
  v14 = 0;
  XcapSession::operationFailure(this, v10);
  ImsResult::~ImsResult(v10);
}

void XcapSession::setGbaNafCredentials(void *a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
    v18[0] = 0;
    v21 = 0;
    v4 = ims::error(__p, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": ", 2);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Failed to fetch Ks_Ext_Naf", 26);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = a1[55];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v11 = 0x40000000;
    v13 = 0;
    v14 = 0;
    (*(v5 + 16))();
    ImsResult::~ImsResult(__p);
    v6 = a1[54];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = a1[53];
        if (v9)
        {
          (*(*v9 + 56))(v9, a1);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  else
  {
    v3 = a1[56];

    XcapNafServerInfo::setGbaNafCredentials(v3, a2);
  }
}

void XcapSession::handleTimer(uint64_t a1, uint64_t a2)
{
  memset(&v11, 0, sizeof(v11));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  v3 = *(a1 + 24);
  if (!v3 || (v4 = *(a1 + 16), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZN11XcapSession11handleTimerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_43;
  v8[4] = a1;
  v8[5] = v4;
  v9 = v6;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  dispatch_async(*(a1 + 496), v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v6);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EC9B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN11XcapSession11handleTimerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && *(a1 + 40))
    {
      v5 = *(a1 + 79);
      if (v5 >= 0)
      {
        v6 = *(a1 + 79);
      }

      else
      {
        v6 = *(a1 + 64);
      }

      v7 = qword_1EE2BBDE0;
      if (byte_1EE2BBDEF >= 0)
      {
        v7 = byte_1EE2BBDEF;
      }

      if (v6 == v7 && (v5 >= 0 ? (v8 = (a1 + 56)) : (v8 = *(a1 + 56)), byte_1EE2BBDEF >= 0 ? (v9 = &XcapSession::kRequestTimeoutTimerId) : (v9 = XcapSession::kRequestTimeoutTimerId), !memcmp(v8, v9, v6)))
      {
        std::string::basic_string[abi:ne200100]<0>(v13, kXcapLoggingFacility);
        v21[0] = 0;
        v24 = 0;
        v12 = ims::warn(v13, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ": ", 2);
        *(v12 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Timer fired as XCAP transaction didn't complete in ", 51);
        *(v12 + 17) = 0;
        MEMORY[0x1E6923350](*(v12 + 8), v3[80]);
        *(v12 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " seconds", 8);
        *(v12 + 17) = 0;
        (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v12 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(v22);
        }

        if (v15 < 0)
        {
          operator delete(v13[0]);
        }

        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v13[0] = &unk_1F5EBDEF8;
        v13[1] = &_bambiDomain;
        v14 = 0x40000000;
        v16 = 0;
        v17 = 0;
        XcapSession::operationFailure(v3, v13);
        ImsResult::~ImsResult(v13);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v13, kXcapLoggingFacility);
        v25[0] = 0;
        v28 = 0;
        v10 = ims::warn(v13, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ": ", 2);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Timer fired but invalid timer Id. Expected [", 44);
        *(v10 + 17) = 0;
        (*(*v10 + 32))(v10, &XcapSession::kRequestTimeoutTimerId);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "], Actual [", 11);
        *(v10 + 17) = 0;
        (*(*v10 + 32))(v10, a1 + 56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
        *(v10 + 17) = 0;
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v13[0]);
        }
      }

LABEL_29:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return;
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, kXcapLoggingFacility);
  v29[0] = 0;
  v32 = 0;
  v11 = ims::warn(v13, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), ": ", 2);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Timer [", 7);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, &XcapSession::kRequestTimeoutTimerId);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "] fired but XcapSession object already deleted: no-op.", 54);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v15 < 0)
  {
    operator delete(v13[0]);
  }

  if (v4)
  {
    goto LABEL_29;
  }
}

void sub_1E4EC9FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  ImsResult::~ImsResult(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11XcapSessionEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_1E4ECA118(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11XcapSessionEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void XcapSession::operationSuccess(uint64_t a1)
{
  v2 = *(a1 + 440);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13[0] = &unk_1F5EBDEF8;
  v13[1] = &_bambiDomain;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  (*(v2 + 16))();
  ImsResult::~ImsResult(v13);
  SipTimerContainer::cancelAllTimers(*(a1 + 480));
  if (*(a1 + 328) == 1)
  {
    if ((*(**(a1 + 448) + 96))(*(a1 + 448)))
    {
      v3 = (*(**(a1 + 448) + 112))(*(a1 + 448));
      v4 = *(a1 + 432);
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = *(a1 + 424);
          if (v3)
          {
            v8 = v7 == 0;
          }

          else
          {
            v8 = 1;
          }

          if (!v8)
          {
            (*(*v7 + 40))(v7, v3);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }
      }
    }
  }

  v9 = *(a1 + 432);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 424);
      if (v12)
      {
        (*(*v12 + 56))(v12, a1);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void XcapSession::handleNafChallenge(XcapSession *this)
{
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v2 = *(this + 58);
  v3 = *(this + 204);
  (*(*v2 + 80))(__p, v2);
  v4 = (*(**(this + 58) + 88))(*(this + 58));
  v5 = (*(*v2 + 72))(v2, v3, __p, v4);
  v6 = v5;
  if ((v13 & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
    v19[0] = 0;
    v22 = 0;
    v10 = ims::error(__p, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ": ", 2);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Failed to initialize BSF Transport", 34);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = *(this + 58);
  XcapUrlHelper::createUrl(v24, &v24[1] + 1, __p);
  v8 = (*(*v7 + 120))(v7, __p);
  v9 = v8;
  if ((v13 & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if ((v9 & 1) == 0)
  {
LABEL_14:
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v12 = 0x40000000;
    v14 = 0;
    v15 = 0;
    XcapSession::operationFailure(this, __p);
    ImsResult::~ImsResult(__p);
  }

LABEL_15:
  XcapUri::~XcapUri(&v23);
}

void sub_1E4ECA6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  ImsResult::~ImsResult(&__p);
  XcapUri::~XcapUri((v32 - 96));
  _Unwind_Resume(a1);
}

void XcapSession::handleBsfChallenge(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 432);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 424);
      if (v7)
      {
        (*(*v7 + 24))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void XcapSession::onBootstrappingProcedureSuccess(XcapBsfServerInfo **this)
{
  if (*(this + 66))
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    std::vector<unsigned char>::__append(&v108, 0x20uLL);
    Ck = XcapBsfServerInfo::fetchCk(this[58]);
    Ik = XcapBsfServerInfo::fetchIk(this[58]);
    if (!Ck || !Ik)
    {
      v17 = std::string::basic_string[abi:ne200100]<0>(v97, kXcapLoggingFacility);
      LOBYTE(v45) = 0;
      BYTE8(v50) = 0;
      v18 = ims::error(v17, &v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), ": ", 2);
      *(v18 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "GBA_ME failure. Invalid Ck/Ik", 29);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (BYTE8(v50) == 1 && SHIBYTE(v49) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v98) < 0)
      {
        operator delete(v97[0]);
      }

      v19 = 0;
      goto LABEL_61;
    }

    *v108 = *Ck;
    *(v108 + 1) = *Ik;
    v4 = std::string::basic_string[abi:ne200100]<0>(v97, kXcapLoggingFacility);
    LOBYTE(v45) = 0;
    BYTE8(v50) = 0;
    v5 = ims::debug(v4, &v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "GBA_ME: Key = ", 14);
    *(v5 + 17) = 0;
    logBytes(&v108, &v90);
    (*(*v5 + 32))(v5, &v90);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (BYTE8(v50) == 1 && SHIBYTE(v49) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v98) < 0)
    {
      operator delete(v97[0]);
    }

    v105 = 0;
    v106 = 0;
    v107 = 0;
    std::string::basic_string[abi:ne200100]<0>(&v105, "gba-me");
    if (v107 >= 0)
    {
      v6 = &v105;
    }

    else
    {
      v6 = v105;
    }

    if (v107 >= 0)
    {
      v7 = HIBYTE(v107);
    }

    else
    {
      v7 = v106;
    }

    v103 = 0;
    v104 = 0;
    v102 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&v102, v6, v6 + v7, v7);
    v101 = v103 - v102;
    v8 = std::string::basic_string[abi:ne200100]<0>(&v90, kXcapLoggingFacility);
    LOBYTE(v97[0]) = 0;
    v100 = 0;
    v9 = ims::debug(v8, v97);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": ", 2);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "GBA_ME: P0 = ", 13);
    *(v9 + 17) = 0;
    logBytes(&v102, &v83);
    (*(*v9 + 32))(v9, &v83);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (v100 == 1 && v99 < 0)
    {
      operator delete(v98);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v94 = 0;
    v95 = 0;
    v96 = 0;
    XcapBsfServerInfo::fetchRand(this[58], &v94);
    v93 = v95 - v94;
    std::string::basic_string[abi:ne200100]<0>(&v83, kXcapLoggingFacility);
    v90.__r_.__value_.__s.__data_[0] = 0;
    v92 = 0;
    v10 = ims::debug(&v83, &v90);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ": ", 2);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "GBA_ME: P1 = ", 13);
    *(v10 + 17) = 0;
    logBytes(&v94, v75);
    (*(*v10 + 32))(v10, v75);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75[0]);
    }

    if (v92 == 1 && v91 < 0)
    {
      operator delete(v90.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    v11 = *(this + 95);
    if (v11 < 0)
    {
      v12 = this[9];
      v11 = this[10];
    }

    else
    {
      v12 = (this + 9);
    }

    v87 = 0;
    v88 = 0;
    v89 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&v87, v12, v12 + v11, v11);
    v20 = v87;
    if ((v88 - v87) >> 16)
    {
      v19 = 0;
      if (!v87)
      {
LABEL_55:
        if (v94)
        {
          v95 = v94;
          operator delete(v94);
        }

        if (v102)
        {
          v103 = v102;
          operator delete(v102);
        }

        if (SHIBYTE(v107) < 0)
        {
          operator delete(v105);
        }

LABEL_61:
        if (v108)
        {
          v109 = v108;
          operator delete(v108);
        }

        if (v19)
        {
          std::string::basic_string[abi:ne200100]<0>(&v45, kXcapLoggingFacility);
          v57[0] = 0;
          v60 = 0;
          v21 = ims::debug(&v45, v57);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), ": ", 2);
          *(v21 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "GBA_ME: Ks_Naf = ", 17);
          *(v21 + 17) = 0;
          logBytes(&v61, v97);
          (*(*v21 + 32))(v21, v97);
          (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v21 + 17) = 0;
          if (SHIBYTE(v98) < 0)
          {
            operator delete(v97[0]);
          }

          if (v60 == 1 && v59 < 0)
          {
            operator delete(v58);
          }

          if (SHIBYTE(__p) < 0)
          {
            operator delete(v45);
          }

          (*(*this + 10))(this, &v61);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v45, kXcapLoggingFacility);
          v53[0] = 0;
          v56 = 0;
          v22 = ims::error(&v45, v53);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), ": ", 2);
          *(v22 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "GBA_ME failure. Failed to compute KsNaf", 39);
          *(v22 + 17) = 0;
          (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v22 + 17) = 0;
          if (v56 == 1 && v55 < 0)
          {
            operator delete(v54);
          }

          if (SHIBYTE(__p) < 0)
          {
            operator delete(v45);
          }

          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v45 = &unk_1F5EBDEF8;
          v46 = &_bambiDomain;
          LODWORD(__p) = 0x40000000;
          v48 = 0;
          v49 = 0;
          XcapSession::operationFailure(this, &v45);
          ImsResult::~ImsResult(&v45);
        }

        if (v61)
        {
          v62 = v61;
          operator delete(v61);
        }

        return;
      }

LABEL_54:
      v88 = v20;
      operator delete(v20);
      goto LABEL_55;
    }

    v86 = v88 - v87;
    std::string::basic_string[abi:ne200100]<0>(v75, kXcapLoggingFacility);
    v83.__r_.__value_.__s.__data_[0] = 0;
    v85 = 0;
    v23 = ims::debug(v75, &v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ": ", 2);
    *(v23 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "GBA_ME: P2 = ", 13);
    *(v23 + 17) = 0;
    logBytes(&v87, v66);
    (*(*v23 + 32))(v23, v66);
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66[0]);
    }

    if (v85 == 1 && v84 < 0)
    {
      operator delete(v83.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75[0]);
    }

    v80 = 0;
    v81 = 0;
    v82 = 0;
    XcapNafServerInfo::nafId(this[56], &v80);
    v24 = v80;
    if ((v81 - v80) >> 16)
    {
      v19 = 0;
      if (!v80)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v79 = v81 - v80;
      std::string::basic_string[abi:ne200100]<0>(v66, kXcapLoggingFacility);
      LOBYTE(v75[0]) = 0;
      v78 = 0;
      v25 = ims::debug(v66, v75);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ": ", 2);
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "GBA_ME: P3 = ", 13);
      *(v25 + 17) = 0;
      logBytes(&v80, &v72);
      (*(*v25 + 32))(v25, &v72);
      (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v25 + 17) = 0;
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v72);
      }

      if (v78 == 1 && v77 < 0)
      {
        operator delete(v76);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66[0]);
      }

      v72 = 0;
      v73 = 0;
      v74 = 0;
      std::vector<unsigned char>::__append(&v72, v101 + v93 + v86 + v79 + 9);
      *v72 = 1;
      v26 = v72;
      if (v103 != v102)
      {
        memmove(v72 + 1, v102, v103 - v102);
        v26 = v72;
      }

      v27 = v101;
      v28 = &v26[v101 + 1];
      for (i = 1; i != -1; --i)
      {
        *v28++ = *(&v101 + i);
      }

      v30 = v27 + 3;
      v31 = v72;
      if (v95 != v94)
      {
        memmove(v72 + v30, v94, v95 - v94);
        v31 = v72;
      }

      v32 = v30 + v93;
      v33 = &v31[v32];
      for (j = 1; j != -1; --j)
      {
        *v33++ = *(&v93 + j);
      }

      v35 = v32 + 2;
      v36 = v72;
      if (v88 != v87)
      {
        memmove(v72 + v35, v87, v88 - v87);
        v36 = v72;
      }

      v37 = v35 + v86;
      v38 = &v36[v37];
      for (k = 1; k != -1; --k)
      {
        *v38++ = *(&v86 + k);
      }

      v40 = v37 + 2;
      v41 = v72;
      if (v81 != v80)
      {
        memmove(v72 + v40, v80, v81 - v80);
        v41 = v72;
      }

      v42 = &v41[v40 + v79];
      for (m = 1; m != -1; --m)
      {
        *v42++ = *(&v79 + m);
      }

      std::string::basic_string[abi:ne200100]<0>(v70, kXcapLoggingFacility);
      LOBYTE(v66[0]) = 0;
      v69 = 0;
      v44 = ims::debug(v70, v66);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), ": ", 2);
      *(v44 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "GBA_ME: S = ", 12);
      *(v44 + 17) = 0;
      logBytes(&v72, v64);
      (*(*v44 + 32))(v44, v64);
      (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v44 + 17) = 0;
      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (v69 == 1 && v68 < 0)
      {
        operator delete(v67);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      v70[0] = &unk_1F5ED7CF0;
      v19 = SipSHA256DigestAlgorithm::computeHmac(v70, v108, v109 - v108, v72, v73 - v72, &v61);
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      v24 = v80;
      if (!v80)
      {
LABEL_91:
        v20 = v87;
        if (!v87)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }
    }

    v81 = v24;
    operator delete(v24);
    goto LABEL_91;
  }

  v13 = this[54];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = this[53];
      if (v16)
      {
        XcapNafServerInfo::nafId(this[56], &v45);
        XcapBsfServerInfo::fetchRand(this[58], v97);
        XcapBsfServerInfo::fetchBTid(this[58], &v90);
        XcapBsfServerInfo::fetchKeyLifetime(this[58], &v83);
        (*(*v16 + 32))(v16, &v45, v97, &v90, &v83);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (v97[0])
        {
          v97[1] = v97[0];
          operator delete(v97[0]);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E4ECB564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(a72);
  }

  v74 = *(v72 - 192);
  if (v74)
  {
    *(v72 - 184) = v74;
    operator delete(v74);
  }

  v75 = *(v72 - 104);
  if (v75)
  {
    *(v72 - 96) = v75;
    operator delete(v75);
  }

  if (*(v72 - 57) < 0)
  {
    operator delete(*(v72 - 80));
  }

  v76 = *(v72 - 56);
  if (v76)
  {
    *(v72 - 48) = v76;
    operator delete(v76);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void XcapConfig::XcapConfig(XcapConfig *this, const XcapConfig *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 8, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v4 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v5 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v6 = *(a2 + 5);
    *(this + 12) = *(a2 + 12);
    *(this + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v7 = *(a2 + 104);
    *(this + 15) = *(a2 + 15);
    *(this + 104) = v7;
  }

  v8 = *(a2 + 32);
  *(this + 132) = *(a2 + 132);
  *(this + 32) = v8;
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v9 = *(a2 + 136);
    *(this + 19) = *(a2 + 19);
    *(this + 136) = v9;
  }

  v10 = *(a2 + 40);
  *(this + 164) = *(a2 + 164);
  *(this + 40) = v10;
  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v11;
  }

  *(this + 192) = *(a2 + 192);
  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v12 = *(a2 + 200);
    *(this + 27) = *(a2 + 27);
    *(this + 200) = v12;
  }

  *(this + 56) = *(a2 + 56);
  if (*(a2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), *(a2 + 29), *(a2 + 30));
  }

  else
  {
    v13 = *(a2 + 232);
    *(this + 31) = *(a2 + 31);
    *(this + 232) = v13;
  }

  if (*(a2 + 279) < 0)
  {
    std::string::__init_copy_ctor_external((this + 256), *(a2 + 32), *(a2 + 33));
  }

  else
  {
    v14 = *(a2 + 16);
    *(this + 34) = *(a2 + 34);
    *(this + 16) = v14;
  }

  v15 = *(a2 + 35);
  *(this + 288) = *(a2 + 288);
  *(this + 35) = v15;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 37) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 296, *(a2 + 37), *(a2 + 38), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 38) - *(a2 + 37)) >> 3));
  *(this + 320) = *(a2 + 320);
  v16 = (this + 328);
  if (*(a2 + 351) < 0)
  {
    std::string::__init_copy_ctor_external(v16, *(a2 + 41), *(a2 + 42));
  }

  else
  {
    v17 = *(a2 + 328);
    *(this + 43) = *(a2 + 43);
    *&v16->__r_.__value_.__l.__data_ = v17;
  }

  v18 = *(a2 + 88);
  *(this + 178) = *(a2 + 178);
  *(this + 88) = v18;
}