void sub_1E56A8B24(_Unwind_Exception *a1, char a2, TPropertyValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  TPropertyValue::~TPropertyValue(&a11);

  _Unwind_Resume(a1);
}

uint64_t TNode::FollowAlias(TNode *a1, int a2)
{
  if ((a2 & 0x20000) != 0 && TNode::IsInTrash(a1))
  {
    v3 = 4294959232;
    TNode::ClearAliasTarget(a1, 1);
  }

  else
  {
    if (!TNode::ResolveFPProvider(a1))
    {
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    TNode::GetAliasTarget(a1, &v6);
    v4 = v6;
    if (TNodeFromFINode(v6))
    {
      v3 = 0;
    }

    else
    {
      v3 = 4294959232;
    }
  }

  return v3;
}

void sub_1E56A8CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::ResolveFPProvider(TNode *this)
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
  v5 = *(v4 + 127);
  os_unfair_lock_unlock((v4 + 108));
  if ((v5 & 0x40) != 0)
  {
    if (!TNodeFromFINode(*(this + 4)))
    {
      goto LABEL_9;
    }

    v6 = TNodeFromFINode(*(this + 4));
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v7);
      v10 = *(v9 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      os_unfair_lock_unlock(v7);
      v10 = *(v9 + 120);
    }

    if (v10 == 16)
    {
LABEL_9:
      TFSInfo::ObjectIdentifier(v4, &v21);
      TNode::FPItemNodeFromObjectID(&v21, &v20);
      TNode::SetAliasTarget(this, &v20, 1);
      if (TNodeFromFINode(*(this + 4)))
      {
        v11 = TNodeFromFINode(*(this + 4));
        v12 = TNode::InfoLock(v11);
        os_unfair_lock_lock(v12);
        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v12);
          v15 = *(v14 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        else
        {
          os_unfair_lock_unlock(v12);
          v15 = *(v14 + 120);
        }

        v16 = v15 != 16;
      }

      else
      {
        v16 = 0;
      }

      os_unfair_lock_lock((v4 + 108));
      v17 = *(v4 + 123) & 1;
      os_unfair_lock_unlock((v4 + 108));
      if (v16 != v17)
      {
        TFSInfo::SetIsInvisible(v4, v16 ^ 1);
        TNodePtr::TNodePtr(&v19, this);
        TNode::SendNotification(this, 2, &v19.fFINode, 1987273324, 0);
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21.fString.fRef);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 >> 6) & 1;
}

void sub_1E56A8F10(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, ...)
{
  va_start(va, a4);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::FollowAlias(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  os_unfair_lock_lock((a1 + 108));
  v6 = *(a1 + 16);
  v10 = v6;
  if (v6)
  {
    CFRetain(v6);
    os_unfair_lock_unlock((a1 + 108));
    if (*(a1 + 120) == 7)
    {
      v7 = TFSInfo::initialize(*a3, v6, 0, 1, 1, 1, 0);
    }

    else
    {
      v7 = TFSInfo::FollowAliasOrSymlinkDeep(a1, a2, a3, 0);
    }

    v8 = v7;
  }

  else
  {
    os_unfair_lock_unlock((a1 + 108));
    v8 = 4294959232;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v10);
  return v8;
}

void sub_1E56A9024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

CFIndex TFSInfo::FollowAliasOrSymlinkDeep(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v56[123] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 108));
  v8 = *(a1 + 16);
  v48 = v8;
  if (v8)
  {
    CFRetain(v8);
    os_unfair_lock_unlock((a1 + 108));
    if (TFSInfo::IsAlias(a1) && !*(a1 + 120))
    {
      os_unfair_lock_lock((a1 + 108));
      v9 = *(a1 + 123);
      os_unfair_lock_unlock((a1 + 108));
      if ((v9 & 0x40) == 0)
      {
        os_unfair_lock_lock((a1 + 108));
        v10 = *(a1 + 16);
        theString = v10;
        if (v10)
        {
          CFRetain(v10);
        }

        os_unfair_lock_unlock((a1 + 108));
        anURL = 0;
        if ((a2 & 2) != 0)
        {
          BooleanProperty = TCFURLInfo::GetBooleanProperty(*(a1 + 8), *MEMORY[0x1E695ED38], v11);
        }

        else
        {
          BooleanProperty = 1;
        }

        *__s = 0;
        v51 = __s;
        v52 = 0x3812000000;
        v53 = __Block_byref_object_copy_;
        v54 = __Block_byref_object_dispose_;
        v55 = "";
        v56[0] = 0;
        if (BooleanProperty)
        {
          os_unfair_lock_lock((a1 + 108));
          v19 = *(a1 + 127);
          os_unfair_lock_unlock((a1 + 108));
          if ((v19 & 2) != 0 || (TCFURLInfo::GetNumericalProperty(*(a1 + 8), *MEMORY[0x1E695E2A8], v20) & 0x40000000) != 0)
          {
            v21 = NewFileCoordinator();
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = ___ZNK7TFSInfo24FollowAliasOrSymlinkDeepE18NodeRequestOptionsRNSt3__110shared_ptrIS_EEi_block_invoke;
            v44[3] = &unk_1E877F1A8;
            v44[4] = __s;
            v45 = BooleanProperty;
            [v21 coordinateReadingItemAtURL:theString options:1 error:0 byAccessor:v44];
          }

          else
          {
            buf[0].fString.fRef = MEMORY[0x1E692C460](0, theString, 0);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v51 + 6, buf[0].fString.fRef);
            TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&buf[0].fString.fRef);
          }
        }

        if (!*(v51 + 6))
        {
          goto LABEL_56;
        }

        if ((a2 & 2) != 0)
        {
          v22 = MEMORY[0x1E692C4C0](0, *MEMORY[0x1E695ED38]);
          buf[0].fString.fRef = v22;
          if (v22 && (v23 = CFGetTypeID(v22), v23 == CFBooleanGetTypeID()))
          {
            v24 = IsEqual(buf[0].fString.fRef, *MEMORY[0x1E695E4C0]);
            TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&buf[0].fString.fRef);
            if (v24)
            {
              goto LABEL_56;
            }
          }

          else
          {
            TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&buf[0].fString.fRef);
          }
        }

        if (a2)
        {
          v30 = 0;
        }

        else
        {
          v30 = 768;
        }

        buf[0].fString.fRef = 0;
        LOBYTE(v41) = 0;
        anURL = MEMORY[0x1E692C470](0, *(v51 + 6), v30, theString, 0, &v41, buf);
        if (anURL)
        {
          fRef_low = 0;
        }

        else
        {
          fRef_low = 4294959232;
        }

        if (buf[0].fString.fRef)
        {
          fRef_low = TCFURLInfo::TranslateCFError(buf[0].fString.fRef, v31);
          if (fRef_low == 60)
          {
            TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&buf[0].fString.fRef);
            if (a2)
            {
              fRef_low = 4294967168;
LABEL_57:
              _Block_object_dispose(__s, 8);
              TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(v56);
              TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&anURL);
              TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&theString);
              goto LABEL_11;
            }

            goto LABEL_56;
          }
        }

        if (!v41 || fRef_low)
        {
          TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&buf[0].fString.fRef);
          if (fRef_low == -128)
          {
            goto LABEL_57;
          }

          if (fRef_low)
          {
LABEL_56:
            fRef_low = 4294959232;
            goto LABEL_57;
          }
        }

        else
        {
          v43 = MEMORY[0x1E692C450](0, anURL, 1024, 0, theString, 0);
          MEMORY[0x1E692C590](v43, theString, 0, 0);
          TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v43);
          TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&buf[0].fString.fRef);
        }

        if (!anURL)
        {
          goto LABEL_56;
        }

        v32 = CFURLCopyScheme(anURL);
        v43 = v32;
        buf[0].fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(buf, v32);
        LODWORD(v32) = TFSInfo::IsNetworkScheme(buf, v33);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&buf[0].fString.fRef);
        if (v32)
        {
          if ((a2 & 2) == 0)
          {
            v42 = 0;
            v41 = TFSInfo::SFNodeFromURL(anURL, 1, &v42);
            if (v41)
            {
              std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FSInfoVirtualType &,__SFNode *&,0>();
            }

            goto LABEL_71;
          }

          goto LABEL_72;
        }

        v37 = v43;
        buf[0].fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(buf, v37);
        v39 = TFSInfo::FileScheme(v38);
        v40 = CFEqual(buf[0].fString.fRef, *v39);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&buf[0].fString.fRef);
        if (!v40)
        {
          fRef_low = 4294967168;
          goto LABEL_74;
        }

        fRef_low = TFSInfo::initialize(*a3, anURL, 0, 1, 1, 1, 0);
        if (!fRef_low)
        {
          if ((a2 & 8) == 0 || !TFSInfo::IsAlias(*a3))
          {
LABEL_71:
            fRef_low = 0;
            goto LABEL_74;
          }

          if (a4 > 8)
          {
LABEL_72:
            fRef_low = 4294959232;
            goto LABEL_74;
          }

          fRef_low = TFSInfo::FollowAliasOrSymlinkDeep(a1, a2, a3, (a4 + 1));
        }

LABEL_74:
        TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v43);
        goto LABEL_57;
      }

      TFSInfo::Path(a1, &theString);
      if (CFStringGetLength(theString))
      {
        v16 = TString::c_str(&theString);
        if (realpath_DARWIN_EXTSN(v16, __s))
        {
          v17 = strlen(__s);
          v18 = CFURLCreateFromFileSystemRepresentation(0, __s, v17, 1u);
          buf[0].fString.fRef = v18;
          if (v18)
          {
            fRef_low = TFSInfo::initialize(*a3, v18, 0, 1, 1, 1, 0);
          }

          else
          {
            fRef_low = 4294959236;
          }

          TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&buf[0].fString.fRef);
        }

        else
        {
          v25 = *__error();
          v26 = LogObj(4);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = SanitizedPath(&theString);
            v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v25 userInfo:0];
            LODWORD(buf[0].fString.fRef) = 138543618;
            *(&buf[0].fString.fRef + 4) = v27;
            WORD2(buf[1].fString.fRef) = 2114;
            *(&buf[1].fString.fRef + 6) = v28;
            _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_ERROR, "realpath error: %{public}@: %{public}@", buf, 0x16u);
          }

          if (v25 != 11)
          {
            fRef_low = 4294959236;
            goto LABEL_63;
          }

          v29 = TString::operator NSString *(&v48);
          MyFPResolveSymlink(v29, buf);

          fRef_low = LODWORD(buf[1].fString.fRef);
          if (!LODWORD(buf[1].fString.fRef))
          {
            fRef_low = TFSInfo::initialize(*a3, buf[0].fString.fRef, 0, 1, 1, 1, 0);
          }
        }

        if (!fRef_low)
        {
          v34 = *a3;
          os_unfair_lock_lock((v34 + 108));
          v35 = *(v34 + 123);
          os_unfair_lock_unlock((v34 + 108));
          os_unfair_lock_lock((a1 + 108));
          v36 = (v35 << 12) & 0x20000;
LABEL_64:
          *(a1 + 123) = *(a1 + 123) & 0xFFFDFFFF | v36;
          os_unfair_lock_unlock((a1 + 108));
          os_unfair_lock_lock((a1 + 108));
          *(a1 + 127) &= ~1u;
          os_unfair_lock_unlock((a1 + 108));
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
          goto LABEL_11;
        }
      }

      else
      {
        fRef_low = 4294959238;
      }

LABEL_63:
      os_unfair_lock_lock((a1 + 108));
      v36 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    os_unfair_lock_unlock((a1 + 108));
  }

  fRef_low = 4294959238;
LABEL_11:
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v48);
  v14 = *MEMORY[0x1E69E9840];
  return fRef_low;
}

void sub_1E56A9778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&a12);
  _Block_object_dispose(&a27, 8);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef((v27 + 48));
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&a19);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a20);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a21);
  _Unwind_Resume(a1);
}

const void *cf_cast<__CFURL const*,void const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFURLGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void TString::TString(TString *this, TString *a2)
{
  this->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(this, a2);
}

{
  this->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(this, a2);
}

uint64_t TNode::GetNodeFromFSInfo(TFSInfo **a1, void **a2)
{
  TNodePtr::TNodePtr(&v33, 0);
  TNodePtr::operator=(a2, &v33.fFINode);

  v4 = *a1;
  if (*(*a1 + 120))
  {
    if (*(*a1 + 120) == 24)
    {
      TGlobalNodes::iCloudLibrariesContainerNode(&v33);
      TNodePtr::operator=(a2, &v33.fFINode);

      return 0;
    }

    else
    {
      return 4294959238;
    }
  }

  else
  {
    os_unfair_lock_lock(v4 + 27);
    v6 = *(v4 + 2);
    v31 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    os_unfair_lock_unlock(v4 + 27);
    v33.fFINode = v31;
    NodeFromURL = TNode::GetNodeFromURL(&v33, a2, 0);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v31);
    if (TNodeFromFINode(*a2) && (TFSInfo::IsLocalVolume(*a1, v7, v8) & 1) == 0)
    {
      v9 = TNodeFromFINode(*a2);
      v10 = TNode::ParentLock(v9);
      os_unfair_lock_lock(v10);
      TNodePtr::TNodePtr(&v35, *(v9 + 48));
      os_unfair_lock_unlock(v10);
      while (TNodeFromFINode(v35.fFINode))
      {
        v11 = TNodeFromFINode(v35.fFINode);
        v12 = TNode::InfoLock(v11);
        os_unfair_lock_lock(v12);
        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v12);
        os_unfair_lock_lock((v14 + 108));
        v15 = *(v14 + 123);
        os_unfair_lock_unlock((v14 + 108));
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if ((v15 & 0x100) != 0)
        {
          break;
        }

        v16 = TNodeFromFINode(v35.fFINode);
        TNode::GetVolumeInfo(v16, &v33);
        v17 = TNodeFromFINode(*a2);
        TNode::GetVolumeInfo(v17, &v31);
        fFINode = v33.fFINode;
        v19 = v31;
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (fFINode != v19)
        {
          break;
        }

        v20 = TNodeFromFINode(v35.fFINode);
        v21 = TNode::ParentLock(v20);
        os_unfair_lock_lock(v21);
        TNodePtr::TNodePtr(&v33, *(v20 + 48));
        os_unfair_lock_unlock(v21);
        TNodePtr::operator=(&v35.fFINode, &v33.fFINode);
      }

      if (TNodeFromFINode(v35.fFINode))
      {
        v22 = TNodeFromFINode(v35.fFINode);
        v23 = TNode::InfoLock(v22);
        os_unfair_lock_lock(v23);
        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v23);
        os_unfair_lock_lock((v25 + 108));
        v26 = *(v25 + 123);
        os_unfair_lock_unlock((v25 + 108));
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if ((v26 & 0x100) == 0)
        {
          v27 = TNodeFromFINode(v35.fFINode);
          TNode::HandleSync(v27, 0x80000);
          v28 = *a1;
          os_unfair_lock_lock(*a1 + 27);
          v29 = *(v28 + 2);
          v31 = v29;
          if (v29)
          {
            CFRetain(v29);
          }

          os_unfair_lock_unlock(v28 + 27);
          v33.fFINode = v29;
          NodeFromURL = TNode::GetNodeFromURL(&v33, a2, 0);
          TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v31);
        }
      }
    }

    if (!NodeFromURL)
    {
      if (TNodeFromFINode(*a2))
      {
        return 0;
      }

      else
      {
        return 4294959238;
      }
    }
  }

  return NodeFromURL;
}

void sub_1E56A9C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  os_unfair_lock_unlock(v14 + 27);

  _Unwind_Resume(a1);
}

uint64_t TNode::Compare(TNode *this, const TString *a2)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  if (v6)
  {
    os_unfair_lock_lock((v6 + 108));
    v7 = *(v6 + 123);
    os_unfair_lock_unlock((v6 + 108));
    if ((v7 & 0x80000000) == 0)
    {
      if (*(v6 + 120))
      {
        if (*(v6 + 120) == 22)
        {
          TFSInfo::Name(v6, &cf);
          if (cf && (v8 = CFRetain(cf), (v9 = static_cf_cast<__CFString const*,void const*>(v8)) != 0))
          {
            v10 = CFAutorelease(v9);
            v11 = static_cf_cast<__CFString const*,void const*>(v10);
          }

          else
          {
            v11 = 0;
          }

          v15 = RetainCF<__CFString const*>(&a2->fString.fRef);
          if (v15)
          {
            v16 = CFAutorelease(v15);
            v17 = static_cf_cast<__CFString const*,void const*>(v16);
          }

          else
          {
            v17 = 0;
          }

          v14 = SpotlightStringCompare(v11, v17);
LABEL_21:
          v12 = v14;
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
          if (!v5)
          {
            return v12;
          }

          goto LABEL_11;
        }
      }

      else if (!TFSInfo::IsBootVolume(v6))
      {
        TFSInfo::Name(v6, &cf);
        v14 = TString::StringCompare(&cf, a2);
        goto LABEL_21;
      }

      TFSInfo::DisplayName(v6, &cf);
      v14 = TString::StringCompare(&cf, a2);
      goto LABEL_21;
    }
  }

  v12 = -1;
  if (v5)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v12;
}

void sub_1E56A9E74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void *TNodePtr::TNodePtr(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

BOOL TFSInfo::LessThan(TFSInfo *this, TFSInfo **a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a2 == this)
  {
    goto LABEL_20;
  }

  v4 = *(this + 120);
  if (v4 == 26)
  {
    v5 = TFSInfo::GetFPItem(this);
    v6 = [v5 itemIdentifier];
    v7 = TFSInfo::GetFPItem(*a2);
    v8 = [v7 itemIdentifier];
    v9 = [v6 compare:v8];
    goto LABEL_4;
  }

  if ((v4 & 0xFE) == 0x18)
  {
    v10 = v4 == 24;
    goto LABEL_21;
  }

  if (v4 != 29)
  {
    if (v4 == 28)
    {
      os_unfair_lock_lock(this + 26);
      v5 = *(this + 10);
      if (v5)
      {
        os_unfair_lock_lock(v5 + 18);
        v11 = v5[76];
        os_unfair_lock_unlock(v5 + 18);
        if (v11 == 1)
        {
          v5 = *(v5 + 3);
        }

        else
        {
          v5 = 0;
        }
      }

      os_unfair_lock_unlock(this + 26);
      v28 = *a2;
      os_unfair_lock_lock(v28 + 26);
      v6 = *(v28 + 10);
      if (v6)
      {
        os_unfair_lock_lock(v6 + 18);
        v29 = v6[76];
        os_unfair_lock_unlock(v6 + 18);
        if (v29 == 1)
        {
          v6 = *(v6 + 3);
        }

        else
        {
          v6 = 0;
        }
      }

      os_unfair_lock_unlock(v28 + 26);
      if (!v5 && v6)
      {
        v10 = 1;
        goto LABEL_5;
      }

      if (!v6)
      {
        v10 = 0;
        goto LABEL_5;
      }

      v7 = [v5 identifier];
      v8 = [v6 identifier];
      v9 = [v7 compare:v8];
LABEL_4:
      v10 = v9 == 1;

LABEL_5:
      goto LABEL_21;
    }

    TFSInfo::Name(this, &v39);
    TFSInfo::Name(*a2, &v36);
    v15 = TString::StringCompare(&v39, &v36);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v36.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v39.fString.fRef);
    if (v15 == kCFCompareLessThan)
    {
      v10 = 1;
      goto LABEL_21;
    }

    if (v15 == kCFCompareEqualTo)
    {
      VolumeIdentifier = TFSInfo::GetVolumeIdentifier(this);
      v17 = TFSInfo::GetVolumeIdentifier(*a2);
      if (VolumeIdentifier == v17)
      {
        ObjectIdentifier = TFSInfo::GetObjectIdentifier(this);
        v10 = ObjectIdentifier > TFSInfo::GetObjectIdentifier(*a2);
      }

      else
      {
        v10 = VolumeIdentifier < v17;
      }

      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  v12 = TFSInfo::GetFPItem(this);
  v13 = TFSInfo::GetFPItem(*a2);
  v14 = v13;
  if (v12 || !v13)
  {
    if (v13)
    {
      TFSInfo::Name(this, &v35);
      TFSInfo::Name(*a2, &v34);
      TString::TString(&v39.fString.fRef, &v35.fString.fRef);
      TString::TString(&v40, &v34.fString.fRef);
      v33 = [v12 providerDomainID];
      v32 = [v14 providerDomainID];
      std::pair<TString,TString>::pair[abi:ne200100]<NSString * {__strong},NSString * {__strong},0>(&v41, &v33, &v32);
      v21 = [v12 itemID];
      v31 = [v21 identifier];
      v22 = [v14 itemID];
      v30 = [v22 identifier];
      std::pair<TString,TString>::pair[abi:ne200100]<NSString * {__strong},NSString * {__strong},0>(&v42, &v31, &v30);
      v36.fString.fRef = 0;
      v37 = 0;
      v38 = 0;
      std::vector<std::pair<TString,TString>>::__init_with_size[abi:ne200100]<std::pair<TString,TString> const*,std::pair<TString,TString> const*>(&v36, &v39, &v43, 3uLL);
      v23 = 6;
      do
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((&v38 + v23 * 8));
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&(&v37)[v23]);
        v23 -= 2;
      }

      while (v23 * 8);

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);
      fRef = v36.fString.fRef;
      v25 = v37;
      while (1)
      {
        if (fRef == v25)
        {
LABEL_41:
          v10 = 0;
          goto LABEL_46;
        }

        v26 = fRef + 1;
        v27 = TString::StringCompare(fRef, fRef + 1);
        if (v27 == kCFCompareLessThan)
        {
          break;
        }

        if (v27 == kCFCompareGreaterThan)
        {
          goto LABEL_41;
        }

        fRef = v26 + 1;
      }

      v10 = 1;
LABEL_46:
      v39.fString.fRef = &v36;
      std::vector<std::pair<TString,TString>>::__destroy_vector::operator()[abi:ne200100](&v39);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1E56AA368(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v13 = va_arg(va1, const void *);
  v11 = (v9 + 40);
  v12 = -48;
  do
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v11);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v11 - 1);
    v11 -= 2;
    v12 += 16;
  }

  while (v12);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::Equal(TFSInfo *this, TFSInfo **a2)
{
  v4 = *(this + 120);
  if (v4 == 26)
  {
    v5 = TFSInfo::GetFPItem(this);
    v6 = [v5 itemIdentifier];
    v7 = TFSInfo::GetFPItem(*a2);
    v8 = [v7 itemIdentifier];
    v9 = [v6 compare:v8] == 0;

LABEL_31:
    return v9;
  }

  if ((v4 & 0xFE) == 0x18)
  {
    return v4 == *(*a2 + 120);
  }

  if (v4 == 29)
  {
    v5 = TFSInfo::GetFPItem(this);
    v11 = TFSInfo::GetFPItem(*a2);
    v12 = v11;
    if (v5 || !v11)
    {
      if (!v11)
      {
        goto LABEL_29;
      }

      v9 = [v5 isEqualToItem:v11];
    }

    else
    {
      v9 = 1;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (v4 == 28)
  {
    os_unfair_lock_lock(this + 26);
    v5 = *(this + 10);
    if (v5)
    {
      os_unfair_lock_lock(v5 + 18);
      v10 = v5[76];
      os_unfair_lock_unlock(v5 + 18);
      if (v10 == 1)
      {
        v5 = *(v5 + 3);
      }

      else
      {
        v5 = 0;
      }
    }

    os_unfair_lock_unlock(this + 26);
    v17 = *a2;
    os_unfair_lock_lock(*a2 + 26);
    v12 = *(v17 + 10);
    if (v12)
    {
      os_unfair_lock_lock(v12 + 18);
      v18 = v12[76];
      os_unfair_lock_unlock(v12 + 18);
      if (v18 == 1)
      {
        v12 = *(v12 + 3);
      }

      else
      {
        v12 = 0;
      }
    }

    os_unfair_lock_unlock(v17 + 26);
    if ((v5 == 0) != (v12 != 0))
    {
      v19 = [v5 identifier];
      v20 = [v12 identifier];
      v9 = [v19 compare:v20] == 0;

      goto LABEL_30;
    }

LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  if (!*(this + 1))
  {
    return 0;
  }

  if (!*(*a2 + 1))
  {
    return 0;
  }

  ObjectIdentifier = TFSInfo::GetObjectIdentifier(this);
  if (ObjectIdentifier != TFSInfo::GetObjectIdentifier(*a2))
  {
    return 0;
  }

  VolumeIdentifier = TFSInfo::GetVolumeIdentifier(this);
  if (VolumeIdentifier != TFSInfo::GetVolumeIdentifier(*a2))
  {
    return 0;
  }

  TFSInfo::Name(this, &v23);
  TFSInfo::Name(*a2, &v22);
  v15 = CFEqual(v23.fString.fRef, v22.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
  if (!v15)
  {
    return 0;
  }

  IsSymlink = TFSInfo::IsSymlink(this);
  return IsSymlink ^ TFSInfo::IsSymlink(*a2) ^ 1;
}

void sub_1E56AA7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

BOOL TFSVolumeInfo::SamePhysicalDevice(TFSVolumeInfo *this, const TFSVolumeInfo *a2)
{
  v3 = *(this + 40);
  v2 = *(this + 41);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 40);
  v4 = *(a2 + 41);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v3 == v5;
}

void TNode::GetVolumeNode(TGlobalNodes *a1@<X0>, TNodePtr *a2@<X8>)
{
  TGlobalNodes::RootNode(&v16, a1);
  if (TNodeFromFINode(v16))
  {
    TNode::StPopulating::StPopulating(v15, &v16, 0);
    v4 = *(TNodeFromFINode(v16) + 56);
    if (v4)
    {
      v5 = (v4 + 64);
    }

    else
    {
      v5 = &TNode::GetChildren(void)const::sEmptyList;
    }

    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      do
      {
        v8 = TNodeFromFINode(*v6);
        v9 = TNode::InfoLock(v8);
        os_unfair_lock_lock(v9);
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v9);
        TFSInfo::GetVolumeID(v11, &cf1);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v12 = TNodeFromFINode(*v6);
        if (!TNode::VirtualType(v12))
        {
          v13 = *a1;
          if (cf1 && v13)
          {
            if (CFEqual(cf1, v13))
            {
              goto LABEL_20;
            }
          }

          else if (!(cf1 | v13))
          {
LABEL_20:
            a2->fFINode = *v6;
            TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&cf1);
            TNode::StPopulating::~StPopulating(v15);
            goto LABEL_19;
          }
        }

        TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&cf1);
        ++v6;
      }

      while (v6 != v7);
    }

    TNode::StPopulating::~StPopulating(v15);
  }

  TNodePtr::TNodePtr(a2, 0);
