void std::__introsort<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v55 = a2;
  v56 = a1;
  while (1)
  {
    v8 = (v6 - v7) >> 3;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return;
    }

    if (v8 == 2)
    {
      v55 = v6 - 1;
      if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v6 - 1, v7))
      {
        v21 = &v56;
        v22 = &v55;
        goto LABEL_65;
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v24 = (v7 + 1);
      v26 = v7 == v6 || v24 == v6;
      if (a4)
      {
        if (!v26)
        {
          v27 = 0;
          v28 = v7;
          do
          {
            v29 = v28;
            v28 = v24;
            if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v24, v29))
            {
              TNodePtr::TNodePtr(&v60, v28);
              v30 = v27;
              while (1)
              {
                TNodePtr::operator=((v7 + v30 + 8), (v7 + v30));
                if (!v30)
                {
                  break;
                }

                v31 = TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v60, (v7 + v30 - 8));
                v30 -= 8;
                if (!v31)
                {
                  v32 = (v7 + v30 + 8);
                  goto LABEL_82;
                }
              }

              v32 = v7;
LABEL_82:
              TNodePtr::operator=(v32, &v60);
            }

            v24 = (v28 + 1);
            v27 += 8;
          }

          while (v28 + 1 != v6);
        }
      }

      else if (!v26)
      {
        do
        {
          v54 = v24;
          if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v24, v7))
          {
            TNodePtr::TNodePtr(&v60, v54);
            do
            {
              TNodePtr::operator=(v7 + 1, v7);
              --v7;
            }

            while (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v60, v7));
            TNodePtr::operator=(v7 + 1, &v60);
          }

          v24 = (v54 + 1);
          v7 = v54;
        }

        while (v54 + 1 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v33 = v9 >> 1;
        v34 = v9 >> 1;
        do
        {
          v35 = v34;
          if (v33 >= v34)
          {
            v36 = (2 * v34) | 1;
            v37 = &v7[v36];
            if (2 * v34 + 2 < v8 && TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v7[v36], v37 + 1))
            {
              ++v37;
              v36 = 2 * v35 + 2;
            }

            v38 = &v7[v35];
            if (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v37, v38))
            {
              TNodePtr::TNodePtr(&v60, &v7[v35]);
              do
              {
                v39 = v37;
                TNodePtr::operator=(v38, v37);
                if (v33 < v36)
                {
                  break;
                }

                v40 = (2 * v36) | 1;
                v37 = &v7[v40];
                v36 = 2 * v36 + 2;
                if (v36 >= v8)
                {
                  v36 = v40;
                }

                else if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v7[v40], v37 + 1))
                {
                  ++v37;
                }

                else
                {
                  v36 = v40;
                }

                v38 = v39;
              }

              while (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v37, &v60));
              TNodePtr::operator=(v39, &v60);
            }
          }

          v34 = v35 - 1;
        }

        while (v35);
        do
        {
          TNodePtr::TNodePtr(&v59, v7);
          v41 = 0;
          v42 = v7;
          do
          {
            v43 = &v42[v41];
            v44 = v43 + 1;
            v45 = (2 * v41) | 1;
            v46 = 2 * v41 + 2;
            if (v46 < v8)
            {
              v47 = v43 + 2;
              if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v43 + 1, v43 + 2))
              {
                v44 = v47;
                v45 = v46;
              }
            }

            TNodePtr::operator=(v42, v44);
            v42 = v44;
            v41 = v45;
          }

          while (v45 <= ((v8 - 2) >> 1));
          if (v44 == --v6)
          {
            TNodePtr::operator=(v44, &v59);
          }

          else
          {
            TNodePtr::operator=(v44, v6);
            TNodePtr::operator=(v6, &v59);
            v48 = (v44 - v7 + 8) >> 3;
            v49 = v48 < 2;
            v50 = v48 - 2;
            if (!v49)
            {
              v51 = v50 >> 1;
              v52 = &v7[v50 >> 1];
              if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v52, v44))
              {
                TNodePtr::TNodePtr(&v60, v44);
                do
                {
                  v53 = v52;
                  TNodePtr::operator=(v44, v52);
                  if (!v51)
                  {
                    break;
                  }

                  v51 = (v51 - 1) >> 1;
                  v52 = &v7[v51];
                  v44 = v53;
                }

                while (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v52, &v60));
                TNodePtr::operator=(v53, &v60);
              }
            }
          }

          v49 = v8-- <= 2;
        }

        while (!v49);
      }

      return;
    }

    v10 = v6 - 1;
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(&v7[v8 >> 1], v7, v10);
      v11 = v56;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(v7, &v7[v8 >> 1], v10);
      v11 = v56;
      v12 = &v56[v8 >> 1];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(v56 + 1, v12 - 1, v55 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(v56 + 2, v12 + 1, v55 - 3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(v12 - 1, v12, v12 + 1);
      TNodePtr::TNodePtr(&v60, v56);
      TNodePtr::operator=(v56, v12);
      TNodePtr::operator=(v12, &v60);
    }

    --a3;
    if (a4)
    {
      v13 = v55;
    }

    else
    {
      v13 = v55;
      if (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v11 - 1, v11))
      {
        v59 = v55;
        v60 = v11;
        TNodePtr::TNodePtr(&v58, v11);
        if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v58, v55 - 1))
        {
          v17 = v11;
          do
          {
            v60 = ++v17;
          }

          while (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v58, v17));
        }

        else
        {
          v18 = (v11 + 1);
          do
          {
            v17 = v18;
            v60 = v18;
            if (v18 >= v55)
            {
              break;
            }

            v19 = TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v58, v18);
            v18 = (v17 + 1);
          }

          while (!v19);
        }

        if (v17 < v55)
        {
          do
          {
            v59 = --v13;
          }

          while (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v58, v13));
        }

        if (v17 < v13)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v60, &v59);
            do
            {
              ++v60;
            }

            while (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v58, v60));
            do
            {
              --v59;
            }

            while (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(&v58, v59));
            v17 = v60;
          }

          while (v60 < v59);
        }

        v20 = (v17 - 1);
        if (v20 != v11)
        {
          TNodePtr::operator=(v11, v20);
        }

        TNodePtr::operator=(v20, &v58);
        v7 = v60;

        goto LABEL_55;
      }
    }

    v59 = v13;
    TNodePtr::TNodePtr(&v58, v11);
    v14 = 0;
    do
    {
      v60 = &v11[++v14];
    }

    while (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v60, &v58));
    v15 = &v11[v14];
    if (v14 == 1)
    {
      do
      {
        if (v15 >= v13)
        {
          break;
        }

        v59 = --v13;
      }

      while (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v13, &v58));
    }

    else
    {
      do
      {
        v59 = --v13;
      }

      while (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v13, &v58));
    }

    v7 = &v11[v14];
    if (v15 < v13)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v60, &v59);
        do
        {
          ++v60;
        }

        while (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v60, &v58));
        do
        {
          --v59;
        }

        while (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v59, &v58));
        v7 = v60;
      }

      while (v60 < v59);
    }

    if (v7 - 1 != v11)
    {
      TNodePtr::operator=(v11, v7 - 1);
    }

    TNodePtr::operator=(v7 - 1, &v58);

    if (v15 < v13)
    {
      goto LABEL_32;
    }

    v16 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *>(v56, v7 - 1);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *>(v7, v55))
    {
      if (v16)
      {
        goto LABEL_56;
      }

LABEL_32:
      std::__introsort<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,false>(v56, v7 - 1, a3, a4 & 1);
LABEL_55:
      a4 = 0;
LABEL_56:
      v56 = v7;
      goto LABEL_57;
    }

    if (v16)
    {
      return;
    }

    v55 = (v7 - 1);
    v7 = v56;
LABEL_57:
    v6 = v55;
  }

  if (v8 == 3)
  {
    v55 = v6 - 1;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(v7, v7 + 1, v6 - 1);
    return;
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {
      v55 = v6 - 1;
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(v7, v7 + 1, v7 + 2, v7 + 3, v6 - 1);
      return;
    }

    goto LABEL_9;
  }

  v55 = v6 - 1;
  v59 = v7 + 1;
  v60 = v7;
  v57 = v6 - 1;
  v58 = v7 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(v7, v7 + 1, v7 + 2);
  if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v6 - 1, v7 + 2))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v58, &v57);
    if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v58, v7 + 1))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v59, &v58);
      if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v59, v7))
      {
        v21 = &v60;
        v22 = &v59;
LABEL_65:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(v21, v22);
      }
    }
  }
}

BOOL TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(FINode **a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a1);
  v4 = TNode::InfoLock(v3);
  os_unfair_lock_lock(v4);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v7 = TNodeFromFINode(*a2);
  v8 = TNode::InfoLock(v7);
  os_unfair_lock_lock(v8);
  v9 = *(v7 + 24);
  v12 = *(v7 + 16);
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  v10 = TFSInfo::LessThan(v6, &v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v10;
}

void sub_1E56B9050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(uint64_t **a1, void ***a2)
{
  v2 = *a1;
  v3 = *a2;
  TNodePtr::TNodePtr(&v4, *a1);
  TNodePtr::operator=(v2, v3);
  TNodePtr::operator=(v3, &v4);
}

void ___ZN12TGlobalNodes28iCloudLibrariesContainerNodeEv_block_invoke(uint64_t a1)
{
  TFSVolumeInfo::GetVolumeInfoFor(24, &v9);
  TNodePtr::TNodePtr(&v7, 0);
  v2 = *(v9 + 64);
  v5 = *(v9 + 56);
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = 0;
  v4 = 0;
  TNode::CreateNode(&obj, &v7, &v5, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  objc_storeStrong((*(a1 + 32) + 80), obj);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E56B920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

id TGlobalNodes::iCloudLibrariesContainerNode@<X0>(void *a1@<X8>)
{
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = TGlobalNodes::gGlobalNodes;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12TGlobalNodes28iCloudLibrariesContainerNodeEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = TGlobalNodes::gGlobalNodes;
  if (TGlobalNodes::iCloudLibrariesContainerNode(void)::onceToken != -1)
  {
    dispatch_once(&TGlobalNodes::iCloudLibrariesContainerNode(void)::onceToken, block);
  }

  result = *(v3 + 80);
  *a1 = result;
  return result;
}

const void **GetICloudContainerURL@<X0>(const TString *a1@<X0>, CFURLRef *a2@<X8>)
{
  v11 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "x-apple-finder:icloud", 21, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v9.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v9, v11);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11);
  AppendPath(&v9, a1, &cf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  if (cf && (v4 = CFRetain(cf), (v5 = static_cf_cast<__CFString const*,void const*>(v4)) != 0))
  {
    v6 = CFAutorelease(v5);
    v7 = static_cf_cast<__CFString const*,void const*>(v6);
  }

  else
  {
    v7 = 0;
  }

  *a2 = CFURLCreateWithString(0, v7, 0);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
}

void sub_1E56B9468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::operator=<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>(const void **a1, const void **a2)
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

uint64_t *TString::KEmptyString(TString *this)
{
  {
    TString::KEmptyString(void)::sEmptyString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
  }

  return &TString::KEmptyString(void)::sEmptyString;
}

void sub_1E56B95F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = FICustomNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void TNode::~TNode(TNode *this, const TNode *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = sReleaseCustomNodeCallback;
    if (sReleaseCustomNodeCallback && *(this + 8))
    {
      v6 = TNode::AsNodeRef(this, a2);
      v5(v6, *(this + 8));
    }

    TNodePtr::TNodePtr(&v11, 0);
    TNode::SetAliasTarget(this, &v11, 0);

    TNodePtr::TNodePtr(&v11, this);
    TProgressMap::RemoveSubscriberForExternalProgress(&v11, v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<AutoSignpostInterval_General_OpenSync>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<TNotifierList>::reset[abi:ne200100](this + 9, 0);
  std::unique_ptr<TChildrenList>::reset[abi:ne200100](this + 7, 0);
  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    MEMORY[0x1E692CD30](v8, 0x1020C40A5B76CDFLL);
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

const void **TProgressMap::RemoveSubscriberForExternalProgress(const TNodePtr *this, const TNodePtr *a2)
{
  v3 = TNodeFromFINode(this->fFINode);
  result = TNode::TestAndSetRegisteredForExternalProgress(v3, 0);
  if (result)
  {
    ProgressPathForNode(this, &theString);
    if (CFStringGetLength(theString))
    {
      TSystemNotificationTask::StopObservingDirectory(&theString, 0);
    }

    v5 = TNodeFromFINode(this->fFINode);
    v6 = TChildrenList::NSProgressSubscriber(*(v5 + 56));
    if (v6)
    {
      [MEMORY[0x1E696AE38] removeSubscriber:v6];
      v7 = TNodeFromFINode(this->fFINode);
      TChildrenList::SetNSProgressSubscriber(*(v7 + 56), 0);
    }

    return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  }

  return result;
}

void sub_1E56B98F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TNode::TestAndSetRegisteredForExternalProgress(TNode *this, int a2)
{
  v2 = (this + 88);
  if (a2)
  {
    v3 = atomic_fetch_or(v2, 0x200u);
  }

  else
  {
    v3 = atomic_fetch_and(v2, 0xFDFFu);
  }

  return (v3 >> 9) & 1;
}

void sub_1E56B9994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void TChildrenList::DetachChildren(TChildrenList *this)
{
  TNodePtr::TNodePtr(&v8, *(this + 12));
  v2 = *(this + 8);
  v3 = *(this + 9);
  while (v2 != v3)
  {
    v4 = TNodeFromFINode(*v2);
    v5 = TNodeFromFINode(v8.fFINode);
    v6 = TNode::ParentLock(v5);
    os_unfair_lock_lock(v6);
    if (*(v4 + 48) == v5)
    {
      *(v4 + 48) = 0;
    }

    os_unfair_lock_unlock(v6);
    v7 = TNodeFromFINode(*v2);
    TNode::ClearAliasTarget(v7, 0);
    ++v2;
  }
}

void TChildrenList::~TChildrenList(TChildrenList *this)
{
  TChildrenList::DetachChildren(this);

  v2 = (this + 64);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::recursive_mutex::~recursive_mutex(this);
}

void TNodeRequest::TNodeRequest(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  TNodePtr::TNodePtr(&v2, 0);
  TNodePtr::TNodePtr(&v1, 0);
  TDSNotifier::Make();
}

void sub_1E56B9BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void TFSVolumeInfo::GarbageCollect(TFSVolumeInfo *this)
{
  VolumeMap = GetVolumeMap();
  VolumeInfoLock();
  os_unfair_lock_lock(&_MergedGlobals_5);
  v2 = VolumeMap[2];
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = v2[5];
        if (!v3 || *(v3 + 8) == -1)
        {
          break;
        }

        v2 = *v2;
        if (!v2)
        {
          goto LABEL_7;
        }
      }

      v4 = *v2;
      std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(VolumeMap, v2, v5);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>>>>::~unique_ptr[abi:ne200100](v5);
      v2 = v4;
    }

    while (v4);
  }

LABEL_7:
  os_unfair_lock_unlock(&_MergedGlobals_5);
}

TNodeRequest **TRef<TNodeRequest *,TRetainReleasePolicy<TNodeRequest *>>::~TRef(TNodeRequest **a1)
{
  v2 = *a1;
  if (v2)
  {
    TNodeRequest::RemovePtrReference(v2);
  }

  return a1;
}

