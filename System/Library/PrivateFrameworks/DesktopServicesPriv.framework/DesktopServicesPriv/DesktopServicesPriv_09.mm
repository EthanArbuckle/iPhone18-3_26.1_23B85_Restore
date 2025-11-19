void sub_1E571AB80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *(a4 + 8);
  v30 = *a4;
  v31 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = TCFURLInfo::LessThan(v10, &v30);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v14;
    v15 = *a4;
    v16 = *(a3 + 8);
    v30 = *a3;
    v31 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = TCFURLInfo::LessThan(v15, &v30);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v17)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v19;
      v20 = *a3;
      v21 = *(a2 + 8);
      v30 = *a2;
      v31 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = TCFURLInfo::LessThan(v20, &v30);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v22)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        v24 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v24;
        v25 = *a2;
        v26 = *(a1 + 8);
        v30 = *a1;
        v31 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v27 = TCFURLInfo::LessThan(v25, &v30);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v27)
        {
          v28 = *a1;
          *a1 = *a2;
          *a2 = v28;
          v29 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v29;
        }
      }
    }
  }
}

void sub_1E571AD6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 16);
        v6 = *(a1 + 8);
        v30 = *a1;
        v31 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = TCFURLInfo::LessThan(v5, &v30);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        if (v7)
        {
          v8 = *a1;
          *a1 = *(v2 - 16);
          *(v2 - 16) = v8;
          v9 = *(a1 + 8);
          *(a1 + 8) = *(v2 - 8);
          *(v2 - 8) = v9;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a2 - 16);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a1 + 32, a2 - 16);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
      return 1;
  }

LABEL_15:
  v10 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == v2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    v15 = *v10;
    v16 = *(v10 + 8);
    v30 = v15;
    v31 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = TCFURLInfo::LessThan(v14, &v30);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v17)
    {
      v18 = v2;
      v19 = *v11;
      v29 = *(v11 + 8);
      v20 = v12;
      *v11 = 0;
      *(v11 + 8) = 0;
      while (1)
      {
        v21 = a1 + v20;
        v22 = *(a1 + v20 + 32);
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        v23 = *(a1 + v20 + 56);
        *(v21 + 48) = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (v20 == -32)
        {
          break;
        }

        v24 = *(a1 + v20 + 24);
        v30 = *(a1 + v20 + 16);
        v31 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = TCFURLInfo::LessThan(v19, &v30);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v20 -= 16;
        if (!v25)
        {
          v26 = (a1 + v20 + 48);
          goto LABEL_33;
        }
      }

      v26 = a1;
LABEL_33:
      v27 = v26[1];
      *v26 = v19;
      v26[1] = v29;
      v2 = v18;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (++v13 == 8)
      {
        return v11 + 16 == v18;
      }
    }

    v10 = v11;
    v12 += 16;
    v11 += 16;
    if (v11 == v2)
    {
      return 1;
    }
  }
}

void sub_1E571B00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(void)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void *std::function<void ()(NSDictionary<NSString *,NSObject *> *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSDictionary<NSString *,NSObject *> *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(NSDictionary<NSString *,NSObject *> *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(NSDictionary<NSString *,NSObject *> *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void std::function<void ()(NSDictionary<NSString *,NSObject *> *)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
}

uint64_t TKeyValueObserver::TKeyValueObserver(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  v4 = a2 + 1;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  v5 = *(a2 + 3);
  a2[3] = 0;
  *(a1 + 24) = v5;
  a2[4] = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2 + 4, &stru_1F5F42870);
  *v4 = 0;
  v4[1] = 0;
  return a1;
}

void TKeyValueObserver::StartObservingPriv(TKeyValueObserver *this, DS_TKeyValueObserverGlue *a2, NSObject *a3, const TString *a4, uint64_t a5)
{
  v12 = a2;
  v10 = a3;
  objc_storeStrong(this, a2);
  *(this + 1) = v10;
  v11 = v10;
  if ((this + 32) != a4)
  {
    TString::SetStringRefAsImmutable(this + 4, a4->fString.fRef);
    v11 = *(this + 1);
  }

  [v11 addObserver:*this forKeyPath:*(this + 4) options:a5 context:0];
}

void TKeyValueObserver::StopObserving(TKeyValueObserver *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    [v2 removeObserver:*this forKeyPath:*(this + 4)];
    *(this + 1) = 0;
  }

  else
  {
    v3 = *(this + 2);
    if (v3)
    {
      [v3 removeObserver:*this fromObjectsAtIndexes:*(this + 3) forKeyPath:*(this + 4)];
      v4 = *(this + 3);
      *(this + 2) = 0;
      *(this + 3) = 0;
    }
  }

  v5 = *this;
  *this = 0;

  TString::SetStringRefAsImmutable(this + 4, 0);
}

DS_TKeyValueObserverGlue *TKeyValueObserver::CreateObserver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [[DS_TKeyValueObserverGlue alloc] initWithFunctor:a2 observedObjects:a3 observedKeyPath:a4];

  return v4;
}

{
  v4 = [[DS_TKeyValueObserverGlue alloc] initWithFunctorWithChange:a2 observedObjects:a3 observedKeyPath:a4];

  return v4;
}

void StChangeValueForKeyHelper::StChangeValueForKeyHelper(StChangeValueForKeyHelper *this, NSObject *a2, NSString *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  *this = v7;
  v8 = v6;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  [*this willChangeValueForKey:v8];
}

void StChangeValueForKeyHelper::~StChangeValueForKeyHelper(StChangeValueForKeyHelper *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    [*this didChange:v2 valuesAtIndexes:*(this + 2) forKey:*(this + 1)];
  }

  else
  {
    v3 = *(this + 5);
    v4 = *this;
    v5 = *(this + 1);
    if (v3)
    {
      [v4 didChangeValueForKey:v5 withSetMutation:v3 usingObjects:*(this + 4)];
    }

    else
    {
      [v4 didChangeValueForKey:v5];
    }
  }
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E571BAF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(NSDictionary<NSString *,NSObject *> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(NSDictionary<NSString *,NSObject *> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E571BDF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 36) = *(a2 + 36);
    std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::hash,void *> *>>(a1, *(a2 + 16), 0);
  }

  return a1;
}

void std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::hash,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *v8;
        std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__emplace_multi<NSObject * const&>();
  }
}

void sub_1E571BF18(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = [*(a2 + 16) hash];
  *(a2 + 8) = v5;
  inserted = std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi_prepare(a1, v5, v4);
  std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 36);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 ? std::equal_to<NSObject * {__strong}>::operator()(a1 + 40, v17[2], *a3) : 0;
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__rehash<false>(uint64_t a1, size_t __n)
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
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 36));
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

      std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void sub_1E571C414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E571C4A0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::find<std::hash>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<NSObject * {__strong}>::operator()((a1 + 5), i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__function::__value_func<void ()(NSDictionary<NSString *,NSObject *> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL IsDataSeparatedDomainID(const TString *this)
{
  {
    operator"" _t("com.apple.CloudDocs.iCloudDriveFileProviderManaged/", 51, &IsDataSeparatedDomainID(TString const&)::kDataSeparatedDomainIDPrefix);
  }

  return TString::BeginsWith(this, &IsDataSeparatedDomainID(TString const&)::kDataSeparatedDomainIDPrefix);
}

BOOL IsICloudDriveDomainID(TString *a1)
{
  if (!ICloudDriveFPFSEnabled())
  {
    return 0;
  }

  {
    {
      operator"" _t("com.apple.CloudDocs.iCloudDriveFileProvider", 43, &IsICloudDriveDomainID(TString const&)::kICloudDriveProviderIDCommonPrefix);
    }
  }

  return TString::BeginsWith(a1, &IsICloudDriveDomainID(TString const&)::kICloudDriveProviderIDCommonPrefix);
}

uint64_t URLMightBeInFileProvider(uint64_t result)
{
  if (result)
  {
    result = UseFileProviderFramework();
    if (result)
    {
      return FPURLMightBeInFileProvider() != 0;
    }
  }

  return result;
}

id FIProviderDomainForURL(const __CFURL *a1)
{
  v7 = 0;
  v1 = [FIProviderDomain providerDomainForURL:a1 cachePolicy:1 error:&v7];
  v2 = v7;
  v3 = [v1 supportsEnumeration];
  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  return v4;
}

uint64_t IsDefaultFPDomain(FPProviderDomain *a1)
{
  v1 = a1;
  v2 = [(FPProviderDomain *)v1 identifier];
  v3 = [(FPProviderDomain *)v1 providerID];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_1E571C8D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id FPSharedItemCreator(FPItem *a1)
{
  v1 = [(FPItem *)a1 ownerNameComponents];

  return v1;
}

void MyFPResolveSymlink(NSURL *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = FPResolveSymlink();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = -8064;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
}

void FileProviderErrorDomain(TString *a1@<X8>)
{
  v2 = *MEMORY[0x1E6967190];
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, v2);
}

void NS_FPErrorSuppressionCheckboxIsChecked(TString *a1@<X8>)
{
  v2 = *MEMORY[0x1E69670D8];
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, v2);
}

void FileProviderInternalErrorDomain(TString *a1@<X8>)
{
  v2 = *MEMORY[0x1E6967210];
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, v2);
}

void FileProviderSharedItemPermissionsReadOnly(TString *a1@<X8>)
{
  v2 = *MEMORY[0x1E695DD28];
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, v2);
}

BOOL IsDomainDisconnected(FPProviderDomain *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(FPProviderDomain *)v1 disconnectionState]!= 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t IsFPEmbossedFolder(FPItem *a1)
{
  v1 = a1;
  {
    v11 = FP_ItemDecorationTypeFolderBadge();
    TString::TString(&IsFPEmbossedFolder(FPItem *)::sFolderEmbossType, v11);
  }

  if (v1)
  {
    v2 = [(FPItem *)v1 itemDecorations];
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(v13, v2);
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::IDContainerIteratorAdaptor(v12, -1, v2);
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(&v15, v13);
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(v14, v12);
    while (1)
    {
      v3 = v14[0];
      if (v15 == v14[0] && v20 == v14[16])
      {
        break;
      }

      v4 = *(v16[1] + 8 * v19);
      v5 = [v4 type];
      v6 = operator==(&IsFPEmbossedFolder(FPItem *)::sFolderEmbossType, v5);

      if (v6)
      {
        v9 = 1;
        v3 = v14[0];
        goto LABEL_15;
      }

      v7 = v19;
      if (v19 >= v18 - 1)
      {
        v8 = [v15 countByEnumeratingWithState:v16 objects:v17 count:4];
        v7 = -1;
        v18 = v8;
        v19 = -1;
      }

      if (v17[4] != *v16[2])
      {
        objc_enumerationMutation(v15);
        v7 = v19;
      }

      v19 = v7 + 1;
      ++v20;
    }

    v9 = 0;
LABEL_15:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1E571CDA4(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

BOOL FileProviderDomainsHaveEquivalentProperties(FPProviderDomain *a1, FPProviderDomain *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v18 = v3 == v4;
    goto LABEL_17;
  }

  if (![(FPProviderDomain *)v3 isEqual:v4])
  {
    goto LABEL_16;
  }

  v6 = [(FPProviderDomain *)v3 isEnabled];
  if (v6 != [(FPProviderDomain *)v5 isEnabled])
  {
    goto LABEL_16;
  }

  v7 = [(FPProviderDomain *)v3 isHidden];
  if (v7 != [(FPProviderDomain *)v5 isHidden])
  {
    goto LABEL_16;
  }

  v8 = [(FPProviderDomain *)v3 needsAuthentication];
  if (v8 != [(FPProviderDomain *)v5 needsAuthentication])
  {
    goto LABEL_16;
  }

  v9 = IsDomainDisconnected(v3);
  if (v9 != IsDomainDisconnected(v5))
  {
    goto LABEL_16;
  }

  v10 = [(FPProviderDomain *)v3 storageURLsAreInTransientState];
  if (v10 != [(FPProviderDomain *)v5 storageURLsAreInTransientState])
  {
    goto LABEL_16;
  }

  v11 = [(FPProviderDomain *)v3 domainFullDisplayName];
  v12 = [(FPProviderDomain *)v5 domainFullDisplayName];
  if (([v11 isEqual:v12] & 1) == 0)
  {

    goto LABEL_16;
  }

  v13 = [(FPProviderDomain *)v3 isUsingFPFS];
  v14 = [(FPProviderDomain *)v5 isUsingFPFS];

  if (v13 != v14)
  {
    goto LABEL_16;
  }

  if (!-[FPProviderDomain isUsingFPFS](v3, "isUsingFPFS") || (-[FPProviderDomain storageURLs](v3, "storageURLs"), v15 = objc_claimAutoreleasedReturnValue(), -[FPProviderDomain storageURLs](v5, "storageURLs"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 isEqual:v16], v16, v15, (v17 & 1) != 0))
  {
    v18 = 1;
    goto LABEL_17;
  }

  v20 = [(FPProviderDomain *)v3 storageURLs];
  v21 = [v20 count];
  v22 = [(FPProviderDomain *)v5 storageURLs];
  v23 = [v22 count];

  if (v21 != v23)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v39 = v5;
  v40 = [(FPProviderDomain *)v3 storageURLs];
  v38 = v39;
  IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(v42, v40);
  IDContainerIteratorAdaptor<NSArray<NSURL *>>::IDContainerIteratorAdaptor(v41, -1, v40);
  v24 = v38;
  IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(&obj, v42);
  IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(v43, v41);
  while (1)
  {
    v25 = v43[0];
    if (obj == v43[0] && v49 == v43[16])
    {
      break;
    }

    v26 = *(v45[1] + 8 * v48);
    v27 = [(FPProviderDomain *)v24 storageURLs];
    v28 = v26;
    IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(v51, v27);
    IDContainerIteratorAdaptor<NSArray<NSURL *>>::IDContainerIteratorAdaptor(v50, -1, v27);
    v29 = v28;
    IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(&v53, v51);
    IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(v52, v50);
    while (1)
    {
      v30 = v52[0];
      if (v53 == v52[0] && v58 == v52[16])
      {
        break;
      }

      v31 = *(v54[1] + 8 * v57);
      v32 = IsEqual(v29, v31);

      if (v32)
      {
        v35 = 1;
        v30 = v52[0];
        goto LABEL_33;
      }

      v33 = v57;
      if (v57 >= v56 - 1)
      {
        v34 = [v53 countByEnumeratingWithState:v54 objects:v55 count:4];
        v33 = -1;
        v56 = v34;
        v57 = -1;
      }

      if (v55[4] != *v54[2])
      {
        objc_enumerationMutation(v53);
        v33 = v57;
      }

      v57 = v33 + 1;
      ++v58;
    }

    v35 = 0;
LABEL_33:

    if ((v35 & 1) == 0)
    {
      v18 = 0;
      v25 = v43[0];
      goto LABEL_41;
    }

    v36 = v48;
    if (v48 >= v47 - 1)
    {
      v37 = [obj countByEnumeratingWithState:v45 objects:v46 count:4];
      v36 = -1;
      v47 = v37;
      v48 = -1;
    }

    if (v46[4] != *v45[2])
    {
      objc_enumerationMutation(obj);
      v36 = v48;
    }

    ++v49;
    v48 = v36 + 1;
  }

  v18 = 1;
LABEL_41:

LABEL_17:
  return v18;
}

id FileMetadataCopyLastUsedDateAtURL()
{
  v0 = FPFileMetadataCopyLastUsedDateAtURL();

  return v0;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  v5 = (a1 + 112);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  v6 = (a1 + 120);
  *(a1 + 128) = -1;
  if (v4 && [v4 count] && (v7 = *(a2 + 128), v7 < objc_msgSend(*a1, "count")))
  {
    v8 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 112) = v8;
    *(a1 + 104) = **(a1 + 24);
    *v6 = 0;
    *(a1 + 128) = 0;
    v9 = *(a2 + 128);
    if (v9 >= v8)
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (v11 >= *v5 - 1)
          {
            *v5 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
            v11 = -1;
            *v6 = -1;
          }

          if (*(a1 + 104) != **(a1 + 24))
          {
            objc_enumerationMutation(*a1);
            v11 = *v6;
          }

          v13 = *(a1 + 128) + 1;
          *(a1 + 120) = ++v11;
          *(a1 + 128) = v13;
          ++v12;
        }

        while (*(a2 + 128) > v12);
      }
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v9;
    }
  }

  else
  {
    *v6 = *(a2 + 120);
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 128) = -1;
  if (v3 && [v3 count])
  {
    *(a1 + 112) = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 104) = **(a1 + 24);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 128) = 0;
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 128) = [v4 count];

  return a1;
}

id iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>,0ul,1ul>::ZipIterator<std::tuple<IDContainerIteratorAdaptor<NSArray<NSString *>>,IDContainerIteratorAdaptor<NSArray<NSString *>>>,std::tuple<NSString * {__strong},NSString * {__strong}>>::operator*@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1[2] + 8 * a1[15]);
  result = *(a1[19] + 8 * a1[32]);
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul>,IDContainerIteratorAdaptor<NSArray<NSString *>>,IDContainerIteratorAdaptor<NSArray<NSString *>>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  v4 = IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(a1, a2);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v4 + 136, a2 + 136);
  return a1;
}

{
  v4 = IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(a1, a2);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v4 + 136, a2 + 136);
  return a1;
}

void iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>,0ul,1ul>::cbegin<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v5, **a1);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v4, *a1[1]);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJ26IDContainerIteratorAdaptorI7NSArrayIP8NSStringEES8_EEC2B8ne200100IJLm0ELm1EEJS8_S8_EJEJEJS8_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(v6, v5, v4);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul>,IDContainerIteratorAdaptor<NSArray<NSString *>>,IDContainerIteratorAdaptor<NSArray<NSString *>>>::__tuple_impl(a2, v6);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJ26IDContainerIteratorAdaptorI7NSArrayIP8NSStringEES8_EEC2B8ne200100IJLm0ELm1EEJS8_S8_EJEJEJS8_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(a1, a2);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v5 + 136, a3);
  return a1;
}

void iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>,0ul,1ul>::cend<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  IDContainerIteratorAdaptor<NSArray<NSString *>>::IDContainerIteratorAdaptor(v5, -1, **a1);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::IDContainerIteratorAdaptor(v4, -1, *a1[1]);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJ26IDContainerIteratorAdaptorI7NSArrayIP8NSStringEES8_EEC2B8ne200100IJLm0ELm1EEJS8_S8_EJEJEJS8_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(v6, v5, v4);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul>,IDContainerIteratorAdaptor<NSArray<NSString *>>,IDContainerIteratorAdaptor<NSArray<NSString *>>>::__tuple_impl(a2, v6);
}