LABEL_19:
}

void sub_1E56AA9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, FINode *a11, uint64_t a12, uint64_t a13, id a14)
{
  TNode::StPopulating::~StPopulating(&a11);

  _Unwind_Resume(a1);
}

uint64_t std::deque<TString>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v7 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v7) + 1;
        if (v7 - *v6 == 4096)
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
    v11 = 256;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 512;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<TNodeEventPtr *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<TNodeEventPtr *>::~__split_buffer(uint64_t a1)
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

void TNode::GetFSInfo(TNode *this@<X0>, void *a2@<X8>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v5 = *(this + 3);
  *a2 = *(this + 2);
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
}

const void **FileSuffix@<X0>(const TString *a1@<X0>, TString *a2@<X8>)
{
  v3 = [(__CFString *)a1->fString.fRef pathExtension];
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&theString, v3);

  if (CFStringGetLength(theString))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], ".", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v11 = v5;
    v9.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v9, v5);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11);
    fRef = v9.fString.fRef;
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    MutableCopy = CFStringCreateMutableCopy(v4, 0, fRef);
    CFRelease(&stru_1F5F42870);
    a2->fString.fRef = MutableCopy;
    TString::Append(a2, &theString);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  }

  else
  {
    a2->fString.fRef = theString;
    theString = 0;
    CFRetain(&stru_1F5F42870);
    if (theString)
    {
      CFRelease(theString);
    }

    theString = &stru_1F5F42870;
  }

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
}

void sub_1E56AAD94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

const void **AppendPath@<X0>(const TString *a1@<X0>, const TString *a2@<X1>, TString *a3@<X8>)
{
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&theString, a1->fString.fRef);
  Length = CFStringGetLength(a2->fString.fRef);
  v7 = MEMORY[0x1E695E480];
  if (Length)
  {
    if (CFStringGetLength(theString))
    {
      v8 = CFStringCreateWithBytesNoCopy(*v7, "/", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v14 = v8;
      v12.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v12, v8);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14);
      LOBYTE(v8) = TString::EndsWith(&theString, &v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);
      if ((v8 & 1) == 0)
      {
        TString::Append(&theString, TPathName::kPOSIXPathNameSeparator);
      }
    }
  }

  v9 = theString;
  a3->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  MutableCopy = CFStringCreateMutableCopy(*v7, 0, v9);
  CFRelease(&stru_1F5F42870);
  a3->fString.fRef = MutableCopy;
  TString::Append(a3, a2);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
}

void sub_1E56AAF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

const void **TString::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a1, a2);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  }

  return a1;
}

uint64_t TFSInfo::GetVolumeIdentifier(TFSInfo *this)
{
  v3 = *MEMORY[0x1E69E9840];
  TCFURLInfo::CopyPropertyValues(*(this + 1));
  result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TFSInfo::IsSymlink(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 6) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

uint64_t TFSInfo::IsMountTrigger(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 15) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

void TNode::SetAliasTarget(TNode *this, const TNodePtr *a2, int a3)
{
  v6 = TNode::InfoLock(this);
  os_unfair_lock_lock(v6);
  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  IsAlias = TFSInfo::IsAlias(v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (IsAlias)
  {
    TNode::GetAliasTarget(this, &v68);
    v10 = TNodeFromFINode(v68);
    if (v10 == TNodeFromFINode(a2->fFINode))
    {
      v16 = TNodeFromFINode(a2->fFINode);
      if (v16)
      {
        v17 = TNode::InfoLock(v16);
        os_unfair_lock_lock(v17);
        v19 = *(this + 2);
        v18 = *(this + 3);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v17);
        v20 = TNodeFromFINode(a2->fFINode);
        v21 = TNode::InfoLock(v20);
        os_unfair_lock_lock(v21);
        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v21);
        os_unfair_lock_lock((v23 + 108));
        v24 = *(v23 + 123);
        os_unfair_lock_unlock((v23 + 108));
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        os_unfair_lock_lock((v19 + 108));
        *(v19 + 123) = *(v19 + 123) & 0xFFFDFFFF | (((v24 >> 5) & 1) << 17);
        os_unfair_lock_unlock((v19 + 108));
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v26 = TNode::InfoLock(v25);
        os_unfair_lock_lock(v26);
        v28 = *(this + 2);
        v27 = *(this + 3);
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v26);
        v29 = TNodeFromFINode(a2->fFINode);
        IsDeferredForSymlink = TNode::IsDeferredForSymlink(v29, TFSInfo::IsPackage, 0);
        os_unfair_lock_lock((v28 + 108));
        if (IsDeferredForSymlink)
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        *(v28 + 123) = *(v28 + 123) & 0xFFFFFFFD | v31;
        os_unfair_lock_unlock((v28 + 108));
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }
    }

    else
    {
      v11 = TNodeFromFINode(v68);
      if (v11)
      {
        v12 = TNode::InfoLock(v11);
        os_unfair_lock_lock(v12);
        v14 = *(this + 2);
        v13 = *(this + 3);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v12);
          v15 = *(v14 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        else
        {
          os_unfair_lock_unlock(v12);
          v15 = *(v14 + 120);
        }

        if (v15 != 7)
        {
          v32 = TNodeFromFINode(v68);
          TNodePtr::TNodePtr(&v67, this);
          TNode::UnRegisterForInternalNotifications(v32, &v67.fFINode, 1);
        }

        TNode::GetAliasTarget(this, &v67);
        TNodePtr::operator=(&v68, &v67.fFINode);
      }

      v33 = TNode::InfoLock(v11);
      os_unfair_lock_lock(v33);
      objc_storeStrong(this + 4, a2->fFINode);
      os_unfair_lock_unlock(v33);
      if (TNodeFromFINode(v68))
      {
        v34 = TNodeFromFINode(v68);
        v35 = TNode::InfoLock(v34);
        os_unfair_lock_lock(v35);
        v37 = *(v34 + 16);
        v36 = *(v34 + 24);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v35);
          v38 = *(v37 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          os_unfair_lock_unlock(v35);
          v38 = *(v37 + 120);
        }

        if (v38 == 16)
        {
          v39 = TNodeFromFINode(v68);
          TNode::RemoveSelf(v39, 0);
        }
      }

      v40 = TNodeFromFINode(a2->fFINode);
      if (v40)
      {
        v41 = TNode::InfoLock(v40);
        os_unfair_lock_lock(v41);
        v43 = *(this + 2);
        v42 = *(this + 3);
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v41);
        v44 = TNodeFromFINode(a2->fFINode);
        v45 = TNode::InfoLock(v44);
        os_unfair_lock_lock(v45);
        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v45);
        os_unfair_lock_lock((v47 + 108));
        v48 = *(v47 + 123);
        os_unfair_lock_unlock((v47 + 108));
        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        os_unfair_lock_lock((v43 + 108));
        *(v43 + 123) = *(v43 + 123) & 0xFFFDFFFF | (((v48 >> 5) & 1) << 17);
        os_unfair_lock_unlock((v43 + 108));
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        v50 = TNode::InfoLock(v49);
        os_unfair_lock_lock(v50);
        v52 = *(this + 2);
        v51 = *(this + 3);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v50);
        v53 = TNodeFromFINode(a2->fFINode);
        v54 = TNode::IsDeferredForSymlink(v53, TFSInfo::IsPackage, 0);
        os_unfair_lock_lock((v52 + 108));
        if (v54)
        {
          v55 = 2;
        }

        else
        {
          v55 = 0;
        }

        *(v52 + 123) = *(v52 + 123) & 0xFFFFFFFD | v55;
        os_unfair_lock_unlock((v52 + 108));
        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        v57 = TNode::InfoLock(v56);
        os_unfair_lock_lock(v57);
        v59 = *(this + 2);
        v58 = *(this + 3);
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v57);
          v60 = *(v59 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        else
        {
          os_unfair_lock_unlock(v57);
          v60 = *(v59 + 120);
        }

        if (v60 != 7)
        {
          v61 = TNodeFromFINode(a2->fFINode);
          TNodePtr::TNodePtr(&v67, this);
          TNode::RegisterForInternalNotifications(v61, &v67.fFINode, 1);
        }
      }

      if (a3)
      {
        if (!TNodeFromFINode(a2->fFINode))
        {
          goto LABEL_63;
        }

        v62 = TNodeFromFINode(a2->fFINode);
        v63 = TNode::InfoLock(v62);
        os_unfair_lock_lock(v63);
        v65 = *(v62 + 16);
        v64 = *(v62 + 24);
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v63);
          v66 = *(v65 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        else
        {
          os_unfair_lock_unlock(v63);
          v66 = *(v65 + 120);
        }

        if (v66 != 16)
        {
LABEL_63:
          TNodePtr::TNodePtr(&v67, this);
          TNode::SendNotification(this, 2, &v67.fFINode, 1634497639, 0);
        }
      }
    }
  }
}

uint64_t TFSInfo::IsPackage(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 1) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

void TNode::RegisterForInternalNotifications(TNodeEvent *a1, FINode **a2, uint64_t a3)
{
  TNodeEvent::GetInternalClientNotifier(a1, &v7);
  if (v7)
  {
    TNodePtr::TNodePtr(&v6, a1);
    TDSNotifier::Register(&v7, &v6.fFINode, a2, a3);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E56AB814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1E56AB938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void TNodeEvent::GetInternalClientNotifier(TNodeEvent *this@<X0>, void *a2@<X8>)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN10TNodeEvent25GetInternalClientNotifierEv_block_invoke;
  block[3] = &__block_descriptor_33_ea8_32c53_ZTSKZN10TNodeEvent25GetInternalClientNotifierEvE3__0_e5_v8__0l;
  if (TNodeEvent::GetInternalClientNotifier(void)::internalClientChangeNotifierOnce != -1)
  {
    dispatch_once(&TNodeEvent::GetInternalClientNotifier(void)::internalClientChangeNotifierOnce, block);
  }

  v3 = qword_1EDBA7728;
  *a2 = TNodeEvent::gInternalClientChangeNotifier;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_0,std::allocator<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_0>,void ()(OpaqueEventQueue *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F416A8;
  a2[1] = v2;
  return result;
}

void TNode::SecondParent(TNode *this@<X0>, TNodePtr *a2@<X8>)
{
  v3 = atomic_load(this + 44);
  if ((v3 & 2) != 0)
  {
    TNode::FirmlinkParents(this);
    TNodePtr::TNodePtr(&v5, this);
    v6 = &v5;
    a2->fFINode = std::__hash_table<std::__hash_value_type<TNodePtr,TNodePtr>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,TNodePtr>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,TNodePtr>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,TNodePtr>>>::__emplace_unique_key_args<TNodePtr,std::piecewise_construct_t const&,std::tuple<TNodePtr&&>,std::tuple<>>(&xmmword_1ECFF4538, &v5.fFINode)[3];
  }

  else
  {

    TNodePtr::TNodePtr(a2, 0);
  }
}

void std::__function::__func<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_0,std::allocator<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_0>,void ()(OpaqueEventQueue *)>::operator()(uint64_t a1, TBlockingEventQueue **a2)
{
  v3 = *a2;
  TBlockingEventQueue::EventQueueFromID(*a2, &v4);
  if (v4)
  {
    (*(a1 + 8))(v3);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E56ABC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TNodeEvent::HandleInternalEvent(TNodeEvent *this, OpaqueEventQueue *a2)
{
  for (i = 0; ; i)
  {
    v44 = i;
    NextEvent = NodeEventGetNextEvent(&v44, this);
    v5 = v44;

    if (!NextEvent)
    {
      break;
    }

    v6 = v5;
    i = v6;
    if (v6)
    {
      v7 = v6 + 8;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v7 + 8);
    v41.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = v8;
    if (v8 && (TDSNotifier::AddPtrReference(v8), v41.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value))
    {
      v42 = *(v7 + 8);
      TDSNotifier::AddPtrReference(v42);
      v43.fFINode = *(v42 + 3);
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v42);
    }

    else
    {
      TNodePtr::TNodePtr(&v43, 0);
    }

    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v41);
    if (!TNodeFromFINode(v43.fFINode))
    {
      goto LABEL_38;
    }

    v9 = TNodeFromFINode(v43.fFINode);
    v10 = TNode::InfoLock(v9);
    os_unfair_lock_lock(v10);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v10);
      v13 = *(v12 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      os_unfair_lock_unlock(v10);
      if (!*(v12 + 120))
      {
LABEL_15:
        v14 = TNodeFromFINode(v43.fFINode);
        v15 = TNode::InfoLock(v14);
        os_unfair_lock_lock(v15);
        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v15);
        IsAlias = TFSInfo::IsAlias(v17);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (!IsAlias)
        {
          goto LABEL_38;
        }
      }
    }

    v19 = TNodeFromFINode(v43.fFINode);
    TNode::GetAliasTarget(v19, &v41);
    v20 = TNodeFromFINode(v41.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value);

    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = *v7;
    if (*v7 == 1 || v21 == 4)
    {
      v37 = TNodeFromFINode(v43.fFINode);
      TNode::ClearAliasTarget(v37, 0);
    }

    else if (v21 == 5)
    {
      v22 = TNodeFromFINode(v43.fFINode);
      v23 = TNode::InfoLock(v22);
      os_unfair_lock_lock(v23);
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v23);
      os_unfair_lock_lock((v25 + 108));
      v26 = *(v25 + 123);
      os_unfair_lock_unlock((v25 + 108));
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      fFINode = v43.fFINode;
      if ((v26 & 0x40) != 0)
      {
        goto LABEL_36;
      }

      v28 = TNodeFromFINode(v43.fFINode);
      v29 = TNode::InfoLock(v28);
      os_unfair_lock_lock(v29);
      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v29);
      v32 = TFSInfo::IsAlias(v31);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v32)
      {
        v33 = TNodeFromFINode(v43.fFINode);
        TNode::GetAliasTarget(v33, &v41);
        v34 = TNodeFromFINode(v41.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value);
        v35 = TNode::IsInTrash(v34);

        if (v35)
        {
          fFINode = v43.fFINode;
LABEL_36:
          v36 = TNodeFromFINode(fFINode);
          TNode::ClearAliasTarget(v36, 1);
        }
      }
    }

    else
    {
      v38 = *(v7 + 4);
      if (v38)
      {
        if (v38 == 1936225392)
        {
          v39 = TNodeFromFINode(v43.fFINode);
          TNode::SendNotification(v39, 2, &v43.fFINode, 1768124270, 0);
        }

        else
        {
          v40 = TNodeFromFINode(v43.fFINode);
          v41.fData.__impl_.__index = 0;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v41);
          v41.fData.__impl_.__index = 20;
          v41.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = v38;
          TNode::RequestInternalTask(v40, 1011, &v41, 0);
          TPropertyValue::~TPropertyValue(&v41);
        }
      }
    }

LABEL_38:
  }
}

void sub_1E56ABF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  TPropertyValue::~TPropertyValue(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E56AC080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TNodePtr,FPItem * {__strong}>>,std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}>*>(uint64_t a1, id *a2, id *a3, void *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v12;
    do
    {
      *v4 = *v6;
      v4[1] = v6[1];
      v6 += 2;
      v7 += 2;
      v4 = v7;
    }

    while (v6 != a3);
    v12 = v7;
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,FPItem * {__strong}>>,std::pair<TNodePtr,FPItem * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v7;
}

