@interface DSFPItemStatusObserver
- (BOOL)isPopulated;
- (id).cxx_construct;
- (id)fpError;
- (id)fpItems;
- (void)collection:(id)a3 didEncounterError:(id)a4;
- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6;
- (void)collection:(id)a3 didUpdateObservedItem:(id)a4;
- (void)collectionDidFinishGathering:(id)a3;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)resetError;
- (void)startObserving:(id)a3 forParent:(const TNodePtr *)a4 withQueue:(id)a5;
- (void)stopObserving;
- (void)updateFPItems:(id)a3;
- (void)updateNodesFPItemsFromCollection:(const void *)a3;
@end

@implementation DSFPItemStatusObserver

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(self + 5) = 850045863;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 14) = 0;
  return self;
}

- (id)fpItems
{
  v3 = (self + 8);
  v4 = TNodeFromFINode(*(self + 1));
  if ((TNode::VirtualType(v4) & 0xFE) != 0x18)
  {
    goto LABEL_15;
  }

  v5 = +[FINode protectedAppIdentifiers];
  if (![v5 count])
  {

LABEL_15:
    TNode::StPopulating::StPopulating(v32, v3, 0);
    v18 = [*(self + 3) items];
    v11 = [v18 copy];

    TNode::StPopulating::~StPopulating(v32);
    goto LABEL_16;
  }

  TNode::StPopulating::StPopulating(v20, v3, 0);
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = [*(self + 3) items];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = [*(self + 3) items];
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(v22, v9);
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::IDContainerIteratorAdaptor(v21, -1, v9);
  v10 = v8;
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(&obj, v22);
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(v23, v21);
  v11 = v10;
  while (obj != v23[0] || v31 != v23[16])
  {
    v12 = *(v26 + 8 * v30);
    v13 = [v12 fp_appContainerBundleIdentifier];
    v14 = [v5 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      v15 = *(v26 + 8 * v30);
      [v11 addObject:v15];
    }

    v16 = v30;
    if (v30 >= v29 - 1)
    {
      v17 = [obj countByEnumeratingWithState:&v25 objects:v28 count:4];
      v16 = -1;
      v29 = v17;
      v30 = -1;
    }

    if (v28[4] != *v27)
    {
      objc_enumerationMutation(obj);
      v16 = v30;
    }

    ++v31;
    v30 = v16 + 1;
  }

  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(v32, &obj);
  v32[17] = 0;

  TNode::StPopulating::~StPopulating(v20);
LABEL_16:

  return v11;
}

- (BOOL)isPopulated
{
  v2 = *(self + 3);
  if (v2)
  {
    LOBYTE(v2) = [v2 isGathering] ^ 1;
  }

  return v2;
}

