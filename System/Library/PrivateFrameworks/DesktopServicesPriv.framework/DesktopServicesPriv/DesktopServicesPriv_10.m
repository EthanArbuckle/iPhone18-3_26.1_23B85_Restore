void TFSInfo::CopyICloudSharePersonString(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  v3 = UseFileProviderFramework();
  v4 = TString::KEmptyString(v3);
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *v4);
}

uint64_t TPropertyReference::SetAs<__CFArray const*>(uint64_t a1, CFTypeRef *a2)
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

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(*a1, *a2);
      return 0;
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

      return TPropertyValue::SetAs<__CFArray const*>(v4, a2);
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

void TFSInfo::FolderStats(TFSInfo *this@<X0>, _BYTE *a2@<X8>)
{
  os_unfair_lock_lock(this + 26);
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v4 & 0x8000000) != 0 && *(this + 10) && (os_unfair_lock_lock(this + 27), v5 = *(this + 123), os_unfair_lock_unlock(this + 27), (v5 & 0x20) != 0))
  {
    TFSInfoOverflow::FolderSizeRecord(*(this + 10), a2);
  }

  else
  {
    *a2 = 0;
    a2[32] = 0;
  }

  os_unfair_lock_unlock(this + 26);
}

void TFSInfoOverflow::FolderSizeRecord(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 18);
  v4 = *&this[10]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = v4[1];
    *a2 = *v4;
    *(a2 + 16) = v5;
    LOBYTE(v4) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 32) = v4;

  os_unfair_lock_unlock(this + 18);
}

const void **TFSInfo::SynchronizeVersionsForce(TString **a1, uint64_t *a2, uint64_t a3)
{
  cf1 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v19 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v18 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v17 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  os_unfair_lock_lock(a1 + 26);
  v6 = *a1;
  if (!*a1)
  {
    _ZNSt3__111make_uniqueB8ne200100I12TVersionDataJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
  }

  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf, v6->fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&cf1, &cf);
  CFRetain(&stru_1F5F42870);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = &stru_1F5F42870;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  v7 = *a1;
  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf, v7[1].fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v19, &cf);
  CFRetain(&stru_1F5F42870);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = &stru_1F5F42870;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  v8 = *a1;
  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf, v8[2].fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v18, &cf);
  CFRetain(&stru_1F5F42870);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = &stru_1F5F42870;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  v9 = *a1;
  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf, v9[3].fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v17, &cf);
  CFRetain(&stru_1F5F42870);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = &stru_1F5F42870;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  os_unfair_lock_unlock(a1 + 26);
  cf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  ShortVersion = TFSInfo::GetShortVersion(*a2, &cf);
  if (!ShortVersion && !CFEqual(cf1, cf))
  {
    os_unfair_lock_lock(a1 + 26);
    if (*a1 != &cf)
    {
      TString::SetStringRefAsImmutable(*a1, cf);
    }

    v15 = 1936225906;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v15);
    os_unfair_lock_unlock(a1 + 26);
  }

  if (!TFSInfo::GetLongVersion(*a2, &cf) && !CFEqual(v19, cf))
  {
    os_unfair_lock_lock(a1 + 26);
    v11 = *a1 + 1;
    if (v11 != &cf)
    {
      TString::SetStringRefAsImmutable(v11, cf);
    }

    v15 = 1986359923;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v15);
    os_unfair_lock_unlock(a1 + 26);
  }

  if (!TFSInfo::GetSystemVersion(*a2, &cf) && !CFEqual(v18, cf))
  {
    os_unfair_lock_lock(a1 + 26);
    v12 = *a1 + 2;
    if (v12 != &cf)
    {
      TString::SetStringRefAsImmutable(v12, cf);
    }

    v15 = 1937340018;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v15);
    os_unfair_lock_unlock(a1 + 26);
  }

  if (!TFSInfo::GetCopyrightString(*a2, &cf) && !CFEqual(v17, cf))
  {
    os_unfair_lock_lock(a1 + 26);
    v13 = *a1 + 3;
    if (v13 != &cf)
    {
      TString::SetStringRefAsImmutable(v13, cf);
    }

    v15 = 1668313715;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(a3, &v15);
    os_unfair_lock_unlock(a1 + 26);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
}

void sub_1E572A498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  os_unfair_lock_unlock(v2 + 26);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va4);
  _Unwind_Resume(a1);
}

BOOL TFSInfo::IsDisconnectedDomain(TFSInfo *this, FPProviderDomain *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(TFSInfo *)v2 disconnectionState]!= 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL TFSInfo::IsDisconnectedDomain(TFSInfo *this, FIProviderDomain *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(TFSInfo *)v2 disconnectionState]!= 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t TFSInfo::RefreshUTTypeProperty(TFSInfo *this, __CFString *a2)
{
  if (!*(this + 1))
  {
    return 0;
  }

  v3 = a2;
  v4 = *MEMORY[0x1E695DAA0];
  if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E695DAA0]])
  {

LABEL_6:
    os_unfair_lock_lock(this + 27);
    v7 = *(this + 2);
    v13.fString.fRef = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    os_unfair_lock_unlock(this + 27);
    v8 = TCFURLInfo::ObjectProperty(v7, v4, 1);
    v9 = static_objc_cast<NSString,objc_object * {__strong}>(v8);

    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v13.fString.fRef);
    v5 = TFSInfo::SetUTType(this, v9, 0);

    return v5;
  }

  v6 = [(__CFString *)v3 isEqualToString:*MEMORY[0x1E695EC28]];

  if (v6)
  {
    goto LABEL_6;
  }

  os_unfair_lock_lock(this + 27);
  v10 = *(this + 2);
  v12 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  os_unfair_lock_unlock(this + 27);
  TCFURLInfo::StringProperty(v10, v3, &v13);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v12);
  v5 = TFSInfo::SetLocalizedTypeDescription(this, &v13, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
  return v5;
}

uint64_t TPropertyReference::SetAs<__CFString const*>(uint64_t a1, CFTypeRef *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 9:
      if (v2 == 9)
      {
        return 4294959246;
      }

      goto LABEL_51;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_51;
      }

      v5 = *a1;
      v6 = *a2;
      if (v5->fString.fRef != v6)
      {
        TString::SetStringRefAsImmutable(v5, v6);
      }

      return 0;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_51;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(*a1, *a2);
      return 0;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_51;
      }

      v3 = *a1;

      return TPropertyValue::SetAs<__CFString const*>(v3, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_51:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

uint64_t TPropertyReference::SetAs<UTType * {__strong}>(uint64_t a1, id *a2)
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

      return TPropertyValue::SetAs<UTType * {__strong}>(v4, a2);
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

void NetworkRefreshCallback(TFSInfo *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  ConnectionState = SFNodeGetConnectionState();
  v10 = ConnectionState;
  if (TNode::IsContextOpen(ConnectionState))
  {
    TNode::GetNWNode(a6, a2, &v40);
    if (TNodeFromFINode(v40))
    {
LABEL_11:
      v12 = TNodeFromFINode(v40);
      if (!a1 || !v12)
      {
        goto LABEL_30;
      }

      v13 = TNodeFromFINode(v40);
      v14 = TNode::InfoLock(v13);
      os_unfair_lock_lock(v14);
      v15 = *(v13 + 24);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v14);
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        os_unfair_lock_unlock(v14);
      }

      v16 = TNodeFromFINode(v40);
      v17 = TNode::InfoLock(v16);
      os_unfair_lock_lock(v17);
      v18 = *(v16 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v17);
        v19 = MEMORY[0x38];
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        if (v10 == v19)
        {
LABEL_18:
          v20 = 0;
LABEL_23:
          v24 = TNodeFromFINode(v40);
          if (TNode::ClearInitialPopulationDeferred(v24))
          {
            v26 = 20971520;
          }

          else
          {
            v26 = 0x1000000;
          }

          if (TGlobalNodes::IsNetworkNode(0x6D74726D, &v40, v25) || SFBrowserGetRootNode() != a2)
          {
            v27 = TNodeFromFINode(v40);
            TNode::HandleSync(v27, v26);
            if (!v20)
            {
LABEL_30:

              return;
            }

LABEL_29:
            v28 = TNodeFromFINode(v40);
            TNode::SendNotification(v28, 2, &v40, 1853121395, 0);
            goto LABEL_30;
          }

          TNode::GetNetworkNode(0x6E74776B, &v39);
          TNode::GetNetworkNode(0x6E747362, &v38);
          v29 = TNodeFromFINode(v40);
          if (v29 == TNodeFromFINode(v39) || (v30 = TNodeFromFINode(v40), v30 == TNodeFromFINode(v38)))
          {
            v32 = TNodeFromFINode(v39);
            v33 = atomic_load(TNode::GetNotifierList(v32));
            if (v33 >= 1)
            {
              v34 = TNodeFromFINode(v39);
              TNode::HandleSync(v34, v26);
            }

            v35 = TNodeFromFINode(v38);
            v36 = atomic_load(TNode::GetNotifierList(v35));
            if (v36 < 1)
            {
LABEL_40:

              if (!v20)
              {
                goto LABEL_30;
              }

              goto LABEL_29;
            }

            v31 = &v38;
          }

          else
          {
            v31 = &v40;
          }

          v37 = TNodeFromFINode(*v31);
          TNode::HandleSync(v37, v26);
          goto LABEL_40;
        }
      }

      else
      {
        os_unfair_lock_unlock(v17);
        if (v10 == MEMORY[0x38])
        {
          goto LABEL_18;
        }
      }

      v21 = TNodeFromFINode(v40);
      v22 = TNode::InfoLock(v21);
      os_unfair_lock_lock(v22);
      v23 = *(v21 + 24);
      if (v23)
      {
        v20 = 1;
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v22);
        MEMORY[0x38] = v10;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      else
      {
        os_unfair_lock_unlock(v22);
        MEMORY[0x38] = v10;
        v20 = 1;
      }

      goto LABEL_23;
    }

    v11 = TFSInfo::BrowserType(a1);
    switch(v11)
    {
      case ' ':
        TGlobalNodes::NetworkNearbyNode(&v39);
        break;
      case '!':
        TGlobalNodes::NetworkSidebarNode(&v39);
        break;
      case '""':
        TGlobalNodes::AirDropNode(&v39);
        break;
      default:
LABEL_10:
        TNode::AddNWNode(a6, a2, &v40);
        goto LABEL_11;
    }

    TNodePtr::operator=(&v40, &v39);

    goto LABEL_10;
  }
}

