uint64_t realityio::DirtyStageSubscription::DirtyStageSubscription(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_285942D58;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyStageDescriptor const>*,std::shared_ptr<realityio::DirtyStageDescriptor const>*>(a1 + 8, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 32) = realityio::DirtyStageSubscription::_isEmpty(a1);
  return a1;
}

uint64_t realityio::DirtyStageSubscription::_isEmpty(realityio::DirtyStageSubscription *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = *v1;
    v3 = v1[1];
    if (!v3)
    {
      break;
    }

    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(v4 + 56);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v5 != 1)
    {
      return 0;
    }

LABEL_6:
    v1 += 2;
    if (v1 == v2)
    {
      return 1;
    }
  }

  if (*(v4 + 56))
  {
    goto LABEL_6;
  }

  return 0;
}

void realityio::DirtyStageSubscription::getExplicitPrimTypes(realityio::DirtyStageSubscription *this@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v3 = 0uLL;
  v15 = 0u;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v10 = 0;
LABEL_13:
    *a2 = v3;
    *(a2 + 16) = v10;
    v16 = 0;
    v15 = 0uLL;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = 0uLL;
      v14 = 0;
      realityio::DirtyStageDescriptor::getExplicitPrimTypes(v6, &v11);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vdeallocate(&v13);
      v13 = v11;
      v14 = v12;
      v12 = 0;
      v11 = 0uLL;
      v17 = &v11;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v17);
      v8 = *(&v13 + 1);
      v9 = v13;
      if (v13 == *(&v13 + 1))
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
      }

      else
      {
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__insert_with_size[abi:ne200100]<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>>(&v15, *(&v15 + 1), v13, *(&v13 + 1), (*(&v13 + 1) - v13) >> 3);
      }

      *&v11 = &v13;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v11);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v9 == v8)
      {
        break;
      }

      v4 += 16;
      if (v4 == v5)
      {
        v3 = v15;
        v10 = v16;
        goto LABEL_13;
      }
    }
  }

  *&v13 = &v15;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_247486250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a9 = &a13;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  a13 = &a17;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t realityio::DirtyStageSubscription::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!*(a7 + 24) || !*(a8 + 24) || !*(a9 + 24) || !*(a10 + 24))
  {
    goto LABEL_20;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v27, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v27);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v29);
  if (v28)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v28);
  }

  if (IsValid)
  {
    v19 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v19 == v18)
    {
      v22 = 1;
    }

    else
    {
      do
      {
        v20 = *v19;
        v21 = *(v19 + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v34, a7);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v33, a8);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v32, a9);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v31, a10);
        v22 = realityio::DirtyStageDescriptor::validate(v20, a2, a3, this, a5, a6, v34, v33, v32, v31);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v31);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v32);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v33);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v34);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v19 += 16;
        if (v19 == v18)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }
      }

      while ((v23 & 1) == 0);
    }
  }

  else
  {
LABEL_20:
    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_247486478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  if (*this > 4u || ((1 << *this) & 0x1A) == 0)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    return 0;
  }

  if (*this == 1)
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::UsdObject::_GetDefiningSpecType(this);
  if (*this != 3 || result != 1)
  {
    return *this == 4 && result == 8;
  }

  return result;
}

uint64_t realityio::DirtyStageSubscription::numberOfStageMetadataOnlyPredicates(realityio::DirtyStageSubscription *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v5 = *v1;
    v4 = v1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v5 + 57);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *(v5 + 57);
    }

    v3 = (v3 + v6);
    v1 += 2;
  }

  while (v1 != v2);
  return v3;
}

const void **realityio::DirtyStageSubscription::description@<X0>(realityio::DirtyStageSubscription *this@<X0>, CFStringRef *a2@<X8>)
{
  v14 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = *(this + 1);
  for (i = *(this + 2); v6 != i; v6 += 16)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    realityio::DirtyStageDescriptor::description(v8, &value);
    CFArrayAppendValue(Mutable, value);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v10 = realityio::joinAsCFStringRef(Mutable, ", ", v4);
  CFRelease(Mutable);
  v11 = *(this + 1);
  v12 = *(this + 2);
  v14 = v10;
  *a2 = 0;
  *a2 = CFStringCreateWithFormat(0, 0, @"<DirtyStageSubscription: %p { dirtyStageContainsAnyOf: (%lu) [ %@ ] } >", this, (v12 - v11) >> 4, v10);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v14);
}

void sub_24748671C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v5);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

realityio::MutableDirtyPropertyTable *realityio::MutableDirtyPropertyTable::addProperty(realityio::MutableDirtyPropertyTable *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this, a2);
  if ((this + 8) == v6)
  {
    v10 = *a3;
    v14 = v10;
    if ((v10 & 7) != 0)
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 = v11;
      }
    }

    v12 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(this, a2);
    result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__assign_unique<pxrInternal__aapl__pxrReserved__::TfToken const*>((v12 + 40), &v14, &v15);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_11;
  }

  v7 = v6;
  result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v6 + 40, a3);
  if ((v7 + 48) != result)
  {
LABEL_11:
    v13 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *MEMORY[0x277D85DE8];

  return std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v7 + 40, a3);
}

uint64_t realityio::MutableDirtyPropertyTable::anyMatch(realityio::MutableDirtyPropertyTable *this, const realityio::UsdStageDelta *a2)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v2 = *(a2 + 2);
  v3 = a2 + 24;
  if (v2 == a2 + 24)
  {
    return 0;
  }

  v5 = this + 8;
  while (1)
  {
    v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this, v2 + 6);
    if (v5 != v6)
    {
      v7 = *(v2 + 8);
      if (v7 != v2 + 72)
      {
        break;
      }
    }

LABEL_14:
    v13 = *(v2 + 1);
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
        v14 = *(v2 + 2);
        v12 = *v14 == v2;
        v2 = v14;
      }

      while (!v12);
    }

    v2 = v14;
    if (v14 == v3)
    {
      return 0;
    }
  }

  v8 = v6;
  v9 = v6 + 48;
  while (v9 == std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v8 + 40, v7 + 4))
  {
    v10 = *(v7 + 1);
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = *(v7 + 2);
        v12 = *v11 == v7;
        v7 = v11;
      }

      while (!v12);
    }

    v7 = v11;
    if (v11 == v2 + 72)
    {
      goto LABEL_14;
    }
  }

  return 1;
}