uint64_t *TypeForUTI(NSString *a1)
{
  v1 = a1;
  v16 = v1;
  if ([(NSString *)v1 length])
  {
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_1ECFF4400, memory_order_acquire) & 1) == 0)
    {
      TypeForUTI();
    }

    os_unfair_lock_lock(&_MergedGlobals_0);
    v2 = std::__hash_table<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>>>::find<NSString * {__strong}>(TypeForUTI(NSString *)::sKnownCache, &v16);
    if (v2)
    {
      v3 = v2[3];
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if (!v4 && TypeForUTI(NSString *)::sRecentDynamicCache)
    {
      v5 = std::__hash_table<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>>>::find<NSString * {__strong}>(TypeForUTI(NSString *)::sRecentDynamicCache, &v16);
      if (v5)
      {
        v6 = v5[3];
      }

      else
      {
        v6 = 0;
      }

      v4 = v6;
    }

    if (!v4 && TypeForUTI(NSString *)::sOldDynamicCache)
    {
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>>>::find<NSString * {__strong}>(TypeForUTI(NSString *)::sOldDynamicCache, &v16);
      if (v7)
      {
        v8 = v7[3];
      }

      else
      {
        v8 = 0;
      }

      v4 = v8;
    }

    if (!v4)
    {
      v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:v16];
      v4 = v9;
      if (v9)
      {
        if ([v9 isDynamic])
        {
          v10 = TypeForUTI(NSString *)::sRecentDynamicCache;
          if (!TypeForUTI(NSString *)::sRecentDynamicCache)
          {
            operator new();
          }

          if (*(TypeForUTI(NSString *)::sRecentDynamicCache + 24) >= 0x3E8uLL)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3321888768;
            block[2] = ___Z10TypeForUTIP8NSString_block_invoke;
            block[3] = &__block_descriptor_33_ea8_32c33_ZTSKZ10TypeForUTIP8NSStringE3__0_e5_v8__0l;
            if (TypeForUTI(NSString *)::__once__ != -1)
            {
              dispatch_once(&TypeForUTI(NSString *)::__once__, block);
            }

            v10 = TypeForUTI(NSString *)::sRecentDynamicCache;
            if (*(TypeForUTI(NSString *)::sRecentDynamicCache + 24) >= 0x9C4uLL)
            {
              v11 = objc_autoreleasePoolPush();
              v12 = LogObj(5);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_ERROR, "Swapping Dynamic UTType caches.", buf, 2u);
              }

              if (!TypeForUTI(NSString *)::sOldDynamicCache)
              {
                operator new();
              }

              std::__hash_table<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>>>::clear(TypeForUTI(NSString *)::sOldDynamicCache);
              std::__hash_table<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>>>::swap(TypeForUTI(NSString *)::sOldDynamicCache, TypeForUTI(NSString *)::sRecentDynamicCache);
              objc_autoreleasePoolPop(v11);
              v10 = TypeForUTI(NSString *)::sRecentDynamicCache;
            }
          }

          *buf = &v16;
          v13 = std::__hash_table<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(v10, &v16);
        }

        else
        {
          *buf = &v16;
          v13 = std::__hash_table<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(TypeForUTI(NSString *)::sKnownCache, &v16);
        }

        objc_storeStrong(v13 + 3, v4);
      }
    }

    os_unfair_lock_unlock(&_MergedGlobals_0);
    v1 = v16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1E571DD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<NSString * {__strong},UTType * {__strong}>::unordered_map(uint64_t a1, size_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__rehash<true>(a1, a2);
  return a1;
}

void ___Z10TypeForUTIP8NSString_block_invoke()
{
  v0 = LogObj(5);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E5674000, v0, OS_LOG_TYPE_ERROR, "Dynamic UTType cache is larger then expected.", v1, 2u);
  }
}

uint64_t TFSInfo::GetName(TFSInfo *a1, uint64_t a2)
{
  TFSInfo::Name(a1, &v5);
  v3 = TPropertyReference::SetAs<TString>(a2, &v5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  return v3;
}

void sub_1E571DEC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetPath(TFSInfo *a1, uint64_t a2)
{
  TFSInfo::Path(a1, &v5);
  v3 = TPropertyReference::SetAs<TString>(a2, &v5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5);
  return v3;
}

void sub_1E571DF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetType(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 22)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 112);
  }

  v7 = v2;
  v8 = v3;
  v6 = v4;
  return TPropertyReference::SetAs<unsigned int>(a2, &v6);
}

CFIndex TFSInfo::SetType(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = TPropertyReference::As<unsigned int>(a2, &v6);
  v4 = v3;
  result = HIDWORD(v3);
  if (!result)
  {
    if (*(a1 + 120) || *(a1 + 112) == v4)
    {
      return 0;
    }

    else
    {
      return TFSInfo::SetType(a1, v4);
    }
  }

  return result;
}

uint64_t TFSInfo::GetCreator(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 22)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 116);
  }

  v7 = v2;
  v8 = v3;
  v6 = v4;
  return TPropertyReference::SetAs<unsigned int>(a2, &v6);
}

CFIndex TFSInfo::SetCreator(uint64_t a1, unint64_t a2)
{
  v5 = 0;
  v3 = TPropertyReference::As<unsigned int>(a2, &v5);
  result = HIDWORD(v3);
  if (!HIDWORD(v3))
  {
    if (*(a1 + 120) || *(a1 + 116) == v3)
    {
      return 0;
    }

    else
    {
      return TFSInfo::SetCreator(a1, v3);
    }
  }

  return result;
}

CFIndex TFSInfo::SetCreationDate(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 120))
  {
    return 4294959224;
  }

  v9[1] = v5;
  v9[2] = v4;
  v9[5] = v2;
  v9[6] = v3;
  v9[0] = 0xC1E6CEAF20000000;
  v8 = COERCE_DOUBLE(TPropertyReference::As<double>(a2, v9));
  if (TFSInfo::GetCreationDate(a1) == v8)
  {
    return 0;
  }

  else
  {
    return TFSInfo::SetTimeProperty(a1, *MEMORY[0x1E695EA50], v8);
  }
}

CFIndex TFSInfo::SetModificationDate(TFSInfo *a1, uint64_t *a2)
{
  v7 = 0xC1E6CEAF20000000;
  v3 = COERCE_DOUBLE(TPropertyReference::As<double>(a2, &v7));
  result = v4;
  if (!v4)
  {
    v6 = v3;
    if (TFSInfo::GetModificationDate(a1) == v3)
    {
      return 0;
    }

    else
    {
      return TFSInfo::SetTimeProperty(a1, *MEMORY[0x1E695EA48], v6);
    }
  }

  return result;
}

CFIndex TFSInfo::SetIsLocked(TFSInfo *a1, unint64_t a2)
{
  v7 = 0;
  v3 = TPropertyReference::As<BOOL>(a2, &v7);
  v4 = v3;
  result = HIDWORD(v3);
  if (!result)
  {
    if (TFSInfo::IsLocked(a1) == v4)
    {
      return 0;
    }

    else
    {
      v6 = MEMORY[0x1E695E4C0];
      if (v4)
      {
        v6 = MEMORY[0x1E695E4D0];
      }

      return TFSInfo::SetProperty(a1, *MEMORY[0x1E695EB90], *v6);
    }
  }

  return result;
}

uint64_t TFSInfo::IsStationery(TFSInfo *a1, uint64_t a2)
{
  TFSInfo::GetFinderInfo(a1);
  v5 = (v3 & 0x800) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v5);
}

CFIndex TFSInfo::SetIsStationery(TFSInfo *a1, unint64_t a2)
{
  LOBYTE(v11[0]) = 0;
  v3 = TPropertyReference::As<BOOL>(a2, v11);
  v4 = v3;
  result = HIDWORD(v3);
  if (!result)
  {
    TFSInfo::GetFinderInfo(a1);
    if (((v6 >> 11) & 1) == v4)
    {
      return 0;
    }

    else
    {
      FinderInfo = TFSInfo::GetFinderInfo(a1);
      v9 = 2048;
      if ((v4 & 1) == 0)
      {
        v9 = 0;
      }

      v11[0] = FinderInfo;
      v11[1] = v8 & 0xFFFFFFFFFFFFF7FFLL | v9;
      v11[2] = TFSInfo::GetExtendedFinderInfo(a1);
      v11[3] = v10;
      return TFSInfo::SetTotalFinderInfo(a1, v11);
    }
  }

  return result;
}

uint64_t TFSInfo::IsVisible(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  v6 = v4 & 1;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

CFIndex TFSInfo::SetIsVisible(TFSInfo *a1, unint64_t a2)
{
  v6 = 0;
  v3 = TPropertyReference::As<BOOL>(a2, &v6);
  v4 = HIDWORD(v3);
  if (!HIDWORD(v3))
  {
    return TFSInfo::SetIsInvisible(a1, (v3 & 1) == 0);
  }

  return v4;
}

uint64_t TFSInfo::IsContainer(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  v6 = (v4 & 0x20) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

uint64_t TFSInfo::IsSystemCompressed(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  v6 = (v4 & 0x200) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

uint64_t TFSInfo::IsVolume(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 124);
  os_unfair_lock_unlock((a1 + 108));
  v6 = v4 & 1;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

uint64_t TFSInfo::ObjectIdentifier(TFSInfo *a1, uint64_t a2)
{
  TFSInfo::ObjectIdentifier(a1, &v5);
  v3 = TPropertyReference::SetAs<TString>(a2, &v5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  return v3;
}

void sub_1E571E7E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetOwner(uint64_t a1, unint64_t a2)
{
  LODWORD(fileSec) = 0;
  v3 = TPropertyReference::As<int>(a2, &fileSec);
  v4 = HIDWORD(v3);
  if (!HIDWORD(v3))
  {
    if (*(a1 + 8))
    {
      v5 = v3;
      v6 = TFSInfo::CopyPermissions(a1);
      fileSec = v6;
      if (v6 && (owner = 0, CFFileSecurityGetOwner(v6, &owner), owner != v5) && CFFileSecuritySetOwner(fileSec, v5))
      {
        v4 = TFSInfo::SetProperty(a1, *MEMORY[0x1E695EAE8], fileSec);
      }

      else
      {
        v4 = 0;
      }

      TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&fileSec);
    }

    else
    {
      return 4294959238;
    }
  }

  return v4;
}

void sub_1E571E8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetUserGroups(uint64_t a1, unint64_t a2)
{
  LODWORD(fileSec) = 0;
  v3 = TPropertyReference::As<int>(a2, &fileSec);
  v4 = HIDWORD(v3);
  if (!HIDWORD(v3))
  {
    if (*(a1 + 8))
    {
      v5 = v3;
      v6 = TFSInfo::CopyPermissions(a1);
      fileSec = v6;
      if (v6 && (owner = 0, CFFileSecurityGetOwner(v6, &owner), owner != v5) && CFFileSecuritySetGroup(fileSec, v5))
      {
        v4 = TFSInfo::SetProperty(a1, *MEMORY[0x1E695EAE8], fileSec);
      }

      else
      {
        v4 = 0;
      }

      TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&fileSec);
    }

    else
    {
      return 4294959238;
    }
  }

  return v4;
}

void sub_1E571EA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

CFIndex TFSInfo::SetMode(TFSInfo *a1, unint64_t a2)
{
  v6 = 0;
  v3 = TPropertyReference::As<short>(a2, &v6);
  v4 = HIDWORD(v3);
  if (!HIDWORD(v3))
  {
    return TFSInfo::SetModeDetails(a1, v3);
  }

  return v4;
}

uint64_t TFSInfo::IsExtensionHidden(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  v6 = (v4 & 8) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

unint64_t TFSInfo::SetIsExtensionHidden(uint64_t a1, unint64_t a2)
{
  v8 = 0;
  v3 = TPropertyReference::As<BOOL>(a2, &v8);
  v4 = HIDWORD(v3);
  if (!HIDWORD(v3))
  {
    v5 = v3;
    os_unfair_lock_lock((a1 + 108));
    v6 = *(a1 + 123);
    os_unfair_lock_unlock((a1 + 108));
    if (((v6 >> 3) & 1) != v5)
    {
      TFSInfo::SetIsExtensionHidden(a1, v5 & 1);
    }
  }

  return v4;
}

uint64_t TFSInfo::CanSetExtensionHidden(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 127) |= 0x400u;
  os_unfair_lock_unlock((a1 + 108));
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  v6 = (v4 & 0x10) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

uint64_t TFSInfo::IsPackage(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  v6 = (v4 & 2) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

uint64_t TFSInfo::IsApplication(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  v6 = (v4 & 4) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

uint64_t TFSInfo::GetApplicationDMFPolicy(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 120) && *(a1 + 8) && (os_unfair_lock_lock((a1 + 108)), v6 = *(a1 + 123), os_unfair_lock_unlock((a1 + 108)), (v6 & 4) != 0))
  {
    os_unfair_lock_lock((a1 + 104));
    if (*(a1 + 121) == -1)
    {
      *(a1 + 121) = 0;
      v3 = 4294959210;
    }

    else
    {
      v8 = *(a1 + 121);
      v3 = TPropertyReference::SetAs<short>(a2, &v8);
    }

    os_unfair_lock_unlock((a1 + 104));
  }

  else
  {
    v7 = 0;
    return TPropertyReference::SetAs<short>(a2, &v7);
  }

  return v3;
}

uint64_t TFSInfo::GetIFSymbol(TFSInfo *a1, uint64_t a2)
{
  v5 = TFSInfo::FetchIFSymbol(a1);
  v3 = TPropertyReference::SetAs<IFSymbol * {__strong}>(a2, &v5);

  return v3;
}

uint64_t TFSInfo::GetISIcon(TFSInfo *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 0;
  v7 = TFSInfo::FetchISIcon(a1);
  v9 = TFSInfo::GetISIcon(a1);
  TPropertyReference::SetAs<ISIcon * {__strong}>(a2, &v9);

  return 0;
}

uint64_t TFSInfo::GetFolderAdornments(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  os_unfair_lock_lock((a1 + 108));
  v9 = *(a1 + 127);
  os_unfair_lock_unlock((a1 + 108));
  if ((v9 & 0x2000) != 0)
  {
    os_unfair_lock_lock((a1 + 104));
    TPropertyReference::SetAs<NSDictionary * {__strong}>(a2, (a1 + 96));
    os_unfair_lock_unlock((a1 + 104));
    return 0;
  }

  os_unfair_lock_lock((a1 + 108));
  v10 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v10 & 0x20) == 0)
  {
    return 4294959241;
  }

  os_unfair_lock_lock((a1 + 108));
  v11 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v11 & 0x100) != 0)
  {
    return 4294959241;
  }

  os_unfair_lock_lock((a1 + 108));
  v12 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v12 & 2) != 0)
  {
    return 4294959241;
  }

  if ((a4 & 0x8000000) != 0)
  {
    *a5 = 0;
  }

  else
  {
    *a5 = 0;
    if ((a4 & 0x80) != 0)
    {
      return 4294959210;
    }
  }

  TFSInfo::ReadFolderAdornmentsFromDisk(a1, &v23);
  v15 = v23;
  v22 = v23;
  os_unfair_lock_lock((a1 + 104));
  v16 = *(a1 + 96);
  v17 = v22;
  v18 = v16;
  v19 = v18;
  if (v17 == v18)
  {
    v20 = 1;
  }

  else if ((v17 != 0) == (v18 == 0))
  {
    v20 = 0;
  }

  else
  {
    v20 = [v17 isEqual:v18];
  }

  *a5 = v20 ^ 1;
  objc_storeStrong((a1 + 96), v15);
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 127) |= 0x2000u;
  os_unfair_lock_unlock((a1 + 108));
  os_unfair_lock_unlock((a1 + 104));
  TPropertyReference::SetAs<NSDictionary * {__strong}>(a2, &v22);
  if (v24 == -1427 && v22 == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v24;
  }

  return v13;
}

void sub_1E571F080(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 26);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetFolderAdornments(uint64_t a1, id **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  TPropertyReference::As<NSObject * {__strong}>(a2, &v27);
  v3 = v28;
  if (!v28)
  {
    v4 = objc_cast<NSDictionary,NSObject * {__strong}>(v27);
    TFSInfo::ReadFolderAdornmentsFromDisk(a1, buf);
    v5 = *buf;
    v6 = DSFolderIconConfigBackwardsCompatibleDictionary(v4, *buf);

    TFSInfo::Path(a1, &v26.fString.fRef);
    if (v6)
    {
      v25 = 0;
      v7 = DSEncodeCustomFolderIconConfig(v6, &v25);
      v8 = v25;
      if (v7)
      {
        if (TFSInfo::IsTopLevelSharedItem(a1))
        {
          if (TFSInfo::HasCustomIcon(a1))
          {
            TFSInfo::SetHasCustomIcon(a1, 0);
          }

          v3 = 4294967235;
        }

        else
        {
          v16 = TString::c_str(&v26);
          v17 = DSFolderIconCustomizationXattrName();
          v18 = v7;
          if (setxattr(v16, v17, [v7 bytes], objc_msgSend(v7, "length"), 0, 1))
          {
            v19 = __error();
            v3 = TCFURLInfo::TranslatePOSIXError(*v19, 0, v20);
          }

          else
          {
            os_unfair_lock_lock((a1 + 104));
            v21 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v6);
            v22 = *(a1 + 96);
            *(a1 + 96) = v21;

            os_unfair_lock_lock((a1 + 108));
            *(a1 + 127) |= 0x2000u;
            os_unfair_lock_unlock((a1 + 108));
            TFSInfo::SetHasCustomIcon(a1, 1);
            os_unfair_lock_unlock((a1 + 104));
            v3 = 0;
          }
        }
      }

      else
      {
        v15 = LogObj(5);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v8;
          _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "Unable to encode custom folder info %{public}@", buf, 0xCu);
        }

        v3 = 4294967246;
      }
    }

    else
    {
      v9 = TString::c_str(&v26);
      v10 = DSFolderIconCustomizationXattrName();
      if (!removexattr(v9, v10, 0) || (v11 = __error(), v3 = TCFURLInfo::TranslateXAttrError(*v11, v12, v13), v3 == -1427))
      {
        if (TFSInfo::HasCustomIcon(a1))
        {
          os_unfair_lock_lock((a1 + 104));
          v14 = *(a1 + 96);
          *(a1 + 96) = 0;

          TFSInfo::SetHasCustomIcon(a1, 0);
          os_unfair_lock_unlock((a1 + 104));
        }

        v3 = 0;
      }
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v26.fString.fRef);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1E571F394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, id a11)
{
  os_unfair_lock_unlock(v12 + 26);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetISIconPackage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 0;
  os_unfair_lock_lock((a1 + 108));
  v7 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v7 & 0x20) != 0)
  {
    v8 = TFSInfo::GetFolderIconPackage(a1);
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  TPropertyReference::SetAs<ISIconPackage * {__strong}>(a2, &v10);

  return 0;
}

uint64_t TFSInfo::GetHasAnyVisibleChildren(TFSInfo *a1, uint64_t a2, uint64_t a3)
{
  if (*a3 && (*(*a3 + 107) & 1) == 0)
  {
    v6 = 0;
    return TPropertyReference::SetAs<int>(a2, &v6);
  }

  else
  {
    HasAnyVisibleChildren = TFSInfo::GetHasAnyVisibleChildren(a1, 1);
    TPropertyReference::SetAs<int>(a2, &HasAnyVisibleChildren);
    return 0;
  }
}