uint64_t TFSInfo::BrowserType(TFSInfo *a1)
{
  v2 = TFSInfo::NetworkLock(a1);
  os_unfair_lock_lock(v2);
  if (TFSInfo::gAirDropBrowserRef == a1)
  {
    v3 = 34;
  }

  else
  {
    v3 = 0;
  }

  if (TFSInfo::gNetworkNearbyBrowserRef == a1)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

CFTypeRef TFSInfo::CreateSFBrowser(int a1)
{
  cf = 0;
  if ((a1 - 32) >= 2)
  {
    if (a1 != 34)
    {
      abort();
    }

    v3 = *MEMORY[0x1E69CDF38];
    cf = CreateSFBrowser(34);
    v2 = TFSInfo::SetAirDropBrowserRef(cf);
  }

  else
  {
    v1 = *MEMORY[0x1E69CDF40];
    cf = CreateSFBrowser(32);
    v2 = TFSInfo::SetNetworkNearbyBrowserRef(cf);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&cf, v2);
  v4 = cf;
  cf = 0;
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&cf);
  return v4;
}

void sub_1E572AFB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef CreateSFBrowser(int a1)
{
  SFBrowserLock();
  os_unfair_lock_lock(&dword_1ECFF43FC);
  SFBrowsers();
  v2 = *(SFBrowsers(void)::browsers[0] + 8 * ((a1 & 0xFE) != 32));
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
    v3 = cf;
  }

  else
  {
    v4 = *MEMORY[0x1E695E480];
    cf = SFBrowserCreate();
    if (cf)
    {
      SFBrowserSetClient();
      v5 = TFSVolumeInfo::GetDedicatedGCDQueue(a1);
      SFBrowserSetDispatchQueue();

      v6 = cf;
    }

    else
    {
      v6 = 0;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((SFBrowsers(void)::browsers[0] + 8 * ((a1 & 0xFE) != 32)), v6);
    v3 = cf;
  }

  cf = 0;
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&cf);
  os_unfair_lock_unlock(&dword_1ECFF43FC);
  return v3;
}

void sub_1E572B0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(va);
  os_unfair_lock_unlock(&dword_1ECFF43FC);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::SetNetworkNearbyBrowserRef(TFSInfo *a1)
{
  v2 = TFSInfo::NetworkLock(a1);
  os_unfair_lock_lock(v2);
  v3 = TFSInfo::gNetworkNearbyBrowserRef;
  if (!TFSInfo::gNetworkNearbyBrowserRef)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&TFSInfo::gNetworkNearbyBrowserRef, a1);
    v3 = TFSInfo::gNetworkNearbyBrowserRef;
  }

  os_unfair_lock_unlock(v2);
  return v3;
}

uint64_t TFSInfo::SetAirDropBrowserRef(TFSInfo *a1)
{
  v2 = TFSInfo::NetworkLock(a1);
  os_unfair_lock_lock(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&TFSInfo::gAirDropBrowserRef, a1);
  v3 = TFSInfo::gAirDropBrowserRef;
  os_unfair_lock_unlock(v2);
  return v3;
}

const void *TFSInfo::CopySFBrowserRef(TFSInfo *this)
{
  IsContextOpen = TNode::IsContextOpen(this);
  if (!IsContextOpen)
  {
    return 0;
  }

  v3 = *(this + 120);
  if (v3 != 34)
  {
    if (v3 == 33 || v3 == 32)
    {

      return TFSInfo::CopyNetworkNearbyBrowserRef(IsContextOpen);
    }

    return 0;
  }

  return TFSInfo::CopyAirDropBrowserRef(IsContextOpen);
}

uint64_t TFSInfo::SetAliasIsBurnFolder(TFSInfo *this, int a2)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 123);
  v5 = (v4 >> 19) & 1;
  if (a2)
  {
    v6 = 0x80000;
  }

  else
  {
    v6 = 0;
  }

  *(this + 123) = v4 & 0xFFF7FFFF | v6;
  os_unfair_lock_unlock(this + 27);
  return v5;
}

uint64_t TPropertyReference::SetAs<SYDocumentAttributes * {__strong}>(uint64_t a1, id *a2)
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

      return TPropertyValue::SetAs<SYDocumentAttributes * {__strong}>(v4, a2);
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

void TFSInfo::SetTemporaryOriginatorInfo(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v10 = v4;
    os_unfair_lock_lock((a1 + 104));
    v5 = *(a1 + 80);
    if (!v5)
    {
      TFSInfo::GetOrCreateOverflow(a1);
      v5 = *(a1 + 80);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    os_unfair_lock_lock((v5 + 72));
    v6 = *(v5 + 76);
    if (v6 == 3)
    {
      *(v5 + 76) = 2;
      *v5 = 0;
      os_unfair_lock_unlock((v5 + 72));
      goto LABEL_7;
    }

    os_unfair_lock_unlock((v5 + 72));
    if (v6 == 2)
    {
LABEL_7:
      if (*v5)
      {
LABEL_15:
        os_unfair_lock_unlock((a1 + 104));
        v4 = v10;
        goto LABEL_16;
      }

LABEL_8:
      objc_storeStrong(v5, a2);
      goto LABEL_15;
    }

    v7 = *(a1 + 80);
    os_unfair_lock_lock((v7 + 72));
    v8 = *(v7 + 76);
    if (v8 == 2)
    {
      TFSInfoOverflow::MigrateToType(v7, 1);
      v8 = *(v7 + 76);
    }

    else if (v8 == 3)
    {
      *(v7 + 76) = 1;
      *(v7 + 32) = 0;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0x80000000;
      os_unfair_lock_unlock((v7 + 72));
LABEL_14:
      v9 = *(v7 + 16);
      v5 = v7 + 16;
      if (v9)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    os_unfair_lock_unlock((v7 + 72));
    if (v8 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
}

void sub_1E572B624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 26);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::CanHaveOriginatorInfo(TFSInfo *this)
{
  if (!ReturnToSenderEnabled())
  {
    return 0;
  }

  v2 = TFSInfo::OriginatorInfo(this);

  if (v2)
  {
    return 1;
  }

  if (*(this + 120))
  {
    return 0;
  }

  location = 0;
  TFSInfo::GetUTType(this, &location, 128, &v8);
  v5 = location;
  if (v5)
  {
    SYDocumentWorkflowsClass = getSYDocumentWorkflowsClass();
    v7 = [v5 identifier];
    v3 = [SYDocumentWorkflowsClass isSupportedContentType:v7];
  }

  else
  {
    os_unfair_lock_lock(this + 27);
    v3 = (*(this + 123) & 0x40) == 0;
    os_unfair_lock_unlock(this + 27);
  }

  return v3;
}

void sub_1E572B730(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

const void **TFSInfo::dCPath@<X0>(TFSInfo *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if (*(this + 120) || (os_unfair_lock_lock(this + 27), v7 = *(this + 123), os_unfair_lock_unlock(this + 27), v7 < 0) || (os_unfair_lock_lock(this + 27), v8 = *(this + 123), os_unfair_lock_unlock(this + 27), (v8 & 0x100) != 0))
  {
    if (a2)
    {
      TFSInfo::DisplayName(this, &v13);
    }

    else
    {
      TFSInfo::GetDisplayNameWhileLocked(this, &v13);
    }

    TString::Str(&v13, a3);
    return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
  }

  else
  {
    os_unfair_lock_lock(this + 27);
    v9 = *(this + 2);
    theString = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    os_unfair_lock_unlock(this + 27);
    v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
    v13.fString.fRef = v10;
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&theString);
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v10);
    if (CFStringGetLength(theString))
    {
      TString::Str(&theString, a3);
    }

    else
    {
      if (a2)
      {
        TFSInfo::Name(this, &v11);
      }

      else
      {
        TFSInfo::GetNameWhileLocked(this, &v11);
      }

      TString::Str(&v11, a3);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
    return TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v13.fString.fRef);
  }
}

void sub_1E572B8D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(va2);
  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<unsigned int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
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

      goto LABEL_47;
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

      goto LABEL_47;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      v4 = *a1;

      return TPropertyValue::SetAs<unsigned int>(v4, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

LABEL_49:
      result = 0;
      **a1 = *a2;
      break;
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
      if (v2 == 23)
      {
        goto LABEL_47;
      }

LABEL_50:
      std::__throw_bad_variant_access[abi:ne200100]();
    default:
LABEL_47:
      result = 4294959246;
      break;
  }

  return result;
}

uint64_t TPropertyReference::SetAs<Point>(uint64_t a1, int *a2)
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

      result = 0;
      **a1 = *a2;
      return result;
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

      return TPropertyValue::SetAs<Point>(v5, a2);
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

TString *TVersionData::TVersionData(TString *a1, TString **a2)
{
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *a2);
  a1[1].fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1 + 1, a2[1]);
  a1[2].fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1 + 2, a2[2]);
  a1[3].fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1 + 3, a2[3]);
  return a1;
}

void sub_1E572BD0C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<TNWNode>::__shared_ptr_emplace[abi:ne200100]<TNWNode&,std::allocator<TNWNode>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3F7F8;
  TNWNode::TNWNode((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<TNWNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3F7F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

const void **std::__shared_ptr_emplace<TNWNode>::__on_zero_shared(uint64_t a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 48));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 40));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 32));

  return TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef((a1 + 24));
}

uint64_t TNWNode::TNWNode(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 8), *(a2 + 8));
  *(a1 + 16) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 16), *(a2 + 16));
  *(a1 + 24) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 24), *(a2 + 24));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 55);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 55) = v5;
  return a1;
}

void sub_1E572BFC4(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef(v1);
  _Unwind_Resume(a1);
}

void TString::non_empty_or(TString *this@<X0>, const TString *a2@<X1>, TString *a3@<X8>)
{
  Length = CFStringGetLength(this->fString.fRef);
  a3->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  if (Length)
  {
    TString::SetStringRefAsImmutable(a3, this->fString.fRef);
  }

  else
  {
    TString::SetStringRefAsImmutable(a3, a2->fString.fRef);
  }
}

uint64_t IDContainerIteratorAdaptor<NSArray<objc_object  {objcproto16ISIconDecoration}*>>::NSForwardIterator<objc_object  {objcproto16ISIconDecoration}*>::NSForwardIterator(uint64_t a1, uint64_t a2)
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