void TNode::AttachFPItemsMetadata(id **a1, uint64_t a2, char a3)
{
  memset(v20, 0, sizeof(v20));
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = TNodeFromFINode(v5);
      v7 = TNode::InfoLock(v6);
      os_unfair_lock_lock(v7);
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
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

      v11 = v3[1];
      if (v10 != v11)
      {
        v12 = TNodeFromFINode(v5);
        v13 = TNode::InfoLock(v12);
        os_unfair_lock_lock(v13);
        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v13);
        TNodeEvent::Notify(&v21, v16, v17);
        std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,TFSInfo&,0>();
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  if (a3)
  {
    TNodeEventPtrs::SendNotifications(v20);
  }

  v19 = v20;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1E56AC2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, TNodeEvent *a10, void **a11, uint64_t a12, char a13)
{
  a11 = &a13;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,FPItem * {__strong}>>,std::pair<TNodePtr,FPItem * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void TFSInfo::TFSInfo(TFSInfo *this, const TFSInfo *a2)
{
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v4 = (this + 16);
  TFSInfo::TFSInfo(this);
  os_unfair_lock_lock(a2 + 26);
  *(this + 120) = *(a2 + 120);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v4, *(a2 + 2));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(this + 1, *(a2 + 1));
  if (this == a2)
  {
    objc_storeStrong(this + 5, *(a2 + 5));
  }

  else
  {
    TString::SetStringRefAsImmutable(this + 3, *(a2 + 3));
    TString::SetStringRefAsImmutable(this + 4, *(a2 + 4));
    objc_storeStrong(this + 5, *(a2 + 5));
    TString::SetStringRefAsImmutable(this + 6, *(a2 + 6));
  }

  objc_storeStrong(this + 8, *(a2 + 8));
  objc_storeStrong(this + 9, *(a2 + 9));
  if (*(a2 + 10))
  {
    operator new();
  }

  objc_storeStrong(this + 7, *(a2 + 7));
  *(this + 122) = *(a2 + 122);
  os_unfair_lock_lock(a2 + 27);
  v5 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFFDF | (32 * ((v5 >> 5) & 1));
  os_unfair_lock_lock(a2 + 27);
  v6 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFBFF | (((v6 >> 10) & 1) << 10);
  os_unfair_lock_lock(a2 + 27);
  v7 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFFBF | (((v7 >> 6) & 1) << 6);
  os_unfair_lock_lock(a2 + 27);
  v8 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFFFD | (2 * ((v8 >> 1) & 1));
  os_unfair_lock_lock(a2 + 27);
  v9 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFFFB | (4 * ((v9 >> 2) & 1));
  os_unfair_lock_lock(a2 + 27);
  v10 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFF7F | (((v10 >> 7) & 1) << 7);
  os_unfair_lock_lock(a2 + 27);
  v11 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  v12 = *(this + 123) & 0xFFFEFFFF | ((HIWORD(v11) & 1) << 16);
  *(this + 123) = v12;
  *(this + 123) = v12 & 0xFFFFFFFE | *(a2 + 123) & 1;
  os_unfair_lock_lock(a2 + 27);
  v13 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFFF7 | (8 * ((v13 >> 3) & 1));
  os_unfair_lock_lock(a2 + 27);
  v14 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFEFF | (((v14 >> 8) & 1) << 8);
  os_unfair_lock_lock(a2 + 27);
  v15 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFDFF | (((v15 >> 9) & 1) << 9);
  os_unfair_lock_lock(a2 + 27);
  v16 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFF7FF | (((v16 >> 11) & 1) << 11);
  os_unfair_lock_lock(a2 + 27);
  v17 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFEFFF | (((v17 >> 12) & 1) << 12);
  os_unfair_lock_lock(a2 + 27);
  v18 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFDFFF | (((v18 >> 13) & 1) << 13);
  os_unfair_lock_lock(a2 + 27);
  v19 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFBFFF | (((v19 >> 14) & 1) << 14);
  os_unfair_lock_lock(a2 + 27);
  v20 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFEFFFFF | (((v20 >> 20) & 1) << 20);
  os_unfair_lock_lock(a2 + 27);
  v21 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFDFFFFF | (((v21 >> 21) & 1) << 21);
  os_unfair_lock_lock(a2 + 27);
  v22 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFBFFFFF | (((v22 >> 22) & 1) << 22);
  os_unfair_lock_lock(a2 + 27);
  v23 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFF7FFFFF | (((v23 >> 23) & 1) << 23);
  os_unfair_lock_lock(a2 + 27);
  v24 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFFFFEF | (16 * ((v24 >> 4) & 1));
  os_unfair_lock_lock(a2 + 27);
  v25 = *(a2 + 127);
  os_unfair_lock_unlock(a2 + 27);
  v26 = *(this + 127) & 0xFBFF | (((v25 >> 10) & 1) << 10);
  *(this + 127) = v26;
  *(this + 127) = v26 & 0xF7FF | *(a2 + 127) & 0x800;
  os_unfair_lock_lock(a2 + 27);
  v27 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFF7FFF | (((v27 >> 15) & 1) << 15);
  os_unfair_lock_lock(a2 + 27);
  v28 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFEFFFFFF | ((HIBYTE(v28) & 1) << 24);
  os_unfair_lock_lock(a2 + 27);
  v29 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFDFFFFFF | (((v29 >> 25) & 1) << 25);
  if (*a2)
  {
    operator new();
  }

  v30 = *(this + 127) & 0xFFFD | (2 * ((*(a2 + 127) >> 1) & 1));
  *(this + 127) = v30;
  v31 = v30 & 0xFFFFFFBF | (((*(a2 + 127) >> 6) & 1) << 6);
  *(this + 127) = v31;
  *(this + 127) = v31 & 0xFF7F | *(a2 + 127) & 0x80;
  os_unfair_lock_lock(a2 + 27);
  v32 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFDFFFF | (((v32 >> 17) & 1) << 17);
  os_unfair_lock_lock(a2 + 27);
  v33 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFBFFFFFF | (((v33 >> 26) & 1) << 26);
  os_unfair_lock_lock(a2 + 27);
  v34 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xF7FFFFFF | (((v34 >> 27) & 1) << 27);
  os_unfair_lock_lock(a2 + 27);
  v35 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xEFFFFFFF | (((v35 >> 28) & 1) << 28);
  os_unfair_lock_lock(a2 + 27);
  v36 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xDFFFFFFF | (((v36 >> 29) & 1) << 29);
  os_unfair_lock_lock(a2 + 27);
  v37 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xBFFFFFFF | (((v37 >> 30) & 1) << 30);
  os_unfair_lock_lock(a2 + 27);
  v38 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = v38 & 0x80000000 | *(this + 123) & 0x7FFFFFFF;
  os_unfair_lock_lock(a2 + 27);
  LOWORD(v38) = *(a2 + 127);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 127) = *(this + 127) & 0xFFFE | v38 & 1;
  os_unfair_lock_lock(a2 + 27);
  LOWORD(v38) = *(a2 + 127) & 4;
  os_unfair_lock_unlock(a2 + 27);
  *(this + 127) = *(this + 127) & 0xFFFB | v38;
  os_unfair_lock_lock(a2 + 27);
  LOWORD(v38) = *(a2 + 127) & 8;
  os_unfair_lock_unlock(a2 + 27);
  *(this + 127) = *(this + 127) & 0xFFF7 | v38;
  os_unfair_lock_lock(a2 + 27);
  v39 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFFBFFFF | (((v39 >> 18) & 1) << 18);
  os_unfair_lock_lock(a2 + 27);
  v40 = *(a2 + 123);
  os_unfair_lock_unlock(a2 + 27);
  *(this + 123) = *(this + 123) & 0xFFF7FFFF | (((v40 >> 19) & 1) << 19);
  os_unfair_lock_lock(a2 + 27);
  LOWORD(v40) = *(a2 + 127) & 0x10;
  os_unfair_lock_unlock(a2 + 27);
  *(this + 127) = *(this + 127) & 0xFFEF | v40;
  os_unfair_lock_lock(a2 + 27);
  LOWORD(v40) = *(a2 + 127) & 0x20;
  os_unfair_lock_unlock(a2 + 27);
  *(this + 127) = *(this + 127) & 0xFFDF | v40;
  *(this + 14) = *(a2 + 14);
  *(this + 121) = *(a2 + 121);
  os_unfair_lock_lock(a2 + 27);
  LOWORD(v40) = *(a2 + 127) & 0x100;
  os_unfair_lock_unlock(a2 + 27);
  *(this + 127) = *(this + 127) & 0xFEFF | v40;
  os_unfair_lock_lock(a2 + 27);
  LOWORD(v40) = *(a2 + 127) & 0x200;
  os_unfair_lock_unlock(a2 + 27);
  *(this + 127) = *(this + 127) & 0xFDFF | v40;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(this + 11, *(a2 + 11));
  os_unfair_lock_unlock(a2 + 26);
}

void sub_1E56ACBA4(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v3, 0x60C40902580DDLL);
  os_unfair_lock_unlock(v2 + 26);
  TFSInfo::~TFSInfo(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<TFSInfo&,std::allocator<TFSInfo>,0>(uint64_t a1, const TFSInfo *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 24), a2);
  return a1;
}