uint64_t NodeNewSortedIterator(TNode *a1, OpaqueNodeRef *a2, uint64_t a3, unsigned int a4)
{
  v10 = a3;
  if (!a2)
  {
    return 4294959224;
  }

  *a2 = 0;
  v6 = TNode::NodeFromNodeRef(a1, a2);
  if (TNode::WeakValidate(v6, v7))
  {
    return 4294959224;
  }

  v9 = 0;
  result = TNode::NewNodeIterator(v6, &v9, &v10, a4);
  if (!result)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t TNode::LowLevelIsLockFile(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
  }

  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v6 = *(this + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v5);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    os_unfair_lock_unlock(v5);
  }

  v8 = TNode::InfoLock(v7);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  IsLockFile = TFSInfo::LowLevelIsLockFile(v10);
  v12 = IsLockFile;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = TNode::InfoLock(IsLockFile);
    os_unfair_lock_lock(v14);
    v16 = *(this + 2);
    v15 = *(this + 3);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v14);
    os_unfair_lock_lock((v16 + 108));
    v17 = *(v16 + 123);
    os_unfair_lock_unlock((v16 + 108));
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if ((v17 & 0x100) != 0)
    {
      TNode::GetVolumeInfo(this, &v19);
      if (*(v19 + 123))
      {
        v13 = 1;
      }

      else
      {
        v13 = *(v19 + 127);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13 & 1;
}

void sub_1E56B9EB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL TFSInfo::LowLevelIsLockFile(TFSInfo *this)
{
  if (*(this + 120))
  {
    return 0;
  }

  if (*(this + 28) == 1651666795)
  {
    return 1;
  }

  return TFSInfo::GetCreationDate(this) == -534528000.0;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E56B9FB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL TNodeRequest::RemovePtrReference(TNodeRequest *this)
{
  result = TRefCount::Release<int>(this);
  if (result)
  {
    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(this + 3);
    v3 = *(this + 2);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

uint64_t NodeIteratorFullyPopulated(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

TNodeIterator *NodeIteratorFirst(TNodeIterator *this)
{
  v1 = this;
  if (this)
  {
    TNodeIterator::First(this, &v9);
    while (TNodeFromFINode(v9.fFINode))
    {
      v2 = TNodeFromFINode(v9.fFINode);
      v3 = TNode::InfoLock(v2);
      os_unfair_lock_lock(v3);
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v3);
      os_unfair_lock_lock((v5 + 108));
      v6 = *(v5 + 123);
      os_unfair_lock_unlock((v5 + 108));
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      TNodeIterator::Next(v1, &v8);
      TNodePtr::operator=(&v9.fFINode, &v8.fFINode);
    }

    v1 = TNodePtr::CopyAsNodeRef(&v9);
  }

  return v1;
}

OpaqueNodeRef *NodeIteratorNext(TNodeIterator *a1)
{
  v10.fFINode = 0;
  if (a1)
  {
    TNodeIterator::Next(a1, &v9);
    TNodePtr::operator=(&v10.fFINode, &v9.fFINode);

    while (TNodeFromFINode(v10.fFINode))
    {
      v2 = TNodeFromFINode(v10.fFINode);
      v3 = TNode::InfoLock(v2);
      os_unfair_lock_lock(v3);
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v3);
      os_unfair_lock_lock((v5 + 108));
      v6 = *(v5 + 123);
      os_unfair_lock_unlock((v5 + 108));
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      TNodeIterator::Next(a1, &v9);
      TNodePtr::operator=(&v10.fFINode, &v9.fFINode);
    }
  }

  v7 = TNodePtr::CopyAsNodeRef(&v10);

  return v7;
}

void sub_1E56BA418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

TNode *NodeGetFIProviderDomain(TNode *a1, OpaqueNodeRef *a2)
{
  v2 = TNode::NodeFromNodeRef(a1, a2);
  if (v2)
  {
    v4 = v2;
    if (TNode::WeakValidate(v2, v3))
    {
      v2 = 0;
    }

    else
    {
      v2 = TNode::GetFIProvider(v4);
    }
  }

  return v2;
}

uint64_t std::equal_to<FINode * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

void TNode::CreateCustomNode(TNode *this, FIDSNode *a2)
{
  v4 = 1;
  v3 = 4;
  ClassName = object_getClassName(this);
  std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FSInfoVirtualType,char const*,TCatalogInfo &,0>();
}

void sub_1E56BA628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<TFSInfo,FSInfoVirtualType,char const*,TCatalogInfo &,TFSInfo*>(uint64_t a1, char *a2, const char **a3, _BYTE *a4)
{
  v6 = *a2;
  TString::TString(&v8, *a3);
  TFSInfo::TFSInfo(a1, v6, &v8, a4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
  return a1;
}

void sub_1E56BA754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FSInfoVirtualType,char const*,TCatalogInfo &,std::allocator<TFSInfo>,0>(void *a1, char *a2, const char **a3, _BYTE *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  std::construct_at[abi:ne200100]<TFSInfo,FSInfoVirtualType,char const*,TCatalogInfo &,TFSInfo*>((a1 + 3), a2, a3, a4);
  return a1;
}

unint64_t TNode::NodeIs(uint64_t a1, uint64_t a2)
{
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v7 = TFSInfo::InfoIs(v6, a2);
  if ((a2 & 0x200000) != 0)
  {
    TNode::AliasIsContainer(a1);
  }

  if ((a2 & 0x800000) != 0)
  {
    if (TNode::IsInTrash(a1))
    {
      v8 = 0x800000;
    }

    else
    {
      v8 = 0;
    }

    if ((a2 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    if ((a2 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }
  }

  if (TNode::IsNetworkNode(a1, 0x6E74776B) || TNode::IsNetworkNode(a1, 0x6E747362))
  {
    v8 |= 0x40000000uLL;
  }

LABEL_15:
  if ((a2 & 0x800000000000) != 0 && TNode::IsNetworkNode(a1, 0x6E74776B))
  {
    v8 |= 0x800000000000uLL;
  }

  if ((a2 & 0x40000000000) != 0 && TNode::IsNetworkNode(a1, 0x6D74726D))
  {
    v8 |= 0x40000000000uLL;
  }

  if ((a2 & 0x2000000000) != 0)
  {
    v9 = atomic_load((a1 + 88));
    v8 |= (v9 & 2) << 36;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v8 | v7;
}

void sub_1E56BA8FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t TFSInfo::InfoIs(TFSInfo *this, uint64_t a2)
{
  v3 = this;
  if (a2)
  {
    v4 = *(this + 120) != 0;
    if ((a2 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if ((a2 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  os_unfair_lock_lock(this + 27);
  v5 = *(v3 + 123);
  os_unfair_lock_unlock(v3 + 27);
  if ((v5 & 0x20) != 0 || (os_unfair_lock_lock(v3 + 27), v6 = *(v3 + 123), os_unfair_lock_unlock(v3 + 27), (v6 & 0x20000) != 0))
  {
    v4 |= 2uLL;
  }

LABEL_8:
  if ((a2 & 4) != 0)
  {
    os_unfair_lock_lock(v3 + 27);
    v7 = *(v3 + 123);
    os_unfair_lock_unlock(v3 + 27);
    if ((v7 & 0x100) != 0 && (*(v3 + 120) & 0xFE) != 0x18)
    {
      v4 |= 4uLL;
    }
  }

  if ((a2 & 8) != 0)
  {
    os_unfair_lock_lock(v3 + 27);
    v8 = *(v3 + 123);
    os_unfair_lock_unlock(v3 + 27);
    if (v8)
    {
      v4 |= 8uLL;
    }

    if ((a2 & 0x10) == 0)
    {
LABEL_14:
      if ((a2 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((a2 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  this = TFSInfo::IsAlias(v3);
  if (this)
  {
    v4 |= 0x10uLL;
  }

  if ((a2 & 0x20) == 0)
  {
LABEL_15:
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  os_unfair_lock_lock(v3 + 27);
  v9 = *(v3 + 123);
  os_unfair_lock_unlock(v3 + 27);
  v4 |= (v9 >> 1) & 0x20;
  if ((a2 & 0x40) == 0)
  {
LABEL_16:
    if ((a2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  os_unfair_lock_lock(v3 + 27);
  v10 = *(v3 + 123) >> 2;
  os_unfair_lock_unlock(v3 + 27);
  v4 = v4 & 0xFFFFFFFFFFFFFFBFLL | ((v10 & 1) << 6);
  if ((a2 & 0x80) == 0)
  {
LABEL_17:
    if ((a2 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  os_unfair_lock_lock(v3 + 27);
  v11 = *(v3 + 123) >> 1;
  os_unfair_lock_unlock(v3 + 27);
  v4 = v4 & 0xFFFFFFFFFFFFFF7FLL | ((v11 & 1) << 7);
  if ((a2 & 0x200) == 0)
  {
LABEL_18:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_31:
  this = TFSInfo::IsLocation(v3);
  if (this)
  {
    v4 |= 0x200uLL;
  }

  if ((a2 & 0x400) == 0)
  {
LABEL_19:
    if ((a2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_34:
  this = TFSInfo::HasCustomIcon(v3);
  if (this)
  {
    v4 |= 0x400uLL;
  }

  if ((a2 & 0x800) == 0)
  {
LABEL_20:
    if ((a2 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_37:
  UserID = TFSInfo::GetUserID(this);
  if (UserID == TFSInfo::GetOwner(v3))
  {
    v4 |= 0x800uLL;
  }

  if ((a2 & 0x1000) != 0)
  {
LABEL_40:
    if (*(v3 + 120) || *(v3 + 28) != 1651666795 && TFSInfo::GetCreationDate(v3) != -534528000.0)
    {
      v4 |= 0x1000uLL;
    }
  }

LABEL_44:
  if ((a2 & 0x4000) != 0)
  {
    if (*(v3 + 120) == 1)
    {
      v4 |= 0x4000uLL;
    }

    if ((a2 & 0x10000) == 0)
    {
LABEL_46:
      if ((a2 & 0x20000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_57;
    }
  }

  else if ((a2 & 0x10000) == 0)
  {
    goto LABEL_46;
  }

  if (*(v3 + 120) == 5)
  {
    v4 |= 0x10000uLL;
  }

  if ((a2 & 0x20000) == 0)
  {
LABEL_47:
    if ((a2 & 0x40000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_58;
  }

LABEL_57:
  os_unfair_lock_lock(v3 + 27);
  v13 = (*(v3 + 127) & 0x20) >> 5;
  os_unfair_lock_unlock(v3 + 27);
  v4 = v4 & 0xFFFFFFFFFFFDFFFFLL | ((v13 & 1) << 17);
  if ((a2 & 0x40000) == 0)
  {
LABEL_48:
    if ((a2 & 0x80000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_61;
  }

LABEL_58:
  if (*(v3 + 120) == 7)
  {
    v4 |= 0x40000uLL;
  }

  if ((a2 & 0x80000) == 0)
  {
LABEL_49:
    if ((a2 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*(v3 + 120) == 6)
  {
    v4 |= 0x80000uLL;
  }

  if ((a2 & 0x200000) != 0)
  {
LABEL_64:
    os_unfair_lock_lock(v3 + 27);
    v14 = *(v3 + 123);
    os_unfair_lock_unlock(v3 + 27);
    if ((v14 & 0x20) != 0 || (os_unfair_lock_lock(v3 + 27), v15 = *(v3 + 123), os_unfair_lock_unlock(v3 + 27), (v15 & 0x20000) != 0))
    {
      os_unfair_lock_lock(v3 + 27);
      v16 = *(v3 + 123);
      os_unfair_lock_unlock(v3 + 27);
      if ((v16 & 2) == 0)
      {
        os_unfair_lock_lock(v3 + 27);
        v17 = *(v3 + 127);
        os_unfair_lock_unlock(v3 + 27);
        if ((v17 & 0x20) == 0)
        {
          v4 |= 0x200000uLL;
        }
      }
    }
  }

LABEL_69:
  if ((a2 & 0x2000000) != 0)
  {
    if (*(v3 + 120) == 21)
    {
      v4 |= 0x2000000uLL;
    }

    if ((a2 & 0x4000000000000) == 0)
    {
LABEL_71:
      if ((a2 & 0x40000000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_82;
    }
  }

  else if ((a2 & 0x4000000000000) == 0)
  {
    goto LABEL_71;
  }

  if (*(v3 + 120) == 35)
  {
    v4 |= 0x4000000000000uLL;
  }

  if ((a2 & 0x40000000000) == 0)
  {
LABEL_72:
    if ((a2 & 0x8000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_85;
  }

LABEL_82:
  if (*(v3 + 120) == 34)
  {
    v4 |= 0x40000000000uLL;
  }

  if ((a2 & 0x8000000) == 0)
  {
LABEL_73:
    if ((a2 & 0x100000000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_88:
    os_unfair_lock_lock(v3 + 27);
    v18 = *(v3 + 127) & 0x100;
    os_unfair_lock_unlock(v3 + 27);
    v4 |= v18 << 36;
    if ((a2 & 0x20000000000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_89;
  }

LABEL_85:
  if (*(v3 + 120) == 16)
  {
    v4 |= 0x8000000uLL;
  }

  if ((a2 & 0x100000000000) != 0)
  {
    goto LABEL_88;
  }

LABEL_74:
  if ((a2 & 0x20000000000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_89:
  v19 = *(v3 + 120);
  if ((v19 - 27) < 3)
  {
    v4 |= 0x20000000000000uLL;
    if ((a2 & 0x40000000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_96;
  }

  if (*(v3 + 120))
  {
    if (v19 == 36)
    {
      os_unfair_lock_lock(v3 + 27);
      v20 = (*(v3 + 127) & 0x40) >> 6;
      os_unfair_lock_unlock(v3 + 27);
      v4 = v4 & 0xFFDFFFFFFFFFFFFFLL | ((v20 & 1) << 53);
    }

LABEL_95:
    if ((a2 & 0x40000000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_96;
  }

  v23 = TFSInfo::GetFPItem(v3);

  if (v23)
  {
    v4 |= 0x20000000000000uLL;
  }

  if ((a2 & 0x40000000000000) != 0)
  {
LABEL_96:
    if ((*(v3 + 120) & 0xFE) == 0x1E || (os_unfair_lock_lock(v3 + 27), v21 = *(v3 + 127), os_unfair_lock_unlock(v3 + 27), (v21 & 0x80) != 0))
    {
      v4 |= 0x40000000000000uLL;
    }
  }

LABEL_99:
  if ((a2 & 0x2000000000000) != 0 && (*(v3 + 120) & 0xFE) == 0x18)
  {
    v4 |= 0x2000000000000uLL;
  }

  if ((a2 & 0x1000000000000) != 0 && *(v3 + 120) == 26)
  {
    v4 |= 0x1000000000000uLL;
  }

  return v4;
}

BOOL TNode::IsInTrash(TNode *this)
{
  Path = TNode::GetPath(&cf, this, 1, 0);
  v3 = TString::KEmptyString(Path);
  fstd::optional_err<TString,int>::value_or<TString const&>(&cf, v3, &theString);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  if (CFStringGetLength(theString))
  {
    TNode::TrashPathForNode(this, &cf);
    v5 = TString::KEmptyString(v4);
    if (v18 == 1)
    {
      v16 = cf;
      cf = 0;
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    else
    {
      v7 = v5;
      v16 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v16, *v7);
    }

    if (v18 == 1)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    }

    if (CFStringGetLength(v16))
    {
      v15 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v15, theString);
      v14 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v14, v16);
      if (!CFStringGetLength(v15))
      {
        goto LABEL_16;
      }

      if (!CFStringGetLength(v14))
      {
        goto LABEL_16;
      }

      v8 = [(__CFString *)v14 lastPathComponent];
      cf = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&cf, v8);

      v9 = TString::Contains(&v15, &cf);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);

      if (v9)
      {
        if (IsInTrash(TString,TString)::$_0::operator()(&v15, &v14))
        {
          v6 = 1;
        }

        else
        {
          v11 = v15;
          v12 = [(__CFString *)v11 stringByStandardizingPath];
          cf = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&cf, v12);

          v13 = [(__CFString *)v14 stringByStandardizingPath];
          v20.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v20, v13);

          v6 = IsInTrash(TString,TString)::$_0::operator()(&cf, &v20);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
        }
      }

      else
      {
LABEL_16:
        v6 = 0;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    }

    else
    {
      v6 = 0;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16);
  }

  else
  {
    v6 = 0;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return v6;
}

void sub_1E56BB00C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v13 = va_arg(va4, const void *);
  v15 = va_arg(va4, void);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v5 - 40));

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va4);
  _Unwind_Resume(a1);
}

const void **TNode::GetPath@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v13.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  FullPOSIXPathDetails = TNode::GetFullPOSIXPathDetails(a1, &v13);
  if (!FullPOSIXPathDetails && (a2 & 1) == 0)
  {
    v6 = TPathName::TPathName(v11, &v13, TPathName::kPOSIXPathNameSeparator);
    TGlobalNodes::BootNode(&v9, v6);
    v7 = TNodeFromFINode(v9);
    TNode::DisplayName(v7, &v10);
    FullPOSIXPathDetails = TPathName::AsOldStyleFullPath(v11, &v10, &v13);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);

    std::deque<TString>::~deque[abi:ne200100](v11);
  }

  fstd::optional_err<TString,int>::optional_err(a3, &v13, &FullPOSIXPathDetails);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
}

void sub_1E56BB214(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  std::deque<TString>::~deque[abi:ne200100](va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v2 - 40));
  _Unwind_Resume(a1);
}

void fstd::optional_err<TString,int>::value_or<TString const&>(uint64_t a1@<X0>, TString **a2@<X1>, TString *a3@<X8>)
{
  if (*(a1 + 8))
  {
    a3->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a3, *a2);
  }

  else
  {
    a3->fString.fRef = *a1;
    *a1 = 0;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, &stru_1F5F42870);
  }
}

void TNode::TrashPathForNode(TNode *this@<X0>, _BYTE *a2@<X8>)
{
  TNode::GetVolumeInfo(this, &v21);
  v4 = *(v21 + 122);
  if ((*(v21 + 107) & 1) == 0 && (v4 & 1) == 0)
  {
    *a2 = 0;
    a2[8] = 0;
    goto LABEL_15;
  }

  v5 = TNode::GetFIProvider(this);
  v6 = [v5 isLocalStorageDomain];
  v7 = UseFileProviderFramework();
  v8 = v7 ^ 1 | v4;
  if ((v8 | v6))
  {
    v9 = v8 ^ 1 | v7;
  }

  else
  {
    v9 = [v5 isUsingFPFS];
  }

  if ((v9 & 1) == 0 || ![v5 supportsSyncingTrash])
  {
    TFSVolumeInfo::TrashPath(*this, 0, &theString);
    if (CFStringGetLength(theString))
    {
      std::__optional_destruct_base<TString,false>::__optional_destruct_base[abi:ne200100]<TString>(a2, &theString);
      goto LABEL_14;
    }

LABEL_13:
    *a2 = 0;
    a2[8] = 0;
    goto LABEL_14;
  }

  v10 = [v5 rootURL];
  v11 = [v10 path];
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&theString, v11);

  if (!CFStringGetLength(theString))
  {
    goto LABEL_13;
  }

  v12 = theString;
  v18.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v13 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v12);
  CFRelease(&stru_1F5F42870);
  v18.fString.fRef = MutableCopy;
  TString::Append(&v18, TPathName::kPOSIXPathNameSeparator);
  v17.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v17, @".Trash");
  fRef = v18.fString.fRef;
  v19.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v16 = CFStringCreateMutableCopy(v13, 0, fRef);
  CFRelease(&stru_1F5F42870);
  v19.fString.fRef = v16;
  TString::Append(&v19, &v17);
  std::__optional_destruct_base<TString,false>::__optional_destruct_base[abi:ne200100]<TString>(a2, &v19.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
LABEL_14:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

LABEL_15:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1E56BB514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a12);

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_1E56BB63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_destruct_base<TString,false>::__optional_destruct_base[abi:ne200100]<TString>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = *a2;
  *a2 = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  *(a1 + 8) = 1;
  return a1;
}

uint64_t TNode::UserCanWriteDataFork(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 >> 13) & 1;
}

uint64_t TFSInfo::IsResumableCopyTarget(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 127) >> 11) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

uint64_t TNode::FetchExtendedUserAccess(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  if ((TFSInfo::HasExtendedUserAccess(v4) & 1) == 0)
  {
    if (pthread_main_np())
    {
      v5 = dispatch_semaphore_create(0);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      TNodePtr::TNodePtr(&v21, this);
      TNode::GetVolumeInfo(this, &v17);
      TFSVolumeInfo::GetPropertyUpdateThread(v17, &v19);
      v6 = TString::operator NSString *(v19);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZNK5TNode23FetchExtendedUserAccessEv_block_invoke;
      block[3] = &unk_1F5F405B8;
      v14 = v4;
      v15 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = v5;
      v13 = v7;
      v16 = v21.fFINode;
      dispatch_async(v6, block);

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v8 = dispatch_time(0, 1000000);
      v9 = dispatch_semaphore_wait(v7, v8);

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      if (v9)
      {
        v10 = 0;
        if (!v3)
        {
          return v10;
        }

        goto LABEL_22;
      }
    }

    else
    {
      TFSInfo::SetExtendedUserAccess(v4);
    }
  }

  v10 = 1;
  if (v3)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v10;
}

void sub_1E56BBA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  v23 = *(v21 - 48);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::HasExtendedUserAccess(TFSInfo *this)
{
  os_unfair_lock_lock(this + 26);
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_9;
  }

  os_unfair_lock_lock(this + 27);
  *(this + 123) |= 0x100000u;
  os_unfair_lock_unlock(this + 27);
  os_unfair_lock_lock(this + 27);
  *(this + 123) |= 0x200000u;
  os_unfair_lock_unlock(this + 27);
  os_unfair_lock_lock(this + 27);
  *(this + 123) |= 0x400000u;
  os_unfair_lock_unlock(this + 27);
  os_unfair_lock_lock(this + 27);
  *(this + 123) |= 0x800000u;
  os_unfair_lock_unlock(this + 27);
  os_unfair_lock_lock(this + 27);
  v3 = *(this + 2);
  v7 = v3;
  if (v3)
  {
    CFRetain(v3);
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    v4 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if ((v4 & 0x20) != 0)
    {
      v5 = *(this + 120);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v7);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else
  {
    os_unfair_lock_unlock(this + 27);
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v7);
LABEL_8:
  os_unfair_lock_lock(this + 27);
  *(this + 123) |= 0x40000000u;
  os_unfair_lock_unlock(this + 27);
LABEL_9:
  v5 = 1;
LABEL_10:
  os_unfair_lock_unlock(this + 26);
  return v5;
}

void sub_1E56BBC24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 27);
  os_unfair_lock_unlock(v1 + 26);
  _Unwind_Resume(a1);
}

TFSVolumeInfo *TFSVolumeInfo::GetPropertyUpdateThread@<X0>(TFSVolumeInfo *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 43);
  *a2 = *(this + 42);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

id __copy_helper_block_ea8_40c34_ZTSNSt3__110shared_ptrI7TFSInfoEE56c13_ZTS8TNodePtr(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 56);
  a1[7] = result;
  return result;
}

uint64_t TFSInfo::SetExtendedUserAccess(TFSInfo *this)
{
  v2 = TFSInfo::GetFPItem(this);
  if (v2)
  {
    v3 = TFSInfo::GetFPItem(this);
    v5 = TFSInfo::FPItemPermissionRestrictions(v3, v4);

    os_unfair_lock_lock(this + 26);
    os_unfair_lock_lock(this + 27);
    v6 = *(this + 123) & 0x100000;
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    *(this + 123) = *(this + 123) & 0xFFEFFFFF | (((~v5 & 0x1004) != 0) << 20);
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    v7 = *(this + 123) & 0x200000;
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    *(this + 123) = *(this + 123) & 0xFFDFFFFF | (((~v5 & 0x5000) != 0) << 21);
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    v8 = *(this + 123) & 0x400000;
    os_unfair_lock_unlock(this + 27);
    v9 = ((~v5 & 0x1004) != 0) ^ (v6 >> 20) | ((~v5 & 0x5000) != 0) ^ (v7 >> 21) | ((v5 & 0x400000) == 0) ^ (v8 >> 22);
    os_unfair_lock_lock(this + 27);
    *(this + 123) = (*(this + 123) & 0xFFBFFFFF | v5 & 0x400000) ^ 0x400000;
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    LODWORD(v3) = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    v10 = (~v5 & 0x9000) != 0;
    os_unfair_lock_lock(this + 27);
    v11 = *(this + 123) & 0x800000;
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    v12 = (v10 & (v3 >> 5)) == 0;
    v13 = v9 | v10 & (v3 >> 5) ^ (v11 >> 23);
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x800000;
    }

    *(this + 123) = *(this + 123) & 0xFF7FFFFF | v14;
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_lock(this + 27);
    *(this + 123) |= 0x40000000u;
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_unlock(this + 26);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

void ___ZNK5TNode23FetchExtendedUserAccessEv_block_invoke(uint64_t a1)
{
  v2 = TFSInfo::SetExtendedUserAccess(*(a1 + 40));
  dispatch_semaphore_signal(*(a1 + 32));
  if (v2)
  {
    v3 = TNodeFromFINode(*(a1 + 56));

    TNode::SendNotification(v3, 2, (a1 + 56), 1970495843, 0);
  }
}

uint64_t TNode::IsContainer(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 >> 5) & 1;
}

uint64_t TFSInfo::UserCanAddFile(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 20) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

uint64_t TFSInfo::UserCanAddFolder(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 21) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

void __destroy_helper_block_ea8_40c34_ZTSNSt3__110shared_ptrI7TFSInfoEE56c13_ZTS8TNodePtr(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(uint64_t a1, void *a2)
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

uint64_t IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
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

NodeObservedOptionsCountRegistry *NodeObservedOptionsCountRegistry::AllObservedOptions(NodeObservedOptionsCountRegistry *this, FINode *a2)
{
  v2 = this;
  v6 = v2;
  if (v2)
  {
    std::mutex::lock(&NodeObservedOptionsCountRegistry::gRegistryLock);
    if (NodeObservedOptionsCountRegistry::gRegistry && (v3 = std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::find<FINode * {__strong}>(NodeObservedOptionsCountRegistry::gRegistry, &v6)) != 0 && (v4 = v3[5]) != 0)
    {
      LODWORD(v2) = 0;
      do
      {
        v2 = (*(v4 + 4) | v2);
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      v2 = 0;
    }

    std::mutex::unlock(&NodeObservedOptionsCountRegistry::gRegistryLock);
  }

  return v2;
}

void sub_1E56BC854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::mutex::unlock(&NodeObservedOptionsCountRegistry::gRegistryLock);

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::find<FINode * {__strong}>(void *a1, id *a2)
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
    if (v12 == v6)
    {
      if (std::equal_to<FINode * {__strong}>::operator()(a1, i[2], *a2))
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

void TNode::SetShouldSyncUbiquityAttributes(TNode *this, int a2)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v4);
    v7 = *(v6 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (v7)
    {
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(v4);
    if (*(v6 + 120))
    {
      return;
    }
  }

  v8 = atomic_load(this + 44);
  if (a2 != (v8 & 0x400) >> 10)
  {
    v9 = (this + 88);
    if (a2)
    {
      atomic_fetch_or(v9, 0x400u);
    }

    else
    {
      atomic_fetch_and(v9, 0xFBFFu);
    }

    if ((atomic_load_explicit(&qword_1ECFF44D0, memory_order_acquire) & 1) == 0)
    {
      TNode::SetShouldSyncUbiquityAttributes();
    }

    TNodePtr::TNodePtr(&v15, this);
    v10 = qword_1ECFF44C8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN5TNode31SetShouldSyncUbiquityAttributesEb_block_invoke;
    block[3] = &__block_descriptor_48_ea8_32c53_ZTSKZN5TNode31SetShouldSyncUbiquityAttributesEbE3__0_e5_v8__0l;
    v13 = v15.fFINode;
    v14 = a2;
    v11 = v13;
    dispatch_async(v10, block);
  }
}

void TNode::SetShouldSyncUbiquityAttributes()
{
  if (__cxa_guard_acquire(&qword_1ECFF44D0))
  {
    qword_1ECFF44C8 = dispatch_queue_create("iCloudRegistration", 0);

    __cxa_guard_release(&qword_1ECFF44D0);
  }
}

id __copy_helper_block_ea8_32c53_ZTSKZN5TNode31SetShouldSyncUbiquityAttributesEbE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t **std::__hash_table<FINode * {__strong},std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,std::allocator<FINode * {__strong}>>::__emplace_unique_key_args<FINode * {__strong},FINode * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
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

  if ((std::equal_to<FINode * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E56BCE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZN5TNode31SetShouldSyncUbiquityAttributesEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = TNodeFromFINode(*(a1 + 32));
  if (v1 == 1)
  {

    TNode::RegisterForUbiquityAttributes(v2);
  }

  else
  {
    v3 = *(v2 + 56);
    if (v3)
    {

      TChildrenList::ClearCollectionStatusObserver(v3);
    }
  }
}

void TNode::RegisterForUbiquityAttributes(TNode *this)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    os_unfair_lock_unlock(v2);
    if (*(v4 + 120))
    {
      goto LABEL_25;
    }
  }

  if (*(this + 7))
  {
    v6 = UseFileProviderFramework();
    if (v6)
    {
      v7 = TNode::InfoLock(v6);
      os_unfair_lock_lock(v7);
      v9 = *(this + 2);
      v8 = *(this + 3);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v7);
      v10 = TFSInfo::GetFPItem(v9);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (!v10)
      {
        goto LABEL_13;
      }

      TNodePtr::TNodePtr(&buf, this);
      v11 = v10;
      *(&buf + 1) = v11;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(&v20, &buf, v25, 1uLL);
      TNode::AttachFPItemsMetadata(&v20, 1, 1);
      v23 = &v20;
      std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v23);

      if (([(FPItem *)v11 isPlaceholder]& 1) == 0)
      {
        v14 = TNode::FPItemsCollection(this, v11);
      }

      else
      {
LABEL_13:

        v12 = LogObj(4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          TNode::GetPath(&v20, this, 1, 0);
          v13 = SanitizedPath(&v20);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v13;
          _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_INFO, "Attempting to observe fpitem collection via URL %{public}@", &buf, 0xCu);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20);
        }

        v14 = TNode::FPItemsCollectionFromURL(this);
      }

      if (v14)
      {
        v15 = *(this + 7);
        TNodePtr::TNodePtr(&buf, this);
        TNode::GetVolumeInfo(this, &v20);
        v16 = TFSVolumeInfo::GetSynchingGCDQueue(v20);
        TChildrenList::StartCollectionStatusObserver(v15, v14, &buf, v16, 0);

        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }

      else
      {
        v17 = LogObj(4);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          TNode::GetPath(&v20, this, 1, 0);
          v18 = SanitizedPath(&v20);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_ERROR, "No collection found for node %{public}@", &buf, 0xCu);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20);
        }
      }
    }
  }

LABEL_25:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E56BD1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  _Unwind_Resume(a1);
}

id TNode::FPItemsCollection(TNode *this, FPItem *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TNode::VirtualType(this);
  if (v4 == 28)
  {
    v5 = TNode::GetFIProvider(this);
    v6 = [v5 domain];

    if (v6)
    {
      v7 = FPItemManagerInstance();
      v8 = [v7 rootCollectionForProviderDomain:v6];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_27;
  }

  v9 = FPItemManagerInstance();
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

  v12 = TNode::InfoLock(v11);
  os_unfair_lock_lock(v12);
  v14 = *(this + 2);
  v13 = *(this + 3);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v12);
  TFSInfo::Name(v14, buf);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v15 = operator==(buf, @".Trash");
  if ((v15 & 1) == 0)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
    goto LABEL_26;
  }

  v16 = TNode::ParentLock(v15);
  os_unfair_lock_lock(v16);
  TNodePtr::TNodePtr(&v38, *(this + 6));
  os_unfair_lock_unlock(v16);
  LOBYTE(v16) = TNodeFromFINode(v38.fFINode) == 0;

  v17 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  if (v16)
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  v18 = TNode::ParentLock(v17);
  os_unfair_lock_lock(v18);
  TNodePtr::TNodePtr(buf, *(this + 6));
  os_unfair_lock_unlock(v18);
  v19 = TNodeFromFINode(*buf);
  v20 = TNode::InfoLock(v19);
  os_unfair_lock_lock(v20);
  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v20);
  v23 = TFSInfo::GetFPItem(v22);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v23 && ([v23 itemIdentifier], v24 = objc_claimAutoreleasedReturnValue(), NS_FileProviderRootContainerItemIdentifier(), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqualToString:", v25), v25, v24, v26))
  {
    v27 = [v23 fileURL];
    v28 = FIProviderDomainForURL(v27);
    v29 = [v28 domain];

    if (!v29 || (FPItemManagerInstance(), v30 = objc_claimAutoreleasedReturnValue(), [v30 trashCollectionForProviderDomain:v29], v8 = objc_claimAutoreleasedReturnValue(), v30, !v8))
    {
      v31 = LogObj(4);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v23 fileURL];
        v33 = SanitizedURL(v32);
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_impl(&dword_1E5674000, v31, OS_LOG_TYPE_DEFAULT, "Could not create trash collection for %{public}@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_27:
  if (v3 && !v8)
  {
    v34 = FPItemManagerInstance();
    v8 = [v34 collectionForFolderItem:v3];
  }

  [v8 setShowHiddenFiles:1];
  if (!v8)
  {
    v35 = LogObj(4);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v4;
      *&buf[8] = 2114;
      *&buf[10] = v3;
      _os_log_impl(&dword_1E5674000, v35, OS_LOG_TYPE_DEFAULT, "Could not create collection for %d (%{public}@)", buf, 0x12u);
    }
  }

  v36 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(uint64_t a1, void *a2)
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

uint64_t IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
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

void TChildrenList::StartCollectionStatusObserver(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v14 = a2;
  v9 = a4;
  v10 = TChildrenList::InternalLock(v9);
  os_unfair_lock_lock(v10);
  v11 = *(a1 + 104);
  if (!a5)
  {
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = *(a1 + 104);
      *(a1 + 104) = v12;

LABEL_8:
      [*(a1 + 104) startObserving:v14 forParent:a3 withQueue:v9];
      goto LABEL_9;
    }

LABEL_5:
    [v11 stopObserving];
    if (a5)
    {
      [*(a1 + 104) resetError];
    }

    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_9:
  os_unfair_lock_unlock(v10);
}

int *TChildrenList::InternalLock(TChildrenList *this)
{
  {
    TChildrenList::InternalLock();
  }

  return &TChildrenList::InternalLock(void)::sChildrenListsLock;
}

void TChildrenList::InternalLock()
{
  {
    TChildrenList::InternalLock(void)::sChildrenListsLock = 0;
  }
}

void std::vector<NSURL * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

id objc_cast<FPExtensionCollection,FPItemCollection * {__strong}>(void *a1)
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

uint64_t TCachedAppLibraryCollections::Singleton(TCachedAppLibraryCollections *this)
{
  {
    operator new();
  }

  return TCachedAppLibraryCollections::Singleton(void)::sCollections;
}

id TCachedAppLibraryCollections::CachedCollection(TCachedAppLibraryCollections *this, const TString *a2, int a3)
{
  std::mutex::lock((this + 48));
  if (!CFStringGetLength(a2->fString.fRef))
  {
    goto LABEL_13;
  }

  if (IsMainICloudDriveDomainID(a2))
  {
    v6 = 0;
  }

  else
  {
    if (!IsDataSeparatedDomainID(a2))
    {
      goto LABEL_13;
    }

    v6 = 24;
  }

  v7 = this + v6;
  if (*(this + v6 + 16) == 1)
  {
    if (operator==(&a2->fString.fRef, *v7))
    {
      v8 = *(v7 + 1);
      if (v8)
      {
        v9 = v8;
        goto LABEL_14;
      }
    }
  }

  std::__optional_destruct_base<std::pair<NSString * {__strong},FPItemCollection * {__strong}>,false>::reset[abi:ne200100](v7);
  if (a3)
  {
    v10 = [objc_opt_class() defaultManager];
    v11 = a2->fString.fRef;
    v12 = [v10 appLibraryCollectionForProviderDomainID:v11];

    if (v12)
    {
      v14 = a2->fString.fRef;
      v9 = v12;
      v15 = v9;
      std::optional<std::pair<NSString * {__strong},FPItemCollection * {__strong}>>::operator=[abi:ne200100]<std::pair<NSString * {__strong},FPItemCollection * {__strong}>,void>(v7, &v14);

      goto LABEL_14;
    }
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  std::mutex::unlock((this + 48));

  return v9;
}

BOOL IsMainICloudDriveDomainID(const TString *this)
{
  {
    operator"" _t("com.apple.CloudDocs.iCloudDriveFileProvider/", 44, &IsMainICloudDriveDomainID(TString const&)::kMainICloudDriveProviderID);
  }

  return TString::BeginsWith(this, &IsMainICloudDriveDomainID(TString const&)::kMainICloudDriveProviderID);
}

void std::__optional_destruct_base<std::pair<NSString * {__strong},FPItemCollection * {__strong}>,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {

    *(a1 + 16) = 0;
  }
}

ISignpostInterval *AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [79],DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const*>(ISignpostInterval *a1, void *a2, __CFString *a3, void **a4, void **a5, void **a6, char **a7)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v14 = LogObj(4);
  TString::TString(v19, "Gathering");
  ISignpostInterval::ISignpostInterval(a1, v14);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19[0].fString.fRef);

  *(a1 + 14) = ISignpostInterval::MakeSignpostID(a1, a2);
  std::mutex::lock(a1);
  v19[0].fString.fRef = a3;
  v19[1].fString.fRef = strlen(a3);
  FormatDetails<DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const*>(v19, a4, a5, a6, a7, &__p);
  v15 = *(a1 + 14);
  v19[0].fString.fRef = &unk_1F5F41548;
  v19[1].fString.fRef = a1;
  v19[2].fString.fRef = &__p;
  v19[3].fString.fRef = v19;
  ISignpostInterval::BeginPriv(a1, v15, v19);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(a1);
  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E56BE0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15);
  ISignpostInterval::~ISignpostInterval(v15);
  _Unwind_Resume(a1);
}

void FormatDetails<DSFPItemStatusObserver * {__strong},FPItemCollection * {__strong},NSString * {__strong},char const*>(__int128 *a1@<X0>, void **a2@<X1>, void **a3@<X2>, void **a4@<X3>, char **a5@<X4>, std::string *a6@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v16 = *a1;
  do
  {
    v11 = FormatOneDetails<DSFPItemStatusObserver * {__strong}>(&v16, &__p, a2);
    if (v11)
    {
      *(&a6->__r_.__value_.__s + 23) = 0;
      a6->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v11 == 0x700000000);
  FormatDetails<FPItemCollection * {__strong},NSString * {__strong},char const*>(&v16, a3, a4, a5, &v15);
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

  v14 = std::string::insert(&v15, 0, p_p, size);
  *a6 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E56BE234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

unint64_t FormatOneDetails<DSFPItemStatusObserver * {__strong}>(const std::string::value_type **a1, std::string *this, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_93;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_90;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            HexDescriptionPrinterGlue<DSFPItemStatusObserver * {__strong},void>::dump(&__dst, a3, &__p);
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

            goto LABEL_69;
          }

LABEL_94:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_47;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

        else
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

LABEL_69:
        std::string::append(this, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_90:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_93:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v25 = __dst.__r_.__value_.__r.__words[0];
LABEL_89:
        operator delete(v25);
        goto LABEL_90;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_94;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        v33.__r_.__value_.__r.__words[0] = v23;
        v33.__r_.__value_.__l.__size_ = v22;
        FormatDetails<DSFPItemStatusObserver * {__strong}>(&v33, &__dst);
        v24 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v24) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &v33);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v33;
        }

        else
        {
          v26 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v33.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v26, v27);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_47:
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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

          goto LABEL_69;
        }

        DeEscapeFormatFragment(&v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }
  }

  return v12 | v9;
}

void sub_1E56BE770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void FormatDetails<FPItemCollection * {__strong},NSString * {__strong},char const*>(__int128 *a1@<X0>, void **a2@<X1>, void **a3@<X2>, char **a4@<X3>, std::string *a5@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v14 = *a1;
  do
  {
    v9 = FormatOneDetails<FPItemCollection * {__strong}>(&v14, &__p, a2);
    if (v9)
    {
      *(&a5->__r_.__value_.__s + 23) = 0;
      a5->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v9 == 0x700000000);
  FormatDetails<NSString * {__strong},char const*>(&v14, a3, a4, &v13);
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

  v12 = std::string::insert(&v13, 0, p_p, size);
  *a5 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E56BE914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

unint64_t FormatOneDetails<FPItemCollection * {__strong}>(const std::string::value_type **a1, std::string *this, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_93;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_90;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            HexDescriptionPrinterGlue<FPItemCollection * {__strong},void>::dump(&__dst, a3, &__p);
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

            goto LABEL_69;
          }

LABEL_94:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_47;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

        else
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

LABEL_69:
        std::string::append(this, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_90:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_93:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v25 = __dst.__r_.__value_.__r.__words[0];
LABEL_89:
        operator delete(v25);
        goto LABEL_90;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_94;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        v33.__r_.__value_.__r.__words[0] = v23;
        v33.__r_.__value_.__l.__size_ = v22;
        FormatDetails<FPItemCollection * {__strong}>(&v33, &__dst);
        v24 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v24) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &v33);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v33;
        }

        else
        {
          v26 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v33.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v26, v27);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_47:
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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

          goto LABEL_69;
        }

        DeEscapeFormatFragment(&v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }
  }

  return v12 | v9;
}

void sub_1E56BEE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::pair<NSString * {__strong},FPItemCollection * {__strong}>>::operator=[abi:ne200100]<std::pair<NSString * {__strong},FPItemCollection * {__strong}>,void>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  *a2 = 0;
  if (v4 == 1)
  {
    v6 = *a1;
    *a1 = v5;

    v7 = a2[1];
    a2[1] = 0;
    v8 = *(a1 + 8);
    *(a1 + 8) = v7;
  }

  else
  {
    v9 = a2[1];
    a2[1] = 0;
    *a1 = v5;
    *(a1 + 8) = v9;
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t TNode::FSNotificationsSupported(TNode *this)
{
  TNode::GetVolumeInfo(this, &v3);
  if ((v3[107] & 1) != 0 || (v3[125] & 1) == 0)
  {
    v1 = v3[128];
  }

  else
  {
    v1 = 1;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1 & (TNode::gKQueueRegistrationCount < 128);
}

const void **TProgressMap::AddSubscriberForExternalProgress(const TNodePtr *this, const TNodePtr *a2)
{
  result = TNodeFromFINode(this->fFINode);
  if (result)
  {
    ProgressPathForNode(this, &theString);
    if (CFStringGetLength(theString))
    {
      v4 = TNodeFromFINode(this->fFINode);
      TNode::TestAndSetRegisteredForExternalProgress(v4, 1);
      TSystemNotificationTask::StartObservingDirectory(&theString, 0);
      v5 = objc_autoreleasePoolPush();
      v6 = MEMORY[0x1E696AE38];
      v7 = TNodeFromFINode(this->fFINode);
      v8 = TNode::CopyURL(v7);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3321888768;
      v11[2] = ___ZN12TProgressMap32AddSubscriberForExternalProgressERK8TNodePtr_block_invoke;
      v11[3] = &__block_descriptor_33_ea8_32c72_ZTSKZN12TProgressMap32AddSubscriberForExternalProgressERK8TNodePtrE3__0_e26____v___16__0__NSProgress_8l;
      v9 = [v6 addSubscriberForFileURL:v8 withPublishingHandler:v11];

      if (v9)
      {
        v10 = TNodeFromFINode(this->fFINode);
        TChildrenList::SetNSProgressSubscriber(*(v10 + 56), v9);
      }

      objc_autoreleasePoolPop(v5);
    }

    return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  }

  return result;
}

void sub_1E56BF0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void ProgressPathForNode(const TNodePtr *a1@<X0>, TString *a2@<X8>)
{
  if (TNodeFromFINode(a1->fFINode))
  {
    v4 = TNodeFromFINode(a1->fFINode);
    TNode::GetPath(v4, 1, v6);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, v6[0]);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v6);
  }

  else
  {
    v5 = TString::KEmptyString(0);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *v5);
  }
}

void FormatDetails<NSString * {__strong},char const*>(__int128 *a1@<X0>, void **a2@<X1>, char **a3@<X2>, std::string *a4@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v12 = *a1;
  do
  {
    v7 = FormatOneDetails<NSString * {__strong}>(&v12, &__p, a2);
    if (v7)
    {
      *(&a4->__r_.__value_.__s + 23) = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v7 == 0x700000000);
  FormatDetails<char const*>(&v12, a3, &v11);
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

  v10 = std::string::insert(&v11, 0, p_p, size);
  *a4 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E56BF328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

const void **TSystemNotificationTask::StartObservingDirectory(TString **this, const TString *a2)
{
  v2 = a2;
  TString::TString(&v7, "/");
  if (TString::EndsWith(this, &v7))
  {
    v8.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v8, *this);
  }

  else
  {
    v4 = *this;
    v8.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v4);
    CFRelease(&stru_1F5F42870);
    v8.fString.fRef = MutableCopy;
    TString::Append(&v8, "/");
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  std::mutex::lock(&gBusyFoldersLock);
  TBusyFolders::StartObservingDirectory(TSystemNotificationTask::gBusyFolders, &v8, v2);
  std::mutex::unlock(&gBusyFoldersLock);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
}

void sub_1E56BF458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  _Unwind_Resume(a1);
}

void FormatDetails<char const*>(__int128 *a1@<X0>, char **a2@<X1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v10 = *a1;
  do
  {
    v5 = FormatOneDetails<char const*>(&v10, &__p, a2);
    if (v5)
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v5 == 0x700000000);
  FormatDetails(&v10, &v9);
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

  v8 = std::string::insert(&v9, 0, p_p, size);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E56BF580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

unint64_t FormatOneDetails<char const*>(const std::string::value_type **a1, std::string *this, char **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_93;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_90;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            HexDescriptionPrinterGlue<char const*,void>::dump(&__dst, a3, &__p);
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

            goto LABEL_69;
          }

LABEL_94:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_47;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          std::string::basic_string[abi:ne200100]<0>(&__dst, *a3);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__dst, *a3);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

LABEL_69:
        std::string::append(this, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_90:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_93:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v25 = __dst.__r_.__value_.__r.__words[0];
LABEL_89:
        operator delete(v25);
        goto LABEL_90;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_94;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        v33.__r_.__value_.__r.__words[0] = v23;
        v33.__r_.__value_.__l.__size_ = v22;
        FormatDetails<char const*>(&__dst, &v33, a3);
        v24 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v24) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &v33);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v33;
        }

        else
        {
          v26 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v33.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v26, v27);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_47:
          std::string::basic_string[abi:ne200100]<0>(&__dst, *a3);
          RedactForPrivacy(&v36, &__dst, &__p);
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

          goto LABEL_69;
        }

        DeEscapeFormatFragment(&v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }
  }

  return v12 | v9;
}

void sub_1E56BFABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

const void **TBusyFolders::StartObservingDirectory(TBusyFolders *this, const TString *a2, char a3)
{
  v6 = gSystemNotificationStreamGCDQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN12TBusyFolders23StartObservingDirectoryERK7TStringb_block_invoke;
  block[3] = &__block_descriptor_56_ea8_32c63_ZTSKZN12TBusyFolders23StartObservingDirectoryERK7TStringbE3__0_e5_v8__0l;
  v8 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v8, a2->fString.fRef);
  v9 = a3;
  block[4] = this;
  v11.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v11, v8);
  v12 = v9;
  dispatch_async(v6, block);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8);

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
}

void sub_1E56BFC70(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v2 + 40));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v3 + 8));

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c63_ZTSKZN12TBusyFolders23StartObservingDirectoryERK7TStringbE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 40) = &stru_1F5F42870;
  *(a1 + 32) = v4;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 40), *(a2 + 40));
  *(a1 + 48) = *(a2 + 48);
}

__CFURL *TNode::CopyURL(TNode *this)
{
  v2 = 0;
  TNode::CopyURL(this, &v2);
  return v2;
}

void ___ZN12TBusyFolders23StartObservingDirectoryERK7TStringb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock(&gBusyFoldersLock);
  v3 = v2 + 2;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (*(v3 + 36) == 1)
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    if (CheckInterestedInPath((a1 + 40), v3 + 2, v4 & 1))
    {
      v5 = *(v3 + 8);
      *(v3 + 8) = v5 + 1;
      if (!v5)
      {
        cf = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&cf, v3[2]);
        v6 = cf;
        if (cf)
        {
          v7 = CFRetain(cf);
          v6 = static_cf_cast<__CFString const*,void const*>(v7);
          if (v6)
          {
            v8 = CFAutorelease(v6);
            v6 = static_cf_cast<__CFString const*,void const*>(v8);
          }
        }

        FSEventStreamForPath = CreateFSEventStreamForPath(v6, TSystemNotificationTask::HandleBusyFoldersChanges, 0);
        v10 = std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::find<TString>(v2, &cf);
        if (v10 && *(v10 + 8) >= 1 && !v10[3])
        {
          v10[3] = FSEventStreamForPath;
        }

        else
        {
          CloseFSEventStream(FSEventStreamForPath);
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      }

      break;
    }
  }

  std::mutex::unlock(&gBusyFoldersLock);
}

void sub_1E56BFF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  std::mutex::unlock(&gBusyFoldersLock);
  _Unwind_Resume(a1);
}