uint64_t IDContainerIteratorAdaptor<NSArray<objc_object  {objcproto16ISIconDecoration}*>>::NSForwardIterator<objc_object  {objcproto16ISIconDecoration}*>::NSForwardIterator(uint64_t a1, void *a2)
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

uint64_t IDContainerIteratorAdaptor<NSArray<objc_object  {objcproto16ISIconDecoration}*>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
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

void TFSInfo::FetchISIcon(void)::$_1::operator() const(void)::{lambda(void)#1}::operator()(uint64_t a1@<X0>, TString *a2@<X8>)
{
  if (CFStringGetLength(**a1))
  {
    v4 = *a1;
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *v4);
  }

  else
  {
    FolderIconType(**(a1 + 8), &v7);
    v5 = [*MEMORY[0x1E6982DC8] identifier];
    v6.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v6, v5);

    TString::non_empty_or(&v7, &v6, a2);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  }
}

void sub_1E572C440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

void *std::vector<TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

TString *std::pair<TString,TString>::pair[abi:ne200100]<NSString * {__strong},NSString * {__strong},0>(TString *a1, id *a2, id *a3)
{
  v5 = *a2;
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, v5);

  v6 = *a3;
  a1[1].fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1 + 1, v6);

  return a1;
}

void sub_1E572C634(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TString,TString>>::__init_with_size[abi:ne200100]<std::pair<TString,TString> const*,std::pair<TString,TString> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<TString,TString>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E572C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<TString,TString>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<TString,TString>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<TString,TString>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<TString,TString>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

TString *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TString,TString>>,std::pair<TString,TString> const*,std::pair<TString,TString> const*,std::pair<TString,TString>*>(uint64_t a1, TString **a2, TString **a3, TString *a4)
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
      std::pair<TString,TString>::pair[abi:ne200100](v4, v6);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TString,TString>>,std::pair<TString,TString>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

TString *std::pair<TString,TString>::pair[abi:ne200100](TString *a1, TString **a2)
{
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *a2);
  a1[1].fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1 + 1, a2[1]);
  return a1;
}

void sub_1E572C89C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TString,TString>>,std::pair<TString,TString>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TString,TString>>,std::pair<TString,TString>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

const void **std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TString,TString>>,std::pair<TString,TString>*>::operator()[abi:ne200100](const void **result)
{
  v1 = *result[2];
  v2 = *result[1];
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 2;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1 - 1);
      result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
      v1 = v3;
    }

    while (v3 != v2);
  }

  return result;
}

void std::vector<std::pair<TString,TString>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TString,TString>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void **std::vector<std::pair<TString,TString>>::__base_destruct_at_end[abi:ne200100](const void **result, const void **a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 2;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4 - 1);
      result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  v3[1] = a2;
  return result;
}

uint64_t algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FPTag *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(v6, a1);
  IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(v5, a2);
  v3 = std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FPTag *>>>(v6, v5);

  return v3;
}

uint64_t std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FPTag *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(&obj, a1);
  IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(v7, a2);
  v3 = 0;
  while (obj != v7[0] || v13 != v7[16])
  {
    v4 = v12;
    if (v12 >= v11 - 1)
    {
      v5 = [obj countByEnumeratingWithState:v9 objects:v10 count:4];
      v4 = -1;
      v11 = v5;
      v12 = -1;
    }

    if (v10[4] != *v9[2])
    {
      objc_enumerationMutation(obj);
      v4 = v12;
    }

    v12 = v4 + 1;
    ++v13;
    ++v3;
  }

  return v3;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
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

uint64_t IDContainerIteratorAdaptor<NSArray<FPTag *>>::NSForwardIterator<NSArray<FPTag *>>::NSForwardIterator(uint64_t a1, void *a2)
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

uint64_t IDContainerIteratorAdaptor<NSArray<FPTag *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
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

void *IDContainerReverseIteratorAdaptor<NSArray<NSDictionary<NSString *,NSObject *> *>>::IDContainerReverseIteratorAdaptor(void *a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  a1[1] = [v3 count];

  return a1;
}

id TFSInfoOverflow::GetIFSymbol(TFSInfoOverflow *this)
{
  os_unfair_lock_lock(this + 18);
  v2 = *(this + 8);
  os_unfair_lock_unlock(this + 18);

  return v2;
}

Class initSYDocumentAttributes(void)
{
  if (SynapseLibrary(void)::frameworkLibrary || (SynapseLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Synapse.framework/Synapse", 2)) != 0)
  {
    Class = objc_getClass("SYDocumentAttributes");
    classSYDocumentAttributes = Class;
    getSYDocumentAttributesClass = SYDocumentAttributesFunction;
  }

  else
  {
    Class = classSYDocumentAttributes;
  }

  return Class;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
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

  if ((std::equal_to<NSString * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},UTType * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},UTType * {__strong}>>>::swap(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  if (*(a1 + 24))
  {
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
  }

  if (v11)
  {
    v15 = *(a2 + 8);
    v16 = *(*(a2 + 16) + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v16 >= v15)
      {
        v16 %= v15;
      }
    }

    else
    {
      v16 &= v15 - 1;
    }

    *(*a2 + 8 * v16) = a2 + 16;
  }
}

uint64_t std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__shared_ptr_emplace<TNWNode>::__shared_ptr_emplace[abi:ne200100]<__SFNode *&,std::allocator<TNWNode>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3F7F8;
  TNWNode::TNWNode(a1 + 3, *a2);
  return a1;
}

uint64_t std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<TFSInfo const&,std::allocator<TFSInfo>,0>(uint64_t a1, const TFSInfo *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 24), a2);
  return a1;
}

const void **TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<NSURL * {__strong}>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3F848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t *TPropertyReference::As<double>(uint64_t *result, uint64_t **a2)
{
  v2 = *(result + 2);
  v3 = a2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_48;
      }

      result = *a2;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_48;
      }

      v3 = *result;
LABEL_47:
      result = *v3;
      break;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_48;
      }

      result = TPropertyValue::As<double>(*result, a2);
      break;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 23:
      if (v2 == 23)
      {
        goto LABEL_47;
      }

LABEL_48:
      std::__throw_bad_variant_access[abi:ne200100]();
    default:
      return result;
  }

  return result;
}

uint64_t *TPropertyValue::As<double>(uint64_t *result, uint64_t **a2)
{
  v2 = *(result + 4);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_45;
      }

      result = *a2;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_45;
      }

      result = *result;
      break;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 9:
      goto LABEL_43;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 22:
      if (v2 == 22)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_43:
      result = *a2;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t TPropertyReference::As<unsigned int>(unint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_50;
      }

      LODWORD(a1) = *a2;
      v3 = 0xFFFFE07800000000;
      return v3 | a1;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
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

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_27;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      a1 = TPropertyValue::As<unsigned int>(*a1, a2);
      v3 = a1 & 0xFFFFFFFF00000000;
      return v3 | a1;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

LABEL_27:
      v3 = 0;
      LODWORD(a1) = **a1;
      break;
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
      v3 = 0xFFFFE08E00000000;
      LODWORD(a1) = *a2;
      break;
    default:
      v3 = 0xFFFFFFFF00000000;
      break;
  }

  return v3 | a1;
}

unint64_t TPropertyReference::As<BOOL>(unint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_50;
      }

      LODWORD(a1) = *a2;
      v3 = 0xFFFFE07800000000;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      v3 = 0;
      LODWORD(a1) = **a1;
      break;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
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

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      a1 = TPropertyValue::As<BOOL>(*a1, a2);
      v3 = a1 & 0xFFFFFFFF00000000;
      break;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
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
      v3 = 0xFFFFE08E00000000;
      LODWORD(a1) = *a2;
      break;
    default:
      LODWORD(a1) = 0;
      v3 = 0xFFFFFFFF00000000;
      break;
  }

  return v3 | a1;
}

id **TPropertyReference::As<NSObject * {__strong}>@<X0>(id **result@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 2);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        goto LABEL_49;
      }

      result = *a2;
      v5 = -8072;
      goto LABEL_48;
    case 1:
      if (v4 != 1)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 3:
      if (v4 != 3)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 4:
      if (v4 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 5:
      if (v4 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 6:
      if (v4 != 6)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 7:
      if (v4 != 7)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 8:
      if (v4 != 8)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v4 != 10)
      {
        goto LABEL_49;
      }

      result = **result;
      v5 = 0;
      goto LABEL_48;
    case 11:
      if (v4 != 11)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 12:
      if (v4 != 12)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 13:
      if (v4 != 13)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 14:
      if (v4 != 14)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 15:
      if (v4 != 15)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 16:
      if (v4 != 16)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 17:
      if (v4 != 17)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 18:
      if (v4 != 18)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 19:
      if (v4 != 19)
      {
        goto LABEL_49;
      }

      TPropertyValue::As<NSObject * {__strong}>(*result, a2, &v6);
      result = v6;
      v5 = v7;
      goto LABEL_48;
    case 20:
      if (v4 != 20)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 21:
      if (v4 != 21)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 22:
      if (v4 != 22)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 23:
      if (v4 != 23)
      {
LABEL_49:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = *a2;
      v5 = -8050;
LABEL_48:
      *a3 = result;
      *(a3 + 8) = v5;
      break;
    default:
      return result;
  }

  return result;
}

id *TPropertyValue::As<NSObject * {__strong}>@<X0>(id *result@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  v5 = -8050;
  switch(v4)
  {
    case 0:
      if (v4)
      {
        goto LABEL_43;
      }

      v5 = -8072;
      goto LABEL_41;
    case 1:
      if (v4 != 1)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 3:
      if (v4 != 3)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 4:
      if (v4 != 4)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 5:
      if (v4 != 5)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 6:
      if (v4 != 6)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 7:
      if (v4 == 7)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 8:
      if (v4 != 8)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 9:
      goto LABEL_41;
    case 10:
      if (v4 != 10)
      {
        goto LABEL_43;
      }

      v5 = 0;
      a2 = result;
      goto LABEL_41;
    case 11:
      if (v4 != 11)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 12:
      if (v4 != 12)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 13:
      if (v4 != 13)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 14:
      if (v4 != 14)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 15:
      if (v4 != 15)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 16:
      if (v4 != 16)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 17:
      if (v4 != 17)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 18:
      if (v4 != 18)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 19:
      if (v4 != 19)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 20:
      if (v4 != 20)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 21:
      if (v4 != 21)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 22:
      if (v4 != 22)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 23:
      if (v4 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_41:
      result = *a2;
      *a3 = result;
      *(a3 + 8) = v5;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t TPropertyReference::As<int>(unint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_50;
      }

      LODWORD(a1) = *a2;
      v3 = 0xFFFFE07800000000;
      return v3 | a1;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      a1 = TPropertyValue::As<int>(*a1, a2);
      v3 = a1 & 0xFFFFFFFF00000000;
      return v3 | a1;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
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

LABEL_43:
      v3 = 0;
      LODWORD(a1) = **a1;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      v3 = 0xFFFFE08E00000000;
      LODWORD(a1) = *a2;
      break;
    default:
      v3 = 0xFFFFFFFF00000000;
      break;
  }

  return v3 | a1;
}

unint64_t TPropertyReference::As<short>(unint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_50;
      }

      LODWORD(a1) = *a2;
      v3 = 0xFFFFE07800000000;
      return v3 | a1;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      a1 = TPropertyValue::As<short>(*a1, a2);
      v3 = a1 & 0xFFFFFFFF00000000;
      return v3 | a1;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
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

LABEL_43:
      v3 = 0;
      LODWORD(a1) = **a1;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      v3 = 0xFFFFE08E00000000;
      LODWORD(a1) = *a2;
      break;
    default:
      v3 = 0xFFFFFFFF00000000;
      break;
  }

  return v3 | a1;
}

