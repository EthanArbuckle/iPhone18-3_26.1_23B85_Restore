uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v14 = a2;
  v15 = a1;
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        v18 = (a1 + 1);
        v19 = a1;
        v11 = (a2 - 1);
        v16 = (a2 - 1);
        v17 = (a1 + 2);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(a1, a1 + 1, a1 + 2);
        if (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v11, a1 + 2))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v17, &v16);
        if (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v17, a1 + 1))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v18, &v17);
        if (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v18, a1))
        {
          return 1;
        }

        v5 = &v19;
        v6 = &v18;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }

LABEL_12:
    v7 = (a1 + 2);
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(a1, a1 + 1, a1 + 2);
    v8 = a1 + 3;
    if (v8 != v2)
    {
      v9 = 0;
      while (1)
      {
        if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v8, v7))
        {
          TNodePtr::TNodePtr(&v19, v8);
          do
          {
            v10 = v7;
            TNodePtr::operator=(v7 + 1, v7);
            if (v7 == v15)
            {
              break;
            }

            --v7;
          }

          while (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v19, v10 - 1));
          TNodePtr::operator=(v10, &v19);
          if (++v9 == 8)
          {
            v12 = v8 + 1 == v14;

            return v12;
          }

          v2 = v14;
        }

        v7 = v8++;
        if (v8 == v2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  v14 = a2 - 1;
  if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(a2 - 1, a1))
  {
    v5 = &v15;
    v6 = &v14;
LABEL_6:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(v5, v6);
  }

  return 1;
}

uint64_t std::unordered_set<TNodePtr>::unordered_set<std::__wrap_iter<TNodePtr const*>>(uint64_t a1, FINode **a2, FINode **a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::__emplace_unique_key_args<TNodePtr,TNodePtr const&>(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t **std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::__emplace_unique_key_args<TNodePtr,TNodePtr const&>(void *a1, FINode **a2)
{
  v2 = *a2 >> 2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2 >> 2;
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  v11 = TNodeFromFINode(v9[2]);
  if (v11 != TNodeFromFINode(*a2))
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1E5758B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5758D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, id a19)
{

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c62_ZTSKZ49__FINodeObserver_observerForFINode_withObserver__E3__2(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));

  objc_copyWeak((a1 + 40), (a2 + 40));
}

void __destroy_helper_block_ea8_32c62_ZTSKZ49__FINodeObserver_observerForFINode_withObserver__E3__2(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));

  objc_destroyWeak((a1 + 32));
}

void sub_1E575907C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{

  _Unwind_Resume(a1);
}

void sub_1E5759328(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1E5759500(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E57595EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = FINodeObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E5759810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v13 = va_arg(va4, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va4);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);

  _Unwind_Resume(a1);
}

void NodeObservedOptionsCountRegistry::StoppedObserving(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = a1;
  std::mutex::lock(&NodeObservedOptionsCountRegistry::gRegistryLock);
  if (NodeObservedOptionsCountRegistry::gRegistry)
  {
    v3 = std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::find<FINode * {__strong}>(NodeObservedOptionsCountRegistry::gRegistry, &v24);
    if (v3)
    {
      if (a2)
      {
        v4 = 1;
        v5 = a2;
        do
        {
          if ((v4 & ~v5) == 0)
          {
            break;
          }

          v5 = v5 & ~v4;
          v4 *= 2;
        }

        while (v5);
        v6 = v5 << 32;
      }

      else
      {
        v6 = 0;
        v4 = 1;
      }

      end_iter = bitmask_enum_iterator<NodeRequestOptions>::make_end_iter(a2);
      v12 = v11;
      v13 = 0;
      v14 = v6 | a2;
LABEL_16:
      if ((v14 ^ end_iter) >> 32)
      {
        v15 = 0;
      }

      else
      {
        v15 = v4 == v12;
      }

      v16 = !v15;
      v17 = HIDWORD(v14);
      while ((v14 != end_iter) | v16 & 1)
      {
        *buf = v4 & HIDWORD(v14);
        v18 = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::find<Property>(v3 + 3, buf);
        if (v18)
        {
          v19 = v18[3] - 1;
          v18[3] = v19;
          if (!v19)
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(v3 + 3, v18);
          }

          if (v17)
          {
LABEL_30:
            v20 = HIDWORD(v14) & ~v4;
            v14 = v14 | (v20 << 32);
            for (v4 *= 2; v20; v4 *= 2)
            {
              if ((v4 & ~v20) == 0)
              {
                break;
              }

              v20 &= ~v4;
              v14 = v14 | (v20 << 32);
            }

            goto LABEL_16;
          }
        }

        else
        {
          v13 = *buf | v13;
          if (v17)
          {
            goto LABEL_30;
          }
        }
      }

      if (v13)
      {
        v21 = LogObj(5);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = ShortDescription(v13);
          *buf = 138543618;
          v26 = v22;
          v27 = 2114;
          v28 = v24;
          _os_log_impl(&dword_1E5674000, v21, OS_LOG_TYPE_ERROR, "Unbalanced observing of '%{public}@' changes on %{public}@", buf, 0x16u);
        }
      }

      if (!v3[6])
      {
        std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::erase(NodeObservedOptionsCountRegistry::gRegistry, v3);
      }

      if (!*(NodeObservedOptionsCountRegistry::gRegistry + 24))
      {
        std::unique_ptr<NodeObservedOptionsCountRegistry>::reset[abi:ne200100](&NodeObservedOptionsCountRegistry::gRegistry, 0);
      }
    }

    else
    {
      v9 = LogObj(5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v24;
        _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "Calling StoppedObserving on a node not being observed: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = LogObj(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = ShortDescription(a2);
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v24;
      _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_ERROR, "Unbalanced observing of '%{public}@' changes on %{public}@. Registry is nil.", buf, 0x16u);
    }
  }

  std::mutex::unlock(&NodeObservedOptionsCountRegistry::gRegistryLock);

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E5759C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::mutex::unlock(&NodeObservedOptionsCountRegistry::gRegistryLock);

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table((v2 + 3));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table((a2 + 3));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void FIProviderDomainFetcher::FIProviderDomainFetcher(FIProviderDomainFetcher *this)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 8) = dispatch_queue_create("DomainFetcher", v2);

  *(this + 9) = objc_alloc_init(MEMORY[0x1E695DFA0]);
  *(this + 80) = 0;
  *(this + 11) = dispatch_semaphore_create(0);
}

void FIProviderDomainFetcher::Start(FIProviderDomainFetcher *this)
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(this + 8));
  std::mutex::lock(this);
  v2 = [*(this + 9) firstObject];
  std::mutex::unlock(this);
  if (v2)
  {
    *&v3 = 138543618;
    v15 = v3;
    do
    {
      v4 = LogObj(4);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v2 domainID];
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_DEFAULT, "Looking up domain for id '%@'", buf, 0xCu);
      }

      v6 = FPProviderDomainClass();
      v7 = [v2 domainID];
      v8 = [v2 cachePolicy];
      v16 = 0;
      v9 = [v6 providerDomainWithID:v7 cachePolicy:v8 error:&v16];
      v10 = v16;

      if (!v9)
      {
        v11 = LogObj(4);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [v2 domainID];
          *buf = v15;
          v18 = v12;
          v19 = 2114;
          v20 = v10;
          _os_log_impl(&dword_1E5674000, v11, OS_LOG_TYPE_ERROR, "Failed to find domain for %{public}@ with error: %{public}@", buf, 0x16u);
        }
      }

      std::mutex::lock(this);
      [v2 setAsyncFetchedDomain:v9];
      [v2 setAsyncError:v10];
      [*(this + 9) removeObject:v2];
      [v2 setAsyncResultAvailable:1];
      dispatch_semaphore_signal(*(this + 11));
      if (v9)
      {
        *(this + 80) = 1;
      }

      v13 = [*(this + 9) firstObject];

      std::mutex::unlock(this);
      v2 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t FIProviderDomainFetcher::Queue(id *this, FIProviderDomain *a2)
{
  v3 = a2;
  v4 = [this[9] count];
  [this[9] addObject:v3];
  if (!v4)
  {
    v5 = this[8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN23FIProviderDomainFetcher5QueueEP16FIProviderDomain_block_invoke;
    block[3] = &__block_descriptor_40_ea8_32c63_ZTSKZN23FIProviderDomainFetcher5QueueEP16FIProviderDomainE3__0_e5_v8__0l;
    block[4] = this;
    dispatch_async(v5, block);
  }

  return 0;
}

id FIProviderDomainFetcher::FindQueuedDomain(FIProviderDomainFetcher *this, NSString *a2)
{
  v3 = a2;
  v4 = *(this + 9);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN23FIProviderDomainFetcher16FindQueuedDomainEP8NSString_block_invoke;
  v9[3] = &__block_descriptor_40_ea8_32c66_ZTSKZN23FIProviderDomainFetcher16FindQueuedDomainEP8NSStringE3__0_e33_B32__0__FIProviderDomain_8Q16_B24l;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(this + 9) objectAtIndexedSubscript:v6];
  }

  return v7;
}

uint64_t ___ZN23FIProviderDomainFetcher16FindQueuedDomainEP8NSString_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 domainID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

id __copy_helper_block_ea8_32c66_ZTSKZN23FIProviderDomainFetcher16FindQueuedDomainEP8NSStringE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