void realityio::DirtyStageSubscription::~DirtyStageSubscription(realityio::DirtyStageSubscription *this)
{
  *this = &unk_285942D58;
  v1 = (this + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_285942D58;
  v2 = (this + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x24C1A91B0](this, 0x10A1C407F0BD61ELL);
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr();
    if ((atomic_fetch_add((Ptr + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Destroy(Ptr);
    }
  }

  return a1;
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Destroy(unsigned __int8 *this)
{
  v1 = this[14];
  if (v1 > 3)
  {
    if (this[14] <= 5u)
    {
      if (v1 == 4)
      {
        v2 = MEMORY[0x24C1A5680]();
      }

      else
      {
        if (v1 != 5)
        {
          return this;
        }

        v2 = MEMORY[0x24C1A5670]();
      }
    }

    else
    {
      switch(v1)
      {
        case 6u:
          v2 = MEMORY[0x24C1A5B90]();
          break;
        case 7u:
          v2 = MEMORY[0x24C1A57C0]();
          break;
        case 8u:
          v2 = MEMORY[0x24C1A5840]();
          break;
        default:
          return this;
      }
    }

    goto LABEL_24;
  }

  if (this[14] > 1u)
  {
    if (v1 != 2)
    {
      if (v1 != 3)
      {
        return this;
      }

      v2 = MEMORY[0x24C1A5900]();
LABEL_24:

      return MEMORY[0x282206558](v2);
    }

    v3 = MEMORY[0x24C1A5AE0]();
  }

  else if (this[14])
  {
    v3 = MEMORY[0x24C1A53E0]();
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::~Sdf_PathNode(this);
  }

  return MEMORY[0x282206550](v3);
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::~Sdf_PathNode(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((*(this + 2) & 0x80000000) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(this);
  }

  v2 = *this;
  if (*this)
  {
    if ((atomic_fetch_add(v2 + 2, 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Destroy(v2);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(uint64_t result)
{
  add_explicit = atomic_fetch_add_explicit((result + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if (result && add_explicit == 1)
  {
    MEMORY[0x24C1A4F30](result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyStageDescriptor const>*,std::shared_ptr<realityio::DirtyStageDescriptor const>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247486DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(a1, a2);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278EA82D8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*,std::shared_ptr<realityio::DirtyStageDescriptor const>*,std::shared_ptr<realityio::DirtyStageDescriptor const>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](uint64_t *a1)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char *std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__insert_with_size[abi:ne200100]<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v17 = v10 - a2;
      if (a5 <= (v10 - a2) >> 3)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__move_range(a1, a2, a1[1], (a2 + 8 * a5));
        v21 = &v7[a5];
        v22 = v5;
        do
        {
          pxrInternal__aapl__pxrReserved__::TfToken::operator=(v22, v7++);
          v22 += 8;
        }

        while (v7 != v21);
      }

      else
      {
        v18 = v17 >> 3;
        v19 = (a3 + v17);
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_at_end<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>>(a1, (a3 + v17), a4);
        if (v18 >= 1)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__move_range(a1, v5, v10, &v5[8 * a5]);
          if (v10 != v5)
          {
            v20 = v5;
            do
            {
              pxrInternal__aapl__pxrReserved__::TfToken::operator=(v20, v7++);
              v20 += 8;
            }

            while (v7 != v19);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 3;
      v27[4] = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, v15);
      }

      v23 = (8 * v16);
      v27[0] = 0;
      v27[1] = 8 * v16;
      v27[3] = 0;
      v24 = 8 * a5;
      do
      {
        v25 = *v7;
        *v23 = *v7;
        if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v23 &= 0xFFFFFFFFFFFFFFF8;
        }

        ++v23;
        ++v7;
        v24 -= 8;
      }

      while (v24);
      v27[2] = 8 * v16 + 8 * a5;
      v5 = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__swap_out_circular_buffer(a1, v27, v5);
      std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfToken>::~__split_buffer(v27);
    }
  }

  return v5;
}

void sub_2474873A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_at_end<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  for (i = *(result + 8); a2 != a3; ++i)
  {
    v4 = *a2;
    *i = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *i &= 0xFFFFFFFFFFFFFFF8;
    }

    ++a2;
  }

  *(result + 8) = i;
  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(result + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  if (v5 < a3)
  {
    v7 = (a2 + v4 - a4);
    v6 = *(result + 8);
    do
    {
      *v6 = *v7;
      v6 += 8;
      *v7++ = 0;
    }

    while (v7 < a3);
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v8 = a4 - v4;
    do
    {
      v9 = v5;
      v10 = v4;
      v5 -= 8;
      v4 -= 8;
      if (v9 != v10)
      {
        if ((*v4 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v4 = *v5;
        *v5 = 0;
      }

      v8 += 8;
    }

    while (v8);
  }

  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__swap_out_circular_buffer(uint64_t a1, void *a2, char *a3)
{
  result = a2[1];
  v5 = *(a1 + 8);
  v6 = result;
  v7 = a3;
  if (v5 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9 += 8;
    }

    while (v9 != v5);
    v10 = a3;
    do
    {
      if ((*v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 += 8;
    }

    while (v10 != v5);
    v7 = *(a1 + 8);
    v6 = a2[1];
  }

  a2[2] += v7 - a3;
  *(a1 + 8) = a3;
  v11 = *a1;
  v12 = (v6 + *a1 - a3);
  if (*a1 != a3)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      *v14++ = *v13;
      *v13 = 0;
      v13 += 8;
    }

    while (v13 != a3);
    do
    {
      if ((*v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 += 8;
    }

    while (v11 != a3);
    v11 = *a1;
  }

  a2[1] = v12;
  *a1 = v12;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v15 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v15;
  v16 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

void *pxrInternal__aapl__pxrReserved__::TfToken::operator=(void *result, void *a2)
{
  if (a2 != result)
  {
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = *a2;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfToken>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void **realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::operator<(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() || (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0)
  {
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0)
    {
      return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
    }

    return 0;
  }

  return MEMORY[0x2822068C0](a1, a2);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    atomic_fetch_add_explicit((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr() + 8), 1u, memory_order_relaxed);
  }

  return a1;
}

{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  return a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr();
  }

  return a1;
}

{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(a1, *a2);
    std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(a1, a2[1]);
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__assign_unique<pxrInternal__aapl__pxrReserved__::TfToken const*>(uint64_t **result, uint64_t *a2, uint64_t *a3)
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

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            ++a2;
            break;
          }

          v11 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        ++a2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v5, a2++);
  }

  return result;
}

void sub_2474880B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__node_assign_unique(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v6 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, &v9, a2);
  if (*v6)
  {
    return *v6;
  }

  v7 = v6;
  pxrInternal__aapl__pxrReserved__::TfToken::operator=(a3 + 4, a2);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(a1, v9, v7, a3);
  return a3;
}

void *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    return !v6;
  }

  else
  {
    if (v3 == v4)
    {
      return 0;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFFF8;
    v9 = v4 & 0xFFFFFFFFFFFFFFF8;
    v10 = *(v8 + 8);
    v11 = *(v9 + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 != v11)
    {
      return 0;
    }

    else
    {
      v14 = *(v9 + 16);
      v12 = v9 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      v18 = *(v8 + 16);
      v16 = v8 + 16;
      v17 = v18;
      v19 = *(v16 + 23);
      if (v19 >= 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = *(v16 + 8);
      }

      if (v19 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v15 >= 0)
      {
        v22 = *(v12 + 23);
      }

      else
      {
        v22 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v23 = v12;
      }

      else
      {
        v23 = v13;
      }

      if (v22 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v21, v23, v24);
      if (v25)
      {
        return v25 < 0;
      }

      else
      {
        return v20 < v22;
      }
    }
  }
}

void *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t a1, uint64_t *a2)
{
  result = *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_node<pxrInternal__aapl__pxrReserved__::TfToken const&>();
  }

  return result;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::find<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t realityio::mtlx::NeoDataSource::primFromPath(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v5, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v6, a2 + 1);
  (*(*a1 + 8))(a1, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  return a1;
}

void sub_247488598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void realityio::mtlx::NeoDataSource::gatherSources(uint64_t a1, uint64_t a2, void *a3)
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  (*(*a1 + 160))(a1, *(a2 + 8), &v10);
  v5 = v10;
  if (v10 != v11)
  {
    do
    {
      (*(*a1 + 16))(&v9, a1, *(v5 + 7));
      std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>(a3, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v11);
  }

  std::__tree<unsigned int>::destroy(&v10, v11[0]);
}

void realityio::mtlx::NeoShadeNodeGraph::GetInputs(realityio::mtlx::NeoShadeNodeGraph *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**this + 136))(&v10, *this, *(this + 2), 1);
  v3 = v10;
  for (i = v11; v3 != i; v3 += 24)
  {
    v5 = *v3;
    v8 = *(v3 + 8);
    v7 = v5;
    v6 = *(v3 + 16);
    v9 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    std::vector<realityio::mtlx::NeoShadeInput>::push_back[abi:ne200100](a2, &v7);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v7 = &v10;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v7);
}

uint64_t *std::vector<realityio::mtlx::NeoShadeInput>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(result, v11);
    }

    v12 = 24 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    *(v12 + 16) = a2[2];
    a2[2] = 0;
    v14[2] = 24 * v8 + 24;
    std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(result, v14);
    v7 = v3[1];
    result = std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(v14);
  }

  else
  {
    v6 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v6;
    *(v4 + 16) = a2[2];
    a2[2] = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

void sub_2474889A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void realityio::mtlx::NeoShadeNodeGraph::GetOutputs(realityio::mtlx::NeoShadeNodeGraph *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**this + 136))(&v10, *this, *(this + 2), 0);
  v3 = v10;
  for (i = v11; v3 != i; v3 += 24)
  {
    v5 = *v3;
    v8 = *(v3 + 8);
    v7 = v5;
    v6 = *(v3 + 16);
    v9 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    std::vector<realityio::mtlx::NeoShadeOutput>::push_back[abi:ne200100](a2, &v7);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v7 = &v10;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v7);
}

uint64_t *std::vector<realityio::mtlx::NeoShadeOutput>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(result, v11);
    }

    v12 = 24 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    *(v12 + 16) = a2[2];
    a2[2] = 0;
    v14[2] = 24 * v8 + 24;
    std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(result, v14);
    v7 = v3[1];
    result = std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(v14);
  }

  else
  {
    v6 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v6;
    *(v4 + 16) = a2[2];
    a2[2] = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

void sub_247488C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void realityio::mtlx::NeoShadeConnectable::GetInputs(realityio::mtlx::NeoShadeConnectable *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**this + 136))(&v10, *this, *(this + 2), 1);
  v3 = v10;
  for (i = v11; v3 != i; v3 += 24)
  {
    v5 = *v3;
    v8 = *(v3 + 8);
    v7 = v5;
    v6 = *(v3 + 16);
    v9 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    std::vector<realityio::mtlx::NeoShadeInput>::push_back[abi:ne200100](a2, &v7);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v7 = &v10;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void realityio::mtlx::NeoShadeOutput::GetValueProducingAttributes(realityio::mtlx::NeoShadeOutput *this@<X0>, uint64_t a2@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(this + 2);
  (*(**this + 24))(&v22);
  while (1)
  {
    v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
    if (!v5)
    {
      break;
    }

    v6 = v23;
    v7 = v24;
    if (v23 != v24)
    {
      while (*v6 != v22)
      {
        if (++v6 == v24)
        {
          goto LABEL_8;
        }
      }
    }

    if (v6 != v24)
    {
      v16 = *(realityio::logObjects(v5) + 48);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v22);
        if (*(String + 23) >= 0)
        {
          v18 = String;
        }

        else
        {
          v18 = *String;
        }

        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "Loop detected in shader: '%s'", buf, 0xCu);
      }

      break;
    }

LABEL_8:
    if (v24 >= v25)
    {
      v8 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v23, &v22);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v24, &v22);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v7 + 1, &v22 + 1);
      v8 = v7 + 1;
    }

    v24 = v8;
    v9 = *this;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v21, &v22);
    realityio::mtlx::NeoDataSource::primFromPath(v9, &v21);
    v11 = v10;
    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v22);
    *buf = v9;
    *&buf[8] = v11;
    v13 = *NameToken;
    v30[0] = v13;
    if ((v13 & 7) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
      {
        v30[0] = v14;
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
    if (!(*(**buf + 88))(*buf, *&buf[8], v30, &v26) || (v15 = v26, v26 == v27))
    {
      v20 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v22, &v20);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v22 + 4, &v20 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
    }

    else
    {
      if (&v26 != a2)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a2, v26, v27, (v27 - v26) >> 3);
        v15 = v26;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v22, v15);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v22 + 4, v15 + 1);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::resize(&v26, 0);
    }

    if ((v30[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
  *buf = &v23;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](buf);
  v23 = &v26;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v23);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2474890C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void ***a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void ***a19)
{
  v20 = v19;

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a12);
  a19 = &a13;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a19);
  a13 = &a16;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void **std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::resize(void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        v3 -= 8;
        result = std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](v2, v3);
      }

      *(v2 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__append(result, v5);
  }

  return result;
}

realityio::mtlx::USDDataSource *realityio::mtlx::USDDataSource::USDDataSource(realityio::mtlx::USDDataSource *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  *this = &unk_285942D88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  realityio::mtlx::USDDataSource::findPrimIndex(this, a2);
  return this;
}

void sub_247489280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(v2, *v3);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t realityio::mtlx::USDDataSource::findPrimIndex(realityio::mtlx::USDDataSource *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v13);
  v4 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 32, &v13);
  if ((this + 40) == v4)
  {
    v6 = *(this + 1);
    v7 = *(this + 2);
    if (v7 >= *(this + 3))
    {
      v10 = std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdPrim const&>(this + 1, a2);
    }

    else
    {
      *v7 = *a2;
      v8 = *(a2 + 1);
      *(v7 + 8) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v7 + 16), a2 + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v7 + 20), a2 + 5);
      v9 = *(a2 + 3);
      *(v7 + 24) = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v7 + 24) &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = v7 + 32;
    }

    *(this + 2) = v10;
    v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 32, &v14, &v13);
    v5 = (v7 - v6) >> 5;
    if (!*v11)
    {
      operator new();
    }
  }

  else
  {
    v5 = v4[9];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  return v5;
}

void sub_24748943C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdObject::GetPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X0>, _DWORD *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    if (*this == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2, this + 4);
      v4 = a2 + 1;
      v5 = (this + 20);
LABEL_7:

      return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4, v5);
    }

    v8 = (this + 16);
LABEL_15:

    return pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(v8, (this + 24));
  }

  v6 = *(this + 1);
  if (v6)
  {
    if (*this == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2, (v6 + 16));
      v4 = a2 + 1;
      v5 = (v6 + 20);
      goto LABEL_7;
    }

    v8 = (v6 + 16);
    goto LABEL_15;
  }

  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
}