unint64_t TPropertyValue::As<short>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 4);
  v3 = v2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_48;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      return v4 | v3;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_48;
      }

LABEL_43:
      v4 = 0;
      v3 = *a1;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_48:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_45:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      break;
    default:
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

uint64_t TPropertyValue::SetAs<ISIcon * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<ISIconPackage * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<NSDictionary * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<IFSymbol * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

const void **TAutoRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **TRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **TAutoRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::__emplace_unique_key_args<std::pair<__SFBrowser *,__SFNode *>,std::piecewise_construct_t const&,std::tuple<std::pair<__SFBrowser *,__SFNode *>&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::__find_equal<std::pair<__SFBrowser *,__SFNode *>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::__find_equal<std::pair<__SFBrowser *,__SFNode *>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      v8 = v4;
      v9 = v4[4];
      if (v6 == v9)
      {
        v11 = v8[5];
        if (v7 < v11)
        {
          goto LABEL_11;
        }

        v12 = v11 == v7;
        if (v11 >= v7)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if (v12)
        {
          v13 = 0;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 >= v9)
        {
          if (v9 >= v6)
          {
            v10 = 1;
          }

          else
          {
            v10 = -1;
          }

          if ((v10 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_11:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::find<std::pair<__SFBrowser *,__SFNode *>>(uint64_t a1, unint64_t *a2)
{
  v3 = a1 + 8;
  result = std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::__lower_bound<std::pair<__SFBrowser *,__SFNode *>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == result)
  {
    return v3;
  }

  v5 = *(result + 32);
  if (*a2 >= v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (*a2 != v5)
  {
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    return v3;
  }

  v7 = a2[1];
  v8 = *(result + 40);
  v9 = v7 >= v8;
  v10 = v7 == v8;
  v11 = -1;
  if (v9)
  {
    v11 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  if (v11 < 0)
  {
    return v3;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::__lower_bound<std::pair<__SFBrowser *,__SFNode *>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    do
    {
      v7 = *(a3 + 32);
      v8 = v7 == v5;
      if (v7 >= v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v10 = *(a3 + 40);
        v11 = v10 == v6;
        v9 = v10 >= v6 ? 1 : -1;
        if (v11)
        {
          v9 = 0;
        }
      }

      v12 = v9 & 0x80;
      v8 = v12 == 0;
      v13 = v12 >> 4;
      if (v8)
      {
        result = a3;
      }

      a3 = *(a3 + v13);
    }

    while (a3);
  }

  return result;
}

void std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FSInfoVirtualType &,__SFNode *&,std::allocator<TFSInfo>,0>(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 3), *a2, *a3);
}

uint64_t *TPropertyReference::As<__CFArray const*>(uint64_t *result, uint64_t **a2)
{
  v2 = *(result + 2);
  v3 = a2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_48;
      }

      result = *a2;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_48;
      }

      v3 = *result;
LABEL_47:
      result = *v3;
      break;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_48;
      }

      result = TPropertyValue::As<__CFArray const*>(*result, a2);
      break;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 23:
      if (v2 == 23)
      {
        goto LABEL_47;
      }

LABEL_48:
      std::__throw_bad_variant_access[abi:ne200100]();
    default:
      return result;
  }

  return result;
}

uint64_t *TPropertyValue::As<__CFArray const*>(uint64_t *result, uint64_t **a2)
{
  v2 = *(result + 4);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_29;
      }

      result = *a2;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 9:
      goto LABEL_27;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_29;
      }

      result = *result;
      break;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 20:
      if (v2 == 20)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    case 23:
      if (v2 != 23)
      {
LABEL_29:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_27:
      result = *a2;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<NSPersonNameComponents * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<__CFArray const*>(uint64_t a1, CFTypeRef *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      v4 = *a2;
      v6 = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<17ul,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>>(a1, a1, &v6);
      TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v6);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_31;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 20:
      if (v2 == 20)
      {
        return 4294959246;
      }

      goto LABEL_31;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_31;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_31:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<__CFString const*>(TString *this, CFTypeRef *a2)
{
  fRef = this[2].fString.fRef;
  switch(fRef)
  {
    case 0:
      v4 = *a2;
      v7 = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<12ul,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>(this, &this->fString.fRef, &v7);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7);
      return 0;
    case 1:
      if (fRef != 1)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 2:
      if (fRef != 2)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 3:
      if (fRef != 3)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 4:
      if (fRef != 4)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 5:
      if (fRef != 5)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 6:
      if (fRef != 6)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 7:
      if (fRef != 7)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 8:
      if (fRef == 8)
      {
        return 4294959246;
      }

      goto LABEL_20;
    case 9:
      return 4294959246;
    case 10:
      if (fRef != 10)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 11:
      if (fRef != 11)
      {
        goto LABEL_20;
      }

      v5 = *a2;
      if (this->fString.fRef != v5)
      {
        TString::SetStringRefAsImmutable(this, v5);
      }

      return 0;
    case 12:
      if (fRef != 12)
      {
        goto LABEL_20;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, *a2);
      return 0;
    case 13:
      if (fRef != 13)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 14:
      if (fRef != 14)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 15:
      if (fRef != 15)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 16:
      if (fRef != 16)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 17:
      if (fRef != 17)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 18:
      if (fRef != 18)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 19:
      if (fRef != 19)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 20:
      if (fRef != 20)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 21:
      if (fRef != 21)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 22:
      if (fRef != 22)
      {
        goto LABEL_20;
      }

      return 4294959246;
    case 23:
      if (fRef != 23)
      {
LABEL_20:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<UTType * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<SYDocumentAttributes * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

void sub_1E572FA2C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1E572FB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1E572FCDC(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void std::allocator<long long>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id ErrorWithOSStatus(int a1, NSString *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NSString *)v3 length];
  if (v4)
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = ErrorWithOSStatus(a1, v5);
  if (v4)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1E57302BC(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

id ErrorWithOSStatus(int a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a1 userInfo:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL IsUserCancelledErr(NSError *a1)
{
  v1 = a1;
  v2 = [(NSError *)v1 domain];
  if (v2 == *MEMORY[0x1E696A250] && [(NSError *)v1 code]== 3072)
  {
    v3 = 1;
  }

  else
  {
    v4 = [(NSError *)v1 domain];
    v3 = v4 == *MEMORY[0x1E696A768] && [(NSError *)v1 code]== -128;
  }

  return v3;
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
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
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

      else
      {
        v18 = v7;
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
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
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
    goto LABEL_68;
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

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
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
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

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
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_1E573086C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E5730970(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E5730A58(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E5730C5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E5730EC0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c65_ZTSKZN19TFSInfoSynchronizer13FetchChildrenEbb12LSPropertiesE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void *std::vector<std::shared_ptr<TFSInfo>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<std::shared_ptr<TCFURLInfo>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void TFSIterator::~TFSIterator(const void **this)
{
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(this + 3);
  TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(this + 1);

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(this);
}

void *std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<TFSInfo> &,char (&)[1024],char (&)[1024],fsid &,unsigned long long &,BOOL &,BOOL &,BOOL &,std::allocator<TFSInfo>,0>(void *a1, os_unfair_lock_s **a2, const char *a3, char *a4, uint64_t *a5, uint64_t *a6, unsigned __int8 *a7, unsigned __int8 *a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 3), a2, a3, a4, *a5, *a6, *a7, *a8, *a9);
  return a1;
}

void std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FSInfoVirtualType const&,__SFNode *&,std::allocator<TFSInfo>,0>(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 3), *a2, *a3);
}

void *std::function<void ()(NSNotification *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSNotification *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(NSNotification *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(NSNotification *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void std::function<void ()(NSNotification *)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
}

uint64_t std::__function::__value_func<void ()(NSNotification *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(NSNotification *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1E57317AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(NSNotification *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1E5731C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (v50)
  {
    operator delete(v50);
  }

  _Unwind_Resume(a1);
}

double type_traits_extras::CopyAsHelper<std::vector<long long>>::MakeWithCapacity@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  v5 = 0;
  std::vector<long long>::reserve(&v4, a1);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void sub_1E5731D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<long long>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

double TSuboperationRequest::TSuboperationRequest(uint64_t a1, int a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t TSuboperationRequest::TSuboperationRequest(uint64_t a1, int a2, CFTypeRef cf, uint64_t a4, uint64_t a5, id *a6, void *a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 40) = 0;
  v12 = (a1 + 40);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a1 + 16), cf);
  *(a1 + 24) = a4;
  if (a5)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  objc_storeStrong(v12, *a6);
  MapFromListRef(a7, &v16);
  v13 = v16;
  v16 = 0uLL;
  v14 = *(a1 + 56);
  *(a1 + 48) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }

  return a1;
}

void sub_1E5731F14(_Unwind_Exception *a1)
{
  v6 = *(v1 + 56);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(v2);
  _Unwind_Resume(a1);
}

void TSuboperationRequest::~TSuboperationRequest(TSuboperationRequest *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    if (!*v2 || (v3 = v2[2]) == 0 || (v3(*v2), *(this + 4)))
    {
      MEMORY[0x1E692CD30]();
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 2);
  TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(this + 1);
}

void TSuboperationTask::TSuboperationTask(uint64_t a1, TOperation **a2)
{
  v2 = TNodeOperationTask::TNodeOperationTask(a1, a2);
  *v2 = &unk_1F5F3F8E8;
  *(v2 + 48) = 0u;
  *(v2 + 96) = 850045863;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  *(v2 + 160) = 1018212795;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0;
  operator new();
}

void sub_1E57320D4(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::deque<std::shared_ptr<TSuboperationRequest>>::~deque[abi:ne200100](v2);
  TNodeOperationTask::~TNodeOperationTask(v1);
  _Unwind_Resume(a1);
}

void TNodeOperationTask::~TNodeOperationTask(TNodeOperationTask *this)
{
  *this = &unk_1F5F41FF0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(this + 2);
}

{
  TNodeOperationTask::~TNodeOperationTask(this);

  JUMPOUT(0x1E692CD30);
}

uint64_t TSuboperationTask::RequestSuboperation(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 8));
  v4 = *(a1 + 16);
  v8 = v4;
  if (v4)
  {
    TOperation::AddPtrReference(v4);
    os_unfair_lock_unlock((a1 + 8));
    if (TOperation::CancelRequested(v4))
    {
      goto LABEL_11;
    }
  }

  else
  {
    os_unfair_lock_unlock((a1 + 8));
  }

  if ((*(a1 + 232) & 1) == 0 && *a2)
  {
    v5 = a2[1];
    *&v7 = *a2;
    *(&v7 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    TBlockingQueue<std::shared_ptr<TSuboperationRequest>>::Enqueue(a1 + 48, &v7);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }
  }

LABEL_11:
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
  return 0;
}

void sub_1E5732214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TBlockingQueue<std::shared_ptr<TSuboperationRequest>>::Enqueue(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 48));
  v4 = *(a1 + 40);
  std::deque<std::shared_ptr<TSuboperationRequest>>::push_back(a1, a2);
  if (!v4)
  {
    TConditionVariable::Signal((a1 + 112));
  }

  std::mutex::unlock((a1 + 48));
}

uint64_t TSuboperationTask::OperationTaskProcedure(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v12 = v2;
  if (!v2)
  {
    os_unfair_lock_unlock(this + 2);
LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  TOperation::AddPtrReference(v2);
  os_unfair_lock_unlock(this + 2);
  v3 = (*(*v12 + 72))(v12);
  if (!v3)
  {
    while (!TOperation::CancelRequested(v12) && (this[58]._os_unfair_lock_opaque & 1) == 0)
    {
      TOperation::UpdateStatusStage(v12, 9);
      v10 = 0;
      v11 = 0;
      TBlockingQueue<std::shared_ptr<TSuboperationRequest>>::Dequeue(&this[12], &v10, 0x7FFFFFFF);
      if (!v10)
      {
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        goto LABEL_13;
      }

      if (*v10 == -1)
      {
        LOBYTE(this[58]._os_unfair_lock_opaque) = 1;
        (*(*v12 + 240))(v12);
      }

      else
      {
        RequestedOperation = TOperation::GetRequestedOperation(v12);
        StPowerAssertion::StPowerAssertion(v9, RequestedOperation);
        TSuboperationTask::HandleSubOperationRequest(this, &v10);
        StPowerAssertion::~StPowerAssertion(v9);
      }

      v5 = v11;
      v10 = 0;
      v11 = 0;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  (*(*&this->_os_unfair_lock_opaque + 40))(this);
  if (v12)
  {
    TOperation::CleanupAll(v12, v6, v7);
    if (v12)
    {
      TOperation::RemovePtrReference(v12);
    }
  }

  v12 = 0;
  TNodeOperationTask::Completed(this);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v12);
  return v3;
}

void sub_1E573247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef((v12 - 24));
  _Unwind_Resume(a1);
}

BOOL TBlockingQueue<std::shared_ptr<TSuboperationRequest>>::Dequeue(uint64_t a1, uint64_t a2, int a3)
{
  std::mutex::lock((a1 + 48));
  if (!a3)
  {
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    if (!*(a1 + 40))
    {
      TConditionVariable::Wait((a1 + 112), (a1 + 48));
    }

    goto LABEL_6;
  }

  if (*(a1 + 40))
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  TConditionVariable::WaitWithTimeout((a1 + 112), (a1 + 48), (1000 * a3));
  v6 = *(a1 + 40) != 0;
LABEL_7:
  if (*(a1 + 40))
  {
    v7 = (*(a1 + 32) >> 5) & 0x7FFFFFFFFFFFFF8;
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 8) + v7) + 16 * v8);
    v10 = *(*(*(a1 + 8) + v7) + 16 * v8 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(a2 + 8);
    *a2 = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    std::deque<std::shared_ptr<TSuboperationRequest>>::pop_front(a1);
  }

  else
  {
    v12 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

uint64_t TSuboperationTask::HandleSubOperationRequest(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 8));
  v4 = *(a1 + 16);
  v6.fData = v4;
  if (v4)
  {
    TOperation::AddPtrReference(v4);
    os_unfair_lock_unlock((a1 + 8));
    (*(*v4 + 224))(v4, a2);
    TNodeOperationTask::HandleOperation(a1, &v6);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 8));
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v6);
  return 0;
}