FIProviderDomain *FIProviderDomainFetcher::FetchDomainForID(uint64_t a1, void *a2, uint64_t a3, void *a4, void **a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  if ((UseFileProviderFramework() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_16;
  }

  std::mutex::lock(a1);
  if (*(a1 + 80) == 1)
  {
    std::mutex::unlock(a1);
LABEL_4:
    v11 = [FPProviderDomainClass() providerDomainWithID:v9 cachePolicy:a3 error:a5];
    if (a5 && *a5)
    {
      v12 = LogObj(4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v9;
        v35.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v35, v13);

        v14 = SanitizedStr(&v35);
        v15 = *a5;
        *buf = 138412546;
        v37 = v14;
        v38 = 2114;
        v39 = v15;
        _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_ERROR, "Error fetching domainID '%@': %{public}@", buf, 0x16u);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);
      }
    }

    if (v11)
    {
      v16 = [[FIProviderDomain alloc] initWithDomain:v11];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_16;
  }

  v16 = FIProviderDomainFetcher::FindQueuedDomain(a1, v9);
  if (v16)
  {
    std::mutex::unlock(a1);
    goto LABEL_16;
  }

  v19 = [FIProviderDomain alloc];
  v20 = [v10 URLByStandardizingPath];
  v21 = [(FIProviderDomain *)v19 initWithDomainID:v9 cachePolicy:a3 rootURL:v20 domain:0];

  v22 = FIProviderDomainFetcher::Queue(a1, v21);
  std::mutex::unlock(a1);
  if (!v21)
  {
    goto LABEL_4;
  }

  v23 = LogObj(4);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E5674000, v23, OS_LOG_TYPE_DEFAULT, "Waiting for first domain result", buf, 2u);
  }

  v24 = *(a1 + 88);
  v25 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v24, v25))
  {
    v26 = LogObj(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = v9;
      v35.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v35, v27);

      v28 = SanitizedStr(&v35);
      *buf = 138543362;
      v37 = v28;
      _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_ERROR, "Domain fetch for providerDomainID timed out: %{public}@", buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);
    }
  }

  else
  {
    v26 = LogObj(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v9;
      v35.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v35, v29);

      v30 = SanitizedStr(&v35);
      *buf = 138543362;
      v37 = v30;
      _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_DEFAULT, "Domain fetch for providerDomainID finished before timeout: %{public}@", buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);
    }
  }

  if (![(FIProviderDomain *)v21 asyncResultAvailable])
  {
LABEL_35:
    v16 = v21;
    goto LABEL_16;
  }

  v31 = [(FIProviderDomain *)v21 asyncFetchedDomain];
  if (!v31)
  {
    v33 = LogObj(4);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [(FIProviderDomain *)v21 asyncError];
      *buf = 138543618;
      v37 = v9;
      v38 = 2114;
      v39 = v34;
      _os_log_impl(&dword_1E5674000, v33, OS_LOG_TYPE_ERROR, "Waited and received no domain for %{public}@ error: %{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v32 = LogObj(4);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v31;
    _os_log_impl(&dword_1E5674000, v32, OS_LOG_TYPE_DEFAULT, "Waited and received result for domain: %{public}@", buf, 0xCu);
  }

  v16 = [[FIProviderDomain alloc] initWithDomain:v31];
LABEL_16:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

FIProviderDomain *FIProviderDomainFetcher::FetchDomainForURL(std::mutex *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  std::mutex::lock(a1);
  v10 = a1[1].__m_.__opaque[8];
  std::mutex::unlock(a1);
  if (v10)
  {
    v11 = [FPProviderDomainClass() providerDomainForURL:v9 error:a5];
    if (v11)
    {
      v12 = [[FIProviderDomain alloc] initWithDomain:v11];
LABEL_9:
      v14 = v12;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v9 fp_fpfsProviderDomainID:a3];
    if (v11)
    {
      if (a3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      v12 = FIProviderDomainFetcher::FetchDomainForID(a1, v11, a4, v13, 0);
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

uint64_t FIProviderDomainFetcher::Singleton(FIProviderDomainFetcher *this)
{
  {
    operator new();
  }

  return FIProviderDomainFetcher::Singleton(void)::fetcher;
}

void sub_1E575ABF4(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x1080C405B080FE4);
  _Unwind_Resume(a1);
}

id objc_cast<FIProviderDomain,objc_object * {__strong}>(void *a1)
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

void sub_1E575B11C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void sub_1E575B1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void sub_1E575B290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t DSFolderIconCustomizationXattrName(void)
{
  {
    DSFolderIconCustomizationXattrName(void)::name = xattr_name_with_flags("com.apple.icon.folder", 8uLL);
  }

  return DSFolderIconCustomizationXattrName(void)::name;
}

id DSFolderIconConfigBackwardsCompatibleDictionary(NSDictionary *a1, NSDictionary *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"sym"];
  v6 = [(NSDictionary *)v3 objectForKeyedSubscript:@"emoji"];
  v7 = DSFolderIconConfigDictionary(v5, v6, v4);

  return v7;
}

id DSFolderIconConfigDictionary(NSString *a1, NSString *a2, NSDictionary *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v10 = [v8 initWithDictionary:v9];
  v11 = v10;
  if (v7)
  {
    [v10 removeObjectForKey:@"sym"];
    [v11 removeObjectForKey:@"emoji"];
    if ([v11 count])
    {
      v12 = LogObj(5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v11 allKeys];
        v19 = 138412290;
        v20 = v13;
        _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_INFO, "Config dictionary has other keys that will be preserved: %@", &v19, 0xCu);
      }
    }
  }

  if ([(NSString *)v5 length])
  {
    v14 = @"sym";
    v15 = v5;
  }

  else
  {
    if (![(NSString *)v6 length])
    {
      goto LABEL_14;
    }

    v14 = @"emoji";
    v15 = v6;
  }

  [v11 setObject:v15 forKeyedSubscript:v14];
LABEL_14:
  if ([v11 count])
  {
    v16 = [v11 copy];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void sub_1E575BB9C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id DSParseCustomFolderIconConfig(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v11];
    v5 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = LogObj(5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_ERROR, "Parsing icon dictionary failed with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (a2)
  {
    v8 = v5;
    *a2 = v5;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

id DSEncodeCustomFolderIconConfig(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a1 options:2 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "Encoding icon dictionary failed with error: %@", buf, 0xCu);
    }
  }

  if (a2)
  {
    v6 = v4;
    *a2 = v4;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t DS_CFURLGetTagColorProperty(const __CFURL *a1, const void **a2, __CFError **a3)
{
  v4 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v4);
  return 0;
}

void sub_1E575BF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

BOOL DS_CFURLGetValanceProperty(const __CFURL *a1, const void **a2, __CFError **a3)
{
  v19 = 0;
  v6 = URLIsDirectory(a1, &v19);
  v18 = v6;
  v8 = v19;
  if (v19)
  {
    BooleanProperty = TCFURLInfo::GetBooleanProperty(a1, *MEMORY[0x1E695ED38], v7);
    if (!BooleanProperty)
    {
      v11 = 0;
      if (!a2)
      {
        goto LABEL_16;
      }

LABEL_14:
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v11 | BooleanProperty];
      goto LABEL_15;
    }

    BooleanProperty = TCFURLInfo::GetFlatItemDirEntryCount(a1, 0);
    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (!BooleanProperty)
    {
      goto LABEL_7;
    }

    if (BooleanProperty != -2)
    {
      FlatItemCountWithIteration = TCFURLInfo::GetFlatItemCountWithIteration(a1, 1, 1);
      if (FlatItemCountWithIteration && FlatItemCountWithIteration != -2)
      {
        v16 = 0;
      }

      else
      {
        v16 = FlatItemCountWithIteration | 0x100000000;
      }

      if ((v16 & 0x100000000) != 0)
      {
        BooleanProperty = v16;
      }

      else
      {
        BooleanProperty = 1;
      }
    }

    else
    {
LABEL_6:
      BooleanProperty = -2;
    }

LABEL_7:
    v11 = BooleanProperty & 0xFFFFFF00;
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v6)
  {
    v17 = CFErrorCreate(0, *MEMORY[0x1E695E640], 20, 0);
    TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::operator=<__CFError *,TRetainReleasePolicy<__CFError *>>(&v18, &v17);
    TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(&v17);
  }

  if (a2)
  {
    v12 = 0;
LABEL_15:
    *a2 = v12;
  }

LABEL_16:
  if (a3)
  {
    v13 = v18;
    v18 = 0;
    *a3 = v13;
  }

  TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(&v18);
  return v8;
}

void sub_1E575C108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t URLIsDirectory(const __CFURL *a1, BOOL *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  if (_CFURLCopyResourcePropertyValuesAndFlags())
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const void **TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::operator=<__CFError *,TRetainReleasePolicy<__CFError *>>(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

uint64_t DS_CFURLGetFolderAdornmentProperty(int a1, __CFURL *a2, void *a3, uint64_t *a4)
{
  v27 = 0;
  v26 = URLIsDirectory(a2, &v27);
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  if (v27)
  {
    TCFURLInfo::FileSystemRepresentation(a2, 1, &v31);
    v8 = TString::c_str(&v31);
    v9 = DSFolderIconCustomizationXattrName();
    GetDataForXattr<256ul>(0, 1, v8, v9, &v29);
    if (!v29 || v30)
    {
      if (v30)
      {
        v28 = CFErrorCreate(0, *MEMORY[0x1E696A768], v30, 0);
        TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::operator=<__CFError *,TRetainReleasePolicy<__CFError *>>(&v26, &v28);
        TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(&v28);
      }

      v10 = 0;
    }

    else
    {
      v28 = 0;
      v10 = DSParseCustomFolderIconConfig(v29, &v28);
      v11 = v28;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&v26, v11);
        [(__CFError *)v11 code];
      }
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v31.fString.fRef);
    v13 = v10;
    v14 = v13;
    if (!v13)
    {
LABEL_24:

      if (a3)
      {
        goto LABEL_25;
      }

LABEL_9:
      if (!a4)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_24;
      }

      v15 = [v13 objectForKeyedSubscript:@"emoji"];
      v16 = objc_cast<NSString,objc_object * {__strong}>(v15);
      if (theString == v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = [v13 objectForKeyedSubscript:@"sym"];
      v16 = objc_cast<NSString,objc_object * {__strong}>(v15);
      if (theString == v16)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    TString::SetStringRefAsImmutable(&theString, v16);
    goto LABEL_23;
  }

  if (!v26)
  {
    v29 = CFErrorCreate(0, *MEMORY[0x1E695E640], 20, 0);
    TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::operator=<__CFError *,TRetainReleasePolicy<__CFError *>>(&v26, &v29);
    TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(&v29);
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_25:
  if (CFStringGetLength(theString))
  {
    if (theString && (v17 = CFRetain(theString), (v18 = static_cf_cast<__CFString const*,void const*>(v17)) != 0))
    {
      v19 = CFAutorelease(v18);
      v20 = static_cf_cast<__CFString const*,void const*>(v19);
      v21 = v20;
      if (v20)
      {
        CFRetain(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    v29 = 0;
    *a3 = v21;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v29);
    if (!a4)
    {
      goto LABEL_36;
    }
  }

  else
  {
    *a3 = 0;
    if (!a4)
    {
LABEL_36:
      v23 = 1;
      goto LABEL_37;
    }
  }

LABEL_34:
  v22 = v26;
  if (!v26)
  {
    goto LABEL_36;
  }

  v23 = 0;
  v26 = 0;
  *a4 = v22;
LABEL_37:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(&v26);
  return v23;
}

void sub_1E575C4F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, const void *);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(va1);
  _Unwind_Resume(a1);
}

uint64_t DS_CFURLSetFolderAdornmentProperty(int a1, __CFURL *a2, uint64_t a3, uint64_t *a4)
{
  v8 = 0;
  v7 = URLIsDirectory(a2, &v8);
  if (v8)
  {
    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (a4)
  {
    v5 = v7;
    v7 = 0;
    *a4 = v5;
  }

  TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(&v7);
  return 0;
}

void sub_1E575C770(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v10 = va_arg(va1, const void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, std::__shared_weak_count *);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(va1);
  _Unwind_Resume(a1);
}

uint64_t _DS_CFURLGetPropertyForKey(const __CFURL *a1, CFTypeRef cf1, const void **a3, __CFError **a4)
{
  if (IsEqual(cf1, *MEMORY[0x1E695E270]))
  {

    return DS_CFURLGetValanceProperty(a1, a3, a4);
  }

  if (IsEqual(cf1, *MEMORY[0x1E695E2E8]))
  {
    v9 = 0;
LABEL_9:

    return DS_CFURLGetFolderAdornmentProperty(v9, a1, a3, a4);
  }

  if (IsEqual(cf1, *MEMORY[0x1E695E2E0]))
  {
    v9 = 1;
    goto LABEL_9;
  }

  result = IsEqual(cf1, *MEMORY[0x1E695E3C8]);
  if (result)
  {
    return DS_CFURLGetTagColorProperty(a1, a3, a4);
  }

  return result;
}

uint64_t _DS_CFURLSetPropertyForKey(__CFURL *a1, CFTypeRef cf1, uint64_t a3, uint64_t *a4)
{
  if (IsEqual(cf1, *MEMORY[0x1E695E2E8]))
  {
    v8 = 0;
  }

  else
  {
    result = IsEqual(cf1, *MEMORY[0x1E695E2E0]);
    if (!result)
    {
      return result;
    }

    v8 = 1;
  }

  return DS_CFURLSetFolderAdornmentProperty(v8, a1, a3, a4);
}

const void **TRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void FSInfoVirtualTypeToString(TString *a1@<X0>, TString *a2@<X8>)
{
  if (a1 < 0x25 && ((0x1FFFFF18FFuLL >> a1) & 1) != 0)
  {
    v3 = off_1E877F358[a1];

    TString::TString(a2, v3);
  }

  else
  {
    v4 = TString::KEmptyString(a1);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *v4);
  }
}

uint64_t StringToFSInfoVirtualType(const TString *a1)
{
  cf1 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf1, 0);
  TString::SetFromUTF8(&cf1, "kNonVirtual", 11);
  if (CFEqual(cf1, a1->fString.fRef))
  {
    v2 = 0;
  }

  else
  {
    TString::SetStringRefAsImmutable(&cf1, 0);
    TString::SetFromUTF8(&cf1, "kComputer", 9);
    if (CFEqual(cf1, a1->fString.fRef))
    {
      v2 = 1;
    }

    else
    {
      TString::SetStringRefAsImmutable(&cf1, 0);
      TString::SetFromUTF8(&cf1, "kVirtualFolder", 14);
      if (CFEqual(cf1, a1->fString.fRef))
      {
        v2 = 2;
      }

      else
      {
        TString::SetStringRefAsImmutable(&cf1, 0);
        TString::SetFromUTF8(&cf1, "kVirtualAlias", 13);
        if (CFEqual(cf1, a1->fString.fRef))
        {
          v2 = 3;
        }

        else
        {
          TString::SetStringRefAsImmutable(&cf1, 0);
          TString::SetFromUTF8(&cf1, "kVirtualDocument", 16);
          if (CFEqual(cf1, a1->fString.fRef))
          {
            v2 = 4;
          }

          else
          {
            TString::SetStringRefAsImmutable(&cf1, 0);
            TString::SetFromUTF8(&cf1, "kQueryAlias", 11);
            if (CFEqual(cf1, a1->fString.fRef))
            {
              v2 = 5;
            }

            else
            {
              TString::operator=(&cf1, "kQueryHitsContainer");
              if (CFEqual(cf1, a1->fString.fRef))
              {
                v2 = 6;
              }

              else
              {
                TString::operator=(&cf1, "kQueryHit");
                if (CFEqual(cf1, a1->fString.fRef))
                {
                  v2 = 7;
                }

                else
                {
                  TString::operator=(&cf1, "kDesktop");
                  if (CFEqual(cf1, a1->fString.fRef))
                  {
                    v2 = 11;
                  }

                  else
                  {
                    TString::operator=(&cf1, "kTrash");
                    if (CFEqual(cf1, a1->fString.fRef))
                    {
                      v2 = 12;
                    }

                    else
                    {
                      TString::operator=(&cf1, "kUnresolvedAlias");
                      if (CFEqual(cf1, a1->fString.fRef))
                      {
                        v2 = 16;
                      }

                      else
                      {
                        TString::operator=(&cf1, "kDevices");
                        if (CFEqual(cf1, a1->fString.fRef))
                        {
                          v2 = 17;
                        }

                        else
                        {
                          TString::operator=(&cf1, "kPlaces");
                          if (CFEqual(cf1, a1->fString.fRef))
                          {
                            v2 = 18;
                          }

                          else
                          {
                            TString::operator=(&cf1, "kSidebarTopSection");
                            if (CFEqual(cf1, a1->fString.fRef))
                            {
                              v2 = 19;
                            }

                            else
                            {
                              TString::operator=(&cf1, "kSavedSearches");
                              if (CFEqual(cf1, a1->fString.fRef))
                              {
                                v2 = 20;
                              }

                              else
                              {
                                TString::operator=(&cf1, "kPublishedFolders");
                                if (CFEqual(cf1, a1->fString.fRef))
                                {
                                  v2 = 21;
                                }

                                else
                                {
                                  TString::operator=(&cf1, "kTags");
                                  if (CFEqual(cf1, a1->fString.fRef))
                                  {
                                    v2 = 22;
                                  }

                                  else
                                  {
                                    TString::operator=(&cf1, "kAllTags");
                                    if (CFEqual(cf1, a1->fString.fRef))
                                    {
                                      v2 = 23;
                                    }

                                    else
                                    {
                                      TString::operator=(&cf1, "kAllCloudLibs");
                                      if (CFEqual(cf1, a1->fString.fRef))
                                      {
                                        v2 = 24;
                                      }

                                      else
                                      {
                                        TString::operator=(&cf1, "kAllDataSeparatedCloudLibs");
                                        if (CFEqual(cf1, a1->fString.fRef))
                                        {
                                          v2 = 25;
                                        }

                                        else
                                        {
                                          TString::operator=(&cf1, "kCloudLib");
                                          if (CFEqual(cf1, a1->fString.fRef))
                                          {
                                            v2 = 26;
                                          }

                                          else
                                          {
                                            TString::operator=(&cf1, "kAllFPProviders");
                                            if (CFEqual(cf1, a1->fString.fRef))
                                            {
                                              v2 = 27;
                                            }

                                            else
                                            {
                                              TString::operator=(&cf1, "kFPProvider");
                                              if (CFEqual(cf1, a1->fString.fRef))
                                              {
                                                v2 = 28;
                                              }

                                              else
                                              {
                                                TString::operator=(&cf1, "kFPv2Item");
                                                if (CFEqual(cf1, a1->fString.fRef))
                                                {
                                                  v2 = 29;
                                                }

                                                else
                                                {
                                                  TString::operator=(&cf1, "kITunesDevicesContainer");
                                                  if (CFEqual(cf1, a1->fString.fRef))
                                                  {
                                                    v2 = 30;
                                                  }

                                                  else
                                                  {
                                                    TString::operator=(&cf1, "kITunesDevice");
                                                    if (CFEqual(cf1, a1->fString.fRef))
                                                    {
                                                      v2 = 31;
                                                    }

                                                    else
                                                    {
                                                      TString::operator=(&cf1, "kNetworkNearby");
                                                      if (CFEqual(cf1, a1->fString.fRef))
                                                      {
                                                        v2 = 32;
                                                      }

                                                      else
                                                      {
                                                        TString::operator=(&cf1, "kNetworkSidebar");
                                                        if (CFEqual(cf1, a1->fString.fRef))
                                                        {
                                                          v2 = 33;
                                                        }

                                                        else
                                                        {
                                                          TString::operator=(&cf1, "kAirDrop");
                                                          if (CFEqual(cf1, a1->fString.fRef))
                                                          {
                                                            v2 = 34;
                                                          }

                                                          else
                                                          {
                                                            TString::operator=(&cf1, "kRecentDocuments");
                                                            if (CFEqual(cf1, a1->fString.fRef))
                                                            {
                                                              v2 = 35;
                                                            }

                                                            else
                                                            {
                                                              TString::operator=(&cf1, "kICloudContainer");
                                                              if (CFEqual(cf1, a1->fString.fRef))
                                                              {
                                                                v2 = 36;
                                                              }

                                                              else
                                                              {
                                                                v2 = -1;
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

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
  return v2;
}

void sub_1E575CFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TReplicaRegistry::Remove(TReplicaRegistry *this, FINode *a2)
{
  v3 = a2;
  v4 = [(FINode *)v3 original];
  v5 = [v4 nodeRef];

  v16 = v5;
  v6 = *(this + 1);
  if (v6)
  {
    v7 = (this + 8);
    do
    {
      v8 = v6[4];
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v7 = v6;
      }

      v6 = v6[v10];
    }

    while (v6);
    if (v7 != (this + 8) && v5 >= v7[4])
    {
      v11 = v7[5];
      if (v11 != v7[6])
      {
        v12 = (v11 + 2);
        while (1)
        {
          v13 = *v11;
          if (v13 == [(FINode *)v3 nodeRef])
          {
            break;
          }

          v11 += 2;
          v12 += 16;
          if (v11 == v7[6])
          {
            goto LABEL_17;
          }
        }

        v14 = v7[6];
        v15 = v14 - v12;
        if (v14 != v12)
        {
          memmove(v12 - 16, v12, v14 - v12);
        }

        v11 = &v12[v15 - 16];
        v7[6] = v11;
      }

LABEL_17:
      if (v7[5] == v11)
      {
        std::__tree<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::__map_value_compare<OpaqueNodeRef *,std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::less<OpaqueNodeRef *>,true>,std::allocator<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>>>::__erase_unique<OpaqueNodeRef *>(this, &v16);
      }
    }
  }
}

id TReplicaRegistry::CopyReplicaFINodes(TReplicaRegistry *this, OpaqueNodeRef *a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 4) <= a2)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(*(v5 + 6) - *(v5 + 5)) >> 4];
    v11 = *(v5 + 5);
    for (i = *(v5 + 6); v11 != i; v11 += 2)
    {
      v13 = [FINode nodeFromNodeRef:*v11];
      [v9 addObject:v13];
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

void sub_1E575D2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = FIReplicaNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void TReplicaRegistry::RemoveReplica(TReplicaRegistry *this, FINode *a2)
{
  v2 = this;
  std::mutex::lock(&TReplicaRegistry::GetMutex(void)::sReplicaRegistryMutex);
  if (TReplicaRegistry::gReplicaRegistry)
  {
    TReplicaRegistry::Remove(TReplicaRegistry::gReplicaRegistry, v2);
  }

  std::mutex::unlock(&TReplicaRegistry::GetMutex(void)::sReplicaRegistryMutex);
}

void sub_1E575D374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock(&TReplicaRegistry::GetMutex(void)::sReplicaRegistryMutex);

  _Unwind_Resume(a1);
}

id TReplicaRegistry::CopyReplicas(OpaqueNodeRef *this, OpaqueNodeRef *a2)
{
  std::mutex::lock(&TReplicaRegistry::GetMutex(void)::sReplicaRegistryMutex);
  if (TReplicaRegistry::gReplicaRegistry)
  {
    v3 = TReplicaRegistry::CopyReplicaFINodes(TReplicaRegistry::gReplicaRegistry, this);
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock(&TReplicaRegistry::GetMutex(void)::sReplicaRegistryMutex);

  return v3;
}

id TNode::CopyReplicas(TNode *this, const TNode *a2)
{
  v2 = TNode::AsNodeRef(this, a2);

  return TReplicaRegistry::CopyReplicas(v2, v3);
}

uint64_t std::__tree<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::__map_value_compare<OpaqueNodeRef *,std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::less<OpaqueNodeRef *>,true>,std::allocator<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>>>::__erase_unique<OpaqueNodeRef *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::__map_value_compare<OpaqueNodeRef *,std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::less<OpaqueNodeRef *>,true>,std::allocator<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::__map_value_compare<OpaqueNodeRef *,std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>,std::less<OpaqueNodeRef *>,true>,std::allocator<std::__value_type<OpaqueNodeRef *,std::vector<TReplicaRegistry::ReplicaEntry>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<Property>::__remove_node_pointer(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

unint64_t TTime::TickCount(TTime *this)
{
  mach_timebase_info(&info);
  v1 = mach_absolute_time();
  return (((2161727822u * (v1 * info.numer / info.denom)) >> 32) + 2161727822 * ((v1 * info.numer / info.denom) >> 32)) >> 23;
}

void TClientChangeNotifier::~TClientChangeNotifier(uint64_t (**this)(void))
{
  v1 = this;
  v2 = this[4];
  if (v2)
  {
    this = this[2];
    if (this)
    {
      this = v2();
    }
  }

  TDSNotifier::GetRegistrationLock(this);
  std::recursive_mutex::lock(&TDSNotifier::GetRegistrationLock(void)::gRegistrationLock);
  v3 = TClientChangeNotifier::GetClientNotifierList(void)::gClientNotifierList;
  v4 = qword_1ECFF40A8;
  while (1)
  {
    if (v3 == v4)
    {
      v3 = v4;
      goto LABEL_12;
    }

    v5 = v3[1];
    if (!v5)
    {
      break;
    }

    v6 = std::__shared_weak_count::lock(v5);
    if (!v6)
    {
      break;
    }

    v7 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (!v7 || v7 == v1)
    {
      break;
    }

    v3 += 2;
  }

  if (v3 != v4)
  {
    for (i = v3 + 2; i != v4; i += 2)
    {
      v10 = i[1];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = *i;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          if (v12)
          {
            if (v12 != v1)
            {
              v13 = *i;
              *i = 0;
              i[1] = 0;
              v14 = v3[1];
              *v3 = v13;
              if (v14)
              {
                std::__shared_weak_count::__release_weak(v14);
              }

              v3 += 2;
            }
          }
        }
      }
    }
  }

LABEL_12:
  std::vector<std::weak_ptr<TClientChangeNotifier>>::erase(&TClientChangeNotifier::GetClientNotifierList(void)::gClientNotifierList, v3, qword_1ECFF40A8);
  StRegistrationLock::~StRegistrationLock(&v15);
  std::__function::__value_func<void ()(FINodeEvent *)>::~__value_func[abi:ne200100](v1 + 88);
  std::__function::__value_func<void ()(OpaqueEventQueue *)>::~__value_func[abi:ne200100](v1 + 56);

  v8 = *(v1 + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void TClientChangeNotifier::SetTimerToHandleTickle(TClientChangeNotifier *this, TDSNotifier *a2, uint64_t a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v5);
    RetainNotifier(a2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___ZN21TClientChangeNotifier22SetTimerToHandleTickleEP11TDSNotifiery_block_invoke;
    handler[3] = &unk_1E877F488;
    v19 = a2;
    v7 = v6;
    v18 = v7;
    dispatch_source_set_event_handler(v7, handler);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZN21TClientChangeNotifier22SetTimerToHandleTickleEP11TDSNotifiery_block_invoke_3;
    v16[3] = &__block_descriptor_40_e5_v8__0l;
    v16[4] = a2;
    dispatch_source_set_cancel_handler(v7, v16);
    v9 = TTime::MicrosecondsSinceStartup(v8);
    v10 = dispatch_time(0, 1000 * (a3 - v9));
    dispatch_source_set_timer(v7, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v7);
  }

  else
  {
    context.version = 0;
    context.info = a2;
    context.retain = RetainNotifier;
    context.release = ReleaseNotifier;
    context.copyDescription = 0;
    v11 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();
    v14 = TTime::MicrosecondsSinceStartup(v13);
    v20 = CFRunLoopTimerCreate(v11, Current + (a3 - v14) / 1000000.0, 0.0, 0, 0, TDSNotifier::HandleDeferredTickleOnMainRunLoop, &context);
    Main = CFRunLoopGetMain();
    CFRunLoopAddTimer(Main, v20, *MEMORY[0x1E695E8D0]);
    TAutoRef<__CFRunLoopTimer *,CFRetainReleasePolicy>::~TAutoRef(&v20);
  }
}

unsigned int *RetainNotifier(unsigned int *a1)
{
  if (a1)
  {
    TRefCount::Retain<int>(a1 + 9);
  }

  v3 = 0;
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v3);
  return a1;
}

TDSNotifier **TDSNotifier::HandleDeferredTickleOnMainRunLoop(TDSNotifier *this, __CFRunLoopTimer *a2, void *a3)
{
  v7 = a2;
  if (a2)
  {
    TRefCount::Retain<int>(a2 + 9);
    TDSNotifier::HandleDeferredTickle(a2);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopRemoveTimer(Main, this, *MEMORY[0x1E695E8D0]);
  return TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v7);
}

void sub_1E575DB78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void ___ZN21TClientChangeNotifier22SetTimerToHandleTickleEP11TDSNotifiery_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___ZN21TClientChangeNotifier22SetTimerToHandleTickleEP11TDSNotifiery_block_invoke_2;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = *(a1 + 40);
  ExceptionSafeBlock(v2);
  dispatch_source_cancel(*(a1 + 32));
}

void TDSNotifier::HandleDeferredTickle(TDSNotifier *this)
{
  v2 = *(*this + 40);
  TBlockingEventQueue::EventQueueFromID(v2, &v4);
  v3 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
    TickleLock();
    os_unfair_lock_lock(&_MergedGlobals_4);
    *(this + 60) = 0;
    os_unfair_lock_unlock(&_MergedGlobals_4);
    std::function<void ()(OpaqueEventQueue *)>::operator()(*this + 56, v2);
  }
}

uint64_t __copy_helper_block_ea8_32c44_ZTSKZN21TClientChangeNotifier6WakeUpEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c44_ZTSKZN21TClientChangeNotifier6WakeUpEvE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1E575E150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  TPropertyValue::~TPropertyValue((v15 - 240));

  _Unwind_Resume(a1);
}

void sub_1E575E3BC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1E575E4EC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1E575EC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::mutex::unlock((v30 + 40));

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c74_ZTSKZ61__DSFPItemStatusObserver_startObserving_forParent_withQueue__E3__9(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id __copy_helper_block_ea8_32c53_ZTSKZ39__DSFPItemStatusObserver_stopObserving_E4__11(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_1E575F5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  TPropertyValue::~TPropertyValue(&__p);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__emplace_back_slow_path<std::pair<TNodePtr,FPItem * {__strong}>>(a1, a2);
  }

  else
  {
    v5 = TNodePtr::TNodePtr(v4, a2);
    v6 = a2[1];
    a2[1] = 0;
    v5[1] = v6;
    result = (v5 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1E575FC18(_Unwind_Exception *a1, char a2, TPropertyValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TPropertyValue::~TPropertyValue(&a11);

  _Unwind_Resume(a1);
}

void sub_1E575FE54(_Unwind_Exception *a1, char a2, TPropertyValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TPropertyValue::~TPropertyValue(&a11);

  _Unwind_Resume(a1);
}

void sub_1E576018C(_Unwind_Exception *a1, char a2, TPropertyValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TPropertyValue::~TPropertyValue(&a11);

  _Unwind_Resume(a1);
}

void sub_1E5760430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TPropertyValue::~TPropertyValue(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::weak_ptr<TClientChangeNotifier>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<TClientChangeNotifier> *,std::weak_ptr<TClientChangeNotifier> *,std::weak_ptr<TClientChangeNotifier> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<TClientChangeNotifier> *,std::weak_ptr<TClientChangeNotifier> *,std::weak_ptr<TClientChangeNotifier> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t __copy_helper_block_ea8_32c57_ZTSKZZN21TClientChangeNotifier6WakeUpEvENK3__1clEvEUlvE_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c57_ZTSKZZN21TClientChangeNotifier6WakeUpEvENK3__1clEvEUlvE_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

_BYTE *HexDescriptionPrinterGlue<DSProvidersObserver * {__strong},void>::dump@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v16[19] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    WidenHexFormatStringSpecifierToLongLong(a1, __p);
    if (v10 >= 0)
    {
      snprintf(__str, 0x64uLL, __p, *a2);
    }

    else
    {
      snprintf(__str, 0x64uLL, __p[0], *a2);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    result = std::string::basic_string[abi:ne200100]<0>(a3, __str);
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
    *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x1E692CAE0](&v12, *a2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, a3);
    *__str = *MEMORY[0x1E69E54D8];
    v7 = *(MEMORY[0x1E69E54D8] + 72);
    *&__str[*(*__str - 24)] = *(MEMORY[0x1E69E54D8] + 64);
    v12 = v7;
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    result = MEMORY[0x1E692CCA0](v16);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5760954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [13],DSProvidersObserver * {__strong}>(void *,char [13],DSProvidersObserver * {__strong} const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [13],DSProvidersObserver * {__strong}>(void *,char [13],DSProvidersObserver * {__strong} const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F41448;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [13],DSProvidersObserver * {__strong}>(void *,char [13],DSProvidersObserver * {__strong} const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [13],DSProvidersObserver * {__strong}>(void *,char [13],DSProvidersObserver * {__strong} const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F414C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void FormatDetails<DSFPItemStatusObserver * {__strong}>(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v8 = *a1;
  do
  {
    v3 = FormatOneDetails<DSFPItemStatusObserver * {__strong}>(&v8, &__p);
    if (v3)
    {
      *(&a2->__r_.__value_.__s + 23) = 0;
      a2->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v3 == 0x700000000);
  FormatDetails(&v8, &v7);
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

  v6 = std::string::insert(&v7, 0, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5760C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *HexDescriptionPrinterGlue<DSFPItemStatusObserver * {__strong},void>::dump@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v16[19] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    WidenHexFormatStringSpecifierToLongLong(a1, __p);
    if (v10 >= 0)
    {
      snprintf(__str, 0x64uLL, __p, *a2);
    }

    else
    {
      snprintf(__str, 0x64uLL, __p[0], *a2);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    result = std::string::basic_string[abi:ne200100]<0>(a3, __str);
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
    *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x1E692CAE0](&v12, *a2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, a3);
    *__str = *MEMORY[0x1E69E54D8];
    v7 = *(MEMORY[0x1E69E54D8] + 72);
    *&__str[*(*__str - 24)] = *(MEMORY[0x1E69E54D8] + 64);
    v12 = v7;
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    result = MEMORY[0x1E692CCA0](v16);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5760E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void FormatDetails<FPItemCollection * {__strong}>(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v8 = *a1;
  do
  {
    v3 = FormatOneDetails<FPItemCollection * {__strong}>(&v8, &__p);
    if (v3)
    {
      *(&a2->__r_.__value_.__s + 23) = 0;
      a2->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v3 == 0x700000000);
  FormatDetails(&v8, &v7);
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

  v6 = std::string::insert(&v7, 0, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5760F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *HexDescriptionPrinterGlue<FPItemCollection * {__strong},void>::dump@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v16[19] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    WidenHexFormatStringSpecifierToLongLong(a1, __p);
    if (v10 >= 0)
    {
      snprintf(__str, 0x64uLL, __p, *a2);
    }

    else
    {
      snprintf(__str, 0x64uLL, __p[0], *a2);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    result = std::string::basic_string[abi:ne200100]<0>(a3, __str);
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
    *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x1E692CAE0](&v12, *a2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, a3);
    *__str = *MEMORY[0x1E69E54D8];
    v7 = *(MEMORY[0x1E69E54D8] + 72);
    *&__str[*(*__str - 24)] = *(MEMORY[0x1E69E54D8] + 64);
    v12 = v7;
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    result = MEMORY[0x1E692CCA0](v16);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5761214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const*>(void *,char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const* const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const*>(void *,char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const* const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F41548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const*>(void *,char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const* const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const*>(void *,char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const* const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<std::shared_ptr<TClientChangeNotifier> MakeShared<TClientChangeNotifier,NodeClientContext &,OpaqueEventQueue *&,void (*&)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,void({block_pointer} {__strong}&)(FINodeEvent *),__CFString const*&>(NodeClientContext &,OpaqueEventQueue *&,void (*&)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,void({block_pointer} {__strong}&)(FINodeEvent *),__CFString const*&)::MakeInstanceEnabler,std::allocator<std::allocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F415C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__function::__func<void({block_pointer} {__strong})(FINodeEvent *),std::allocator<void({block_pointer} {__strong})(FINodeEvent *)>,void ()(FINodeEvent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(FINodeEvent *),std::allocator<void({block_pointer} {__strong})(FINodeEvent *)>,void ()(FINodeEvent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5F41618;
  result = MEMORY[0x1E692D6D0](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer} {__strong})(FINodeEvent *),std::allocator<void({block_pointer} {__strong})(FINodeEvent *)>,void ()(FINodeEvent *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(FINodeEvent *),std::allocator<void({block_pointer} {__strong})(FINodeEvent *)>,void ()(FINodeEvent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(FINodeEvent *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_0,std::allocator<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_0>,void ()(OpaqueEventQueue *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_1,std::allocator<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_1>,void ()(OpaqueEventQueue *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **TAutoRef<__CFRunLoopTimer *,CFRetainReleasePolicy>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<TReferenceCounted::TReferenceCounted<TDSNotifier *>(RefCountedType,TDSNotifier *)::{lambda(void *)#1},std::allocator<TReferenceCounted::TReferenceCounted<TDSNotifier *>(RefCountedType,TDSNotifier *)::{lambda(void *)#1}>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL algorithm_extras::contains<NSSet<FINode *> * {__strong},FINode * {__strong}>(void **a1, void *a2)
{
  algorithm_extras::find<NSSet<FINode *> * {__strong},FINode * {__strong}>(a1, a2, v7);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v6, -1, *a1);
  v4 = v7[0] != v6[0] || v7[16] != v6[16];

  return v4;
}

void sub_1E5764070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  objc_sync_exit(v62);

  _Unwind_Resume(a1);
}

void sub_1E57645E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TPropertyValue *a7, uint64_t a8, uint64_t a9, char a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v17 = va_arg(va1, TDSNotifier *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, std::__shared_weak_count *);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, id);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, id);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(va);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  TPropertyValue::~TPropertyValue(va1);

  objc_sync_exit(v12);
  TNodeEventPtr::~TNodeEventPtr(va2);

  TNodeEventPtr::~TNodeEventPtr((v14 + 8));
  TNodeEventPtr::~TNodeEventPtr((v15 - 72));

  _Unwind_Resume(a1);
}

id MutableCopyAs<NSMutableSet<FINode *>,NSSet<FINode *>>(void *a1)
{
  v1 = MutableCopy<NSDictionary<NSString *,objc_object *>>(a1);
  v2 = static_objc_cast<NSString,objc_object * {__strong}>(v1);

  return v2;
}

void sub_1E5764848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, TDSNotifier *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
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

void algorithm_extras::find<NSSet<FINode *> * {__strong},FINode * {__strong}>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v7, *a1);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v6, -1, *a1);
  std::find[abi:ne200100]<IDContainerIteratorAdaptor<NSSet<FINode *>>,FINode * {__strong}>(v7, v6, a2, a3);
}

void std::find[abi:ne200100]<IDContainerIteratorAdaptor<NSSet<FINode *>>,FINode * {__strong}>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v13, a1);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v10, a1);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v14, v10);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v11, v14);

  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v8, a2);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v14, v8);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v9, v14);

  std::__find[abi:ne200100]<IDContainerIteratorAdaptor<NSSet<FINode *>>,IDContainerIteratorAdaptor<NSSet<FINode *>>,FINode * {__strong},std::__identity>(v11, v9, a3, v12);
  std::__rewrap_iter[abi:ne200100]<IDContainerIteratorAdaptor<NSSet<FINode *>>,IDContainerIteratorAdaptor<NSSet<FINode *>>,std::__unwrap_iter_impl<IDContainerIteratorAdaptor<NSSet<FINode *>>,false>>(v13, v12, a4);
}

void std::__rewrap_iter[abi:ne200100]<IDContainerIteratorAdaptor<NSSet<FINode *>>,IDContainerIteratorAdaptor<NSSet<FINode *>>,std::__unwrap_iter_impl<IDContainerIteratorAdaptor<NSSet<FINode *>>,false>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v6, a1);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v5, a2);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(a3, v5);
}

uint64_t std::__find[abi:ne200100]<IDContainerIteratorAdaptor<NSSet<FINode *>>,IDContainerIteratorAdaptor<NSSet<FINode *>>,FINode * {__strong},std::__identity>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  while ((*a1 != *a2 || *(a1 + 128) != a2[16]) && *(*(a1 + 16) + 8 * *(a1 + 120)) != *a3)
  {
    v8 = *(a1 + 120);
    if (v8 >= *(a1 + 112) - 1)
    {
      v9 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
      v8 = -1;
      *(a1 + 112) = v9;
      *(a1 + 120) = -1;
    }

    if (*(a1 + 104) != **(a1 + 24))
    {
      objc_enumerationMutation(*a1);
      v8 = *(a1 + 120);
    }

    v10 = *(a1 + 128) + 1;
    *(a1 + 120) = v8 + 1;
    *(a1 + 128) = v10;
  }

  return IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(a4, a1);
}

void std::__hash_table<FINode * {__strong},std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,std::allocator<FINode * {__strong}>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<FINode * {__strong},std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,std::allocator<FINode * {__strong}>>::__erase_unique<FINode * {__strong}>(void *a1, id *a2)
{
  result = std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::find<FINode * {__strong}>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t TNWNode::TNWNode(uint64_t a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v3 = SFNodeCopyKindString();
  theSet = v3;
  *(a1 + 8) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 8), v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theSet);
  *(a1 + 16) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v4 = SFNodeCopySecondaryName();
  theSet = v4;
  *(a1 + 24) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 24), v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theSet);
  v5 = SFNodeCopyTypeIdentifier();
  *(a1 + 32) = TypeForUTI(v5);

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = SFNodeGetPriority();
  *(a1 + 56) = SFNodeGetConnectionState();
  *(a1 + 57) &= 0xFFFCu;
  *(a1 + 57) = *(a1 + 57) & 0xFFFB | (4 * (SFNodeIsServer() != 0));
  *(a1 + 57) = *(a1 + 57) & 0xFFF7 | (8 * (SFNodeIsSharePoint() != 0));
  *(a1 + 57) = *(a1 + 57) & 0xFFEF | (16 * (SFNodeSupportsFileSharing() != 0));
  *(a1 + 57) = *(a1 + 57) & 0xFFDF | (32 * (SFNodeSupportsScreenSharing() != 0));
  *(a1 + 57) = *(a1 + 57) & 0xFFBF | ((SFNodeIsMounted() != 0) << 6);
  *(a1 + 57) = *(a1 + 57) & 0xF87F | ((SFNodeIsContainer() != 0) << 7);
  v6 = SFNodeCopyKinds();
  theSet = v6;
  if (v6)
  {
    v7 = CFSetContainsValue(v6, *MEMORY[0x1E69CDF58]);
    v8 = *(a1 + 57) & 0xFFFE;
    if (v7)
    {
      ++v8;
    }

    *(a1 + 57) = v8;
    *(a1 + 57) = *(a1 + 57) & 0xFEFF | ((CFSetContainsValue(theSet, *MEMORY[0x1E69CDF50]) != 0) << 8);
    *(a1 + 57) = *(a1 + 57) & 0xFDFF | ((CFSetContainsValue(theSet, *MEMORY[0x1E69CDF48]) != 0) << 9);
  }

  TRef<__CFSet const*,TRetainReleasePolicy<__CFSet const*>>::~TRef(&theSet);
  IsNeighborhood = SFNodeIsNeighborhood();
  v10 = *(a1 + 57);
  if (IsNeighborhood | v10 & 0x100)
  {
    v11 = 2;
  }

  else
  {
    v11 = HIBYTE(*(a1 + 57)) & 2;
  }

  *(a1 + 57) = v10 & 0xFFFD | v11;
  if ((v10 & 4) != 0)
  {
    v12 = SFNodeCopyUserName();
    theSet = v12;
    if (*(a1 + 16) != v12)
    {
      TString::SetStringRefAsImmutable((a1 + 16), v12);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theSet);
  }

  return a1;
}

void sub_1E57650E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v2 + 24));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v2 + 8));
  TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef(v2);
  _Unwind_Resume(a1);
}

const void **TRef<__CFSet const*,TRetainReleasePolicy<__CFSet const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

id CopyDeep(NSDictionary *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CopyDeepCommon(v1, 0);
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CopyDeepCommon(NSDictionary *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSDictionary *)v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSDictionary *)v3 objectForKeyedSubscript:v9];
        v11 = CopyDeepHelper(v10, a2);
        [v4 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

id MutableCopyDeep(NSDictionary *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CopyDeepCommon(v1, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t TOperationErrorRecord::TOperationErrorRecord(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  bzero((a1 + 8), 0x40DuLL);
  *(a1 + 1048) = 0;
  *(a1 + 1044) = 1;
  *(a1 + 1056) = a2;
  *(a1 + 1064) = 0;
  return a1;
}

uint64_t TOperationErrorRecord::TOperationErrorRecord(uint64_t a1, int a2, int a3, int a4, TCFURLInfo ***a5, int a6)
{
  v31 = *MEMORY[0x1E69E9840];
  *a1 = 1;
  v12 = (a1 + 1048);
  bzero((a1 + 16), 0x405uLL);
  *v12 = 0u;
  *(a1 + 1044) = 1;
  *(a1 + 1064) = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = a2;
  *(a1 + 16) = a4;
  if (*a5)
  {
    TCFURLInfo::Path(*a5, &v24);
    v13 = TString::c_str(&v24);
    strlcpy((a1 + 20), v13, 0x400uLL);
    if (!*(a1 + 20))
    {
      v14 = **a5;
      if (v14)
      {
        v15 = CFURLGetString(v14);
        CFStringGetCString(v15, (a1 + 20), 1024, 0x8000100u);
      }
    }

    v16 = LogObj(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      TString::TString(&v23, (a1 + 20));
      v17 = SanitizedPath(&v23);
      v18 = v17;
      v19 = "write";
      *buf = 67109634;
      v26 = a3;
      if (a6)
      {
        v19 = "read";
      }

      v27 = 2114;
      v28 = v17;
      v29 = 2082;
      v30 = v19;
      _os_log_impl(&dword_1E5674000, v16, OS_LOG_TYPE_ERROR, "Error %d at path: %{public}@ on %{public}s", buf, 0x1Cu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v24.fString.fRef);
  }

  else
  {
    v20 = LogObj(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v26 = a3;
      _os_log_impl(&dword_1E5674000, v20, OS_LOG_TYPE_ERROR, "Error %d with no path", buf, 8u);
    }
  }

  *(a1 + 1044) = a6;
  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E5765724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

uint64_t TOperationErrorRecord::TOperationErrorRecord(uint64_t a1, int a2, int a3, int a4, TFSInfo **a5, char a6, void *a7)
{
  v14 = a7;
  *a1 = 1;
  bzero((a1 + 16), 0x405uLL);
  *(a1 + 1048) = 0u;
  *(a1 + 1044) = 1;
  *(a1 + 1064) = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = a2;
  *(a1 + 16) = a4;
  objc_storeStrong((a1 + 1048), a7);
  if (*a5)
  {
    TFSInfo::CopyPathToCBuffer(*a5, (a1 + 20), 1024);
    v15 = *a5;
    os_unfair_lock_lock(*a5 + 27);
    v16 = *(v15 + 2);
    v19 = v16;
    if (v16)
    {
      CFRetain(v16);
      os_unfair_lock_unlock(v15 + 27);
      if (!*(a1 + 20))
      {
        v17 = CFURLGetString(v16);
        CFStringGetCString(v17, (a1 + 20), 1024, 0x8000100u);
      }
    }

    else
    {
      os_unfair_lock_unlock(v15 + 27);
    }

    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v19);
  }

  *(a1 + 1044) = a6;

  return a1;
}

void sub_1E576589C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

BOOL TOperationErrorRecord::RemovePtrReference(TOperationErrorRecord *this)
{
  result = TRefCount::Release<int>(this);
  if (result)
  {

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

void TFSVolumeInfo::RecalculateFreeSpaceAndCapacity(TFSVolumeInfo *this, int a2)
{
  v26[2] = *MEMORY[0x1E69E9840];
  if ((*(this + 123) & 1) == 0 && (*(this + 127) & 1) == 0)
  {
    v4 = *(this + 7);
    v5 = *(this + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      CFURLRef = TFSInfo::CreateCFURLRef(v4);
    }

    else
    {
      CFURLRef = 0;
    }

    url = CFURLRef;
    os_unfair_lock_lock(this + 78);
    v7 = *(this + 18);
    v8 = *(this + 19);
    v23 = v8;
    valuePtr = v7;
    v9 = *(this + 20);
    v10 = *(this + 21);
    v11 = *(this + 115);
    os_unfair_lock_unlock(this + 78);
    if (v11 == 1)
    {
      v9 = 0;
      v10 = -2;
      v23 = -2;
      valuePtr = -2;
    }

    else if (CFURLRef)
    {
      v12 = *MEMORY[0x1E695EE30];
      CFURLClearResourcePropertyCacheForKey(CFURLRef, *MEMORY[0x1E695EE30]);
      v13 = *MEMORY[0x1E695ECF0];
      CFURLClearResourcePropertyCacheForKey(url, *MEMORY[0x1E695ECF0]);
      v14 = v12;
      v26[0] = v14;
      v15 = v13;
      v26[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v17 = CFURLCopyResourcePropertiesForKeys(url, v16, 0);
      theDict = v17;

      if (v17)
      {
        Count = CFDictionaryGetCount(v17);
        if (Count >= 1)
        {
          if (a2 && v9 < 0)
          {
            if (TFSVolumeInfo::gFullEnvironment == 1 && *(this + 107) == 1 && (*(this + 114) & 1) == 0)
            {
              TFSVolumeInfo::UpdateReusableSpaceOnVolumes(Count);
              os_unfair_lock_lock(this + 78);
              v9 = *(this + 20);
              os_unfair_lock_unlock(this + 78);
            }

            else
            {
              v9 = 0;
            }
          }

          number = 0;
          if (CFDictionaryGetValueIfPresent(theDict, v14, &number))
          {
            CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
          }

          if (CFDictionaryGetValueIfPresent(theDict, v15, &number))
          {
            CFNumberGetValue(number, kCFNumberSInt64Type, &v23);
            v8 = v23;
          }

          if ((valuePtr | v8) >= 0)
          {
            v10 = valuePtr - v8;
          }

          else
          {
            v10 = -2;
          }

          TFSVolumeInfo::GetReclaimableSpace(this);
        }
      }

      TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(&theDict);
    }

    os_unfair_lock_lock(this + 78);
    v19 = v23;
    *(this + 18) = valuePtr;
    *(this + 19) = v19;
    *(this + 20) = v9;
    *(this + 21) = v10;
    *(this + 130) = 1;
    os_unfair_lock_unlock(this + 78);
    TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&url);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E5765BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(va);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

TFSVolumeInfo *TFSVolumeInfo::GetFolderSizingThread@<X0>(TFSVolumeInfo *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 45);
  *a2 = *(this + 44);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void TFSVolumeInfo::UpdateIterationPerfData(TFSVolumeInfo *this, const TString *a2, double a3, int a4, uint64_t a5)
{
  v7 = a2;
  PerfCountersSpinlock();
  os_unfair_lock_lock(&dword_1ECFF459C);
  v10 = sPerfCounters;
  if (!sPerfCounters)
  {
    v11 = objc_opt_new();
    v12 = sPerfCounters;
    sPerfCounters = v11;

    v10 = sPerfCounters;
  }

  v13 = *this;
  v14 = *this;
  v15 = [v10 objectForKeyedSubscript:v13];
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DF90] dictionary];
    [v16 setObject:&unk_1F5F4A3D0 forKeyedSubscript:@"iterationCount"];
    v17 = sPerfCounters;
    v18 = *this;
    v19 = v18;
    [v17 setObject:v16 forKeyedSubscript:v18];
    v15 = v16;
  }

  v20 = MEMORY[0x1E696AD98];
  v21 = [v15 objectForKeyedSubscript:@"iterationCount"];
  v22 = objc_cast<NSNumber,objc_object * {__strong}>(v21);
  v23 = [v20 numberWithLong:{objc_msgSend(v22, "longValue") + 1}];
  [v15 setObject:v23 forKeyedSubscript:@"iterationCount"];

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v15 setObject:v24 forKeyedSubscript:@"duration"];

  if (v7)
  {
    v25 = &unk_1F5F4A3E8;
  }

  else
  {
    v25 = &unk_1F5F4A3D0;
  }

  [v15 setObject:v25 forKeyedSubscript:@"shouldHaveUsedReaddir"];
  if (a4)
  {
    v26 = &unk_1F5F4A3E8;
  }

  else
  {
    v26 = &unk_1F5F4A3D0;
  }

  [v15 setObject:v26 forKeyedSubscript:@"didUseReaddir"];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a5];
  [v15 setObject:v27 forKeyedSubscript:@"numberOfItems"];

  os_unfair_lock_unlock(&dword_1ECFF459C);
}

void PerfCountersSpinlock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF45A8, memory_order_acquire) & 1) == 0)
  {
    PerfCountersSpinlock();
  }
}

id objc_cast<NSNumber,objc_object * {__strong}>(void *a1)
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

void TFSVolumeInfo::TrashPath(TFSVolumeInfo *this@<X0>, uint64_t a2@<X1>, TString *a3@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 78);
  if (*(this + 408) == 1)
  {
    a3->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a3, *(this + 50));
    v6 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(this + 78);
  }

  else
  {
    os_unfair_lock_unlock(this + 78);
    TFSVolumeInfo::GetMountPoint(this, &v44);
    *buf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(buf, @"/System/Volumes/Update/");
    v7 = TString::BeginsWith(&v44, buf);
    v8 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
    if (v7)
    {
      v9 = TString::KEmptyString(v8);
      a3->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a3, *v9);
    }

    else
    {
      v10 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "/private/var/mobile", 19, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      *buf = v10;
      v43.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v43, v10);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
      LODWORD(v10) = CFEqual(v44.fString.fRef, v43.fString.fRef);
      v11 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v43.fString.fRef);
      if (v10)
      {
        v12 = TString::KEmptyString(v11);
        a3->fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(a3, *v12);
      }

      else
      {
        v13 = *(this + 7);
        if (!v13)
        {
          goto LABEL_14;
        }

        os_unfair_lock_lock((v13 + 108));
        v14 = *(v13 + 16);
        *buf = v14;
        if (v14)
        {
          CFRetain(v14);
        }

        os_unfair_lock_unlock((v13 + 108));
        v15 = *buf;
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(buf);
        v38 = v15;
        if (v15)
        {
          v16 = [MEMORY[0x1E696AC08] defaultManager];
          v42 = 0;
          v40 = [v16 URLForDirectory:102 inDomain:2 appropriateForURL:v15 create:a2 error:&v42];
          v17 = v42;

          v18 = 0;
        }

        else
        {
LABEL_14:
          v38 = 0;
          v40 = 0;
          v17 = 0;
          v18 = 1;
        }

        v19 = [v17 userInfo];
        v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
        v21 = objc_cast<NSError,objc_object * {__strong}>(v20);

        v22 = [v21 domain];
        v23 = v22 == *MEMORY[0x1E696A798] && [v21 code] == 30;

        v24 = [v17 domain];
        v25 = v24 == *MEMORY[0x1E696A250] && [v17 code] == 3328;

        if (v17)
        {
          v27 = v18;
        }

        else
        {
          v27 = 1;
        }

        if (((v27 | (v23 || v25)) & 1) == 0)
        {
          v28 = LogObj(5);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = SanitizedURL(v39);
            v30 = v29;
            v31 = "get";
            *buf = 136446722;
            if (a2)
            {
              v31 = "create";
            }

            *&buf[4] = v31;
            v46 = 2114;
            v47 = v29;
            v48 = 2114;
            v49 = v17;
            _os_log_impl(&dword_1E5674000, v28, OS_LOG_TYPE_ERROR, "Failed to %{public}s trash on volume: %{public}@. error: %{public}@", buf, 0x20u);
          }
        }

        if (v40)
        {
          v32 = 1;
        }

        else
        {
          v32 = a2;
        }

        if ((v32 | v23))
        {
          os_unfair_lock_lock(this + 78);
          v41 = [v40 path];
          std::optional<TString>::operator=[abi:ne200100]<NSString * {__strong},void>(this + 400, &v41);

          if (!v17)
          {
            v33 = LogObj(5);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              if (a2)
              {
                v34 = "Created";
              }

              else
              {
                v34 = "Found";
              }

              if ((*(this + 408) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v35 = SanitizedPath(this + 50);
              *buf = 136446466;
              *&buf[4] = v34;
              v46 = 2114;
              v47 = v35;
              _os_log_impl(&dword_1E5674000, v33, OS_LOG_TYPE_DEBUG, "%{public}s volume trash: %{public}@", buf, 0x16u);
            }
          }

          if ((*(this + 408) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          a3->fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(a3, *(this + 50));
          os_unfair_lock_unlock(this + 78);
        }

        else
        {
          v36 = TString::KEmptyString(v26);
          a3->fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(a3, *v36);
        }
      }
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v44.fString.fRef);
    v37 = *MEMORY[0x1E69E9840];
  }
}

void sub_1E57664AC(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  os_unfair_lock_unlock(v6 + 78);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TFSVolumeInfo::GetMountPoint(TFSVolumeInfo *this@<X0>, TString *a2@<X8>)
{
  os_unfair_lock_lock(this + 78);
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *(this + 11));

  os_unfair_lock_unlock(this + 78);
}

void sub_1E5766680(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  os_unfair_lock_unlock(v1 + 78);
  _Unwind_Resume(a1);
}

uint64_t std::optional<TString>::operator=[abi:ne200100]<NSString * {__strong},void>(uint64_t a1, id *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = v4;
  if (v3 == 1)
  {
    if (*a1 != v4)
    {
      TString::SetStringRefAsImmutable(a1, v4);
    }
  }

  else
  {
    v6 = v4;
    *a1 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a1, v6);

    *(a1 + 8) = 1;
  }

  return a1;
}

BOOL TFSVolumeInfo::IsHiddenFile(TFSVolumeInfo *this, const TString *a2)
{
  if (!TFSVolumeInfo::MayHaveHiddenList(this))
  {
    return 0;
  }

  std::mutex::lock((this + 224));
  v4 = *(this + 24);
  v5 = *(this + 25);
  if (v4 == v5)
  {
    v8 = 0;
  }

  else
  {
    v6 = v4 + 8;
    do
    {
      v7 = CFEqual(a2->fString.fRef, *(v6 - 8));
      v8 = v7 != 0;
      if (v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6 == v5;
      }

      v6 += 8;
    }

    while (!v9);
  }

  std::mutex::unlock((this + 224));
  return v8;
}

const void **TFSVolumeInfo::VolumeFormatString@<X0>(TFSVolumeInfo *this@<X0>, const void **a2@<X8>)
{
  *a2 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TFSVolumeInfo::GetMountPoint(this, &theString);
  if (CFStringGetLength(theString) >= 1)
  {
    if (theString && (v4 = CFRetain(theString), (v5 = static_cf_cast<__CFString const*,void const*>(v4)) != 0))
    {
      v6 = CFAutorelease(v5);
      v7 = static_cf_cast<__CFString const*,void const*>(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v7, kCFURLPOSIXPathStyle, 1u);
    v13 = v8;
    if (v8)
    {
      TCFURLInfo::StringProperty(v8, *MEMORY[0x1E695ED58], &cf);
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

    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v13);
  }

  if (!CFStringGetLength(*a2))
  {
    v9 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "?", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v13 = v9;
    cf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf, v9);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13);
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

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
}

void sub_1E5766A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  _Unwind_Resume(a1);
}

BOOL TFSVolumeInfo::VolumeFormatFetched(TFSVolumeInfo *this)
{
  os_unfair_lock_lock(this + 78);
  v2 = CFStringGetLength(*(this + 12)) > 0;
  os_unfair_lock_unlock(this + 78);
  return v2;
}

void TFSVolumeInfo::GetVolumeFormatString(TFSVolumeInfo *this@<X0>, TString *a2@<X8>)
{
  if (!TFSVolumeInfo::VolumeFormatFetched(this))
  {
    TFSVolumeInfo::VolumeFormatString(this, &v4);
    os_unfair_lock_lock(this + 78);
    if ((this + 96) != &v4)
    {
      TString::SetStringRefAsImmutable(this + 12, v4);
    }

    os_unfair_lock_unlock(this + 78);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v4);
  }

  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *(this + 12));
}

void sub_1E5766B88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 78);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TFSVolumeInfo::GetUUID(TFSVolumeInfo *this@<X0>, TString *a2@<X8>)
{
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *(this + 49));
}

uint64_t TFSVolumeInfo::ReusableSpaceOnVolume(TFSVolumeInfo *this)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (*(this + 48) || *(this + 107) != 1)
  {
    v10 = 0;
  }

  else
  {
    v2 = *(this + 7);
    v1 = *(this + 8);
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_lock((v2 + 108));
    v3 = *(v2 + 16);
    v16 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    os_unfair_lock_unlock((v2 + 108));
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }

    valuePtr = 0;
    v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
    v14 = v4;
    if (v4)
    {
      v17[0] = @"CACHE_DELETE_VOLUME";
      v5 = v4;
      v17[1] = @"CACHE_DELETE_URGENCY";
      v18[0] = v5;
      v18[1] = &unk_1F5F4A400;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

      v7 = CacheDeleteCopyPurgeableSpaceWithInfo();
      v13 = v7;
      if (v7)
      {
        Value = CFDictionaryGetValue(v7, @"CACHE_DELETE_AMOUNT");
        v9 = static_cf_cast<__CFString const*,void const*>(Value);
        if (v9)
        {
          if (!CFNumberGetValue(v9, kCFNumberLongLongType, &valuePtr))
          {
            valuePtr = 0;
          }
        }
      }

      TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&v13);

      v10 = valuePtr;
    }

    else
    {
      v10 = 0;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v16);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1E5766D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

const void **TFSVolumeInfo::UpdateReusableSpaceOnVolumes(TFSVolumeInfo *this)
{
  v67 = *MEMORY[0x1E69E9840];
  v59 = CacheDeleteCopyPurgeableSpaceWithInfo();
  [v59 objectForKey:@"CACHE_DELETE_PURGEABLE_BY_CONTAINER"];
  memset(v57, 0, sizeof(v57));
  v58 = 1065353216;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v37 = v56 = 0u;
  v1 = [v37 allKeys];
  obj = v1;
  v2 = [v1 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v2)
  {
    v36 = *v54;
    do
    {
      v38 = v2;
      for (i = 0; i != v38; ++i)
      {
        if (*v54 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v53 + 1) + 8 * i);
        v5 = [v37 objectForKey:v4];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v39 = v5;
        v6 = [v5 allValues];
        v7 = 0;
        v8 = [v6 countByEnumeratingWithState:&v49 objects:v65 count:16];
        if (v8)
        {
          v9 = *v50;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v50 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v49 + 1) + 8 * j) objectForKey:@"CACHE_DELETE_SHARED_PURGEABLE"];
              v12 = [v11 longLongValue];

              v7 = (v7 + v12);
            }

            v8 = [v6 countByEnumeratingWithState:&v49 objects:v65 count:16];
          }

          while (v8);
        }

        v13 = v4;
        v42.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v42, v13);

        if (operator==(&v42.fString.fRef, "unknown container"))
        {
          TString::SetStringRefAsImmutable(&v42, 0);
          TString::SetFromUTF8(&v42, "disk1", 5);
        }

        v60 = &v42;
        std::__hash_table<std::__hash_value_type<TString,long long>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,long long>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,long long>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,long long>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(v57, &v42)[3] = v7;
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v42.fString.fRef);
      }

      v1 = obj;
      v2 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v2);
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  VolumeMap = GetVolumeMap();
  VolumeInfoLock();
  os_unfair_lock_lock(&_MergedGlobals_5);
  for (k = *(VolumeMap + 16); k; k = *k)
  {
    v16 = k[2];
    v42.fString.fRef = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    v43 = *(k + 24);
    v17 = k[5];
    v44 = k[4];
    v45 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (v45)
      {
        v18 = std::__shared_weak_count::lock(v45);
        if (v18)
        {
          v19 = v18;
          v20 = v44;
          if (v44)
          {
            if (CFStringGetLength(*(v44 + 80)))
            {
              v60 = (v20 + 80);
              v21 = std::__hash_table<std::__hash_value_type<TString,long long>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,long long>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,long long>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,long long>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(v57, (v20 + 80))[3];
            }

            else
            {
              v21 = TFSVolumeInfo::ReusableSpaceOnVolume(v20);
            }

            if (v21 != *(v20 + 160))
            {
              v22 = *(v20 + 40);
              v41 = v22;
              if (v22)
              {
                CFRetain(v22);
              }

              v23 = v47;
              if (v47 >= v48)
              {
                v25 = v47 - v46;
                if ((v25 + 1) >> 61)
                {
                  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
                }

                v26 = (v48 - v46) >> 2;
                if (v26 <= v25 + 1)
                {
                  v26 = v25 + 1;
                }

                if (v48 - v46 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v27 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v27 = v26;
                }

                v64 = &v46;
                if (v27)
                {
                  std::allocator<TString>::allocate_at_least[abi:ne200100](&v46, v27);
                }

                v60 = 0;
                v61 = (8 * v25);
                v63 = 0;
                *v61 = v41;
                v41 = 0;
                v62 = 8 * v25 + 8;
                std::vector<ROSPVolumeID>::__swap_out_circular_buffer(&v46, &v60);
                v24 = v47;
                std::__split_buffer<ROSPVolumeID>::~__split_buffer(&v60);
              }

              else
              {
                *v47 = v41;
                v24 = v23 + 1;
                v41 = 0;
              }

              v47 = v24;
              TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v41);
              os_unfair_lock_lock((v20 + 312));
              *(v20 + 160) = v21;
              os_unfair_lock_unlock((v20 + 312));
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_weak(v45);
        }
      }
    }

    TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v42.fString.fRef);
  }

  os_unfair_lock_unlock(&_MergedGlobals_5);
  v28 = v46;
  v29 = v47;
  while (v28 != v29)
  {
    v30 = *v28;
    v40 = v30;
    if (v30)
    {
      CFRetain(v30);
    }

    TNode::GetVolumeNode(&v40, &v60);
    TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v40);
    if (TNodeFromFINode(v60))
    {
      v31 = TNodeFromFINode(v60);
      TNode::SendNotification(v31, 2, &v60, 1919251312, 0);
      v32 = TNodeFromFINode(v60);
      TNode::SendNotification(v32, 2, &v60, 1718776688, 0);
    }

    ++v28;
  }

  v60 = &v46;
  std::vector<ROSPVolumeID>::__destroy_vector::operator()[abi:ne200100](&v60);
  std::__hash_table<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>>>::~__hash_table(v57);

  result = TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(&v59);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5767324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, const void *a44)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  std::pair<VolumeKey const,std::weak_ptr<TFSVolumeInfo>>::~pair(&a16);
  os_unfair_lock_unlock(&_MergedGlobals_5);
  a16 = &a20;
  std::vector<ROSPVolumeID>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::__hash_table<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>>>::~__hash_table(&a39);

  TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(&a44);
  _Unwind_Resume(a1);
}

const void **std::pair<VolumeKey const,std::weak_ptr<TFSVolumeInfo>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(a1);
}

uint64_t TFSVolumeInfo::GetReclaimableSpace(TFSVolumeInfo *this)
{
  os_unfair_lock_lock(this + 78);
  v2 = *(this + 20) & ~(*(this + 20) >> 63);
  os_unfair_lock_unlock(this + 78);
  return v2;
}

uint64_t TFSVolumeInfo::SpaceAndCapacityAreUpToDate(TFSVolumeInfo *this, int a2)
{
  os_unfair_lock_lock(this + 78);
  v4 = *(this + 130);
  if (v4 == 1 && a2 != 0)
  {
    v4 = *(this + 20) >= 0;
  }

  os_unfair_lock_unlock(this + 78);
  return v4;
}

uint64_t TFSVolumeInfo::VolumeSize(TFSVolumeInfo *this)
{
  os_unfair_lock_lock(this + 78);
  v2 = *(this + 21);
  os_unfair_lock_unlock(this + 78);
  return v2;
}

uint64_t TFSVolumeInfo::GetCapacity(TFSVolumeInfo *this)
{
  os_unfair_lock_lock(this + 78);
  v2 = *(this + 18);
  os_unfair_lock_unlock(this + 78);
  return v2;
}

uint64_t TFSVolumeInfo::GetFreeSpace(TFSVolumeInfo *this)
{
  os_unfair_lock_lock(this + 78);
  v2 = *(this + 19);
  os_unfair_lock_unlock(this + 78);
  return v2;
}

TString *TString::operator+@<X0>(const __CFString **a1@<X0>, const TString *a2@<X1>, TString *a3@<X8>)
{
  v5 = *a1;
  a3->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5);
  CFRelease(&stru_1F5F42870);
  a3->fString.fRef = MutableCopy;
  return TString::Append(a3, a2);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

const void **std::vector<ROSPVolumeID>::__swap_out_circular_buffer(uint64_t a1, void *a2)
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
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<ROSPVolumeID>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ROSPVolumeID>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<TVolumeSyncThread>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F41898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__shared_ptr_emplace<TFolderSizingThread>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F418E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t **std::__hash_table<std::__hash_value_type<TString,long long>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,long long>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,long long>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,long long>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(void *a1, TString *this)
{
  v4 = FowlerNollVoHash::hash(this, this);
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
    std::__hash_table<std::__hash_value_type<TString,long long>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,long long>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,long long>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,long long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>();
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

  if (!CFEqual(v11[2], this->fString.fRef))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E5767B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5767C2C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TFSVolumeInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F41938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void *std::__hash_table<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>>>::__emplace_unique_key_args<VolumeKey,VolumeKey&,std::shared_ptr<TFSVolumeInfo> &>(void *a1, id *this)
{
  v4 = ROSPVolumeID::Hash(this);
  v5 = *(this + 8);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>>>::__construct_node_hash<VolumeKey&,std::shared_ptr<TFSVolumeInfo> &>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>::operator()[abi:ne200100](a1, (v12 + 2), this))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1E5767F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<VolumeKey const,std::weak_ptr<TFSVolumeInfo>>::pair[abi:ne200100]<VolumeKey&,std::shared_ptr<TFSVolumeInfo> &,0>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a2;
  *a1 = *a2;
  if (v6)
  {
    CFRetain(v6);
  }

  *(a1 + 8) = *(a2 + 8);
  v7 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t TFSInfoSizer::TFSInfoSizer(uint64_t a1, id *a2, id *a3, uint64_t *a4, uint64_t a5)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *a3);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 80);
  *(a1 + 72) = v10;
  *(a1 + 80) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *(a1 + 88) = a5;
  *(a1 + 96) = 0;
  return a1;
}