_DWORD *realityio::mtlx::USDDataSource::getPrim@<X0>(realityio::mtlx::USDDataSource *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 1) + 32 * a2;
  *a3 = *v4;
  v5 = *(v4 + 8);
  *(a3 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 16), (v4 + 16));
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 20), (v4 + 20));
  v7 = *(v4 + 24);
  *(a3 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a3 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t realityio::mtlx::USDDataSource::getAttr(realityio::mtlx::USDDataSource *this, realityio::mtlx::USDDataSource *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  realityio::mtlx::USDDataSource::getPrim(a2, a3, &v6);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v6, a4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  result = v7;
  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return result;
}

uint64_t realityio::mtlx::USDDataSource::getPath@<X0>(realityio::mtlx::USDDataSource *this@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  realityio::mtlx::USDDataSource::getPrim(this, a2, &v5);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v5, a3);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  result = v6;
  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return result;
}

uint64_t realityio::mtlx::USDDataSource::getPath@<X0>(realityio::mtlx::USDDataSource *this@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, _DWORD *a4@<X8>)
{
  realityio::mtlx::USDDataSource::getAttr(&v6, this, a2, a3);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v6, a4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  result = v7;
  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

uint64_t realityio::mtlx::USDDataSource::hasValue(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  realityio::mtlx::USDDataSource::getAttr(&v5, this, a2, a3);
  HasValue = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return HasValue;
}

uint64_t realityio::mtlx::USDDataSource::getBaseName(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int a4)
{
  realityio::mtlx::USDDataSource::getAttr(v10, this, a2, a3);
  if (a4)
  {
    MEMORY[0x24C1A5100](&v6, v10);
    pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v6);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    MEMORY[0x24C1A5230](&v6, v10);
    pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(&v6);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  result = v11;
  if (v11)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return result;
}

void sub_247489A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(&a9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(pxrInternal__aapl__pxrReserved__::UsdShadeInput *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(pxrInternal__aapl__pxrReserved__::UsdShadeOutput *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

uint64_t realityio::mtlx::USDDataSource::getTypeName(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int a4)
{
  realityio::mtlx::USDDataSource::getAttr(v11, this, a2, a3);
  if (a4)
  {
    MEMORY[0x24C1A5100](&v7, v11);
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v7);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    MEMORY[0x24C1A5230](&v7, v11);
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v7);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  return TypeName;
}

void sub_247489C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(&a9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::getInputValue(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  realityio::mtlx::USDDataSource::getAttr(v10, this, a2, a3);
  MEMORY[0x24C1A5100](&v6, v10);
  v4 = pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get();
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return v4;
}

void sub_247489D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  _Unwind_Resume(a1);
}

void realityio::mtlx::USDDataSource::getInputValue(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  realityio::mtlx::USDDataSource::getAttr(v5, this, a2, a3);
  MEMORY[0x24C1A5100](&v4, v5);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void sub_247489E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  _Unwind_Resume(a1);
}

void realityio::mtlx::USDDataSource::getInputValue(realityio::mtlx::USDDataSource *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  realityio::mtlx::USDDataSource::getAttr(v4, a1, a2, a3);
  MEMORY[0x24C1A5100](&v3, v4);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<std::string>();
}

void sub_247489F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::getRawConnectedSourcePaths(realityio::mtlx::USDDataSource *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int a4)
{
  realityio::mtlx::USDDataSource::getAttr(v13, a1, a2, a3);
  if (a4)
  {
    MEMORY[0x24C1A5100](&v9, v13);
    v5 = MEMORY[0x24C1A7400](&v9);
    v6 = v5;
    if (v5)
    {
      LOBYTE(a4) = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
    }

    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    MEMORY[0x24C1A5230](&v9, v13);
    v7 = MEMORY[0x24C1A75A0](&v9);
    v6 = v7;
    if (v7)
    {
      LOBYTE(a4) = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
    }

    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  if ((v6 & 1) == 0)
  {
    LOBYTE(a4) = 0;
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  return a4 & 1;
}

void sub_24748A0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::getAttributeConnections(realityio::mtlx::USDDataSource *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  realityio::mtlx::USDDataSource::getAttr(&v5, a1, a2, a3);
  Connections = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return Connections;
}

uint64_t realityio::mtlx::USDDataSource::surfaceOutput@<X0>(realityio::mtlx::USDDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  realityio::mtlx::USDDataSource::getPrim(this, a3, v11);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v15[0] = MEMORY[0x277D86758] + 16;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::GetSurfaceOutput(&v16, v15, a2);
  MEMORY[0x24C1A5510](v15);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v11, &v17, &v18);
  PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(this, v11);
  v8 = *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v16);
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  *a4 = this;
  *(a4 + 8) = PrimIndex;
  *(a4 + 16) = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(a4 + 16) = v9;
    }

    atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_release);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  result = v17;
  if (v17)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
  }

  return result;
}

void sub_24748A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::getAttrValue(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  realityio::mtlx::USDDataSource::getAttr(&v6, this, a2, a3);
  v4 = pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return v4;
}

uint64_t realityio::mtlx::USDDataSource::getAttrRoleName(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  realityio::mtlx::USDDataSource::getAttr(&v4, this, a2, a3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(&v4);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  result = v5;
  if (v5)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  return result;
}

uint64_t realityio::mtlx::USDDataSource::getAttrColorSpace(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  realityio::mtlx::USDDataSource::getAttr(&v4, this, a2, a3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&v4);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  result = v5;
  if (v5)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  return result;
}

uint64_t realityio::mtlx::USDDataSource::nodeGraphGetList@<X0>(realityio::mtlx::USDDataSource *this@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  realityio::mtlx::USDDataSource::getPrim(this, a2, &v23);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v27[0] = MEMORY[0x277D86778] + 16;
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(v27);
    v7 = v21;
    for (i = v22; v7 != i; v7 += 32)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v23, (v7 + 8), (v7 + 16));
      PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(this, &v23);
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v7);
      v18 = this;
      v19 = PrimIndex;
      v11 = *Name;
      v20 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      std::vector<realityio::mtlx::NeoAttribute>::push_back[abi:ne200100](a4, &v18);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
      if (v24)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
      }
    }

    v23 = &v21;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v23);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(v27);
    v12 = v21;
    for (j = v22; v12 != j; v12 += 32)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v23, (v12 + 8), (v12 + 16));
      v14 = realityio::mtlx::USDDataSource::findPrimIndex(this, &v23);
      v15 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v12);
      v18 = this;
      v19 = v14;
      v16 = *v15;
      v20 = v16;
      if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      std::vector<realityio::mtlx::NeoAttribute>::push_back[abi:ne200100](a4, &v18);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
      if (v24)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
      }
    }

    v23 = &v21;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v23);
  }

  return MEMORY[0x24C1A5610](v27);
}

void sub_24748A8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void **);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x24C1A5610](va1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<realityio::mtlx::NeoAttribute>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(result, v11);
    }

    v12 = 24 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    *(v12 + 16) = a2[2];
    a2[2] = 0;
    v14[2] = 24 * v8 + 24;
    std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(result, v14);
    v7 = v3[1];
    result = std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(v14);
  }

  else
  {
    v6 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v6;
    *(v4 + 16) = a2[2];
    a2[2] = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

void sub_24748AAA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::nodeGraphGetInput@<X0>(realityio::mtlx::USDDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  realityio::mtlx::USDDataSource::getPrim(this, a3, &v15);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v19[0] = MEMORY[0x277D86778] + 16;
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInput(&v15, v19, a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v11, &v16, &v17);
  PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(this, v11);
  v8 = *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v15);
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  *a4 = this;
  *(a4 + 8) = PrimIndex;
  *(a4 + 16) = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(a4 + 16) = v9;
    }

    atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_release);
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  return MEMORY[0x24C1A5610](v19);
}

void sub_24748AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(va);
  MEMORY[0x24C1A5610](va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::nodeGraphGetOutput@<X0>(realityio::mtlx::USDDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  realityio::mtlx::USDDataSource::getPrim(this, a3, &v15);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v19[0] = MEMORY[0x277D86778] + 16;
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutput(&v15, v19, a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v11, &v16, &v17);
  PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(this, v11);
  v8 = *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v15);
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  *a4 = this;
  *(a4 + 8) = PrimIndex;
  *(a4 + 16) = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(a4 + 16) = v9;
    }

    atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_release);
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  return MEMORY[0x24C1A5610](v19);
}

void sub_24748AE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(va);
  MEMORY[0x24C1A5610](va1);
  _Unwind_Resume(a1);
}

unint64_t realityio::mtlx::USDDataSource::getIndex(pxrInternal__aapl__pxrReserved__::UsdObject **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>((a1 + 4), a2);
  if (a1 + 5 != v4)
  {
    return *(v4 + 36);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1[1]);
  v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v17, v6, a2);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v18);
  }

  v7 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v11, a1[1]);
  v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v11);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v13, v8, a2);
  PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(a1, &v13);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  v9 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  return PrimIndex;
}

void sub_24748B04C(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  if (a3)
  {
    if (atomic_fetch_add_explicit(a3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a3 + 8))(a3);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || ((v4 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14), result = *a1, v4 == 1) ? (v6 = result == 0) : (v6 = 1), v6))
  {
    v7 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v7, 0x2F);
    return pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *realityio::mtlx::USDDataSource::gatherSources(realityio::mtlx::USDDataSource *a1, unsigned int a2, uint64_t *a3)
{
  realityio::mtlx::USDDataSource::getPrim(a1, a2, v38);
  v6 = v39;
  if (!v39 || (*(v39 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v39, v5);
  }

  v7 = *(v6 + 3);
  v8 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v8 + 8) ^ *v7) > 7)
  {
    v9 = v39;
    if (!v39 || (*(v39 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v39, v5);
    }

    v10 = *(v9 + 3);
    v11 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v11)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v11 + 16) ^ *v10) > 7)
    {
      v12 = v39;
      if (!v39 || (*(v39 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v39, v5);
      }

      v13 = *(v12 + 3);
      v14 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
      if (!v14)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*v14 ^ *v13) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v37[0] = MEMORY[0x277D86758] + 16;
        LODWORD(v29) = 1;
        v30 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v32 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v36 = 0;
        v33 = MEMORY[0x277D867A8] + 16;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        v28 = 0;
        v27 = 0;
        v15 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
        if (!v15)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutput(&v29, v37, (v15 + 96));
        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v29) && pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v23, &v34, &v35);
          LODWORD(v18) = realityio::mtlx::USDDataSource::findPrimIndex(a1, &v23);
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(a3, &v18);
          if ((v26 & 7) != 0)
          {
            atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
          if (v24)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
          }
        }

        v16 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
        if (!v16)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::GetSurfaceOutput(&v23, v37, (v16 + 24));
        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v23) && pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v18, &v34, &v35);
          PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(a1, &v18);
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(a3, &PrimIndex);
          if ((v21 & 7) != 0)
          {
            atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
          if (v19)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
          }
        }

        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
        if (v24)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
        }

        if ((v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        if (v30)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
        }

        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        MEMORY[0x24C1A5890](&v33);
        MEMORY[0x24C1A5510](v37);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v33 = MEMORY[0x277D86778] + 16;
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(&v33);
      realityio::mtlx::USDDataSource::getSourcePrims<pxrInternal__aapl__pxrReserved__::UsdShadeInput>(&v29, a1, v23, v24);
      std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(a3, &v29);
      std::__tree<unsigned int>::destroy(&v29, v30);
      v18 = &v23;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v18);
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(&v33);
      realityio::mtlx::USDDataSource::getSourcePrims<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>(&v29, a1, v23, v24);
      std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(a3, &v29);
      std::__tree<unsigned int>::destroy(&v29, v30);
      v18 = &v23;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v18);
      MEMORY[0x24C1A5610](&v33);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v33 = MEMORY[0x277D86708] + 16;
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v33);
    realityio::mtlx::USDDataSource::getSourcePrims<pxrInternal__aapl__pxrReserved__::UsdShadeInput>(&v29, a1, v23, v24);
    std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(a3, &v29);
    std::__tree<unsigned int>::destroy(&v29, v30);
    v18 = &v23;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v18);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetOutputs(&v33);
    realityio::mtlx::USDDataSource::getSourcePrims<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>(&v29, a1, v23, v24);
    std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(a3, &v29);
    std::__tree<unsigned int>::destroy(&v29, v30);
    v18 = &v23;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v18);
    MEMORY[0x24C1A5280](&v33);
  }

  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
  result = v39;
  if (v39)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v39);
  }

  return result;
}