void TSuboperationTask::~TSuboperationTask(TSuboperationTask *this)
{
  *this = &unk_1F5F3F8E8;
  v2 = *(this + 27);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  std::deque<std::shared_ptr<TSuboperationRequest>>::~deque[abi:ne200100](this + 6);

  TNodeOperationTask::~TNodeOperationTask(this);
}

{
  *this = &unk_1F5F3F8E8;
  v2 = *(this + 27);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  std::deque<std::shared_ptr<TSuboperationRequest>>::~deque[abi:ne200100](this + 6);
  TNodeOperationTask::~TNodeOperationTask(this);

  JUMPOUT(0x1E692CD30);
}

uint64_t std::deque<std::shared_ptr<TSuboperationRequest>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<TNodeEventPtr *>::~__split_buffer(a1);
}

void *std::deque<std::shared_ptr<TSuboperationRequest>>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v5 - v6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<std::shared_ptr<TSuboperationRequest>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v8 + v3[4];
  }

  v10 = *a2;
  *(*(v6 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9) = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    v8 = v3[5];
  }

  v3[5] = v8 + 1;
  return result;
}

void *std::deque<std::shared_ptr<TSuboperationRequest>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TNodeEventPtr *>::emplace_back<TNodeEventPtr *&>(a1, &v10);
}

void sub_1E5732B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::shared_ptr<TSuboperationRequest>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return std::deque<std::shared_ptr<TSuboperationRequest>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::shared_ptr<TSuboperationRequest>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t TConditionVariable::WaitWithTimeout(TConditionVariable *this, std::mutex *a2, uint64_t a3)
{
  ++*(this + 16);
  v7 = std::chrono::steady_clock::now().__d_.__rep_ + 1000 * a3;
  while (*(this + 16))
  {
    if (std::condition_variable_any::wait_until<std::mutex,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(this, a2, &v7))
    {
      v5 = *(this + 16);
      if (v5)
      {
        *(this + 16) = v5 - 1;
        return 1;
      }

      return 0;
    }
  }

  return 0;
}

void TConditionVariable::Wait(TConditionVariable *this, std::mutex *a2)
{
  v2 = *(this + 16);
  *(this + 16) = v2 + 1;
  if (v2 != -1)
  {
    do
    {
      std::condition_variable_any::wait<std::mutex>(this, a2);
    }

    while (*(this + 16));
  }
}

BOOL std::condition_variable_any::wait_until<std::mutex,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(uint64_t a1, std::mutex *a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15.__m_ = v6;
  v15.__owns_ = 1;
  std::mutex::lock(v6);
  std::mutex::unlock(a2);
  if (*a3 <= std::chrono::steady_clock::now().__d_.__rep_)
  {
    v12 = 1;
    goto LABEL_19;
  }

  v8 = *a3;
  v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
  if (v9.__d_.__rep_ >= 1)
  {
    std::chrono::steady_clock::now();
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v10.__d_.__rep_)
    {
      v11 = 0;
      goto LABEL_16;
    }

    if (v10.__d_.__rep_ < 1)
    {
      if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v11 = 0x8000000000000000;
        goto LABEL_16;
      }
    }

    else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v11 = 1000 * v10.__d_.__rep_;
LABEL_14:
    if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
      std::condition_variable::__do_timed_wait(a1, &v15, v13);
      std::chrono::steady_clock::now();
      goto LABEL_18;
    }

LABEL_16:
    v13.__d_.__rep_ = v11 + v9.__d_.__rep_;
    goto LABEL_17;
  }

LABEL_18:
  v12 = std::chrono::steady_clock::now().__d_.__rep_ >= *a3;
LABEL_19:
  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v15);
  std::mutex::lock(a2);
  if (v15.__owns_)
  {
    std::mutex::unlock(v15.__m_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v12;
}

void sub_1E5732E84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    std::condition_variable_any::wait<std::mutex>();
  }
}

void std::condition_variable_any::wait<std::mutex>(uint64_t a1, std::mutex *a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6.__m_ = v4;
  v6.__owns_ = 1;
  std::mutex::lock(v4);
  std::mutex::unlock(a2);
  std::condition_variable::wait(a1, &v6);
  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v6);
  std::mutex::lock(a2);
  if (v6.__owns_)
  {
    std::mutex::unlock(v6.__m_);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5732F88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TDSOperationRecord::TDSOperationRecord(uint64_t a1, id *a2, id *a3, void *a4, int a5)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = *a2;
  *(a1 + 72) = *a3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = NodePropertyListCreateCopy(a4);
  *(a1 + 112) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(a1 + 120) = a5;
  *(a1 + 132) = 0;
  *(a1 + 124) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) &= 0x80u;
  return a1;
}