uint64_t TFSInfo::GetCapacity(uint64_t a1, uint64_t a2, TFSVolumeInfo **a3)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) |= 0x4000000u;
  os_unfair_lock_unlock((a1 + 108));
  if (!*a3)
  {
    return 4294959245;
  }

  Capacity = TFSVolumeInfo::GetCapacity(*a3);
  result = TPropertyReference::SetAs<long long>(a2, &Capacity);
  if (!result)
  {
    if (TFSVolumeInfo::SpaceAndCapacityAreUpToDate(*a3, 0))
    {
      return 0;
    }

    else
    {
      return 4294959210;
    }
  }

  return result;
}

uint64_t TFSInfo::GetFreeSpace(uint64_t a1, uint64_t a2, TFSVolumeInfo **a3)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) |= 0x4000000u;
  os_unfair_lock_unlock((a1 + 108));
  if (!*a3)
  {
    return 4294959245;
  }

  FreeSpace = TFSVolumeInfo::GetFreeSpace(*a3);
  v8 = FreeSpace + TFSVolumeInfo::GetReclaimableSpace(*a3);
  if (v8 < 0)
  {
    v8 = TFSVolumeInfo::GetFreeSpace(*a3);
  }

  result = TPropertyReference::SetAs<long long>(a2, &v8);
  if (!result)
  {
    if (TFSVolumeInfo::SpaceAndCapacityAreUpToDate(*a3, 1))
    {
      return 0;
    }

    else
    {
      return 4294959210;
    }
  }

  return result;
}

uint64_t TFSInfo::GetReclaimableSpace(uint64_t a1, uint64_t a2, TFSVolumeInfo **a3)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) |= 0x4000000u;
  os_unfair_lock_unlock((a1 + 108));
  if (!*a3)
  {
    return 4294959245;
  }

  ReclaimableSpace = TFSVolumeInfo::GetReclaimableSpace(*a3);
  result = TPropertyReference::SetAs<long long>(a2, &ReclaimableSpace);
  if (!result)
  {
    if (TFSVolumeInfo::SpaceAndCapacityAreUpToDate(*a3, 1))
    {
      return 0;
    }

    else
    {
      return 4294959210;
    }
  }

  return result;
}

uint64_t TFSInfo::GetVolumeFormat(uint64_t a1, uint64_t a2, TFSVolumeInfo **a3)
{
  if (!*a3)
  {
    return 4294959245;
  }

  VolumeFormat = TFSVolumeInfo::GetVolumeFormat(*a3);
  return TPropertyReference::SetAs<short>(a2, &VolumeFormat);
}

uint64_t TFSInfo::GetVolumeFormatString(uint64_t a1, uint64_t a2, TFSVolumeInfo **a3)
{
  if (!*a3)
  {
    return 4294959245;
  }

  TFSVolumeInfo::GetVolumeFormatString(*a3, &v6);
  v4 = TPropertyReference::SetAs<TString>(a2, &v6);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  return v4;
}

void sub_1E571F7E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetSystemBuildVersion(uint64_t a1, uint64_t a2, TFSVolumeInfo **a3)
{
  if (!*a3)
  {
    return 4294959245;
  }

  v4 = TFSVolumeInfo::SystemBuildVersion(*a3);

  return TPropertyReference::SetAs<TString>(a2, v4);
}

uint64_t TFSInfo::GetAboutToUnmount(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (!*a3)
  {
    return 4294959245;
  }

  if (*(v5 + 123))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v5 + 127);
  }

  v9 = v3;
  v10 = v4;
  v8 = v6 & 1;
  return TPropertyReference::SetAs<BOOL>(a2, &v8);
}

uint64_t TFSInfo::GetVolUUID(uint64_t a1, uint64_t a2, TFSVolumeInfo **a3)
{
  if (!*a3)
  {
    return 4294959245;
  }

  TFSVolumeInfo::GetUUID(*a3, &v6);
  v4 = TPropertyReference::SetAs<TString>(a2, &v6);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  return v4;
}

void sub_1E571F8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetShortVersion(uint64_t a1, uint64_t a2)
{
  v6 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  ShortVersion = TFSInfo::GetShortVersion(a1, &v6);
  if (!ShortVersion)
  {
    ShortVersion = TPropertyReference::SetAs<TString>(a2, &v6);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6);
  return ShortVersion;
}

void sub_1E571F98C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetLongVersion(uint64_t a1, uint64_t a2)
{
  v6.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  LongVersion = TFSInfo::GetLongVersion(a1, &v6);
  if (!LongVersion)
  {
    LongVersion = TPropertyReference::SetAs<TString>(a2, &v6);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  return LongVersion;
}

void sub_1E571FA20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetSystemVersion(uint64_t a1, uint64_t a2)
{
  v6.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  SystemVersion = TFSInfo::GetSystemVersion(a1, &v6);
  if (!SystemVersion)
  {
    SystemVersion = TPropertyReference::SetAs<TString>(a2, &v6);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  return SystemVersion;
}

void sub_1E571FAB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetCopyrightString(uint64_t a1, uint64_t a2)
{
  v6.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  CopyrightString = TFSInfo::GetCopyrightString(a1, &v6);
  if (!CopyrightString)
  {
    CopyrightString = TPropertyReference::SetAs<TString>(a2, &v6);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  return CopyrightString;
}

void sub_1E571FB48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetKindWithoutPlatformString(TFSInfo *a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  v13.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  KindWithoutPlatform = TFSInfo::GetKindWithoutPlatform(a1, &v13, a4, a5);
  v10 = KindWithoutPlatform;
  if (KindWithoutPlatform && KindWithoutPlatform != -8086 || (v11 = TPropertyReference::SetAs<TString>(a2, &v13), !v11))
  {
    v11 = v10;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
  return v11;
}

void sub_1E571FBF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetTypeIdentifierString(TFSInfo *a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  location = 0;
  UTType = TFSInfo::GetUTType(a1, &location, a4, a5);
  v7 = UTType;
  if (UTType != -8086 && UTType != 0)
  {
    v11 = location;
LABEL_7:
    v10 = v7;
    goto LABEL_8;
  }

  v11 = location;
  v9 = [location identifier];
  v13 = v9;
  v10 = TPropertyReference::SetAs<__CFString const*>(a2, &v13);

  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

uint64_t TFSInfo::GetUTType(TFSInfo *a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  location = 0;
  UTType = TFSInfo::GetUTType(a1, &location, a4, a5);
  v7 = UTType;
  if (UTType && UTType != -8086 || (v8 = TPropertyReference::SetAs<UTType * {__strong}>(a2, &location), !v8))
  {
    v8 = v7;
  }

  return v8;
}

uint64_t TFSInfo::GetPhysicalSize(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) |= 0x4000000u;
  os_unfair_lock_unlock((a1 + 108));
  PhysicalSize = TFSInfo::GetPhysicalSize(a1);
  TPropertyReference::SetAs<long long>(a2, &PhysicalSize);
  os_unfair_lock_lock((a1 + 108));
  LODWORD(a2) = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((a2 & 0x2000000) == 0 && ((os_unfair_lock_lock((a1 + 108)), v4 = *(a1 + 123), os_unfair_lock_unlock((a1 + 108)), (v4 & 0x8000000) != 0) || *(a1 + 120) == 7))
  {
    return 0;
  }

  else
  {
    return 4294959210;
  }
}

uint64_t TFSInfo::GetLogicalSize(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) |= 0x4000000u;
  os_unfair_lock_unlock((a1 + 108));
  LogicalSize = TFSInfo::GetLogicalSize(a1);
  TPropertyReference::SetAs<long long>(a2, &LogicalSize);
  os_unfair_lock_lock((a1 + 108));
  LODWORD(a2) = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((a2 & 0x2000000) == 0 && ((os_unfair_lock_lock((a1 + 108)), v4 = *(a1 + 123), os_unfair_lock_unlock((a1 + 108)), (v4 & 0x8000000) != 0) || *(a1 + 120) == 7))
  {
    return 0;
  }

  else
  {
    return 4294959210;
  }
}

uint64_t TFSInfo::GetDeepItemCount(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) |= 0x4000000u;
  os_unfair_lock_unlock((a1 + 108));
  os_unfair_lock_lock((a1 + 104));
  v4 = *(a1 + 80);
  if (v4)
  {
    TFSInfoOverflow::FolderSizeRecord(v4, v7);
    if (v8)
    {
      v5 = v7[2];
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  os_unfair_lock_unlock((a1 + 104));
  v7[0] = v5;
  return TPropertyReference::SetAs<long long>(a2, v7);
}

uint64_t TFSInfo::GetDeepVisibleItemCount(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) |= 0x4000000u;
  os_unfair_lock_unlock((a1 + 108));
  os_unfair_lock_lock((a1 + 104));
  v4 = *(a1 + 80);
  if (v4)
  {
    TFSInfoOverflow::FolderSizeRecord(v4, v7);
    if (v8)
    {
      v5 = v7[3];
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  os_unfair_lock_unlock((a1 + 104));
  v7[0] = v5;
  return TPropertyReference::SetAs<long long>(a2, v7);
}

uint64_t TFSInfo::GetLastUsedDate(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  v9 = *(a1 + 72);
  v10 = *(a1 + 72);
  if (v10)
  {
    goto LABEL_2;
  }

  if ((a4 & 0x82) != 0)
  {
    v12 = 4294959222;
  }

  else
  {
    v16 = TFSInfo::LastUsedDate(a1);
    v17 = *(a1 + 72);
    *(a1 + 72) = v16;

    v10 = *(a1 + 72);
    if (v10)
    {
LABEL_2:
      v11 = 0;
      v12 = 0;
      goto LABEL_6;
    }

    v12 = 0;
  }

  v10 = [MEMORY[0x1E695DF00] distantPast];
  v11 = 1;
LABEL_6:
  v13 = v10;
  v18 = MEMORY[0x1E692BF40]();
  TPropertyReference::SetAs<double>(a2, &v18);

  if (v11)
  {
  }

  if (*(a1 + 72))
  {
    v14 = [v9 isEqualToDate:?] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  *a5 = v14;

  return v12;
}

uint64_t TFSInfo::GetTagsAndAttributes(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  cf1 = TFSInfo::CopyTagsAndAttributes(a1, 0);
  v9 = a4 & 0x82;
  os_unfair_lock_lock((a1 + 108));
  v10 = *(a1 + 127);
  os_unfair_lock_unlock((a1 + 108));
  v11 = TFSInfo::CopyTagsAndAttributes(a1, v9 == 0);
  v15 = v11;
  v17 = v11;
  v12 = TPropertyReference::SetAs<__CFArray const*>(a2, &v17);
  v13 = v12;
  if (v9 && !v12 && (v10 & 0x200) == 0)
  {
    if (*(a1 + 120) == 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = 4294959222;
    }
  }

  *a5 = IsEqual(cf1, v11) ^ 1;
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v15);
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&cf1);
  return v13;
}

void sub_1E5720218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetTagsAndAttributes(TFSInfo *a1, uint64_t *a2)
{
  v6 = 0;
  TPropertyReference::As<__CFArray const*>(a2, &v6);
  v4 = v3;
  if (!v3)
  {
    TFSInfo::GetLabel(a1);
  }

  return v4;
}

uint64_t TFSInfo::GetUbiquityStatus(TFSInfo *a1, uint64_t a2)
{
  BladeRunnerFlags = TFSInfo::GetBladeRunnerFlags(a1);
  v5 = BladeRunnerFlags & 0x7FFFFFFF;
  LODWORD(result) = TPropertyReference::SetAs<long long>(a2, &v5);
  if (result)
  {
    return result;
  }

  else
  {
    return (BladeRunnerFlags >> 31) & 0xFFFFE06A;
  }
}

uint64_t TFSInfo::GetUbiquityFault(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 127);
  os_unfair_lock_unlock((a1 + 108));
  if ((v4 & 2) != 0 || (TCFURLInfo::GetNumericalProperty(*(a1 + 8), *MEMORY[0x1E695E2A8], v5) & 0x40000000) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = TFSInfo::GetBladeRunnerFlags(a1) & 1;
  }

  v8 = v6;
  return TPropertyReference::SetAs<BOOL>(a2, &v8);
}

uint64_t TFSInfo::GetICloudSharePerson(TFSInfo *a1, uint64_t a2)
{
  v5 = TFSInfo::CopyICloudSharePerson(a1);
  v3 = TPropertyReference::SetAs<NSPersonNameComponents * {__strong}>(a2, &v5);

  return v3;
}

uint64_t TFSInfo::GetICloudSharePersonString(TFSInfo *a1, uint64_t a2)
{
  TFSInfo::CopyICloudSharePersonString(a1, &v5);
  v3 = TPropertyReference::SetAs<TString>(a2, &v5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  return v3;
}

void sub_1E5720458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetICloudLastEditor(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 26);
  os_unfair_lock_unlock(a1 + 26);
  v6 = 0;
  v4 = TPropertyReference::SetAs<NSPersonNameComponents * {__strong}>(a2, &v6);

  return v4;
}

uint64_t TFSInfo::GetOriginatorInfo(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  v26 = 0;
  if (ReturnToSenderEnabled())
  {
    v26 = TFSInfo::OriginatorInfo(a1);
    os_unfair_lock_lock((a1 + 108));
    v9 = *(a1 + 16);
    v25 = v9;
    if (v9)
    {
      CFRetain(v9);
      v10 = v25;
    }

    else
    {
      v10 = 0;
    }

    os_unfair_lock_unlock((a1 + 108));
    v12 = v10;
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v25);
    if (!v12)
    {
      TPropertyReference::SetAs<SYDocumentAttributes * {__strong}>(a2, &v26);
LABEL_24:
      v11 = 0;
LABEL_25:

      goto LABEL_26;
    }

    if (a4 < 0)
    {
      *a5 = 0;
      TPropertyReference::SetAs<SYDocumentAttributes * {__strong}>(a2, &v26);
      os_unfair_lock_lock((a1 + 108));
      v18 = *(a1 + 127);
      os_unfair_lock_unlock((a1 + 108));
      if ((v18 & 0x1000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = 4294959210;
      }

      goto LABEL_25;
    }

    v25 = [getSYDocumentAttributesClass() documentAttributesForFileAtURL:v12];
    TPropertyReference::SetAs<SYDocumentAttributes * {__strong}>(a2, &v25);
    os_unfair_lock_lock((a1 + 108));
    *(a1 + 127) |= 0x1000u;
    os_unfair_lock_unlock((a1 + 108));
    v13 = v25;
    v14 = v26 == 0;
    v15 = v25 == 0;
    *a5 = v14 ^ v15;
    if (v14 == v15)
    {
LABEL_23:

      goto LABEL_24;
    }

    os_unfair_lock_lock((a1 + 104));
    if (v25 && !*(a1 + 80))
    {
      TFSInfo::GetOrCreateOverflow(a1);
    }

    v16 = *(a1 + 80);
    if (!v16)
    {
LABEL_22:
      os_unfair_lock_unlock((a1 + 104));
      v13 = v25;
      goto LABEL_23;
    }

    os_unfair_lock_lock((v16 + 72));
    v17 = *(v16 + 76);
    if (v17 == 3)
    {
      *(v16 + 76) = 2;
      *v16 = 0;
      os_unfair_lock_unlock((v16 + 72));
    }

    else
    {
      os_unfair_lock_unlock((v16 + 72));
      if (v17 != 2)
      {
        v23 = TFSInfoOverflow::ICloud(*(a1 + 80), 0);
        if ((v24 & 1) == 0)
        {
          goto LABEL_22;
        }

        v19 = v25;
        v16 = v23 + 16;
        goto LABEL_21;
      }
    }

    v19 = v25;
LABEL_21:
    v20 = v19;
    v21 = *v16;
    *v16 = v20;

    goto LABEL_22;
  }

  TPropertyReference::SetAs<SYDocumentAttributes * {__strong}>(a2, &v26);
  v11 = 0;
LABEL_26:

  return v11;
}

void sub_1E5720708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  os_unfair_lock_unlock(v11 + 26);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetItemDecorations(TFSInfo *a1, uint64_t a2)
{
  v3 = TFSInfo::GetFPItem(a1);
  v4 = [v3 itemDecorations];
  v7 = v4;
  v5 = TPropertyReference::SetAs<__CFArray const*>(a2, &v7);

  return v5;
}

uint64_t TFSInfo::GetResumableCopy(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 127);
  os_unfair_lock_unlock((a1 + 108));
  v6 = (v4 & 0x800) != 0;
  return TPropertyReference::SetAs<BOOL>(a2, &v6);
}

uint64_t TFSInfo::SetProperty(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!GetPropertyRecord(a2, v12))
  {
    return 4294959245;
  }

  v9 = v13;
  v10 = (a1 + (v14 >> 1));
  if (v14)
  {
    v9 = *(*v10 + v13);
  }

  return v9(v10, a3, a4, a5);
}

void TFSInfo::ObjectIdentifier(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(this + 120);
  if (v4 == 29)
  {
    v13 = TFSInfo::GetFPItem(this);
    v5 = [v13 itemID];
    v6 = [v5 identifier];
    v7 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, v8);
  }

  else
  {
    if (v4 != 28)
    {
      ObjectIdentifier = TFSInfo::GetObjectIdentifier(this);
      VolumeIdentifier = TFSInfo::GetVolumeIdentifier(this);
      snprintf(__str, 0x100uLL, "%llu.%llu", VolumeIdentifier, ObjectIdentifier);
      TString::TString(a2, __str);
      v12 = *MEMORY[0x1E69E9840];
      return;
    }

    v13 = TFSInfo::GetFPItem(this);
    v5 = [v13 providerDomainID];
    v6 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E5720C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v11);

  _Unwind_Resume(a1);
}

void TFSInfo::~TFSInfo(TFSInfo *this)
{
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(this + 11);
  std::unique_ptr<TFSInfoOverflow>::reset[abi:ne200100](this + 10, 0);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 6);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 3);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(this + 2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(this + 1);
  std::unique_ptr<TVersionData>::reset[abi:ne200100](this, 0);
}

CFIndex TFSInfo::Initialize(TFSInfo *this, FPItem *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    *(this + 120) = 29;
    *(this + 123) &= ~0x2000000u;
    TFSInfo::SetFPItem(this, v5);
    TFSInfo::FetchProperties(this, 0);
    v8 = 0;
    goto LABEL_8;
  }

  v7 = CopyURLForFPItem(v5, 0);
  v13 = v7;
  if (!v7)
  {
    v8 = 4294967253;
    goto LABEL_7;
  }

  v8 = TFSInfo::initialize(this, v7, 0, 1, 1, 1, 0);
  if (v8)
  {
LABEL_7:
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v13);
    goto LABEL_8;
  }

  *(this + 123) |= 0x20003821u;
  v9 = [(FPItem *)v6 documentSize];
  *(this + 123) = *(this + 123) & 0xF7FFFFFF | ((v9 != 0) << 27);

  v10 = [(FPItem *)v6 displayName];
  v12.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v12, v10);
  TFSInfo::SetItemName(this, &v12);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);

  *(this + 120) = 26;
  TFSInfo::SetFPItem(this, v6);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v13);
  v8 = 0;