BOOL CheckInterestedInPath(TString *a1, TString *a2, int a3)
{
  result = TString::BeginsWith(a1, a2);
  if ((result & 1) == 0 && a3)
  {

    return TString::BeginsWith(a2, a1);
  }

  return result;
}

id TChildrenList::GetCollectionStatusObserver(TChildrenList *this)
{
  v2 = TChildrenList::InternalLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 13);
  os_unfair_lock_unlock(v2);

  return v3;
}

void sub_1E56C02F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  TNode::StPopulating::~StPopulating(&a10);

  _Unwind_Resume(a1);
}

void sub_1E56C0430(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id as_ns<TString>(id *a1)
{
  v1 = *a1;

  return v1;
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[29]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
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
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E56C0598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TChildrenList::SetNSProgressSubscriber(TChildrenList *this, objc_object *a2)
{
  v3 = a2;
  std::recursive_mutex::lock(this);
  v4 = *(this + 21);
  *(this + 21) = v3;

  std::recursive_mutex::unlock(this);
}

uint64_t TFSInfo::Fetch(TFSInfo *this, TFSInfo **a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  if ((a3 & 2) != 0)
  {
    location = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TFSInfo::GetKindWithoutPlatform(this, &location, 0, &v21);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&location);
  }

  if ((v3 & 0x200) != 0)
  {
    location = 0;
    TFSInfo::GetUTType(this, &location, 0, &v21);
  }

  if ((v3 & 4) != 0)
  {
    location = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TFSInfo::GetShortVersion(this, &location);
    TFSInfo::GetLongVersion(this, &location);
    TFSInfo::GetSystemVersion(this, &location);
    TFSInfo::GetCopyrightString(this, &location);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&location);
  }

  if ((v3 & 0x20) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    TFSInfo::SetExtendedUserAccess(this);
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  location = TFSInfo::CopyPermissions(this);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&location);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v3 & 0x80) != 0)
  {
LABEL_11:
    location = TFSInfo::CopyTagsAndAttributes(this, 1);
    TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&location);
  }