void TFSInfo::SetFPItem(TFSInfo *this, FPItem *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((UseFileProviderFramework() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [(FPItem *)v3 itemIdentifier];
  *buf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(buf, v4);

  v5 = NS_FileProviderRootContainerItemIdentifier();
  v6 = operator==(buf, v5);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  if (v6)
  {
    v18 = 0;
    v7 = [FIProviderDomain providerDomainForItem:v3 cachePolicy:1 error:&v18];
    v8 = v18;
    v9 = v7 != 0;
    if (!v7)
    {
      v10 = LogObj(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v3;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_ERROR, "Found root item identifier but unable to get provider. item: %{public}@ error: %{public}@", buf, 0x16u);
      }

      v3 = 0;
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
    v7 = 0;
  }

  os_unfair_lock_lock(this + 26);
  objc_storeStrong(this + 8, v3);
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    Overflow = TFSInfo::GetOrCreateOverflow(this);
    os_unfair_lock_lock((Overflow + 72));
    v13 = *(Overflow + 76);
    if (v13 == 2)
    {
      TFSInfoOverflow::MigrateToType(Overflow, 1);
      v13 = *(Overflow + 76);
    }

    else if (v13 == 3)
    {
      *(Overflow + 76) = 1;
      *(Overflow + 32) = 0;
      *Overflow = 0u;
      *(Overflow + 16) = 0u;
      *(Overflow + 32) = 0x80000000;
      os_unfair_lock_unlock((Overflow + 72));
LABEL_19:
      objc_storeStrong((Overflow + 24), v7);
      goto LABEL_20;
    }

    os_unfair_lock_unlock((Overflow + 72));
    if (v13 == 1)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  os_unfair_lock_unlock(this + 26);
  v14 = [v7 domain];
  v15 = v14 == 0;

  if (!v15)
  {
    v16 = [v7 domain];
    ProviderDisplayName(v16, buf);
    TFSInfo::SetDisplayName(this, buf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E56ACEF0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t TNode::FetchAdditionalPropertiesForSync(TNode *this, TFSInfo **a2, int a3)
{
  if (a3)
  {
    v5 = TNode::GetFIProvider(this);
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  v8 = TNode::InfoLock(this);
  os_unfair_lock_lock(v8);
  v9 = *(this + 3);
  v12 = *(this + 2);
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  AdditionalProperties = TFSInfo::FetchAdditionalProperties(v7, &v12, v6);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return AdditionalProperties;
}

void sub_1E56AD054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *TNode::GetFIProvider(TNode *this)
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
  os_unfair_lock_lock((v4 + 104));
  v5 = *(v4 + 80);
  if (v5)
  {
    os_unfair_lock_lock(v5 + 18);
    v6 = v5[76];
    os_unfair_lock_unlock(v5 + 18);
    if (v6 == 1)
    {
      v5 = *(v5 + 3);
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_unlock((v4 + 104));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (!v5)
  {
    v8 = TNode::ParentLock(v7);
    os_unfair_lock_lock(v8);
    TNodePtr::TNodePtr(&v21, *(this + 6));
    os_unfair_lock_unlock(v8);
    while (TNodeFromFINode(v21))
    {
      v9 = TNodeFromFINode(v21);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      os_unfair_lock_lock((v12 + 104));
      v5 = *(v12 + 80);
      if (v5)
      {
        os_unfair_lock_lock(v5 + 18);
        v13 = v5[76];
        os_unfair_lock_unlock(v5 + 18);
        if (v13 == 1)
        {
          v5 = *(v5 + 3);
        }

        else
        {
          v5 = 0;
        }
      }

      os_unfair_lock_unlock((v12 + 104));
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v5)
      {

        goto LABEL_29;
      }

      v14 = TNodeFromFINode(v21);
      v15 = TNode::ParentLock(v14);
      os_unfair_lock_lock(v15);
      TNodePtr::TNodePtr(&v20, *(v14 + 48));
      os_unfair_lock_unlock(v15);
      TNodePtr::operator=(&v21, &v20.fFINode);
    }

    v16 = FINodeFromTNode(this);
    v17 = [v16 parent];

    if (v17)
    {
      while (1)
      {
        v18 = objc_cast<FILocalStorageNode,FINode * {__strong}>(v17);

        if (v18)
        {
          break;
        }

        v5 = [v17 parent];

        v17 = v5;
        if (!v5)
        {
          goto LABEL_29;
        }
      }

      v5 = [FIProviderDomain providerDomainForID:*LocalStorageDomainID() cachePolicy:3 error:0];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_29:

  return v5;
}

OpaqueNodeRef *NodeCopyParentNode(TNode *a1, OpaqueNodeRef *a2)
{
  location = 0;
  v2 = TNode::NodeFromNodeRef(a1, a2);
  v4 = TNode::Validate(v2, v3);
  if (!v4)
  {
    v5 = TNode::ParentLock(v4);
    os_unfair_lock_lock(v5);
    TNodePtr::TNodePtr(&v19, *(v2 + 48));
    os_unfair_lock_unlock(v5);
    TNodePtr::operator=(&location, &v19.fFINode);

    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    os_unfair_lock_lock((v9 + 108));
    v10 = *(v9 + 123);
    os_unfair_lock_unlock((v9 + 108));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((v10 & 0x100) != 0)
    {
      TNode::GetSuperRootNode(&obj, v11);
      TNode::StPopulating::StPopulating(&v19, &obj, 0);
      v13 = *(TNodeFromFINode(obj) + 56);
      if (v13)
      {
        v14 = (v13 + 64);
      }

      else
      {
        v14 = &TNode::GetChildren(void)const::sEmptyList;
      }

      v15 = *v14;
      v16 = v14[1];
      while (v15 != v16)
      {
        if (v2 == TNodeFromFINode(*v15))
        {
          objc_storeStrong(&location, obj);
          break;
        }

        ++v15;
      }

      TNode::StPopulating::~StPopulating(&v19);
      fFINode = obj;
      goto LABEL_18;
    }

    if (TNode::IsFirmlink(v2))
    {
      TNode::SecondParent(v2, &v19);
      TNodePtr::operator=(&location, &v19.fFINode);
      fFINode = v19.fFINode;
LABEL_18:
    }
  }

  v17 = TNodePtr::CopyAsNodeRef(&location);

  return v17;
}

OpaqueNodeRef *TNodePtr::CopyAsNodeRef(TNodePtr *this)
{
  v1 = [this->fFINode nodeRef];
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

id objc_cast<FILocalStorageNode,FINode * {__strong}>(void *a1)
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

uint64_t TFSInfo::FetchAdditionalProperties(TFSInfo *this, os_unfair_lock_s **a2, int a3)
{
  v3 = *(this + 120);
  if (v3 != 7)
  {
    if (v3 != 28)
    {
      goto LABEL_8;
    }

    os_unfair_lock_lock(this + 26);
    v7 = *(this + 10);
    if (v7)
    {
      os_unfair_lock_lock(v7 + 18);
      v8 = v7[76];
      os_unfair_lock_unlock(v7 + 18);
      if (v8 == 1)
      {
        v7 = *(v7 + 3);
      }

      else
      {
        v7 = 0;
      }
    }

    os_unfair_lock_unlock(this + 26);
    v9 = [v7 isUsingFPFS];

    if ((v9 & 1) == 0)
    {
LABEL_8:
      Properties = TFSInfo::FetchProperties(this, 1);
      v11 = *(this + 1);
      if (v11)
      {
        v12 = TFSInfo::IterationFullSetOfPropertyKeys(Properties);
        theString = CFURLCopyResourcePropertiesForKeys(v11, v12, 0);
        TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(&theString);
      }

      v13 = TFSInfo::GetUTType(this);

      TFSInfo::LocalizedTypeDescription(this, &theString);
      Length = CFStringGetLength(theString);
      v15 = v13 != 0;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
      if (Length)
      {
        v16 = ((v15 & 1) << 9) | 2;
      }

      else
      {
        v16 = v15 << 9;
      }

      v17 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v18 = *(&v17[30]._os_unfair_lock_opaque + 3);
      os_unfair_lock_unlock(v17 + 27);
      v19 = (v18 >> 26) & 4 | v16;
      v20 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v21 = *(&v20[31]._os_unfair_lock_opaque + 3) >> 4;
      os_unfair_lock_unlock(v20 + 27);
      v22 = v19 & 0xFFFFFFDF | (32 * (v21 & 1));
      v23 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v24 = *(&v23[30]._os_unfair_lock_opaque + 3);
      os_unfair_lock_unlock(v23 + 27);
      if ((v24 & 0x40000000) != 0)
      {
        os_unfair_lock_lock(v23 + 27);
        v25 = *(&v23[30]._os_unfair_lock_opaque + 3);
        os_unfair_lock_unlock(v23 + 27);
        v22 |= (v25 >> 1) & 0x10;
      }

      v26 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v27 = *(&v26[31]._os_unfair_lock_opaque + 3);
      os_unfair_lock_unlock(v26 + 27);
      v28 = v22 | (v27 >> 2) & 0x80;
      if (TFSInfo::GetBladeRunnerFlags(*a2) >= 0)
      {
        v28 |= 0x100u;
      }

      if (a3)
      {
        v29 = TFSInfo::GetFPItem(*a2);
        if (v29)
        {

LABEL_25:
          v28 |= 0x800u;
LABEL_27:
          TFSInfo::Fetch(this, a2, v28);
          return 0;
        }

        v30 = *a2;
        os_unfair_lock_lock(*a2 + 26);
        v31 = *(v30 + 10);
        if (v31)
        {
          os_unfair_lock_lock(v31 + 18);
          v32 = v31[76];
          os_unfair_lock_unlock(v31 + 18);
          if (v32 == 1)
          {
            v31 = *(v31 + 3);
          }

          else
          {
            v31 = 0;
          }
        }

        os_unfair_lock_unlock(v30 + 26);

        if (v31)
        {
          goto LABEL_25;
        }
      }

      if (v28)
      {
        goto LABEL_27;
      }
    }
  }

  return 0;
}

const void **TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TFSInfo::LocalizedTypeDescription(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  os_unfair_lock_lock(this + 27);
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *(this + 6));

  os_unfair_lock_unlock(this + 27);
}

void sub_1E56ADB3C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  os_unfair_lock_unlock(v1 + 27);
  _Unwind_Resume(a1);
}

id TFSInfo::GetUTType(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 5);
  os_unfair_lock_unlock(this + 27);

  return v2;
}

uint64_t TFSInfo::GetBladeRunnerFlags(TFSInfo *this)
{
  if (!*(this + 120) || (TFSInfo::GetFPItem(this), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    os_unfair_lock_lock(this + 26);
    v3 = *(this + 10);
    if (v3 && (os_unfair_lock_lock((v3 + 72)), v4 = *(v3 + 76), os_unfair_lock_unlock((v3 + 72)), v4 == 1))
    {
      v2 = *(v3 + 32);
    }

    else
    {
      v2 = 0x80000000;
    }

    os_unfair_lock_unlock(this + 26);
  }

  return v2;
}

BOOL TNode::ReconcileInternalProperties(uint64_t a1, TFSInfo **a2, TNodeEventPtrs *a3, int a4)
{
  v112[0] = 0;
  v112[1] = 0;
  v111 = v112;
  v8 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  v11 = TFSInfo::SynchronizeProperties(v10, a2, &v111);
  TNodePtr::TNodePtr(&v113, a1);
  TNodeEventPtrs::AddPropertyChanges(a3, &v113, &v111);

  if (!v11)
  {
    v43 = TFSInfo::GetFPItem(*a2);
    if (!v43)
    {
LABEL_142:

      goto LABEL_143;
    }

    v44 = TFSInfo::GetFPItem(v10);
    v45 = v44;
    if (v44 && v44 != v43)
    {
      TFSInfo::SetFPItem(v10, v43);
    }

LABEL_141:

    goto LABEL_142;
  }

  v13 = TNode::InfoLock(v12);
  os_unfair_lock_lock(v13);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v13);
  os_unfair_lock_lock((v15 + 108));
  v16 = *(v15 + 123);
  os_unfair_lock_unlock((v15 + 108));
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if ((v16 & 0x100) != 0)
  {
    v17 = *a2;
    os_unfair_lock_lock(*a2 + 27);
    v18 = *(v17 + 123);
    os_unfair_lock_unlock(v17 + 27);
    if ((v18 & 0x100) == 0)
    {
      TGlobalNodes::RootNode(&v115, v19);
      TNode::StPopulating::StPopulating(&v113, &v115.fFINode, 0);
      v20 = TNodeFromFINode(v115.fFINode);
      TNodePtr::TNodePtr(&v110, a1);
      LODWORD(v20) = TChildrenList::RemoveChild(*(v20 + 56), &v110);

      if (v20)
      {
        v21 = TNodeFromFINode(v115.fFINode);
        TNodePtr::TNodePtr(&v110, a1);
        TNode::SendNotification(v21, 4, &v110, 0, 0);
      }

      TNode::StPopulating::~StPopulating(&v113.fFINode);
    }
  }

  if (!*(*a2 + 120) && !TFSInfo::FileSystemObjectExists(*a2))
  {
    v46 = 0;
    if (!v9)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  TNode::SetFSInfo(a1, a2, a4);
  v23 = TNode::InfoLock(v22);
  os_unfair_lock_lock(v23);
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v23);
  os_unfair_lock_lock((v25 + 108));
  v26 = *(v25 + 123);
  os_unfair_lock_unlock((v25 + 108));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if ((v26 & 0x100) != 0)
  {
    v28 = v112[0];
    if (v112[0])
    {
      v29 = v112;
      do
      {
        v30 = *(v28 + 7);
        v31 = v30 >= 0x706E616D;
        v32 = v30 < 0x706E616D;
        if (v31)
        {
          v29 = v28;
        }

        v28 = v28[v32];
      }

      while (v28);
      if (v29 != v112 && *(v29 + 7) < 0x706E616Eu)
      {
        TGlobalNodes::RootNode(&v115, v27);
        TNode::StPopulating::StPopulating(&v113, &v115.fFINode, 0);
        v33 = TNodeFromFINode(v115.fFINode);
        TChildrenList::InvalidateSortOrder(*(v33 + 56));
        TNode::StPopulating::~StPopulating(&v113.fFINode);
      }
    }
  }

  v34 = TNode::InfoLock(v27);
  os_unfair_lock_lock(v34);
  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v34);
  os_unfair_lock_lock((v36 + 108));
  v37 = *(v36 + 123);
  os_unfair_lock_unlock((v36 + 108));
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if ((v37 & 0x20) != 0)
  {
    v39 = TNode::InfoLock(NotifierList);
    os_unfair_lock_lock(v39);
    v41 = *(a1 + 16);
    v40 = *(a1 + 24);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v39);
      v42 = *(v41 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      if (v42)
      {
        goto LABEL_62;
      }
    }

    else
    {
      os_unfair_lock_unlock(v39);
      if (*(v41 + 120))
      {
        goto LABEL_62;
      }
    }

    v47 = v112[0];
    if (v112[0])
    {
      v48 = v112;
      v49 = v112[0];
      do
      {
        v50 = *(v49 + 7);
        v31 = v50 >= 0x6F626A64;
        v51 = v50 < 0x6F626A64;
        if (v31)
        {
          v48 = v49;
        }

        v49 = v49[v51];
      }

      while (v49);
      if (v48 == v112)
      {
        v52 = v112;
      }

      else
      {
        v52 = v112;
        if (*(v48 + 7) < 0x6F626A65u)
        {
          TNode::HandleListeners(a1, 256);
          TNode::HandleRecursiveListeners(a1);
          goto LABEL_62;
        }
      }

      do
      {
        v53 = *(v47 + 7);
        v31 = v53 >= 0x706E616D;
        v54 = v53 < 0x706E616D;
        if (v31)
        {
          v52 = v47;
        }

        v47 = v47[v54];
      }

      while (v47);
      if (v52 != v112 && *(v52 + 7) < 0x706E616Eu)
      {
        NotifierList = TNode::GetNotifierList(a1);
        v55 = atomic_load(NotifierList);
        if (v55 >= 1)
        {
          TNode::HandleListeners(a1, 0);
        }
      }
    }
  }

LABEL_62:
  v56 = TNode::ParentLock(NotifierList);
  os_unfair_lock_lock(v56);
  TNodePtr::TNodePtr(&v115, *(a1 + 48));
  os_unfair_lock_unlock(v56);
  TNode::StPopulating::StPopulating(&v113, &v115.fFINode, 0);
  v57 = v112[0];
  if (v112[0])
  {
    v58 = v112;
    do
    {
      v59 = *(v57 + 7);
      v31 = v59 >= 0x706E616D;
      v60 = v59 < 0x706E616D;
      if (v31)
      {
        v58 = v57;
      }

      v57 = v57[v60];
    }

    while (v57);
    if (v58 != v112 && *(v58 + 7) < 0x706E616Eu)
    {
      if (*(v10 + 120) == 22)
      {
        goto LABEL_71;
      }

      if (TNodeFromFINode(v115.fFINode))
      {
        v62 = TNodeFromFINode(v115.fFINode);
        v63 = TNode::InfoLock(v62);
        os_unfair_lock_lock(v63);
        v65 = *(v62 + 16);
        v64 = *(v62 + 24);
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v63);
          v66 = *(v65 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        else
        {
          os_unfair_lock_unlock(v63);
          v66 = *(v65 + 120);
        }

        if (!v66)
        {
LABEL_71:
          v61 = TNodeFromFINode(v115.fFINode);
          TChildrenList::InvalidateSortOrder(*(v61 + 56));
        }
      }
    }
  }

  TNode::StPopulating::~StPopulating(&v113.fFINode);

  v67 = v112[0];
  if (v112[0])
  {
    v68 = v112;
    do
    {
      v69 = *(v67 + 7);
      v31 = v69 >= 0x6D6F6464;
      v70 = v69 < 0x6D6F6464;
      if (v31)
      {
        v68 = v67;
      }

      v67 = v67[v70];
    }

    while (v67);
    if (v68 != v112 && *(v68 + 7) < 0x6D6F6465u)
    {
      os_unfair_lock_lock((v10 + 108));
      v71 = *(v10 + 123);
      os_unfair_lock_unlock((v10 + 108));
      if ((v71 & 0x40) != 0)
      {
        TNode::ClearAliasTarget(a1, 1);
        v72 = *a2;
        os_unfair_lock_lock(*a2 + 27);
        v73 = *(v72 + 123);
        os_unfair_lock_unlock(v72 + 27);
        if ((v73 & 0x40) != 0)
        {
          v113.fFINode = 0;
          v114 = 0;
          TNodeRequest::Make();
        }
      }
    }

    v74 = v112[0];
    if (v112[0])
    {
      v75 = v112;
      do
      {
        v76 = *(v74 + 7);
        v31 = v76 >= 0x6F726967;
        v77 = v76 < 0x6F726967;
        if (v31)
        {
          v75 = v74;
        }

        v74 = v74[v77];
      }

      while (v74);
      if (v75 != v112 && *(v75 + 7) < 0x6F726968u)
      {
        v78 = TFSInfo::OriginatorInfo(*a2);

        if (!v78)
        {
          v80 = TNode::InfoLock(v79);
          os_unfair_lock_lock(v80);
          v82 = *(a1 + 16);
          v81 = *(a1 + 24);
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
            os_unfair_lock_unlock(v80);
            v83 = *(v82 + 120);
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
          }

          else
          {
            os_unfair_lock_unlock(v80);
            v83 = *(v82 + 120);
          }

          if (v83 == 7)
          {
            v84 = *a2;
            os_unfair_lock_lock(*a2 + 27);
            *(v84 + 127) &= ~0x1000u;
            os_unfair_lock_unlock(v84 + 27);
          }

          v85 = TFSInfo::OriginatorInfo(v10);
          TFSInfo::SetTemporaryOriginatorInfo(*a2, v85);
        }
      }
    }
  }

  if (TNode::VirtualType(a1) == 28)
  {
    v43 = TNode::GetFIProvider(a1);
    v45 = [v43 domain];
    if ([v43 isUsingFPFS])
    {
      TNode::UpdateOnDiskProviderRoot(a1);
    }

    else
    {
      TNode::ProviderNodeForProviderDomain(v43, 0, &v110);
      if (TNodeFromFINode(v110))
      {
        v86 = TNodeFromFINode(v110);
        TNode::HandleSync(v86, 557056);
        v87 = v112[0];
        if (v112[0])
        {
          v88 = v112;
          do
          {
            v89 = *(v87 + 7);
            v31 = v89 >= 0x66706175;
            v90 = v89 < 0x66706175;
            if (v31)
            {
              v88 = v87;
            }

            v87 = v87[v90];
          }

          while (v87);
          if (v88 != v112 && *(v88 + 7) < 0x66706176u && ([v45 needsAuthentication] & 1) == 0)
          {
            v91 = TNodeFromFINode(v110);
            TNode::RecursiveSyncOfObserveNodes(v91);
          }

          v92 = v112[0];
          if (v112[0])
          {
            v93 = v112;
            v94 = v112[0];
            do
            {
              v95 = *(v94 + 7);
              v31 = v95 >= 0x6E746373;
              v96 = v95 < 0x6E746373;
              if (v31)
              {
                v93 = v94;
              }

              v94 = v94[v96];
            }

            while (v94);
            if (v93 != v112 && *(v93 + 7) < 0x6E746374u)
            {
              goto LABEL_139;
            }

            v97 = v112;
            v98 = v112[0];
            do
            {
              v99 = *(v98 + 7);
              v31 = v99 >= 0x66706175;
              v100 = v99 < 0x66706175;
              if (v31)
              {
                v97 = v98;
              }

              v98 = v98[v100];
            }

            while (v98);
            if (v97 != v112 && *(v97 + 7) < 0x66706176u)
            {
              goto LABEL_139;
            }

            v101 = v112;
            do
            {
              v102 = *(v92 + 7);
              v31 = v102 >= 0x7046726D;
              v103 = v102 < 0x7046726D;
              if (v31)
              {
                v101 = v92;
              }

              v92 = v92[v103];
            }

            while (v92);
            if (v101 != v112 && *(v101 + 7) < 0x7046726Eu)
            {
LABEL_139:
              LODWORD(v113.fFINode) = 1853121395;
              std::__tree<Property>::__erase_unique<Property>(&v111, &v113);
              LODWORD(v113.fFINode) = 1883665005;
              std::__tree<Property>::__erase_unique<Property>(&v111, &v113);
              v104 = TNodeFromFINode(v110);
              TNode::RecursiveChildrenAndSelf(v104, &v113);
            }
          }
        }
      }
    }

    goto LABEL_141;
  }

LABEL_143:
  v105 = v112[0];
  if (!v112[0])
  {
    goto LABEL_151;
  }

  v106 = v112;
  do
  {
    v107 = *(v105 + 7);
    v31 = v107 >= 0x6F626A64;
    v108 = v107 < 0x6F626A64;
    if (v31)
    {
      v106 = v105;
    }

    v105 = v105[v108];
  }

  while (v105);
  if (v106 == v112 || *(v106 + 7) > 0x6F626A64u)
  {
LABEL_151:
    v106 = v112;
  }

  v46 = v106 != v112;
  if (v9)
  {
LABEL_153:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_154:
  std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(&v111, v112[0]);
  return v46;
}

void sub_1E56AE5D4(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, TPropertyValue *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

const void **TFSInfo::SynchronizeNames(uint64_t a1, TFSInfo **a2, uint64_t a3)
{
  TFSInfo::DisplayName(a1, &v11);
  TFSInfo::Name(a1, &v10);
  TFSInfo::Name(*a2, &v9);
  v6 = CFEqual(v10.fString.fRef, v9.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
  if (!v6)
  {
    LODWORD(v10.fString.fRef) = 1886282093;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v10);
  }

  if (*(a1 + 120) != 18)
  {
    TFSInfo::DisplayName(*a2, &v10);
    v7 = CFEqual(v11.fString.fRef, v10.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
    if (!v7)
    {
      LODWORD(v10.fString.fRef) = 1684955501;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v10);
    }
  }

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
}

void sub_1E56AE7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SynchronizeProperties(TFSInfo *this, TFSInfo **a2, uint64_t a3)
{
  if (*(this + 120) == 7)
  {
    goto LABEL_35;
  }

  TFSInfo::SynchronizeNames(this, a2, a3);
  TFSInfo::SynchronizeCatalog(this, a2, a3);
  TFSInfo::SynchronizeFPItemProperties(this, a2, a3);
  TFSInfo::SynchronizeFPProviderProperties(this, a2, a3);
  v6 = TFSInfo::OriginatorInfo(this);

  if (v6)
  {
    v35 = 1869769063;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v35);
  }

  v7 = TFSInfo::GetISIcon(this);

  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = TFSInfo::FetchISIcon(*a2);
  v9 = TFSInfo::GetISIcon(this);
  v10 = TFSInfo::GetISIcon(*a2);
  v11 = v9;
  v12 = v10;
  if ([v11 isEqual:v12])
  {

    goto LABEL_18;
  }

  {
    ISIconsAreEqual(ISIcon *,ISIcon *)::disableWorkaround = PrefsBool(@"DISABLE_75276146_WORKAROUND", 0);
  }

  if (ISIconsAreEqual(ISIcon *,ISIcon *)::disableWorkaround)
  {
    goto LABEL_16;
  }

  {
    ISIconsAreEqual(ISIcon *,ISIcon *)::customIconClass = NSClassFromString(&cfstr_Iscustomicon.isa);
  }

  {
    ISIconsAreEqual(ISIcon *,ISIcon *)::hasBookmarkSelector = [ISIconsAreEqual(ISIcon * ISIcon *):"instancesRespondToSelector:" :sel_bookmarkcustomIconClass];
  }

  if (ISIconsAreEqual(ISIcon *,ISIcon *)::hasBookmarkSelector != 1 || (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v11 bookmark];
  v15 = [v13 bookmark];
  v16 = [v14 isEqual:v15];

  if ((v16 & 1) == 0)
  {
LABEL_17:
    v35 = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v35);
  }

LABEL_18:
  os_unfair_lock_lock(this + 26);
  v17 = *(this + 10);
  if (v17)
  {
    v18 = TFSInfoOverflow::GetIFSymbol(v17);
  }

  else
  {
    v18 = 0;
  }

  os_unfair_lock_unlock(this + 26);
  if (v18)
  {
    v19 = TFSInfo::FetchIFSymbol(*a2);
    os_unfair_lock_lock(this + 26);
    v20 = *(this + 10);
    if (v20)
    {
      v21 = TFSInfoOverflow::GetIFSymbol(v20);
    }

    else
    {
      v21 = 0;
    }

    os_unfair_lock_unlock(this + 26);
    v22 = *a2;
    os_unfair_lock_lock(*a2 + 26);
    v23 = *(v22 + 10);
    if (v23)
    {
      v24 = TFSInfoOverflow::GetIFSymbol(v23);
    }

    else
    {
      v24 = 0;
    }

    os_unfair_lock_unlock(v22 + 26);
    v25 = v21;
    v26 = v24;
    if (v25 | v26)
    {
      v27 = v26;
      if ((v25 == 0) != (v26 == 0))
      {
      }

      else
      {
        v28 = [v25 name];
        v29 = [v27 name];
        v30 = [v28 isEqualToString:v29];

        if (v30)
        {
          goto LABEL_33;
        }
      }

      v35 = 1768323437;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v35);
      v35 = 1768124270;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v35);
    }
  }

LABEL_33:
  if (!*(this + 120))
  {
    TFSInfo::SynchronizeLaunchServices(this, a2, a3);
    TFSInfo::SynchronizePermissions(this, a2, a3);
    TFSInfo::SynchronizeKinds(this, a2, a3);
    TFSInfo::SynchronizeVersions(this, a2, a3);
    TFSInfo::SynchronizeTags(this, a2, a3);
  }

LABEL_35:
  if (*(a3 + 16))
  {
    return 1;
  }

  v32 = TFSInfo::GetFPItem(this);
  v33 = TFSInfo::GetFPItem(*a2);
  v31 = IsEqual(v32, v33) ^ 1;

  return v31;
}

void sub_1E56AED34(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<Property>::__emplace_unique_key_args<Property,Property>(uint64_t a1, unsigned int *a2)
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

uint64_t *std::__tree<TString,TTagCompare,std::allocator<TString>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void TFSInfo::SynchronizeCatalog(TFSInfo *this, os_unfair_lock_s **a2, uint64_t a3)
{
  v6 = *(this + 120);
  if (!*(this + 120))
  {
    if (*(this + 28) == 1651666795)
    {
      goto LABEL_3;
    }

    if (TFSInfo::GetCreationDate(this) != -534528000.0)
    {
LABEL_19:
      v6 = *(this + 120);
      goto LABEL_20;
    }

    if (*(this + 120))
    {
      v9 = *a2;
      if (LOBYTE((*a2)[30]._os_unfair_lock_opaque) || v9[28]._os_unfair_lock_opaque != 1651666795 && TFSInfo::GetCreationDate(v9) != -534528000.0)
      {
        goto LABEL_67;
      }

      goto LABEL_19;
    }

    if (*(this + 28) == 1651666795)
    {
LABEL_3:
      v7 = 1;
    }

    else
    {
      v7 = TFSInfo::GetCreationDate(this) == -534528000.0;
    }

    v8 = *a2;
    if (LOBYTE((*a2)[30]._os_unfair_lock_opaque))
    {
      if (!v7)
      {
        goto LABEL_67;
      }
    }

    else if (v8[28]._os_unfair_lock_opaque == 1651666795)
    {
      if (v7)
      {
        goto LABEL_67;
      }
    }

    else if (v7 == (TFSInfo::GetCreationDate(v8) == -534528000.0))
    {
      goto LABEL_67;
    }

    goto LABEL_19;
  }

LABEL_20:
  if (v6 == 22)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 28);
  }

  if (LOBYTE((*a2)[30]._os_unfair_lock_opaque) == 22)
  {
    os_unfair_lock_opaque = 0;
  }

  else
  {
    os_unfair_lock_opaque = (*a2)[28]._os_unfair_lock_opaque;
  }

  if (v10 != os_unfair_lock_opaque)
  {
    v66 = 1634956409;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    v66 = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    v66 = 1883665005;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    v6 = *(this + 120);
  }

  if (v6 == 22)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 29);
  }

  if (LOBYTE((*a2)[30]._os_unfair_lock_opaque) == 22)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*a2)[29]._os_unfair_lock_opaque;
  }

  if (v12 != v13)
  {
    v66 = 1717793396;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    v66 = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  ModificationDate = TFSInfo::GetModificationDate(this);
  if (ModificationDate != TFSInfo::GetModificationDate(*a2))
  {
    v66 = 1836016740;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    os_unfair_lock_lock(this + 27);
    v15 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if ((v15 & 2) != 0 || (v16 = *a2, os_unfair_lock_lock(*a2 + 27), v17 = *(&v16[30]._os_unfair_lock_opaque + 3), os_unfair_lock_unlock(v16 + 27), (v17 & 2) != 0))
    {
      v66 = 1819240307;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
      v66 = 1885895027;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    }
  }

  DateAddedDate = TFSInfo::GetDateAddedDate(this);
  if (DateAddedDate != TFSInfo::GetDateAddedDate(*a2))
  {
    v66 = 1883333732;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  IsLocked = TFSInfo::IsLocked(this);
  if (IsLocked != TFSInfo::IsLocked(*a2))
  {
    v66 = 1634954347;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    v66 = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  v21 = *MEMORY[0x1E695E340];
  BooleanProperty = TCFURLInfo::GetBooleanProperty(*(this + 1), *MEMORY[0x1E695E340], v20);
  if (BooleanProperty != TCFURLInfo::GetBooleanProperty(*&(*a2)[2]._os_unfair_lock_opaque, v21, v23))
  {
    v66 = 1970170987;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  TFSInfo::GetFinderInfo(this);
  v25 = (v24 >> 11) & 1;
  TFSInfo::GetFinderInfo(*a2);
  if (v25 != ((v26 >> 11) & 1))
  {
    v66 = 1886613604;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  HasCustomIcon = TFSInfo::HasCustomIcon(this);
  if (HasCustomIcon != TFSInfo::HasCustomIcon(*a2))
  {
    v66 = 1667851118;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    v66 = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    if ((*(this + 123) & 0x20) != 0)
    {
      v66 = 1668638316;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    }
  }

  IsAlias = TFSInfo::IsAlias(this);
  if (IsAlias != TFSInfo::IsAlias(*a2))
  {
    v66 = 1769169260;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  os_unfair_lock_lock(this + 27);
  v29 = (*(this + 123) >> 9) & 1;
  os_unfair_lock_unlock(this + 27);
  v30 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v31 = *(v30 + 123) & 0x200;
  os_unfair_lock_unlock(v30 + 27);
  if (v29 != v31 >> 9)
  {
    v66 = 1668246896;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  os_unfair_lock_lock(this + 27);
  v32 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  v33 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v34 = *(v33 + 123);
  os_unfair_lock_unlock(v33 + 27);
  if ((v34 ^ v32))
  {
    v66 = 1987273324;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  if (*(this + 120) == 29)
  {
    v35 = TFSInfo::GetFPItem(this);
    v36 = [v35 itemID];
    v37 = TFSInfo::GetFPItem(*a2);
    v38 = [v37 itemID];
    v39 = [v36 isEqualToItemID:v38];

    if (v39)
    {
      goto LABEL_67;
    }

LABEL_66:
    v66 = 1868720740;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    goto LABEL_67;
  }

  os_unfair_lock_lock(this + 27);
  v40 = (*(this + 123) >> 8) & 1;
  os_unfair_lock_unlock(this + 27);
  v41 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v42 = *(v41 + 123) & 0x100;
  os_unfair_lock_unlock(v41 + 27);
  if (v40 != v42 >> 8)
  {
    v66 = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    v66 = 1987013741;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  VolumeIdentifier = TFSInfo::GetVolumeIdentifier(this);
  if (VolumeIdentifier != TFSInfo::GetVolumeIdentifier(*a2))
  {
    goto LABEL_66;
  }

  ObjectIdentifier = TFSInfo::GetObjectIdentifier(this);
  if (ObjectIdentifier != TFSInfo::GetObjectIdentifier(*a2))
  {
    os_unfair_lock_lock(this + 27);
    v45 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if ((v45 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    v46 = *a2;
    os_unfair_lock_lock(*a2 + 27);
    v47 = *(v46 + 123);
    os_unfair_lock_unlock(v46 + 27);
    if ((v47 & 0x8000) == 0)
    {
      goto LABEL_66;
    }
  }

LABEL_67:
  os_unfair_lock_lock(this + 27);
  v48 = HIBYTE(*(this + 127)) & 1;
  os_unfair_lock_unlock(this + 27);
  v49 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v50 = *(v49 + 127) & 0x100;
  os_unfair_lock_unlock(v49 + 27);
  if (v48 != v50 >> 8)
  {
    v66 = 1883665005;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  if (*(this + 120))
  {
    v51 = *a2;
    if (LOBYTE((*a2)[30]._os_unfair_lock_opaque))
    {
      goto LABEL_79;
    }

    if (*(v51 + 28) != 1651666795)
    {
      CreationDate = TFSInfo::GetCreationDate(v51);
      goto LABEL_77;
    }

LABEL_78:
    v66 = 1883665005;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    goto LABEL_79;
  }

  if (*(this + 28) == 1651666795)
  {
    v53 = *a2;
    if (LOBYTE((*a2)[30]._os_unfair_lock_opaque))
    {
      goto LABEL_78;
    }

    v54 = 1;
  }

  else
  {
    CreationDate = TFSInfo::GetCreationDate(this);
    v54 = CreationDate == -534528000.0;
    v53 = *a2;
    if (LOBYTE((*a2)[30]._os_unfair_lock_opaque))
    {
LABEL_77:
      if (CreationDate != -534528000.0)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }
  }

  if (*(v53 + 28) == 1651666795)
  {
    if (!v54)
    {
      goto LABEL_78;
    }
  }

  else if (v54 != (TFSInfo::GetCreationDate(v53) == -534528000.0))
  {
    goto LABEL_78;
  }

LABEL_79:
  v55 = TFSInfo::GetCreationDate(this);
  if (v55 != TFSInfo::GetCreationDate(*a2))
  {
    if (!*(this + 120) && (*(this + 28) == 1651666795 || TFSInfo::GetCreationDate(this) == -534528000.0))
    {
      v66 = 1768124270;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    }

    v66 = 1634952036;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  os_unfair_lock_lock(this + 26);
  v56 = *(this + 10);
  v57 = 0.0;
  v58 = 0.0;
  if (v56)
  {
    os_unfair_lock_lock((v56 + 72));
    v58 = *(v56 + 48);
    os_unfair_lock_unlock((v56 + 72));
  }

  os_unfair_lock_unlock(this + 26);
  v59 = *a2;
  os_unfair_lock_lock(*a2 + 26);
  v60 = *(v59 + 10);
  if (v60)
  {
    os_unfair_lock_lock((v60 + 72));
    v57 = *(v60 + 48);
    os_unfair_lock_unlock((v60 + 72));
  }

  os_unfair_lock_unlock(v59 + 26);
  if (v58 != v57)
  {
    v66 = 1768845426;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
  }

  os_unfair_lock_lock(this + 27);
  v61 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v61 & 0x20) == 0)
  {
    DataLogicalSize = TFSInfo::GetDataLogicalSize(this);
    if (DataLogicalSize != TFSInfo::GetDataLogicalSize(*a2))
    {
      v66 = 1819240307;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    }

    ResourceLogicalSize = TFSInfo::GetResourceLogicalSize(this);
    if (ResourceLogicalSize != TFSInfo::GetResourceLogicalSize(*a2))
    {
      v66 = 1819240307;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    }

    DataPhysicalSize = TFSInfo::GetDataPhysicalSize(this);
    if (DataPhysicalSize != TFSInfo::GetDataPhysicalSize(*a2))
    {
      v66 = 1885895027;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    }

    ResourcePhysicalSize = TFSInfo::GetResourcePhysicalSize(this);
    if (ResourcePhysicalSize != TFSInfo::GetResourcePhysicalSize(*a2))
    {
      v66 = 1885895027;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v66);
    }
  }
}

double TFSInfo::GetModificationDate(TFSInfo *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = -6.31140768e10;
  if (*(this + 120) != 35)
  {
    os_unfair_lock_lock(this + 27);
    v3 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if ((v3 & 0x2000000) == 0)
    {
      v4 = *(this + 120);
      if ((v4 - 28) >= 2)
      {
        if (v4 == 26)
        {
          if (ICloudDriveFPFSEnabled())
          {
            v7 = TFSInfo::GetFPItem(this);
            v8 = [v7 contentModificationDate];

            if (v8)
            {
              v1 = MEMORY[0x1E692BF40](v8);
            }

            else
            {
              v1 = -6.31140768e10;
            }
          }
        }

        else
        {
          v1 = -6.31140768e10;
          TCFURLInfo::CopyPropertyValues(*(this + 1));
        }
      }

      else
      {
        v5 = TFSInfo::GetFPItem(this);
        v6 = [v5 contentModificationDate];

        if (v6)
        {
          v1 = MEMORY[0x1E692BF40](v6);
        }

        if (!v6)
        {
          v1 = -6.31140768e10;
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_1E56AFBF0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

double TFSInfo::GetDateAddedDate(TFSInfo *this)
{
  if (*(this + 120) == 35)
  {
    return -6.31140768e10;
  }

  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    return -6.31140768e10;
  }

  v4 = *(this + 1);
  v5 = *MEMORY[0x1E695EA00];

  return TCFURLInfo::GetDateProperty(v4, v5, v3);
}

double TCFURLInfo::GetDateProperty(TCFURLInfo *this, const __CFString *a2, const __CFString *a3)
{
  v3 = -*MEMORY[0x1E695E460];
  if (this)
  {
    propertyValueTypeRefPtr = 0;
    if (CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, 0))
    {
      if (propertyValueTypeRefPtr)
      {
        v4 = CFGetTypeID(propertyValueTypeRefPtr);
        if (v4 == CFDateGetTypeID())
        {
          v3 = MEMORY[0x1E692BF40](propertyValueTypeRefPtr);
        }
      }
    }

    TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(&propertyValueTypeRefPtr);
  }

  return v3;
}

void sub_1E56AFD18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

const void **TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t TFSInfo::IsLocked(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x80) != 0)
  {
    return 1;
  }

  os_unfair_lock_lock(this + 27);
  v3 = HIWORD(*(this + 123)) & 1;
  os_unfair_lock_unlock(this + 27);
  return v3;
}

void TFSInfo::SynchronizeFPItemProperties(TFSInfo *a1, TFSInfo **a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = TFSInfo::GetFPItem(a1);
  v7 = TFSInfo::GetFPItem(*a2);
  v8 = v7;
  if (v6 && !v7)
  {
    v9 = *a2;
    os_unfair_lock_lock(*a2 + 27);
    v10 = *(v9 + 2);
    *buf = v10;
    if (v10)
    {
      CFRetain(v10);
      v11 = *buf;
    }

    else
    {
      v11 = 0;
    }

    os_unfair_lock_unlock(v9 + 27);
    v12 = v11;
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(buf);
    v13 = FPItemManagerInstance();
    v82 = 0;
    v8 = [v13 itemForURL:v12 error:&v82];
    v14 = v82;

    if (v14)
    {
      v15 = LogObj(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = SanitizedURL(v12);
        *buf = 138543618;
        *&buf[4] = v14;
        v88 = 2114;
        *v89 = v16;
        _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "itemForURL error: %{public}@ for %{public}@", buf, 0x16u);
      }
    }

    TFSInfo::SetFPItem(*a2, v8);
  }

  v17 = [(FPItem *)v8 providerDomainID];
  *buf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(buf, v17);

  v80 = IsLocalStorageDomainID(buf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_82;
    }

LABEL_16:
    *buf = 1868720740;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    v23 = *a2;
    os_unfair_lock_lock(*a2 + 27);
    v24 = *(v23 + 123);
    os_unfair_lock_unlock(v23 + 27);
    if ((v24 & 0x20) != 0)
    {
      *buf = 1667785588;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    }

LABEL_18:
    if (!TFSInfo::IsFPv2(a1, 1))
    {
      v25 = [(TFSInfo *)v6 fileURL];
      v26 = [(FPItem *)v8 fileURL];
      v27 = IsEqual(v25, v26);

      if ((v27 & 1) == 0)
      {
        *buf = 1868720740;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
        v28 = *a2;
        os_unfair_lock_lock(*a2 + 27);
        v29 = *(v28 + 123);
        os_unfair_lock_unlock(v28 + 27);
        if ((v29 & 0x20) != 0)
        {
          *buf = 1667785588;
          std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
        }
      }
    }

    v30 = [(TFSInfo *)v6 isPending];
    if (v30 != [(FPItem *)v8 isPending])
    {
      *buf = 1886549619;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    }

    v31 = *a2;
    os_unfair_lock_lock(*a2 + 27);
    v32 = *(v31 + 123);
    os_unfair_lock_unlock(v31 + 27);
    if ((v32 & 0x20) != 0)
    {
      v33 = [(TFSInfo *)v6 childItemCount];
      v34 = [(FPItem *)v8 childItemCount];
      v35 = IsEqual(v33, v34);

      if ((v35 & 1) == 0)
      {
        *buf = 1667785588;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }
    }

    v36 = [(TFSInfo *)v6 itemDecorations];
    v37 = [(FPItem *)v8 itemDecorations];
    v38 = IsEqual(v36, v37);

    if (v38)
    {
      goto LABEL_65;
    }

    *buf = 1684366194;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    *buf = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    v40 = FP_ItemDecorationTypeSharing();
    v81.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v81, v40);

    v41 = [(FPItem *)v8 itemDecorations];
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(v84, v41);
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::IDContainerIteratorAdaptor(v83, -1, v41);
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(buf, v84);
    IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(v85, v83);
    while (1)
    {
      v42 = v85[0];
      if (*buf == v85[0] && v95 == v86)
      {
        break;
      }

      v43 = *(*&v89[2] + 8 * v94);
      v44 = [v43 type];
      v45 = operator==(&v81.fString.fRef, v44);

      if (v45)
      {
        v53 = 1;
        v42 = v85[0];
        goto LABEL_49;
      }

      v46 = v94;
      if (v94 >= v93 - 1)
      {
        v47 = [*buf countByEnumeratingWithState:&buf[8] objects:v91 count:4];
        v46 = -1;
        v93 = v47;
        v94 = -1;
      }

      if (v92 != *v90)
      {
        objc_enumerationMutation(*buf);
        v46 = v94;
      }

      v94 = v46 + 1;
      ++v95;
    }

    v53 = 0;
LABEL_49:

    if (v53)
    {
    }

    else
    {
      v79 = [(TFSInfo *)v6 itemDecorations];
      IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(v84, v79);
      IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::IDContainerIteratorAdaptor(v83, -1, v79);
      IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(buf, v84);
      IDContainerIteratorAdaptor<NSArray<FPItemDecoration *>>::NSForwardIterator<NSArray<FPItemDecoration *>>::NSForwardIterator(v85, v83);
      while (1)
      {
        v54 = v85[0];
        if (*buf == v85[0] && v95 == v86)
        {
          break;
        }

        v55 = *(*&v89[2] + 8 * v94);
        v56 = [v55 type];
        v57 = operator==(&v81.fString.fRef, v56);

        if (v57)
        {
          v60 = 1;
          v54 = v85[0];
          goto LABEL_62;
        }

        v58 = v94;
        if (v94 >= v93 - 1)
        {
          v59 = [*buf countByEnumeratingWithState:&buf[8] objects:v91 count:4];
          v58 = -1;
          v93 = v59;
          v94 = -1;
        }

        if (v92 != *v90)
        {
          objc_enumerationMutation(*buf);
          v58 = v94;
        }

        v94 = v58 + 1;
        ++v95;
      }

      v60 = 0;
LABEL_62:

      if (!v60)
      {
        goto LABEL_64;
      }
    }

    *buf = 1819501924;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    *buf = 1769171056;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
LABEL_64:
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v81.fString.fRef);
LABEL_65:
    v61 = TFSInfo::FPItemPermissionRestrictions(v6, v39);
    v63 = TFSInfo::FPItemPermissionRestrictions(v8, v62);
    if (v61 != v63)
    {
      *buf = 1886549619;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      if (((v63 ^ v61) & 0x98801) != 0)
      {
        *buf = 1970495843;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }
    }

    if (!v80)
    {
      TFSInfo::CheckiCloudFlags(a1, a2, a3);
      v64 = [(TFSInfo *)v6 downloadingError];
      v65 = [(FPItem *)v8 downloadingError];
      v66 = NSObjectsAreEqual(v64, v65);

      if ((v66 & 1) == 0)
      {
        *buf = 1969385844;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }

      v67 = [(TFSInfo *)v6 uploadingError];
      v68 = [(FPItem *)v8 uploadingError];
      v69 = NSObjectsAreEqual(v67, v68);

      if ((v69 & 1) == 0)
      {
        *buf = 1969385844;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }

      v70 = [(TFSInfo *)v6 isItemPinned];
      if (v70 != [(FPItem *)v8 isItemPinned]|| (v71 = [(TFSInfo *)v6 isPinnedSubitem], v71 != [(FPItem *)v8 isPinnedSubitem]))
      {
        *buf = 1969385844;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }

      IsTopLevelSharedItem = TFSInfo::IsTopLevelSharedItem(a1);
      if (IsTopLevelSharedItem != TFSInfo::IsTopLevelSharedItem(*a2))
      {
        *buf = 1936225392;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }

      v73 = TFSInfo::CopyICloudSharePerson(a1);
      v74 = TFSInfo::CopyICloudSharePerson(*a2);
      v76 = TFSInfo::PersonEqual(v73, v74, v75);

      if ((v76 & 1) == 0)
      {
        *buf = 1769171056;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }

      IsAppLibrary = TFSInfo::IsAppLibrary(a1);
      if (IsAppLibrary != TFSInfo::IsAppLibrary(*a2))
      {
        *buf = 1768124270;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
      }
    }

    goto LABEL_82;
  }

  TFSInfo::FetchBladeRunnerProperties(*a2, v18, v19);
  if (v6)
  {
    v20 = [(TFSInfo *)v6 itemIdentifier];
    v21 = [(FPItem *)v8 itemIdentifier];
    v22 = [v20 compare:v21] == 0;

    if (v22)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v48 = [(FPItem *)v8 itemDecorations];
  v49 = [v48 count] == 0;

  if (!v49)
  {
    *buf = 1684366194;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    *buf = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
  }

  *buf = 1868720740;
  std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
  v50 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v51 = *(v50 + 123);
  os_unfair_lock_unlock(v50 + 27);
  if ((v51 & 0x20) != 0)
  {
    *buf = 1667785588;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
  }

  if (!v80)
  {
    TFSInfo::CheckiCloudFlags(a1, a2, a3);
    if (TFSInfo::IsTopLevelSharedItem(*a2))
    {
      *buf = 1936225392;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    }

    v52 = TFSInfo::IsAppLibrary(a1);
    if (v52 != TFSInfo::IsAppLibrary(*a2))
    {
      *buf = 1768124270;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    }

    *buf = 1819501924;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    *buf = 1769171056;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
    *buf = 1969385844;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, buf);
  }

LABEL_82:

  v78 = *MEMORY[0x1E69E9840];
}

void TFSInfo::FetchBladeRunnerProperties(TFSInfo *this, uint64_t a2, const __CFString *a3)
{
  v4 = TFSInfo::ComputeBladeRunnerFlags(this, a2, a3);
  v5 = v4;
  TFSInfo::SetBladeRunnerFlags(this, v4);
  if ((v5 & 0x180) != 0)
  {
    if (UseFileProviderFramework())
    {
      v6 = TFSInfo::GetFPItem(this);
      v7 = v6;
      if (v6 && [(FPItem *)v6 isShared])
      {
        if ((v5 & 0x100) != 0)
        {
          v10 = 0;
        }

        else
        {
          v10 = FPSharedItemCreator(v7);
        }

        v8 = [(FPItem *)v7 mostRecentEditorNameComponents];
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v9 = v10;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v11 = v9;
    TFSInfo::SetICloudSharePerson(this, v9);
  }
}

uint64_t TFSInfo::ComputeBladeRunnerFlags(TFSInfo *this, uint64_t a2, const __CFString *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  *&v46[7] = 0;
  v47 = 0;
  v48 = 0;
  *v46 = 0;
  if ((TCFURLInfo::GetNumericalProperty(*(this + 1), *MEMORY[0x1E695E2A8], a3) & 0x40000000) != 0)
  {
    v46[0] = 1;
  }

  v4 = TFSInfo::GetFPItem(this);
  v5 = UseFileProviderFramework();
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    v39 = v4;
    v7 = [(FPItem *)v4 providerDomainID];
    *v67 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(v67, v7);

    v8 = IsLocalStorageDomainID(v67);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v67);

    if (v8)
    {
      v41 = 0;
      v42 = 0;
      v4 = v39;
      goto LABEL_30;
    }

    ComputeBRFlagsFromFPItem(v39, v67);
    v9 = v68;
    *v46 = *v67;
    *&v46[7] = *&v67[7];
    v10 = v69;
    v68 = 0;
    v69 = 0;
    v41 = v10;
    v47 = v9;
    v48 = v10;

    v4 = v39;
  }

  else
  {
    v41 = 0;
  }

  v42 = BRFlagsFromState(v46);
  if ((v42 & 0x2000) != 0 && v4 && [(FPItem *)v4 isCloudItem]&& ICloudDriveFPFSEnabled())
  {
    v11 = LogObj(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v35 = v11;
      v40 = v4;
      TFSInfo::Name(this, &v45);
      v37 = v45;
      v38 = TFSInfo::GetFPItem(this);
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v42];
      v12 = TFSInfo::GetFPItem(this);
      v57 = &stru_1F5F42870;
      v43 = v12;
      CFRetain(&stru_1F5F42870);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v13 = [v12 itemDecorations];
      v14 = [v13 countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (v14)
      {
        v15 = *v54;
        v16 = *MEMORY[0x1E695E480];
        v17 = *MEMORY[0x1E695E498];
        obj = v13;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v54 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v53 + 1) + 8 * i);
            if ([v19 requiresFetchingInfoFirst])
            {
              v20 = CFStringCreateWithBytesNoCopy(v16, "\t", 1, 0x8000100u, 0, v17);
              v58.fString.fRef = v20;
              v50.fString.fRef = &stru_1F5F42870;
              CFRetain(&stru_1F5F42870);
              TString::SetStringRefAsImmutable(&v50, v20);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58.fString.fRef);
              v21 = CFStringCreateWithBytesNoCopy(v16, "{requiresFetchingInfoFirst} ", 28, 0x8000100u, 0, v17);
              v58.fString.fRef = v21;
              v49.fString.fRef = &stru_1F5F42870;
              CFRetain(&stru_1F5F42870);
              TString::SetStringRefAsImmutable(&v49, v21);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58.fString.fRef);
              fRef = v50.fString.fRef;
              v51.fString.fRef = &stru_1F5F42870;
              CFRetain(&stru_1F5F42870);
              MutableCopy = CFStringCreateMutableCopy(v16, 0, fRef);
              CFRelease(&stru_1F5F42870);
              v51.fString.fRef = MutableCopy;
              TString::Append(&v51, &v49);
              v24 = [v19 description];
              v58.fString.fRef = &stru_1F5F42870;
              CFRetain(&stru_1F5F42870);
              TString::SetStringRefAsImmutable(&v58, v24);

              v25 = v51.fString.fRef;
              v52.fString.fRef = &stru_1F5F42870;
              CFRetain(&stru_1F5F42870);
              v26 = CFStringCreateMutableCopy(v16, 0, v25);
              CFRelease(&stru_1F5F42870);
              v52.fString.fRef = v26;
              TString::Append(&v52, &v58);
              TString::Append(&v57, &v52);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v52.fString.fRef);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58.fString.fRef);

              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v51.fString.fRef);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v49.fString.fRef);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
            }

            else
            {
              v27 = [v19 labelsWithItem:v12 error:0];
              if ([v27 count])
              {
                v28 = CFStringCreateWithBytesNoCopy(v16, "\t", 1, 0x8000100u, 0, v17);
                v58.fString.fRef = v28;
                v51.fString.fRef = &stru_1F5F42870;
                CFRetain(&stru_1F5F42870);
                TString::SetStringRefAsImmutable(&v51, v28);
                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58.fString.fRef);
                v29 = [v27 componentsJoinedByString:{@", "}];
                v58.fString.fRef = &stru_1F5F42870;
                CFRetain(&stru_1F5F42870);
                TString::SetStringRefAsImmutable(&v58, v29);

                v30 = v51.fString.fRef;
                v52.fString.fRef = &stru_1F5F42870;
                CFRetain(&stru_1F5F42870);
                v31 = CFStringCreateMutableCopy(v16, 0, v30);
                CFRelease(&stru_1F5F42870);
                v52.fString.fRef = v31;
                TString::Append(&v52, &v58);
                TString::Append(&v57, &v52);
                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v52.fString.fRef);
                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58.fString.fRef);

                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v51.fString.fRef);
              }
            }

            TString::Append(&v57, "\n");
          }

          v13 = obj;
          v14 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
        }

        while (v14);
      }

      v32 = v57;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v57);
      *buf = 138544130;
      v60 = v37;
      v61 = 2114;
      v62 = v38;
      v63 = 2114;
      v64 = v36;
      v65 = 2114;
      v66 = v32;
      _os_log_impl(&dword_1E5674000, v35, OS_LOG_TYPE_DEBUG, "item '%{public}@' state is 'waiting to update'\nfpItem=%{public}@\nflags=%{public}@\ndecorations=[%{public}@]\n", buf, 0x2Au);

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v45);
      v4 = v40;
      v11 = v35;
    }
  }