void TFSInfoSizerCompanion::~TFSInfoSizerCompanion(id *this)
{
  *this = &unk_1F5F41988;

  v2 = this + 2;
  std::vector<TFSInfoSizerCompanion::TFolderStatistics>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F5F41988;

  v2 = this + 2;
  std::vector<TFSInfoSizerCompanion::TFolderStatistics>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x1E692CD30](this, 0xA1C409A6BAFF5);
}

uint64_t TFSInfoSizerCompanion::NewIteration(uint64_t a1, CFIndex *a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v4 = (a1 + 16);
  v45 = 0;
  if (v5 == v6)
  {
    v10 = *(a1 + 40);
    v45 = v10;
  }

  else
  {
    v7 = *(v6 - 64);
    if (TNodeFromFINode(v7))
    {
      v8 = *a2;
      TCFURLInfo::CheckPrefetchState(*a2, 1);
      if ((*(v8 + 52) & 4) != 0)
      {
        v11 = TNodeFromFINode(v7);
        TCFURLInfo::Name(*a2, &v44);
        TNode::FindChild(v11, &v44, 0, 0, &v40);
      }

      else
      {
        v9 = TNodeFromFINode(v7);
        TCFURLInfo::Name(*a2, &v44);
        TNode::FindChildButDontSynchronize(v9, &v44, &v40);
      }

      TNodePtr::operator=(&v45, &v40);

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v44.fString.fRef);
    }

    v10 = v45;
  }

  v12 = *(a1 + 8);
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[13];
  v16 = v12[16];
  v40 = v10;
  v17 = TNodeFromFINode(v45);
  if (v17)
  {
    v18 = TNodeFromFINode(v45);
    LODWORD(v17) = TNode::SizingGeneration(v18);
  }

  *v41 = v17;
  v41[4] = 0;
  *&v41[8] = v15;
  *&v41[16] = v16;
  *&v41[24] = v13;
  v42 = v14;
  v19 = a2[1];
  *&v43 = *a2;
  *(&v43 + 1) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 24);
  if (v20 >= *(a1 + 32))
  {
    v24 = std::vector<TFSInfoSizerCompanion::TFolderStatistics>::__emplace_back_slow_path<TFSInfoSizerCompanion::TFolderStatistics>(v4, &v40);
    v25 = *(&v43 + 1);
    *(a1 + 24) = v24;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  else
  {
    v21 = TNodePtr::TNodePtr(v20, &v40);
    v22 = *v41;
    v23 = *&v41[16];
    v21[5] = v42;
    *(v21 + 3) = v23;
    *(v21 + 1) = v22;
    *(v21 + 3) = v43;
    v43 = 0uLL;
    *(a1 + 24) = v21 + 8;
  }

  if (v5 == v6 || !TNodeFromFINode(v45))
  {
    v33 = 0;
  }

  else
  {
    v26 = TNodeFromFINode(v45);
    v27 = TNode::InfoLock(v26);
    os_unfair_lock_lock(v27);
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v27);
    TFSInfo::FolderStats(v29, &v40);
    if (v41[24] == 1)
    {
      v30 = *(a1 + 8);
      v31 = *v41;
      v32 = &v40[*(v30 + 104)];
      *(v30 + 88) = vaddq_s64(*(v30 + 88), vextq_s8(*&v41[8], *&v41[8], 8uLL));
      *(v30 + 104) = v32;
      *(v30 + 128) += v31;
      v33 = 1;
    }

    else
    {
      v34 = TNodeFromFINode(v45);
      if (TNode::IsDeferredForSymlink(v34, TFSInfo::IsPackage, 0))
      {
        v35 = TNodeFromFINode(v45);
        CachedPackageSize = TNode::GetCachedPackageSize(v35);
        v33 = 0;
        if (CachedPackageSize != -2 && v37 != -2)
        {
          v38 = *(a1 + 8);
          *(v38 + 104) += CachedPackageSize;
          *(v38 + 128) += v37;
          v33 = 1;
          *(v38 + 88) = vaddq_s64(*(v38 + 88), vdupq_n_s64(1uLL));
        }
      }

      else
      {
        v33 = 0;
      }
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

  return v33;
}

void sub_1E57684C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void TFSInfoSizerCompanion::TFolderStatistics::~TFolderStatistics(TFSInfoSizerCompanion::TFolderStatistics *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void TFSInfoSizerCompanion::FinishIteration(TFSInfoSizerCompanion *this, char a2)
{
  v4 = *(this + 3);
  v5 = *(v4 - 64);
  v32[1] = v5;
  v6 = *(v4 - 24);
  v7 = *(v4 - 56);
  v34 = *(v4 - 40);
  v33 = v7;
  v35 = v6;
  v8 = *(v4 - 16);
  v36 = v8;
  v9 = *(v4 - 8);
  v37 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(this + 3) - 64;
    std::__destroy_at[abi:ne200100]<TFSInfoSizerCompanion::TFolderStatistics,0>(v10);
    *(this + 3) = v10;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = *(this + 3) - 64;
    std::__destroy_at[abi:ne200100]<TFSInfoSizerCompanion::TFolderStatistics,0>(v11);
    *(this + 3) = v11;
  }

  v12 = v5;
  v32[0] = v12;
  v13 = v33;
  if (TNodeFromFINode(v12))
  {
    v14 = *v8;
    v15 = TNodeFromFINode(v32[0]);
    TNode::CFURL(v15, &v31);
    LOBYTE(v14) = IsEqual(v14, v31.fFINode);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v31.fFINode);
    if ((v14 & 1) == 0)
    {
      TNodePtr::TNodePtr(&v31, 0);
      TNodePtr::operator=(v32, &v31.fFINode);
    }
  }

  if ((a2 & 1) == 0)
  {
    v29 = v34;
    v30 = v35;
    v28 = *(&v33 + 1);
    v16 = *(this + 1);
    v17 = v16[11];
    v18 = v16[13];
    v19 = v16[16];
    v20 = v16[12] - *(&v34 + 1);
    if (!TNodeFromFINode(v32[0]) && (v20 > 1000 || *(this + 3) - *(this + 2) <= 0x80uLL))
    {
      v31.fFINode = *v8;
      TNode::GetNodeFromURL(&v31, v32, 0);
    }

    if (TNodeFromFINode(v32[0]))
    {
      v21 = TNodeFromFINode(v32[0]);
      v22 = TNode::InfoLock(v21);
      os_unfair_lock_lock(v22);
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v22);
      os_unfair_lock_lock((v24 + 108));
      v25 = *(v24 + 123);
      os_unfair_lock_unlock((v24 + 108));
      if ((v25 & 0x2000000) != 0 || (os_unfair_lock_lock((v24 + 108)), v26 = *(v24 + 123), os_unfair_lock_unlock((v24 + 108)), (v26 & 0x8000000) == 0) && *(v24 + 120) != 7)
      {
        v27 = TNodeFromFINode(v32[0]);
        TNode::SetSizeProperties(v27, v18 - v28, v19 - v29, v20, v17 - v30, v13);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E57687EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  TFSInfoSizerCompanion::TFolderStatistics::~TFolderStatistics(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfoSizerCompanion::SetContainsDatalessFolders(uint64_t this)
{
  v1 = *(this + 16);
  for (i = *(this + 24); i != v1; i -= 64)
  {
    if (*(i - 52))
    {
      break;
    }

    *(i - 52) = 1;
  }

  return this;
}

uint64_t TFSInfoSizer::ShouldCancel(id *this, void *a2)
{
  if (this)
  {
    return TFSInfoSizer::IsCanceled(this);
  }

  else
  {
    return 1;
  }
}

uint64_t TFSInfoSizer::IsCanceled(id *this)
{
  v2 = *this;
  v3 = this[1];
  if (!TNodeFromFINode(v2))
  {
    goto LABEL_7;
  }

  v4 = TNodeFromFINode(v2);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  os_unfair_lock_lock((v7 + 108));
  v8 = *(v7 + 123);
  os_unfair_lock_unlock((v7 + 108));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if ((v8 & 2) != 0)
  {
    if (this[9])
    {
      if (TNodeFromFINode(v3))
      {
        v11 = TNodeFromFINode(v3);
        if (!atomic_load(TNode::GetNotifierList(v11)))
        {
          if (!TNodeFromFINode(v2))
          {
            goto LABEL_9;
          }

          v13 = TNodeFromFINode(v2);
          NotifierList = TNode::GetNotifierList(v13);
          os_unfair_lock_lock((NotifierList + 64));
          v15 = *(NotifierList + 40);
          v16 = *(NotifierList + 48);
          os_unfair_lock_unlock((NotifierList + 64));
          if (v15 == v16)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  else
  {
LABEL_7:
    v9 = this[9];
    if (v9)
    {
      if (v9[13] == 1003 || TNodeFromFINode(v2) && (v17 = TNodeFromFINode(v2), (v18 = atomic_load((TNode::GetNotifierList(v17) + 4))) == 0) && (!TNodeFromFINode(v3) || (v21 = TNodeFromFINode(v3), (v22 = atomic_load((TNode::GetNotifierList(v21) + 4))) == 0)))
      {
LABEL_9:
        v10 = 1;
        goto LABEL_22;
      }
    }
  }

  if (TNodeFromFINode(v2))
  {
    v19 = TNodeFromFINode(v2);
    TNode::GetVolumeInfo(v19, &v23);
    v10 = *(v23 + 123);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_22:

  return v10;
}

void TFSInfoSizer::SizeFolder(uint64_t a1)
{
  v2 = TNodeFromFINode(*a1);
  v3 = TNode::InfoLock(v2);
  os_unfair_lock_lock(v3);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v3);
    v6 = *(v5 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (v6)
    {
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(v3);
    if (*(v5 + 120))
    {
      return;
    }
  }

  v7 = TNodeFromFINode(*a1);
  v8 = TNode::InfoLock(v7);
  os_unfair_lock_lock(v8);
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  os_unfair_lock_lock((v10 + 108));
  v11 = *(v10 + 123);
  os_unfair_lock_unlock((v10 + 108));
  if ((v11 & 0x20) != 0)
  {
    v12 = TNodeFromFINode(*a1);
    *(a1 + 48) = TNode::SizingGeneration(v12);
    if ((TFSInfo::IsDataless(v10, v13, v14) & 1) == 0)
    {
      os_unfair_lock_lock((v10 + 108));
      v15 = *(v10 + 127);
      os_unfair_lock_unlock((v10 + 108));
      if ((v15 & 2) == 0)
      {
        os_unfair_lock_lock((v10 + 108));
        v16 = *(v10 + 16);
        v17 = v16;
        if (v16)
        {
          CFRetain(v16);
          os_unfair_lock_unlock((v10 + 108));
          _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        os_unfair_lock_unlock((v10 + 108));
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v17);
      }
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E5768F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, id a45)
{
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  TFSInfoSizer::SizeFolder(std::shared_ptr<TFSInfoSizer>,unsigned long long)::$_0::~$_0(&a38);
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  TOperationSizer::TOperationSizerParams::~TOperationSizerParams(&a45);
  v48 = *(v46 - 152);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v46 - 80);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef((v46 - 72));
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

void ___ZN12TFSInfoSizer10SizeFolderENSt3__110shared_ptrIS_EEy_block_invoke(uint64_t a1)
{
  v2 = TNodeFromFINode(**(a1 + 48));
  atomic_fetch_add((*(v2 + 7) + 196), 0xFFFFFFFF);
  TTime::MicrosecondsSinceStartup(v2);
  TOperationSizer::ResumeSizing(*(a1 + 32));
}

id __copy_helper_block_ea8_32c64_ZTSKZN12TFSInfoSizer10SizeFolderENSt3__110shared_ptrIS_EEyE3__1(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 72);
  a1[8] = *(a2 + 64);
  a1[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 80);
  v9 = *(a2 + 88);
  v8 = *(a2 + 96);
  a1[10] = result;
  a1[11] = v9;
  a1[12] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[13] = *(a2 + 104);
  return result;
}

void *TFSInfoSizer::SizeFolder(std::shared_ptr<TFSInfoSizer>,unsigned long long)::$_1::$_1(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 48);
  v9 = *(a2 + 56);
  v8 = *(a2 + 64);
  a1[6] = v7;
  a1[7] = v9;
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = *(a2 + 72);
  return a1;
}

void __destroy_helper_block_ea8_32c64_ZTSKZN12TFSInfoSizer10SizeFolderENSt3__110shared_ptrIS_EEyE3__1(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t TFSInfoSizer::SizeFolder(std::shared_ptr<TFSInfoSizer>,unsigned long long)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

TChildrenList *TFSInfoSizer::SizeFolder(std::shared_ptr<TFSInfoSizer>,unsigned long long)::$_0::operator()(TChildrenList *result, int a2, uint64_t a3)
{
  v4 = *(*result + 40);
  *(*(result + 3) + 64) = v4;
  if (!v4)
  {
    v7 = result;
    v8 = TNodeFromFINode(*(result + 2));
    if (a2)
    {
      isa = v7[3][6].super.isa;
    }

    else
    {
      isa = -1;
    }

    v10 = BYTE6((*v7)[20].super.isa);
    TNode::SetSizeProperties(v8, (*v7)[13].super.isa, (*v7)[16].super.isa, (*v7)[12].super.isa, (*v7)[11].super.isa, isa);
    v11 = *(TNodeFromFINode(v7[2]) + 56);

    return TChildrenList::SetLastResizeDuration(v11, a3);
  }

  return result;
}

uint64_t TFSInfoSizer::SizeFolder(std::shared_ptr<TFSInfoSizer>,unsigned long long)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::vector<TFSInfoSizerCompanion::TFolderStatistics>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<TFSInfoSizerCompanion::TFolderStatistics,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<TFSInfoSizerCompanion::TFolderStatistics,0>(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
}

uint64_t std::vector<TFSInfoSizerCompanion::TFolderStatistics>::__emplace_back_slow_path<TFSInfoSizerCompanion::TFolderStatistics>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::allocator<TFSInfoSizerCompanion::TFolderStatistics>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  TNodePtr::TNodePtr(v8, a2);
  v9 = *(a2 + 8);
  v10 = *(a2 + 24);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 24) = v10;
  *(v8 + 8) = v9;
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *&v19 = v8 + 64;
  v11 = a1[1];
  v12 = (v8 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TFSInfoSizerCompanion::TFolderStatistics>,TFSInfoSizerCompanion::TFolderStatistics*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<TFSInfoSizerCompanion::TFolderStatistics>::~__split_buffer(&v17);
  return v16;
}

void sub_1E57695CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TFSInfoSizerCompanion::TFolderStatistics>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<TFSInfoSizerCompanion::TFolderStatistics>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TFSInfoSizerCompanion::TFolderStatistics>,TFSInfoSizerCompanion::TFolderStatistics*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = TNodePtr::TNodePtr(a4, v7);
      v9 = *(v7 + 8);
      v10 = *(v7 + 24);
      v8[5] = *(v7 + 40);
      *(v8 + 3) = v10;
      *(v8 + 1) = v9;
      *(v8 + 3) = *(v7 + 48);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v7 += 64;
      a4 = v8 + 8;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<TFSInfoSizerCompanion::TFolderStatistics,0>(v6);
      v6 += 64;
    }
  }
}

uint64_t std::__split_buffer<TFSInfoSizerCompanion::TFolderStatistics>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<TFSInfoSizerCompanion::TFolderStatistics,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<TFSInfoSizerCompanion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F41A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void *std::__shared_ptr_emplace<TOperationSizer>::__shared_ptr_emplace[abi:ne200100]<TOperationSizer::TOperationSizerParams &,std::allocator<TOperationSizer>,0>(void *a1, const TOperationSizer::TOperationSizerParams *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F41A70;
  TOperationSizer::TOperationSizer((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<TOperationSizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F41A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t ScreenTimeApps(void)
{
  {
    operator new();
  }

  return ScreenTimeApps(void)::sScreenTimeAppNodes;
}

uint64_t TDeviceManagementMonitor::Instance(TDeviceManagementMonitor *this)
{
  {
    operator new();
  }

  return TDeviceManagementMonitor::Instance(void)::monitor;
}

void sub_1E5769AA0(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x80C40B8603338);
  _Unwind_Resume(a1);
}

void TDeviceManagementMonitor::TDeviceManagementMonitor(TDeviceManagementMonitor *this)
{
  *this = 0;
  v2 = objc_alloc(getDMFApplicationPolicyMonitorClass());
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = ___ZN24TDeviceManagementMonitorC2Ev_block_invoke;
  v5[3] = &__block_descriptor_33_ea8_32c42_ZTSKZN24TDeviceManagementMonitorC1EvE3__0_e5_v8__0l;
  v3 = [v2 initWithPolicyChangeHandler:v5];
  v4 = *this;
  *this = v3;
}

void TDeviceManagementMonitor::AddNode(TDeviceManagementMonitor *this, TNode *a2)
{
  DeviceManagementLock();
  os_unfair_lock_lock(&_MergedGlobals_6);
  v3 = ScreenTimeApps();
  TNodePtr::TNodePtr(&v4, a2);
  std::__tree<TNodePtr>::__emplace_unique_key_args<TNodePtr,TNodePtr>(v3, &v4.fFINode);

  os_unfair_lock_unlock(&_MergedGlobals_6);
}

void DeviceManagementLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF45B8, memory_order_acquire) & 1) == 0)
  {
    DeviceManagementLock();
  }
}

void TDeviceManagementMonitor::RegisterApp(TNode *this, TNode *a2)
{
  v3 = TNode::InfoLock(this);
  os_unfair_lock_lock(v3);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v3);
    v6 = *(v5 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    os_unfair_lock_unlock(v3);
    v6 = *(v5 + 120);
  }

  if (v6 != 7)
  {
    v8 = TDeviceManagementMonitor::Instance(v7);

    TDeviceManagementMonitor::AddNode(v8, this);
  }
}

void TDeviceManagementMonitor::RemoveNode(TDeviceManagementMonitor *this, TNode *a2)
{
  DeviceManagementLock();
  os_unfair_lock_lock(&_MergedGlobals_6);
  v3 = ScreenTimeApps();
  TNodePtr::TNodePtr(&v4, a2);
  std::__tree<TNodePtr>::__erase_unique<TNodePtr>(v3, &v4.fFINode);

  os_unfair_lock_unlock(&_MergedGlobals_6);
}

void TDeviceManagementMonitor::UnRegisterApp(TNode *this, TNode *a2)
{
  v3 = TNode::InfoLock(this);
  os_unfair_lock_lock(v3);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v3);
    v6 = *(v5 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    os_unfair_lock_unlock(v3);
    v6 = *(v5 + 120);
  }

  if (v6 != 7)
  {
    v8 = TDeviceManagementMonitor::Instance(v7);

    TDeviceManagementMonitor::RemoveNode(v8, this);
  }
}

void ___ZN24TDeviceManagementMonitor19PolicyChangeHandlerEv_block_invoke()
{
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  DeviceManagementLock();
  os_unfair_lock_lock(&_MergedGlobals_6);
  v0 = ScreenTimeApps();
  if (&v12 != v0)
  {
    std::__tree<TNodePtr>::__assign_multi<std::__tree_const_iterator<TNodePtr,std::__tree_node<TNodePtr,void *> *,long>>(&v12, *v0, v0 + 1);
  }

  os_unfair_lock_unlock(&_MergedGlobals_6);
  v1 = v12;
  if (v12 != v13)
  {
    do
    {
      v11 = v1[4];
      v2 = TNodeFromFINode(v11);
      v3 = TNode::InfoLock(v2);
      os_unfair_lock_lock(v3);
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v3);
      v6 = TFSInfo::ApplicationDMFPolicy(v5);
      if (v6 != TFSInfo::FetchApplicationDMFPolicy(v5))
      {
        v7 = TNodeFromFINode(v11);
        TNode::SendNotification(v7, 2, &v11, 1684893817, 0);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v8 = v1[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      v1 = v9;
    }

    while (v9 != v13);
  }

  std::__tree<TNodePtr>::destroy(&v12, v13[0]);
}

void sub_1E5769F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  os_unfair_lock_unlock(&_MergedGlobals_6);
  std::__tree<TNodePtr>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

Class initDMFApplicationPolicyMonitor(void)
{
  if (DeviceManagementLibrary(void)::frameworkLibrary || (DeviceManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2)) != 0)
  {
    Class = objc_getClass("DMFApplicationPolicyMonitor");
    classDMFApplicationPolicyMonitor = Class;
    getDMFApplicationPolicyMonitorClass = DMFApplicationPolicyMonitorFunction;
  }

  else
  {
    Class = classDMFApplicationPolicyMonitor;
  }

  return Class;
}

uint64_t **std::__tree<TNodePtr>::__assign_multi<std::__tree_const_iterator<TNodePtr,std::__tree_node<TNodePtr,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<TNodePtr>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          objc_storeStrong(v8 + 4, v9[4]);
          leaf_high = std::__tree<TNodePtr>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<TString,TTagCompare,std::allocator<TString>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<TNodePtr>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<TNodePtr>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<TNodePtr>::__emplace_multi<TNodePtr const&>();
  }

  return result;
}