LABEL_12:
  v6 = UseFileProviderFramework();
  if ((v3 & 0x800) == 0 || !v6)
  {
    goto LABEL_35;
  }

  v9 = TFSInfo::GetFPItem(*a2);
  if (v9)
  {
    v10 = TFSInfo::GetFPItem(this);

    if (!v10)
    {
      TFSInfo::CopyFPItemIfNeeded(this, a2);
    }
  }

  v11 = *a2;
  os_unfair_lock_lock(*a2 + 26);
  v12 = *(v11 + 10);
  if (v12)
  {
    os_unfair_lock_lock(v12 + 18);
    v13 = v12[76];
    os_unfair_lock_unlock(v12 + 18);
    if (v13 == 1)
    {
      v12 = *(v12 + 3);
    }

    else
    {
      v12 = 0;
    }
  }

  os_unfair_lock_unlock(v11 + 26);
  if (([v12 disconnectionState] & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    goto LABEL_32;
  }

  v14 = TFSInfo::GetFPItem(this);
  if (v14)
  {
    goto LABEL_31;
  }

  os_unfair_lock_lock(this + 26);
  v14 = *(this + 10);
  if (v14)
  {
    os_unfair_lock_lock(v14 + 18);
    v15 = v14[76];
    os_unfair_lock_unlock(v14 + 18);
    if (v15 == 1)
    {
      v14 = *(v14 + 3);
    }

    else
    {
      v14 = 0;
    }
  }

  os_unfair_lock_unlock(this + 26);
  if (v14)
  {
LABEL_31:

    goto LABEL_32;
  }

  if ([v12 asyncResultAvailable])
  {
LABEL_32:
    if ([v12 asyncResultAvailable])
    {
      TFSInfo::UpdateFileProvider(this, 0);
    }

    goto LABEL_34;
  }

  TFSInfo::UpdateFileProvider(this, v12);
LABEL_34:

LABEL_35:
  if ((v3 & 0x900) != 0)
  {
    TFSInfo::FetchBladeRunnerProperties(this, v7, v8);
  }

  if (v3)
  {
    v16 = TFSInfo::FetchISIcon(this);
    v17 = [v16 symbol];
    os_unfair_lock_lock(this + 26);
    if (v17)
    {
      Overflow = TFSInfo::GetOrCreateOverflow(this);
      TFSInfoOverflow::SetIFSymbol(Overflow, v17);
    }

    else
    {
      v19 = *(this + 10);
      if (v19)
      {
        TFSInfoOverflow::SetIFSymbol(v19, 0);
      }
    }

    os_unfair_lock_unlock(this + 26);
  }

  return 0;
}

void TFSInfo::CopyFPItemIfNeeded(uint64_t a1, TFSInfo **a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (UseFileProviderFramework())
  {
    v4 = TFSInfo::GetFPItem(*a2);
    if (!v4)
    {
LABEL_5:

      goto LABEL_6;
    }

    Inode = TFSInfo::GetInode(a1);
    if (*(a1 + 120))
    {
LABEL_4:
      TFSInfo::SetFPItem(a1, v4);
      goto LABEL_5;
    }

    v7 = Inode;
    v8 = TFSInfo::GetFPItem(*a2);
    v9 = [v8 fileID];
    if (v9)
    {

      if (v9 == v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = [v8 providerDomainID];
      *v16 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(v16, v10);

      v11 = IsLocalStorageDomainID(v16);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v16);
      if (v11)
      {

        goto LABEL_4;
      }

      v12 = v10;
      *v16 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(v16, v12);

      v13 = IsExternalDeviceDomainID(v16);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v16);

      if (v13)
      {
        goto LABEL_4;
      }
    }

    v14 = LogObj(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v4 fileID];
      *v16 = 134218240;
      *&v16[4] = v15;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_INFO, "FPItem fileID (%llu) and current inode(%llu) differ, will refetch item.", v16, 0x16u);
    }

    goto LABEL_5;
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E56C0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetInode(TFSInfo *this)
{
  number = 0;
  valuePtr = 0;
  v1 = *(this + 1);
  if (v1 && CFURLCopyResourcePropertyForKey(v1, *MEMORY[0x1E695EA88], &number, 0) && number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    v2 = valuePtr;
  }

  else
  {
    v2 = 0;
  }

  TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&number);
  return v2;
}

uint64_t NSObjectsAreEqual(NSObject *a1, NSObject *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [v3 isEqual:v4];
  }

  else
  {
    v6 = v4 == 0;
  }

  return v6;
}

os_unfair_lock_s *TFSInfo::CopyICloudSharePerson(TFSInfo *this)
{
  os_unfair_lock_lock(this + 26);
  v2 = *(this + 10);
  if (v2)
  {
    os_unfair_lock_lock(v2 + 18);
    os_unfair_lock_opaque_low = LOBYTE(v2[19]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v2 + 18);
    if (os_unfair_lock_opaque_low == 1)
    {
      v2 = *&v2->_os_unfair_lock_opaque;
    }

    else
    {
      v2 = 0;
    }
  }

  os_unfair_lock_unlock(this + 26);

  return v2;
}

uint64_t TFSInfo::PersonEqual(TFSInfo *this, NSPersonNameComponents *a2, NSPersonNameComponents *a3)
{
  v4 = this;
  v5 = a2;
  v6 = [(TFSInfo *)v4 givenName];
  v7 = [(NSPersonNameComponents *)v5 givenName];
  if (IsEqual(v6, v7))
  {
    v8 = [(TFSInfo *)v4 familyName];
    v9 = [(NSPersonNameComponents *)v5 familyName];
    if (IsEqual(v8, v9))
    {
      v10 = [(TFSInfo *)v4 middleName];
      v11 = [(NSPersonNameComponents *)v5 middleName];
      if (IsEqual(v10, v11))
      {
        v19 = [(TFSInfo *)v4 namePrefix];
        v18 = [(NSPersonNameComponents *)v5 namePrefix];
        if (IsEqual(v19, v18))
        {
          v17 = [(TFSInfo *)v4 nameSuffix];
          v16 = [(NSPersonNameComponents *)v5 nameSuffix];
          if (IsEqual(v17, v16))
          {
            v15 = [(TFSInfo *)v4 nickname];
            v14 = [(NSPersonNameComponents *)v5 nickname];
            v12 = IsEqual(v15, v14);
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

char *CopyACLToText(__CFFileSecurity *a1)
{
  if (!a1)
  {
    return 0;
  }

  accessControlList = 0;
  if (CFFileSecurityCopyAccessControlList(a1, &accessControlList))
  {
    v3 = 0;
    v1 = acl_to_text(accessControlList, &v3);
  }

  else
  {
    v1 = 0;
  }

  TACLRef<_acl *>::~TACLRef(&accessControlList);
  return v1;
}

void sub_1E56C10AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TACLRef<_acl *>::~TACLRef(va);
  _Unwind_Resume(a1);
}

void **TACLRef<_acl *>::~TACLRef(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    acl_free(v2);
    *a1 = 0;
  }

  return a1;
}

void **TACLRef<char *>::~TACLRef(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    acl_free(v2);
    *a1 = 0;
  }

  return a1;
}

void TFSInfoOverflow::~TFSInfoOverflow(TFSInfoOverflow *this)
{
  v2 = *(this + 76);
  if (v2 == 2)
  {
    goto LABEL_7;
  }

  if (v2 == 1)
  {

LABEL_7:
    goto LABEL_8;
  }

  if (!*(this + 76))
  {
    v3 = *(this + 1);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

LABEL_8:

  std::unique_ptr<TFileDescriptor>::reset[abi:ne200100](this + 7, 0);
  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    MEMORY[0x1E692CD30](v4, 0x1000C40E0EAB150);
  }
}

TFileDescriptor *std::unique_ptr<TFileDescriptor>::reset[abi:ne200100](TFileDescriptor **a1, TFileDescriptor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TFileDescriptor::~TFileDescriptor(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

uint64_t TFSInfo::IterationInfoPropertyKeys(TFSInfo *this)
{
  if (TFSInfo::IterationInfoPropertyKeys(void)::once != -1)
  {
    TFSInfo::IterationInfoPropertyKeys();
  }

  return TFSInfo::IterationInfoPropertyKeys(void)::basicKeys;
}

uint64_t TFSIterator::TFSIterator(uint64_t a1, CFTypeRef cf, CFTypeRef a3, int a4, char a5)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 8) = 0;
  *(a1 + 24) = a3;
  *(a1 + 16) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  *(a1 + 37) = 1;
  v9 = [*a1 path];
  cf1 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf1, v9);

  {
    operator"" _t("/private/var/mobile/Library/LiveFiles", 37, &TFSIterator::TFSIterator(__CFURL const*,__CFArray const*,LSProperties,BOOL)::iosExternal);
  }

  {
    TString::operator+(&TFSIterator::TFSIterator(__CFURL const*,__CFArray const*,LSProperties,BOOL)::iosExternal, "/", &TFSIterator::TFSIterator(__CFURL const*,__CFArray const*,LSProperties,BOOL)::iosExternalPrefix);
  }

  if (CFEqual(cf1, TFSIterator::TFSIterator(__CFURL const*,__CFArray const*,LSProperties,BOOL)::iosExternal))
  {
    v10 = 0;
  }

  else
  {
    v10 = !TString::BeginsWith(&cf1, &TFSIterator::TFSIterator(__CFURL const*,__CFArray const*,LSProperties,BOOL)::iosExternalPrefix);
  }

  *(a1 + 37) = v10;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
  return a1;
}

void sub_1E56C13F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(v4);
  TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(v3);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v2);
  _Unwind_Resume(a1);
}