LABEL_30:

  v33 = *MEMORY[0x1E69E9840];
  return v42;
}

void sub_1E56B134C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a35);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a18);
  _Unwind_Resume(a1);
}

void ComputeBRFlagsFromFPItem(FPItem *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 7) = 0;
  *(a2 + 24) = 0;
  v3 = UseFileProviderFramework() ^ 1;
  if (!v16)
  {
    LOBYTE(v3) = 1;
  }

  v4 = v16;
  if ((v3 & 1) == 0)
  {
    if ([(FPItem *)v16 isCloudItem])
    {
      if (([(FPItem *)v16 isFolder]& 1) != 0 || [(FPItem *)v16 isPackage])
      {
        v5 = [(FPItem *)v16 isRecursivelyDownloaded];
      }

      else
      {
        v5 = [(FPItem *)v16 isDownloaded];
      }

      v6 = v5 ^ 1;
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = [(FPItem *)v16 isUploaded];
    *(a2 + 2) = [(FPItem *)v16 isUploading];
    *(a2 + 3) = [(FPItem *)v16 isDownloading];
    v7 = [(FPItem *)v16 isMostRecentVersionDownloaded];
    *(a2 + 4) = v7;
    v8 = [(FPItem *)v16 isExcludedFromSync];
    *(a2 + 6) = v8;
    v9 = [(FPItem *)v16 downloadingError];
    *(a2 + 16) = v9;
    v10 = [(FPItem *)v16 uploadingError];
    *(a2 + 24) = v10;
    v11 = (v8 & 1) == 0 && (v10 | v9) != 0;
    *(a2 + 5) = v11;
    v12 = static_objc_cast<NSString,objc_object * {__strong}>(v16);
    v13 = [v12 isDownloadRequested];
    *(a2 + 7) = [v13 BOOLValue] & (v7 ^ 1);

    v14 = [(FPItem *)v16 uploadingError];
    *(a2 + 8) = BladeRunnerOutOfSpaceError(v14);

    if ([(FPItem *)v16 isShared])
    {
      v15 = FPSharedItemCreator(v16);
      *(a2 + 9) = v15 != 0;
    }

    else
    {
      *(a2 + 9) = 0;
    }

    *(a2 + 10) = [(FPItem *)v16 isShared]& (*(a2 + 9) ^ 1);
    v4 = v16;
  }
}

void sub_1E56B1794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  BRFlagsRecord::~BRFlagsRecord(v10);

  _Unwind_Resume(a1);
}

uint64_t BladeRunnerOutOfSpaceError(NSError *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  v3 = [(NSError *)v1 domain];
  if (![v3 isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_6;
  }

  v4 = [(NSError *)v2 code];

  if (v4 != 4354)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 1;
LABEL_7:

  return v5;
}

uint64_t BRFlagsFromState(unsigned __int8 *a1)
{
  LODWORD(v1) = *a1 | 2;
  if (!a1[2])
  {
    LODWORD(v1) = *a1;
  }

  if (a1[3])
  {
    LODWORD(v1) = v1 | 8;
  }

  if (a1[5])
  {
    LODWORD(v1) = v1 | 0x10;
  }

  if (a1[6])
  {
    LODWORD(v1) = v1 | 0x20;
  }

  if (a1[9])
  {
    LODWORD(v1) = v1 | 0x80;
  }

  if (a1[10])
  {
    LODWORD(v1) = v1 | 0x100;
  }

  if (a1[8])
  {
    v1 = v1 | 0x800;
  }

  else
  {
    v1 = v1;
  }

  if ((a1[6] & 1) == 0)
  {
    if (a1[4] != 1 || (a1[2] & 1) != 0 || (a1[1] & 1) != 0)
    {
      if (*a1)
      {
        if ((a1[3] & 1) == 0)
        {
          if (a1[7])
          {
            return v1 | 0x400;
          }

          else
          {
            return v1;
          }
        }
      }

      else
      {
        v2 = v1 | 0x2000;
        if (a1[4])
        {
          v2 = v1;
        }

        if (a1[2])
        {
          v3 = v1;
        }

        else
        {
          v3 = v2;
        }

        if (a1[3])
        {
          return v1;
        }

        else
        {
          return v3;
        }
      }
    }

    else
    {
      return v1 | 0x200;
    }
  }

  return v1;
}

void TFSInfo::SetBladeRunnerFlags(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 104));
  if (a2 != 0x80000000 || *(a1 + 80))
  {
    Overflow = TFSInfo::GetOrCreateOverflow(a1);
    os_unfair_lock_lock((Overflow + 72));
    if (a2 != 0x80000000)
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
      *(Overflow + 32) = a2;
    }
  }

  os_unfair_lock_unlock((a1 + 104));
}

uint64_t *TFSInfo::CheckiCloudFlags(uint64_t a1, TFSInfo **a2, uint64_t a3)
{
  BladeRunnerFlags = TFSInfo::GetBladeRunnerFlags(a1);
  result = TFSInfo::GetBladeRunnerFlags(*a2);
  if (BladeRunnerFlags != result)
  {
    v8 = TFSInfo::GetBladeRunnerFlags(a1);
    if ((TFSInfo::GetBladeRunnerFlags(*a2) ^ v8))
    {
      v10 = 1685548132;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v10);
      os_unfair_lock_lock((a1 + 108));
      *(a1 + 123) &= ~0x8000000u;
      os_unfair_lock_unlock((a1 + 108));
    }

    v9 = 1969385844;
    return std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v9);
  }

  return result;
}

uint64_t TFSInfo::IsTopLevelSharedItem(TFSInfo *this)
{
  if (!UseFileProviderFramework())
  {
    return 0;
  }

  v2 = TFSInfo::GetFPItem(this);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 isTopLevelSharedItem];

  return v4;
}

uint64_t TFSInfo::IsAppLibrary(TFSInfo *this)
{
  if (!UseFileProviderFramework())
  {
    return 0;
  }

  v2 = TFSInfo::GetFPItem(this);
  v3 = [v2 isContainer];

  return v3;
}

void TFSInfo::SynchronizeFPProviderProperties(uint64_t a1, os_unfair_lock_s **a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 104));
  v6 = *(a1 + 80);
  if (v6 && (os_unfair_lock_lock((v6 + 72)), v7 = *(v6 + 76), os_unfair_lock_unlock((v6 + 72)), v7 == 1))
  {
    v14 = *(v6 + 24);
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock((a1 + 104));
  v8 = *a2;
  os_unfair_lock_lock(*a2 + 26);
  v9 = *&v8[20]._os_unfair_lock_opaque;
  if (v9)
  {
    os_unfair_lock_lock((v9 + 72));
    v10 = *(v9 + 76);
    os_unfair_lock_unlock((v9 + 72));
    if (v10 == 1)
    {
      v9 = *(v9 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  os_unfair_lock_unlock(v8 + 26);
  v11 = v14;
  if (v14 | v9)
  {
    v12 = [v14 domain];
    v13 = [v9 domain];
    TFSInfo::ChangesForFPDomain(v12, v13, a3);

    v11 = v14;
  }

  v15 = v11;
}

void TFSInfo::ChangesForFPDomain(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [(TFSInfo *)v5 isEnabled];
  if (v7 == [(TFSInfo *)v6 isEnabled])
  {
    v8 = [(TFSInfo *)v5 isHidden];
    if (v8 == [(TFSInfo *)v6 isHidden])
    {
      v9 = [(TFSInfo *)v5 needsAuthentication];
      if (v9 == [(TFSInfo *)v6 needsAuthentication])
      {
        IsDisconnectedDomain = TFSInfo::IsDisconnectedDomain(v5, v10);
        if (IsDisconnectedDomain != TFSInfo::IsDisconnectedDomain(v6, v12))
        {
          LODWORD(v18.fString.fRef) = 1987273324;
          std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
          LODWORD(v18.fString.fRef) = 1886549619;
          std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
          LODWORD(v18.fString.fRef) = 1853121395;
          std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
        }
      }

      else
      {
        LODWORD(v18.fString.fRef) = 1987273324;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
        LODWORD(v18.fString.fRef) = 1718641013;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
      }
    }

    else
    {
      LODWORD(v18.fString.fRef) = 1987273324;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
    }
  }

  else
  {
    LODWORD(v18.fString.fRef) = 1987273324;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
    LODWORD(v18.fString.fRef) = 1883665005;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
  }

  v13 = [(TFSInfo *)v5 identifier];
  v14 = [(TFSInfo *)v6 identifier];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    LODWORD(v18.fString.fRef) = 1868720740;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
  }

  if (v5 != v6)
  {
    v16 = [(TFSInfo *)v6 identifier];
    v18.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v18, v16);

    v17 = IsLocalStorageDomainID(&v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);

    if (!v17)
    {
      LODWORD(v18.fString.fRef) = 1969385844;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v18);
    }
  }
}