LABEL_8:

  return v8;
}

void sub_1E5720EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

const void *CopyURLForFPItem(FPItem *a1, int a2)
{
  v3 = a1;
  if (!v3 || (FPItemManagerInstance(), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [(FPItem *)v3 fileURL];

  if (!v5)
  {
    if (a2)
    {
      operator new();
    }

    goto LABEL_7;
  }

  v6 = [(FPItem *)v3 fileURL];
  v7 = static_cf_cast<__CFString const*,void const*>(v6);
LABEL_8:

  return v7;
}

void sub_1E5721110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  CopyURLForFPItem(FPItem *,BOOL)::$_0::~$_0(va);

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void TFSInfoOverflow::TFSInfoOverflow(TFSInfoOverflow *this, const TFSInfoOverflow *a2)
{
  *(this + 7) = 0;
  v4 = this + 56;
  *(this + 5) = 0;
  *(this + 6) = *(a2 + 6);
  *(this + 8) = *(a2 + 8);
  *(v4 + 4) = 0;
  v4[20] = 3;
  os_unfair_lock_lock(a2 + 18);
  v5 = *(a2 + 76);
  v4[20] = v5;
  if (*(a2 + 5))
  {
    operator new();
  }

  switch(v5)
  {
    case 2:
      *this = *a2;
      break;
    case 1:
      *this = *a2;
      *(this + 1) = *(a2 + 1);
      *(this + 2) = *(a2 + 2);
      *(this + 3) = *(a2 + 3);
      *(this + 8) = *(a2 + 8);
      break;
    case 0:
      if (*a2)
      {
        std::allocate_shared[abi:ne200100]<TNWNode,std::allocator<TNWNode>,TNWNode&,0>();
      }

      *this = 0;
      *(this + 1) = 0;
      break;
  }

  os_unfair_lock_unlock(a2 + 18);
}

void sub_1E57212B8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 18);

  std::unique_ptr<TFileDescriptor>::reset[abi:ne200100](v3, 0);
  v5 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v5)
  {
    MEMORY[0x1E692CD30](v5, 0x1000C40E0EAB150);
  }

  _Unwind_Resume(a1);
}

void TFSInfoOverflow::MigrateToType(uint64_t a1, int a2)
{
  if (a2 == 1 && *(a1 + 76) == 2)
  {
    v3 = *a1;

    *(a1 + 76) = 1;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0x80000000;
    v4 = *(a1 + 16);
    *(a1 + 16) = v3;
  }
}

uint64_t TFSInfo::TFSInfo(uint64_t a1, os_unfair_lock_s **a2, const char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  __dst[128] = *MEMORY[0x1E69E9840];
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  TFSInfo::TFSInfo(a1);
  TString::TString(__dst, a4);
  TFSInfo::SetItemName(a1, __dst);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&__dst[0].fString.fRef);
  FileSuffix((a1 + 24), &theString);
  if (a8)
  {
    if (CFStringGetLength(theString))
    {
      TString::TString(__dst, a4);
      TFSInfo::Initialize(a1, *a2, __dst);
LABEL_19:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&__dst[0].fString.fRef);
      goto LABEL_20;
    }

    v14 = 32;
    v15 = 20480;
  }

  else
  {
    v14 = 0;
    v15 = 4096;
  }

  if (a9)
  {
    v16 = 33555520;
  }

  else
  {
    v16 = 33555456;
  }

  v17 = v16 | v14 | *(a1 + 123) & 0xFDFFFB9F;
  *(a1 + 123) = v17;
  v18 = v17 & 0xFFFF8FFE;
  if (*a4 != 46)
  {
    ++v15;
  }

  *(a1 + 123) = v15 | v18;
  strlcpy(__dst, a3, 0x400uLL);
  strlcat(__dst, a4, 0x400uLL);
  v19 = strlen(__dst);
  v24 = CFURLCreateFromFileSystemRepresentation(0, __dst, v19, a8);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a1 + 8), v24);
  if (*(a1 + 8))
  {
    _CFURLCacheSetAutoFlushingEnabled();
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v24);
  if (!*(a1 + 8))
  {
    TString::TString(__dst, a4);
    TFSInfo::Initialize(a1, *a2, __dst);
    goto LABEL_19;
  }

  v20 = _CFURLCopyFileURL();
  v21 = *(a1 + 16);
  if (v21)
  {
    CFRelease(v21);
  }

  *(a1 + 16) = v20;
  if (strchr(a4, 58))
  {
    ColonsToSlashes((a1 + 24), __dst);
    TFSInfo::SetDisplayName(a1, __dst);
    goto LABEL_19;
  }

LABEL_20:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  v22 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E57215BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TFSInfo::~TFSInfo(v3);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::IsRootItem(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0 || *(this + 120))
  {
    return 0;
  }

  v5 = *(this + 1);
  v6 = *MEMORY[0x1E695E3A8];

  return TCFURLInfo::GetBooleanProperty(v5, v6, v3);
}

void TFSInfo::TFSInfo(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a3;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  TFSInfo::TFSInfo(a1);
  *(v4 + 120) = a2;
  *(v4 + 123) |= 0x20000000u;
  std::allocate_shared[abi:ne200100]<TNWNode,std::allocator<TNWNode>,__SFNode *&,0>();
}

void sub_1E5721834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&a11);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  TFSInfo::~TFSInfo(v13);
  _Unwind_Resume(a1);
}

CFIndex TFSInfo::Initialize(TFSInfo *this, const char *__s)
{
  if (!__s)
  {
    return 4294959224;
  }

  v4 = strlen(__s);
  v5 = CFURLCreateFromFileSystemRepresentation(0, __s, v4, 0);
  v8 = v5;
  if (v5)
  {
    v6 = TFSInfo::initialize(this, v5, 0, 1, 1, 1, 0);
  }

  else
  {
    v6 = 4294959238;
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v8);
  return v6;
}

void sub_1E5721924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void TFSInfo::CopyFSInfo(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) == 0)
  {
    std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,TFSInfo const&,0>();
  }

  os_unfair_lock_lock(this + 27);
  v3 = *(this + 2);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  os_unfair_lock_unlock(this + 27);
  _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

const void **TFSInfo::ActualSuffix@<X0>(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  TFSInfo::Name(this, &v5);
  v3 = [(__CFString *)v5.fString.fRef pathExtension];
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, v3);

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
}

void sub_1E5721AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void DecorationIdentifier(void *a1@<X0>, TString *a2@<X8>)
{
  v6 = a1;
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    v4 = objc_cast<NSString,objc_object * {__strong}>([v6 performSelector:sel_identifier]);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, v4);
  }

  else
  {
    v5 = TString::KEmptyString(v3);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *v5);
  }
}

void sub_1E5721BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v10);

  _Unwind_Resume(a1);
}

id TFSInfo::GetFolderIconConfiguration(TFSInfo *this, unint64_t a2, int a3)
{
  LabelColorBasedOnTag = TFSInfo::GetLabelColorBasedOnTag(this, a3);
  os_unfair_lock_lock(this + 26);
  v6 = *(this + 12);
  os_unfair_lock_unlock(this + 26);
  v7 = [v6 objectForKeyedSubscript:@"sym"];
  v8 = objc_cast<NSString,objc_object * {__strong}>(v7);

  v9 = [v6 objectForKeyedSubscript:@"emoji"];
  v10 = objc_cast<NSString,objc_object * {__strong}>(v9);

  v11 = [objc_alloc(MEMORY[0x1E69A89F0]) initWithSymbolName:v8 systemTintColor:FolderTintColorForLabel(LabelColorBasedOnTag)];
  [v11 setEmoji:v10];
  [v11 setFolderEmpty:(a2 >> 8) & 1 & (a2 ^ 1)];

  return v11;
}

uint64_t TFSInfo::GetLabelColorBasedOnTag(TFSInfo *this, int a2)
{
  v2 = TFSInfo::CopyTagsAndAttributes(this, a2);
  IDContainerReverseIteratorAdaptor<NSArray<NSDictionary<NSString *,NSObject *> *>>::IDContainerReverseIteratorAdaptor(v23, v2);
  v3 = v2;
  v24 = v3;
  v25 = 0;
  v4 = v23[0];
  v5 = v23[1];
  v6 = v24;
  v7 = v25;
  if (v4 == v6 && v5 == v25)
  {
LABEL_13:
    v17 = 0;
  }

  else
  {
    v21 = v2;
    v9 = v5 - 1;
    while (1)
    {
      v10 = v9;
      v11 = [(__CFArray *)v4 objectAtIndexedSubscript:v9, v21];
      v12 = [v11 objectForKeyedSubscript:@"TagName"];
      v13 = static_objc_cast<NSString,objc_object * {__strong}>(v12);
      v22.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v22, v13);

      v15 = TFSInfo::LabelColorForTagName(&v22, v14);
      v17 = v15;
      if ((v15 & 0x10000) != 0)
      {
        v19 = 0;
      }

      else
      {
        v18 = TCFURLInfo::DecodeLabelColorFromTagDictionary(v11, v16);
        v17 = v18;
        v19 = (v18 & 0x10000) == 0;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);

      if (!v19)
      {
        if (v17)
        {
          break;
        }
      }

      v9 = v10 - 1;
      if (v4 == v6 && v7 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  return v17;
}

uint64_t FolderTintColorForLabel(int a1)
{
  if ((a1 - 1) > 6)
  {
    return -1;
  }

  else
  {
    return *&asc_1E5794500[8 * (a1 - 1)];
  }
}

void FolderIconType(FPItem *a1@<X0>, TString *a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  v3 = [v3 folderType];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "com.apple.documents-folder", 26, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v9 = v8;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v8);
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_11;
      }

      v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "com.apple.downloads-folder", 26, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v9 = v5;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v5);
    }

LABEL_13:
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9);
    goto LABEL_14;
  }

  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "com.apple.desktop-folder", 24, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v9 = v6;
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, v6);
    goto LABEL_13;
  }

  v3 = [v4 isTopLevelSharedItem];
  if (!v3)
  {
LABEL_11:
    v7 = TString::KEmptyString(v3);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *v7);
    goto LABEL_14;
  }

  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, @"com.apple.groups-folder");
LABEL_14:
}

void sub_1E5722170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void FolderIconType(ISIcon *a1@<X0>, TString *a2@<X8>)
{
  v3 = [(ISIcon *)a1 ds_folderIconType];
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, v3);
}

void sub_1E572223C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v10);

  _Unwind_Resume(a1);
}

id TFSInfo::GetFolderIconPackage(TFSInfo *this)
{
  v2 = TFSInfo::GetFPItem(this);
  FolderIconType(v2, &theString);

  if (!CFStringGetLength(theString))
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
    v3 = TFSInfo::GetISIcon(this);
    if (!v3)
    {
      v4 = objc_alloc(MEMORY[0x1E69A8A00]);
      os_unfair_lock_lock(this + 27);
      v5 = *(this + 2);
      v13.fString.fRef = v5;
      if (v5)
      {
        CFRetain(v5);
      }

      os_unfair_lock_unlock(this + 27);
      v3 = [v4 initWithURL:v5];
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v13.fString.fRef);
    }

    FolderIconType(v3, &v13);
    v6 = [*MEMORY[0x1E6982DC8] identifier];
    v12.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v12, v6);

    TString::non_empty_or(&v13, &v12, &theString);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
  }

  v7 = TFSInfo::GetFolderIconConfiguration(this, 0, 0);
  v8 = objc_alloc(MEMORY[0x1E69A8A28]);
  v9 = [v8 initWithTypeIdentifier:theString configuration:v7];

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

  return v9;
}

uint64_t TFSInfo::FetchApplicationDMFPolicy(TFSInfo *this)
{
  if (!*(this + 2))
  {
    return 0;
  }

  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 4) == 0)
  {
    return 0;
  }

  v6 = CFURLCreateFilePathURL(0, *(this + 2), 0);
  LOBYTE(v3) = TCFURLInfo::GetNumericalProperty(v6, *MEMORY[0x1E695E218], v4);
  os_unfair_lock_lock(this + 26);
  *(this + 121) = v3;
  v3 = v3;
  os_unfair_lock_unlock(this + 26);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v6);
  return v3;
}

void sub_1E5722530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::FetchFPItemProperties(TFSInfo *this)
{
  v2 = TFSInfo::GetFPItem(this);
  v3 = v2;
  if (!v2)
  {
    v11 = 4294959224;
    goto LABEL_31;
  }

  v4 = [(TFSInfo *)v2 filename];
  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf, v4);

  TFSInfo::SetItemName(this, &cf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);

  v5 = [(TFSInfo *)v3 displayName];
  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf, v5);

  TFSInfo::SetDisplayName(this, &cf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);

  v6 = [(TFSInfo *)v3 contentType];
  v7 = *(this + 5);
  *(this + 5) = v6;

  KindWithoutPlatformFromUTType(*(this + 5), &cf);
  if ((this + 48) != &cf)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(this + 6, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  v8 = [(TFSInfo *)v3 fileSystemFlags];
  v9 = *(this + 123) & 0xFFFFFFFE;
  if ((v8 & 8) == 0)
  {
    ++v9;
  }

  *(this + 123) = v9;
  if ([(TFSInfo *)v3 isFolder])
  {
    v10 = *(this + 123);
  }

  else
  {
    v12 = [(TFSInfo *)v3 isPackage];
    v10 = *(this + 123);
    if (!v12)
    {
      v13 = 0;
      goto LABEL_14;
    }
  }

  v13 = 32;
LABEL_14:
  *(this + 123) = v10 & 0xFFFFFFDF | v13;
  if ([(TFSInfo *)v3 isPackage])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  *(this + 123) = *(this + 123) & 0xFFFFFFFD | v14;
  if ([*(this + 5) conformsToType:*MEMORY[0x1E6983088]])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  *(this + 123) = *(this + 123) & 0xFFFF7AFF | v15 & 0xFFFFFBFF | (((*(this + 123) >> 5) & 1) << 10);
  if ([*(this + 5) conformsToType:*MEMORY[0x1E6982FF8]])
  {
    v16 = 64;
  }

  else
  {
    v16 = 0;
  }

  *(this + 123) = *(this + 123) & 0xFFFFFFBF | v16;
  v17 = [*(this + 5) conformsToType:*MEMORY[0x1E6982CA8]];
  v19 = *(this + 123);
  if (v17)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v21 = v19 & 0xFFFFFFFB | v20;
  *(this + 123) = v21;
  if ((v19 & 0x40) != 0 || (v22 = [*(this + 5) conformsToType:*MEMORY[0x1E6982C80]], v21 = *(this + 123), v22))
  {
    v23 = 2048;
  }

  else
  {
    v23 = 0;
  }

  *(this + 123) = v21 & 0xFFFFF7FF | v23;
  *(this + 14) = 0;
  *(this + 123) = ((TFSInfo::FPItemPermissionRestrictions(v3, v18) >> 13) & 0x10 | (v8 >> 1) & 8 | *(this + 123) & 0xFFFFFFE7) ^ 0x10;
  os_unfair_lock_lock(this + 27);
  *(this + 127) |= 0x400u;
  os_unfair_lock_unlock(this + 27);
  *(this + 123) = (v8 << 11) & 0x3000 | ((v8 & 1) << 14) | *(this + 123) & 0xFFFF8FFF;
  TFSInfo::FetchBladeRunnerProperties(this, v24, v25);
  v11 = 0;
LABEL_31:

  return v11;
}

void KindWithoutPlatformFromUTType(UTType *a1@<X0>, TString *a2@<X8>)
{
  v6 = a1;
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v3 = [(UTType *)v6 _kindString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if (a2->fString.fRef != v5)
    {
      TString::SetStringRefAsImmutable(a2, v5);
    }
  }

  else
  {
    v5 = [(UTType *)v6 localizedDescription];
    if (a2->fString.fRef != v5)
    {
      TString::SetStringRefAsImmutable(a2, v5);
    }
  }
}

void sub_1E57229A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v10);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetHasLSProperties(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  v5 = (v4 >> 29) & 1;
  if (a2)
  {
    v6 = 0x20000000;
  }

  else
  {
    v6 = 0;
  }

  *(this + 123) = v4 & 0xDFFFFFFF | v6;
  os_unfair_lock_unlock(this + 27);
  return v5;
}

uint64_t TFSInfo::GetAliasInfoFrom(TFSInfo *this, BOOL *a2, BOOL *a3, TString *a4, TString *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (TFSInfo::IsAlias(this))
  {
    os_unfair_lock_lock(this + 27);
    v10 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if ((v10 & 0x40) == 0)
    {
      if (TFSInfo::GetAliasInfoFrom(BOOL &,BOOL &,TString *,TString *)const::once != -1)
      {
        TFSInfo::GetAliasInfoFrom();
      }

      URL = TFSInfo::MakeURL(this);
      *v45 = URL;
      if (!URL)
      {
        goto LABEL_26;
      }

      v12 = URL;
      os_unfair_lock_lock(this + 27);
      v13 = *(this + 127);
      os_unfair_lock_unlock(this + 27);
      if ((v13 & 2) != 0)
      {
        v39 = 0;
      }

      else
      {
        v14 = MEMORY[0x1E692C460](0, v12, 0);
        v39 = v14;
        if (v14)
        {
          v15 = MEMORY[0x1E692C4C0](0, *MEMORY[0x1E695EB28], v14);
          v44.fString.fRef = v15;
          if (v15)
          {
            v16 = CFGetTypeID(v15);
            if (v16 == CFBooleanGetTypeID())
            {
              v17 = IsEqual(v44.fString.fRef, *MEMORY[0x1E695E4D0]);
              *a3 = v17;
              TFSInfo::SetAliasIsContainer(this, v17);
            }
          }

          v18 = MEMORY[0x1E692C4C0](0, *MEMORY[0x1E695EB98], v39);
          cf1 = v18;
          if (v18)
          {
            v19 = CFGetTypeID(v18);
            if (v19 == CFBooleanGetTypeID())
            {
              *a2 = IsEqual(cf1, *MEMORY[0x1E695E4D0]);
            }
          }

          v20 = MEMORY[0x1E692C4C0](0, *MEMORY[0x1E695EA18], v39);
          v37 = v20;
          if (v20)
          {
            v21 = CFGetTypeID(v20);
            TypeID = CFStringGetTypeID();
            if (a4)
            {
              if (v21 == TypeID && a4->fString.fRef != v37)
              {
                TString::SetStringRefAsImmutable(a4, v37);
              }
            }
          }

          v23 = MEMORY[0x1E692C4C0](0, *MEMORY[0x1E695EBE8], v39);
          v36 = v23;
          if (v23)
          {
            v24 = CFGetTypeID(v23);
            v25 = CFStringGetTypeID();
            if (a5)
            {
              if (v24 == v25)
              {
                if (a5->fString.fRef != v36)
                {
                  TString::SetStringRefAsImmutable(a5, v36);
                }

                v26 = TString::EndsWith(a5, TFSInfo::GetAliasInfoFrom(BOOL &,BOOL &,TString *,TString *)const::burnFolderExtension);
                TFSInfo::SetAliasIsBurnFolder(this, v26);
              }
            }
          }

          TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v36);
          TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v37);
          TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&cf1);
          TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v44.fString.fRef);
          TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v39);