TString *TString::operator+@<X0>(const __CFString **a1@<X0>, const __CFString *a2@<X1>, TString *a3@<X8>)
{
  v5 = *a1;
  a3->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5);
  CFRelease(&stru_1F5F42870);
  a3->fString.fRef = MutableCopy;
  return TString::Append(a3, a2);
}

uint64_t TFSIterator::Next(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    while (1)
    {
      result = TFSIterator::NextRaw(a1, a2);
      if (!result)
      {
        v5 = *a2;
        os_unfair_lock_lock((*a2 + 108));
        v6 = *(v5 + 123);
        os_unfair_lock_unlock((v5 + 108));
        if ((v6 & 0x20) != 0)
        {
          return 0;
        }

        os_unfair_lock_lock((v5 + 108));
        v7 = *(v5 + 123);
        os_unfair_lock_unlock((v5 + 108));
        if ((v7 & 0x400) != 0)
        {
          return 0;
        }

        os_unfair_lock_lock((v5 + 108));
        v8 = *(v5 + 123);
        os_unfair_lock_unlock((v5 + 108));
        if ((v8 & 0x40) != 0)
        {
          return 0;
        }

        result = 4294959234;
      }

      if (result != -8062)
      {
        return result;
      }
    }
  }

  return TFSIterator::First(a1, a2);
}

uint64_t TFSIterator::First(uint64_t a1, uint64_t a2)
{
  TFSIterator::Reset(a1);
  if (!*(a1 + 8))
  {
    return 4294965879;
  }

  return TFSIterator::Next(a1, a2);
}

const void **TFSIterator::Reset(const void **this)
{
  if (*this)
  {
    v1 = this;
    v2 = MEMORY[0x1E692C4F0](0, *this, this[2], this[3]);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v1 + 1, v2);
    return TAutoRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TAutoRef(&v2);
  }

  return this;
}

void sub_1E56C1694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

const void **TAutoRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t TFSIterator::NextRaw(uint64_t a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v4 = MEMORY[0x1E692C500](*(a1 + 8), &v18, &v17);
  if (v4 == 1)
  {
    v10 = *(a1 + 37);
    if (IsAppInbox(v18))
    {
      goto LABEL_14;
    }

    v11 = TFSInfo::initialize(*a2, v18, *(a1 + 32), 1, v10, 1, 0);
    if (v11)
    {
      if (*(a1 + 36) != 1 || TCFURLInfo::VolumeIsAll(v18, 0x10000))
      {
        goto LABEL_14;
      }

      v7 = LogObj(4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = TString::operator NSString *(&v18);
        v13 = SanitizedURL(v12);
        *buf = 138543618;
        v20 = v13;
        v21 = 1024;
        v22 = v11;
        _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_INFO, "TFSIterator initialize failed, skipping %{public}@, status = %d", buf, 0x12u);
      }

      goto LABEL_13;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (v4 != 3)
  {
    v14 = 4294965879;
    goto LABEL_17;
  }

  v6 = TCFURLInfo::TranslateCFError(v17, v5);
  if (!v6)
  {
    goto LABEL_16;
  }

  if (*(a1 + 36) == 1)
  {
    v7 = LogObj(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v18;
      v9 = SanitizedURL(v8);
      *buf = 138543618;
      v20 = v9;
      v21 = 1024;
      v22 = v6;
      _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_INFO, "kCFURLEnumeratorError for %{public}@, status = %d", buf, 0x12u);
    }

LABEL_13:
  }

LABEL_14:
  v14 = 4294959234;
LABEL_17:
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&v17);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1E56C3C78(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1E56C3FF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c54_ZTSKZ41__FILocalStorageNode_fetchFPItemIfNeeded_E3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_1E56C4658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = FILocalAppContainerCollection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E56C4850(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E56C4A08(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1E56C54CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, char a43)
{
  TNodeEventPtr::~TNodeEventPtr((v45 - 240));

  std::mutex::unlock((v43 + a11));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&STACK[0x238]);

  STACK[0x238] = &a26;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x238]);

  TNode::StPopulating::~StPopulating(&a31);
  StDefer<[FILocalAppContainerCollection populate]::$_1>::~StDefer(&a38);

  a38 = &a43;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

void sub_1E56C58F0(_Unwind_Exception *a1)
{
  std::mutex::unlock(&v1[v2]);

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c75_ZTSKZ62__FILocalAppContainerCollection_synchronizeWithOptions_async__E3__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void sub_1E56C5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = FILocalAppContainerNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E56C607C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void sub_1E56C6304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, id);
  v8 = va_arg(va1, id);
  v9 = va_arg(va1, void);
  TNodeEventPtr::~TNodeEventPtr(va);
  TNodeEventPtr::~TNodeEventPtr((v4 + 8));

  TNodeEventPtr::~TNodeEventPtr(va1);
  _Unwind_Resume(a1);
}

void sub_1E56C6470(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E56C6858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

id objc_cast<FILocalAppContainerNode,FIDSNode * {__strong}>(void *a1)
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

id objc_cast<FINode_ICloudAppLibrary,FIDSNode * {__strong}>(void *a1)
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

void sub_1E56C6AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

uint64_t IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
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

uint64_t IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator(uint64_t a1, void *a2)
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

uint64_t IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
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

void std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TAppContainerInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TAppContainerInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 24;
    do
    {

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v4 - 8));

      v6 = *(v4 - 24);
      v5 = v4 - 24;

      v7 = v5 == v3;
      v4 = v5 - 24;
    }

    while (!v7);
  }

  a1[1] = v3;
}

id archiveServiceConnection(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.desktopservices.ArchiveService"];
  v3 = DSArchiveServiceXPCInterface();
  [v2 setRemoteObjectInterface:v3];

  v4 = DSArchiveServiceStreamingXPCInterface();
  [v2 setExportedInterface:v4];

  [v2 setExportedObject:v1];
  [v2 setInterruptionHandler:&__block_literal_global_129];

  return v2;
}

void sub_1E56C7744(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E56C8DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void sub_1E56C9F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void ___ZL24archiveServiceConnectionPU44objcproto33DSArchiveServiceStreamingInternal11objc_object_block_invoke()
{
  v0 = LogObj(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E5674000, v0, OS_LOG_TYPE_INFO, "Archive Service connection interrupted", v1, 2u);
  }
}

BOOL IsDebugLogCategoryEnabled(int a1)
{
  v1 = LogObj(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG);

  return v2;
}

void TOperation::GetFirstOperationRecordForIterator(TOperation *this@<X0>, OperationIterator *a2@<X1>, void *a3@<X8>)
{
  v4 = (*(this + 1))(*this, a2);
  v5 = v4;
  if (v4)
  {
    [v4 operationRecord];
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void TOperation::GetNextOperationRecordForIterator(TOperation *this@<X0>, OperationIterator *a2@<X1>, void *a3@<X8>)
{
  v4 = (*(this + 2))(*this, a2);
  v5 = v4;
  if (v4)
  {
    [v4 operationRecord];
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void TOperation::TOperation(uint64_t a1, uint64_t *a2, int a3)
{
  *a1 = &unk_1F5F3CCC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v5 = *a2;
  *(a1 + 120) = 0;
  *(a1 + 80) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 109) = 0;
  *(a1 + 128) = a2[1];
  v6 = TTime::TickCount(a1);
  *(a1 + 144) = 0;
  *(a1 + 136) = v6;
  *(a1 + 140) = v6;
  *(a1 + 152) = -1;
  *(a1 + 156) = 0;
  *(a1 + 172) = 0;
  *(a1 + 164) = 0;
  *(a1 + 177) = 0;
  *(a1 + 2364) = 0;
  bzero((a1 + 192), 0x879uLL);
  *(a1 + 2376) = a3;
  *(a1 + 2380) = 0;
  *(a1 + 2384) = 0;
  v7 = dispatch_queue_create("Operation queue", 0);
  *(a1 + 2392) = v7;
  *(a1 + 2400) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2432) = 0;
  *(a1 + 2440) = 1065353216;
  *(a1 + 2448) = 850045863;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2504) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2536) = 0u;
  *(a1 + 2552) = 0;
  *(a1 + 2560) = 1065353216;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = 0u;
  *(a1 + 2592) = 0u;
  *(a1 + 2608) = 0u;
  *(a1 + 2624) = 0;
  *(a1 + 2632) = TFileCoordinationRecord::NextOperationID(v7, v8);
  *(a1 + 2636) = 0;
  *(a1 + 3672) = -1;
  bzero((a1 + 2644), 0x400uLL);
  *(a1 + 3728) = 0;
  *(a1 + 3712) = 0u;
  *(a1 + 3696) = 0u;
  *(a1 + 3680) = 0u;
  v9 = *(a1 + 128);
  if (v9)
  {
    memcpy((a1 + 2640), *(v9 + 16), 0x440uLL);
    v10 = *v9;
    v14[1] = 0;
    v14[2] = 0;
    v14[0] = v10;
    v11 = *(v9 + 48);
    TClientChangeNotifier::Make(v14, *(v9 + 40), *(a1 + 2392), 0, &v15);
    TNodePtr::TNodePtr(&v13, 0);
    TNodePtr::TNodePtr(&v12, 0);
    TDSNotifier::Make();
  }

  abort();
}

void sub_1E56CA4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  TLockManager::~TLockManager((v18 + 2440));

  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(v18 + 2384);
  std::mutex::~mutex((v18 + 2304));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::__unordered_map_hasher<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::hash<std::shared_ptr<TDSOperationRecord>>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,true>,std::__unordered_map_equal<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,std::hash<std::shared_ptr<TDSOperationRecord>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>>>::~__hash_table(v18 + 2264);

  v20 = *(v16 + 160);
  if (v20)
  {
    *(v16 + 168) = v20;
    operator delete(v20);
  }

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v18);
  v21 = *(v16 + 104);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  DSOperationHandlers::~DSOperationHandlers(v17);
  _Unwind_Resume(a1);
}

void TOperation::SetHandlers(void *a1, id *a2)
{
  v4 = [a2[1] copy];
  v5 = a1[2];
  a1[2] = v4;

  v6 = [a2[2] copy];
  v7 = a1[3];
  a1[3] = v6;

  v8 = [a2[3] copy];
  v9 = a1[4];
  a1[4] = v8;

  v10 = [a2[4] copy];
  v11 = a1[5];
  a1[5] = v10;

  v12 = [a2[5] copy];
  v13 = a1[6];
  a1[6] = v12;

  v14 = [a2[6] copy];
  v15 = a1[7];
  a1[7] = v14;

  v16 = [a2[7] copy];
  v17 = a1[8];
  a1[8] = v16;
}

void TOperation::~TOperation(TOperation *this)
{
  *this = &unk_1F5F3CCC0;
  TLockManager::~TLockManager((this + 2584));

  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(this + 2528);
  std::mutex::~mutex((this + 2448));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::__unordered_map_hasher<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::hash<std::shared_ptr<TDSOperationRecord>>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,true>,std::__unordered_map_equal<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,std::hash<std::shared_ptr<TDSOperationRecord>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>>>::~__hash_table(this + 2408);

  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(this + 18);
  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t TOperation::RemovePtrReference(TOperation *this)
{
  result = TRefCount::Release<int>(this + 18);
  if (this && result)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t TOperation::ReportStatus(os_unfair_lock_s *this, int a2)
{
  TNodeEventPtr::TNodeEventPtr(&location, 0);
  os_unfair_lock_lock(this + 932);
  if (this[38]._os_unfair_lock_opaque)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 == 0;
  }

  if (!v5 && *&this[32]._os_unfair_lock_opaque)
  {
    v6 = TTime::TickCount(v4);
    v7 = v6;
    if (a2)
    {
      goto LABEL_9;
    }

    if (v6 < this[39]._os_unfair_lock_opaque)
    {
      goto LABEL_13;
    }

    if (this[659]._os_unfair_lock_opaque)
    {
LABEL_9:
      if (!*&this[4]._os_unfair_lock_opaque)
      {
        TReferenceCounted::Make<TOperation *>();
      }

      v8 = *&this[598]._os_unfair_lock_opaque;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN10TOperation12ReportStatusEb_block_invoke;
      block[3] = &__block_descriptor_40_ea8_32c40_ZTSKZN10TOperation12ReportStatusEbE3__0_e5_v8__0l;
      TRefCount::Retain<int>(&this[18]._os_unfair_lock_opaque);
      v13 = this;
      TRefCount::Retain<int>(&this[18]._os_unfair_lock_opaque);
      dispatch_async(v8, block);
      TRefCountPolicy<TOperation *>::Release(this);
      TRefCountPolicy<TOperation *>::Release(v13);
      this[659]._os_unfair_lock_opaque = 0;
    }

    this[39]._os_unfair_lock_opaque = *(*&this[32]._os_unfair_lock_opaque + 28) + v7;
  }

LABEL_13:
  os_unfair_lock_unlock(this + 932);
  if (TNodeEventPtr::operator->(&location))
  {
    v9 = TNodeEventPtr::operator->(&location);
    TNodeEvent::Notify(v9, 0, v10);
  }

  TNodeEventPtr::~TNodeEventPtr(&location);
  return 0;
}

void sub_1E56CA99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, TPropertyValue *a5, uint64_t a6, TDSNotifier *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, id);
  v17 = va_arg(va1, void);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a7);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  TPropertyValue::~TPropertyValue(va);

  TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>::~TRef(va1);
  os_unfair_lock_unlock(v9 + 932);
  TNodeEventPtr::~TNodeEventPtr((v10 - 40));
  _Unwind_Resume(a1);
}

void TRecordProgressMap::UpdateRecordProgress(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = a2;
  os_unfair_lock_lock((a1 + 40));
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::find<unsigned long long>(a1, &v7);
  if (v5)
  {
    v5[3] = a3;
  }

  else
  {
    v6[0] = v7;
    v6[1] = a3;
    std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,TRecordProgress>>(a1, v6);
  }

  os_unfair_lock_unlock((a1 + 40));
}

uint64_t ___ZN10TOperation12ReportStatusEb_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 2);
  TOperation::Status(v1, v5);
  result = (*(v2 + 16))(v2, v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __copy_helper_block_ea8_32c40_ZTSKZN10TOperation12ReportStatusEbE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 32) = v2;
  if (v2)
  {
    return TRefCount::Retain<int>((v2 + 72));
  }

  return result;
}

uint64_t TOperation::Completed(TOperation *this)
{
  if (!*(this + 3))
  {
    TReferenceCounted::Make<TOperation *>();
  }

  v2 = *(this + 299);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN10TOperation9CompletedEv_block_invoke;
  block[3] = &__block_descriptor_40_ea8_32c36_ZTSKZN10TOperation9CompletedEvE3__0_e5_v8__0l;
  TRefCount::Retain<int>(this + 18);
  v5 = this;
  TRefCount::Retain<int>(this + 18);
  dispatch_async(v2, block);
  TRefCountPolicy<TOperation *>::Release(this);
  return TRefCountPolicy<TOperation *>::Release(v5);
}

void sub_1E56CAD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TPropertyValue *a4, TDSNotifier *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, ...)
{
  va_start(va, a12);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a5);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  TPropertyValue::~TPropertyValue(&a8);

  TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c36_ZTSKZN10TOperation9CompletedEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 32) = v2;
  if (v2)
  {
    return TRefCount::Retain<int>((v2 + 72));
  }

  return result;
}

uint64_t TOperation::ValidateOperations(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v22);
  v3 = v22[0];
  if (v22[0])
  {
    while (1)
    {
      TDSOperationRecord::GetSource(v3, &v21);
      if (TNodeFromFINode(v21))
      {
        v4 = TNodeFromFINode(v21);
        if (TNode::VirtualType(v4) == 22)
        {
          if (TDSOperationRecord::GetRequestedOperation(v22[0]) - 12 < 3)
          {
            v6 = 0;
            goto LABEL_10;
          }
        }

        else
        {
          TDSOperationRecord::MaterializeFPItem(v20, v22[0]);
          TNodePtr::operator=(&v21, v20);

          v7 = TNodeFromFINode(v21);
          v8 = TNode::InfoLock(v7);
          os_unfair_lock_lock(v8);
          v10 = *(v7 + 16);
          v9 = *(v7 + 24);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            os_unfair_lock_unlock(v8);
            v11 = *(v10 + 120);
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            if (!v11)
            {
              goto LABEL_17;
            }
          }

          else
          {
            os_unfair_lock_unlock(v8);
            if (!*(v10 + 120))
            {
LABEL_17:
              v14 = TNodeFromFINode(v21);
              TNode::GetVolumeInfo(v14, v20);
              TNodeEvent::Notify(v20[0], 1, v15);
              v16 = TNodeFromFINode(v21);
              v17 = TNode::ParentLock(v16);
              os_unfair_lock_lock(v17);
              TNodePtr::TNodePtr(&v19, *(v16 + 48));
              os_unfair_lock_unlock(v17);
              TDSOperationRecord::SetOriginalSourceParent(v22[0], &v19);
              v6 = (*(*this + 15))(this, v22);

              if (v20[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v20[1]);
              }

              if (!v6)
              {
                goto LABEL_10;
              }

              goto LABEL_9;
            }
          }
        }
      }

      v6 = 4294959238;
LABEL_9:
      TDSOperationRecord::SetResolution(v22[0], 1);
LABEL_10:
      TOperation::GetNextOperationRecordForIterator(this[10], v5, v20);
      v12 = *v20;
      v20[0] = 0;
      v20[1] = 0;
      v13 = v22[1];
      *v22 = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (v20[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20[1]);
        }
      }

      if (!v6)
      {
        v3 = v22[0];
        if (v22[0])
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  v6 = 0;
LABEL_22:
  if (v22[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22[1]);
  }

  return v6;
}

void sub_1E56CAFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  os_unfair_lock_unlock(v16);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t TOperation::FlushAfterOperation(TOperation **this, OperationIterator *a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v17);
  for (i = v17[0]; v17[0]; i = v17[0])
  {
    TDSOperationRecord::GetDestination(i, &v16);
    if (TNodeFromFINode(v16))
    {
      v5 = TNodeFromFINode(v16);
      v6 = TNode::InfoLock(v5);
      os_unfair_lock_lock(v6);
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v6);
        v9 = *(v8 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        os_unfair_lock_unlock(v6);
        if (!*(v8 + 120))
        {
LABEL_7:
          v10 = TNodeFromFINode(v16);
          TNode::GetVolumeInfo(v10, v15);
          TNodeEvent::Notify(v15[0], 0, v11);
          if (v15[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15[1]);
          }
        }
      }
    }

    TOperation::GetNextOperationRecordForIterator(this[10], v4, v15);
    v12 = *v15;
    v15[0] = 0;
    v15[1] = 0;
    v13 = v17[1];
    *v17 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (v15[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15[1]);
      }
    }
  }

  if (v17[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17[1]);
  }

  return std::__hash_table<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>>>::~__hash_table(v18);
}