os_unfair_lock_s *TFSInfo::OriginatorInfo(TFSInfo *this)
{
  os_unfair_lock_lock(this + 26);
  v2 = *(this + 10);
  if (v2)
  {
    os_unfair_lock_lock(v2 + 18);
    os_unfair_lock_opaque_low = LOBYTE(v2[19]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v2 + 18);
    if (os_unfair_lock_opaque_low == 2)
    {
LABEL_5:
      v2 = *&v2->_os_unfair_lock_opaque;
      goto LABEL_7;
    }

    v4 = *(this + 10);
    os_unfair_lock_lock((v4 + 72));
    v5 = *(v4 + 76);
    os_unfair_lock_unlock((v4 + 72));
    if (v5 == 1)
    {
      v2 = (v4 + 16);
      goto LABEL_5;
    }

    v2 = 0;
  }

LABEL_7:
  os_unfair_lock_unlock(this + 26);

  return v2;
}

uint64_t TFSInfo::SynchronizeLaunchServices(uint64_t a1, os_unfair_lock_s **a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 108));
  v6 = (*(a1 + 123) >> 2) & 1;
  os_unfair_lock_unlock((a1 + 108));
  v7 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v8 = *(&v7[30]._os_unfair_lock_opaque + 3) & 4;
  os_unfair_lock_unlock(v7 + 27);
  if (v6 != v8 >> 2)
  {
    v23 = 1769169264;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
  }

  os_unfair_lock_lock((a1 + 108));
  v9 = (*(a1 + 123) >> 1) & 1;
  os_unfair_lock_unlock((a1 + 108));
  v10 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v11 = *(&v10[30]._os_unfair_lock_opaque + 3) & 2;
  os_unfair_lock_unlock(v10 + 27);
  if (v9 != v11 >> 1)
  {
    v23 = 1769173099;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
    v23 = 1819240307;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
    v23 = 1885895027;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
  }

  os_unfair_lock_lock((a1 + 108));
  v12 = (*(a1 + 123) >> 4) & 1;
  os_unfair_lock_unlock((a1 + 108));
  v13 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v14 = *(&v13[30]._os_unfair_lock_opaque + 3) & 0x10;
  os_unfair_lock_unlock(v13 + 27);
  if (v12 != v14 >> 4)
  {
    os_unfair_lock_lock((a1 + 108));
    v15 = *(a1 + 127);
    os_unfair_lock_unlock((a1 + 108));
    if ((v15 & 0x400) != 0)
    {
      v23 = 1668506984;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
    }
  }

  os_unfair_lock_lock((a1 + 108));
  v16 = (*(a1 + 127) >> 11) & 1;
  os_unfair_lock_unlock((a1 + 108));
  v17 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v18 = *(&v17[31]._os_unfair_lock_opaque + 3) & 0x800;
  os_unfair_lock_unlock(v17 + 27);
  if (v16 != v18 >> 11)
  {
    v23 = 1920167267;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
  }

  os_unfair_lock_lock((a1 + 108));
  v19 = (*(a1 + 123) >> 3) & 1;
  os_unfair_lock_unlock((a1 + 108));
  v20 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v21 = *(&v20[30]._os_unfair_lock_opaque + 3) & 8;
  os_unfair_lock_unlock(v20 + 27);
  if (v19 != v21 >> 3)
  {
    v23 = 1751480436;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
    v23 = 1684955501;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v23);
  }

  result = TFSInfo::ApplicationDMFPolicy(a1);
  if (result != -1)
  {
    BYTE1((*a2)[30]._os_unfair_lock_opaque) = result;
  }

  return result;
}

void TFSInfo::SynchronizePermissions(uint64_t a1, TFSInfo **a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 108));
  v6 = *(a1 + 127);
  os_unfair_lock_unlock((a1 + 108));
  if ((v6 & 0x10) != 0)
  {
    v32 = TFSInfo::CopyPermissions(a1);
    v31 = TFSInfo::CopyPermissions(*a2);
    v7 = CopyACLToText(v32);
    v30 = v7;
    v8 = CopyACLToText(v31);
    v29 = v8;
    if ((v8 == 0) != (v7 == 0) || v7 && strcmp(v7, v8))
    {
      v28 = 1768124270;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v28);
      v28 = 1886549619;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v28);
    }

    TACLRef<char *>::~TACLRef(&v29);
    TACLRef<char *>::~TACLRef(&v30);
    TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&v31);
    TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&v32);
  }

  Owner = TFSInfo::GetOwner(a1);
  if (Owner != TFSInfo::GetOwner(*a2))
  {
    LODWORD(v32) = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
    LODWORD(v32) = 1870098034;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
  }

  UserGroups = TFSInfo::GetUserGroups(a1);
  if (UserGroups != TFSInfo::GetUserGroups(*a2))
  {
    LODWORD(v32) = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
    LODWORD(v32) = 1970497394;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
  }

  Mode = TFSInfo::GetMode(a1);
  if (Mode != TFSInfo::GetMode(*a2))
  {
    LODWORD(v32) = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
    LODWORD(v32) = 1886549619;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
  }

  UserAccess = TFSInfo::GetUserAccess(a1);
  if (UserAccess != TFSInfo::GetUserAccess(*a2))
  {
    LODWORD(v32) = 1970495843;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
    LODWORD(v32) = 1768124270;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
  }

  os_unfair_lock_lock((a1 + 108));
  v13 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v13 & 0x40000000) != 0)
  {
    os_unfair_lock_lock((a1 + 108));
    v14 = *(a1 + 123);
    os_unfair_lock_unlock((a1 + 108));
    if ((v14 & 0x20) != 0)
    {
      v15 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v16 = *(v15 + 123);
      os_unfair_lock_unlock(v15 + 27);
      if ((v16 & 0x40000000) == 0)
      {
        TFSInfo::SetExtendedUserAccess(*a2);
      }

      os_unfair_lock_lock((a1 + 108));
      v27 = *(a1 + 123);
      os_unfair_lock_unlock((a1 + 108));
      v17 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v18 = *(v17 + 123);
      os_unfair_lock_unlock(v17 + 27);
      os_unfair_lock_lock((a1 + 108));
      v19 = *(a1 + 123);
      os_unfair_lock_unlock((a1 + 108));
      v20 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v21 = *(v20 + 123);
      os_unfair_lock_unlock(v20 + 27);
      os_unfair_lock_lock((a1 + 108));
      v22 = *(a1 + 123);
      os_unfair_lock_unlock((a1 + 108));
      v23 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v24 = *(v23 + 123);
      os_unfair_lock_unlock(v23 + 27);
      os_unfair_lock_lock((a1 + 108));
      LODWORD(v23) = *(a1 + 123);
      os_unfair_lock_unlock((a1 + 108));
      v25 = *a2;
      os_unfair_lock_lock(v25 + 27);
      v26 = *(v25 + 123);
      os_unfair_lock_unlock(v25 + 27);
      if ((v23 ^ v26) & 0x800000) != 0 || (((v22 ^ v24) >> 22) & 1) != 0 || (((v19 ^ v21) >> 21) & 1) != 0 || (((v27 ^ v18) >> 20))
      {
        LODWORD(v32) = 1970495843;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
        LODWORD(v32) = 1768124270;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v32);
      }
    }
  }
}

void sub_1E56B2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  TACLRef<char *>::~TACLRef(va);
  TACLRef<char *>::~TACLRef(va1);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va2);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va3);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::ApplicationDMFPolicy(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 4) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 26);
  v3 = *(this + 121);
  os_unfair_lock_unlock(this + 26);
  return v3;
}

uint64_t TFSInfo::GetOwner(TFSInfo *this)
{
  owner = 0;
  v1 = TFSInfo::CopyPermissions(this);
  v4 = v1;
  if (v1)
  {
    CFFileSecurityGetOwner(v1, &owner);
    v2 = owner;
  }

  else
  {
    v2 = 0;
  }

  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&v4);
  return v2;
}

uint64_t TFSInfo::CopyPermissions(TFSInfo *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  v6 = v1;
  if (v1)
  {
    CFRetain(v1);
    v7 = 0;
    TCFURLInfo::CopyPropertyValues(v1);
    os_unfair_lock_lock(this + 27);
    *(this + 127) |= 0x10u;
    os_unfair_lock_unlock(this + 27);
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v6);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1E56B28C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetUserGroups(TFSInfo *this)
{
  group = 0;
  v1 = TFSInfo::CopyPermissions(this);
  v4 = v1;
  if (v1)
  {
    CFFileSecurityGetGroup(v1, &group);
    v2 = group;
  }

  else
  {
    v2 = 0;
  }

  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&v4);
  return v2;
}

uint64_t TFSInfo::GetMode(TFSInfo *this)
{
  mode = 0;
  v1 = TFSInfo::CopyPermissions(this);
  v4 = v1;
  if (v1)
  {
    CFFileSecurityGetMode(v1, &mode);
    v2 = mode;
  }

  else
  {
    v2 = 0;
  }

  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&v4);
  return v2;
}

uint64_t TFSInfo::GetUserAccess(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  os_unfair_lock_lock(this + 27);
  v3 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  v4 = (v3 >> 12) & 2 | (v2 >> 14) & 1;
  os_unfair_lock_lock(this + 27);
  v5 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  return v4 | (v5 >> 10) & 4;
}

BOOL TFSInfo::KindWithoutPlatformFetched(TFSInfo *this)
{
  if (*(this + 120))
  {
    return 0;
  }

  TFSInfo::LocalizedTypeDescription(this, &theString);
  v1 = CFStringGetLength(theString) != 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return v1;
}

void sub_1E56B2A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TFSInfo::SynchronizeKinds(TFSInfo *this, TFSInfo **a2, uint64_t a3)
{
  if (!*(this + 120) && *(this + 5))
  {
    cf2 = 0;
    TFSInfo::GetUTType(this, &cf2, 128, &v11);
    cf1 = 0;
    TFSInfo::GetUTType(*a2, &cf1, 0, &v11);
    v6 = cf1;
    v7 = cf2;
    if (([cf1 isEqual:cf2] & 1) == 0)
    {
      v9 = 1970566256;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v9);
      v9 = 1970563428;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v9);
    }
  }

  result = TFSInfo::KindWithoutPlatformFetched(this);
  if (result)
  {
    cf2 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TFSInfo::GetKindWithoutPlatform(this, &cf2, 128, &v11);
    cf1 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TFSInfo::GetKindWithoutPlatform(*a2, &cf1, 0, &v11);
    if (!CFEqual(cf1, cf2))
    {
      v9 = 1802072172;
      std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v9);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
    return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
  }

  return result;
}

uint64_t TFSInfo::SynchronizeVersions(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 108));
  v6 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v6 & 0x10000000) == 0)
  {
    return 0;
  }

  v15.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v14 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  if (TFSInfo::GetShortVersion(a1, &v15.fString.fRef) || TFSInfo::GetShortVersion(*a2, &v14) || CFEqual(v15.fString.fRef, v14))
  {
    v7 = 0;
  }

  else
  {
    os_unfair_lock_lock((a1 + 104));
    v12 = *a1;
    if (!*a1)
    {
      _ZNSt3__111make_uniqueB8ne200100I12TVersionDataJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
    }

    if (v12 != &v14)
    {
      TString::SetStringRefAsImmutable(v12, v14);
    }

    LODWORD(v13) = 1936225906;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v13);
    os_unfair_lock_unlock((a1 + 104));
    v7 = 1;
  }

  if (!TFSInfo::GetLongVersion(a1, &v15) && !TFSInfo::GetLongVersion(*a2, &v14) && !CFEqual(v15.fString.fRef, v14))
  {
    os_unfair_lock_lock((a1 + 104));
    v8 = *a1;
    if (!*a1)
    {
      _ZNSt3__111make_uniqueB8ne200100I12TVersionDataJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
    }

    if (&v8[1] != &v14)
    {
      TString::SetStringRefAsImmutable(v8 + 1, v14);
    }

    LODWORD(v13) = 1986359923;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v13);
    os_unfair_lock_unlock((a1 + 104));
    v7 = 1;
  }

  if (!TFSInfo::GetSystemVersion(a1, &v15) && !TFSInfo::GetSystemVersion(*a2, &v14) && !CFEqual(v15.fString.fRef, v14))
  {
    os_unfair_lock_lock((a1 + 104));
    v9 = *a1;
    if (!*a1)
    {
      _ZNSt3__111make_uniqueB8ne200100I12TVersionDataJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
    }

    if (&v9[2] != &v14)
    {
      TString::SetStringRefAsImmutable(v9 + 2, v14);
    }

    LODWORD(v13) = 1937340018;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v13);
    os_unfair_lock_unlock((a1 + 104));
    v7 = 1;
  }

  if (!TFSInfo::GetCopyrightString(a1, &v15) && !TFSInfo::GetCopyrightString(*a2, &v14) && !CFEqual(v15.fString.fRef, v14))
  {
    os_unfair_lock_lock((a1 + 104));
    v10 = *a1;
    if (!*a1)
    {
      _ZNSt3__111make_uniqueB8ne200100I12TVersionDataJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
    }

    if (&v10[3] != &v14)
    {
      TString::SetStringRefAsImmutable(v10 + 3, v14);
    }

    LODWORD(v13) = 1668313715;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v13);
    os_unfair_lock_unlock((a1 + 104));
    v7 = 1;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
  return v7;
}

void sub_1E56B2F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  os_unfair_lock_unlock(v3 + 26);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

const void **TFSInfo::SynchronizeTags(TFSInfo *a1, TFSInfo **a2, uint64_t a3)
{
  v8 = TFSInfo::CopyTagsAndAttributes(a1, 0);
  v7 = TFSInfo::CopyTagsAndAttributes(*a2, 0);
  if ((IsEqual(v8, v7) & 1) == 0)
  {
    v6 = 1718903156;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v6);
  }

  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v7);
  return TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v8);
}

void sub_1E56B3084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(va);
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(va1);
  _Unwind_Resume(a1);
}

const __CFArray *TFSInfo::CopyTagsAndAttributes(TFSInfo *this, int a2)
{
  theArray = 0;
  if (a2)
  {
    os_unfair_lock_lock(this + 27);
    v3 = *(this + 2);
    v34 = v3;
    if (v3)
    {
      CFRetain(v3);
      v4 = v34;
      os_unfair_lock_unlock(this + 27);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v34);
      if (v4)
      {
        v5 = TFSInfo::CopyTagsForPath(this);
        theArray = v5;
        goto LABEL_31;
      }
    }

    else
    {
      os_unfair_lock_unlock(this + 27);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v34);
    }

    v9 = TFSInfo::GetFPItem(this);
    v10 = [v9 tags];

    if ([v10 count] && objc_opt_class())
    {
      IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(v32, v10);
      IDContainerIteratorAdaptor<NSArray<FPTag *>>::IDContainerIteratorAdaptor(v31, -1, v10);
      v11 = algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FPTag *>>>(v32, v31);

      v12 = type_traits_extras::CopyAsHelper<NSArray<FPSandboxingURLWrapper *> * {__strong}>::MakeWithCapacity(v11);
      IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(&v34, v10);
      IDContainerIteratorAdaptor<NSArray<FPTag *>>::IDContainerIteratorAdaptor(v33, -1, v10);
      v13 = v12;
      while (v34 != v33[0] || v39 != v33[16])
      {
        v14 = *(&v35[1]->isa + v38);
        v15 = [v14 label];
        v40.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v40, v15);

        if (CFStringGetLength(v40.fString.fRef))
        {
          v17 = TFSInfo::LabelColorForTagName(&v40, v16);
          v18 = [v14 color];
          if ((v17 & 0x10000) == 0)
          {
            LOWORD(v17) = v18;
          }

          fRef = v40.fString.fRef;
          if (v40.fString.fRef)
          {
            v20 = CFRetain(v40.fString.fRef);
            fRef = static_cf_cast<__CFString const*,void const*>(v20);
            if (fRef)
            {
              v21 = CFAutorelease(fRef);
              fRef = static_cf_cast<__CFString const*,void const*>(v21);
            }
          }

          EncodedTag = TCFURLInfo::CreateEncodedTag(fRef, v17);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40.fString.fRef);

          v14 = v13;
          [v14 addObject:EncodedTag];
        }

        else
        {
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40.fString.fRef);
          EncodedTag = v14;
        }

        v23 = v38;
        if (v38 >= v37 - 1)
        {
          v24 = [v34 countByEnumeratingWithState:v35 objects:v36 count:4];
          v23 = -1;
          v37 = v24;
          v38 = -1;
        }

        if (v36[4] != v35[2]->isa)
        {
          objc_enumerationMutation(v34);
          v23 = v38;
        }

        v38 = v23 + 1;
        ++v39;
      }

      theArray = Copy<NSMutableArray<FILocalAppContainerNode *>>(v13);
    }

    v5 = theArray;
LABEL_31:
    os_unfair_lock_lock(this + 26);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(this + 11, v5);
    os_unfair_lock_lock(this + 27);
    *(this + 127) |= 0x200u;
    os_unfair_lock_unlock(this + 27);
    os_unfair_lock_unlock(this + 26);
    os_unfair_lock_lock(this + 27);
    *(this + 127) |= 0x200u;
    os_unfair_lock_unlock(this + 27);
    Mutable = theArray;
    if (!theArray)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  os_unfair_lock_lock(this + 26);
  v6 = *(this + 11);
  if (v6)
  {
    v7 = CFRetain(v6);
    Mutable = static_cf_cast<__CFString const*,void const*>(v7);
  }

  else
  {
    Mutable = 0;
  }

  os_unfair_lock_unlock(this + 26);
  theArray = Mutable;
  if (Mutable)
  {
LABEL_32:
    Count = CFArrayGetCount(Mutable);
    Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
    for (i = 0; i < CFArrayGetCount(theArray); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      TCFURLInfo::DecodeEncodedTagString(ValueAtIndex, &v34);
      if (v34)
      {
        v33[0] = TCFURLInfo::CreateTagDictionary(v34, v35[0], v28);
        CFArrayAppendValue(Mutable, v33[0]);
        TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(v33);
      }
    }
  }

LABEL_37:
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&theArray);
  return Mutable;
}

const void **TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TNodeEvent::CreateNodeEvent(int a1@<W0>, id *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  memset(&v6, 0, sizeof(v6));
  v5[0] = 0;
  v5[1] = 0;
  v4 = 0;
  TNodeEvent::CreateNodeEvent(a1, a2, a3, &v6, v5, &v4, a4);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v4);
  TPropertyValue::~TPropertyValue(&v6);
}

void sub_1E56B367C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TPropertyValue *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, TDSNotifier *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a9);
  TPropertyValue::~TPropertyValue(&a12);
  _Unwind_Resume(a1);
}

void TNodeEventPtrs::AddPropertyChanges(TNodeEventPtrs *a1, TNodePtr *a2, void *a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      TNodeEvent::CreateNodeEvent(2, &a2->fFINode, *(v4 + 7), &v10);
      TNodeEventPtrs::AddEvent(a1, a2, &v10);

      v7 = v4[1];
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
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v3);
  }
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1V_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEERKS23_EEEDcS1V_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 16) = 0;
  }

  return result;
}

void TNodeEventPtrs::AddEvent(TNodeEventPtrs *this, const TNodePtr *a2, id *a3)
{
  v8 = a2->fFINode;
  v9 = *a3;
  v5 = *(this + 1);
  if (v5 >= *(this + 2))
  {
    v6 = std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__emplace_back_slow_path<std::pair<TNodePtr,TNodeEventPtr>>(this, &v8);
  }

  else
  {
    TNodePtr::TNodePtr(*(this + 1), &v8);
    *(v5 + 8) = v9;
    v6 = v5 + 16;
  }

  *(this + 1) = v6;
  v7 = v9;
  v9 = 0;
}

uint64_t std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__emplace_back_slow_path<std::pair<TNodePtr,TNodeEventPtr>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  TNodePtr::TNodePtr(v8, a2);
  v8[1] = *(a2 + 8);
  *&v17 = v8 + 2;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::~__split_buffer(&v15);
  return v14;
}

void sub_1E56B393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>(uint64_t a1, void **a2, void **a3, void *a4)
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
      TNodePtr::TNodePtr(v4, v8);
      v4[1] = v8[1];
      v8 += 2;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>>::destroy[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr>,void,0>(a1, v6);
      v6 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 16;
    std::allocator_traits<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>>::destroy[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr>,void,0>(v5, (v4 - 16));
  }
}

void std::allocator_traits<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>>::destroy[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr>,void,0>(uint64_t a1, void **a2)
{
  v3 = a2[1];
  a2[1] = 0;

  v4 = *a2;
}

BOOL TFSInfo::FileSystemObjectExists(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 2);
  v6 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  os_unfair_lock_unlock(this + 27);
  v3 = [v2 path];
  v4 = [v3 length] != 0;

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v6);
  return v4;
}

void sub_1E56B3BA8(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 27);
  _Unwind_Resume(a1);
}