LABEL_26:
          TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v45);
LABEL_41:
          v27 = 0;
          goto LABEL_47;
        }
      }

      TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v39);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v45);
      v27 = 4294959232;
      goto LABEL_47;
    }

    TFSInfo::Path(this, &v44.fString.fRef);
    v28 = TString::c_str(&v44);
    if (readlink(v28, v45, 0x400uLL) == -1)
    {
      v32 = __error();
      v27 = TCFURLInfo::TranslatePOSIXError(*v32, 0, v33);
    }

    else
    {
      *a2 = 0;
      *a3 = 1;
      if (a4 && &v44 != a4)
      {
        TString::SetStringRefAsImmutable(a4, v44.fString.fRef);
      }

      if (!a5)
      {
        goto LABEL_40;
      }

      TPathName::TPathName(&v39, &v44, TPathName::kPOSIXPathNameSeparator);
      if (v41 != v40)
      {
        v29 = (v40 + 8 * ((v42 + v43) >> 9));
        v30 = (v42 + v43) & 0x1FF;
        v31 = *v29 + 8 * v30;
        if (v31 != *(v40 + ((v42 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v42 & 0x1FF))
        {
          if (!v30)
          {
            v31 = *(v29 - 1) + 4096;
          }

          if ((v31 - 8) != a5)
          {
            TString::SetStringRefAsImmutable(a5, *(v31 - 8));
          }

          std::deque<TString>::~deque[abi:ne200100](&v39);
LABEL_40:
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v44.fString.fRef);
          goto LABEL_41;
        }
      }

      std::deque<TString>::~deque[abi:ne200100](&v39);
      v27 = 4294959234;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v44.fString.fRef);
    goto LABEL_47;
  }

  v27 = 4294959226;
LABEL_47:
  v34 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1E5722E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::deque<TString>::~deque[abi:ne200100](va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

const void **TFSInfo::ReadFolderAdornmentsFromDisk@<X0>(TFSInfo *this@<X0>, uint64_t a2@<X8>)
{
  TFSInfo::Path(this, &v15.fString.fRef);
  v3 = TString::c_str(&v15);
  v4 = DSFolderIconCustomizationXattrName();
  GetDataForXattr<256ul>(0, 1, v3, v4, &v13);
  v5 = v14;
  if (v14 || !v13)
  {
    *a2 = 0;
    *(a2 + 8) = v5;
  }

  else
  {
    v12 = 0;
    v6 = DSParseCustomFolderIconConfig(v13, &v12);
    v7 = v12;
    v8 = v7;
    if (v6)
    {
      v9 = v6;
      v10 = 0;
    }

    else
    {
      v10 = [v7 code];
      v9 = 0;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
}

void sub_1E5722F90(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetFolderIconConfigFetched(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 127);
  v5 = (v4 >> 13) & 1;
  if (a2)
  {
    v6 = 0x2000;
  }

  else
  {
    v6 = 0;
  }

  *(this + 127) = v4 & 0xDFFF | v6;
  os_unfair_lock_unlock(this + 27);
  return v5;
}

uint64_t TFSInfo::SetIsResumableCopyTarget(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 127);
  v5 = (v4 >> 11) & 1;
  if (a2)
  {
    v6 = 2048;
  }

  else
  {
    v6 = 0;
  }

  *(this + 127) = v4 & 0xF7FF | v6;
  os_unfair_lock_unlock(this + 27);
  return v5;
}

uint64_t TFSInfo::SetSizesFetchedValid(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  v5 = (v4 >> 27) & 1;
  if (a2)
  {
    v6 = 0x8000000;
  }

  else
  {
    v6 = 0;
  }

  *(this + 123) = v4 & 0xF7FFFFFF | v6;
  os_unfair_lock_unlock(this + 27);
  return v5;
}

void TFSInfo::SetOperationFractionCompleted(TFSInfo *this, double a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 127);
  os_unfair_lock_unlock(this + 27);
  if ((v4 & 0x100) != 0)
  {
    os_unfair_lock_lock(this + 26);
    Overflow = TFSInfo::GetOrCreateOverflow(this);
    v6 = Overflow;
    if (a2 > 1.0 || a2 < 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = a2 * 100.0;
    }

    os_unfair_lock_lock(Overflow + 18);
    *&v6[12]._os_unfair_lock_opaque = v8;
    os_unfair_lock_unlock(v6 + 18);

    os_unfair_lock_unlock(this + 26);
  }
}

uint64_t TFSInfo::SetLocalizedTypeDescription(TFSInfo *this, const TString *a2, int a3)
{
  os_unfair_lock_lock(this + 27);
  v6 = (this + 48);
  if (CFEqual(*(this + 6), a2->fString.fRef) || a3 && CFStringGetLength(v6->fString.fRef))
  {
    v7 = 0;
  }

  else
  {
    if (v6 != a2)
    {
      TString::SetStringRefAsImmutable(this + 6, a2->fString.fRef);
    }

    v7 = 1;
  }

  os_unfair_lock_unlock(this + 27);
  return v7;
}

uint64_t TFSInfo::SetUTType(TFSInfo *this, UTType *a2, int a3)
{
  v6 = a2;
  os_unfair_lock_lock(this + 27);
  if (([*(this + 5) isEqual:v6] & 1) != 0 || a3 && *(this + 5))
  {
    v7 = 0;
  }

  else
  {
    objc_storeStrong(this + 5, a2);
    v7 = 1;
  }

  os_unfair_lock_unlock(this + 27);

  return v7;
}

void sub_1E57232D0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 27);

  _Unwind_Resume(a1);
}

uint64_t TFSInfoOverflow::ICloud(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 72));
  if (!a2)
  {
    v6 = *(a1 + 76);
    if (v6 == 2)
    {
      TFSInfoOverflow::MigrateToType(a1, 1);
    }

    else if (v6 == 3)
    {
      *(a1 + 76) = 1;
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0x80000000;
    }
  }

  v4 = *(a1 + 76);
  os_unfair_lock_unlock((a1 + 72));
  if (v4 == 1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id objc_cast<NSError,objc_object * {__strong}>(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void TFSInfo::SetICloudSharePerson(TFSInfo *this, NSPersonNameComponents *a2)
{
  v7 = a2;
  os_unfair_lock_lock(this + 26);
  if (v7 || *(this + 10))
  {
    Overflow = TFSInfo::GetOrCreateOverflow(this);
    os_unfair_lock_lock((Overflow + 72));
    if (v7)
    {
      v5 = *(Overflow + 76);
      if (v5 == 2)
      {
        TFSInfoOverflow::MigrateToType(Overflow, 1);
      }

      else if (v5 == 3)
      {
        *(Overflow + 76) = 1;
        *(Overflow + 32) = 0;
        *Overflow = 0u;
        *(Overflow + 16) = 0u;
        *(Overflow + 32) = 0x80000000;
      }
    }

    v6 = *(Overflow + 76);
    os_unfair_lock_unlock((Overflow + 72));
    if (v6 == 1)
    {
      objc_storeStrong(Overflow, a2);
    }
  }

  os_unfair_lock_unlock(this + 26);
}

void sub_1E57234EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 26);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetKindWithoutPlatform(TFSInfo *this, TString *a2, char a3, _BYTE *a4)
{
  *a4 = 0;
  v7 = *(this + 120);
  if (v7 <= 0x24)
  {
    if (((1 << v7) & 0x18007F187ELL) != 0)
    {
      cf = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      if (&cf == a2)
      {
LABEL_7:
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
        return 0;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      v8 = cf;
      if (!cf)
      {
LABEL_6:
        cf = &stru_1F5F42870;
        goto LABEL_7;
      }

LABEL_5:
      CFRelease(v8);
      goto LABEL_6;
    }

    if (((1 << v7) & 0x700000000) != 0)
    {
      os_unfair_lock_lock(this + 26);
      os_unfair_lock_unlock(this + 26);
      return 0;
    }

    if (((1 << v7) & 0x30000000) != 0)
    {
      v11 = TFSInfo::GetFPItem(this);
      v12 = [v11 contentType];

      KindWithoutPlatformFromUTType(v12, &cf);
      if (&cf != a2)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
        CFRetain(&stru_1F5F42870);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = &stru_1F5F42870;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);

      return 0;
    }
  }

  if (*(this + 120))
  {
    TString::TString(&cf, "Unknown");
    if (&cf == a2)
    {
      goto LABEL_7;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    v8 = cf;
    if (!cf)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  TFSInfo::LocalizedTypeDescription(this, &cf);
  if (&cf != a2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  if (CFStringGetLength(a2->fString.fRef))
  {
    return 0;
  }

  if (a3 < 0)
  {
    v14 = TFSInfo::ApproximateUTType(this);
    v15 = v14;
    if (v14)
    {
      v16 = [v14 _kindString];
      if (a2->fString.fRef != v16)
      {
        TString::SetStringRefAsImmutable(a2, v16);
      }
    }

    if (CFStringGetLength(a2->fString.fRef))
    {
      v9 = 4294959210;
    }

    else
    {
      v9 = 4294959222;
    }
  }

  else
  {
    os_unfair_lock_lock(this + 27);
    v13 = *(this + 2);
    v17 = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    os_unfair_lock_unlock(this + 27);
    TCFURLInfo::StringProperty(v13, *MEMORY[0x1E695EBD0], &cf);
    if (&cf != a2)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v17);
    v9 = 0;
  }

  TFSInfo::SetLocalizedTypeDescription(this, a2, v9 != 0);
  return v9;
}

uint64_t TFSInfo::GetShortVersion(uint64_t a1, const void **a2)
{
  VersionMetaData = TFSInfo::FetchVersionMetaData(a1);
  os_unfair_lock_lock((a1 + 104));
  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  if (&cf != a2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a2, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  v5 = *a1;
  if (*a1)
  {
    cf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf, *v5);
    if (&cf != a2)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a2, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  os_unfair_lock_unlock((a1 + 104));
  return VersionMetaData;
}

void sub_1E5723990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  os_unfair_lock_unlock(v2 + 26);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetLongVersion(uint64_t a1, TString *a2)
{
  VersionMetaData = TFSInfo::FetchVersionMetaData(a1);
  os_unfair_lock_lock((a1 + 104));
  TString::SetStringRefAsImmutable(a2, 0);
  v5 = *a1;
  if (*a1)
  {
    cf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf, *(v5 + 8));
    if (&cf != a2)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  os_unfair_lock_unlock((a1 + 104));
  return VersionMetaData;
}

void sub_1E5723A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  os_unfair_lock_unlock(v2 + 26);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetSystemVersion(uint64_t a1, TString *a2)
{
  VersionMetaData = TFSInfo::FetchVersionMetaData(a1);
  os_unfair_lock_lock((a1 + 104));
  TString::SetStringRefAsImmutable(a2, 0);
  v5 = *a1;
  if (*a1)
  {
    cf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf, *(v5 + 16));
    if (&cf != a2)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  os_unfair_lock_unlock((a1 + 104));
  return VersionMetaData;
}

void sub_1E5723B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  os_unfair_lock_unlock(v2 + 26);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetCopyrightString(uint64_t a1, TString *a2)
{
  VersionMetaData = TFSInfo::FetchVersionMetaData(a1);
  os_unfair_lock_lock((a1 + 104));
  TString::SetStringRefAsImmutable(a2, 0);
  v5 = *a1;
  if (*a1)
  {
    cf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf, *(v5 + 24));
    if (&cf != a2)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  os_unfair_lock_unlock((a1 + 104));
  return VersionMetaData;
}

void sub_1E5723C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  os_unfair_lock_unlock(v2 + 26);
  _Unwind_Resume(a1);
}

uint64_t *SFBrowsers(void)
{
  {
    std::vector<TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>>::vector[abi:ne200100](SFBrowsers(void)::browsers, 2uLL);
  }

  return SFBrowsers(void)::browsers;
}

int *SFBrowserLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF4408, memory_order_acquire) & 1) == 0)
  {
    SFBrowserLock();
  }

  return &dword_1ECFF43FC;
}

const void **TFSInfo::Finalize(TFSInfo *this)
{
  v1 = TFSInfo::NetworkLock(this);
  os_unfair_lock_lock(v1);
  v2 = TFSInfo::gNetworkNearbyBrowserRef;
  TFSInfo::gNetworkNearbyBrowserRef = 0;
  v17 = v2;
  v3 = TFSInfo::gAirDropBrowserRef;
  TFSInfo::gAirDropBrowserRef = 0;
  v16 = v3;
  v5 = TFSInfo::OpenBrowserMap(v4);
  v6 = (v5 + 8);
  v7 = *v5;
  if (*v5 != v5 + 8)
  {
    do
    {
      if (v7[12] >= 1)
      {
        v8 = *(v7 + 4);
        v9 = *(v7 + 5);
        SFBrowserCloseNode();
      }

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
    }

    while (v11 != v6);
  }

  std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(v5, *(v5 + 8));
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = v6;
  os_unfair_lock_unlock(v1);
  SFBrowserLock();
  os_unfair_lock_lock(&dword_1ECFF43FC);
  SFBrowsers();
  v13 = SFBrowsers(void)::browsers[0];
  v14 = unk_1ECFF48A0;
  while (v13 != v14)
  {
    if (*v13)
    {
      CFRelease(*v13);
    }

    *v13++ = 0;
  }

  os_unfair_lock_unlock(&dword_1ECFF43FC);
  if (v17)
  {
    SFBrowserInvalidate();
  }

  if (v16)
  {
    SFBrowserInvalidate();
  }

  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v16);
  return TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v17);
}

void sub_1E5723E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  os_unfair_lock_unlock(&dword_1ECFF43FC);
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&a9);
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::OpenBrowserMap(TFSInfo *this)
{
  {
    operator new();
  }

  return TFSInfo::OpenBrowserMap(void)::sOpenNodeBrowsers;
}

CFIndex TFSInfo::SetResourcePropertyForKey(TFSInfo *this, const __CFString *a2, const __CFString *a3, const void *a4)
{
  error = 0;
  if (CFURLSetResourcePropertyForKey(this, a2, a3, &error))
  {
    v5 = 0;
  }

  else
  {
    v5 = TCFURLInfo::TranslateCFError(error, v4);
  }

  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&error);
  return v5;
}

void sub_1E5723FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

CFIndex TFSInfo::SetProperty(TFSInfo *this, const __CFString *a2, const __CFString *a3)
{
  os_unfair_lock_lock(this + 27);
  v6 = *(this + 2);
  v10 = v6;
  if (v6)
  {
    CFRetain(v6);
    os_unfair_lock_unlock(this + 27);
    if (a3)
    {
      v8 = TFSInfo::SetResourcePropertyForKey(v6, a2, a3, v7);
    }

    else
    {
      v8 = 4294959224;
    }
  }

  else
  {
    os_unfair_lock_unlock(this + 27);
    v8 = 4294959238;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v10);
  return v8;
}

void sub_1E5724080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

CFIndex TFSInfo::SetTimeProperty(TFSInfo *this, const __CFString *a2, CFAbsoluteTime a3)
{
  v5 = CFDateCreate(0, a3);
  v8 = v5;
  if (v5)
  {
    v6 = TFSInfo::SetProperty(this, a2, v5);
  }

  else
  {
    v6 = 4294959224;
  }

  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(&v8);
  return v6;
}

void sub_1E5724108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetUserID(TFSInfo *this)
{
  {
    TFSInfo::GetUserID(void)::UID = geteuid();
  }

  return TFSInfo::GetUserID(void)::UID;
}

uint64_t TFSInfo::SameIdentity(TFSInfo *this, TFSInfo **a2)
{
  if (*a2 == this)
  {
    return 1;
  }

  v4 = *(this + 120);
  if (v4 != 26 && (v4 & 0xFE) != 0x1C)
  {
    if ((v4 & 0xFE) == 0x18)
    {
      return v4 == *(*a2 + 120);
    }

    VolumeIdentifier = TFSInfo::GetVolumeIdentifier(this);
    if (VolumeIdentifier != TFSInfo::GetVolumeIdentifier(*a2))
    {
      return 0;
    }

    os_unfair_lock_lock(this + 27);
    v8 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    v9 = *a2;
    os_unfair_lock_lock(*a2 + 27);
    v10 = *(v9 + 123);
    os_unfair_lock_unlock(v9 + 27);
    if (((v8 ^ v10) & 0x20) != 0)
    {
      return 0;
    }

    TFSInfo::Name(this, &v13);
    TFSInfo::Name(*a2, &v12);
    if (CFEqual(v13.fString.fRef, v12.fString.fRef))
    {
      IsSymlink = TFSInfo::IsSymlink(this);
      v5 = IsSymlink ^ TFSInfo::IsSymlink(*a2) ^ 1;
    }

    else
    {
      v5 = 0;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
    return v5;
  }

  return TFSInfo::Equal(this, a2);
}

void sub_1E572432C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef *TString::TString(CFTypeRef *a1, CFTypeRef *a2)
{
  *a1 = *a2;
  *a2 = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  return a1;
}

void ___Z16CopyURLForFPItemP6FPItemb_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong(*(a1 + 32), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 48));
}

id __copy_helper_block_ea8_32c38_ZTSKZ16CopyURLForFPItemP6FPItembE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void __destroy_helper_block_ea8_32c38_ZTSKZ16CopyURLForFPItemP6FPItembE3__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t CopyURLForFPItem(FPItem *,BOOL)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *TFSInfo::CopyParentPathURL(TFSInfo *this)
{
  PathComponent = this;
  os_unfair_lock_lock(this + 27);
  v2 = *(PathComponent + 2);
  v4 = v2;
  if (v2)
  {
    CFRetain(v2);
    os_unfair_lock_unlock(PathComponent + 27);
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v2);
  }

  else
  {
    os_unfair_lock_unlock(PathComponent + 27);
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v4);
  if (v2)
  {
    return PathComponent;
  }

  else
  {
    return 0;
  }
}