void sub_24748B720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(va);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(va1);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5890](va2);
  MEMORY[0x24C1A5510](v6 - 104);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v6 - 80));
  _Unwind_Resume(a1);
}

void *realityio::mtlx::USDDataSource::getSourcePrims<pxrInternal__aapl__pxrReserved__::UsdShadeInput>(void *result, realityio::mtlx::USDDataSource *a2, uint64_t a3, uint64_t a4)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  if (a3 != a4)
  {
    v5 = a3;
    v6 = result;
    do
    {
      v19 = 1;
      v20 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v26 = 0;
      v23 = MEMORY[0x277D867A8] + 16;
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
      if (v20)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
      }

      v18 = 0;
      v17 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v19, &v24, &v25);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v19, &v16);
        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&PrimIndex, (v5 + 8), (v5 + 16));
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&PrimIndex, &v14);
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v15, &v14);
        v7 = v15;
        v8 = v16;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
        if (v11)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
        if (v8 != v7)
        {
          PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(a2, &v19);
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(v6, &PrimIndex);
        }

        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
        if (v20)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
        }
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      result = MEMORY[0x24C1A5890](&v23);
      v5 += 32;
    }

    while (v5 != a4);
  }

  return result;
}

void sub_24748BABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5890](va1);
  std::__tree<unsigned int>::destroy(v11, *(v11 + 8));
  _Unwind_Resume(a1);
}

void *realityio::mtlx::USDDataSource::getSourcePrims<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>(void *result, realityio::mtlx::USDDataSource *a2, uint64_t a3, uint64_t a4)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  if (a3 != a4)
  {
    v5 = a3;
    v6 = result;
    do
    {
      v19 = 1;
      v20 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v26 = 0;
      v23 = MEMORY[0x277D867A8] + 16;
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
      if (v20)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
      }

      v18 = 0;
      v17 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v19, &v24, &v25);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v19, &v16);
        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&PrimIndex, (v5 + 8), (v5 + 16));
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&PrimIndex, &v14);
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v15, &v14);
        v7 = v15;
        v8 = v16;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
        if (v11)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
        if (v8 != v7)
        {
          PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(a2, &v19);
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(v6, &PrimIndex);
        }

        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
        if (v20)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
        }
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      result = MEMORY[0x24C1A5890](&v23);
      v5 += 32;
    }

    while (v5 != a4);
  }

  return result;
}

void sub_24748BDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5890](va1);
  std::__tree<unsigned int>::destroy(v11, *(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::shaderUsesSecondUV(realityio::mtlx::USDDataSource *a1, uint64_t a2)
{
  realityio::mtlx::USDDataSource::getPrim(a1, *(a2 + 8), &v18);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v22[0] = MEMORY[0x277D86708] + 16;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
  }

  v17 = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v18, v22);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v18);
  if (IsValid)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsValid);
  v4 = *(EmptyString + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(EmptyString + 8);
  }

  if (v4 >= 0xB)
  {
    if (v5 < 0)
    {
      EmptyString = *EmptyString;
    }

    if (!strncmp(EmptyString, "ND_texcoord", 0xBuLL))
    {
      v6 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
      if (!v6)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v12, v22, (v6 + 56));
      v11 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v12) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
      {
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v14);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v15);
        v10 = v16;
        if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v10 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>();
      }

      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
      }
    }
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](v22);
  return 0;
}

void sub_24748C124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a10);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a15);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v19 - 72));
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](v19 - 40);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::USDDataSource::primIsValid(realityio::mtlx::USDDataSource *this, unsigned int a2)
{
  realityio::mtlx::USDDataSource::getPrim(this, a2, &v4);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v4);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  return IsValid;
}

uint64_t realityio::mtlx::USDDataSource::attrIsValid(realityio::mtlx::USDDataSource *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  realityio::mtlx::USDDataSource::getAttr(&v5, this, a2, a3);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return IsValid;
}

uint64_t realityio::mtlx::USDDataSource::primType(realityio::mtlx::USDDataSource *this, unsigned int a2)
{
  realityio::mtlx::USDDataSource::getPrim(this, a2, &v9);
  v3 = v10;
  if (!v10 || (*(v10 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v10, v2);
  }

  v4 = **(v3 + 3);
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  v5 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((v4 ^ *v5) >= 8)
  {
    v7 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((v4 ^ *(v7 + 16)) >= 8)
    {
      v8 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((v4 ^ *(v8 + 8)) < 8)
      {
        result = 2;
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_24748C40C(_Unwind_Exception *exception_object)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::USDDataSource::getShadeInputs(realityio::mtlx::USDDataSource *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  realityio::mtlx::USDDataSource::getPrim(a1, a2[2], &v18);
  v5 = (*(**a2 + 192))(*a2, a2[2]);
  if (v5 == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v14 = (MEMORY[0x277D86778] + 16);
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(&v14);
    MEMORY[0x24C1A5610](&v14);
  }

  else if (v5)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v14 = (MEMORY[0x277D86708] + 16);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v14);
    MEMORY[0x24C1A5280](&v14);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v14 = (MEMORY[0x277D86758] + 16);
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(&v14);
    MEMORY[0x24C1A5510](&v14);
  }

  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = v24;
  if (v23 != v24)
  {
    v7 = v23 + 16;
    do
    {
      v8 = v7 - 16;
      LODWORD(v18) = *(v7 - 16);
      v9 = *(v7 - 8);
      v19 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, v7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, (v7 + 4));
      v10 = *(v7 + 8);
      v22 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v22 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v14, &v19, &v20);
      PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(a1, &v14);
      v12 = *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v18);
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 &= 0xFFFFFFFFFFFFFFF8;
      }

      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
      if (v15)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
      }

      v14 = a1;
      LODWORD(v15) = PrimIndex;
      v16 = v12;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      std::vector<realityio::mtlx::NeoShadeInput>::push_back[abi:ne200100](a3, &v14);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
      if (v19)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
      }

      v7 += 32;
    }

    while (v8 + 32 != v6);
  }

  v18 = &v23;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void realityio::mtlx::USDDataSource::getShadeOutputs(realityio::mtlx::USDDataSource *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  realityio::mtlx::USDDataSource::getPrim(a1, a2[2], v24);
  v5 = (*(**a2 + 192))(*a2, a2[2]);
  if (v5 == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v35 = (MEMORY[0x277D86778] + 16);
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(&v35);
    MEMORY[0x24C1A5610](&v35);
  }

  else if (v5)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v35 = (MEMORY[0x277D86708] + 16);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetOutputs(&v35);
    MEMORY[0x24C1A5280](&v35);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v40[0] = MEMORY[0x277D86758] + 16;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v6 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutput(&v35, v40, (v6 + 96));
    if (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput())
    {
      v7 = v29;
      if (v29 >= v30)
      {
        v10 = std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdShadeOutput&>(&v28, &v35);
      }

      else
      {
        *v29 = v35;
        v8 = v36;
        *(v7 + 1) = v36;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v7 + 4, &v37);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v7 + 5, &v38);
        v9 = v39;
        *(v7 + 3) = v39;
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(v7 + 3) &= 0xFFFFFFFFFFFFFFF8;
        }

        v10 = (v7 + 8);
      }

      v29 = v10;
    }

    v11 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v11)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::GetSurfaceOutput(&v31, v40, (v11 + 24));
    if (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput())
    {
      v12 = v29;
      if (v29 >= v30)
      {
        v15 = std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdShadeOutput&>(&v28, &v31);
      }

      else
      {
        *v29 = v31;
        v13 = v32;
        *(v12 + 1) = v32;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v12 + 4, &v33);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v12 + 5, &v33 + 1);
        v14 = v34;
        *(v12 + 3) = v34;
        if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(v12 + 3) &= 0xFFFFFFFFFFFFFFF8;
        }

        v15 = (v12 + 8);
      }

      v29 = v15;
    }

    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
    if (v32)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
    }

    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
    if (v36)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
    }

    MEMORY[0x24C1A5510](v40);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  if (v25)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v16 = v29;
  if (v28 != v29)
  {
    v17 = v28 + 4;
    do
    {
      v18 = v17 - 4;
      LODWORD(v35) = *(v17 - 4);
      v19 = *(v17 - 1);
      v36 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37, v17);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38, v17 + 1);
      v20 = *(v17 + 1);
      v39 = v20;
      if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v39 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v31, &v36, &v37);
      PrimIndex = realityio::mtlx::USDDataSource::findPrimIndex(a1, &v31);
      v22 = *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v35);
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v22 &= 0xFFFFFFFFFFFFFFF8;
      }

      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
      if (v32)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
      }

      v31 = a1;
      LODWORD(v32) = PrimIndex;
      v33 = v22;
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v33 &= 0xFFFFFFFFFFFFFFF8;
      }

      std::vector<realityio::mtlx::NeoShadeOutput>::push_back[abi:ne200100](a3, &v31);
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
      if (v36)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
      }

      v17 += 8;
    }

    while (v18 + 8 != v16);
  }

  v35 = &v28;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v35);
}