void TNode::SetFSInfo(uint64_t a1, os_unfair_lock_s **a2, int a3)
{
  v6 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v6);
  v7 = *(a1 + 16);
  os_unfair_lock_lock((v7 + 108));
  v8 = *(v7 + 123);
  os_unfair_lock_unlock((v7 + 108));
  if ((v8 & 0x100) != 0 && (v9 = *a2, os_unfair_lock_lock(*a2 + 27), v10 = *(v9 + 123), os_unfair_lock_unlock(v9 + 27), (v10 & 0x8000) != 0))
  {
    os_unfair_lock_unlock(v6);
    v11 = 0;
  }

  else
  {
    v11 = TFSInfo::GetFPItem(*(a1 + 16));
    v12 = *(a1 + 16);
    os_unfair_lock_lock((v12 + 108));
    v13 = *(v12 + 123);
    os_unfair_lock_unlock((v12 + 108));
    v14 = *(a1 + 16);
    os_unfair_lock_lock((v14 + 108));
    v15 = *(v14 + 123);
    os_unfair_lock_unlock((v14 + 108));
    v16 = *(a1 + 16);
    os_unfair_lock_lock((v16 + 108));
    v17 = *(v16 + 123);
    os_unfair_lock_unlock((v16 + 108));
    if ((v17 & 0x2000000) != 0)
    {
      v19 = 0;
    }

    else
    {
      os_unfair_lock_lock((v16 + 108));
      v18 = *(v16 + 123);
      os_unfair_lock_unlock((v16 + 108));
      if ((v18 & 0x8000000) != 0)
      {
        v19 = 0x8000000;
      }

      else
      {
        v19 = (*(v16 + 120) == 7) << 27;
      }
    }

    TFSInfo::DisplayName(*(a1 + 16), &v45);
    v44 = 0;
    v20 = *(a1 + 16);
    os_unfair_lock_lock((v20 + 104));
    v21 = *(v20 + 80);
    if (v21)
    {
      TFSInfoOverflow::TakeFolderSizeRecord(v21, &v44);
    }

    else
    {
      v44 = 0;
    }

    os_unfair_lock_unlock((v20 + 104));
    v43 = 0;
    if ((v13 & 0x10000000) != 0)
    {
      v22 = *(a1 + 16);
      os_unfair_lock_lock((v22 + 104));
      v23 = *v22;
      *v22 = 0;
      std::unique_ptr<TVersionData>::reset[abi:ne200100](&v43, v23);
      os_unfair_lock_unlock((v22 + 104));
    }

    v24 = *(a1 + 16);
    os_unfair_lock_lock((v24 + 108));
    v25 = *(v24 + 127);
    os_unfair_lock_unlock((v24 + 108));
    v27 = *a2;
    v26 = a2[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26[2], 1uLL, memory_order_relaxed);
    }

    v28 = *(a1 + 24);
    *(a1 + 16) = v27;
    *(a1 + 24) = v26;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      v27 = *(a1 + 16);
    }

    os_unfair_lock_lock(v27 + 27);
    v29 = *(v27 + 123);
    os_unfair_lock_unlock(v27 + 27);
    if ((v29 & 0x20) != 0 && !*(a1 + 56))
    {
      operator new();
    }

    if (v44)
    {
      v30 = *(a1 + 16);
      os_unfair_lock_lock((v30 + 104));
      if (v44 || *(v30 + 80))
      {
        Overflow = TFSInfo::GetOrCreateOverflow(v30);
        TFSInfoOverflow::SetFolderSizeRecord(Overflow, &v44);
      }

      os_unfair_lock_unlock((v30 + 104));
      v32 = *(a1 + 16);
      os_unfair_lock_lock((v32 + 108));
      *(v32 + 123) = *(v32 + 123) & 0xFBFFFFFF | v15 & 0x4000000;
      os_unfair_lock_unlock((v32 + 108));
      v33 = *(a1 + 16);
      os_unfair_lock_lock((v33 + 108));
      *(v33 + 123) = *(v33 + 123) & 0xF7FFFFFF | v19;
      os_unfair_lock_unlock((v33 + 108));
    }

    if (v43)
    {
      v34 = *(a1 + 16);
      os_unfair_lock_lock((v34 + 104));
      v35 = v43;
      v43 = 0;
      std::unique_ptr<TVersionData>::reset[abi:ne200100](v34, v35);
      os_unfair_lock_unlock((v34 + 104));
    }

    v36 = *(a1 + 16);
    os_unfair_lock_lock((v36 + 108));
    *(v36 + 127) = *(v36 + 127) & 0xFFFB | v25 & 4;
    os_unfair_lock_unlock((v36 + 108));
    v37 = *(a1 + 16);
    if (*(v37 + 120) == 18)
    {
      TFSInfo::DisplayName(v37, &theString);
      Length = CFStringGetLength(theString);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
      if (!Length)
      {
        TFSInfo::SetDisplayName(*(a1 + 16), &v45);
      }
    }

    std::unique_ptr<TVersionData>::reset[abi:ne200100](&v43, 0);
    v39 = v44;
    v44 = 0;
    if (v39)
    {
      MEMORY[0x1E692CD30](v39, 0x1000C40E0EAB150);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v45.fString.fRef);
    os_unfair_lock_unlock(v6);
    if (v11 && a3)
    {
      v40 = TFSInfo::GetFPItem(*a2);
      if (!v40)
      {
        v41 = TNode::GetFIProvider(a1);

        if (v41)
        {
          TFSInfo::SetFPItem(*a2, v11);
        }
      }
    }
  }
}

void sub_1E56B3FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, const void **);
  v8 = va_arg(va1, void);
  std::unique_ptr<TVersionData>::reset[abi:ne200100](va, 0);
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    MEMORY[0x1E692CD30](v5, 0x1000C40E0EAB150);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);

  os_unfair_lock_unlock(v3);
  _Unwind_Resume(a1);
}

const void ***std::unique_ptr<TVersionData>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 3);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 2);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 1);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

void TNode::HandleListeners(TNode *a1, int a2)
{
  TNode::GetVolumeInfo(a1, &v5);
  if (v5)
  {
    TFSVolumeInfo::InvalidateFreeSpaceAndCapacityOfContainer(v5);
  }

  TNode::RequestSynchronize(a1, a2);
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E56B4168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TFSVolumeInfo::InvalidateFreeSpaceAndCapacityOfContainer(TFSVolumeInfo *this)
{
  if (*(this + 32))
  {
    VolumeMap = GetVolumeMap();
    VolumeInfoLock();
    os_unfair_lock_lock(&_MergedGlobals_5);
    for (i = *(VolumeMap + 16); i; i = *i)
    {
      v4 = i[2];
      v16 = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      v17 = *(i + 24);
      v5 = i[5];
      v18 = i[4];
      v19 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (v19)
        {
          v6 = std::__shared_weak_count::lock(v19);
          if (v6)
          {
            v7 = v6;
            v8 = v18;
            if (v18 && *(v18 + 32) == 1)
            {
              v9 = *(v18 + 23);
              if (v9 >= 0)
              {
                v10 = *(v18 + 23);
              }

              else
              {
                v10 = v18[1];
              }

              v11 = *(this + 23);
              v12 = v11;
              if ((v11 & 0x80u) != 0)
              {
                v11 = *(this + 1);
              }

              if (v10 == v11)
              {
                if (v9 >= 0)
                {
                  v13 = v18;
                }

                else
                {
                  v13 = *v18;
                }

                v14 = *this;
                if (v12 >= 0)
                {
                  v15 = this;
                }

                else
                {
                  v15 = *this;
                }

                if (!memcmp(v13, v15, v10))
                {
                  os_unfair_lock_lock(v8 + 78);
                  *(v8 + 130) = 0;
                  os_unfair_lock_unlock(v8 + 78);
                }
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          if (v19)
          {
            std::__shared_weak_count::__release_weak(v19);
          }
        }
      }

      TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v16);
    }

    os_unfair_lock_unlock(&_MergedGlobals_5);
  }

  else
  {
    os_unfair_lock_lock(this + 78);
    *(this + 130) = 0;

    os_unfair_lock_unlock(this + 78);
  }
}

uint64_t TNode::IsLocalVolume(TNode *this)
{
  TNode::GetVolumeInfo(this, &v3);
  if (v3)
  {
    v1 = *(v3 + 107);
  }

  else
  {
    v1 = 1;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1 & 1;
}

void TNode::HandleRecursiveListeners(TNode *this)
{
  v2 = TNode::ParentLock(this);
  os_unfair_lock_lock(v2);
  TNodePtr::TNodePtr(&v16, *(this + 6));
  os_unfair_lock_unlock(v2);
  if (TNodeFromFINode(v16.fFINode))
  {
    v3 = TNodeFromFINode(v16.fFINode);
    v4 = atomic_load((TNode::GetNotifierList(v3) + 4));
    v5 = v4 > 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = atomic_load((TNode::GetNotifierList(this) + 4));
  v7 = v6 > 0 || v5;
  if (v7)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v9 = atomic_load(this + 44);
    v8 = (v9 >> 7) & 1;
  }

  TNode::SetSizesAreValid(this, 0);
  v11 = TNode::InfoLock(v10);
  os_unfair_lock_lock(v11);
  v13 = *(this + 2);
  v12 = *(this + 3);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v11);
  os_unfair_lock_lock((v13 + 108));
  v14 = *(v13 + 123) & 0x4000000;
  os_unfair_lock_unlock((v13 + 108));
  v15 = v8 & (v14 >> 26);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v15)
  {
    TNodeRequest::Make();
  }
}

void sub_1E56B454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, TNodeRequest *a15, id a16)
{
  TRef<TNodeRequest *,TRetainReleasePolicy<TNodeRequest *>>::~TRef(&a15);

  _Unwind_Resume(a1);
}

void TNode::SetSizesAreValid(TNode *this, int a2)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v4);
    os_unfair_lock_lock((v6 + 108));
    if (a2)
    {
      v7 = 0x8000000;
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 123) = *(v6 + 123) & 0xF7FFFFFF | v7;
    os_unfair_lock_unlock((v6 + 108));

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    os_unfair_lock_unlock(v4);
    os_unfair_lock_lock((v6 + 108));
    if (a2)
    {
      v8 = 0x8000000;
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 123) = *(v6 + 123) & 0xF7FFFFFF | v8;

    os_unfair_lock_unlock((v6 + 108));
  }
}

void std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      TNodeEventPtr::~TNodeEventPtr(v5);
      v7 = *(v5 - 1);
      v6 = v5 - 1;

      v8 = v6 == a2;
      v5 = v6 - 1;
    }

    while (!v8);
  }

  *(a1 + 8) = a2;
}

uint64_t TNode::HandleSync(uint64_t *a1, FINode **a2)
{
  if (TNodeFromFINode(*a2))
  {
    v4 = *a1;
    v34 = 0;
    v5 = TPropertyValue::As<NodeRequestOptions>((v4 + 24), &v34);
    v6 = TNodeFromFINode(*a2);
    v7 = TNode::VirtualType(v6);
    v8 = TNodeFromFINode(*a2);
    v9 = TNode::InfoLock(v8);
    os_unfair_lock_lock(v9);
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v9);
    os_unfair_lock_lock((v11 + 108));
    v12 = *(v11 + 123);
    os_unfair_lock_unlock((v11 + 108));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if ((v12 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    v15 = TNodeFromFINode(*a2);
    v16 = TNode::InfoLock(v15);
    os_unfair_lock_lock(v16);
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v16);
    IsAlias = TFSInfo::IsAlias(v18);
    v20 = IsAlias;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (((v20 | ((v5 & 0x80000) >> 19)) & 1) != 0 || (v7 & 0xFE) == 0x18)
    {
LABEL_7:
      v13 = TNodeFromFINode(*a2);
      TNode::HandleSync(v13, v5);
      return 0;
    }

    v21 = TTime::MicrosecondsSinceStartup(IsAlias);
    v22 = TNodeFromFINode(*a2);
    SyncStartTime = TChildrenList::LastSyncStartTime(*(v22 + 56));
    v24 = TNodeFromFINode(*a2);
    v25 = TNode::AdjustedSyncQuanta(v24);
    v26 = TNodeFromFINode(*a2);
    v27 = TNode::InfoLock(v26);
    os_unfair_lock_lock(v27);
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v27);
      v30 = *(v29 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      if (!v30)
      {
LABEL_19:
        v31 = TNodeFromFINode(*a2);
        if (!TNode::IsSynchingAppropriate(v31))
        {
          if (v21 <= SyncStartTime + 20000000)
          {
            v32 = v21 + 1000000;
            goto LABEL_21;
          }

          goto LABEL_7;
        }
      }
    }

    else
    {
      os_unfair_lock_unlock(v27);
      if (!*(v29 + 120))
      {
        goto LABEL_19;
      }
    }

    v32 = v25 + SyncStartTime;
    if (v32 > v21)
    {
LABEL_21:
      v33 = TNodeFromFINode(*a2);
      TNode::SetTimerToDispatchSyncRequest(v33, v32, v5);
      return 0;
    }

    goto LABEL_7;
  }

  return 0;
}

void sub_1E56B49EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

int *TNode::OperationLockLock(TNode *this)
{
  {
    TNode::OperationLockLock();
  }

  return &TNode::OperationLockLock(void)::sOperationLockLock;
}

BOOL TNode::IsSynchingAppropriate(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3);
    if (os_unfair_lock_opaque)
    {
      v5 = 0;
    }

    else
    {
      os_unfair_lock_lock(v3);
      v5 = !v3[1]._os_unfair_lock_opaque && !v3[4]._os_unfair_lock_opaque && v3[3]._os_unfair_lock_opaque == 0;
      os_unfair_lock_unlock(v3);
    }
  }

  else
  {
    v5 = 1;
  }

  os_unfair_lock_unlock(v2);
  return v5;
}

void TNode::OperationLockLock()
{
  {
    TNode::OperationLockLock(void)::sOperationLockLock = 0;
  }
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[23]>(uint64_t a1, const char *a2)
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

void sub_1E56B4C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TNode::CFURL(TNode *this@<X0>, void *a2@<X8>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock((v6 + 108));
  v7 = *(v6 + 16);
  *a2 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  os_unfair_lock_unlock((v6 + 108));
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E56B4CD8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 27);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t PathEligibleForSynching(const TString *a1)
{
  {
    {
      AllowedPaths(PathEligibleForSynching(TString const&)::allowedPaths);
    }
  }

  v5 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v5, a1->fString.fRef);
  v2 = PathEligibleForSynching(TString const&)::allowedPaths[0];
  v3 = unk_1EDBA7860;
  v6.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v6, v5);
  while (1)
  {
    if (v2 == v3)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5);
      return MatchesEDSContainerPattern(a1);
    }

    if (TString::BeginsWith(&v6, v2))
    {
      break;
    }

    ++v2;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5);
  return 1;
}

uint64_t AllowedPaths@<X0>(void *a1@<X8>)
{
  {
    AllowedPaths(void)::$_0::operator()();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = AllowedPaths(void)::allowedPaths;
  v3 = *algn_1EDBA78A8;
  v4 = (*algn_1EDBA78A8 - AllowedPaths(void)::allowedPaths) >> 3;

  return std::vector<TString>::__init_with_size[abi:ne200100]<TString*,TString*>(a1, v2, v3, v4);
}

const void **AllowedPaths(void)::$_0::operator()()
{
  AllowedPaths(void)::allowedPaths = 0;
  *algn_1EDBA78A8 = 0;
  qword_1EDBA78B0 = 0;
  error = 0;
  v0 = SecTaskCreateFromSelf(0);
  cf = v0;
  if (v0)
  {
    v35 = SecTaskCopyValueForEntitlement(v0, @"com.apple.security.exception.files.home-relative-path.read-write", &error);
    v1 = cf_cast<__CFArray const*,void const*>(v35);
    if (v1)
    {
      v2 = v1;
      IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(&obj, v2);
      IDContainerIteratorAdaptor<NSArray>::IDContainerIteratorAdaptor(theString, -1, v2);
      v3 = *MEMORY[0x1E695E480];
      v4 = *MEMORY[0x1E695E498];
      while (obj != theString[0] || v48 != v39)
      {
        v5 = *(v42 + 8 * v47);
        v6 = CFStringCreateWithBytesNoCopy(v3, "/private/var/mobile", 19, 0x8000100u, 0, v4);
        v50.fString.fRef = v6;
        v51.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v51, v6);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
        v7 = v5;
        v50.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v50, v7);

        fRef = v51.fString.fRef;
        v49.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        MutableCopy = CFStringCreateMutableCopy(v3, 0, fRef);
        CFRelease(&stru_1F5F42870);
        v49.fString.fRef = MutableCopy;
        TString::Append(&v49, &v50);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v51.fString.fRef);

        std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, &v49.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v49.fString.fRef);

        v10 = v47;
        if (v47 >= v46 - 1)
        {
          v11 = [obj countByEnumeratingWithState:&v41 objects:v44 count:4];
          v10 = -1;
          v46 = v11;
          v47 = -1;
        }

        if (v45 != *v43)
        {
          objc_enumerationMutation(obj);
          v10 = v47;
        }

        v47 = v10 + 1;
        ++v48;
      }

      v12 = v2;
      IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(&obj, v12);
      IDContainerIteratorAdaptor<NSArray>::IDContainerIteratorAdaptor(theString, -1, v12);
      while (obj != theString[0] || v48 != v39)
      {
        v13 = *(v42 + 8 * v47);
        v14 = CFStringCreateWithBytesNoCopy(v3, "/var/mobile", 11, 0x8000100u, 0, v4);
        v50.fString.fRef = v14;
        v51.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v51, v14);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
        v15 = v13;
        v50.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v50, v15);

        v16 = v51.fString.fRef;
        v49.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        v17 = CFStringCreateMutableCopy(v3, 0, v16);
        CFRelease(&stru_1F5F42870);
        v49.fString.fRef = v17;
        TString::Append(&v49, &v50);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v51.fString.fRef);

        std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, &v49.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v49.fString.fRef);

        v18 = v47;
        if (v47 >= v46 - 1)
        {
          v19 = [obj countByEnumeratingWithState:&v41 objects:v44 count:4];
          v18 = -1;
          v46 = v19;
          v47 = -1;
        }

        if (v45 != *v43)
        {
          objc_enumerationMutation(obj);
          v18 = v47;
        }

        v47 = v18 + 1;
        ++v48;
      }
    }

    v20 = CloudDocsRootURL();
    v21 = [v20 path];
    v51.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v51, v21);

    if (CFStringGetLength(v51.fString.fRef))
    {
      TString::TString(&obj, "/private/");
      v22 = TString::BeginsWith(&v51, &obj);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
      if (v22)
      {
        v23 = *MEMORY[0x1E695E480];
        v24 = *MEMORY[0x1E695E498];
        v25 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "/private", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
        obj = v25;
        theString[0] = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(theString, v25);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
        Length = CFStringGetLength(theString[0]);
        TString::SubStringFrom(&v51, Length, &v50);
      }

      else
      {
        v23 = *MEMORY[0x1E695E480];
        v24 = *MEMORY[0x1E695E498];
        v27 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "/private", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
        obj = v27;
        theString[0] = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(theString, v27);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
        v28 = theString[0];
        v50.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        v29 = CFStringCreateMutableCopy(v23, 0, v28);
        CFRelease(&stru_1F5F42870);
        v50.fString.fRef = v29;
        TString::Append(&v50, &v51);
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
      std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, &v51);
      std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, &v50);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
    }

    else
    {
      v23 = *MEMORY[0x1E695E480];
      v24 = *MEMORY[0x1E695E498];
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v51.fString.fRef);
    v30 = CFStringCreateWithBytesNoCopy(v23, "/private/var/mobile/Containers/Shared/AppGroup", 46, 0x8000100u, 0, v24);
    obj = v30;
    theString[0] = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(theString, v30);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
    std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, theString);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
    v31 = CFStringCreateWithBytesNoCopy(v23, "/var/mobile/Containers/Shared/AppGroup", 38, 0x8000100u, 0, v24);
    obj = v31;
    theString[0] = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(theString, v31);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
    std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, theString);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
    v32 = CFStringCreateWithBytesNoCopy(v23, "/private/var/mobile/Library/LiveFiles", 37, 0x8000100u, 0, v24);
    obj = v32;
    theString[0] = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(theString, v32);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
    std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, theString);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
    v33 = CFStringCreateWithBytesNoCopy(v23, "/var/mobile/Library/LiveFiles", 29, 0x8000100u, 0, v24);
    obj = v33;
    theString[0] = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(theString, v33);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
    std::vector<TString>::push_back[abi:ne200100](&AllowedPaths(void)::allowedPaths, theString);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
    TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v35);
  }

  return TRef<__SecTask *,CFRetainReleasePolicy>::~TRef(&cf);
}

void sub_1E56B5694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v3 - 104));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v3 - 96));
  TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(va);
  TRef<__SecTask *,CFRetainReleasePolicy>::~TRef(va1);
  *(v3 - 96) = v2;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100]((v3 - 96));
  _Unwind_Resume(a1);
}

const void *cf_cast<__CFArray const*,void const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFArrayGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::vector<TString>::__emplace_back_slow_path<TString>(uint64_t a1, CFTypeRef *a2)
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
  std::construct_at[abi:ne200100]<TString,TString,TString*>((8 * v2), a2);
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

void sub_1E56B5A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::push_back[abi:ne200100](uint64_t a1, CFTypeRef *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TString>::__emplace_back_slow_path<TString>(a1, a2);
  }

  else
  {
    std::construct_at[abi:ne200100]<TString,TString,TString*>(*(a1 + 8), a2);
    result = v3 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

id CloudDocsRootURL(void)
{
  v3 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZZ16CloudDocsRootURLvENK3__0cvU13block_pointerFvP5NSURLP7NSErrorEEv_block_invoke;
  v4[3] = &__block_descriptor_40_ea8_32c30_ZTSKZ16CloudDocsRootURLvE3__0_e27_v24__0__NSURL_8__NSError_16l;
  v4[4] = &v3;
  v0 = MEMORY[0x1E692D6D0](v4);
  BRGetCloudDocsRootURL();

  v1 = v3;

  return v1;
}

void ___ZZ16CloudDocsRootURLvENK3__0cvU13block_pointerFvP5NSURLP7NSErrorEEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v7;
  v10 = [v9 code];
  v12 = TCFURLInfo::TranslatePOSIXError(v10, 0, v11);
  v13 = v12;
  if (v12 == -43 || !v12)
  {
    goto LABEL_6;
  }

  v14 = LogObj(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_ERROR, "BRGetCloudDocsRootURL failed: %@", &v16, 0xCu);
  }

  if (v13 == -43)
  {
LABEL_6:
    objc_storeStrong(*(a1 + 32), a2);
  }

  v15 = *MEMORY[0x1E69E9840];
}

TCFURLInfo *TCFURLInfo::TranslatePOSIXError(TCFURLInfo *this, const char *a2, const char *a3)
{
  v4 = this;
  v15 = *MEMORY[0x1E69E9840];
  if (this > -2)
  {
    if (this == -1)
    {
      this = *__error();
    }

    v9 = *MEMORY[0x1E69E9840];

    return TCFURLInfo::TranslateRawPOSIXError(this, a2, a3);
  }

  else
  {
    if (a2)
    {
      v5 = LogObj(5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        TString::TString(&v10, a2);
        v6 = SanitizedPath(&v10);
        *buf = 67109378;
        v12 = v4;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "MacOS error %d for %{public}@", buf, 0x12u);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
      }
    }

    v7 = *MEMORY[0x1E69E9840];
    return v4;
  }
}

void sub_1E56B5E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