void sub_1E56CB1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t TOperation::Perform(TOperation **this)
{
  v2 = (*(*this + 11))(this);
  if (v2)
  {
    return v2;
  }

  v2 = (*(*this + 17))(this);
  if (v2)
  {
    return v2;
  }

  if (((*(*this + 23))(this) & 1) == 0)
  {
    TOperation::SwizzleConflicts(this, v3);
    goto LABEL_7;
  }

  v4 = (*(*this + 2))(this);
  TOperation::SwizzleConflicts(this, v5);
  if (!v4)
  {
LABEL_7:
    TOperation::UpdateStatusStage(this, 2);
    v2 = TOperation::ReportConflicts(this);
    if (!v2)
    {
      TOperation::ReportStatus(this, 1);
      TOperation::UpdateStatusStage(this, 4);
      v4 = TOperation::ProcessSelection(this);
      TOperation::FlushAfterOperation(this, v7);
      TOperation::ReportStatus(this, 1);
      return v4;
    }

    return v2;
  }

  return v4;
}

void TOperation::SwizzleConflicts(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v8);
  v3 = v8[0];
  if (v8[0])
  {
    while (TDSOperationRecord::GetRequestedOperation(v3))
    {
      if ((TDSOperationRecord::GetConflict(v8[0]) & 0x20000000) != 0)
      {
        TDSOperationRecord::ClearConflict(v8[0], 0x20000000);
        TDSOperationRecord::AddConflict(v8[0], 1);
      }

      TOperation::GetNextOperationRecordForIterator(this[10], v4, &v7);
      v5 = v7;
      v7 = 0uLL;
      v6 = v8[1];
      *v8 = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (*(&v7 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
        }

        v3 = v8[0];
        if (!v8[0])
        {
          break;
        }
      }

      else
      {
        v3 = v5;
        if (!v5)
        {
          break;
        }
      }
    }
  }

  if (v8[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8[1]);
  }
}

void sub_1E56CB3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void TOperation::UpdateStatusStage(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 3728));
  if (!*(a1 + 152) || !*(a1 + 128) || *(a1 + 2640) == a2)
  {

    os_unfair_lock_unlock((a1 + 3728));
    return;
  }

  if (a2 == 4)
  {
    *(a1 + 140) = TTime::TickCount(v4);
    goto LABEL_12;
  }

  if (a2 == 1)
  {
    *(a1 + 136) = TTime::TickCount(v4);
LABEL_12:
    *(a1 + 3688) = 0;
    *(a1 + 3720) = 0;
    *(a1 + 3704) = 0;
    goto LABEL_13;
  }

  if (a2 <= 4)
  {
    goto LABEL_12;
  }

LABEL_13:
  *(a1 + 2640) = a2;
  *(a1 + 2636) |= 1u;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [*(a1 + 2576) setObject:v5 forKeyedSubscript:@"LastStage"];

  os_unfair_lock_unlock((a1 + 3728));

  TOperation::ReportStatus(a1, 1);
}

uint64_t TOperation::ReportConflicts(TOperation *this)
{
  if (*(this + 11) && *(this + 16))
  {
    v2 = *(this + 10);
    TOperationErrorRecord::Make();
  }

  return 0;
}

void sub_1E56CB9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, TPropertyValue *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef((v19 - 64));
  _Unwind_Resume(a1);
}

uint64_t TOperation::ProcessSelection(TOperation *this)
{
  v2 = *(this + 10);
  os_unfair_lock_lock(this + 932);
  *(this + 461) = 0;
  *(this + 465) = 0;
  os_unfair_lock_unlock(this + 932);
  if (v2)
  {
    TOperation::GetFirstOperationRecordForIterator(v2, v3, &v13);
    v5 = *(this + 13);
    *(this + 6) = v13;
    v6 = (this + 96);
    v13 = 0uLL;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    while (*v6)
    {
      TOperation::GetNextOperationRecordForIterator(v2, v4, &v13);
      v7 = TOperation::ValidateCurrentRecordConflicts(this);
      if (!v7)
      {
        if (TDSOperationRecord::GetResolution(*v6) == 1)
        {
          v7 = 0;
        }

        else
        {
          if (!v13)
          {
            v8 = *v6;
            std::mutex::lock(*v6);
            v8[2].__m_.__opaque[48] |= 8u;
            std::mutex::unlock(v8);
          }

          v7 = (*(*this + 104))(this, this + 96);
        }
      }

      v9 = v13;
      if (*(&v13 + 1))
      {
        atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(this + 13);
      *(this + 6) = v9;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (!v7)
      {
        v11 = *(this + 16);
        if (v11)
        {
          if (*(v11 + 8))
          {
            v7 = 4294967168;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }

      if (v7)
      {
        return v7;
      }
    }
  }

  return 0;
}

void sub_1E56CBC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

int64_t TOperation::StartSubOperations(TOperation *this)
{
  v5 = 0;
  v6 = 0;
  v2 = (*(*this + 112))(this, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = (*(*this + 32))(this);
  return TDSHelperContext::LaunchDesktopServicesHelper(v3, 1);
}

void sub_1E56CBD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TOperation::FPResolveConflicts(TOperation **this)
{
  if (UseFileProviderFramework())
  {
    TOperation::GetFirstOperationRecordForIterator(this[10], v2, &v111);
    v3 = objc_opt_new();
    v108 = 0u;
    v109 = 0u;
    v110 = 1065353216;
    v82 = objc_opt_new();
    v105 = 0u;
    v106 = 0u;
    v107 = 1065353216;
    v102 = 0u;
    v103 = 0u;
    v104 = 1065353216;
    v99 = 0u;
    v100 = 0u;
    v101 = 1065353216;
    v96 = 0u;
    v97 = 0u;
    v98 = 1065353216;
    v93 = 0u;
    v94 = 0u;
    v95 = 1065353216;
    v90 = 0u;
    v91 = 0u;
    v92 = 1065353216;
    v4 = v111;
    if (v111)
    {
      v5 = 0;
      v81 = *MEMORY[0x1E695DD28];
      while (1)
      {
        if (!TDSOperationRecord::GetRequestedOperation(v4))
        {
          goto LABEL_80;
        }

        RequestedOperation = TDSOperationRecord::GetRequestedOperation(v111);
        TDSOperationRecord::GetSource(v111, &v89);
        if ((RequestedOperation - 1) < 3)
        {
          break;
        }

        if (RequestedOperation == 5)
        {
          v31 = TNodeFromFINode(v89);
          v32 = TNode::InfoLock(v31);
          os_unfair_lock_lock(v32);
          v34 = *(v31 + 16);
          v33 = *(v31 + 24);
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v32);
          v12 = TFSInfo::GetFPItem(v34);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v12)
          {
            if (!TNodeFromFINode(v5))
            {
              v35 = v89;

              v5 = v35;
            }

            if ([v12 isTopLevelSharedItem])
            {
              v36 = [v12 sharingPermissions];
              v37 = [v36 isEqualToString:v81];

              if (v37)
              {
                TDSOperationRecord::AddOperationOptions(v111, 1);
              }
            }

            [v82 addObject:v12];
          }
        }

        else
        {
          if (RequestedOperation != 22)
          {
            goto LABEL_73;
          }

          v22 = TNodeFromFINode(v89);
          v23 = TNode::InfoLock(v22);
          os_unfair_lock_lock(v23);
          v25 = *(v22 + 16);
          v24 = *(v22 + 24);
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v23);
          v12 = TFSInfo::GetFPItem(v25);
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          if (v12)
          {
            if (!TNodeFromFINode(v5))
            {
              v26 = v89;

              v5 = v26;
            }

            v84 = 0;
            v83[0] = &v84;
            v27 = std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * {__strong}&&>,std::tuple<>>(&v108, &v84);

            v28 = v27[3];
            if (!v28)
            {
              v29 = objc_opt_new();
              v30 = v27[3];
              v27[3] = v29;

              v28 = v27[3];
            }

            [v28 addObject:{v12, v81}];
          }
        }

LABEL_72:

LABEL_73:
        TOperation::GetNextOperationRecordForIterator(this[10], v7, v83);
        v57 = *v83;
        v83[0] = 0;
        v83[1] = 0;
        v58 = *(&v111 + 1);
        v111 = v57;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          if (v83[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83[1]);
          }
        }

        v4 = v111;
        if (!v111)
        {
          goto LABEL_80;
        }
      }

      v8 = TNodeFromFINode(v89);
      v9 = TNode::InfoLock(v8);
      os_unfair_lock_lock(v9);
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v9);
      v12 = TFSInfo::GetFPItem(v11);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      TDSOperationRecord::GetDestination(v111, v83);
      v13 = TNodeFromFINode(v83[0]);
      v14 = TNode::InfoLock(v13);
      os_unfair_lock_lock(v14);
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v14);
      v17 = TFSInfo::GetFPItem(v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v88 = v17;

      if (!(v12 | v88))
      {
        goto LABEL_71;
      }

      if (TNodeFromFINode(v5))
      {
        if (v12)
        {
LABEL_17:
          if ((TDSOperationRecord::GetOperationOptions(v111) & 8) == 0)
          {
            if (v88)
            {
              v18 = TNodeFromFINode(v89);
              v19 = TNode::IsInTrash(v18);
              if (RequestedOperation != 2 && v19)
              {
                v83[0] = &v88;
                v21 = std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * const {__strong}&>,std::tuple<>>(&v108, &v88);
              }

              else
              {
                v83[0] = &v88;
                if (RequestedOperation == 2)
                {
                  v21 = std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * const {__strong}&>,std::tuple<>>(&v96, &v88);
                }

                else
                {
                  v21 = std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * const {__strong}&>,std::tuple<>>(&v105, &v88);
                }
              }

              v50 = (v21 + 3);
              v51 = v21[3];
              if (!v51)
              {
                v52 = objc_opt_new();
                v53 = *v50;
                *v50 = v52;

                v51 = *v50;
              }

              [v51 addObject:{v12, v81}];
              goto LABEL_71;
            }

            TDSOperationRecord::GetDestination(v111, v83);
            v41 = TNodeFromFINode(v83[0]);
            TNode::CFURL(v41, &v87);

            if (v87)
            {
              v42 = v87;
              if (RequestedOperation == 2)
              {
                v86 = v42;
                v83[0] = &v86;
                v43 = std::__hash_table<std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<NSURL * {__strong}>,std::equal_to<NSURL * {__strong}>,true>,std::__unordered_map_equal<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<NSURL * {__strong}>,std::hash<NSURL * {__strong}>,true>,std::allocator<std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<NSURL * {__strong},std::piecewise_construct_t const&,std::tuple<NSURL * {__strong}&&>,std::tuple<>>(&v90, &v86);
                v44 = &v86;
              }

              else
              {
                v85 = v42;
                v83[0] = &v85;
                v43 = std::__hash_table<std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<NSURL * {__strong}>,std::equal_to<NSURL * {__strong}>,true>,std::__unordered_map_equal<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<NSURL * {__strong}>,std::hash<NSURL * {__strong}>,true>,std::allocator<std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<NSURL * {__strong},std::piecewise_construct_t const&,std::tuple<NSURL * {__strong}&&>,std::tuple<>>(&v99, &v85);
                v44 = &v85;
              }

              v54 = v43[3];
              if (!v54)
              {
                v55 = objc_opt_new();
                v56 = v43[3];
                v43[3] = v55;

                v54 = v43[3];
              }

              [v54 addObject:{v12, v81}];
            }

            goto LABEL_70;
          }

          [v3 addObject:v12];
          goto LABEL_71;
        }
      }

      else
      {
        v38 = v89;

        v5 = v38;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (v88)
      {
        v39 = TNodeFromFINode(v89);
        TNode::CFURL(v39, &v87);
        if (v87)
        {
          v83[0] = &v88;
          if (RequestedOperation == 2)
          {
            v40 = std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * const {__strong}&>,std::tuple<>>(&v93, &v88);
          }

          else
          {
            v40 = std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * const {__strong}&>,std::tuple<>>(&v102, &v88);
          }

          v45 = v40;
          v46 = v40[3];
          if (!v46)
          {
            v47 = objc_opt_new();
            v48 = v45[3];
            v45[3] = v47;

            v46 = v45[3];
          }

          v49 = v87;
          [v46 addObject:v49];
        }

LABEL_70:
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v87);
      }

LABEL_71:

      goto LABEL_72;
    }

    v5 = 0;
LABEL_80:
    if ([v3 count])
    {
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E6967480]) initWithItems:v3]);
    }

    v59 = v109;
    if (v109)
    {
      v60 = *(v109 + 16);
      v61 = *(v59 + 24);
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E6967498]) initWithItems:v61 restoreDirectory:v60]);
    }

    if ([v82 count])
    {
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E6967300]) initWithItems:v82]);
    }

    v62 = v106;
    if (v106)
    {
      v63 = *(v106 + 16);
      v64 = *(v62 + 24);
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E69673C0]) initWithItems:v64 destinationFolder:v63]);
    }

    v65 = v97;
    if (v97)
    {
      v66 = *(v97 + 16);
      v67 = *(v65 + 24);
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E69672E0]) initWithItems:v67 destinationFolder:v66]);
    }

    v68 = v103;
    if (v103)
    {
      v69 = *(v103 + 16);
      v70 = *(v68 + 24);
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E69673C0]) initWithURLs:v70 destinationFolder:v69]);
    }

    v71 = v94;
    if (v94)
    {
      v72 = *(v94 + 16);
      v73 = *(v71 + 24);
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E69672E0]) initWithURLs:v73 destinationFolder:v72]);
    }

    v74 = v100;
    if (v100)
    {
      v75 = *(v100 + 16);
      v76 = *(v74 + 24);
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E69673C0]) initWithItems:v76 destinationURL:v75]);
    }

    v77 = v91;
    if (v91)
    {
      v78 = *(v91 + 16);
      v79 = *(v77 + 24);
      TOperation::PreflightFPOperationBulk(this, [objc_alloc(MEMORY[0x1E69672E0]) initWithItems:v79 destinationURL:v78]);
    }

    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&v90);
    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&v93);
    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&v96);
    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&v99);
    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&v102);
    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&v105);

    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&v108);
    if (*(&v111 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v111 + 1));
    }
  }

  return 1;
}

void sub_1E56CC790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, const void *a16, id a17, id a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a16);

  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&a19);
  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&a25);
  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&a31);
  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(&a37);
  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(v40 - 256);
  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(v40 - 208);

  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(v40 - 160);
  v42 = *(v40 - 104);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(a1);
}

void sub_1E56CCBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, id a16, id location, void *a18)
{
  objc_destroyWeak((v21 + 32));

  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);

  _Unwind_Resume(a1);
}

uint64_t TOperation::ResolveConflicts(TOperation **this)
{
  if (TOperation::FPResolveConflicts(this))
  {
    TOperation::GetFirstOperationRecordForIterator(this[10], v2, v12);
    v3 = v12[0];
    if (v12[0])
    {
      v4 = 0;
      while (TDSOperationRecord::GetRequestedOperation(v3))
      {
        if (TDSOperationRecord::GetResolution(v12[0]) != 1)
        {
          v4 = (*(*this + 19))(this, v12);
          if (v4)
          {
            TOperation::ReleaseLocks(this);
            TDSOperationRecord::GetSource(v12[0], &v11);
            v10 = *v12;
            if (v12[1])
            {
              atomic_fetch_add_explicit(v12[1] + 1, 1uLL, memory_order_relaxed);
            }

            v9 = v11;
            (*(*this + 6))(this, &v10, v4, &v9, 0);

            if (*(&v10 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
            }

            v4 = 4294967168;
          }
        }

        TOperation::GetNextOperationRecordForIterator(this[10], v5, &v10);
        v6 = v10;
        v10 = 0uLL;
        v7 = v12[1];
        *v12 = v6;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          if (*(&v10 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
          }

          v3 = v12[0];
          if (!v12[0])
          {
            break;
          }
        }

        else
        {
          v3 = v6;
          if (!v6)
          {
            break;
          }
        }
      }
    }

    else
    {
      v4 = 0;
    }

    if (v12[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12[1]);
    }
  }

  else
  {
    (*(*this + 25))(this);
    return 4294967168;
  }

  return v4;
}

void sub_1E56CCDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t TOperation::ReleaseLocks(TOperation **this)
{
  TLockManager::ReleaseLocks((this + 323));
  TOperation::GetFirstOperationRecordForIterator(this[10], v2, v10);
  v3 = v10[0];
  if (v10[0])
  {
    while (TDSOperationRecord::GetRequestedOperation(v3))
    {
      TDSOperationRecord::GetTargetNode(v10[0], v9);
      v4 = TNodeFromFINode(v9[0]);

      if (v4)
      {
        (*(*this + 18))(this, v10);
      }

      TOperation::GetNextOperationRecordForIterator(this[10], v5, v9);
      v6 = *v9;
      v9[0] = 0;
      v9[1] = 0;
      v7 = v10[1];
      *v10 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (v9[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9[1]);
        }

        v3 = v10[0];
        if (!v10[0])
        {
          break;
        }
      }

      else
      {
        v3 = v6;
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if (v10[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10[1]);
  }

  return 0;
}

void sub_1E56CCF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void TOperationErrorRecord::Make()
{
  operator new();
}

{
  operator new();
}

uint64_t ___ZN10TOperation15ReportConflictsEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 1056);
  if (v1)
  {
    v2 = *v1;
  }

  return (*(*(*(a1 + 32) + 40) + 16))();
}

TOperationErrorRecord *__copy_helper_block_ea8_32c43_ZTSKZN10TOperation15ReportConflictsEvE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = result;
  if (result)
  {
    return TOperationErrorRecord::AddPtrReference(result);
  }

  return result;
}

void StOperationReplyWaiter::~StOperationReplyWaiter(dispatch_semaphore_t *this)
{
  dispatch_semaphore_wait(this[1], 0xFFFFFFFFFFFFFFFFLL);
  *((*this)[16].isa + 4) = 0;
}

uint64_t TOperation::ReportError(TOperation *a1, TOperationErrorRecord **a2)
{
  TOperation::ReportErrorToUser(a1, a2);
  result = 4294967168;
  if (*(*a2 + 2) != -128)
  {
    if (*(*a2 + 4) == 1)
    {
      return 0;
    }

    else
    {
      return 4294967168;
    }
  }

  return result;
}