uint64_t realityio::mtlx::USDDataSource::assignGamut(realityio::mtlx::USDDataSource *a1, const void **a2, _BYTE *a3, uint64_t a4)
{
  realityio::mtlx::USDDataSource::getAttr(&v7, a1, *(a4 + 8), (a4 + 16));
  realityio::assignGamutFromAttribute(a2, a3, &v7);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  result = v8;
  if (v8)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, _DWORD *a2)
{
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator==() & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v5, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v4, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, int *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, int *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = 1;
  v5 = *a2;
  *(a1 + 8) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), a3 + 1);
  *(a1 + 24) = 0;
  v6 = *(a1 + 8);
  if (v6 && (*(v6 + 57) & 8) == 0 && *(v6 + 16) == *(a1 + 16))
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  return a1;
}

void sub_24748D298(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v1 + 2));
  v4 = v1[1];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  _Unwind_Resume(a1);
}

const char *FunctionLite::substringFromPreviousDelim(const char *this, const char *a2, const char *a3)
{
  if (a2)
  {
    if (a2 != this)
    {
      v3 = a2 - 1;
      if (a2 - 1 > this)
      {
        while (*v3 != a3)
        {
          if (--v3 == this)
          {
            goto LABEL_8;
          }
        }

        this = v3;
      }
    }

LABEL_8:
    ++this;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::GetName(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  if (*this != 1)
  {
    return this + 24;
  }

  PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(this);

  return pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(PrimPath);
}

char *pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v2 = this + 16;
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (v3)
  {
    return v2;
  }

  v4 = *(this + 1);
  if (v4)
  {
    return (v4 + 16);
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2F);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdShadeOutput&>(v3);
  }

  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdShadeOutput&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = v8;
  v19 = v8;
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v8 + 16), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v8 + 20), (a2 + 20));
  v10 = *(a2 + 24);
  *(v8 + 24) = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v8 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *&v19 = v8 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>,pxrInternal__aapl__pxrReserved__::UsdShadeOutput*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::~__split_buffer(&v17);
  return v16;
}

void sub_24748D57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>,pxrInternal__aapl__pxrReserved__::UsdShadeOutput*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,pxrInternal__aapl__pxrReserved__::UsdShadeOutput>(a1, a4, v7);
      v7 += 32;
      a4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,0>(a1, v5);
      v5 += 32;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>,pxrInternal__aapl__pxrReserved__::UsdShadeOutput*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

_DWORD *std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,pxrInternal__aapl__pxrReserved__::UsdShadeOutput>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 16), (a3 + 16));
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 20), (a3 + 20));
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = 0;
  return result;
}

uint64_t std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 16);
  result = *(a2 + 8);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>,pxrInternal__aapl__pxrReserved__::UsdShadeOutput*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>,pxrInternal__aapl__pxrReserved__::UsdShadeOutput*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>,pxrInternal__aapl__pxrReserved__::UsdShadeOutput*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 32;
      result = std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 32;
    result = std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,0>(v5, v4 - 32);
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,0>(v3, i))
  {
    i -= 32;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 16);
  result = *(a2 + 8);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((8 * v2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((8 * v2 + 4), a2 + 1);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(&v14);
  return v13;
}

void sub_24748DAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4, v8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, v8 + 1);
      v8 += 2;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v8 != a3);
    v11 = 1;
    do
    {
      std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](a1, v6);
      v6 += 8;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 8;
      result = std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(void **a1)
{
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 8;
      result = std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](v4, v1 - 8);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>(void *a1, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__construct_node_hash<pxrInternal__aapl__pxrReserved__::SdfPath>();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24748DF7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if ((v5 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t *std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      v7 = *v5;
      *(v6 + 8) = *(v5 + 2);
      *v6 = v7;
      *(v6 + 16) = v5[2];
      v5[2] = 0;
      v5 += 3;
      v6 += 24;
    }

    while (v5 != v3);
    do
    {
      v8 = v2[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v2 += 3;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = v3 - 24;
    *(a1 + 16) = v3 - 24;
    v5 = *(v3 - 8);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }

    else
    {
      v3 = v4;
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 2;
      if (v9 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 3)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *>(&v18, a2, a3, v8);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 != v14)
    {
      do
      {
        v16 -= 8;
        result = std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](a1, v16);
      }

      while (v16 != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *>(&v17, a2, (a2 + v12), v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, (a2 + v12), a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 8;
        std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

_DWORD *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4, v6);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, v6 + 1);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *>(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a4, v5);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a4 + 4, v5 + 1);
    a4 += 8;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

void **std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {

    return std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v10);
    }

    v16 = 0;
    v17 = 8 * v8;
    v18 = (8 * v8);
    std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end(&v16, a2);
    v12 = *(a1 + 8);
    v13 = (v17 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    return std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(&v16);
  }
}

void sub_24748E8D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (a2)
  {
    v4 = 8 * a2;
    v5 = result;
    v6 = &result[a2];
    do
    {
      *v5++ = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v4 -= 8;
    }

    while (v4);
    result = v6;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (a2)
  {
    v4 = 8 * a2;
    v5 = result;
    v6 = &result[a2];
    do
    {
      *v5++ = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v4 -= 8;
    }

    while (v4);
    result = v6;
  }

  *(a1 + 16) = result;
  return result;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned int>,0>(a2 + 28);

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned int>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v3 + 28), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, (v5 + 28)))
  {
    return v2;
  }

  return v5;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdPrim const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = v8;
  v19 = v8;
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v8 + 16), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v8 + 20), (a2 + 20));
  v10 = *(a2 + 24);
  *(v8 + 24) = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v8 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *&v19 = v8 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdPrim>::~__split_buffer(&v17);
  return v16;
}