TCFURLInfo *TCFURLInfo::TranslateRawPOSIXError(TCFURLInfo *this, const char *a2, const char *a3)
{
  v3 = this;
  v15 = *MEMORY[0x1E69E9840];
  if (this < -1)
  {
    goto LABEL_35;
  }

  if (this > 62)
  {
    if (this <= 68)
    {
      if (this == 63)
      {
        v5 = 4294965886;
        goto LABEL_30;
      }

      if (this == 66)
      {
LABEL_12:
        v5 = 4294967249;
        goto LABEL_30;
      }
    }

    else
    {
      switch(this)
      {
        case 'E':
          v5 = 4294965871;
          goto LABEL_30;
        case 'P':
          v5 = 4294962273;
          goto LABEL_30;
        case 'Y':
          v5 = 4294967168;
LABEL_30:
          v6 = LogObj(2);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v7 = "'null'";
            v10[0] = 67109634;
            if (a2)
            {
              v7 = a2;
            }

            v10[1] = v3;
            v11 = 1024;
            v12 = v5;
            v13 = 2080;
            v14 = v7;
            _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_DEBUG, "TCFURLInfo::TranslateRawPOSIXError %d -> %d, path: %s", v10, 0x18u);
          }

          v3 = v5;
          goto LABEL_35;
      }
    }

LABEL_29:
    v5 = (this + 100000);
    goto LABEL_30;
  }

  v5 = 4294967260;
  switch(this)
  {
    case -1:
    case 5:
      goto LABEL_30;
    case 0:
      break;
    case 1:
    case 13:
      v5 = 4294962296;
      goto LABEL_30;
    case 2:
      v5 = 4294967253;
      goto LABEL_30;
    case 9:
      v5 = 4294967245;
      goto LABEL_30;
    case 11:
      v5 = 4294959283;
      goto LABEL_30;
    case 12:
    case 23:
      v5 = 4294967255;
      goto LABEL_30;
    case 16:
      goto LABEL_12;
    case 17:
      v5 = 4294967248;
      goto LABEL_30;
    case 18:
      v5 = 100018;
      goto LABEL_30;
    case 20:
    case 21:
      v5 = 4294965889;
      goto LABEL_30;
    case 22:
      v5 = 4294967246;
      goto LABEL_30;
    case 24:
      v5 = 4294967254;
      goto LABEL_30;
    case 27:
      v5 = 4294965987;
      goto LABEL_30;
    case 28:
      v5 = 4294967262;
      goto LABEL_30;
    case 30:
      v5 = 4294967235;
      goto LABEL_30;
    case 45:
      v5 = 4294965870;
      goto LABEL_30;
    default:
      goto LABEL_29;
  }

LABEL_35:
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void TString::SubStringFrom(TString *this@<X0>, uint64_t a2@<X1>, TString *a3@<X8>)
{
  if (a2 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v6 = CFStringGetLength(this->fString.fRef) - v5;

  TString::SubString(this, v5, v6, a3);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<TString const&>(uint64_t a1, TString **a2)
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
  std::allocator_traits<std::allocator<TString>>::construct[abi:ne200100]<TString,TString const&,void,0>(a1, (8 * v2), a2);
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

void sub_1E56B6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id SanitizedURL(NSURL *a1)
{
  v1 = a1;
  v2 = [(NSURL *)v1 path];
  v8.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v8, v2);

  v3 = SanitizedPath(&v8);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);

  if (IsRedactionEnabled() && [(NSURL *)v1 isFileURL]&& ![(NSURL *)v1 isFileReferenceURL])
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(NSURL *)v1 scheme];
    v4 = [v6 stringWithFormat:@"%@://<private> (%@)", v7, v3];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v1, v3];
  }

  return v4;
}

uint64_t std::vector<TString>::push_back[abi:ne200100](uint64_t a1, TString **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TString>::__emplace_back_slow_path<TString const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<TString>>::construct[abi:ne200100]<TString,TString const&,void,0>(a1, *(a1 + 8), a2);
    result = v3 + 8;
    *(a1 + 8) = v3 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

const void **TRef<__SecTask *,CFRetainReleasePolicy>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t TNode::UserCanBrowse(TNode *this)
{
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
  }

  else
  {
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (!v5)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    os_unfair_lock_lock((v9 + 108));
    v12 = *(v9 + 123);
    os_unfair_lock_unlock((v9 + 108));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((v12 & 0x20) == 0)
    {
      return 0;
    }

    v15 = TNode::InfoLock(v13);
    os_unfair_lock_lock(v15);
    v17 = *(this + 2);
    v16 = *(this + 3);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v15);
    os_unfair_lock_lock((v17 + 108));
    v18 = *(v17 + 123);
    os_unfair_lock_unlock((v17 + 108));
    if ((v18 & 0x1000) != 0)
    {
      v20 = TNode::InfoLock(v19);
      os_unfair_lock_lock(v20);
      v22 = *(this + 2);
      v21 = *(this + 3);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v20);
      os_unfair_lock_lock((v22 + 108));
      v14 = (*(v22 + 123) >> 14) & 1;
      os_unfair_lock_unlock((v22 + 108));
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }

    else
    {
      v14 = 0;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    return v14;
  }

  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  os_unfair_lock_lock((v9 + 108));
  v10 = *(v9 + 123);
  os_unfair_lock_unlock((v9 + 108));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 0x20) != 0)
  {
    return 1;
  }

  return TNode::AliasIsContainer(this);
}

void sub_1E56B6648(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren(AutoSignpostInterval_General_SynchronizeChildren *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  v4[0] = *(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(this + 9, v4))
  {
    v2 = *(this + 14);
    v4[0] = &unk_1F5F40908;
    v4[1] = this;
    v4[3] = v4;
    ISignpostInterval::EndPriv(this, v2, v4);
    std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v4);
  }

  std::mutex::unlock(this);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(this + 72);

  std::mutex::~mutex(this);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E56B6734(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void TNode::GetParent(TNode *this@<X0>, TNodePtr *a2@<X8>)
{
  v4 = TNode::ParentLock(this);
  os_unfair_lock_lock(v4);
  TNodePtr::TNodePtr(a2, *(this + 6));

  os_unfair_lock_unlock(v4);
}

void TFSInfo::UpdateFileProvider(TFSInfo *this, FIProviderDomain *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TFSInfo::GetFPItem(this);
  if (v4)
  {
    v5 = v4;
    v23 = 0;
    v6 = [FIProviderDomain providerDomainForItem:v4 cachePolicy:0 error:&v23];
    v7 = v23;
    if (v7)
    {
      v8 = LogObj(4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = v5;
        v26 = 2114;
        v27 = v7;
        _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_ERROR, "Failed to get the domain from the FPItem. Falling back to URL: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }

    if (v6)
    {
      v9 = (this + 104);
      os_unfair_lock_lock(this + 26);
      v10 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v11 = v3;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = *(this + 2);
    v22 = v7;
    v13 = [FIProviderDomain providerDomainForURL:v12 cachePolicy:1 error:&v22];
    v14 = v22;

    v11 = v13;
    v7 = v14;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  v15 = LogObj(4);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(this + 2);
    v17 = SanitizedURL(v16);
    *buf = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "Failed to get the domain from the URL: %{public}@, error: %{public}@", buf, 0x16u);
  }

LABEL_16:
  v9 = (this + 104);
  os_unfair_lock_lock(this + 26);
  if (v11)
  {
    v10 = 1;
    v6 = v11;
  }

  else
  {
    v6 = 0;
    if (!*(this + 10))
    {
      goto LABEL_27;
    }

    v10 = 0;
  }

LABEL_20:
  Overflow = TFSInfo::GetOrCreateOverflow(this);
  os_unfair_lock_lock((Overflow + 72));
  if (v10)
  {
    v19 = *(Overflow + 76);
    if (v19 == 2)
    {
      TFSInfoOverflow::MigrateToType(Overflow, 1);
    }

    else if (v19 == 3)
    {
      *(Overflow + 76) = 1;
      *(Overflow + 32) = 0;
      *Overflow = 0u;
      *(Overflow + 16) = 0u;
      *(Overflow + 32) = 0x80000000;
    }
  }

  v20 = *(Overflow + 76);
  os_unfair_lock_unlock((Overflow + 72));
  if (v20 == 1)
  {
    objc_storeStrong((Overflow + 24), v6);
  }

LABEL_27:
  os_unfair_lock_unlock(v9);

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<TNodePtr>::__emplace_back_slow_path<TNodePtr const&>(uint64_t a1, id *a2)
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

  v18 = a1;
  if (v7)
  {
    std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = (8 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *&v17 = v8 + 1;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodePtr>,TNodePtr*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<TNodePtr>::~__split_buffer(&v15);
  return v14;
}

void sub_1E56B6BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TNodePtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TNode::ReplaceChildrenWith(uint64_t a1, void ***a2, int a3)
{
  v4 = *(a1 + 56);
  TChildrenList::ReplaceChildrenWith(v4, a2, a3);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  while (v5 != v6)
  {
    v7 = TNodeFromFINode(*v5);
    TNodePtr::TNodePtr(&v10, a1);
    v9 = TNode::ParentLock(v8);
    os_unfair_lock_lock(v9);
    *(v7 + 48) = TNodeFromFINode(v10.fFINode);
    os_unfair_lock_unlock(v9);

    ++v5;
  }
}

void std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<std::__wrap_iter<TNodePtr const*>,std::__wrap_iter<TNodePtr const*>>(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<TNodePtr>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TNodePtr>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<TNodePtr *,TNodePtr *,TNodePtr *>(&v22, a2, a3, v7);
    v18 = v17;
    v19 = *(a1 + 8);
    if (v19 != v17)
    {
      do
      {
        v20 = *(v19 - 8);
        v19 -= 8;
      }

      while (v19 != v18);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<TNodePtr *,TNodePtr *,TNodePtr *>(&v21, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = v12;
      v15 = *(a1 + 8);
      do
      {
        v16 = *v14++;
        *v15++ = v16;
        v13 += 8;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void TChildrenList::ReplaceChildrenWith(uint64_t a1, void ***a2, int a3)
{
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v6 = a1 + 64;
  if (v7 == v8)
  {
    v12 = *(a1 + 64);
  }

  else
  {
    do
    {
      v9 = TNodeFromFINode(*v7);
      TNodePtr::TNodePtr(&v16, 0);
      v11 = TNode::ParentLock(v10);
      os_unfair_lock_lock(v11);
      *(v9 + 48) = TNodeFromFINode(v16.fFINode);
      os_unfair_lock_unlock(v11);

      ++v7;
    }

    while (v7 != v8);
    v7 = *(a1 + 64);
    v12 = *(a1 + 72);
  }

  v13 = v12 - v7;
  std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<std::__wrap_iter<TNodePtr const*>,std::__wrap_iter<TNodePtr const*>>(v6, *a2, a2[1], a2[1] - *a2);
  v14 = *(a1 + 72) - *(a1 + 64);
  if (a3)
  {
    v15 = v14 >> 3;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 152) = v15;
  if (v13 != v14)
  {
    atomic_store(v14 >> 3, (a1 + 160));
    ++*(a1 + 184);
  }
}

unint64_t TNode::AdjustedSyncQuanta(TNode *this)
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

  if ((v5 & 0x20) != 0)
  {
    v6 = (10 * TChildrenList::GetLastSyncDuration(*(this + 7)));
  }

  else
  {
    v6 = 200000.0;
  }

  v7 = fmax(v6, 500000.0);
  if (v7 >= 0x4C4B40)
  {
    return 5000000;
  }

  else
  {
    return v7;
  }
}

void std::vector<TNodePtr>::__vdeallocate(void **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
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

id *std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<TNodePtr,TNodeEventPtr> const*>,std::__wrap_iter<std::pair<TNodePtr,TNodeEventPtr> const*>>(uint64_t *a1, uint64_t a2, id *a3, id *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__move_range(a1, a2, a1[1], a2 + 16 * a5);
        v19 = &a3[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr>*>(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v19 = (a3 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr>*>(v21, a3, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v21[4] = a1;
    if (v15)
    {
      std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v21[0] = 0;
    v21[1] = 16 * v16;
    v21[2] = 16 * v16;
    v21[3] = 0;
    std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::__construct_at_end_with_size<std::__wrap_iter<std::pair<TNodePtr,TNodeEventPtr> const*>>(v21, a3, a5);
    v5 = std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__swap_out_circular_buffer(a1, v21, v5);
    std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::~__split_buffer(v21);
  }

  return v5;
}

void std::vector<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 24;
        std::__destroy_at[abi:ne200100]<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_END, v7, "SynchronizeChildren", "End", v8, 2u);
  }
}

void AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync(AutoSignpostInterval_General_HandleSync *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  v4[0] = *(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(this + 9, v4))
  {
    v2 = *(this + 14);
    v4[0] = &unk_1F5F40808;
    v4[1] = this;
    v4[3] = v4;
    ISignpostInterval::EndPriv(this, v2, v4);
    std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v4);
  }

  std::mutex::unlock(this);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(this + 72);

  std::mutex::~mutex(this);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E56B7428(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_END, v7, "HandleSync", "End", v8, 2u);
  }
}

uint64_t TFSInfo::GetType(TFSInfo *this)
{
  if (*(this + 120) == 22)
  {
    return 0;
  }

  else
  {
    return *(this + 28);
  }
}

id **TNodeEventPtrs::SendNotifications(id **this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    v3 = this;
    memset(&v13.fFINode, 0, 32);
    v13.fPropertyValue.fData.__impl_.__index = 1065353216;
    do
    {
      *&v13.fEventKind = *v1;
      v4 = v1[1];
      v5 = v4;
      if (v4)
      {
        v6 = (v4 + 8);
      }

      else
      {
        v6 = 0;
      }

      TNodeEvent::Notify(v6->fEventKind, &v13, v6->fProperty);
      TNodeEvent::NotifyNode(v12, v6, &v13, 0);
      v7 = v12[0];
      v8 = v12[1];
      while (v7 != v8)
      {
        v9 = *v7;
        v13.fTask.__ptr_ = v9;
        if (v9)
        {
          TDSNotifier::AddPtrReference(v9);
        }

        std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::__emplace_unique_key_args<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>> const&>(&v13.fFINode, &v13.fTask.__ptr_);
        TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v13.fTask);
        v7 = (v7 + 8);
      }

      v13.fTask.__ptr_ = v12;
      std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&v13.fTask);

      v1 += 2;
    }

    while (v1 != v2);
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__base_destruct_at_end[abi:ne200100](v3, *v3);
    value = v13.fPropertyValue.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
    if (v13.fPropertyValue.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value)
    {
      do
      {
        v11 = value[2];
        v12[0] = v11;
        if (v11)
        {
          TDSNotifier::AddPtrReference(v11);
          v11 = v12[0];
        }

        TDSNotifier::Tickle(v11, 0);
        TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v12);
        value = *value;
      }

      while (value);
    }

    return std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::~__hash_table(&v13.fFINode);
  }

  return this;
}

void sub_1E56B7638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1E56B7700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<OpaqueNodeRef *,TRetainReleasePolicy<OpaqueNodeRef *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c174_ZTSKZN5TNode32RootFPItemsForDomainsWithTimeoutEP7NSArrayIP16FPProviderDomainERKNSt3__16chrono8durationIdNS5_5ratioILl1ELl1EEEEERKNS5_8functionIFvS2_P6FPItemP7NSErrorEEEE3__1(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<void ()(FPProviderDomain *,FPItem *,NSError *)>::~__value_func[abi:ne200100](a1 + 48);

  v4 = *(a1 + 32);
}

void __destroy_helper_block_ea8_32c98_ZTSKZN9TNodeTask19PostNodeTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I17TVolumeSyncThreadEEE3__0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

TDSNotifier *std::__function::__func<TReferenceCounted::TReferenceCounted<TDSNotifier *>(RefCountedType,TDSNotifier *)::{lambda(void *)#1},std::allocator<TReferenceCounted::TReferenceCounted<TDSNotifier *>(RefCountedType,TDSNotifier *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, TDSNotifier **a2)
{
  result = *a2;
  if (*a2)
  {
    return TDSNotifier::RemovePtrReference(result);
  }

  return result;
}

uint64_t std::function<void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void TNode::SetTimerToDispatchSyncRequest(TNode *a1, uint64_t a2, int a3)
{
  TNode::GetVolumeInfo(a1, &v8);
  if (v8)
  {
    TFSVolumeInfo::GetVolumeSyncThread(v8, &v6);
    if (v6)
    {
      TNode::SetTimerToDispatchSyncRequest(a1, &v6, a2, a3);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E56B7970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void TNode::SetTimerToDispatchSyncRequest(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = TVolumeSyncThread::SynchingCanceled(*a2);
  if ((v8 & 1) == 0)
  {
    if ((a4 & 0x80000) != 0)
    {
      goto LABEL_8;
    }

    v9 = TNode::InfoLock(v8);
    os_unfair_lock_lock(v9);
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v9);
    os_unfair_lock_lock((v11 + 108));
    v12 = *(v11 + 123);
    os_unfair_lock_unlock((v11 + 108));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if ((v12 & 0x20) != 0)
    {
      if ((a4 & 0x400000) == 0 && (atomic_fetch_or((a1 + 88), 4u) & 4) != 0)
      {
        return;
      }

      v13 = 1;
    }

    else
    {
LABEL_8:
      v13 = 0;
    }

    v14 = TString::operator NSString *(*a2);
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v14);

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3321888768;
    handler[2] = ___ZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptions_block_invoke;
    handler[3] = &__block_descriptor_72_ea8_32c114_ZTSKZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsE3__0_e5_v8__0l;
    v16 = *(a2 + 8);
    v21 = *a2;
    v22 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v15;
    TNodePtr::TNodePtr(&v23, a1);
    LOBYTE(v24) = v13;
    HIDWORD(v24) = a4;
    handler[4] = v21;
    v26 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = v17;
    v28 = v23.fFINode;
    v29 = v24;
    dispatch_source_set_event_handler(v17, handler);

    v18 = v22;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v19 = TTime::MicrosecondsSinceStartup(v18);
    v20 = dispatch_time(0, 1000 * (a3 - v19));
    dispatch_source_set_timer(v17, v20, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v17);

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }
}

void sub_1E56B7BC4(_Unwind_Exception *a1)
{
  CopyURLForFPItem(FPItem *,BOOL)::$_0::~$_0(v2 + 32);

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c114_ZTSKZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsE3__0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = *(a2 + 48);
  result = *(a2 + 56);
  a1[7] = result;
  a1[8] = *(a2 + 64);
  return result;
}

void TFSVolumeInfo::~TFSVolumeInfo(TFSVolumeInfo *this)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN13TFSVolumeInfoD2Ev_block_invoke;
  v6[3] = &__block_descriptor_33_ea8_32c31_ZTSKZN13TFSVolumeInfoD1EvE3__0_e5_v8__0l;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
  if (*(this + 408) == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 50);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 49);
  v2 = *(this + 45);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 41);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 304) == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 37);
  }

  std::mutex::~mutex((this + 224));
  if (*(this + 216) == 1)
  {
    v7 = (this + 192);
    std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 12);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 11);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 10);
  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(this + 5);
  if (*(this + 32) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<TFolderSizingThread>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_1E56B7EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

id iCloudDriveDomainIDForDataSeparated(char a1)
{
  if (ICloudDriveFPFSEnabled())
  {
    if (a1)
    {
      v2 = [objc_opt_class() br_getProviderDomainIDForDataSeparated:1];
      if (!v2)
      {
        v3 = LogObj(4);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *v5 = 0;
          _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEBUG, "Failed to get domain ID for data separated iCloud Drive account", v5, 2u);
        }
      }
    }

    else
    {
      v2 = [objc_opt_class() mainICloudDriveDomainID];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id DefaultContainerOfDomainWithID(TString *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1->fString.fRef;
  v20 = 0;
  v3 = [FIProviderDomain rootURLForProviderDomainID:v2 cachePolicy:1 error:&v20];
  v4 = v20;

  if (v3)
  {
    if (IsDatalessDomain(v3, 1))
    {
      v5 = LogObj(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = SanitizedURL(v3);
        *buf = 138543362;
        v22 = v6;
        _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_DEFAULT, "Root of iCloud Drive is dataless: %{public}@", buf, 0xCu);
      }
    }

    v7 = [(NSURL *)v3 URLByAppendingPathComponent:@"com~apple~CloudDocs" isDirectory:1];

    if (IsDatalessDomain(v7, 0))
    {
      v8 = LogObj(4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = SanitizedURL(v7);
        *buf = 138543362;
        v22 = v9;
        _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_DEFAULT, "com~apple~CloudDocs is dataless: %{public}@", buf, 0xCu);
      }

      v10 = dispatch_get_global_queue(-2, 0);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3321888768;
      v17 = ___ZL30DefaultContainerOfDomainWithIDRK7TString_block_invoke;
      v18 = &__block_descriptor_40_ea8_32c54_ZTSKZL30DefaultContainerOfDomainWithIDRK7TStringE3__0_e5_v8__0l;
      v19 = v7;
      dispatch_async(v10, &v15);
    }

    v11 = [FINode fiNodeFromURL:v7, v15, v16, v17, v18];
  }

  else
  {
    v7 = LogObj(4);
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      v12 = SanitizedStr(a1);
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v4;
      _os_log_impl(&dword_1E5674000, &v7->super, OS_LOG_TYPE_ERROR, "No iCloud container because no domain storageURL returned for %{public}@ with error %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t IsDatalessDomain(NSURL *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v3 = *MEMORY[0x1E695E2A8];
  if ((TCFURLInfo::GetNumericalProperty(v21, *MEMORY[0x1E695E2A8], v4) & 0x40000000) != 0)
  {
    v6 = LogObj(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = SanitizedURL(v21);
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_DEFAULT, "Root of domain is dataless %{public}@", buf, 0xCu);
    }

    if (!a2)
    {
      v5 = 1;
      goto LABEL_20;
    }

    v8 = LogObj(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = SanitizedURL(v21);
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_DEFAULT, "Forcing materialization of domain %{public}@", buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3321888768;
    v19[2] = ___Z16IsDatalessDomainP5NSURLb_block_invoke;
    v19[3] = &__block_descriptor_40_ea8_32c37_ZTSKZ16IsDatalessDomainP5NSURLbE3__0_e15_v16__0__NSURL_8l;
    v19[4] = &v21;
    v20 = 0;
    [v10 coordinateReadingItemAtURL:v21 options:1 error:&v20 byAccessor:v19];
    v12 = v20;
    if (v12)
    {
      v13 = LogObj(4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = SanitizedURL(v21);
        *buf = 138543618;
        v23 = v14;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&dword_1E5674000, v13, OS_LOG_TYPE_ERROR, "Failed to materialize domain root %{public}@ with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if ((TCFURLInfo::GetNumericalProperty(v21, v3, v11) & 0x40000000) == 0)
      {
        v13 = LogObj(4);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = SanitizedURL(v21);
          *buf = 138543362;
          v23 = v15;
          _os_log_impl(&dword_1E5674000, v13, OS_LOG_TYPE_DEFAULT, "Materialized domain %{public}@", buf, 0xCu);
        }

        v5 = 0;
        goto LABEL_19;
      }

      v13 = LogObj(4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = SanitizedURL(v21);
        *buf = 138543362;
        v23 = v16;
        _os_log_impl(&dword_1E5674000, v13, OS_LOG_TYPE_DEFAULT, "Failed to materialize domain %{public}@ without error", buf, 0xCu);
      }
    }

    v5 = 1;
LABEL_19:

    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}