void sub_1E572455C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<BOOL>(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      result = 0;
      **a1 = *a2;
      return result;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      v5 = *a1;

      return TPropertyValue::SetAs<BOOL>(v5, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

uint64_t TString::GetUniChar(TString *this, CFIndex a2)
{
  if (a2 < 0 || CFStringGetLength(this->fString.fRef) <= a2)
  {
    return 0;
  }

  fRef = this->fString.fRef;

  return CFStringGetCharacterAtIndex(fRef, a2);
}

uint64_t TFSInfo::IsLocation(TFSInfo *this)
{
  if (*(this + 120) == 22)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 28);
  }

  TFSInfo::Name(this, &v5);
  IsLocation = TFSInfo::IsLocation(v1, &v5, v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  return IsLocation;
}

void sub_1E57247C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::IsLocation(TFSInfo *this, TFSInfo *a2, const TString *a3)
{
  if (this <= 1768712036)
  {
    if (this > 1768711784)
    {
      if (this != 1768711785)
      {
        v3 = 26228;
        goto LABEL_13;
      }
    }

    else if (this != 1768710502)
    {
      v3 = 24948;
      goto LABEL_13;
    }

    return 1;
  }

  if (this <= 1768713568)
  {
    if (this != 1768712037)
    {
      v3 = 26740;
      goto LABEL_13;
    }

    return 1;
  }

  if (this == 1768713569 || this == 1768713847)
  {
    return 1;
  }

  v3 = 30318;
LABEL_13:
  if (this == (v3 | 0x696C0000))
  {
    return 1;
  }

  return TFSInfo::HasLocationExtension(a2, a2);
}

uint64_t TFSInfo::HasLocationExtension(TFSInfo *this, const TString *a2)
{
  Length = CFStringGetLength(*this);
  v4 = Length - 5;
  if (Length < 5)
  {
    return 0;
  }

  v5 = Length;
  v6 = Length - 3;
  if ((Length - 3) < 0)
  {
    return 0;
  }

  if ((CFStringGetLength(*this) <= v6 || CFStringGetCharacterAtIndex(*this, v6) != 76) && (CFStringGetLength(*this) <= v6 || CFStringGetCharacterAtIndex(*this, v6) != 108))
  {
    return 0;
  }

  if ((CFStringGetLength(*this) <= (v5 - 2) || CFStringGetCharacterAtIndex(*this, v5 - 2) != 79) && (CFStringGetLength(*this) <= (v5 - 2) || CFStringGetCharacterAtIndex(*this, v5 - 2) != 111))
  {
    return 0;
  }

  if (CFStringGetLength(*this) > (v5 - 1) && CFStringGetCharacterAtIndex(*this, v5 - 1) == 67)
  {
    if (v5 < 7)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (CFStringGetLength(*this) <= (v5 - 1))
  {
    return 0;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(*this, v5 - 1);
  result = 0;
  if (v5 >= 7 && CharacterAtIndex == 99)
  {
LABEL_18:
    v9 = v5 - 6;
    if (CFStringGetLength(*this) > (v5 - 6) && CFStringGetCharacterAtIndex(*this, v5 - 6) == 46 && (CFStringGetLength(*this) > v4 && CFStringGetCharacterAtIndex(*this, v4) == 65 || CFStringGetLength(*this) > v4 && CFStringGetCharacterAtIndex(*this, v4) == 97) && (CFStringGetLength(*this) > (v5 - 4) && CFStringGetCharacterAtIndex(*this, v5 - 4) == 84 || TString::GetUniChar(this, v5 - 4) == 116))
    {
      return 1;
    }

    if (v5 >= 8)
    {
      v10 = v5 - 7;
      if (CFStringGetLength(*this) > (v5 - 7) && CFStringGetCharacterAtIndex(*this, v5 - 7) == 46 && ((CFStringGetLength(*this) > v9 && CFStringGetCharacterAtIndex(*this, v5 - 6) == 87 || CFStringGetLength(*this) > v9 && CFStringGetCharacterAtIndex(*this, v5 - 6) == 119) && (CFStringGetLength(*this) > v4 && CFStringGetCharacterAtIndex(*this, v4) == 69 || TString::GetUniChar(this, v4) == 101) && (CFStringGetLength(*this) > (v5 - 4) && CFStringGetCharacterAtIndex(*this, v5 - 4) == 66 || TString::GetUniChar(this, v5 - 4) == 98) || (CFStringGetLength(*this) > v9 && CFStringGetCharacterAtIndex(*this, v5 - 6) == 70 || TString::GetUniChar(this, v5 - 6) == 102) && (TString::GetUniChar(this, v4) == 84 || TString::GetUniChar(this, v4) == 116) && (TString::GetUniChar(this, v5 - 4) == 80 || TString::GetUniChar(this, v5 - 4) == 112) || (TString::GetUniChar(this, v5 - 6) == 65 || TString::GetUniChar(this, v5 - 6) == 97) && (TString::GetUniChar(this, v4) == 70 || TString::GetUniChar(this, v4) == 102) && (TString::GetUniChar(this, v5 - 4) == 80 || TString::GetUniChar(this, v5 - 4) == 112)))
      {
        return 1;
      }

      if (v5 != 8 && CFStringGetLength(*this) > (v5 - 8) && CFStringGetCharacterAtIndex(*this, v5 - 8) == 46)
      {
        if ((CFStringGetLength(*this) > v10 && CFStringGetCharacterAtIndex(*this, v5 - 7) == 70 || TString::GetUniChar(this, v5 - 7) == 102) && (CFStringGetLength(*this) > v9 && CFStringGetCharacterAtIndex(*this, v5 - 6) == 73 || TString::GetUniChar(this, v5 - 6) == 105) && (CFStringGetLength(*this) > v4 && CFStringGetCharacterAtIndex(*this, v4) == 76 || TString::GetUniChar(this, v4) == 108) && (TString::GetUniChar(this, v5 - 4) == 69 || TString::GetUniChar(this, v5 - 4) == 101))
        {
          return 1;
        }

        if ((CFStringGetLength(*this) > v10 && CFStringGetCharacterAtIndex(*this, v5 - 7) == 73 || TString::GetUniChar(this, v5 - 7) == 105) && (TString::GetUniChar(this, v5 - 6) == 78 || TString::GetUniChar(this, v5 - 6) == 110) && (TString::GetUniChar(this, v4) == 69 || TString::GetUniChar(this, v4) == 101) && (TString::GetUniChar(this, v5 - 4) == 84 || TString::GetUniChar(this, v5 - 4) == 116))
        {
          return 1;
        }

        if ((TString::GetUniChar(this, v5 - 7) == 77 || TString::GetUniChar(this, v5 - 7) == 109) && (TString::GetUniChar(this, v5 - 6) == 65 || TString::GetUniChar(this, v5 - 6) == 97) && (TString::GetUniChar(this, v4) == 73 || TString::GetUniChar(this, v4) == 105) && (TString::GetUniChar(this, v5 - 4) == 76 || TString::GetUniChar(this, v5 - 4) == 108))
        {
          return 1;
        }

        if ((TString::GetUniChar(this, v5 - 7) == 78 || TString::GetUniChar(this, v5 - 7) == 110) && (TString::GetUniChar(this, v5 - 6) == 69 || TString::GetUniChar(this, v5 - 6) == 101) && (TString::GetUniChar(this, v4) == 87 || TString::GetUniChar(this, v4) == 119))
        {
          v11 = v5 - 4;
          if (TString::GetUniChar(this, v11) == 83 || TString::GetUniChar(this, v11) == 115)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL TFSInfo::UserCanChangeLock(TFSInfo *this)
{
  UserID = TFSInfo::GetUserID(this);
  if (!*(this + 120))
  {
    v5 = UserID;
    v6 = TFSInfo::GetUserID(UserID);
    Owner = TFSInfo::GetOwner(this);
    if (v5)
    {
      if (v6 != Owner)
      {
        return 0;
      }
    }
  }

  os_unfair_lock_lock(this + 27);
  v3 = (*(this + 123) & 0x10000) == 0;
  os_unfair_lock_unlock(this + 27);
  return v3;
}

uint64_t TFSInfo::IsDropBox(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x20) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 27);
  v3 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v4 & 0x2000) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 27);
  v5 = (*(this + 123) >> 14) & 1;
  os_unfair_lock_unlock(this + 27);
  return v5;
}

CFIndex TFSInfo::GetVolumeInfoRecord(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = CFURLCreateFileReferenceURL(0, v3, 0);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  VolumeInfoRecord = TCFURLInfo::GetVolumeInfoRecord(v4, a2);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v7);
  return VolumeInfoRecord;
}

void sub_1E5725110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::Delete(TFSInfo *this, int a2, char a3)
{
  TFSInfo::Path(this, &theString);
  if (CFStringGetLength(theString))
  {
    os_unfair_lock_lock(this + 27);
    v6 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    v7 = a2 & (v6 >> 7);
    if (v7 != 1 || (IsUserLocked = TFSInfo::SetIsUserLocked(this, 0), !IsUserLocked))
    {
      os_unfair_lock_lock(this + 27);
      v9 = *(this + 123);
      os_unfair_lock_unlock(this + 27);
      if ((v9 & 0x20) != 0)
      {
        v15 = TString::c_str(&theString);
        v14 = rmdir(v15);
      }

      else if ((a3 & 1) != 0 || (TFSInfo::Name(this, &cf1), PropertyStoreName = TCFURLInfo::GetPropertyStoreName(v10), v12 = CFEqual(cf1, *PropertyStoreName), TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1), v12))
      {
        v13 = TString::c_str(&theString);
        v14 = unlink(v13);
      }

      else
      {
        v19 = TString::c_str(&theString);
        v14 = TCFURLInfo::DeleteIfNotOpen(v19, v20);
      }

      if (v14)
      {
        v16 = __error();
        IsUserLocked = TCFURLInfo::TranslatePOSIXError(*v16, 0, v17);
        if (v7)
        {
          TFSInfo::SetIsUserLocked(this, 1);
        }
      }

      else
      {
        IsUserLocked = 0;
      }
    }
  }

  else
  {
    IsUserLocked = 4294959238;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return IsUserLocked;
}

void sub_1E5725260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetIsUserLocked(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 2);
  v9 = v4;
  if (!v4)
  {
    v6 = 4294959238;
LABEL_11:
    os_unfair_lock_unlock(this + 27);
    goto LABEL_12;
  }

  CFRetain(v4);
  os_unfair_lock_unlock(this + 27);
  v5 = MEMORY[0x1E695E4C0];
  if (a2)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  if (!TFSInfo::SetProperty(this, *MEMORY[0x1E695EB90], *v5))
  {
    os_unfair_lock_lock(this + 27);
    v6 = 0;
    if (a2)
    {
      v7 = 128;
    }

    else
    {
      v7 = 0;
    }

    *(this + 123) = *(this + 123) & 0xFFFFFF7F | v7;
    goto LABEL_11;
  }

  v6 = 4294967260;
LABEL_12:
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v9);
  return v6;
}

void sub_1E5725364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void ***std::unique_ptr<TFSIterator>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(v2 + 3);
    TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(v2 + 1);
    v3 = TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v2);
    MEMORY[0x1E692CD30](v3, 0x1060C40C3DF4A34);
  }

  return a1;
}

uint64_t TFSInfo::CreateDirectory(TFSInfo *a1, const TString *a2, TString *a3)
{
  TFSInfo::Path(a1, &theString);
  if (CFStringGetLength(theString))
  {
    v10.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    UniqueName = TFSInfo::CreateDirectory(&theString, a2, &v10, v5);
    if (a3)
    {
      TUniqueNamer::SetSeed(a3, a2, a2);
      while (UniqueName == -48)
      {
        *&v9 = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        UniqueName = TUniqueNamer::NextUniqueName(a3, &v9);
        if (!UniqueName)
        {
          UniqueName = TFSInfo::CreateDirectory(&theString, &v9, &v10, v7);
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9);
      }
    }

    if (!UniqueName)
    {
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
  }

  else
  {
    UniqueName = 4294959236;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return UniqueName;
}

void sub_1E5725528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

TCFURLInfo *TFSInfo::CreateDirectory(TFSInfo *this, const TString *a2, TString *a3, TString *a4)
{
  AppendPath(this, a2, &cf);
  if (&cf != a3)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a3->fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  v5 = TString::c_str(a3);
  if (strlen(v5) < 0x400)
  {
    v7 = TString::c_str(a3);
    v8 = mkdir(v7, 0x1FFu);
    v9 = TString::c_str(a3);
    return TCFURLInfo::TranslatePOSIXError(v8, v9, v10);
  }

  else
  {
    TString::SetStringRefAsImmutable(a3, 0);
    return 4294959236;
  }
}

uint64_t TFSInfo::MoveAndRenameTo(uint64_t a1, TFSInfo **a2, TString **a3, TString *this)
{
  TString::SetStringRefAsImmutable(this, 0);
  if ((TCFURLInfo::GetBooleanProperty(*(a1 + 8), *MEMORY[0x1E695E340], v8) & 1) == 0)
  {
    TFSInfo::Path(a1, &theString);
    if (!CFStringGetLength(theString))
    {
      v9 = 4294959238;
LABEL_27:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
      return v9;
    }

    TFSInfo::Path(*a2, &v23);
    if (!CFStringGetLength(v23))
    {
      v9 = 4294959238;
LABEL_26:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23);
      goto LABEL_27;
    }

    TFSInfo::Name(a1, &v22);
    if (!CFStringGetLength(v22))
    {
      v9 = 4294959238;
LABEL_25:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22);
      goto LABEL_26;
    }

    v21 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    if (a3)
    {
      TString::SetStringRefAsImmutable(&v21, *a3);
    }

    else
    {
      TString::SetStringRefAsImmutable(&v21, v22);
    }

    if (CFStringGetLength(v21))
    {
      SlashesToColons(&v21, &v19);
      AppendPath(&v23, &v19, &v20);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
      v10 = TString::c_str(&v20);
      if (strlen(v10) < 0x400)
      {
        if (&v20 != this)
        {
          TString::SetStringRefAsImmutable(this, v20.fString.fRef);
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);
        v11 = TString::c_str(&theString);
        v12 = TString::c_str(this);
        v14 = TCFURLInfo::RenameWithoutReplacing(v11, v12, v13);
        if (v14)
        {
          v15 = __error();
          v17 = TCFURLInfo::TranslatePOSIXError(*v15, 0, v16);
        }

        else
        {
          v17 = -8069;
        }

        if (v14)
        {
          v9 = v17;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_24;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);
    }

    v9 = 4294959227;
LABEL_24:
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21);
    goto LABEL_25;
  }

  return 4294959217;
}

void sub_1E5725818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va3);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::FileScheme(TFSInfo *this)
{
  {
    operator new();
  }

  return TFSInfo::FileScheme(void)::fileScheme;
}

void sub_1E5725928(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x60C4044C4A2DFLL);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::TriggerMount(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x8000) == 0)
  {
    return 0;
  }

  TFSInfo::Path(this, &theString);
  if (CFStringGetLength(theString))
  {
    v4 = TString::c_str(&theString);
    v5 = opendir(v4);
    if (v5)
    {
      closedir(v5);
      v3 = 0;
    }

    else
    {
      v6 = __error();
      v3 = TCFURLInfo::TranslatePOSIXError(*v6, 0, v7);
    }
  }

  else
  {
    v3 = 4294959238;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return v3;
}

void sub_1E5725A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

TString *TFSInfo::CopyTagsForPath(TFSInfo *this)
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 2);
  v27 = v2;
  if (v2)
  {
    CFRetain(v2);
    os_unfair_lock_unlock(this + 27);
    v26 = 0;
    if (([v27 isFileURL] & 1) == 0)
    {
      v3 = 0;
      goto LABEL_24;
    }

    v3 = [v27 path];
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v3);

    if (!CFStringGetLength(theString))
    {
LABEL_20:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
      v14 = cf_cast<__CFArray const*,void const*>(v26);
      v3 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      bytes = 0;
      TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&bytes);
      goto LABEL_24;
    }

    std::vector<unsigned char>::vector[abi:ne200100](&bytes, 256);
    v4 = TString::c_str(&theString);
    v5 = getxattr(v4, "com.apple.metadata:_kMDItemUserTags", bytes, v24 - bytes, 0, 1);
    if (v5 >= 1)
    {
      v3 = *MEMORY[0x1E695E480];
      v22 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, v5, *MEMORY[0x1E695E498]);
      v26 = CFPropertyListCreateWithData(v3, v22, 0, 0, 0);
      if (cf_cast<__CFDictionary const*,void const*>(v26))
      {
        {
          v17 = MEMORY[0x1E695DFD8];
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          TFSInfo::CopyTagsForPath(void)const::classes = [v17 setWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
        }

        v6 = MEMORY[0x1E696ACD0];
        v7 = TFSInfo::CopyTagsForPath(void)const::classes;
        v8 = v22;
        v21 = 0;
        v9 = [v6 unarchivedObjectOfClasses:v7 fromData:v8 error:&v21];
        v10 = v21;
        v3 = objc_cast<NSArray<FPItem *>,objc_object * {__strong}>(v9);

        if (v3)
        {
          TFSInfo::WriteTagsForPath(this, v3);
          v11 = v3;
        }

        else
        {
          v13 = LogObj(5);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v10;
            _os_log_impl(&dword_1E5674000, v13, OS_LOG_TYPE_ERROR, "Failed to unarchive tag array: %@", buf, 0xCu);
          }
        }

        TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v22);
        v12 = 0;
        goto LABEL_17;
      }

      TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v22);
    }

    v12 = 1;
LABEL_17:
    if (bytes)
    {
      v24 = bytes;
      operator delete(bytes);
    }

    if (v12)
    {
      goto LABEL_20;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
LABEL_24:
    TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v26);
    goto LABEL_25;
  }

  os_unfair_lock_unlock(this + 27);
  v3 = 0;
LABEL_25:
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v27);
  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1E5725D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, uint64_t a17, const void *a18, const void *a19, const void *a20)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a14);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a18);
  TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&a19);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a20);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::WriteTagsForPath(TFSInfo *this, const __CFArray *a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 2);
  v16 = v4;
  if (v4)
  {
    CFRetain(v4);
    v5 = v16;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(this + 27);
  if (([v5 isFileURL] & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = v16;
  if (!v16)
  {
LABEL_17:
    v13 = 4294959238;
    goto LABEL_18;
  }

  if (!a2 || (Count = CFArrayGetCount(a2), v6 = v16, !Count))
  {
    v11 = [v6 path];
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v11);

    if (CFStringGetLength(theString))
    {
      v12 = TString::c_str(&theString);
      removexattr(v12, "com.apple.metadata:_kMDItemUserTags", 1);
    }

    goto LABEL_14;
  }

  v8 = [v16 path];
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&theString, v8);

  if (!CFStringGetLength(theString))
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
    goto LABEL_17;
  }

  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v10 = TString::c_str(&theString);
    setxattr(v10, "com.apple.metadata:_kMDItemUserTags", [(__CFData *)Data bytes], [(__CFData *)Data length], 0, 1);
  }

LABEL_14:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
LABEL_15:
  v13 = 0;
LABEL_18:
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v16);
  return v13;
}

void sub_1E572603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