void TOperation::ReportErrorToUser(TOperation *a1, TOperationErrorRecord **a2)
{
  *(*a2 + 133) = a1;
  if (!*(a1 + 6))
  {
    TReferenceCounted::Make<TOperationErrorRecord *>();
  }

  StOperationReplyWaiter::StOperationReplyWaiter(&v7, a1);
  v4 = *(a1 + 299);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN10TOperation17ReportErrorToUserERK4TRefIP21TOperationErrorRecord20TRetainReleasePolicyIS2_EE_block_invoke;
  block[3] = &__block_descriptor_48_ea8_32c104_ZTSKZN10TOperation17ReportErrorToUserERK4TRefIP21TOperationErrorRecord20TRetainReleasePolicyIS2_EEE3__0_e5_v8__0l;
  v5 = *a2;
  v8 = a1;
  v9 = v5;
  if (v5)
  {
    TOperationErrorRecord::AddPtrReference(v5);
    v11 = v8;
    v12 = v9;
    if (v9)
    {
      TOperationErrorRecord::AddPtrReference(v9);
    }
  }

  else
  {
    v11 = a1;
    v12 = 0;
  }

  dispatch_async(v4, block);
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef(&v9);
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef(&v12);
  dispatch_semaphore_wait(v7.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer, 0xFFFFFFFFFFFFFFFFLL);
  buffer = v7.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer;
  *(*(v7.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value + 128) + 32) = 0;
}

void sub_1E56CD2E4(_Unwind_Exception *a1, char a2, TPropertyValue *a3, uint64_t a4, char a5, int a6, __int16 a7, char a8, char a9, uint64_t a10, uint64_t a11)
{
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef((v11 + 8));
  StOperationReplyWaiter::~StOperationReplyWaiter(&a11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10TOperation17ReportErrorToUserERK4TRefIP21TOperationErrorRecord20TRetainReleasePolicyIS2_EE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 1056);
  if (v1)
  {
    v2 = *v1;
  }

  return (*(*(*(a1 + 32) + 48) + 16))();
}

TOperationErrorRecord *__copy_helper_block_ea8_32c104_ZTSKZN10TOperation17ReportErrorToUserERK4TRefIP21TOperationErrorRecord20TRetainReleasePolicyIS2_EEE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = result;
  if (result)
  {
    return TOperationErrorRecord::AddPtrReference(result);
  }

  return result;
}

uint64_t TOperation::ReportErrorForNode(uint64_t a1, uint64_t a2, uint64_t a3, FINode **a4, uint64_t a5)
{
  if (a3 && (a3 != -128 || a5 == 11))
  {
    v14 = 0;
    v15 = 0;
    if (TNodeFromFINode(*a4))
    {
      v9 = TNodeFromFINode(*a4);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      v14 = v12;
      v15 = v11;
    }

    TOperationErrorRecord::Make(a5, a3, 0, &v14, 1, *(a1 + 2512));
  }

  return 0;
}

void sub_1E56CD4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, TOperationErrorRecord *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1E56CD590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1E692CD30](v10, 0x10A0C40CC82E741);

  _Unwind_Resume(a1);
}

void ___ZN10TOperation24PreflightFPOperationBulkEP17FPActionOperation13OperationType_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = LogObj(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      v6 = "FPOperation returned an error: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_1E5674000, v7, v8, v6, &v10, 0xCu);
    }
  }

  else
  {
    v5 = LogObj(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = WeakRetained;
      v6 = "FPOperation completed: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

id __copy_helper_block_ea8_32c86_ZTSKZN10TOperation24PreflightFPOperationBulkEP17FPActionOperation13OperationTypeE3__1(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c86_ZTSKZN10TOperation24PreflightFPOperationBulkEP17FPActionOperation13OperationTypeE3__1(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void TOperation::UpdateStatusItemsCompleted(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, int a4)
{
  os_unfair_lock_lock(this + 932);
  if (this[38]._os_unfair_lock_opaque)
  {
    if (a4)
    {
      v8 = *&this[922]._os_unfair_lock_opaque + a2;
      if (v8 >= *&this[920]._os_unfair_lock_opaque)
      {
        v8 = *&this[920]._os_unfair_lock_opaque;
      }

      *&this[922]._os_unfair_lock_opaque = v8;
      a3 += *&this[930]._os_unfair_lock_opaque;
    }

    else
    {
      v9 = *&this[920]._os_unfair_lock_opaque;
      if (v9 >= a2)
      {
        v9 = a2;
      }

      *&this[922]._os_unfair_lock_opaque = v9;
    }

    v10 = *&this[928]._os_unfair_lock_opaque;
    if (a3 < v10)
    {
      v10 = a3;
    }

    *&this[930]._os_unfair_lock_opaque = v10;
    this[659]._os_unfair_lock_opaque |= 0x10u;
  }

  os_unfair_lock_unlock(this + 932);
}

void TOperation::UpdateItemsDeleted(TOperation *this, uint64_t a2, uint64_t a3, TString *a4)
{
  os_unfair_lock_lock(this + 932);
  if (*(this + 38))
  {
    *(this + 659) |= 0x10u;
    *(this + 461) = a2;
    *(this + 465) = a3;
    *(this + 460) = a2;
    *(this + 464) = a3;
    TString::GetCString(a4, this + 2644, 1024);
  }

  os_unfair_lock_unlock(this + 932);
}

void TOperation::UpdateStatusItemsCompletedIncrementally(os_unfair_lock_s *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 932);
  if (this[38]._os_unfair_lock_opaque)
  {
    v6 = *&this[922]._os_unfair_lock_opaque + a2;
    if (v6 <= *&this[920]._os_unfair_lock_opaque)
    {
      *&this[922]._os_unfair_lock_opaque = v6;
    }

    v7 = *&this[930]._os_unfair_lock_opaque + a3;
    if (v7 <= *&this[928]._os_unfair_lock_opaque)
    {
      *&this[930]._os_unfair_lock_opaque = v7;
    }

    *&this[926]._os_unfair_lock_opaque += a2;
    this[659]._os_unfair_lock_opaque |= 0x10u;
  }

  os_unfair_lock_unlock(this + 932);
}

void TOperation::UpdateStatusBytesCompleted(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 932);
  if (this[38]._os_unfair_lock_opaque)
  {
    *&this[926]._os_unfair_lock_opaque = a2;
    if (*&this[924]._os_unfair_lock_opaque >= a2)
    {
      v4 = 64;
    }

    else
    {
      *&this[924]._os_unfair_lock_opaque = a2;
      v4 = 96;
    }

    this[659]._os_unfair_lock_opaque |= v4;
  }

  os_unfair_lock_unlock(this + 932);
}

void TOperation::UpdateStatusItemsTotal(os_unfair_lock_s *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 932);
  if (this[38]._os_unfair_lock_opaque && (*&this[920]._os_unfair_lock_opaque != a2 || *&this[928]._os_unfair_lock_opaque != a3))
  {
    *&this[920]._os_unfair_lock_opaque = a2;
    *&this[928]._os_unfair_lock_opaque = a3;
    this[659]._os_unfair_lock_opaque |= 8u;
  }

  os_unfair_lock_unlock(this + 932);
}

void TOperation::UpdateStatusThroughput(os_unfair_lock_s *this, uint64_t a2, int a3)
{
  os_unfair_lock_lock(this + 932);
  if (this[38]._os_unfair_lock_opaque)
  {
    os_unfair_lock_opaque = this[660]._os_unfair_lock_opaque;
    if (a3)
    {
      if (os_unfair_lock_opaque >= 4)
      {
        v8 = *&this[930]._os_unfair_lock_opaque;
        if (v8 >= 1)
        {
          v9 = *&this[928]._os_unfair_lock_opaque;
          v10 = TTime::TickCount(v6);
          v11 = v9 - v8;
          v12 = this[35]._os_unfair_lock_opaque;
LABEL_14:
          v13 = v11 * (v10 - v12) / (60 * *&this[930]._os_unfair_lock_opaque);
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (os_unfair_lock_opaque)
      {
        if (!(*&this[924]._os_unfair_lock_opaque | a2))
        {
          v14 = *&this[930]._os_unfair_lock_opaque;
          if (v14 >= 1)
          {
            v15 = *&this[928]._os_unfair_lock_opaque;
            if (v15 >= 1)
            {
              v10 = TTime::TickCount(v6);
              v11 = v15 - v14;
              v12 = this[34]._os_unfair_lock_opaque;
              goto LABEL_14;
            }
          }
        }
      }

      if ((a2 + 1) >= 2)
      {
        v13 = (*&this[924]._os_unfair_lock_opaque - *&this[926]._os_unfair_lock_opaque) / a2;
        goto LABEL_15;
      }
    }

    v13 = -1;
LABEL_15:
    *&this[918]._os_unfair_lock_opaque = v13;
    this[659]._os_unfair_lock_opaque |= 4u;
  }

  os_unfair_lock_unlock(this + 932);
}

void TOperation::UpdateStatusCurrentItem(TOperation *this, TString *a2)
{
  os_unfair_lock_lock(this + 932);
  if (*(this + 38))
  {
    *(this + 659) |= 2u;
    TString::GetCString(a2, this + 2644, 1024);
  }

  os_unfair_lock_unlock(this + 932);
}

void TOperation::Status(TOperation *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 932);
  *a2 = *(this + 660);
  *(a2 + 1032) = *(this + 459);
  *(a2 + 1040) = *(this + 230);
  *(a2 + 1056) = *(this + 231);
  *(a2 + 1072) = *(this + 232);
  strlcpy((a2 + 4), this + 2644, 0x400uLL);

  os_unfair_lock_unlock(this + 932);
}

uint64_t TOperation::AcquireSourceLocks(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v15);
  v3 = v15[0];
  if (v15[0])
  {
    while (TDSOperationRecord::GetRequestedOperation(v3))
    {
      v14 = *v15;
      if (v15[1])
      {
        atomic_fetch_add_explicit(v15[1] + 1, 1uLL, memory_order_relaxed);
      }

      v5 = (*(*this + 24))(this, &v14);
      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }

      if (v5)
      {
        v10 = v15[0];
        v11 = v15[1];
        if (v15[1])
        {
          atomic_fetch_add_explicit(v15[1] + 1, 1uLL, memory_order_relaxed);
          *(&v14 + 1) = v11;
          atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
        }

        else
        {
          *(&v14 + 1) = 0;
        }

        *&v14 = v10;
        TDSOperationRecord::GetSource(v10, &v13);
        if (v5 == -8075)
        {
          v12 = 4294959220;
        }

        else
        {
          v12 = v5;
        }

        v8 = (*(*this + 6))(this, &v14, v12, &v13, 0);

        if (*(&v14 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        goto LABEL_15;
      }

      TOperation::GetNextOperationRecordForIterator(this[10], v4, &v14);
      v6 = v14;
      v14 = 0uLL;
      v7 = v15[1];
      *v15 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (*(&v14 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
        }

        v3 = v15[0];
        if (!v15[0])
        {
          break;
        }
      }

      else
      {
        v3 = v6;
        if (!v6)
        {
          break;
        }
      }
    }
  }

  v8 = 0;
LABEL_15:
  if (v15[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15[1]);
  }

  return v8;
}

void sub_1E56CDE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t TOperation::Cancel(TOperation *this, int a2)
{
  *(*(this + 16) + 8) = 1;
  v3 = *(this + 12);
  if (v3)
  {
    std::mutex::lock(*(this + 12));
    v3[2].__m_.__opaque[48] |= 0x40u;
    std::mutex::unlock(v3);
  }

  v4 = *(this + 658);

  return TNode::CancelPendingFPOperation(v4, a2);
}

void TLockManager::ReleaseLock(TLockManager *this, const TNodePtr *a2, const TNodePtr *a3)
{
  if (TNodeFromFINode(a2->fFINode))
  {
    std::mutex::lock(&TOperation::OperationLock(void)::gOperationLock);
    v6 = TNodeFromFINode(a2->fFINode);
    if (TNode::BeingOperatedOn(v6, 0))
    {
      v7 = TNodeFromFINode(a2->fFINode);
      v8 = TNode::Writers(v7);
      fFINode = a2->fFINode;
      if (v8)
      {
        v10 = TNodeFromFINode(fFINode);
        TNode::RemoveWriter(v10, this);
      }

      else
      {
        v11 = TNodeFromFINode(fFINode);
        v12 = TNode::ChildWriters(v11);
        v13 = a2->fFINode;
        if (v12)
        {
          v14 = TNodeFromFINode(v13);
          TNode::RemoveChildWriter(v14, this);
        }

        else
        {
          v15 = TNodeFromFINode(v13);
          TNode::DecrementReaders(v15);
        }
      }

      v16 = a3->fFINode;
      v21 = v16;
      while (TNodeFromFINode(v16))
      {
        v17 = TNodeFromFINode(v21);
        TNode::DecrementReadersBelowBy(v17, 1);
        v18 = TNodeFromFINode(v21);
        v19 = TNode::ParentLock(v18);
        os_unfair_lock_lock(v19);
        TNodePtr::TNodePtr(&v20, *(v18 + 48));
        os_unfair_lock_unlock(v19);
        TNodePtr::operator=(&v21, &v20.fFINode);

        v16 = v21;
      }
    }

    std::mutex::unlock(&TOperation::OperationLock(void)::gOperationLock);
  }
}

uint64_t TLockManager::AcquireReadLock(TLockManager *this, const TNodePtr *a2)
{
  if (TNodeFromFINode(a2->fFINode))
  {
    std::mutex::lock(&TOperation::OperationLock(void)::gOperationLock);
    v4 = TNodeFromFINode(a2->fFINode);
    v5 = TNode::Readers(v4);
    fFINode = a2->fFINode;
    if (v5)
    {
      v7 = TNodeFromFINode(fFINode);
      TNode::IncrementReaders(v7);
      v8 = TNodeFromFINode(a2->fFINode);
      v9 = TNode::ParentLock(v8);
      os_unfair_lock_lock(v9);
      TNodePtr::TNodePtr(&v35, *(v8 + 48));
      os_unfair_lock_unlock(v9);
      v33 = a2->fFINode;
      v34 = v35.fFINode;
      std::vector<std::pair<TNodePtr,TNodePtr>>::push_back[abi:ne200100](this, &v33);
      while (TNodeFromFINode(v35.fFINode))
      {
        v10 = TNodeFromFINode(v35.fFINode);
        TNode::IncrementReadersBelowBy(v10, 1);
        v11 = TNodeFromFINode(v35.fFINode);
        v12 = TNode::ParentLock(v11);
        os_unfair_lock_lock(v12);
        TNodePtr::TNodePtr(&v32, *(v11 + 48));
        os_unfair_lock_unlock(v12);
        TNodePtr::operator=(&v35.fFINode, &v32.fFINode);
      }

LABEL_21:

      v13 = 0;
      goto LABEL_22;
    }

    v14 = TNodeFromFINode(fFINode);
    if (TNode::Writers(v14) && (v15 = TNodeFromFINode(a2->fFINode), TNode::GetWriteOperation(v15) == this))
    {
      TLockManager::AcquireWriteLockHoldingLock(this, a2);
    }

    else
    {
      v16 = TNodeFromFINode(a2->fFINode);
      if (TNode::Writers(v16))
      {
        v17 = 0;
      }

      else
      {
        v18 = TNodeFromFINode(a2->fFINode);
        v17 = TNode::ReadersBelow(v18) == 0;
      }

      v19 = TNodeFromFINode(a2->fFINode);
      v20 = TNode::ParentLock(v19);
      os_unfair_lock_lock(v20);
      TNodePtr::TNodePtr(&v33, *(v19 + 48));
      os_unfair_lock_unlock(v20);
      if (v17)
      {
        while (TNodeFromFINode(v33))
        {
          v21 = TNodeFromFINode(v33);
          v22 = TNode::Writers(v21);
          v23 = TNodeFromFINode(v33);
          v24 = TNode::ParentLock(v23);
          os_unfair_lock_lock(v24);
          TNodePtr::TNodePtr(&v35, *(v23 + 48));
          os_unfair_lock_unlock(v24);
          TNodePtr::operator=(&v33, &v35.fFINode);

          if (v22)
          {
            goto LABEL_15;
          }
        }

        v25 = TNodeFromFINode(a2->fFINode);
        TNode::IncrementReaders(v25);
        v26 = TNodeFromFINode(a2->fFINode);
        v27 = TNode::ParentLock(v26);
        os_unfair_lock_lock(v27);
        TNodePtr::TNodePtr(&v35, *(v26 + 48));
        os_unfair_lock_unlock(v27);
        v33 = a2->fFINode;
        v34 = v35.fFINode;
        std::vector<std::pair<TNodePtr,TNodePtr>>::push_back[abi:ne200100](this, &v33);
        while (TNodeFromFINode(v35.fFINode))
        {
          v28 = TNodeFromFINode(v35.fFINode);
          TNode::IncrementReadersBelowBy(v28, 1);
          v29 = TNodeFromFINode(v35.fFINode);
          v30 = TNode::ParentLock(v29);
          os_unfair_lock_lock(v30);
          TNodePtr::TNodePtr(&v32, *(v29 + 48));
          os_unfair_lock_unlock(v30);
          TNodePtr::operator=(&v35.fFINode, &v32.fFINode);
        }

        goto LABEL_21;
      }

LABEL_15:
    }

    v13 = 4294959221;
LABEL_22:
    std::mutex::unlock(&TOperation::OperationLock(void)::gOperationLock);
    return v13;
  }

  return 4294959221;
}

uint64_t TLockManager::AcquireWriteLock(TLockManager *this, const TNodePtr *a2)
{
  if (!TNodeFromFINode(a2->fFINode))
  {
    return 0;
  }

  std::mutex::lock(&TOperation::OperationLock(void)::gOperationLock);
  v4 = TLockManager::AcquireWriteLockHoldingLock(this, a2);
  std::mutex::unlock(&TOperation::OperationLock(void)::gOperationLock);
  return v4;
}

uint64_t TLockManager::AcquireChildWriteLock(TLockManager *this, const TNodePtr *a2, int a3)
{
  v6 = TNodeFromFINode(a2->fFINode);
  if (v6 != TNodeFromFINode(0))
  {
    std::mutex::lock(&TOperation::OperationLock(void)::gOperationLock);
    v7 = TNodeFromFINode(a2->fFINode);
    if (!TNode::ChildWriters(v7) || (v8 = TNodeFromFINode(a2->fFINode), TNode::GetWriteOperation(v8)) && (v9 = TNodeFromFINode(a2->fFINode), TNode::GetWriteOperation(v9) != this))
    {
      v10 = TNodeFromFINode(a2->fFINode);
      if (TNode::Writers(v10))
      {
        goto LABEL_14;
      }

      v11 = TNodeFromFINode(a2->fFINode);
      if (TNode::ChildWriters(v11))
      {
        goto LABEL_14;
      }

      v12 = TNodeFromFINode(a2->fFINode);
      v13 = TNode::ParentLock(v12);
      os_unfair_lock_lock(v13);
      TNodePtr::TNodePtr(&v29, *(v12 + 48));
      os_unfair_lock_unlock(v13);
      while (TNodeFromFINode(v29))
      {
        v14 = TNodeFromFINode(v29);
        v15 = TNode::Writers(v14);
        v16 = TNodeFromFINode(v29);
        v17 = TNode::ParentLock(v16);
        os_unfair_lock_lock(v17);
        TNodePtr::TNodePtr(&v31, *(v16 + 48));
        os_unfair_lock_unlock(v17);
        TNodePtr::operator=(&v29, &v31.fFINode);

        if (v15)
        {

          goto LABEL_14;
        }
      }
    }

    v19 = TNodeFromFINode(a2->fFINode);
    if (!TNode::Readers(v19))
    {
      v21 = TNodeFromFINode(a2->fFINode);
      v22 = TNode::ParentLock(v21);
      os_unfair_lock_lock(v22);
      TNodePtr::TNodePtr(&v31, *(v21 + 48));
      os_unfair_lock_unlock(v22);
      v23 = TNodeFromFINode(a2->fFINode);
      v18 = TNode::AddChildWriter(v23, this);
      if (!v18)
      {
        if (TNodeFromFINode(v31.fFINode) && a3)
        {
          std::vector<TNodePtr>::push_back[abi:ne200100](this + 24, &v31.fFINode);
          v24 = TNodeFromFINode(v31.fFINode);
          TNode::SuspendSynching(v24);
        }

        v29 = a2->fFINode;
        v30 = v31.fFINode;
        std::vector<std::pair<TNodePtr,TNodePtr>>::push_back[abi:ne200100](this, &v29);
        while (TNodeFromFINode(v31.fFINode))
        {
          v25 = TNodeFromFINode(v31.fFINode);
          TNode::IncrementReadersBelowBy(v25, 1);
          v26 = TNodeFromFINode(v31.fFINode);
          v27 = TNode::ParentLock(v26);
          os_unfair_lock_lock(v27);
          TNodePtr::TNodePtr(&v28, *(v26 + 48));
          os_unfair_lock_unlock(v27);
          TNodePtr::operator=(&v31.fFINode, &v28.fFINode);
        }
      }

      goto LABEL_15;
    }

LABEL_14:
    v18 = 4294959221;
LABEL_15:
    std::mutex::unlock(&TOperation::OperationLock(void)::gOperationLock);
    return v18;
  }

  return 4294959221;
}

void TLockManager::ReleaseLocks(TLockManager *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (v2 != *this)
  {
    do
    {
      v4 = v2 - 16;
      TLockManager::ReleaseLock(this, (v2 - 16), (v2 - 8));
      v2 = v4;
    }

    while (v4 != v3);
    v3 = *this;
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__base_destruct_at_end[abi:ne200100](this, v3);
  v5 = *(this + 3);
  v6 = *(this + 4);
  if (v5 != v6)
  {
    do
    {
      v7 = *v5;
      v8 = TNodeFromFINode(v7);
      TNode::ResumeSynching(v8);

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 3);
    v6 = *(this + 4);
  }

  while (v6 != v5)
  {
    v9 = *--v6;
  }

  *(this + 4) = v5;
}

void TOperation::IncrementOperationCounts(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v14);
  for (i = v14[0]; v14[0]; i = v14[0])
  {
    TDSOperationRecord::GetSource(i, &v13);
    TDSOperationRecord::GetResolvedDestination(v14[0], &v12);
    if (TNodeFromFINode(v13))
    {
      v4 = TNodeFromFINode(v13);
      TNode::GetVolumeInfo(v4, &v11);
      v5 = *(&v11 + 1);
      atomic_fetch_add((v11 + 176), 1u);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }

    if (TNodeFromFINode(v12))
    {
      v7 = TNodeFromFINode(v12);
      TNode::GetVolumeInfo(v7, &v11);
      v8 = *(&v11 + 1);
      atomic_fetch_add((v11 + 176), 1u);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    TOperation::GetNextOperationRecordForIterator(this[10], v6, &v11);
    v9 = v11;
    v11 = 0uLL;
    v10 = v14[1];
    *v14 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }
    }
  }

  if (v14[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14[1]);
  }
}

void sub_1E56CE9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void TOperation::DecrementOperationCounts(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v14);
  for (i = v14[0]; v14[0]; i = v14[0])
  {
    TDSOperationRecord::GetSource(i, &v13);
    TDSOperationRecord::GetResolvedDestination(v14[0], &v12);
    if (TNodeFromFINode(v13))
    {
      v4 = TNodeFromFINode(v13);
      TNode::GetVolumeInfo(v4, &v11);
      v5 = *(&v11 + 1);
      atomic_fetch_add((v11 + 176), 0xFFFFFFFF);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }

    if (TNodeFromFINode(v12))
    {
      v7 = TNodeFromFINode(v12);
      TNode::GetVolumeInfo(v7, &v11);
      v8 = *(&v11 + 1);
      atomic_fetch_add((v11 + 176), 0xFFFFFFFF);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    TOperation::GetNextOperationRecordForIterator(this[10], v6, &v11);
    v9 = v11;
    v11 = 0uLL;
    v10 = v14[1];
    *v14 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }
    }
  }

  if (v14[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14[1]);
  }
}