uint64_t *std::__tree<TNodePtr>::__find_leaf_high(uint64_t a1, void *a2, FINode **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        v7 = TNodeFromFINode(*a3);
        if (v7 >= TNodeFromFINode(v5[4]))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<TNodePtr>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<TNodePtr>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<TNodePtr>::destroy(*a1, *(a1 + 16));
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

    std::__tree<TNodePtr>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1E576A3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<TNodePtr,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<TNodePtr,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E576A484(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E576A638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](&a14);
  [FICopyOperation initWithSourceItems:destinationItem:]::$_0::~$_0(&a9);

  _Unwind_Resume(a1);
}

void sub_1E576A838(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id TNSWeakPtr<FICopyOperation>::Lock(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained isTornDown])
  {

    WeakRetained = 0;
  }

  return WeakRetained;
}

void iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<std::vector<std::optional<FINode * {__strong}>> const&,NSArray<FPItem *> * const {__strong}&>,0ul,1ul>::begin(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = **a1;
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(v4, *a1[1]);
  v5 = v3;
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(v6, v4);
  iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<std::vector<std::optional<FINode * {__strong}>> const&,NSArray<FPItem *> * const {__strong}&>,0ul,1ul>::ZipIterator<std::tuple<std::__wrap_iter<std::optional<FINode * {__strong}> const*>,IDContainerIteratorAdaptor<NSArray<FPItem *>>>,std::tuple<std::__wrap_iter&,FPItem * {__strong}>>::ZipIterator(a2, &v5);
}

void iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<std::vector<std::optional<FINode * {__strong}>> const&,NSArray<FPItem *> * const {__strong}&>,0ul,1ul>::end(void ***a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1)[1];
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::IDContainerIteratorAdaptor(v4, -1, *a1[1]);
  v5 = v3;
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(v6, v4);
  iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<std::vector<std::optional<FINode * {__strong}>> const&,NSArray<FPItem *> * const {__strong}&>,0ul,1ul>::ZipIterator<std::tuple<std::__wrap_iter<std::optional<FINode * {__strong}> const*>,IDContainerIteratorAdaptor<NSArray<FPItem *>>>,std::tuple<std::__wrap_iter&,FPItem * {__strong}>>::ZipIterator(a2, &v5);
}

void *iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<std::vector<std::optional<FINode * {__strong}>> const&,NSArray<FPItem *> * const {__strong}&>,0ul,1ul>::ZipIterator<std::tuple<std::__wrap_iter<std::optional<FINode * {__strong}> const*>,IDContainerIteratorAdaptor<NSArray<FPItem *>>>,std::tuple<std::__wrap_iter&,FPItem * {__strong}>>::ZipIterator(void *a1, void *a2)
{
  *a1 = *a2;
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t TPathName::FullPath(TPathName *this, const TString *a2, TString *a3, const __CFString *a4)
{
  v20.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v8 = *(this + 4);
  v9 = *(this + 1);
  v10 = (v9 + 8 * (v8 >> 9));
  if (*(this + 2) == v9)
  {
    if (a4 != 58)
    {
      goto LABEL_24;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v11 = (*v10 + 8 * (*(this + 4) & 0x1FFLL));
  v12 = *(v9 + (((*(this + 5) + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 5) + v8) & 0x1FF);
  if (a4 == 58)
  {
    if (v11 != v12)
    {
      TPathName::VolumesDirectory(&cf1);
      v13 = CFEqual(cf1, v11->fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
      if (v13)
      {
        if ((++v11 - *v10) == 4096)
        {
          v14 = v10[1];
          ++v10;
          v11 = v14;
        }

        v15 = 1;
        goto LABEL_14;
      }
    }

LABEL_10:
    if (&v20 != a2)
    {
      TString::SetStringRefAsImmutable(&v20, a2->fString.fRef);
    }

    v16 = 0;
    v15 = 1;
    goto LABEL_23;
  }

  v15 = 0;
LABEL_14:
  v16 = 1;
LABEL_23:
  while (v11 != v12)
  {
    if ((v16 & 1) == 0)
    {
      TString::Append(&v20, a4);
    }

    if (v15)
    {
      ColonsToSlashes(v11, &cf1);
      TString::Append(&v20, &cf1);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
    }

    else
    {
      TString::Append(&v20, v11);
    }

    if ((++v11 - *v10) == 4096)
    {
      v17 = v10[1];
      ++v10;
      v11 = v17;
    }

    v16 = 0;
  }

LABEL_24:
  if (&v20 != a3)
  {
    TString::SetStringRefAsImmutable(a3, v20.fString.fRef);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);
  return 0;
}

void sub_1E576B948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

void TPathName::VolumesDirectory(TString *a1@<X8>)
{
  {
    operator new();
  }

  v3 = TPathName::VolumesDirectory(void)::volumes;
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *v3);
}

void sub_1E576BA24(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x60C4044C4A2DFLL);
  _Unwind_Resume(a1);
}

void TPathName::UsersDirectory(TString *a1@<X8>)
{
  {
    operator new();
  }

  v3 = TPathName::UsersDirectory(void)::users;
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *v3);
}

void sub_1E576BB14(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x60C4044C4A2DFLL);
  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<TPropertyValue>(uint64_t a1, TPropertyValue *__src)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_55;
      }

      v4 = *a1;
      LOBYTE(obj) = 0;
      v5 = TPropertyValue::As<BOOL>(__src, &obj);
      v6 = HIDWORD(v5);
      v4->fData.__impl_.__data.__dummy = v5;
      break;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_55;
      }

      v21 = *a1;
      LOBYTE(obj) = 0;
      v22 = TPropertyValue::As<unsigned char>(__src, &obj);
      v17 = HIDWORD(v22);
      v21->fData.__impl_.__data.__dummy = v22;
      goto LABEL_52;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_55;
      }

      v15 = *a1;
      LOWORD(obj) = 0;
      v16 = TPropertyValue::As<short>(__src, &obj);
      v17 = HIDWORD(v16);
      v15->fData.__impl_.__data.__tail.__tail.__tail.__head.__value = v16;
      goto LABEL_52;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_55;
      }

      v19 = *a1;
      LODWORD(obj) = 0;
      v20 = TPropertyValue::As<int>(__src, &obj);
      goto LABEL_51;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_55;
      }

      v10 = *a1;
      obj = 0;
      v11 = TPropertyValue::As<long long>(__src, &obj);
      goto LABEL_38;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_55;
      }

      v19 = *a1;
      LODWORD(obj) = 0;
      v20 = TPropertyValue::As<unsigned int>(__src, &obj);
      goto LABEL_51;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_55;
      }

      v10 = *a1;
      obj = 0xC1E6CEAF20000000;
      v11 = TPropertyValue::As<double>(&__src->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value, &obj);