const void **TFSInfo::Rename@<X0>(TFSInfo *this@<X0>, const TString *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = &stru_1F5F42870;
  result = CFRetain(&stru_1F5F42870);
  *(a4 + 8) = 0;
  v9 = *(this + 120);
  if (v9 > 0x15)
  {
    if (v9 == 22 || v9 == 35)
    {
      return TFSInfo::SetItemName(this, a2);
    }
  }

  else if (*(this + 120))
  {
    if (v9 == 1)
    {
      TFSInfo::Name(this, &cf1);
      v10 = CFEqual(cf1, a2->fString.fRef);
      result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
      if (!v10)
      {
        return TFSInfo::SetItemName(this, a2);
      }
    }
  }

  else
  {
    TFSInfo::Name(this, &cf1);
    v11 = CFEqual(cf1, a2->fString.fRef);
    result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
    if (!v11)
    {
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    if (a3)
    {
      *(a4 + 8) = 0;
    }

    else
    {
      *(a4 + 8) = -8057;
    }
  }

  return result;
}

CFIndex TFSInfo::SetType(TFSInfo *this, unsigned int a2)
{
  TFSInfo::GetFinderInfo(this);
  v7[0] = a2 | (*(this + 29) << 32);
  v7[1] = v4;
  v7[2] = TFSInfo::GetExtendedFinderInfo(this);
  v7[3] = v5;
  result = TFSInfo::SetTotalFinderInfo(this, v7);
  if (!result)
  {
    *(this + 28) = a2;
  }

  return result;
}

CFIndex TFSInfo::SetCreator(TFSInfo *this, uint64_t a2)
{
  TFSInfo::GetFinderInfo(this);
  v7[0] = *(this + 28) | (a2 << 32);
  v7[1] = v4;
  v7[2] = TFSInfo::GetExtendedFinderInfo(this);
  v7[3] = v5;
  result = TFSInfo::SetTotalFinderInfo(this, v7);
  if (!result)
  {
    *(this + 29) = a2;
  }

  return result;
}

CFIndex TFSInfo::SetIsExtensionHidden(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v4 & 0x10) == 0)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695EB10];
  v7 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *v7;

  return TFSInfo::SetProperty(this, v6, v8);
}

void TPropertyReference::As<NSObject * {__strong}>(id **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  TPropertyReference::As<NSObject * {__strong}>(a1, &v2, a2);
}

id objc_cast<NSDictionary,NSObject * {__strong}>(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFIndex TFSInfo::SetHasCustomIcon(TFSInfo *this, int a2)
{
  FinderInfo = TFSInfo::GetFinderInfo(this);
  v6 = 1024;
  if (!a2)
  {
    v6 = 0;
  }

  v9[0] = FinderInfo;
  v9[1] = v5 & 0xFFFFFFFFFFFFFBFFLL | v6;
  v9[2] = TFSInfo::GetExtendedFinderInfo(this);
  v9[3] = v7;
  return TFSInfo::SetTotalFinderInfo(this, v9);
}

id TFSInfo::LastUsedDate(TFSInfo *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v3 = TFSInfo::GetFPItem(this);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 lastUsedDate];
    }

    else
    {
      os_unfair_lock_lock(this + 27);
      v7 = *(this + 2);
      v12 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      os_unfair_lock_unlock(this + 27);
      v8 = v7;
      v9 = FileMetadataCopyLastUsedDateAtURL();
      v10 = *(this + 9);
      *(this + 9) = v9;

      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v12);
      if (*(this + 9))
      {
        goto LABEL_8;
      }

      v5 = [MEMORY[0x1E695DF00] distantPast];
    }

    v6 = *(this + 9);
    *(this + 9) = v5;

LABEL_8:
    v2 = *(this + 9);
  }

  return v2;
}

void sub_1E57265C8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 27);

  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<double>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      result = 0;
      **a1 = *a2;
      return result;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      v5 = *a1;

      return TPropertyValue::SetAs<double>(v5, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

CFIndex TFSInfo::SetIsInvisible(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v4 ^ a2))
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695EB40];
  v7 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *v7;

  return TFSInfo::SetProperty(this, v6, v8);
}

double TFSInfo::ResetContainerIncompleteState(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x20) != 0)
  {
    result = 6.01347002e-154;
    *(this + 14) = 0x2020202020202020;
  }

  return result;
}

uint64_t TFSInfo::SetIsIncomplete(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v4 & 0x20) != 0)
  {
    if (a2)
    {
      *(this + 14) = 0x4D41435362726F6BLL;
    }

    else
    {
      TFSInfo::ResetContainerIncompleteState(this);
      v5 = *(this + 1);
      if (v5)
      {
        v7 = CFURLCreateFileReferenceURL(0, v5, 0);
        if (v7)
        {
          _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }
      }

      else
      {
        v7 = 0;
      }

      TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v7);
    }
  }

  return 0;
}

void sub_1E57269F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, std::__shared_weak_count *);
  os_unfair_lock_unlock(v3 + 27);
  TAutoRef<__CFDictionary *,TRetainReleasePolicy<__CFDictionary *>>::~TAutoRef(va);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va1);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetExtendedFinderInfo(TFSInfo *this)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(this + 120) != 29)
  {
    TCFURLInfo::CopyPropertyValues(*(this + 1));
  }

  result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex TFSInfo::SetTotalFinderInfo(TFSInfo *a1, const UInt8 *a2)
{
  v5 = CFDataCreate(0, a2, 32);
  v3 = TFSInfo::SetProperty(a1, *MEMORY[0x1E695E2C0], v5);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v5);
  return v3;
}

void sub_1E5726B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

unint64_t TFSInfo::HasBeenInited(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    return 0;
  }

  TFSInfo::GetFinderInfo(this);
  return (v3 >> 8) & 1;
}

uint64_t TFSInfo::GetLogicalSize(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) == 0)
  {
    v3 = TFSInfo::GetFPItem(this);
    v4 = v3;
    if (v3)
    {
      if ([v3 isCloudItem])
      {
        v5 = (*(this + 123) & 0x20) != 0 ? [v4 isRecursivelyDownloaded] : objc_msgSend(v4, "isDownloaded");
        if ((v5 & 1) == 0)
        {
          os_unfair_lock_lock(this + 27);
          v15 = *(this + 123);
          os_unfair_lock_unlock(this + 27);
          if ((v15 & 2) != 0 || (os_unfair_lock_lock(this + 27), v16 = *(this + 123), os_unfair_lock_unlock(this + 27), (v16 & 0x20) == 0))
          {
            os_unfair_lock_lock(this + 27);
            *(this + 123) |= 0x8000000u;
            os_unfair_lock_unlock(this + 27);
            goto LABEL_24;
          }
        }
      }

      if ([v4 isCloudItem] && objc_msgSend(v4, "isDownloaded") && (*(this + 123) & 0x20) != 0 && TFSInfo::IsPackage(this))
      {
        TFSInfo::SetSizesFetchedValid(this, 1);
        goto LABEL_24;
      }

      os_unfair_lock_lock(this + 27);
      v7 = *(this + 123);
      os_unfair_lock_unlock(this + 27);
      if ((v7 & 0x20) != 0 && (TCFURLInfo::GetNumericalProperty(*(this + 1), *MEMORY[0x1E695E2A8], v8) & 0x40000000) != 0)
      {
        v6 = -2;
        goto LABEL_26;
      }
    }

    v9 = *(this + 120);
    if (v9 == 29)
    {
      v13 = TFSInfo::GetFPItem(this);
      v14 = [v13 documentSize];
      v6 = [v14 integerValue];

LABEL_26:
      return v6;
    }

    if (v9 != 28)
    {
      os_unfair_lock_lock(this + 27);
      v10 = *(this + 123);
      os_unfair_lock_unlock(this + 27);
      if ((v10 & 0x20) != 0)
      {
        os_unfair_lock_lock(this + 26);
        v18 = *(this + 10);
        if (v18)
        {
          TFSInfoOverflow::FolderSizeRecord(v18, v19);
          if (v20)
          {
            v6 = v19[0];
          }

          else
          {
            v6 = -1;
          }
        }

        else
        {
          v6 = -1;
        }

        os_unfair_lock_unlock(this + 26);
        goto LABEL_26;
      }

      NumericalProperty = TCFURLInfo::GetNumericalProperty(*(this + 1), *MEMORY[0x1E695EC20], v11);
      goto LABEL_25;
    }

LABEL_24:
    NumericalProperty = TFSInfo::GetDataLogicalSize(this);
LABEL_25:
    v6 = NumericalProperty;
    goto LABEL_26;
  }

  return -1;
}

void sub_1E5726DB8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 26);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetDataLogicalSize(TFSInfo *this)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 27);
  v3 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v3 & 0x2000000) != 0)
  {
    goto LABEL_6;
  }

  v4 = TFSInfo::GetFPItem(this);
  if (!v4)
  {
    TCFURLInfo::CopyPropertyValues(*(this + 1));
LABEL_6:
    v8 = -1;
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 documentSize];
  v7 = v6;
  if (v6)
  {
    v1 = [v6 longLongValue];
  }

  if (v7)
  {
    v8 = v1;
  }

  else
  {
    v8 = -2;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t TFSInfo::GetResourceLogicalSize(TFSInfo *this)
{
  v5 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    goto LABEL_5;
  }

  if ((*(this + 120) & 0xFE) != 0x1C)
  {
    TCFURLInfo::CopyPropertyValues(*(this + 1));
LABEL_5:
    result = -1;
    goto LABEL_6;
  }

  result = 0;
LABEL_6:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TFSInfo::GetPhysicalSize(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    return -1;
  }

  if ((*(this + 120) & 0xFE) == 0x1C)
  {

    return TFSInfo::GetDataLogicalSize(this);
  }

  os_unfair_lock_lock(this + 27);
  v5 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v5 & 0x20) != 0)
  {
    if (UseFileProviderFramework())
    {
      if ((TCFURLInfo::GetNumericalProperty(*(this + 1), *MEMORY[0x1E695E2A8], v9) & 0x40000000) != 0)
      {
        v10 = TFSInfo::GetFPItem(this);

        if (v10)
        {
          return 0;
        }
      }
    }

    os_unfair_lock_lock(this + 26);
    v11 = *(this + 10);
    if (v11)
    {
      TFSInfoOverflow::FolderSizeRecord(v11, v12);
      if (v14)
      {
        v4 = v13;
      }

      else
      {
        v4 = -1;
      }
    }

    else
    {
      v4 = -1;
    }

    os_unfair_lock_unlock(this + 26);
    return v4;
  }

  v7 = *(this + 1);
  v8 = *MEMORY[0x1E695EC18];

  return TCFURLInfo::GetNumericalProperty(v7, v8, v6);
}

uint64_t TFSInfo::GetResourcePhysicalSize(TFSInfo *this)
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    goto LABEL_7;
  }

  if ((*(this + 120) & 0xFE) != 0x1C)
  {
    TCFURLInfo::CopyPropertyValues(*(this + 1));
LABEL_7:
    result = -1;
    v5 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = *MEMORY[0x1E69E9840];

  return TFSInfo::GetResourceLogicalSize(this);
}

uint64_t TFSInfo::GetDataPhysicalSize(TFSInfo *this)
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    goto LABEL_7;
  }

  if ((*(this + 120) & 0xFE) != 0x1C)
  {
    TCFURLInfo::CopyPropertyValues(*(this + 1));
LABEL_7:
    result = -1;
    v5 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = *MEMORY[0x1E69E9840];

  return TFSInfo::GetDataLogicalSize(this);
}

uint64_t TFSInfo::LabelColorForTagName(TFSInfo *this, const TString *a2)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v3 = UserTagsMap();
  v5 = v4;
  std::mutex::lock(v4);
  v6 = std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::find<TString>(v3, this);
  if (!v6)
  {
    if (v3[3].isa)
    {
      isa = v3[2].isa;
      if (isa)
      {
        while (1)
        {
          v9 = RetainCF<__CFString const*>(isa + 2);
          if (v9)
          {
            v10 = CFAutorelease(v9);
            v11 = static_cf_cast<__CFString const*,void const*>(v10);
          }

          else
          {
            v11 = 0;
          }

          v12 = RetainCF<__CFString const*>(this);
          if (v12)
          {
            v13 = CFAutorelease(v12);
            v14 = static_cf_cast<__CFString const*,void const*>(v13);
          }

          else
          {
            v14 = 0;
          }

          if (SpotlightStringCompare(v11, v14) == kCFCompareEqualTo)
          {
            break;
          }

          isa = *isa;
          if (!isa)
          {
            goto LABEL_14;
          }
        }

        *v20 = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(v20, *(isa + 2));
        v21 = *(isa + 12);
        v22 = 1;
        v19.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v19, *this);
        v16 = v21;
        buf[0] = &v19;
        *(std::__hash_table<std::__hash_value_type<TString,short>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,short>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,short>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,short>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(v3, &v19) + 12) = v16;
        LOBYTE(v3) = v21;
        LODWORD(this) = HIBYTE(v21);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
        v15 = 1;
      }

      else
      {
LABEL_14:
        v20[0] = 0;
        v22 = 0;
        v3 = LogObj(5);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          this = *this;
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = this;
          _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_ERROR, "Unable to find label color for tag name %@", buf, 0xCu);
        }

        v15 = 0;
        LOBYTE(v3) = 0;
      }

      if (v22 == 1)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v20);
      }

      if (v15)
      {
        goto LABEL_3;
      }
    }

    else
    {
      this = LogObj(5);
      if (os_log_type_enabled(this, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        _os_log_impl(&dword_1E5674000, this, OS_LOG_TYPE_DEBUG, "Tag/color name mapping is empty", v20, 2u);
      }
    }

    v7 = 0;
    LOBYTE(v3) = 0;
    goto LABEL_25;
  }

  LODWORD(v3) = *(v6 + 12);
  LODWORD(this) = v3 >> 8;
LABEL_3:
  v7 = 0x10000;
LABEL_25:
  std::mutex::unlock(v5);
  v17 = *MEMORY[0x1E69E9840];
  return v3 | (this << 8) | v7;
}

void sub_1E572756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, char a13)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  if (a13 == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);
  }

  std::mutex::unlock(v13);
  _Unwind_Resume(a1);
}

CFIndex TFSInfo::SetModeDetails(TFSInfo *this, mode_t a2)
{
  if (!*(this + 1))
  {
    return 4294959238;
  }

  v4 = TFSInfo::CopyPermissions(this);
  fileSec = v4;
  if (v4 && (mode = 0, CFFileSecurityGetMode(v4, &mode), mode != a2) && CFFileSecuritySetMode(fileSec, a2))
  {
    v5 = TFSInfo::SetProperty(this, *MEMORY[0x1E695EAE8], fileSec);
  }

  else
  {
    v5 = 0;
  }

  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&fileSec);
  return v5;
}

void sub_1E5727670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<ISIcon * {__strong}>(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      objc_storeStrong(*a1, *a2);
      return 0;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      v4 = *a1;

      return TPropertyValue::SetAs<ISIcon * {__strong}>(v4, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

uint64_t TPropertyReference::SetAs<ISIconPackage * {__strong}>(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      objc_storeStrong(*a1, *a2);
      return 0;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      v4 = *a1;

      return TPropertyValue::SetAs<ISIconPackage * {__strong}>(v4, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

uint64_t TPropertyReference::SetAs<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      result = 0;
      **a1 = *a2;
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      v5 = *a1;

      result = TPropertyValue::SetAs<int>(v5, a2);
      break;
    case 20:
      if (v2 == 20)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = 0;
      **a1 = *a2;
      break;
    default:
LABEL_49:
      result = 4294959246;
      break;
  }

  return result;
}

uint64_t TFSInfo::GetHasAnyVisibleChildren(TFSInfo *this, const __CFURL *a2)
{
  if (!*(this + 1))
  {
    return 4294967294;
  }

  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v4 & 0x20) == 0)
  {
    return 4294967294;
  }

  os_unfair_lock_lock(this + 27);
  v5 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v5 & 0x100) != 0)
  {
    return 4294967294;
  }

  result = TCFURLInfo::GetBooleanProperty(*(this + 1), *MEMORY[0x1E695ED38], v6);
  if (!result)
  {
    return result;
  }

  result = TCFURLInfo::GetFlatItemDirEntryCount(*(this + 1), 1);
  if ((v8 & 1) == 0)
  {
    return 4294967294;
  }

  if (result)
  {
    FlatItemCount = TFSInfo::GetFlatItemCount(this, a2, 1);
    if (FlatItemCount && FlatItemCount != -2)
    {
      v10 = 0;
    }

    else
    {
      v10 = FlatItemCount | 0x100000000;
    }

    if ((v10 & 0x100000000) != 0)
    {
      return v10;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t TFSInfo::GetFlatItemCount(TFSInfo *this, const __CFURL *a2, const __CFString *a3)
{
  v3 = a3;
  v30 = *MEMORY[0x1E69E9840];
  if (*(this + 120) == 29)
  {
    v5 = TFSInfo::GetFPItem(this);
    v6 = [v5 childItemCount];

    if (v6)
    {
      v7 = [v6 longLongValue];
      if (v3)
      {
        v8 = v7 > 0;
      }

      else
      {
        v8 = v7;
      }

      goto LABEL_26;
    }

    v21 = LogObj(4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = TFSInfo::GetFPItem(this);
      *v27 = 138543362;
      *&v27[4] = v22;
      _os_log_impl(&dword_1E5674000, v21, OS_LOG_TYPE_ERROR, "Failed to get item count for FPv2 directory: %{public}@", v27, 0xCu);
    }

    goto LABEL_25;
  }

  if ((TCFURLInfo::GetNumericalProperty(*(this + 1), *MEMORY[0x1E695E2A8], a3) & 0x40000000) != 0)
  {
    v12 = TFSInfo::GetFPItem(this);
    v13 = v12;
    if (v12)
    {
      v14 = [v12 providerDomainID];
      *v27 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(v27, v14);

      v15 = IsICloudDriveDomainID(v27);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v27);

      if (v15)
      {
        FlatItemDirEntryCount = TCFURLInfo::GetFlatItemDirEntryCount(*(this + 1), 1);
        if (v17)
        {
          v8 = FlatItemDirEntryCount;
        }

        else
        {
          v8 = -2;
        }

        goto LABEL_26;
      }
    }

    v21 = LogObj(4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = *(this + 1);
      v24 = SanitizedURL(v23);
      v25 = TFSInfo::GetFPItem(this);
      *v27 = 138543618;
      *&v27[4] = v24;
      v28 = 2114;
      v29 = v25;
      _os_log_impl(&dword_1E5674000, v21, OS_LOG_TYPE_ERROR, "Failed to get item count for dataless directory: %{public}@, fpItem: %{public}@", v27, 0x16u);
    }

LABEL_25:

    v8 = -2;
    goto LABEL_26;
  }

  if ((a2 & 1) == 0)
  {
    v10 = TCFURLInfo::GetFlatItemDirEntryCount(*(this + 1), 0);
    if (v11)
    {
      v8 = v10;
LABEL_26:
      v26 = *MEMORY[0x1E69E9840];
      return v8;
    }
  }

  v18 = *(this + 1);
  v19 = *MEMORY[0x1E69E9840];

  return TCFURLInfo::GetFlatItemCountWithIteration(v18, a2, v3);
}

uint64_t GetDataForXattr<256ul>@<X0>(u_int32_t position@<W2>, int options@<W3>, const char *a3@<X0>, const char *a4@<X1>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v25, 0, 512);
  v10 = getxattr(a3, a4, v25, 0x100uLL, position, options);
  if ((v10 & 0x8000000000000000) == 0)
  {
    result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v25 length:v10];
LABEL_3:
    *a5 = result;
LABEL_4:
    *(a5 + 8) = 0;
    goto LABEL_5;
  }

  v13 = *__error();
  if (v13 == 34)
  {
    v16 = getxattr(a3, a4, 0, 0, position, options);
    v17 = __error();
    if (v16 < 0)
    {
      v24 = *v17;
    }

    else
    {
      v20 = malloc_type_malloc(v16, 0xAA1F0E95uLL);
      v21 = getxattr(a3, a4, v20, v16, position, options);
      v22 = __error();
      if (v21 > 0)
      {
        result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v20 length:v21 freeWhenDone:1];
        goto LABEL_3;
      }

      v24 = *v22;
      free(v20);
    }

    result = TCFURLInfo::TranslateXAttrError(v24, v18, v19);
    *a5 = 0;
    if (v24 != -1427)
    {
      *(a5 + 8) = result;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  result = TCFURLInfo::TranslateXAttrError(v13, v14, v15);
  if (result == -1427)
  {
    v23 = 0;
  }

  else
  {
    v23 = result;
  }

  *a5 = 0;
  *(a5 + 8) = v23;
LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TPropertyReference::SetAs<NSDictionary * {__strong}>(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      objc_storeStrong(*a1, *a2);
      return 0;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      v4 = *a1;

      return TPropertyValue::SetAs<NSDictionary * {__strong}>(v4, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

id TFSInfo::FetchIFSymbol(TFSInfo *this)
{
  os_unfair_lock_lock(this + 26);
  v2 = *(this + 10);
  if (v2)
  {
    v3 = TFSInfoOverflow::GetIFSymbol(v2);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(this + 26);
  if (!v3)
  {
    v4 = TFSInfo::FetchISIcon(this);
    v3 = [v4 symbol];
    os_unfair_lock_lock(this + 26);
    if (v3)
    {
      Overflow = TFSInfo::GetOrCreateOverflow(this);
      TFSInfoOverflow::SetIFSymbol(Overflow, v3);
    }

    else
    {
      v6 = *(this + 10);
      if (v6)
      {
        TFSInfoOverflow::SetIFSymbol(v6, 0);
      }
    }

    os_unfair_lock_unlock(this + 26);
  }

  return v3;
}

uint64_t TPropertyReference::SetAs<IFSymbol * {__strong}>(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      objc_storeStrong(*a1, *a2);
      return 0;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      v4 = *a1;

      return TPropertyValue::SetAs<IFSymbol * {__strong}>(v4, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

BOOL TFSInfo::FetchFlatFileVersion(uint64_t a1, TString *a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 16);
  v16 = v4;
  if (v4)
  {
    CFRetain(v4);
    os_unfair_lock_unlock((a1 + 108));
    v5 = CFBundleCopyInfoDictionaryForURL(v16);
    theDict = v5;
    v6 = v5 != 0;
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, @"CFBundleShortVersionString");
      v8 = Value;
      if (Value)
      {
        v9 = CFGetTypeID(Value);
        if (v9 == CFStringGetTypeID())
        {
          v14.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v14, v8);
          if (&v14 != a2)
          {
            TString::SetStringRefAsImmutable(a2, v14.fString.fRef);
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
        }
      }

      v10 = CFDictionaryGetValue(theDict, @"CFBundleGetInfoString");
      v11 = v10;
      if (v10)
      {
        v12 = CFGetTypeID(v10);
        if (v12 == CFStringGetTypeID())
        {
          v14.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v14, v11);
          if (&a2[1] != &v14)
          {
            TString::SetStringRefAsImmutable(a2 + 1, v14.fString.fRef);
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
        }
      }
    }

    TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(&theDict);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 108));
    v6 = 0;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v16);
  return v6;
}

void sub_1E5728694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(va1);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va2);
  _Unwind_Resume(a1);
}