void sub_1E5733054(_Unwind_Exception *a1)
{
  TRef<OpaquePropertyListRef *,TRetainReleasePolicy<OpaquePropertyListRef *>>::~TRef((v1 + 104));

  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void TDSOperationRecord::GetSource(TDSOperationRecord *this@<X0>, void **a2@<X8>)
{
  std::mutex::lock(this);
  v4 = *(this + 8);
  *a2 = v4;
  v5 = v4;
  if (TNodeFromFINode(v5))
  {
    v6 = *(this + 30);
    v7 = v6 > 0x16;
    v8 = (1 << v6) & 0x40000C;
    if (!v7 && v8 != 0)
    {
      v10 = TNodeFromFINode(v5);
      v11 = TNode::InfoLock(v10);
      os_unfair_lock_lock(v11);
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v11);
        v14 = *(v13 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        if (v14)
        {
          goto LABEL_30;
        }
      }

      else
      {
        os_unfair_lock_unlock(v11);
        if (*(v13 + 120))
        {
          goto LABEL_30;
        }
      }

      v15 = TNodeFromFINode(v5);
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
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (IsAlias)
      {
        v20 = TNodeFromFINode(v5);
        v21 = TNode::InfoLock(v20);
        os_unfair_lock_lock(v21);
        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v21);
        if ((TFSInfo::GetBladeRunnerFlags(v23) & 0x80) != 0)
        {
          v24 = TNodeFromFINode(v5);
          v25 = TNode::InfoLock(v24);
          os_unfair_lock_lock(v25);
          v27 = *(v24 + 16);
          v26 = *(v24 + 24);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v25);
          v28 = TFSInfo::IsAlias(v27);
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            if (!v28)
            {
              goto LABEL_30;
            }
          }

          else if (!v28)
          {
            goto LABEL_30;
          }

          v29 = TNodeFromFINode(v5);
          TNode::GetAliasTarget(v29, &v31);
          TNodePtr::operator=(a2, &v31);

          if (!TNodeFromFINode(*a2))
          {
            v30 = TNodeFromFINode(v5);
            TNode::GetAliasTarget(v30, &v31);
            TNodePtr::operator=(a2, &v31);
          }
        }

        else if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }
    }
  }

LABEL_30:

  std::mutex::unlock(this);
}

void TDSOperationRecord::GetDestination(TDSOperationRecord *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock(this);
  *a2 = *(this + 9);

  std::mutex::unlock(this);
}

void TDSOperationRecord::GetPropertyMapPtr(TDSOperationRecord *this@<X0>, _OWORD *a2@<X8>)
{
  std::mutex::lock(this);
  MapFromListRef(*(this + 13), &v4);
  *a2 = v4;
  std::mutex::unlock(this);
}

uint64_t TDSOperationRecord::GetPropertyList(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = *(this + 13);
  std::mutex::unlock(this);
  return v2;
}

void TDSOperationRecord::SetPropertyList(TDSOperationRecord *this, OpaquePropertyListRef *a2)
{
  std::mutex::lock(this);
  Copy = NodePropertyListCreateCopy(a2);
  NodePropertyListRelease(*(this + 13));
  *(this + 13) = Copy;

  std::mutex::unlock(this);
}

uint64_t TDSOperationRecord::GetRequestedOperation(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = *(this + 30);
  std::mutex::unlock(this);
  return v2;
}

uint64_t TDSOperationRecord::GetOperationOptions(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = *(this + 31);
  std::mutex::unlock(this);
  return v2;
}

void TDSOperationRecord::AddOperationOptions(uint64_t a1, int a2)
{
  std::mutex::lock(a1);
  *(a1 + 124) |= a2;

  std::mutex::unlock(a1);
}

void TDSOperationRecord::TargetName(TDSOperationRecord *this@<X0>, TString *a2@<X8>)
{
  std::mutex::lock(this);
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *(this + 14));

  std::mutex::unlock(this);
}

void sub_1E57335D0(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void TDSOperationRecord::GetOriginalSourceParent(TDSOperationRecord *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock(this);
  *a2 = *(this + 10);

  std::mutex::unlock(this);
}

void TDSOperationRecord::GetResolvedDestination(TDSOperationRecord *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock(this);
  *a2 = *(this + 11);

  std::mutex::unlock(this);
}

void TDSOperationRecord::GetTargetNode(TDSOperationRecord *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock(this);
  *a2 = *(this + 12);

  std::mutex::unlock(this);
}

uint64_t TDSOperationRecord::GetConflict(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = *(this + 33);
  std::mutex::unlock(this);
  return v2;
}

uint64_t TDSOperationRecord::GetResolution(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = *(this + 34);
  std::mutex::unlock(this);
  return v2;
}

uint64_t TDSOperationRecord::GetMergeResolution(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = *(this + 34);
  std::mutex::unlock(this);
  if ((v2 - 7) > 4)
  {
    return 0;
  }

  else
  {
    return *&asc_1E5794564[4 * (v2 - 7)];
  }
}

uint64_t TDSOperationRecord::NeedsAuthentication(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = (*(this + 184) >> 1) & 1;
  std::mutex::unlock(this);
  return v2;
}

void TDSOperationRecord::SetResolution(uint64_t a1, int a2)
{
  std::mutex::lock(a1);
  *(a1 + 136) = a2;

  std::mutex::unlock(a1);
}

void TDSOperationRecord::SetRequestedOperation(uint64_t a1, int a2)
{
  std::mutex::lock(a1);
  *(a1 + 120) = a2;

  std::mutex::unlock(a1);
}

void TDSOperationRecord::SetCompletedOperation(uint64_t a1, int a2)
{
  std::mutex::lock(a1);
  if ((*(a1 + 184) & 0x40) == 0)
  {
    *(a1 + 128) = a2;
  }

  std::mutex::unlock(a1);
}

uint64_t TDSOperationRecord::CompletedOperation(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  v2 = *(this + 32);
  std::mutex::unlock(this);
  return v2;
}

void TDSOperationRecord::AddConflict(uint64_t a1, int a2)
{
  std::mutex::lock(a1);
  *(a1 + 132) |= a2;

  std::mutex::unlock(a1);
}

void TDSOperationRecord::ClearConflict(uint64_t a1, int a2)
{
  std::mutex::lock(a1);
  *(a1 + 132) &= ~a2;

  std::mutex::unlock(a1);
}

void TDSOperationRecord::SetNoConflict(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  *(this + 33) = 0;

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetNeedsAuthentication(TDSOperationRecord *this, int a2)
{
  std::mutex::lock(this);
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(this + 184) = *(this + 184) & 0xFD | v4;

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetOriginalSourceParent(TDSOperationRecord *this, const TNodePtr *a2)
{
  std::mutex::lock(this);
  objc_storeStrong(this + 10, a2->fFINode);

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetResolvedDestination(TDSOperationRecord *this, const TNodePtr *a2)
{
  std::mutex::lock(this);
  objc_storeStrong(this + 11, a2->fFINode);

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetTargetNode(TDSOperationRecord *this, const TNodePtr *a2)
{
  std::mutex::lock(this);
  objc_storeStrong(this + 12, a2->fFINode);

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetTargetName(TDSOperationRecord *this, const TString *a2)
{
  std::mutex::lock(this);
  if ((this + 112) != a2)
  {
    TString::SetStringRefAsImmutable(this + 14, a2->fString.fRef);
  }

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetPhysicalSizeNeeded(TDSOperationRecord *this, uint64_t a2)
{
  std::mutex::lock(this);
  *(this + 20) = a2;

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetLogicalSize(TDSOperationRecord *this, uint64_t a2)
{
  std::mutex::lock(this);
  *(this + 21) = a2;

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetItemCount(TDSOperationRecord *this, uint64_t a2)
{
  std::mutex::lock(this);
  *(this + 22) = a2;

  std::mutex::unlock(this);
}

void TDSOperationRecord::SetTranslocationChanged(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  *(this + 184) |= 1u;

  std::mutex::unlock(this);
}

CFComparisonResult TRawCollator::operator()(uint64_t a1, const void **a2, const void **a3)
{
  v4 = RetainCF<__CFString const*>(a2);
  if (v4)
  {
    v5 = CFAutorelease(v4);
    v6 = static_cf_cast<__CFString const*,void const*>(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = RetainCF<__CFString const*>(a3);
  if (v7)
  {
    v8 = CFAutorelease(v7);
    v9 = static_cf_cast<__CFString const*,void const*>(v8);
  }

  else
  {
    v9 = 0;
  }

  return CFStringCompare(v6, v9, 0);
}

CFComparisonResult TRawCollator::operator()(uint64_t a1, const void **a2, const void **a3, CFRange *a4)
{
  if (a4->location || (length = a4->length, length < CFStringGetLength(*a2)))
  {
    v9 = RetainCF<__CFString const*>(a2);
    if (v9)
    {
      v10 = CFAutorelease(v9);
      v11 = static_cf_cast<__CFString const*,void const*>(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = RetainCF<__CFString const*>(a3);
    if (v12)
    {
      v13 = CFAutorelease(v12);
      v14 = static_cf_cast<__CFString const*,void const*>(v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = *a4;

    return CFStringCompareWithOptions(v11, v14, v15, 0);
  }

  else
  {
    v17 = *(*a1 + 16);

    return v17(a1, a2, a3);
  }
}

uint64_t *GRawCompare(void)
{
  if ((atomic_load_explicit(qword_1ECFF4448, memory_order_acquire) & 1) == 0)
  {
    GRawCompare();
  }

  return &_MergedGlobals_1;
}

void sub_1E57340FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E57343D0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void TString::TString(TString *this, const UInt8 *a2, CFIndex a3)
{
  this->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, &stru_1F5F42870);
  if (a2)
  {
    TString::SetFromUTF8(this, a2, a3);
  }
}

void TString::SetFromUniChars(TString *this, const unsigned __int16 *a2, CFIndex a3)
{
  v4 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], a2, a3);
  if (this->fString.fRef)
  {
    CFRelease(this->fString.fRef);
  }

  this->fString.fRef = v4;
}

CFIndex TString::IndexOf(TString *this, const TString *a2, CFIndex a3)
{
  if (a3 < 0)
  {
    return -1;
  }

  if (CFStringGetLength(this->fString.fRef) <= a3 || !CFStringGetLength(a2->fString.fRef))
  {
    return -1;
  }

  fRef = this->fString.fRef;
  v7 = RetainCF<__CFString const*>(&a2->fString.fRef);
  if (v7)
  {
    v8 = CFAutorelease(v7);
    v9 = static_cf_cast<__CFString const*,void const*>(v8);
  }

  else
  {
    v9 = 0;
  }

  v12.length = CFStringGetLength(this->fString.fRef) - a3;
  v12.location = a3;
  if (CFStringFindWithOptions(fRef, v9, v12, 0, &v11))
  {
    return v11.location;
  }

  else
  {
    return -1;
  }
}

void TString::SetLength(TString *this, CFIndex a2)
{
  if (a2)
  {
    v3 = a2;
    Length = CFStringGetLength(this->fString.fRef);
    if (Length <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = Length;
    }

    std::vector<unsigned short>::vector[abi:ne200100](buffer, v5);
    fRef = this->fString.fRef;
    v7 = CFStringGetLength(this->fString.fRef);
    if (v7 >= v3)
    {
      v8.length = v3;
    }

    else
    {
      v8.length = v7;
    }

    v8.location = 0;
    CFStringGetCharacters(fRef, v8, buffer[0]);
    if (v3 >= 1 && (buffer[0][v3 - 1] & 0xFC00) == 0xD800)
    {
      --v3;
    }

    TString::SetFromUniChars(this, buffer[0], v3);
    if (buffer[0])
    {
      buffer[1] = buffer[0];
      operator delete(buffer[0]);
    }
  }

  else
  {

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, &stru_1F5F42870);
  }
}

void sub_1E57346B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL TString::GetCString(TString *this, char *a2, CFIndex a3)
{
  CString = CFStringGetCString(this->fString.fRef, a2, a3, 0x8000100u);
  if (!CString)
  {
    *a2 = 0;
  }

  return CString != 0;
}

const void **TString::AsDecomposedUnicode@<X0>(TString *this@<X0>, TString *a2@<X8>)
{
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  result = CFStringGetLength(this->fString.fRef);
  if (result)
  {
    v5 = RetainCF<__CFString const*>(&this->fString.fRef);
    if (v5)
    {
      v6 = CFAutorelease(v5);
      v7 = static_cf_cast<__CFString const*,void const*>(v6);
    }

    else
    {
      v7 = 0;
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
    v9 = MutableCopy;
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
    if (a2->fString.fRef != MutableCopy)
    {
      TString::SetStringRefAsImmutable(a2, MutableCopy);
    }

    return TRef<__CFString *,TRetainReleasePolicy<__CFString *>>::~TRef(&v9);
  }

  return result;
}

BOOL TString::Contains(TString *this, const TString *a2)
{
  v4 = GRawCompare();

  return TString::Contains(this, &a2->fString.fRef, v4);
}

BOOL TString::Contains(TString *a1, CFStringRef *a2, uint64_t a3)
{
  Length = CFStringGetLength(a1->fString.fRef);
  v7 = Length - CFStringGetLength(*a2);
  if (v7 < 0)
  {
    return 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = CFStringGetLength(*a2);
      TString::SubString(a1, v8, v10, &v13);
      v11 = (*(*a3 + 16))(a3, &v13, a2);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
      if (!v11)
      {
        break;
      }

      v9 = v8++ < v7;
    }

    while (v7 + 1 != v8);
  }

  return v9;
}

void sub_1E5734918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void UniCharSpan::UniCharSpan(UniCharSpan *this, CFStringRef theString)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = CFStringGetCharactersPtr(theString);
  Length = CFStringGetLength(theString);
  *(this + 4) = Length;
  if (!*(this + 3))
  {
    if (Length)
    {
      v6 = 0;
      std::vector<unsigned short>::resize(this, Length, &v6);
      v7.length = *(this + 4);
      v7.location = 0;
      CFStringGetCharacters(theString, v7, *this);
    }

    else
    {
      v5 = 0;
      std::vector<unsigned short>::resize(this, 1uLL, &v5);
    }
  }
}

void sub_1E57349C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v3, a3);
  }
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1E5734A7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E5794540)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E57945C0)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E57945B0)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E57945A0))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E5794540)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E57945C0)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E57945B0)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E57945A0))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