LABEL_38:
      v10->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = v11;
      v6 = v12;
      break;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_55;
      }

      v19 = *a1;
      LODWORD(obj) = 0;
      v20 = TPropertyValue::As<Point>(__src, &obj);
      goto LABEL_51;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_55;
      }

      v26 = *a1;
      v31 = 0;
      v6 = TPropertyValue::AsBlob(__src, v26, &obj);
      std::__function::__value_func<void ()(Blob &,unsigned int)>::~__value_func[abi:ne200100](&obj);
      break;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_55;
      }

      v14 = *a1;
      TPropertyValue::As<NSObject * {__strong}>(__src, &obj);
      v6 = v30;
      objc_storeStrong(v14, obj);

      break;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_55;
      }

      v25 = *a1;
      TPropertyValue::As<TString>(__src, &obj);
      v6 = v30;
      if (&obj != v25)
      {
        TString::SetStringRefAsImmutable(v25, obj);
      }

      goto LABEL_44;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_55;
      }

      v9 = *a1;
      TPropertyValue::As<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>(__src, &obj);
      v6 = v30;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v9, obj);
LABEL_44:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
      break;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_55;
      }

      v13 = *a1;
      TPropertyValue::As<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>>(__src, &obj);
      v6 = v30;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v13, obj);
      TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(&obj);
      break;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_55;
      }

      v24 = *a1;
      TPropertyValue::As<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(__src, &obj);
      v6 = v30;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v24, obj);
      TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&obj);
      break;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_55;
      }

      v8 = *a1;
      TPropertyValue::As<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>(__src, &obj);
      v6 = v30;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v8, obj);
      TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&obj);
      break;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_55;
      }

      v18 = *a1;
      TPropertyValue::As<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(__src, &obj);
      v6 = v30;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v18, obj);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&obj);
      break;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_55;
      }

      v7 = *a1;
      TPropertyValue::As<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>>(__src, &obj);
      v6 = v30;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v7, obj);
      TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&obj);
      break;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_55;
      }

      v23 = *a1;
      TPropertyValue::As<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>>(__src, &obj);
      v6 = v30;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v23, obj);
      TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(&obj);
      break;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_55;
      }

      TPropertyValue::operator=(*a1, __src);
      v6 = 0;
      break;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_55;
      }

      v19 = *a1;
      LODWORD(obj) = 0;
      v20 = TPropertyValue::As<Property>(__src, &obj);
      goto LABEL_51;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_55;
      }

      v19 = *a1;
      LODWORD(obj) = 0;
      v20 = TPropertyValue::As<NodeRequestOptions>(__src, &obj);
      goto LABEL_51;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_55;
      }

      v19 = *a1;
      LODWORD(obj) = 0;
      v20 = TPropertyValue::As<NodeDSStoreStatus>(__src, &obj);
      goto LABEL_51;
    case 23:
      if (v2 != 23)
      {
LABEL_55:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v19 = *a1;
      LODWORD(obj) = 0;
      v20 = TPropertyValue::As<DSBladeRunnerFlags>(__src, &obj);
LABEL_51:
      v17 = HIDWORD(v20);
      v19->fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = v20;
LABEL_52:
      v6 = v17;
      break;
    default:
      v6 = 4294959246;
      break;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1E576BFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TString>@<X0>(TString *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = TString::KEmptyString(a1);
  v6.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v6, *v4);
  TPropertyValue::As<TString>(a1, &v6, a2);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
}