- (void)startObserving:(id)a3 forParent:(const TNodePtr *)a4 withQueue:(id)a5
{
  to[3] = *MEMORY[0x1E69E9840];
  v53 = self;
  v8 = a3;
  v9 = a5;
  std::mutex::lock((self + 40));
  v10 = TNodeFromFINode(a4->fFINode);
  if ((TNode::VirtualType(v10) & 0xFE) == 0x18)
  {
    v11 = *(self + 3);
    if (v11 != v8)
    {
      *(self + 3) = 0;
    }
  }

  v12 = (self + 24);
  if (!*(self + 3))
  {
    goto LABEL_13;
  }

  v13 = LogObj(4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *v12;
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1E5674000, v13, OS_LOG_TYPE_INFO, "Reusing existing collection. Existing: %{public}@, Ignored: %{public}@", buf, 0x16u);
  }

  if (*v12)
  {
    v15 = *(self + 4);
    if (v15)
    {
      v16 = LogObj(4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v16, OS_LOG_TYPE_INFO, "Clearing FPError from collection status observer on reuse", buf, 2u);
      }

      v15 = *(self + 4);
    }

    *(self + 4) = 0;
  }

  else
  {
LABEL_13:
    v17 = v8;
    v15 = *v12;
    *v12 = v17;
  }

  if (*v12)
  {
    [*v12 setWorkingQueue:v9];
    [*(self + 3) setDelegate:self];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __61__DSFPItemStatusObserver_startObserving_forParent_withQueue___block_invoke;
    block[3] = &__block_descriptor_40_ea8_32c74_ZTSKZ61__DSFPItemStatusObserver_startObserving_forParent_withQueue__E3__9_e5_v8__0l;
    v18 = *v12;
    v52 = v18;
    dispatch_async(v9, block);

    v19 = TNodeFromFINode(a4->fFINode);
    if ((TNode::VirtualType(v19) & 0xFE) == 0x18 && ICloudDriveFPFSEnabled())
    {
      objc_initWeak(buf, self);
      v20 = dispatch_time(0, 3000000000);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3321888768;
      v49[2] = __61__DSFPItemStatusObserver_startObserving_forParent_withQueue___block_invoke_34;
      v49[3] = &__block_descriptor_40_ea8_32c75_ZTSKZ61__DSFPItemStatusObserver_startObserving_forParent_withQueue__E4__10_e5_v8__0l;
      objc_copyWeak(to, buf);
      objc_copyWeak(&v50, to);
      dispatch_after(v20, v9, v49);
      objc_destroyWeak(to);
      objc_destroyWeak(&v50);
      objc_destroyWeak(buf);
    }
  }

  objc_storeStrong(self + 1, a4->fFINode);
  v21 = objc_cast<FPExtensionCollection,FPItemCollection * {__strong}>(*(self + 3));
  v22 = v21;
  if (v21)
  {
    v23 = [v21 settings];
    v24 = [(TString *)v23 enumeratedURL];
    *(self + 104) = v24 != 0;
  }

  else
  {
    v25 = TNodeFromFINode(a4->fFINode);
    v26 = TNode::InfoLock(v25);
    os_unfair_lock_lock(v26);
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v26);
    v23 = TFSInfo::GetFPItem(v28);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    *(self + 104) = v23 == 0;
  }

  v30 = *(self + 104);
  if (v30 == 1)
  {
    v31 = TString::KEmptyString(v29);
    *buf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(buf, *v31);
  }

  else
  {
    v32 = TNodeFromFINode(a4->fFINode);
    v33 = TNode::InfoLock(v32);
    os_unfair_lock_lock(v33);
    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v33);
    v31 = TFSInfo::GetFPItem(v35);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v23 = [v31 itemIdentifier];
    *buf = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(buf, v23);
  }

  if (self + 16 != buf)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(self + 2, buf);
    CFRetain(&stru_1F5F42870);
    if (*buf)
    {
      CFRelease(*buf);
    }

    *buf = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  if ((v30 & 1) == 0)
  {
  }

  v36 = LogObj(4);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v37 = TNodeFromFINode(*(self + 1));
    v38 = TNode::InfoLock(v37);
    os_unfair_lock_lock(v38);
    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v38);
    TFSInfo::dCPath(v40, 1, buf);
    v48.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    if ((v55 & 0x80u) == 0)
    {
      v41 = buf;
    }

    else
    {
      v41 = *buf;
    }

    if ((v55 & 0x80u) == 0)
    {
      v42 = v55;
    }

    else
    {
      v42 = *&buf[8];
    }

    TString::SetFromUTF8(&v48, v41, v42);
    v43 = SanitizedPath(&v48);
    LODWORD(to[0]) = 138543362;
    *(to + 4) = v43;
    _os_log_impl(&dword_1E5674000, v36, OS_LOG_TYPE_DEBUG, "DSFPItemStatusObserver start for %{public}@", to, 0xCu);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v48.fString.fRef);
    if (v55 < 0)
    {
      operator delete(*buf);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }
  }

  v44 = [*v12 isGathering];
  if (v44)
  {
    v45 = TNodeFromFINode(*(self + 1));
    FINodeFromTNode(v45);
    [objc_claimAutoreleasedReturnValue() shortDescription];
    objc_claimAutoreleasedReturnValue();
    v46 = "false";
    if (*(self + 104))
    {
      v46 = "true";
    }

    *buf = v46;
    operator new();
  }

  if (TNode::IsContextOpen(v44))
  {
    TNodeFromFINode(*(v53 + 1));
    *&buf[16] = 0;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
    *&buf[16] = 21;
    *buf = 0x800000;
    TNode::RequestInternalTask();
  }

  std::mutex::unlock((self + 40));

  v47 = *MEMORY[0x1E69E9840];
}