const void **TRef<__CFString *,TRetainReleasePolicy<__CFString *>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1E5734ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void TDSHelperOperation::HandleMsgFromHelper(uint64_t a1, const char *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!strcmp(a2, "OperationSizerUpdate"))
  {
    __dst[0] = 0;
    string = xpc_dictionary_get_string(v5, "currentName");
    if (string)
    {
      strlcpy(__dst, string, 0x400uLL);
    }

    int64 = xpc_dictionary_get_int64(v5, "bytesCompleted");
    v8 = xpc_dictionary_get_int64(v5, "userVisibleItemsCompleted");
    v9 = xpc_dictionary_get_int64(v5, "itemsCompleted");
    v10 = xpc_dictionary_get_BOOL(v5, "forceReport");
    TOperation::UpdateStatusBytesCompleted(a1, int64);
    TOperation::UpdateStatusItemsTotal(a1, v8, v9);
    TString::TString(&v28, __dst);
    TOperation::UpdateStatusCurrentItem(a1, &v28);
    TOperation::ReportStatus(a1, v10);
    v11 = &v28;
    goto LABEL_11;
  }

  if (!strcmp(a2, "FlushRootLock"))
  {
    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (!strcmp(a2, "ReportError"))
  {
    xpc_dictionary_get_int64(v5, "operationStatus");
    xpc_dictionary_get_int64(v5, "requestedOperation");
    xpc_dictionary_get_string(v5, "errorPath");
    xpc_dictionary_get_BOOL(v5, "isReadError");
    _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (!strcmp(a2, "NotifyOperationStatus"))
  {
    v12 = xpc_dictionary_get_string(v5, "currentName");
    v13 = xpc_dictionary_get_int64(v5, "bytesCompleted");
    v14 = xpc_dictionary_get_int64(v5, "userVisibleItemsCompleted");
    v15 = xpc_dictionary_get_int64(v5, "itemsCompleted");
    v16 = xpc_dictionary_get_BOOL(v5, "isCloning");
    v27 = xpc_dictionary_get_BOOL(v5, "forceReport");
    v17 = xpc_dictionary_get_int64(v5, "throughput");
    v26 = xpc_dictionary_get_int64(v5, "oprecordThroughput");
    v18 = xpc_dictionary_get_int64(v5, "oprecordBytesCompleted");
    v19 = xpc_dictionary_get_int64(v5, "stage");
    TString::TString(__dst, v12);
    TOperation::UpdateStatusBytesCompleted(a1, v13);
    TOperation::UpdateStatusCurrentItem(a1, __dst);
    TOperation::UpdateStatusItemsCompleted(a1, v14, v15, 0);
    TOperation::UpdateStatusThroughput(a1, v17, v16);
    TOperation::UpdateStatusStage(a1, v19);
    v21 = *(a1 + 96);
    v20 = *(a1 + 104);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v21)
    {
      std::mutex::lock(v21);
      *(v21 + 144) = v18;
      std::mutex::unlock(v21);
      std::mutex::lock(v21);
      *(v21 + 152) = v26;
      std::mutex::unlock(v21);
    }

    TOperation::ReportStatus(a1, v27);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v11 = __dst;
LABEL_11:
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v11);
    goto LABEL_23;
  }

  if (!strcmp(a2, "OperationSizing_Reply"))
  {
    TDSHelperContext::ReplyReceived(a1 + 3736, v5);
  }

  else if (!strcmp(a2, "UpdateStatusItemsCompleted"))
  {
    v22 = xpc_dictionary_get_int64(v5, "userVisibleItemsTotal");
    v23 = xpc_dictionary_get_int64(v5, "FSItemsTotal");
    v24 = xpc_dictionary_get_string(v5, "currentName");
    TString::TString(__dst, v24);
    TOperation::UpdateItemsDeleted(a1, v22, v23, __dst);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(__dst);
    TOperation::ReportStatus(a1, 0);
  }

  else
  {
    TDSHelperContext::HandleMsgFromHelper(a1 + 3736, a2, v5);
  }

LABEL_23:

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1E5735660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a14);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a13);

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void TFSInfo::CFURL(TFSInfo *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 2);
  *a2 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  os_unfair_lock_unlock(this + 27);
}

void TDSHelperOperation::Cancel(xpc_connection_t *this, int a2)
{
  TOperation::Cancel(this, a2);
  TFileCoordinationRecord::CancelPendingCoordinators(*(this + 658));

  TDSHelperContext::CancelHelper(this + 467);
}

int64_t TDSHelperOperation::OperationSize(uint64_t a1, FINode **a2, FINode **a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = TDSHelperContext::LaunchDesktopServicesHelper((a1 + 3736), 0);
  if (v8)
  {
    goto LABEL_33;
  }

  v9 = *(a4 + 8);
  *v48 = *a4;
  v49 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IsMigration = TOperation::IsMigration(a1, v48);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  Conflict = TDSOperationRecord::GetConflict(*a4);
  v12 = *(a4 + 8);
  *v48 = *a4;
  v49 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 256))(&v46, a1, v48);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v13 = TNodeFromFINode(*a2);
  TNode::CopyPathToCBuffer(v13, v48, 1024);
  if (TNodeFromFINode(*a3))
  {
    v14 = TNodeFromFINode(*a3);
    TNode::CopyPathToCBuffer(v14, v47, 1024);
  }

  v45 = 0;
  v44 = 0;
  if ((*(a1 + 2377) & 0x20) == 0)
  {
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
    IsDataless = TFSInfo::IsDataless(v18, v19, v20);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if ((IsDataless & 1) == 0)
    {
      v39 = TNodeFromFINode(*a2);
      v40 = TNode::InfoLock(v39);
      os_unfair_lock_lock(v40);
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v40);
      v23 = TFSInfo::GetFPItem(v42);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (!v23 || ![(TFSInfo *)v23 isCloudItem])
      {
        v25 = 0;
        goto LABEL_19;
      }

      v43 = [(TFSInfo *)v23 isRecursivelyDownloaded];

      if (v43)
      {
        v25 = 0;
        goto LABEL_20;
      }
    }
  }

  v22 = TNodeFromFINode(*a2);
  v23 = TNode::GetFIProvider(v22);
  v25 = !TFSInfo::IsDisconnectedDomain(v23, v24);
LABEL_19:

LABEL_20:
  if (TNodeFromFINode(*a3))
  {
    v26 = v47;
  }

  else
  {
    v26 = v48;
  }

  v27 = TString::c_str(&v46);
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a4);
  v8 = TDSHelperContext::OperationSize((a1 + 3736), v48, v26, v27, RequestedOperation, *(a1 + 2376), (a1 + 192), IsMigration, v25, Conflict, *(*(a1 + 128) + 28), &v45 + 1, &v45, &v44);
  if (!v8)
  {
    v29 = v44;
    v30 = TNodeFromFINode(*a2);
    v31 = TNode::InfoLock(v30);
    os_unfair_lock_lock(v31);
    v33 = *(v30 + 16);
    v32 = *(v30 + 24);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v31);
    ObjectIdentifier = TFSInfo::GetObjectIdentifier(v33);
    TRecordProgressMap::UpdateRecordProgress(a1 + 2528, ObjectIdentifier, v29);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (HIBYTE(v45) == 1)
    {
      v35 = *a4;
      std::mutex::lock(*a4);
      *(v35 + 184) |= 0x10u;
      std::mutex::unlock(v35);
    }

    if (v45 == 1)
    {
      v36 = *a4;
      std::mutex::lock(v36);
      *(v36 + 184) |= 0x20u;
      std::mutex::unlock(v36);
    }
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v46.fString.fRef);
LABEL_33:
  v37 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1E5735CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