BOOL TFSInfo::FetchPlistVersion(uint64_t a1, TString *a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 16);
  v20 = v4;
  if (v4)
  {
    CFRetain(v4);
    os_unfair_lock_unlock((a1 + 108));
    v5 = *MEMORY[0x1E695E480];
    Unique = _CFBundleCreateUnique();
    bundle = Unique;
    v7 = Unique != 0;
    if (Unique)
    {
      ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(Unique, @"CFBundleShortVersionString");
      v9 = ValueForInfoDictionaryKey;
      if (ValueForInfoDictionaryKey)
      {
        v10 = CFGetTypeID(ValueForInfoDictionaryKey);
        if (v10 == CFStringGetTypeID())
        {
          v18.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v18, v9);
          if (&v18 != a2)
          {
            TString::SetStringRefAsImmutable(a2, v18.fString.fRef);
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
        }
      }

      v11 = CFBundleGetValueForInfoDictionaryKey(bundle, @"CFBundleGetInfoString");
      v12 = v11;
      if (v11)
      {
        v13 = CFGetTypeID(v11);
        if (v13 == CFStringGetTypeID())
        {
          v18.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v18, v12);
          if (&a2[1] != &v18)
          {
            TString::SetStringRefAsImmutable(a2 + 1, v18.fString.fRef);
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
        }
      }

      v14 = CFBundleGetValueForInfoDictionaryKey(bundle, @"NSHumanReadableCopyright");
      v15 = v14;
      if (v14)
      {
        v16 = CFGetTypeID(v14);
        if (v16 == CFStringGetTypeID())
        {
          v18.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v18, v15);
          if (&a2[3] != &v18)
          {
            TString::SetStringRefAsImmutable(a2 + 3, v18.fString.fRef);
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
        }
      }
    }

    TAutoRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::~TAutoRef(&bundle);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 108));
    v7 = 0;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v20);
  return v7;
}

void sub_1E57288D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TAutoRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::~TAutoRef(va1);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va2);
  _Unwind_Resume(a1);
}

BOOL TFSInfo::IsFramework(TFSInfo *this)
{
  if (TFSInfo::IsFramework(void)const::once != -1)
  {
    TFSInfo::IsFramework();
  }

  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x20) == 0)
  {
    return 0;
  }

  TFSInfo::Name(this, &v5);
  v3 = TString::EndsWith(&v5, TFSInfo::IsFramework(void)const::kFrameworkExtension);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  return v3;
}

void sub_1E57289C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void *TFSInfo::SFNodeFromSFBrowser(TFSInfo *a1, uint64_t a2, int a3)
{
  v27 = 0;
  if ((a1 - 32) < 2)
  {
    cf = TFSInfo::CopyNetworkNearbyBrowserRef(a1);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&v27, cf);
LABEL_5:
    TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(&cf);
    goto LABEL_6;
  }

  if (a1 == 34)
  {
    cf = TFSInfo::CopyAirDropBrowserRef(a1);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&v27, cf);
    goto LABEL_5;
  }

LABEL_6:
  v5 = 0;
  if (a2 && v27)
  {
    RootNode = SFBrowserGetRootNode();
    v26 = RootNode;
    if (RootNode)
    {
      CFRetain(RootNode);
      v7 = v26;
    }

    else
    {
      v7 = 0;
    }

    v25 = 0;
    v8 = TFSInfo::BrowserOpenNode(v27, v7, 0, 0, &v25);
    v9 = SFBrowserCopyNodeForURL();
    v5 = v9;
    v24 = v9;
    if (a3 && !v9)
    {
      v10 = 0;
      do
      {
        usleep(0x186A0u);
        v5 = SFBrowserCopyNodeForURL();
        v24 = v5;
        if (v5)
        {
          break;
        }
      }

      while (v10++ < 0x31);
    }

    if (!v8)
    {
      v12 = dispatch_get_global_queue(0, 0);
      v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v12);

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3321888768;
      handler[2] = ___ZN7TFSInfo19SFNodeFromSFBrowserE17FSInfoVirtualTypePK7__CFURLb_block_invoke;
      handler[3] = &__block_descriptor_56_ea8_32c72_ZTSKZN7TFSInfo19SFNodeFromSFBrowserE17FSInfoVirtualTypePK7__CFURLbE3__0_e5_v8__0l;
      cf = v27;
      if (v27)
      {
        CFRetain(v27);
      }

      v18 = v26;
      if (v26)
      {
        CFRetain(v26);
      }

      v14 = v13;
      v19 = v14;
      v21 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v22 = v18;
      if (v18)
      {
        CFRetain(v18);
      }

      v23 = v19;
      dispatch_source_set_event_handler(v14, handler);

      TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef(&v18);
      TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&cf);
      v15 = dispatch_time(0, 20000000000);
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v14);

      TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef(&v22);
      TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v21);

      v5 = v24;
    }

    v24 = 0;
    TAutoRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TAutoRef(&v24);
    TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef(&v26);
  }

  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v27);
  return v5;
}

void sub_1E5728CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef((v10 + 32));
  TFSInfo::SFNodeFromSFBrowser(FSInfoVirtualType,__CFURL const*,BOOL)::$_0::~$_0(&a9);

  TAutoRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TAutoRef((v11 - 64));
  TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef((v11 - 48));
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef((v11 - 40));
  _Unwind_Resume(a1);
}

const void *TFSInfo::CopyNetworkNearbyBrowserRef(TFSInfo *this)
{
  v1 = TFSInfo::NetworkLock(this);
  os_unfair_lock_lock(v1);
  v2 = RetainCF<__CFString const*>(&TFSInfo::gNetworkNearbyBrowserRef);
  os_unfair_lock_unlock(v1);
  return v2;
}

const void *TFSInfo::CopyAirDropBrowserRef(TFSInfo *this)
{
  v1 = TFSInfo::NetworkLock(this);
  os_unfair_lock_lock(v1);
  v2 = RetainCF<__CFString const*>(&TFSInfo::gAirDropBrowserRef);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t TFSInfo::BrowserOpenNode(TFSInfo *a1, unint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  *a5 = 0;
  v8 = TFSInfo::NetworkLock(a1);
  os_unfair_lock_lock(v8);
  v10 = TFSInfo::OpenBrowserMap(v9);
  v14[0] = a1;
  v14[1] = a2;
  v14[3] = v14;
  v11 = std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::__emplace_unique_key_args<std::pair<__SFBrowser *,__SFNode *>,std::piecewise_construct_t const&,std::tuple<std::pair<__SFBrowser *,__SFNode *>&&>,std::tuple<>>(v10, v14);
  v12 = *(v11 + 48);
  *(v11 + 48) = v12 + 1;
  *a5 = v12 == 0;
  os_unfair_lock_unlock(v8);
  if (*a5)
  {
    return SFBrowserOpenNode();
  }

  else
  {
    return 0;
  }
}

void ___ZN7TFSInfo19SFNodeFromSFBrowserE17FSInfoVirtualTypePK7__CFURLb_block_invoke(uint64_t a1)
{
  v3 = 0;
  TFSInfo::BrowserCloseNode(*(a1 + 32), *(a1 + 40), &v3);
  v2 = *(a1 + 48);

  dispatch_source_cancel(v2);
}

id __copy_helper_block_ea8_32c72_ZTSKZN7TFSInfo19SFNodeFromSFBrowserE17FSInfoVirtualTypePK7__CFURLbE3__0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  a1[4] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 40);
  a1[5] = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  result = *(a2 + 48);
  a1[6] = result;
  return result;
}

const void **__destroy_helper_block_ea8_32c72_ZTSKZN7TFSInfo19SFNodeFromSFBrowserE17FSInfoVirtualTypePK7__CFURLbE3__0(uint64_t a1)
{
  TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef((a1 + 40));

  return TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef((a1 + 32));
}

const void **TFSInfo::SFNodeFromSFBrowser(FSInfoVirtualType,__CFURL const*,BOOL)::$_0::~$_0(uint64_t a1)
{
  TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef((a1 + 8));

  return TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(a1);
}

uint64_t TFSInfo::BrowserCloseNode(TFSInfo *a1, unint64_t a2, BOOL *a3)
{
  *a3 = 0;
  v6 = TFSInfo::NetworkLock(a1);
  os_unfair_lock_lock(v6);
  v8 = TFSInfo::OpenBrowserMap(v7);
  v12[0] = a1;
  v12[1] = a2;
  v9 = std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::find<std::pair<__SFBrowser *,__SFNode *>>(v8, v12);
  if (v8 + 8 != v9)
  {
    v10 = *(v9 + 48) - 1;
    *(v9 + 48) = v10;
    *a3 = v10 == 0;
  }

  os_unfair_lock_unlock(v6);
  if (*a3)
  {
    return SFBrowserCloseNode();
  }

  else
  {
    return 0;
  }
}

BOOL TFSInfo::IsBrowserOpen(TFSInfo *a1)
{
  v2 = TFSInfo::NetworkLock(a1);
  os_unfair_lock_lock(v2);
  v4 = TFSInfo::OpenBrowserMap(v3);
  v7[0] = a1;
  v7[1] = SFBrowserGetRootNode();
  v5 = v4 + 8 != std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::find<std::pair<__SFBrowser *,__SFNode *>>(v4, v7);
  os_unfair_lock_unlock(v2);
  return v5;
}

const void *TFSInfo::SFNodeFromURL(uint64_t a1, int a2, char *a3)
{
  v6 = 32;
  result = TFSInfo::SFNodeFromSFBrowser(0x20, a1, a2);
  if (result)
  {
    goto LABEL_2;
  }

  if (IsRunningInFinder())
  {
    return 0;
  }

  v6 = 34;
  result = TFSInfo::SFNodeFromSFBrowser(0x22, a1, a2);
  if (result)
  {
LABEL_2:
    *a3 = v6;
  }

  return result;
}

uint64_t TFSInfo::SetAliasIsContainer(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  v5 = (v4 >> 17) & 1;
  if (a2)
  {
    v6 = 0x20000;
  }

  else
  {
    v6 = 0;
  }

  *(this + 123) = v4 & 0xFFFDFFFF | v6;
  os_unfair_lock_unlock(this + 27);
  return v5;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void ___ZNK7TFSInfo24FollowAliasOrSymlinkDeepE18NodeRequestOptionsRNSt3__110shared_ptrIS_EEi_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = MEMORY[0x1E692C460](0, v3, 0);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((*(*(a1 + 32) + 8) + 48), v4);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v5);
}

CFIndex TFSInfo::CopyBookmarkDataTo(TFSInfo *this, const __CFData **a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 2);
  v9 = v4;
  if (v4)
  {
    CFRetain(v4);
    os_unfair_lock_unlock(this + 27);
    v8 = 0;
    *a2 = MEMORY[0x1E692C450](0, v4, 536871424, 0, v4, &v8);
    if (v8)
    {
      v6 = TCFURLInfo::TranslateCFError(v8, v5);
    }

    else
    {
      v6 = 0;
    }

    TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&v8);
  }

  else
  {
    os_unfair_lock_unlock(this + 27);
    v6 = 4294959238;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v9);
  return v6;
}

uint64_t TPropertyReference::SetAs<short>(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      result = 0;
      **a1 = *a2;
      break;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      result = 0;
      **a1 = *a2;
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      v5 = *a1;

      result = TPropertyValue::SetAs<short>(v5, a2);
      break;
    case 20:
      if (v2 == 20)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = 0;
      **a1 = *a2;
      break;
    default:
LABEL_49:
      result = 4294959246;
      break;
  }

  return result;
}

id TFSInfo::ApproximateUTType(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 2);
  theString = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  os_unfair_lock_unlock(this + 27);
  v3 = TCFURLInfo::ObjectProperty(v2, *MEMORY[0x1E695DAA0], 0);
  v4 = static_objc_cast<NSString,objc_object * {__strong}>(v3);

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&theString);
  if (!v4)
  {
    TFSInfo::ActualSuffix(this, &theString);
    os_unfair_lock_lock(this + 27);
    v5 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    v6 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if (CFStringGetLength(theString))
    {
      v7 = MEMORY[0x1E6982F30];
      if ((v6 & 2) == 0)
      {
        v7 = MEMORY[0x1E6982D60];
      }

      v8 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:theString conformingToType:*v7];
    }

    else
    {
      v4 = 0;
      if ((v5 & 0x20) == 0 || (v6 & 2) != 0)
      {
        goto LABEL_12;
      }

      v8 = *MEMORY[0x1E6982DC8];
    }

    v4 = v8;
LABEL_12:
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  }

  return v4;
}

uint64_t TFSInfo::FetchVersionMetaData(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 108));
  v2 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v2 & 0x10000000) == 0)
  {
    _ZNSt3__111make_uniqueB8ne200100I12TVersionDataJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
  }

  return 0;
}

void sub_1E572987C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TVersionData>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_1E5729930(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  MEMORY[0x1E692CD30](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetOldLocation(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x100) != 0 || !TFSInfo::HasBeenInited(this))
  {
    return 0xFFFFFFFFLL;
  }

  TFSInfo::GetFinderInfo(this);
  if ((v3 & 0xFFFFFFFF0000) != 0)
  {
    return (v3 >> 16);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t TFSInfo::GetOldIconOrigin(TFSInfo *this)
{
  result = TFSInfo::HasBeenInited(this);
  if (result)
  {
    os_unfair_lock_lock(this + 27);
    v3 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if ((v3 & 0x20) != 0)
    {
      return TFSInfo::GetExtendedFinderInfo(this);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TFSInfo::GetOldViewStyle(TFSInfo *this)
{
  if (TFSInfo::HasBeenInited(this) && (os_unfair_lock_lock(this + 27), v2 = *(this + 123), os_unfair_lock_unlock(this + 27), (v2 & 0x20) != 0))
  {
    TFSInfo::GetExtendedFinderInfo(this);
    v5 = v4;
    TFSInfo::GetFinderInfo(this);
    if ((v5 & 0x800) != 0)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    if ((v5 & 0x2000) == 0)
    {
      v7 = 3;
    }

    if ((v6 & 0x40) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    if ((v6 & 0xE00) != 0)
    {
      return 1;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t TPropertyReference::SetAs<long long>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      result = 0;
      **a1 = *a2;
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      v5 = *a1;

      result = TPropertyValue::SetAs<long long>(v5, a2);
      break;
    case 20:
      if (v2 == 20)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = 0;
      **a1 = *a2;
      break;
    default:
LABEL_49:
      result = 4294959246;
      break;
  }

  return result;
}

uint64_t TPropertyReference::SetAs<NSPersonNameComponents * {__strong}>(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      objc_storeStrong(*a1, *a2);
      return 0;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      v4 = *a1;

      return TPropertyValue::SetAs<NSPersonNameComponents * {__strong}>(v4, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}