void sub_24748ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdPrim>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,pxrInternal__aapl__pxrReserved__::UsdShadeOutput>(a1, a4, v7);
      v7 += 32;
      a4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,0>(a1, v5);
      v5 += 32;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 32;
      result = std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdPrim>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 32;
    result = std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,0>(v5, v4 - 32);
  }

  return result;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a3, (v4 + 28)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v7 + 28), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned int>,0>(v2 + 28);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdShadeOutput,0>(v3, i))
  {
    i -= 32;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t *std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(uint64_t *result, void *a2)
{
  v3 = a2 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = result;
    v6 = (result + 1);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v2 + 7);
        v9 = v6;
        while (1)
        {
          while (1)
          {
            v10 = v7;
            v11 = *(v7 + 7);
            if (v8 >= v11)
            {
              break;
            }

            v7 = *v10;
            v9 = v10;
            if (!*v10)
            {
              v12 = 1;
              v9 = v10;
              goto LABEL_13;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v9 = v10 + 1;
          v7 = v10[1];
          if (!v7)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }

        v12 = 0;
      }

      else
      {
        v12 = 1;
        v10 = v6;
        v9 = v6;
      }

LABEL_13:
      v13 = v2[1];
      v14 = v13;
      v15 = v2;
      if (v13)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = v15[2];
          v17 = *v16 == v15;
          v15 = v16;
        }

        while (!v17);
      }

      if (v12)
      {
        v18 = v2;
        if (v13)
        {
          do
          {
            v19 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v19 = v18[2];
            v17 = *v19 == v18;
            v18 = v19;
          }

          while (!v17);
        }

        if (*a2 == v2)
        {
          *a2 = v19;
        }

        v20 = a2[1];
        --a2[2];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v20, v2);
        result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(v5, v10, v9, v2);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }

  return result;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t realityio::SkeletalAnimationAssetBuilder::kOutputName(realityio::SkeletalAnimationAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::SkeletalAnimationAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_24748F750(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t realityio::SkeletalAnimationAssetBuilder::kOutputLibraryName(realityio::SkeletalAnimationAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::SkeletalAnimationAssetBuilder::kOutputLibraryName(void)::kOutputLibraryName;
}

void sub_24748F8C0(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::SkeletalAnimationAssetBuilder::kOutputBlendShapeName(realityio::SkeletalAnimationAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::SkeletalAnimationAssetBuilder::kOutputBlendShapeName(void)::kOutputBlendShapeName;
}

void sub_24748F978(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetBuilder(realityio::SkeletalAnimationAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "SkeletalAnimationAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kSkeletalAnimationAssetBuilderIdentifier);
  realityio::generateSkeletalAnimationDirtyStageSubscription(&v4);
  v8[0] = &unk_285942F20;
  v8[3] = v8;
  v7[0] = &unk_285943068;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_24748FB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(v24 + 464, *(v24 + 472));
  realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::~BlendShapeAnimationAssetDataT((v24 + 400));
  realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT((v24 + 280));
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

void sub_24748FCBC(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v1 + 216);
  v4 = *(v1 + 26);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 24);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(v1);
  _Unwind_Resume(a1);
}

void realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::~BlendShapeAnimationAssetDataT(char **this)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>>>::destroy(this[6]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void realityio::DynamicBuilder::~DynamicBuilder(realityio::DynamicBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

uint64_t realityio::SkeletalAnimationAssetBuilder::run(realityio::SkeletalAnimationAssetBuilder *this, realityio::Inputs *a2)
{
  v112 = *MEMORY[0x277D85DE8];
  v82 = a2;
  v3 = (a2 + 32);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v78, v4, v3);
  MEMORY[0x24C1A4F20](v76);
  v5 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v73 = MEMORY[0x277D86760] + 16;
  v6 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_INFO, "Saving skeletal animation asset reference", &buf, 2u);
  }

  realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v72, 2030, this);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v78))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&buf, &v78);
    v7 = *(&buf + 1);
    if (*(&buf + 1))
    {
      if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&buf + 1) + 14))
      {
        v7 = buf;
      }

      else
      {
        v7 = 0;
      }
    }

    v71 = v7;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v71);
    v8 = *(&buf + 1);
    if (*(&buf + 1) && atomic_fetch_add_explicit((*(&buf + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v71);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v9);
    if (v10 != 0.0)
    {
      v70 = 1.0 / v10;
      std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 464, *(this + 59));
      *(this + 59) = 0;
      *(this + 60) = 0;
      *(this + 58) = this + 472;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v69[3] = 0;
      v69[0] = MEMORY[0x277D86790] + 16;
      v11 = atomic_load(&realityio::tokens::AnimationBuilderTokens);
      if (!v11)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::AnimationBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::AnimationBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(&buf, v69, (v11 + 8));
      v64 = buf;
      v65 = *(&buf + 1);
      if (*(&buf + 1))
      {
        atomic_fetch_add_explicit((*(&buf + 1) + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v66, &v57);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v67, &v57 + 1);
      v68 = *(&v57 + 1);
      if ((BYTE8(v57) & 7) != 0 && (atomic_fetch_add_explicit((*(&v57 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v68 &= 0xFFFFFFFFFFFFFFF8;
      }

      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((BYTE8(v57) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v57 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
      if (*(&buf + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
      }

      v12 = atomic_load(&realityio::tokens::AnimationBuilderTokens);
      if (!v12)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::AnimationBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::AnimationBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(&buf, v69, (v12 + 16));
      v59 = buf;
      v60 = *(&buf + 1);
      if (*(&buf + 1))
      {
        atomic_fetch_add_explicit((*(&buf + 1) + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v61, &v57);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v62, &v57 + 1);
      v63 = *(&v57 + 1);
      if ((BYTE8(v57) & 7) != 0 && (atomic_fetch_add_explicit((*(&v57 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v63 &= 0xFFFFFFFFFFFFFFF8;
      }

      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((BYTE8(v57) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v57 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
      if (*(&buf + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
      }

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v64) && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v59))
      {
        v58 = 0;
        buf = 0u;
        v57 = 0u;
        memset(v55, 0, 40);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>();
      }

      if (buf == 1)
      {
        v13 = realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::operator=(this + 280, &buf + 8);
        v15 = *(this + 2);
        v14 = *(this + 3);
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        realityio::SkeletalAnimationAssetBuilder::kOutputName(v13);
        std::mutex::lock(v15 + 1);
        operator new();
      }

      memset(v55, 0, 120);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      memset(v55 + 8, 0, 112);
      realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::operator=(this + 280, v55);
      realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT(v55);
      v16 = v82;
      v18 = realityio::MeshModelDescriptorBuilder::kModelDescriptorOutputName(v17);
      realityio::Inputs::getAccumulatedValues<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>(v16, v18, v52);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v82 + 8));
      v19 = v70;
      v20 = *(this + 44);
      v49 = 0;
      v50 = 0;
      v51 = 0;
      if (v52[0] == 1)
      {
        std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*>(&v49, v53, v54, (v54 - v53) >> 4);
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v108, &v74, &v75);
      pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetAnimQuery(&v107, v76, &v108);
      if ((BYTE8(v109) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v109 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v109);
      if (*(&v108 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v108 + 1));
      }

      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0;
      v101 = 0;
      v103 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetBlendShapeOrder(&v108, &v107);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v104);
      v45 = v20;
      v104 = v108;
      v105 = v109;
      v108 = 0u;
      v109 = 0u;
      v106 = v110;
      *&v110 = 0;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v108);
      std::vector<char const*>::resize(&v101, v104);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v104);
      v21 = v106;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v104);
      v48 = v104;
      v22 = &v106[v104];
      if (v21 != v22)
      {
        v23 = v101;
        do
        {
          v24 = *v21 & 0xFFFFFFFFFFFFFFF8;
          if (v24)
          {
            v25 = (v24 + 16);
            if (*(v24 + 39) < 0)
            {
              v25 = *v25;
            }
          }

          else
          {
            v25 = "";
          }

          *v23++ = v25;
          ++v21;
        }

        while (v21 != v22);
      }

      memset(v99, 0, sizeof(v99));
      v100 = 1065353216;
      if (v48)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v104);
        if ((*v106 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v106 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
        }

        operator new();
      }

      v97 = 0;
      v96 = 0;
      v98 = 0;
      BlendShapeWeightTimeSamples = pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetBlendShapeWeightTimeSamples();
      if (v97 == v96)
      {
        v37 = *(realityio::logObjects(BlendShapeWeightTimeSamples) + 24);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v73, &__p);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&__p);
          LODWORD(v108) = 136315138;
          *(&v108 + 4) = Text;
          _os_log_impl(&dword_247485000, v37, OS_LOG_TYPE_DEFAULT, "EntitySkeletalAnimationBuilder stopping operation to read blendshape animation because no animation found in %s.", &v108, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
        }

        v39 = std::system_category();
        LOBYTE(v55[0]) = 0;
        *(&v55[0] + 1) = 0;
        *&v55[1] = v39;
      }

      else
      {
        v27 = *v96;
        LODWORD(v21) = vcvtpd_u64_f64(*(v97 - 1) - *v96 + 1.0);
        if (v21 == 1)
        {
          v28 = *v96 + 1.0;
        }

        else
        {
          v28 = *(v97 - 1);
        }

        memset(v95, 0, sizeof(v95));
        memset(__src, 0, sizeof(__src));
        if (v21)
        {
          *&v110 = __src;
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(v21);
        }

        v93 = 0;
        v92 = 0;
        v91 = &v92;
        if (v50 != v49)
        {
          v29 = 0;
          v30 = (v50 - v49) >> 4;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v46 = v30;
          do
          {
            v47 = v29;
            v31 = (v49 + 16 * v29);
            v33 = *v31;
            v32 = v31[1];
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v33)
            {
              v35 = *(v33 + 56);
              v34 = *(v33 + 64);
              v36 = v34 - v35;
              if (v34 != v35)
              {
                v109 = 0u;
                v110 = 0u;
                v108 = 0u;
                std::vector<std::string>::resize(&v108, v36 >> 5);
                memset(v90, 0, sizeof(v90));
                std::vector<float>::__vallocate[abi:ne200100](v90, v36 >> 5);
              }
            }

            if (v32)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
            }

            v29 = v47 + 1;
          }

          while (v47 + 1 != v46);
        }

        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v73, v90);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p, v90);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p + 1, v90 + 1);
        LODWORD(v84) = v45;
        v85 = v19 * v27;
        v86 = v19 * v28;
        v87 = v19;
        v88 = v91;
        v89[0] = v92;
        v89[1] = v93;
        if (v93)
        {
          *(v92 + 2) = v89;
          v91 = &v92;
          v92 = 0;
          v93 = 0;
        }

        else
        {
          v88 = v89;
        }

        realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::BlendShapeAnimationAssetDataT(&v108, &__p);
        LOBYTE(v55[0]) = 1;
        realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::BlendShapeAnimationAssetDataT(v55 + 8, &v108);
        realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::~BlendShapeAnimationAssetDataT(&v108);
        realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::~BlendShapeAnimationAssetDataT(&__p);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v90);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>>>::destroy(v92);
        *&v108 = __src;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v108);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v95);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v99);
      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v104);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v107);
      *&v108 = &v49;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v108);
      if (LOBYTE(v55[0]) == 1)
      {
        v40 = realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::operator=(this + 400, v55 + 8);
        v42 = *(this + 2);
        v41 = *(this + 3);
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        realityio::SkeletalAnimationAssetBuilder::kOutputBlendShapeName(v40);
        std::mutex::lock(v42 + 1);
        operator new();
      }

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v111 = 0uLL;
      v109 = 0uLL;
      *&v110 = 0;
      *(&v110 + 1) = &v111;
      realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::operator=(this + 400, &v108);
      realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::~BlendShapeAnimationAssetDataT(&v108);
      if (LOBYTE(v55[0]) == 1)
      {
        realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::~BlendShapeAnimationAssetDataT(v55 + 1);
      }

      realityio::Result<std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,realityio::DetailedError>::~Result(v52);
      if (buf == 1)
      {
        realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT((&buf + 8));
      }

      if ((v63 & 7) != 0)
      {
        atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v61);
      if (v60)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60);
      }

      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
      if (v65)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65);
      }

      MEMORY[0x24C1A56A0](v69);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v71);
  }

  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v72);
  MEMORY[0x24C1A5530](&v73);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
  result = v79;
  if (v79)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v79);
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247491534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v72 - 208);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&a27);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a43);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a59);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a63);
  MEMORY[0x24C1A56A0](&a67);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a72);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&STACK[0x200]);
  MEMORY[0x24C1A5530](&STACK[0x210]);
  if (STACK[0x230])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x230]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x238]);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2F);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return realityio::Outputs::storeValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(v3);
  }

  return result;
}