void sub_1E576C0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  TPropertyValue::As<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>(a1, &v3, a2);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v3);
}

void sub_1E576C120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>@<X0>(const void **result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8072;
      v16 = -8072;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 1:
      if (v4 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 2:
      if (v4 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 3:
      if (v4 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 4:
      if (v4 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 5:
      if (v4 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 6:
      if (v4 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 7:
      if (v4 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 8:
      if (v4 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 9:
      v9 = *a2;
      cf = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      v20 = -8050;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a3, &cf);
      *(a3 + 8) = v20;
      p_cf = &cf;
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(p_cf);
    case 10:
      if (v4 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 11:
      if (v4 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = AsPriv<__CFString const*,TString>(result);
      v18 = v7;
      v16 = v7;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 12:
      if (v4 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v8 = *result;
      v17 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      v18 = 0;
      cf = v8;
      v17 = 0;
      v21 = 1;
      v20 = 0;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17);
      if (v21 == 1)
      {
        v14 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_143;
      }

      v13 = *a2;
      v14 = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      goto LABEL_146;
    case 13:
      if (v4 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 14:
      if (v4 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 15:
      if (v4 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 16:
      if (v4 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 17:
      if (v4 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 18:
      if (v4 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 19:
      if (v4 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 20:
      if (v4 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 21:
      if (v4 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 22:
      if (v4 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v11 = *a2;
      v14 = v11;
      if (!v11)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 23:
      if (v4 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v21 = 0;
      v17 = *a2;
      v18 = -8050;
      v16 = -8050;
      std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(&cf, &v17, &v16);
      if (v21 == 1)
      {
        v6 = cf;
        v14 = cf;
        if (cf)
        {
LABEL_95:
          CFRetain(v6);
        }

LABEL_143:
        v12 = v20;
      }

      else
      {
        v11 = *a2;
        v14 = v11;
        if (v11)
        {
LABEL_139:
          CFRetain(v11);
        }

LABEL_146:
        v12 = -8050;
      }

      v15 = v12;
      if (v21 == 1)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a3, &v14);
      *(a3 + 8) = v15;
      p_cf = &v14;
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(p_cf);
    default:
      return result;
  }
}

void sub_1E576CC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a14);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v16);
  _Unwind_Resume(a1);
}

uint64_t std::optional<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>>::emplace[abi:ne200100]<__CFString const*&,int,void>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  if (*(a1 + 16) == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(a1);
    *(a1 + 16) = 0;
  }

  std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>,__CFString const*&,int,fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>*>(a1, a2, a3);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>,__CFString const*&,int,fstd::optional_err<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,int>*>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v7 = 0;
  *(a1 + 8) = *a3;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7);
  return a1;
}

const void **TPropertyValue::As<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>>@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  TPropertyValue::As<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>>(a1, &v3, a2);
  return TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(&v3);
}

void sub_1E576CE90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>>@<X0>(const void **result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8072;
      v15 = -8072;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 1:
      if (v4 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 2:
      if (v4 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 3:
      if (v4 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 4:
      if (v4 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 5:
      if (v4 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 6:
      if (v4 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 7:
      if (v4 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 8:
      if (v4 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 9:
      v7 = *a2;
      cf = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v19 = -8050;
      TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::operator=<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>(a3, &cf);
      *(a3 + 8) = v19;
      p_cf = &cf;
      return TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(p_cf);
    case 10:
      if (v4 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 11:
      if (v4 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 12:
      if (v4 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 13:
      if (v4 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v9 = *result;
      v16 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      v17 = 0;
      cf = v9;
      v16 = 0;
      v20 = 1;
      v19 = 0;
      TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(&v16);
      if (v20 == 1)
      {
        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_143;
      }

      v12 = *a2;
      v13 = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      goto LABEL_146;
    case 14:
      if (v4 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 15:
      if (v4 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 16:
      if (v4 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 17:
      if (v4 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 18:
      if (v4 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 19:
      if (v4 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 20:
      if (v4 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 21:
      if (v4 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 22:
      if (v4 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 23:
      if (v4 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (cf)
        {
LABEL_95:
          CFRetain(v6);
        }

LABEL_143:
        v11 = v19;
      }

      else
      {
        v10 = *a2;
        v13 = v10;
        if (v10)
        {
LABEL_139:
          CFRetain(v10);
        }

LABEL_146:
        v11 = -8050;
      }

      v14 = v11;
      if (v20 == 1)
      {
        TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(&cf);
      }

      TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::operator=<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>(a3, &v13);
      *(a3 + 8) = v14;
      p_cf = &v13;
      return TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(p_cf);
    default:
      return result;
  }
}

void sub_1E576D9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(&a14);
  }

  TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(v16);
  _Unwind_Resume(a1);
}

uint64_t std::optional<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>>::emplace[abi:ne200100]<__CFNumber const*&,int,void>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  if (*(a1 + 16) == 1)
  {
    TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(a1);
    *(a1 + 16) = 0;
  }

  std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>,__CFNumber const*&,int,fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>*>(a1, a2, a3);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>,__CFNumber const*&,int,fstd::optional_err<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,int>*>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v7 = 0;
  *(a1 + 8) = *a3;
  TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(&v7);
  return a1;
}

const void **TPropertyValue::As<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  TPropertyValue::As<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(a1, &v3, a2);
  return TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v3);
}

void sub_1E576DC00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>@<X0>(const void **result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8072;
      v15 = -8072;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 1:
      if (v4 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 2:
      if (v4 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 3:
      if (v4 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 4:
      if (v4 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 5:
      if (v4 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 6:
      if (v4 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 7:
      if (v4 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 8:
      if (v4 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 9:
      v8 = *a2;
      cf = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      v19 = -8050;
      TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::operator=<__CFData const*,TRetainReleasePolicy<__CFData const*>>(a3, &cf);
      *(a3 + 8) = v19;
      p_cf = &cf;
      return TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(p_cf);
    case 10:
      if (v4 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 11:
      if (v4 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 12:
      if (v4 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 13:
      if (v4 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 14:
      if (v4 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v7 = *result;
      v16 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v17 = 0;
      cf = v7;
      v16 = 0;
      v20 = 1;
      v19 = 0;
      TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v16);
      if (v20 == 1)
      {
        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_143;
      }

      v12 = *a2;
      v13 = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      goto LABEL_146;
    case 15:
      if (v4 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 16:
      if (v4 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 17:
      if (v4 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 18:
      if (v4 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 19:
      if (v4 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 20:
      if (v4 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 21:
      if (v4 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 22:
      if (v4 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 23:
      if (v4 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (cf)
        {
LABEL_95:
          CFRetain(v6);
        }

LABEL_143:
        v11 = v19;
      }

      else
      {
        v10 = *a2;
        v13 = v10;
        if (v10)
        {
LABEL_139:
          CFRetain(v10);
        }

LABEL_146:
        v11 = -8050;
      }

      v14 = v11;
      if (v20 == 1)
      {
        TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&cf);
      }

      TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::operator=<__CFData const*,TRetainReleasePolicy<__CFData const*>>(a3, &v13);
      *(a3 + 8) = v14;
      p_cf = &v13;
      return TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(p_cf);
    default:
      return result;
  }
}

void sub_1E576E734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a14);
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(v16);
  _Unwind_Resume(a1);
}

uint64_t std::optional<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>>::emplace[abi:ne200100]<__CFData const*&,int,void>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  if (*(a1 + 16) == 1)
  {
    TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(a1);
    *(a1 + 16) = 0;
  }

  std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>,__CFData const*&,int,fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>*>(a1, a2, a3);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>,__CFData const*&,int,fstd::optional_err<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,int>*>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v7 = 0;
  *(a1 + 8) = *a3;
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v7);
  return a1;
}

const void **TPropertyValue::As<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  TPropertyValue::As<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>(a1, &v3, a2);
  return TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&v3);
}

void sub_1E576E970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>@<X0>(const void **result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8072;
      v15 = -8072;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 1:
      if (v4 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 2:
      if (v4 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 3:
      if (v4 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 4:
      if (v4 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 5:
      if (v4 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 6:
      if (v4 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 7:
      if (v4 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 8:
      if (v4 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 9:
      v7 = *a2;
      cf = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v19 = -8050;
      TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::operator=<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>(a3, &cf);
      *(a3 + 8) = v19;
      p_cf = &cf;
      return TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(p_cf);
    case 10:
      if (v4 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 11:
      if (v4 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 12:
      if (v4 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 13:
      if (v4 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 14:
      if (v4 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 15:
      if (v4 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v9 = *result;
      v16 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      v17 = 0;
      cf = v9;
      v16 = 0;
      v20 = 1;
      v19 = 0;
      TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&v16);
      if (v20 == 1)
      {
        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_143;
      }

      v12 = *a2;
      v13 = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      goto LABEL_146;
    case 16:
      if (v4 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 17:
      if (v4 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 18:
      if (v4 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 19:
      if (v4 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 20:
      if (v4 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 21:
      if (v4 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 22:
      if (v4 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 23:
      if (v4 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (cf)
        {
LABEL_95:
          CFRetain(v6);
        }

LABEL_143:
        v11 = v19;
      }

      else
      {
        v10 = *a2;
        v13 = v10;
        if (v10)
        {
LABEL_139:
          CFRetain(v10);
        }

LABEL_146:
        v11 = -8050;
      }

      v14 = v11;
      if (v20 == 1)
      {
        TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&cf);
      }

      TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::operator=<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>(a3, &v13);
      *(a3 + 8) = v14;
      p_cf = &v13;
      return TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(p_cf);
    default:
      return result;
  }
}