int64_t TDSHelperOperation::Deleting(uint64_t a1, TFSInfo **a2, unsigned int a3, BOOL a4, BOOL a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = TDSHelperContext::LaunchDesktopServicesHelper((a1 + 3736), 0);
  if (!v12)
  {
    v12 = TFSInfo::CopyPathToCBuffer(*a2, v18, 1024);
    if (!v12)
    {
      if (*(a1 + 184))
      {
        v13 = 1;
      }

      else
      {
        v13 = 1;
        if (a3 != 2 && a3 != 13)
        {
          v14 = *(a1 + 96);
          v15 = *(a1 + 104);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v14 || (TDSOperationRecord::GetOperationOptions(v14) & 1) == 0)
          {
            v13 = 0;
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }
      }

      v12 = TDSHelperContext::Deleting(a1 + 3736, v18, a3, a4, *(*(a1 + 128) + 28), a5, v13, v11);
      if (v12 == -128)
      {
        (*(*a1 + 200))(a1);
        v12 = 4294967168;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1E5735EAC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void TDSHelperOperation::Pause(xpc_connection_t *this)
{
  TOperation::Pause(this);

  TDSHelperContext::PauseHelper(this + 467);
}

void TDSHelperOperation::Resume(xpc_connection_t *this)
{
  TOperation::Resume(this);

  TDSHelperContext::ResumeHelper(this + 467);
}

void TDSHelperOperation::Finalize(TDSHelperOperation *this)
{
  TOperation::Finalize(this);

  TDSHelperContext::Quit((this + 3736));
}

void TDSHelperOperation::~TDSHelperOperation(TDSHelperOperation *this)
{
  TDSHelperContext::~TDSHelperContext((this + 3736));

  TOperation::~TOperation(this);
}

{
  TDSHelperContext::~TDSHelperContext((this + 3736));
  TOperation::~TOperation(this);

  JUMPOUT(0x1E692CD30);
}

void non-virtual thunk toTDSHelperOperation::~TDSHelperOperation(TDSHelperOperation *this)
{
  v1 = (this - 3736);
  TDSHelperContext::~TDSHelperContext(this);

  TOperation::~TOperation(v1);
}

{
  v1 = (this - 3736);
  TDSHelperContext::~TDSHelperContext(this);
  TOperation::~TOperation(v1);

  JUMPOUT(0x1E692CD30);
}

void NodeContextClose()
{
  v17 = *MEMORY[0x1E69E9840];
  TString::TString(&v9, "DS Context");
  TString::TString(&v8, "Close");
  v1 = StSignpostMacroHelper::GetOrCreateFinderLog(&v9, v0);
  ISignpostInterval::ISignpostInterval(&v11, v1);

  SignpostID = ISignpostInterval::MakeSignpostID(&v11, 0);
  v13[0] = &unk_1F5F3FFB0;
  v13[3] = v13;
  v13[4] = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  std::mutex::lock(&v11);
  v10 = SignpostID;
  *buf = &unk_1F5F400B0;
  v15 = &v10;
  v16 = buf;
  ISignpostInterval::BeginPriv(&v11, SignpostID, buf);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](buf);
  std::mutex::unlock(&v11);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __NodeContextClose_block_invoke;
  v7[3] = &__block_descriptor_33_ea8_32c29_ZTSKZ16NodeContextCloseE3__2_e5_v8__0l;
  if (NodeContextClose::onceToken != -1)
  {
    dispatch_once(&NodeContextClose::onceToken, v7);
  }

  ContextMutex();
  std::recursive_mutex::lock(&ContextMutex(void)::contextMutex);
  v2 = sContextOpenCount == 1;
  if (sContextOpenCount-- <= 1)
  {
    if (v2)
    {
      std::mutex::lock(&gNodeContextCloseAsyncSignpostLock);
      _ZNSt3__115allocate_sharedB8ne200100I50AutoSignpostInterval_General_NodeContextCloseAsyncNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v4 = LogObj(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Imbalanced # of calls to NodeContextOpen/NodeContextClose", buf, 2u);
    }

    sContextOpenCount = 0;
  }

  std::recursive_mutex::unlock(&ContextMutex(void)::contextMutex);
  StSignpostMacroHelper::~StSignpostMacroHelper(&v11);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E5736404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::mutex *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::recursive_mutex::unlock(&ContextMutex(void)::contextMutex);
  StSignpostMacroHelper::~StSignpostMacroHelper(&a26);
  _Unwind_Resume(a1);
}

void __NodeContextClose_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = gNodeContextCloseAsyncGroup;
  gNodeContextCloseAsyncGroup = v0;
}

void __NodeContextClose_block_invoke_7()
{
  std::mutex::lock(&gNodeContextCloseAsyncSignpostLock);
  gNodeContextCloseAsyncSignpost = 0;
  v0 = gNodeContextCloseAsyncSignpost;
  gNodeContextCloseAsyncSignpost = 0;
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  std::mutex::unlock(&gNodeContextCloseAsyncSignpostLock);
}

TNode *GetNodeProperty(TNode *a1, OpaqueNodeRef *a2, TPropertyReference *a3, TOperationErrorRecord *a4, uint64_t a5)
{
  v7 = a2;
  v15 = a4;
  v8 = TNode::NodeFromNodeRef(a1, a2);
  result = TNode::WeakValidate(v8, v9);
  if (!result)
  {
    if (v7 == 1684955501)
    {
      v11 = TNode::InfoLock(result);
      os_unfair_lock_lock(v11);
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v11);
      os_unfair_lock_lock((v13 + 108));
      v14 = *(v13 + 123);
      os_unfair_lock_unlock((v13 + 108));
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v7 = 1684955501;
      if (v14 < 0)
      {
        v7 = 1886282093;
      }
    }

    return TNode::GetProperty(v8, v7, a3, &v15, a5);
  }

  return result;
}

TNode *SetNodeProperty(TNode *a1, OpaqueNodeRef *a2, const TPropertyReference *a3, __CFString *a4, uint64_t a5)
{
  v14 = a4;
  v8 = TNode::NodeFromNodeRef(a1, a2);
  v10 = v8;
  if (a2 == 1769370466)
  {
    result = TNode::WeakValidate(v8, v9);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = TNode::Validate(v8, v9);
    if (result)
    {
      return result;
    }
  }

  TNode::GetSuperRootNode(&v13, result);
  v12 = TNodeFromFINode(v13);

  if (v10 == v12)
  {
    return 0;
  }

  else
  {
    return TNode::SetProperty(v10, a2, a3, &v14, 1, a5);
  }
}

uint64_t NodeIteratorSize(uint64_t result)
{
  if (result)
  {
    return (*(result + 24) - *(result + 16)) >> 3;
  }

  return result;
}

uint64_t NodeDSCreateOperation_v2(TOperation **a1, void *a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  v14 = 4294959224;
  if (a1 && a2)
  {
    TNodeOperationTask::CreateNewOperation(a1, a4, a5, a6, v13, &v18);
    v15 = v18;
    if (!v18)
    {
LABEL_10:
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v18);
      goto LABEL_11;
    }

    if (a3)
    {
      TOperation::SetHandlers(v18, a3);
      v15 = v18;
      v17 = v18;
      if (!v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = v18;
    }

    TOperation::AddPtrReference(v15);
LABEL_9:
    v14 = TNode::Operate(&v17, a2);
    TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v17);
    goto LABEL_10;
  }

LABEL_11:

  return v14;
}

void sub_1E5736858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, TOperation *a9, TOperation *a10)
{
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&a9);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&a10);

  _Unwind_Resume(a1);
}

uint64_t NodeDisposeOperation(uint64_t a1)
{
  if (!a1)
  {
    return 4294959224;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E692CD30](a1, 0x20C40A4A59CD2);
  return 0;
}

uint64_t NodeRequestTagStampingOperation(uint64_t a1, int a2)
{
  if (a2 == -1 || a2 == 23)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294959224;
  }

  if (a2 == 23 || a2 == -1)
  {
    return TNode::RequestSuboperation(a1, a2);
  }

  else
  {
    return v3;
  }
}

uint64_t NodeRequestSuboperationWithStringAndNode(uint64_t a1, OpaqueNodeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, TNode *this)
{
  v9 = a2;
  v11 = TNode::NodeFromNodeRef(this, a2);
  TNodePtr::TNodePtr(&v14, v11);
  v12 = TNode::RequestSuboperation(a1, v9, a3, a4, a5, &v14.fFINode);

  return v12;
}

uint64_t NodeCopyFromAlias(TNode *a1, OpaqueNodeRef *a2, int a3, OpaqueNodeRef **a4, TOperationErrorRecord *a5, int a6)
{
  v27.fFINode = 0;
  v28 = a5;
  if (a4)
  {
    v10 = a2;
    v11 = TNode::NodeFromNodeRef(a1, a2);
    v13 = TNode::WeakValidate(v11, v12);
    v14 = v13;
    if (!v13)
    {
      v15 = TNode::InfoLock(v13);
      os_unfair_lock_lock(v15);
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v15);
        v18 = *(v17 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        os_unfair_lock_unlock(v15);
        v18 = *(v17 + 120);
      }

      v21 = a6 | 0x20000;
      if (v18 == 7)
      {
        v21 = a6;
      }

      v22 = v21 | (v10 != 0);
      if (a3)
      {
        v23 = v22 | 8;
      }

      else
      {
        v23 = v22;
      }

      if (!a5 && (v23 & 2) != 0)
      {
        v24 = TNode::InfoLock(v19);
        os_unfair_lock_lock(v24);
        v25 = *(v11 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v24);
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          os_unfair_lock_unlock(v24);
        }
      }

      v14 = TNode::FollowAlias(v11, &v27, &v28, v23);
    }

    *a4 = TNodePtr::CopyAsNodeRef(&v27);
    fFINode = v27.fFINode;
  }

  else
  {
    fFINode = 0;
    v14 = 4294959224;
  }

  return v14;
}