atomic_uint **anonymous namespace::makeSampledSkeletalPoseAnimationData(_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::UsdSkelCache *a2, const pxrInternal__aapl__pxrReserved__::UsdSkelAnimation *a3, double a4)
{
  v41 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&buf, a3 + 1, a3 + 4);
  pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetAnimQuery(&v37, a2, &buf);
  if ((BYTE8(v39) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v39 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
  if (*(&buf + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetJointOrder(&buf, &v37);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v34);
  v34 = buf;
  v35 = v39;
  buf = 0u;
  v39 = 0u;
  v36 = v40;
  v40 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&buf);
  std::vector<char const*>::resize(&v31, v34);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v34);
  v6 = v36;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v34);
  v7 = &v36[v34];
  if (v6 != v7)
  {
    v8 = v31;
    do
    {
      v9 = *v6 & 0xFFFFFFFFFFFFFFF8;
      if (v9)
      {
        v10 = (v9 + 16);
        if (*(v9 + 39) < 0)
        {
          v10 = *v10;
        }
      }

      else
      {
        v10 = "";
      }

      *v8++ = v10;
      ++v6;
    }

    while (v6 != v7);
  }

  memset(v30, 0, sizeof(v30));
  memset(v29, 0, 40);
  memset(v28, 0, 40);
  __p = 0;
  v26 = 0;
  v27 = 0;
  __src = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  JointTransformTimeSamples = pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetJointTransformTimeSamples();
  v12 = *(realityio::logObjects(JointTransformTimeSamples) + 24);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(a3, &v18);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v18);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = Text;
    _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_DEFAULT, "EntitySkeletalAnimationBuilder stopping operation to read skeletal animation because no animation found in %s.", &buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  }

  v14 = std::system_category();
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v14;
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (__src)
  {
    v23 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v28);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v29);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v30);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v34);
  result = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v37);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24749223C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::operator=(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, (a2 + 4));
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  if (a1 != a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef((a1 + 32));
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a1 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v7 = *(a1 + 96);
  if (v7)
  {
    *(a1 + 104) = v7;
    operator delete(v7);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

void realityio::Inputs::getAccumulatedValues<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = 0;
  v34 = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    v34 = std::__shared_weak_count::lock(v6);
    if (v34)
    {
      v33 = *(a1 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v35, a2);
  v7 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a1 + 8), &v33);
  v8 = v7;
  v10 = v9;
  if (v7 == v9)
  {
    std::operator+<char>();
    v11 = std::string::append(&v31, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 32));
    v14 = *(String + 23);
    if (v14 >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    if (v14 >= 0)
    {
      v16 = *(String + 23);
    }

    else
    {
      v16 = *(String + 8);
    }

    v17 = std::string::append(&v32, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v36[0].__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v36[0].__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(v36, ")");
    v20 = *&v19->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v19->__r_.__value_.__l + 2);
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v37, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *v37;
    v21 = v38;
    *(a3 + 24) = *&v37[16];
    *(a3 + 32) = v21;
    *(a3 + 39) = *(&v38 + 7);
    LOBYTE(v21) = HIBYTE(v38);
    v38 = 0uLL;
    *&v37[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v21;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
    do
    {
      v22 = *(v8 + 5);
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(v8 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>(v24, EmptyString, v37);
      if (v37[0])
      {
        v27 = *&v37[8];
        v26 = *&v37[16];
        if (*&v37[16])
        {
          atomic_fetch_add_explicit((*&v37[16] + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          __p[0] = 1;
          *&__p[8] = v27;
          *&__p[16] = v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        else
        {
          __p[0] = 1;
          *&__p[8] = *&v37[8];
          *&__p[16] = 0;
        }
      }

      else
      {
        *&v36[0].__r_.__value_.__l.__data_ = *&v37[8];
        if (SHIBYTE(v39) < 0)
        {
          std::string::__init_copy_ctor_external(&v36[0].__r_.__value_.__r.__words[2], v38, *(&v38 + 1));
        }

        else
        {
          *&v36[0].__r_.__value_.__r.__words[2] = v38;
          v36[1].__r_.__value_.__l.__size_ = v39;
        }

        __p[0] = 0;
        *&__p[8] = *&v36[0].__r_.__value_.__l.__data_;
        v29 = *&v36[0].__r_.__value_.__r.__words[2];
        size = v36[1].__r_.__value_.__l.__size_;
      }

      realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v37);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (__p[0] == 1)
      {
        std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::push_back[abi:ne200100](&v32.__r_.__value_.__l.__data_, &__p[8]);
      }

      v7 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
      v8 = *v8;
    }

    while (v8 != v10);
    memset(v37, 0, sizeof(v37));
    std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*>(v37, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_, (v32.__r_.__value_.__l.__size_ - v32.__r_.__value_.__r.__words[0]) >> 4);
    *a3 = 1;
    *(a3 + 8) = *v37;
    *(a3 + 24) = *&v37[16];
    memset(v37, 0, sizeof(v37));
    *__p = v37;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__p);
    *v37 = &v32;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v37);
  }

  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_2474927B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  a9 = &a22;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if ((a30 & 7) != 0)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::operator=(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, (a2 + 4));
  v4 = *(a2 + 24);
  v6 = a1 + 48;
  v5 = *(a1 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>>>::destroy(v5);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v7 = (a2 + 48);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  if (v9)
  {
    *(v8 + 16) = v6;
    *(a2 + 40) = v7;
    *v7 = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a1 + 40) = v6;
  }

  return a1;
}

void realityio::SkeletalAnimationAssetBuilder::clear(realityio::SkeletalAnimationAssetBuilder *this, realityio::Inputs *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = realityio::SkeletalAnimationAssetBuilder::kOutputName(this);
  realityio::Outputs::getRawValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>(v3, v5, v30);
  v7 = v30[0].__r_.__value_.__s.__data_[0];
  if ((v30[0].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    v31 = *&v30[0].__r_.__value_.__r.__words[1];
    if (SHIBYTE(v30[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, v30[1].__r_.__value_.__l.__data_, v30[1].__r_.__value_.__l.__size_);
      data = v32.__r_.__value_.__r.__words[0];
      v29 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      if ((v30[0].__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(v30[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30[1].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v32 = v30[1];
      data = v30[1].__r_.__value_.__l.__data_;
      v29 = HIBYTE(v30[1].__r_.__value_.__r.__words[2]);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v7)
  {
    v9 = *(this + 2);
    v8 = *(this + 3);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = realityio::SkeletalAnimationAssetBuilder::kOutputName(v6);
    std::mutex::lock((v9 + 64));
    if (v9 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v9 + 40, v10))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v9 + 40), v10);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v9, v10);
    std::mutex::unlock((v9 + 64));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v11 = *(this + 2);
  v12 = *(this + 3);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = realityio::SkeletalAnimationAssetBuilder::kOutputLibraryName(v6);
  realityio::Outputs::getRawValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(v11, v13, v30);
  v15 = v30[0].__r_.__value_.__s.__data_[0];
  if ((v30[0].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    v31 = *&v30[0].__r_.__value_.__r.__words[1];
    if (SHIBYTE(v30[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, v30[1].__r_.__value_.__l.__data_, v30[1].__r_.__value_.__l.__size_);
      v27 = v32.__r_.__value_.__r.__words[0];
      LOBYTE(v3) = *(&v32.__r_.__value_.__s + 23);
      if ((v30[0].__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(v30[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30[1].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v32 = v30[1];
      v27 = v30[1].__r_.__value_.__l.__data_;
      LOBYTE(v3) = *(&v30[1].__r_.__value_.__s + 23);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v15)
  {
    v17 = *(this + 2);
    v16 = *(this + 3);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = realityio::SkeletalAnimationAssetBuilder::kOutputLibraryName(v14);
    std::mutex::lock((v17 + 64));
    if (v17 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v17 + 40, v18))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v17 + 40), v18);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v17, v18);
    std::mutex::unlock((v17 + 64));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v19 = *(this + 2);
  v20 = *(this + 3);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = realityio::SkeletalAnimationAssetBuilder::kOutputBlendShapeName(v14);
  realityio::Outputs::getRawValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(v19, v21, v30);
  v23 = v30[0].__r_.__value_.__s.__data_[0];
  if ((v30[0].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    v31 = *&v30[0].__r_.__value_.__r.__words[1];
    if (SHIBYTE(v30[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, v30[1].__r_.__value_.__l.__data_, v30[1].__r_.__value_.__l.__size_);
      v19 = v32.__r_.__value_.__r.__words[0];
      LOBYTE(v11) = *(&v32.__r_.__value_.__s + 23);
      if ((v30[0].__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(v30[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30[1].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v32 = v30[1];
      v19 = v30[1].__r_.__value_.__l.__data_;
      LOBYTE(v11) = *(&v30[1].__r_.__value_.__s + 23);
    }
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v23)
  {
    v25 = *(this + 2);
    v24 = *(this + 3);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = realityio::SkeletalAnimationAssetBuilder::kOutputBlendShapeName(v22);
    std::mutex::lock((v25 + 64));
    if (v25 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v25 + 40, v26))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v25 + 40), v26);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v25, v26);
    std::mutex::unlock((v25 + 64));
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 464, *(this + 59));
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 58) = this + 472;
  memset(v30, 0, sizeof(v30));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  memset(&v30[0].__r_.__value_.__r.__words[1], 0, 112);
  realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::operator=(this + 280, v30);
  realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT(v30);
  if ((v23 & 1) == 0 && (v11 & 0x80) != 0)
  {
    operator delete(v19);
  }

  if ((v15 & 1) == 0 && (v3 & 0x80) != 0)
  {
    operator delete(v27);
  }

  if ((v7 & 1) == 0 && v29 < 0)
  {
    operator delete(data);
  }
}

void sub_247492D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, int a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if ((a14 & 1) == 0 && a22 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if ((v25 & 1) == 0 && v22 < 0)
  {
    operator delete(a10);
  }

  if ((v24 & 1) == 0 && a13 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::createTimelineDefinitionRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 104) - *(a1 + 96);
  if (!v4)
  {
    return 0;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  memset(&v60, 0, sizeof(v60));
  v57 = 0;
  v58 = 0;
  v59 = 0;
  std::vector<RESRT const*>::reserve(&v61, v4 >> 3);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  if (v5 != v6)
  {
    v7 = v62;
    do
    {
      v8 = *(a1 + 72) + 48 * *v5;
      if (v7 >= v63)
      {
        v9 = (v7 - v61) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v63 - v61) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(&v61, v11);
        }

        v12 = (8 * v9);
        *v12 = v8;
        v7 = (8 * v9 + 8);
        v13 = v12 - (v62 - v61);
        memcpy(v13, v61, v62 - v61);
        v14 = v61;
        v61 = v13;
        v62 = v7;
        v63 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v7++ = v8;
      }

      v62 = v7;
      ++v5;
    }

    while (v5 != v6);
  }

  std::vector<std::string>::reserve(&v60, *(a1 + 32));
  std::vector<char const*>::reserve(&v57, *(a1 + 32));
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(a1 + 64);
    for (i = 8 * v15; i; i -= 8)
    {
      v18 = *v16 & 0xFFFFFFFFFFFFFFF8;
      if (v18)
      {
        if (*(v18 + 39) < 0)
        {
          v19 = *(v18 + 16);
          if (*(v18 + 24) > 1uLL)
          {
LABEL_26:
            if (*v19 == 47)
            {
              ++v19;
            }
          }
        }

        else
        {
          v19 = (v18 + 16);
          if (*(v18 + 39) >= 2u)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v19 = "";
      }

      std::string::basic_string[abi:ne200100]<0>(&v55, v19);
      end = v60.__end_;
      if (v60.__end_ >= v60.__end_cap_.__value_)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v60.__end_ - v60.__begin_) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v60.__end_cap_.__value_ - v60.__begin_) >> 3) > v24)
        {
          v24 = 0x5555555555555556 * ((v60.__end_cap_.__value_ - v60.__begin_) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v60.__end_cap_.__value_ - v60.__begin_) >> 3) >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v24;
        }

        v51.__end_cap_.__value_ = &v60;
        if (v25)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v60, v25);
        }

        v26 = 8 * ((v60.__end_ - v60.__begin_) >> 3);
        v27 = v55;
        *(v26 + 16) = v56;
        *v26 = v27;
        v56 = 0;
        v55 = 0uLL;
        v22 = (24 * v23 + 24);
        v28 = (24 * v23 - (v60.__end_ - v60.__begin_));
        memcpy((v26 - (v60.__end_ - v60.__begin_)), v60.__begin_, v60.__end_ - v60.__begin_);
        begin = v60.__begin_;
        value = v60.__end_cap_.__value_;
        v60.__begin_ = v28;
        v60.__end_ = v22;
        v60.__end_cap_.__value_ = 0;
        v51.__end_ = begin;
        v51.__end_cap_.__value_ = value;
        v51.__first_ = begin;
        v51.__begin_ = begin;
        std::__split_buffer<std::string>::~__split_buffer(&v51);
        v60.__end_ = v22;
        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55);
          v22 = v60.__end_;
        }
      }

      else
      {
        v21 = v55;
        v60.__end_->__r_.__value_.__r.__words[2] = v56;
        *&end->__r_.__value_.__l.__data_ = v21;
        v22 = end + 1;
        v60.__end_ = end + 1;
      }

      v31 = v22 - 1;
      if (SHIBYTE(v22[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        v31 = v31->__r_.__value_.__r.__words[0];
      }

      v51.__first_ = v31;
      std::vector<char const*>::push_back[abi:ne200100](&v57, &v51);
      ++v16;
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v51);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51.__end_, "[", 1);
  v33 = MEMORY[0x24C1A8F30](v32, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "]", 1);
  std::stringbuf::str();
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(String, &v55, &v49);
  std::string::basic_string[abi:ne200100]<0>(&v46, "SkeletalPose.SkeletalPoses");
  if (v56 >= 0)
  {
    v35 = &v55;
  }

  else
  {
    v35 = v55;
  }

  if (v56 >= 0)
  {
    v36 = HIBYTE(v56);
  }

  else
  {
    v36 = *(&v55 + 1);
  }

  v37 = std::string::append(&v46, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v48 = v37->__r_.__value_.__r.__words[2];
  *__p = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  SampledSkeletalPoseAnimation = RETimelineDefinitionCreateSampledSkeletalPoseAnimation();
  RETimelineDefinitionSetFillMode();
  RETimelineDefinitionSetTargetPath();
  RETimelineDefinitionSetAdditive();
  v40 = *(a1 + 24);
  RETimelineDefinitionSetFrameInterval();
  RETimelineDefinitionSetStartTime();
  v41 = *(a1 + 16) - *(a1 + 8);
  RETimelineDefinitionSetEndTime();
  if (a3)
  {
    RETimelineDefinitionSetSkeleton();
  }

  RETimelineDefinitionSetSkeletalPoses();
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  v51.__first_ = *MEMORY[0x277D82818];
  v42 = *(MEMORY[0x277D82818] + 72);
  *(&v51.__first_ + v51.__first_[-1].__r_.__value_.__r.__words[0]) = *(MEMORY[0x277D82818] + 64);
  v51.__end_ = v42;
  v51.__end_cap_.__value_ = (MEMORY[0x277D82878] + 16);
  if (v53 < 0)
  {
    operator delete(v52);
  }

  v51.__end_cap_.__value_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v51.__end_cap_.std::__compressed_pair_elem<std::allocator<std::string> &, 1, false>);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v54);
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  v51.__first_ = &v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v51);
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return SampledSkeletalPoseAnimation;
}