void __61__DSFPItemStatusObserver_startObserving_forParent_withQueue___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[3] && ([WeakRetained isPopulated] & 1) == 0)
  {
    v3 = LogObj(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_ERROR, "Library load timeout, updating items manually", v4, 2u);
    }

    [v2 updateFPItems:MEMORY[0x1E695E0F0]];
  }
}

- (void)stopObserving
{
  v24 = *MEMORY[0x1E69E9840];
  std::mutex::lock((self + 40));
  v3 = LogObj(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = TNodeFromFINode(*(self + 1));
    v5 = TNode::InfoLock(v4);
    os_unfair_lock_lock(v5);
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v5);
    TFSInfo::dCPath(v7, 1, __p);
    v21.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    if ((v20 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v9 = v20;
    }

    else
    {
      v9 = __p[1];
    }

    TString::SetFromUTF8(&v21, v8, v9);
    v10 = SanitizedPath(&v21);
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEBUG, "DSFPItemStatusObserver stop for %{public}@", buf, 0xCu);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21.fString.fRef);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v11 = *(self + 3);
  if (v11)
  {
    v12 = [v11 delegate];
    v13 = v12 == 0;

    if (!v13)
    {
      v14 = [*(self + 3) workingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = __39__DSFPItemStatusObserver_stopObserving__block_invoke;
      block[3] = &__block_descriptor_40_ea8_32c53_ZTSKZ39__DSFPItemStatusObserver_stopObserving_E4__11_e5_v8__0l;
      v15 = *(self + 3);
      v18 = v15;
      dispatch_async(v14, block);

      [*(self + 3) setDelegate:0];
      std::unique_ptr<AutoSignpostInterval_FPProvider_Gathering>::reset[abi:ne200100](self + 14, 0);
    }
  }

  std::mutex::unlock((self + 40));
  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateFPItems:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v3 = LogObj(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = TNodeFromFINode(*(self + 1));
    v5 = TNode::InfoLock(v4);
    os_unfair_lock_lock(v5);
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v5);
    TFSInfo::dCPath(v7, 1, &__p);
    v34.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    if (v42 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v42 >= 0)
    {
      v9 = HIBYTE(v42);
    }

    else
    {
      v9 = v41;
    }

    TString::SetFromUTF8(&v34, p_p, v9);
    v10 = SanitizedPath(&v34);
    v11 = [v29 count];
    *buf = 138543618;
    *&buf[4] = v10;
    v45 = 2048;
    v46 = v11;
    _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEBUG, "DSFPItemStatusObserver update for %{public}@, %ld items", buf, 0x16u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v12 = (self + 8);
  v13 = TNodeFromFINode(*(self + 1));
  v14 = TNode::VirtualType(v13);
  v15 = v14;
  if (TNode::IsContextOpen(v14))
  {
    v16 = ICloudDriveFPFSEnabled();
    v17 = (v15 & 0xFE) == 0x18 ? v16 : 0;
    if (v17 == 1)
    {
      TNodeFromFINode(v12->fFINode);
      __p = 0;
      v41 = 0;
      v42 = 0;
      TNode::RequestInternalTask();
    }
  }

  if ([v29 count])
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
    TNode::StPopulating::StPopulating(buf, v12, 0);
    v31 = (self + 8);
    v18 = *(TNodeFromFINode(v12->fFINode) + 56);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v29;
    v19 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = *v37;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = [v22 itemIdentifier];
        if (operator==(self + 2, v23))
        {
          v24 = [v22 domainIdentifier];
          v34.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v34, v24);

          v25 = [*v31 fpItem];
          v26 = [v25 domainIdentifier];
          v27 = operator==(&v34.fString.fRef, v26);

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
          if (v27)
          {
            v34.fString.fRef = *v31;
            v35 = v22;
            std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::push_back[abi:ne200100](&__p, &v34);

            continue;
          }
        }

        else
        {
        }

        TChildrenList::FindNodeMatchingFPItem(v18, v22, &v33);
        if (TNodeFromFINode(v33))
        {
          v34.fString.fRef = v33;
          v35 = v22;
          std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::push_back[abi:ne200100](&__p, &v34);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (!v19)
      {
LABEL_36:

        TNode::StPopulating::~StPopulating(buf);
        TNode::AttachFPItemsMetadata(&__p, 1, 1);
        *buf = &__p;
        std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](buf);
        break;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)collection:(id)a3 didUpdateObservedItem:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = LogObj(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = TNodeFromFINode(*(self + 1));
    v8 = TNode::InfoLock(v7);
    os_unfair_lock_lock(v8);
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v8);
    TFSInfo::Name(v10, &v18);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v11 = SanitizedStr(&v18);
    v12 = [*(self + 3) isGathering];
    v13 = "no";
    if (v12)
    {
      v13 = "yes";
    }

    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2082;
    *&buf[14] = v13;
    _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_INFO, "didUpdateObservedItem - parent: %{public}@, gathering: %{public}s", buf, 0x16u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  }

  if (TNode::IsContextOpen(v14))
  {
    if (*(self + 104) == 1 && !CFStringGetLength(*(self + 2)))
    {
      v15 = [v5 itemIdentifier];
      if (*(self + 2) != v15)
      {
        TString::SetStringRefAsImmutable(self + 2, v15);
      }
    }

    v18.fString.fRef = *(self + 1);
    v19 = v5;
    memset(buf, 0, sizeof(buf));
    std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(buf, &v18, buf, 1uLL);
    TNode::AttachFPItemsMetadata(buf, 1, 1);
    v17 = buf;
    std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v17);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)collectionDidFinishGathering:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LogObj(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = TNodeFromFINode(*(self + 1));
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    TFSInfo::Name(v9, &v19);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v10 = SanitizedStr(&v19);
    v11 = [*(self + 3) isGathering];
    v12 = "no";
    if (v11)
    {
      v12 = "yes";
    }

    *buf = 138543618;
    v21 = v10;
    v22 = 2082;
    v23 = v12;
    _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_INFO, "collectionDidFinishGathering - parent: %{public}@, gathering: %{public}s", buf, 0x16u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
  }

  v13 = [v4 items];
  [(DSFPItemStatusObserver *)self updateFPItems:v13];

  if (TNode::IsContextOpen(v14))
  {
    v15 = TNodeFromFINode(*(self + 1));
    IsPopulated = TNode::IsPopulated(v15);
    TNodeFromFINode(*(self + 1));
    if (IsPopulated)
    {
      v17 = 0x1000000;
    }

    else
    {
      v17 = 20971520;
    }

    *(&v23 + 2) = 0;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
    *(&v23 + 2) = 21;
    *buf = v17;
    TNode::RequestInternalTask();
  }

  std::unique_ptr<AutoSignpostInterval_FPProvider_Gathering>::reset[abi:ne200100](self + 14, 0);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LogObj(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = TNodeFromFINode(*(self + 1));
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    TFSInfo::Name(v9, &v16);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v10 = SanitizedStr(&v16);
    v11 = [*(self + 3) isGathering];
    v12 = "no";
    if (v11)
    {
      v12 = "yes";
    }

    *buf = 138543618;
    v18 = v10;
    v19 = 2082;
    v20 = v12;
    _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_INFO, "dataForCollectionShouldBeReloaded - parent: %{public}@, gathering: %{public}s", buf, 0x16u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
  }

  v13 = [v4 items];
  [(DSFPItemStatusObserver *)self updateFPItems:v13];

  if (TNode::IsContextOpen(v14))
  {
    TNodeFromFINode(*(self + 1));
    *(&v20 + 2) = 0;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
    *(&v20 + 2) = 21;
    *buf = 256;
    TNode::RequestInternalTask();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateNodesFPItemsFromCollection:(const void *)a3
{
  v4 = [*(self + 3) items];
  [(DSFPItemStatusObserver *)self updateFPItems:v4];

  if (TNode::IsContextOpen(v5))
  {
    TNodeFromFINode(*(self + 1));
    v6.fData.__impl_.__index = 0;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v6);
    v6.fData.__impl_.__index = 21;
    v6.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 256;
    TNode::RequestInternalTask();
  }
}

- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = LogObj(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = TNodeFromFINode(*(self + 1));
    v14 = TNode::InfoLock(v13);
    os_unfair_lock_lock(v14);
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v14);
    TFSInfo::Name(v16, &v23);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v17 = SanitizedStr(&v23);
    v18 = [*(self + 3) isGathering];
    v19 = "no";
    if (v18)
    {
      v19 = "yes";
    }

    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = v19;
    _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_INFO, "collection didUpdateItems - parent: %{public}@, gathering: %{public}s", buf, 0x16u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
  }

  [(DSFPItemStatusObserver *)self updateFPItems:v9];
  v20 = [v10 allValues];
  [(DSFPItemStatusObserver *)self updateFPItems:v20];

  v21 = [v9 count];
  if ((v21 || (v21 = [v11 count]) != 0) && TNode::IsContextOpen(v21))
  {
    TNodeFromFINode(*(self + 1));
    *(&v27 + 2) = 0;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
    *(&v27 + 2) = 21;
    *buf = 256;
    TNode::RequestInternalTask();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)collection:(id)a3 didEncounterError:(id)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = LogObj(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v21[0].fString.fRef) = 138543618;
    *(&v21[0].fString.fRef + 4) = v6;
    WORD2(v21[1].fString.fRef) = 2112;
    *(&v21[1].fString.fRef + 6) = v7;
    _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_ERROR, "collection didEncounterError: %{public}@: %@", v21, 0x16u);
  }

  IsContextOpen = TNode::IsContextOpen(v9);
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(__CFString *)v7 domain];
  FileProviderErrorDomain(v21);
  if (operator==(&v21[0].fString.fRef, v12))
  {
    v13 = [(__CFString *)v7 code]== -2001;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21[0].fString.fRef);

    if (v13)
    {
      objc_sync_exit(v11);

      goto LABEL_17;
    }
  }

  else
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21[0].fString.fRef);
  }

  if (*(v11 + 4) == v7)
  {
    IsContextOpen = 0;
  }

  else
  {
    v14 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v7);
    v15 = *(v11 + 4);
    *(v11 + 4) = v14;
  }

  objc_sync_exit(v11);

  if (TNode::IsContextOpen(v16))
  {
    v17 = [(__CFString *)v7 domain];
    FileProviderInternalErrorDomain(v21);
    if (operator==(&v21[0].fString.fRef, v17))
    {
      v18 = [(__CFString *)v7 code]== 15;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21[0].fString.fRef);

      if (v18)
      {
        v19 = TNodeFromFINode(*(v11 + 1));
        TNode::ClearFPItems(v19);
        goto LABEL_17;
      }
    }

    else
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21[0].fString.fRef);
    }

    if (IsContextOpen)
    {
      TNodeFromFINode(*(v11 + 1));
      memset(v21, 0, 24);
      TNode::RequestInternalTask();
    }
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resetError
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2 + 4);
  *(v2 + 4) = 0;

  objc_sync_exit(v2);
  if (v3)
  {
    TNodeFromFINode(*(v2 + 1));
    memset(&v4, 0, sizeof(v4));
    TNode::RequestInternalTask();
  }
}

- (id)fpError
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2 + 4);
  objc_sync_exit(v2);

  return v3;
}

@end