void sub_1E56CEAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TOperation::CheckSize(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v53);
  if (!v53[0])
  {
    goto LABEL_9;
  }

  v4 = v53[1];
  v51 = v53[0];
  v52 = v53[1];
  if (v53[1])
  {
    atomic_fetch_add_explicit(v53[1]->__m_.__opaque, 1uLL, memory_order_relaxed);
  }

  v5 = TOperation::ShouldCheckSize(v3, &v51);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!v5)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_89;
  }

  TDSOperationRecord::GetSource(v53[0], &v51);
  v6 = TNodeFromFINode(v51);
  TNode::DisplayName(v6, &v50);

  TDSOperationRecord::GetResolvedDestination(v53[0], &v49);
  if (TNodeFromFINode(v49))
  {
    v7 = TNodeFromFINode(v49);
    TNode::GetVolumeInfo(v7, &v51);
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v9 = 1;
  while (v53[0] && TDSOperationRecord::GetRequestedOperation(v53[0]))
  {
    v8 = TOperation::CheckSize(this, v53);
    if (v8)
    {
      goto LABEL_17;
    }

    v11 = v53[0];
    std::mutex::lock(v53[0]);
    v12 = v11[2].__m_.__opaque[48];
    std::mutex::unlock(v11);
    if ((v12 & 0x10) == 0)
    {
      v8 = 0;
LABEL_17:
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    v14 = v53[0];
    std::mutex::lock(v53[0]);
    v15 = v14[2].__m_.__opaque[48] << 26;
    std::mutex::unlock(v14);
    v8 = (v15 >> 31) & 0xFFFFE05F;
    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (TNodeFromFINode(v49) && BYTE5(v51[16].super.isa) == 1)
    {
      TDSOperationRecord::GetSource(v53[0], v48);
      v9 = TNode::NodesOnSameVolume(&v49, v48, v13);

      goto LABEL_23;
    }

LABEL_22:
    v9 = 0;
LABEL_23:
    TOperation::GetNextOperationRecordForIterator(this[10], v10, v48);
    v16 = *v48;
    v48[0] = 0;
    v48[1] = 0;
    v17 = v53[1];
    *v53 = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      if (v48[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
      }
    }

    if (v8)
    {
      goto LABEL_86;
    }
  }

  if (TNodeFromFINode(v49) == 0 || v9 || (BYTE3(v51[14].super.isa) & 1) != 0)
  {
    goto LABEL_85;
  }

  v18 = TNodeFromFINode(v49);
  TNode::RecalculateFreeSpaceAndCapacity(v18, 1);
  v19 = TNodeFromFINode(v49);
  TNode::GetVolumeInfo(v19, v48);
  FreeSpace = TFSVolumeInfo::GetFreeSpace(v48[0]);
  if (v48[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
  }

  v21 = TNodeFromFINode(v49);
  TNode::GetVolumeInfo(v21, v48);
  Capacity = TFSVolumeInfo::GetCapacity(v48[0]);
  if (v48[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
  }

  v24 = this[27];
  v25 = this[293];
  v26 = v24 - v25;
  if (v24 <= v24 - v25)
  {
    v27 = (v24 - v25);
  }

  else
  {
    v27 = this[27];
  }

  if (*(this + 2378))
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= FreeSpace)
  {
    goto LABEL_70;
  }

  if ((Capacity & 0x8000000000000000) == 0 && v28 > Capacity)
  {
    goto LABEL_53;
  }

  v29 = TNodeFromFINode(v49);
  TNode::GetVolumeInfo(v29, v48);
  if (*(v48[0] + 104))
  {
    v30 = 1;
  }

  else
  {
    v31 = *(this + 594);
    v32 = v48[1];
    if (v48[1])
    {
      atomic_fetch_add_explicit(v48[1] + 1, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v33 = TNodeFromFINode(v49);
    TNode::RecalculateFreeSpaceAndCapacity(v33, 1);
    FreeSpace = TFSVolumeInfo::GetFreeSpace(v48[0]);
    v30 = v28 <= FreeSpace || (v31 & 0x1000) != 0;
  }

  if (v48[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
  }

  if (v30)
  {
LABEL_53:
    TOperation::GetFirstOperationRecordForIterator(this[10], v22, v48);
    v34 = *v48;
    v48[0] = 0;
    v48[1] = 0;
    v35 = v53[1];
    *v53 = v34;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      if (v48[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
      }

      v36 = v53[0];
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      while (TDSOperationRecord::GetRequestedOperation(v36))
      {
        if (v26 > FreeSpace)
        {
          TDSOperationRecord::AddConflict(v53[0], 32);
        }

        if (v24 > FreeSpace)
        {
          TDSOperationRecord::AddConflict(v53[0], 64);
        }

        v37 = this[10];
        this[11] = (this[11] + 1);
        TOperation::GetNextOperationRecordForIterator(v37, v22, v48);
        v38 = *v48;
        v48[0] = 0;
        v48[1] = 0;
        v39 = v53[1];
        *v53 = v38;
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          if (v48[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
          }

          v36 = v53[0];
          if (!v53[0])
          {
            break;
          }
        }

        else
        {
          v36 = v38;
          if (!v38)
          {
            break;
          }
        }
      }
    }

LABEL_70:
    if (this[36] > FreeSpace)
    {
      TOperation::GetFirstOperationRecordForIterator(this[10], v22, v48);
      v40 = *v48;
      v48[0] = 0;
      v48[1] = 0;
      v41 = v53[1];
      *v53 = v40;
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        if (v48[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
        }

        v42 = v53[0];
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        while (TDSOperationRecord::GetRequestedOperation(v42))
        {
          TDSOperationRecord::AddConflict(v53[0], 0x10000000);
          v43 = this[10];
          this[11] = (this[11] + 1);
          TOperation::GetNextOperationRecordForIterator(v43, v44, v48);
          v45 = *v48;
          v48[0] = 0;
          v48[1] = 0;
          v46 = v53[1];
          *v53 = v45;
          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            if (v48[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v48[1]);
            }

            v42 = v53[0];
          }

          else
          {
            v42 = v45;
          }

          v8 = 0;
          if (!v42)
          {
            goto LABEL_86;
          }
        }
      }
    }

LABEL_85:
    v8 = 0;
LABEL_86:
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
    goto LABEL_89;
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
  v8 = 4294967168;
LABEL_89:
  if (v53[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53[1]);
  }

  return v8;
}

void sub_1E56CF000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a12);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

BOOL TOperation::ShouldCheckSize(uint64_t a1, TDSOperationRecord **a2)
{
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
  if (RequestedOperation == 3)
  {
    return 1;
  }

  if (RequestedOperation == 2)
  {
    return TDSOperationRecord::CompletedOperation(*a2) != 2;
  }

  return 0;
}

uint64_t TOperation::CheckSize(uint64_t a1, uint64_t a2)
{
  TDSOperationRecord::GetSource(*a2, &v40);
  TDSOperationRecord::GetResolvedDestination(*a2, &v39);
  if (!TNodeFromFINode(v40))
  {
    v4 = 4294959238;
    goto LABEL_84;
  }

  v4 = (*(*a1 + 24))(a1, &v40, &v39, a2);
  if (v4)
  {
    if (!TNodeFromFINode(*(a1 + 2520)))
    {
      objc_storeStrong((a1 + 2520), v40);
    }

    goto LABEL_84;
  }

  TDSOperationRecord::SetPhysicalSizeNeeded(*a2, *(a1 + 216));
  TDSOperationRecord::SetLogicalSize(*a2, *(a1 + 208));
  TDSOperationRecord::SetItemCount(*a2, *(a1 + 200));
  v5 = *(a1 + 2364);
  *(a1 + 2384) = *(a1 + 2352);
  if (TNodeFromFINode(v39))
  {
    v6 = TNodeFromFINode(v39);
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    v38 = 0;
    TFSInfo::GetVolumeInfoRecord(v9, v37);
    if ((v5 & 0x1000) != 0 && (TDSOperationRecord::GetConflict(*a2) & 0x1000) == 0)
    {
      TDSOperationRecord::AddConflict(*a2, 4096);
      ++*(a1 + 88);
    }

    if ((v5 & 0x4000) != 0 && (v37[0] & 0x80) == 0 && (TDSOperationRecord::GetConflict(*a2) & 0x4000) == 0)
    {
      TDSOperationRecord::AddConflict(*a2, 0x4000);
      ++*(a1 + 88);
    }

    if ((v5 & 0x200) != 0)
    {
      TDSOperationRecord::AddConflict(*a2, 512);
      ++*(a1 + 88);
    }

    if ((v5 & 0x800001) != 0 && (*(a1 + 224) || *(a1 + 240) || *(a1 + 248) || *(a1 + 232) || *(a1 + 256) || *(a1 + 264) || *(a1 + 272) || *(a1 + 280) || *(a1 + 296) || *(a1 + 1320)))
    {
      std::mutex::lock((a1 + 2448));
      theString = a2;
      v10 = std::__hash_table<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::__unordered_map_hasher<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::hash<std::shared_ptr<TDSOperationRecord>>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,true>,std::__unordered_map_equal<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,std::hash<std::shared_ptr<TDSOperationRecord>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>>>::__emplace_unique_key_args<std::shared_ptr<TDSOperationRecord>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<TDSOperationRecord> const&>,std::tuple<>>((a1 + 2408), a2);
      *(v10 + 8) += *(a1 + 224);
      *(v10 + 9) += *(a1 + 240);
      v10[5] += *(a1 + 248);
      v11 = *(v10 + 13);
      *(v10 + 12) += *(a1 + 232);
      v12 = *(v10 + 16);
      *(v10 + 17) += *(a1 + 256);
      *(v10 + 13) = v11 + *(a1 + 264);
      v10[7] += *(a1 + 272);
      *(v10 + 16) = v12 + *(a1 + 280);
      TMergeConflictRecord::SetMergeSourceConflict(v10 + 4, (a1 + 296));
      TMergeConflictRecord::SetMergeDestinationConflict(v10 + 4, (a1 + 1320));
      if ((*(*a1 + 264))(a1))
      {
        if (v10[5])
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v10 + 17) == 0;
        }

        v14 = v13;
        *(v10 + 104) = v14;
        if (v13)
        {
          v15 = TNodeFromFINode(v39);
          TNode::CFURL(v15, &v34);
          v16 = v34;
          v17 = [v16 path];
          v35.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v35, v17);

          v18 = *(a2 + 8);
          theString = *a2;
          v32 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*a1 + 256))(&v33, a1, &theString);
          AppendPath(&v35, &v33, &v36);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v33.fString.fRef);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);

          TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v34);
          v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v36];
          TCFURLInfo::SourcePathForResumableCopy(v19, &theString);

          if (CFStringGetLength(theString))
          {
            v20 = MEMORY[0x1E695DFF8];
            v21 = TString::operator NSString *(&theString);
            v22 = [v20 fileURLWithPath:v21];
            v23 = TNodeFromFINode(v40);
            TNode::CFURL(v23, &v35);
            *(v10 + 104) = IsEqual(v22, v35.fString.fRef);
            TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v35.fString.fRef);
          }

          else
          {
            *(v10 + 104) = 0;
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v36);
        }
      }

      else
      {
        *(v10 + 104) = v10[7] > 0;
      }

      std::mutex::unlock((a1 + 2448));
    }

    if ((v5 & 0x20000000) != 0)
    {
      TDSOperationRecord::AddConflict(*a2, 1);
      ++*(a1 + 88);
    }

    if ((v5 & 0x10000000) != 0)
    {
      TDSOperationRecord::AddConflict(*a2, 0x10000000);
      ++*(a1 + 88);
    }

    if ((v5 & 0x40000000) != 0)
    {
      TDSOperationRecord::AddConflict(*a2, 0x40000000);
      ++*(a1 + 88);
    }

    if ((v5 & 0x100000) != 0 && (TDSOperationRecord::GetConflict(*a2) & 0x100000) == 0)
    {
      TDSOperationRecord::AddConflict(*a2, 0x100000);
      ++*(a1 + 88);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v24 = *a2;
  std::mutex::lock(*a2);
  v25 = *(v24 + 184);
  std::mutex::unlock(v24);
  if ((v25 & 0x10) != 0 && (v5 < 0 || (*(a1 + 2377) & 0xA) != 0))
  {
    TDSOperationRecord::SetNeedsAuthentication(*a2, 1);
    TDSOperationRecord::AddOperationOptions(*a2, 64);
  }

  else
  {
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    v27 = *(a2 + 8);
    v37[0] = *a2;
    v37[1] = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    if (TOperation::CanAuthenticate(v26, v37))
    {
      TDSOperationRecord::GetSource(*a2, &theString);
      if (TNodeFromFINode(theString))
      {
        TDSOperationRecord::GetSource(*a2, &v36);
        v28 = TNodeFromFINode(v36);
        IsLocalVolume = TNode::IsLocalVolume(v28);
      }

      else
      {
        IsLocalVolume = 0;
      }
    }

    else
    {
      IsLocalVolume = 0;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if ((IsLocalVolume & 1) != 0 || (TDSOperationRecord::GetConflict(*a2) & 0x800) != 0)
    {
      if ((TDSOperationRecord::GetConflict(*a2) & 0x400) != 0)
      {
        goto LABEL_80;
      }

      TDSOperationRecord::AddConflict(*a2, 1024);
      TDSOperationRecord::SetNeedsAuthentication(*a2, 1);
    }

    else
    {
      TDSOperationRecord::AddConflict(*a2, 2048);
    }
  }

  ++*(a1 + 88);
LABEL_80:
  if ((v5 & 0x8000) != 0 && (TDSOperationRecord::GetConflict(*a2) & 0x8000) == 0)
  {
    TDSOperationRecord::AddConflict(*a2, 0x8000);
    ++*(a1 + 88);
  }

  v4 = 0;
  *(a1 + 2364) = 0;
LABEL_84:

  return v4;
}

void sub_1E56CF7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, id a19)
{
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a13);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a14);
  std::mutex::unlock((v19 + 2448));

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

const void **TMergeConflictRecord::SetMergeSourceConflict(const void **this, char *__s)
{
  if (!this[5])
  {
    if (__s)
    {
      v3 = strlen(__s);
      v4 = CFURLCreateFromFileSystemRepresentation(0, __s, v3, 0);
      if (v4)
      {
        _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }
    }

    else
    {
      v4 = 0;
    }

    return TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v4);
  }

  return this;
}

void sub_1E56CF9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}