void sub_24749348C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v31 - 169) < 0)
  {
    operator delete(*(v31 - 192));
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a31);
  v33 = *(v31 - 168);
  if (v33)
  {
    *(v31 - 160) = v33;
    operator delete(v33);
  }

  *(v31 - 168) = v31 - 144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v31 - 168));
  v34 = *(v31 - 120);
  if (v34)
  {
    *(v31 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void *std::vector<RESRT const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(result, a2);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }
}

void *std::vector<char const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(result, a2);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v10);
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

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
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

void sub_247493AB4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](v1);
  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](a1 + 128);
  return a1;
}

uint64_t realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::createTimelineDefinitionForBlendShapeSamples(realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT *this, const realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples *a2, uint64_t a3)
{
  v3 = *(a2 + 1) - *a2;
  if (!v3)
  {
    return 0;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::vector<char const*>::reserve(&v38, 0xAAAAAAAAAAAAAAABLL * (v3 >> 3));
  v7 = *a2;
  v8 = *(a2 + 1);
  while (v7 != v8)
  {
    v9 = v7;
    if (*(v7 + 23) < 0)
    {
      v9 = *v7;
    }

    v32[0] = v9;
    std::vector<char const*>::push_back[abi:ne200100](&v38, v32);
    v7 += 24;
  }

  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  if (v10 != v11)
  {
    operator new();
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v32);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "[", 1);
  v14 = MEMORY[0x24C1A8F10](v13, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "]", 1);
  std::stringbuf::str();
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(this);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(String, v30, &v28);
  std::string::basic_string[abi:ne200100]<0>(&v25, "BlendShapeWeights.blendWeights");
  if ((v31 & 0x80u) == 0)
  {
    v16 = v30;
  }

  else
  {
    v16 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v17 = v31;
  }

  else
  {
    v17 = v30[1];
  }

  v18 = std::string::append(&v25, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v27 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  SampledBlendShapeWeightsAnimation = RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation();
  RETimelineDefinitionSetFillMode();
  RETimelineDefinitionSetTargetPath();
  RETimelineDefinitionSetAdditive();
  v21 = *(this + 4);
  RETimelineDefinitionSetFrameInterval();
  RETimelineDefinitionSetStartTime();
  v22 = *(this + 3) - *(this + 2);
  RETimelineDefinitionSetEndTime();
  if (RETimelineDefinitionSetBlendShapeWeightsData())
  {
    v12 = SampledBlendShapeWeightsAnimation;
  }

  else
  {
    v12 = 0;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v32[0] = *MEMORY[0x277D82818];
  v23 = *(MEMORY[0x277D82818] + 72);
  *(v32 + *(v32[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v33 = v23;
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v37);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v12;
}

void sub_247494180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a36);
  if (v36)
  {
    operator delete(v36);
  }

  v39 = *(v37 - 112);
  if (v39)
  {
    *(v37 - 104) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void realityio::SkeletalAnimationAssetBuilder::~SkeletalAnimationAssetBuilder(realityio::SkeletalAnimationAssetBuilder *this)
{
  realityio::SkeletalAnimationAssetBuilder::~SkeletalAnimationAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285942EA8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 536);
  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 464, *(this + 59));
  realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::~BlendShapeAnimationAssetDataT(this + 50);
  realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT((this + 280));
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

const void **realityio::DynamicBuilder::description@<X0>(realityio::DynamicBuilder *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  v4 = *(this + 24) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (v4 + 16);
    if (*(v4 + 39) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = "";
  }

  v6 = *(this + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v6)
  {
    v7 = (v6 + 16);
    if (*(v6 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  else
  {
    v7 = "";
  }

  realityio::DirtyStageSubscription::description(*(this + 25), &v9);
  *a2 = CFStringCreateWithFormat(0, 0, @"<%s: %p { identifier: %s, dirtyStageSubscription: %@ }>", v5, this, v7, v9);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v9);
}

void sub_24749432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v6);
  _Unwind_Resume(a1);
}

uint64_t realityio::DynamicBuilder::identifier@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 184);
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

uint64_t realityio::DynamicBuilder::dirtyStageSubscription@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 208);
  *a2 = *(this + 200);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t realityio::DynamicBuilder::inputsDescriptor(realityio::DynamicBuilder *this)
{
  v2 = *(this + 30);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t realityio::DynamicBuilder::outputsDescriptor(realityio::DynamicBuilder *this)
{
  v2 = *(this + 34);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void realityio::Builder::Builder(realityio::Builder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *this = &unk_285943398;
  v4 = (this + 12);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 2, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4, a2 + 1);
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0u;
  *(this + 19) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 21) = 0;
  v5 = realityio::Builder::sCreationOrderIndex++;
  *(this + 44) = v5;
  operator new();
}

void sub_2474945C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(v5, *(v2 + 144));
  v7 = *(v2 + 112);
  if (v7)
  {
    *(v2 + 120) = v7;
    operator delete(v7);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<unsigned int>::destroy(v3, *(v2 + 48));
  v8 = *(v2 + 24);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v2 + 8));
  _Unwind_Resume(a1);
}

void realityio::Builder::~Builder(realityio::Builder *this)
{
  *this = &unk_285943398;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(this + 136, *(this + 18));
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v4 = (this + 88);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 64);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<unsigned int>::destroy(this + 40, *(this + 6));
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
}

void std::__shared_ptr_emplace<realityio::Outputs>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859433F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::Outputs::~Outputs(std::mutex *this)
{
  std::mutex::~mutex(this + 1);
  std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::destroy(&this->__m_.__opaque[32], *&this->__m_.__opaque[40]);

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(a1, a2[1]);
    std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy((a2 + 5), a2[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

void std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *realityio::WrappedRERef<REAsset *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples>>>::destroy(*(a1 + 1));
    v2 = (a1 + 64);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
    v2 = (a1 + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 32));
    operator delete(a1);
  }
}

void realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::PerMeshBlendShapeSamples::~PerMeshBlendShapeSamples(void **this)
{
  v2 = this + 3;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT(realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = a1 + 3;
    v2 = a1[3];
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v6 = *(*v3 + 8);
        if (v6)
        {
          v6();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v4 = a1[4];
      if (*a1)
      {
        v5 = 8 * *a1;
        do
        {
          if ((*v4 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          ++v4;
          v5 -= 8;
        }

        while (v5);
        v4 = a1[4];
      }

      operator delete(v4 - 2);
    }

    *v3 = 0;
    v3[1] = 0;
  }
}

realityio::internal::AriadneSignpostScopeGuard *realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(realityio::internal::AriadneSignpostScopeGuard *this, int a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  if (realityio::internal::enableSignposts(0, 0))
  {
    v4 = *this;
    kdebug_trace();
  }

  return this;
}

void std::vector<char const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<char const*>::__append(a1, a2 - v2);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *this@<X0>, _DWORD *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (v4 || (this = *(this + 1)) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2, this + 4);
    v5 = a2 + 1;
    v6 = (this + 20);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2, v8);
    v5 = a2 + 1;
    v6 = v8 + 1;
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v5, v6);
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(result, a2);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<char const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::TfToken]");
      Copy = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateCopy(this, *(this + 4), *this, *this);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(this);
      *(this + 4) = Copy;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateCopy(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  result = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(a1, a3);
  if (a4)
  {
    v7 = 8 * a4;
    v8 = result;
    do
    {
      v9 = *a2;
      *v8 = *a2;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++a2;
      ++v8;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::~Auto(pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto *this)
{
  if (*this)
  {
    v2 = *(this + 2);
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *this = 0;
  }
}

{
  if (*this)
  {
    v2 = *(this + 2);
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *this = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(uint64_t a1)
{
  v2 = atomic_load(MEMORY[0x277D86538]);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    *a1 = v3;
    *(a1 + 8) = 2 * (v3 != 0);
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RESRT>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3h]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 6 * v5;
        v9 = New;
        do
        {
          v10 = *v4;
          *(v9 + 2) = *(v4 + 2);
          *v9 = v10;
          v9 = (v9 + 6);
          v4 = (v4 + 6);
          v8 -= 6;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = (a1 + 24);
    v2 = *(a1 + 24);
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v4 = *(*v3 + 8);
        if (v4)
        {
          v4();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete((*(a1 + 32) - 16));
    }

    *v3 = 0;
    v3[1] = 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x1555555555555552)
  {
    v3 = -1;
  }

  else
  {
    v3 = 6 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuatf]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 16 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 16;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3f]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 12 * v5;
        v9 = New;
        do
        {
          v10 = *v4;
          *(v9 + 2) = *(v4 + 2);
          *v9 = v10;
          v9 = (v9 + 12);
          v4 = (v4 + 12);
          v8 -= 12;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::SkeletalAnimationAssetDataT(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}