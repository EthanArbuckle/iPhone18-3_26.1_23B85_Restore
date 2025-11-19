@interface FIDSNode
+ (id)_makeWithCoder:(id)a3;
+ (id)appContainersForContainerRoot:(id)a3 showAllFiles:(BOOL)a4 showSystemFiles:(BOOL)a5;
+ (void)registerClassForFIDSNodeCoding:(id)a3;
- (BOOL)isPopulated;
- (BOOL)isValid;
- (BOOL)markAsUsed:(id *)a3;
- (id).cxx_construct;
- (id)brContainer;
- (id)brContainerDocuments;
- (id)copyProgress;
- (id)downloadProgress;
- (id)enumeratorError;
- (id)fiDomain;
- (id)fileParent;
- (id)fileURL;
- (id)fpDomain;
- (id)fpItem;
- (id)iteratorWithOptions:(unsigned int)a3;
- (id)shortDescription;
- (shared_ptr<TFSInfo>)fsInfo;
- (unint64_t)nodeIs:(unint64_t)a3 error:(id *)a4;
- (unsigned)nodePermissions:(unsigned int)a3 error:(id *)a4;
- (unsigned)volumeIs:(unsigned int)a3 error:(id *)a4;
- (void)_sendNotification:(unsigned int)a3 node:(id)a4 property:(unsigned int)a5;
- (void)dispatchEvent:(id)a3 forObserver:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)inlineProgressCancel;
- (void)nodeRestartObservingWithOptions:(unsigned int)a3;
- (void)synchronizeWithOptions:(unsigned int)a3 async:(BOOL)a4;
@end

@implementation FIDSNode

- (id)shortDescription
{
  v3 = [(FIDSNode *)self asTNode];
  v4 = TNode::InfoLock(v3);
  os_unfair_lock_lock(v4);
  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v7 = TFSInfo::IsOnSystemVolume(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = [(FINode *)self displayName];
  v9 = v8;
  v51 = v8;
  if (v7)
  {
    v52 = v8;
  }

  else
  {
    v10 = v8;
    v62.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v62, v10);

    v52 = SanitizedStr(&v62);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"<%@ %p", v13, self];
  v61.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v61, v14);

  v15 = TNode::VirtualType(v3);
  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    Description(v15, &v60);
    v17 = [v16 stringWithFormat:@" %@:", v60];
    v62.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v62, v17);

    TString::Append(&v61, &v62);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v60);
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@" '%@'", v52];
  v62.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v62, v18);

  TString::Append(&v61, &v62);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);

  v19 = [(FINode *)self fileName];
  if (([v9 isEqualToString:v19] & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = v19;
    if ((v7 & 1) == 0)
    {
      v22 = v19;
      v60 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v60, v22);

      v21 = SanitizedStr(&v60);
    }

    v23 = [v20 stringWithFormat:@" {raw: '%@'}", v21];
    v62.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v62, v23);

    TString::Append(&v61, &v62);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);

    if ((v7 & 1) == 0)
    {

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v60);
    }

    v9 = v51;
  }

  v24 = [(FIDSNode *)self fileURL];
  v25 = v24;
  if (v24)
  {
    if (v7)
    {
      v26 = [(NSURL *)v24 debugDescription];
      v58 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v58, v26);

      v27 = [(NSURL *)v25 isFileReferenceURL];
      v28 = v27;
      if (v27)
      {
        v29 = *MEMORY[0x1E695E480];
        v30 = *MEMORY[0x1E695E498];
        v31 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], " (", 2, 0x8000100u, 0, *MEMORY[0x1E695E498]);
        v62.fString.fRef = v31;
        v55.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v55, v31);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);
        v3 = [(NSURL *)v25 path];
        v54.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v54, v3);

        fRef = v55.fString.fRef;
        v56.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        MutableCopy = CFStringCreateMutableCopy(v29, 0, fRef);
        CFRelease(&stru_1F5F42870);
        v56.fString.fRef = MutableCopy;
        TString::Append(&v56, &v54);
        v34 = CFStringCreateWithBytesNoCopy(v29, ")", 1, 0x8000100u, 0, v30);
        v62.fString.fRef = v34;
        v53.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v53, v34);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);
        v35 = v56.fString.fRef;
        v57.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        v36 = CFStringCreateMutableCopy(v29, 0, v35);
        CFRelease(&stru_1F5F42870);
        v57.fString.fRef = v36;
        TString::Append(&v57, &v53);
      }

      else
      {
        v39 = TString::KEmptyString(v27);
        v57.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v57, *v39);
      }

      v40 = v58;
      v59 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      v41 = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v40);
      CFRelease(&stru_1F5F42870);
      v59 = v41;
      TString::Append(&v59, &v57);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v57.fString.fRef);
      if (v28)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v53.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v56.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v54.fString.fRef);

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v55.fString.fRef);
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58);

      v9 = v51;
    }

    else
    {
      v38 = SanitizedURL(v24);
      v59 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v59, v38);
    }

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v59];
    v62.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v62, v42);

    TString::Append(&v61, &v62);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);

    v43 = &v59;
  }

  else
  {
    TNode::Path(v3, &v62.fString.fRef);
    if (CFStringGetLength(v62.fString.fRef))
    {
      v37 = MEMORY[0x1E696AEC0];
      if (v7)
      {
        v58 = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v58, v62.fString.fRef);
      }

      else
      {
        v3 = SanitizedPath(&v62);
        v58 = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v58, v3);
      }

      v44 = [v37 stringWithFormat:@", '%@'", v58];
      v59 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v59, v44);

      TString::Append(&v61, &v59);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v59);

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58);
      if ((v7 & 1) == 0)
      {
      }

      v9 = v51;
    }

    v43 = &v62;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v43->fString.fRef);

  if (![(FIDSNode *)self isValid])
  {
    TString::Append(&v61, ", **** invalid ****");
  }

  v45 = *MEMORY[0x1E695E480];
  v46 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], ">", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v62.fString.fRef = v46;
  v58 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v58, v46);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62.fString.fRef);
  v47 = v61.fString.fRef;
  v59 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v48 = CFStringCreateMutableCopy(v45, 0, v47);
  CFRelease(&stru_1F5F42870);
  v59 = v48;
  TString::Append(&v59, &v58);
  v49 = v59;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v59);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v58);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v61.fString.fRef);

  return v49;
}

- (id)fileURL
{
  [(FIDSNode *)self fsInfo];
  os_unfair_lock_lock((v6 + 108));
  v2 = *(v6 + 16);
  v5 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  os_unfair_lock_unlock((v6 + 108));
  v3 = v2;
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3;
}

- (BOOL)isValid
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(FIDSNode *)self asTNode];
  LOBYTE(self) = TNode::Validate(v4, v5) == 0;
  objc_autoreleasePoolPop(v3);
  return self;
}

- (id)fpItem
{
  [(FIDSNode *)self fsInfo];
  v2 = TFSInfo::GetFPItem(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

- (shared_ptr<TFSInfo>)fsInfo
{
  v3 = v2;
  v4 = [(FIDSNode *)self asTNode];
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v6 = *(v4 + 3);
  *v3 = *(v4 + 2);
  v3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  result.__cntrl_ = v8;
  result.__ptr_ = v7;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 82) = 0u;
  return self;
}

- (id)fileParent
{
  v4 = NodeCopyParentNode(self, a2);
  v2 = v4;
  TRef<OpaqueNodeRef *,TRetainReleasePolicy<OpaqueNodeRef *>>::~TRef(&v4);

  return v2;
}

- (id)fpDomain
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(FIDSNode *)self fiDomain];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];
    if (!v4)
    {
      v5 = LogObj(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 domainID];
        v10.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v10, v6);

        v7 = SanitizedStr(&v10);
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "Found fiDomain but not FPDomain available %{public}@", buf, 0xCu);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)fiDomain
{
  v2 = [(FINode *)self nodeRef];

  return NodeGetFIProviderDomain(v2, v3);
}

- (BOOL)isPopulated
{
  v2 = [(FIDSNode *)self asTNode];

  return TNode::IsPopulated(v2);
}

void __31__FIDSNode_FPv2_makeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v8)
  {
    v9 = LogObj(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v16 = 138544130;
      v17 = v7;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "Failed to decode FPItem to node.\n\t%{public}@\n\tfpItem: %{public}@\n\tfpDomain: %{public}@\n\terror: %{public}@", &v16, 0x2Au);
    }
  }

  v12 = static_objc_cast<NSString,objc_object * {__strong}>(v7);
  v13 = *(a1 + 40);
  v14 = *v13;
  *v13 = v12;

  dispatch_semaphore_signal(*(a1 + 32));
  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_makeWithCoder:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (TNode::IsContextOpen(v3))
    {
      v5 = [(TNode *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"FI Type"];
      v6 = static_objc_cast<NSString,objc_object * {__strong}>(v5);

      if (![v6 length])
      {
        goto LABEL_12;
      }

      v7 = sSubclassMakeWithCoderRegistry;
      objc_sync_enter(v7);
      v8 = [sSubclassMakeWithCoderRegistry objectForKeyedSubscript:v6];
      objc_sync_exit(v7);

      if (!v8)
      {
        v9 = v6;
        v15.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v15, v9);

        v10 = StringToFSInfoVirtualType(&v15);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
        v8 = FIDSNodeSubclassForVirtualType(v10);
      }

      if ([v8 conformsToProtocol:&unk_1F5F4BCC0])
      {
        v11 = [v8 makeWithCoder:v4];
      }

      else
      {
LABEL_12:
        v12 = [(TNode *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"FI URL"];
        v13 = static_objc_cast<NSString,objc_object * {__strong}>(v12);

        if (v13)
        {
          v11 = [(FINode *)FIDSNode fiNodeFromURL:v13];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v6 = LogObj(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_ERROR, "Attempting to decode a node while the DesktopServices context is not open", buf, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FIDSNode;
  [(FINode *)&v23 encodeWithCoder:v4];
  if ([objc_opt_class() conformsToProtocol:&unk_1F5F4BCC0])
  {
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    v5 = sSubclassMakeWithCoderRegistry;
    objc_sync_enter(v5);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [sSubclassMakeWithCoderRegistry allKeys];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [sSubclassMakeWithCoderRegistry objectForKeyedSubscript:v10];
          if ([v11 isEqual:objc_opt_class()])
          {
            v12 = v10;
            if (theString != v12)
            {
              TString::SetStringRefAsImmutable(&theString, v12);
            }

            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(v5);
    if (!CFStringGetLength(theString))
    {
      v13 = TNodeFromFINode(&self->super);
      v14 = TNode::VirtualType(v13);
      FSInfoVirtualTypeToString(v14, &cf);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&theString, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    }

    if (CFStringGetLength(theString))
    {
      [v4 encodeObject:theString forKey:@"FI Type"];
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  }

  v15 = [(FIDSNode *)self fileURL];
  if (v15)
  {
    [v4 encodeObject:v15 forKey:@"FI URL"];
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)registerClassForFIDSNodeCoding:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __43__FIDSNode_registerClassForFIDSNodeCoding___block_invoke;
  block[3] = &__block_descriptor_33_ea8_32c56_ZTSKZ43__FIDSNode_registerClassForFIDSNodeCoding__E3__2_e5_v8__0l;
  if (+[FIDSNode registerClassForFIDSNodeCoding:]::onceToken != -1)
  {
    dispatch_once(&+[FIDSNode registerClassForFIDSNodeCoding:]::onceToken, block);
  }

  v4 = sSubclassMakeWithCoderRegistry;
  objc_sync_enter(v4);
  [sSubclassMakeWithCoderRegistry setObject:objc_opt_class() forKeyedSubscript:v3];
  objc_sync_exit(v4);
}

void __43__FIDSNode_registerClassForFIDSNodeCoding___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = sSubclassMakeWithCoderRegistry;
  sSubclassMakeWithCoderRegistry = v0;
}

- (void)dispatchEvent:(id)a3 forObserver:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  NodeEventFromNodeEventRef(a3, &v13);
  v14[0] = *(TNodeEventPtr::operator->(&v13) + 64);
  TDSNotifier::AddPtrReference(v14[0]);
  v6 = *(v14[0] + 3);
  v7 = TNodeFromFINode(v6);
  v8 = FIDSNodeFromTNode(v7);

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v14);
  v9 = *(TNodeEventPtr::operator->(&v13) + 8);
  v10 = *TNodeEventPtr::operator->(&v13);
  if (v10 > 5)
  {
    if (v10 > 8)
    {
      if (v10 == 9)
      {
        if (objc_opt_respondsToSelector())
        {
          [v5 openSyncStarted:v8];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v5 nodeOpenSyncStarted:v8];
        }
      }

      else if (v10 == 20 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v5 nodeShouldBeReloaded:v8];
      }
    }

    else if (v10 == 6)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 childChanged:v9 in:v8 for:*(TNodeEventPtr::operator->(&v13) + 16)];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 childNodePropertyChanged:v9 forProperty:*(TNodeEventPtr::operator->(&v13) + 16)];
      }
    }

    else if (v10 == 8)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 openSyncCompleted:v8];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 nodeOpenSyncCompleted:v8];
      }
    }
  }

  else
  {
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        if (objc_opt_respondsToSelector())
        {
          v14[0] = v9;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
          [v5 childrenAdded:v11 to:v8];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_43;
          }

          v14[0] = v9;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
          [v5 childNodesAdded:v11];
        }
      }

      else
      {
        if (v10 != 4)
        {
          goto LABEL_43;
        }

        if (objc_opt_respondsToSelector())
        {
          v14[0] = v9;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
          [v5 childrenDeleted:v11 from:v8];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_43;
          }

          v14[0] = v9;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
          [v5 childNodesDeleted:v11];
        }
      }

      goto LABEL_43;
    }

    if (v10 == 1)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 nodeDeleted:v8];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 temporaryNodeDeleted:v8];
      }
    }

    else if (v10 == 2)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 nodeChanged:v8 for:*(TNodeEventPtr::operator->(&v13) + 16)];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 nodePropertyChanged:v8 forProperty:*(TNodeEventPtr::operator->(&v13) + 16)];
      }
    }
  }

LABEL_43:

  TNodeEventPtr::~TNodeEventPtr(&v13);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)iteratorWithOptions:(unsigned int)a3
{
  v9 = 0;
  v4 = [(FINode *)self nodeRef];
  if ((a3 & 0x40000) == 0)
  {
    NodeCreateNewRequest(0);
  }

  v8 = 0;
  NodeNewIterator(v4, &v9);
  TRef<OpaqueNodeRequest *,TRetainReleasePolicy<OpaqueNodeRequest *>>::~TRef(&v8);
  if (v9)
  {
    v5 = [FINodeIterator alloc];
    v6 = [(FINodeIterator *)v5 initWithIterator:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)nodeIs:(unint64_t)a3 error:(id *)a4
{
  v6 = [(FIDSNode *)self asTNode];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -8058;
  }

  if (v6)
  {
    a3 = TNode::NodeIs(v6, a3);
  }

  if (a4)
  {
    *a4 = ErrorWithOSStatus(v7, 0);
  }

  return a3;
}

- (unsigned)volumeIs:(unsigned int)a3 error:(id *)a4
{
  v8 = a3;
  v5 = [(FIDSNode *)self asTNode];
  if (!v5)
  {
    v6 = -8058;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_3;
  }

  v6 = TNode::VolumeIs(v5, &v8);
  if (a4)
  {
LABEL_3:
    *a4 = ErrorWithOSStatus(v6, 0);
  }

  return v8;
}

- (unsigned)nodePermissions:(unsigned int)a3 error:(id *)a4
{
  v8 = a3;
  v5 = [(FIDSNode *)self asTNode];
  if (!v5)
  {
    Permissions = -8058;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_3;
  }

  Permissions = TNode::GetPermissions(v5, &v8);
  if (a4)
  {
LABEL_3:
    *a4 = ErrorWithOSStatus(Permissions, 0);
  }

  return v8;
}

- (void)inlineProgressCancel
{
  v2 = [(FIDSNode *)self asTNode];

  TNode::InlineProgressCancel(v2);
}

- (id)downloadProgress
{
  v12.fFINode = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20[0] = 0;
  *(v20 + 7) = 0;
  v21 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v22 = 0u;
  v23 = 0u;
  TNodePtr::TNodePtr(&v11, [(FIDSNode *)self asTNode]);
  Progress = TProgressMap::GetProgress(&v11, &v12, v3);
  if (HIDWORD(v20[0]))
  {
    v5 = Progress;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v6 = v23;
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A858]];
    v9 = objc_cast<NSString,objc_object * {__strong}>(v8);

    if (!v9 || ([v9 isEqualToString:*MEMORY[0x1E696A848]] & 1) == 0)
    {

      v9 = v6;
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21);

  return v6;
}

- (id)copyProgress
{
  v11.fFINode = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19[0] = 0;
  *(v19 + 7) = 0;
  v20 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v21 = 0u;
  v22 = 0u;
  TNodePtr::TNodePtr(&v10, [(FIDSNode *)self asTNode]);
  if (!TProgressMap::GetProgress(&v10, &v11, v3) || !operator==(&v20, @"CopyOperationType"))
  {

    goto LABEL_8;
  }

  v4 = HIDWORD(v19[0]);

  if (!v4)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = v22;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A858]];
  v8 = objc_cast<NSString,objc_object * {__strong}>(v7);

  if (!v8 || ([v8 isEqualToString:*MEMORY[0x1E696A848]] & 1) != 0)
  {

    goto LABEL_8;
  }

LABEL_9:
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20);

  return v5;
}

- (id)brContainer
{
  Monitor = TNodeEvent::GetMonitor([(FINode *)self nodeRef]);

  return Monitor;
}

- (id)brContainerDocuments
{
  v2 = [(FIDSNode *)self asTNode];
  v3 = v2;
  if (v2)
  {
    if (TNode::VirtualType(v2) == 26)
    {
      TNode::GetAliasTarget(v3, &v6);
      v4 = TNodeFromFINode(v6);
      v3 = FIDSNodeFromTNode(v4);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)enumeratorError
{
  v4 = 0;
  TNode::CopyEnumeratorError([(FIDSNode *)self asTNode], &v4);
  v2 = v4;

  return v2;
}

- (void)nodeRestartObservingWithOptions:(unsigned int)a3
{
  v4 = [(FIDSNode *)self asTNode];
  if (v4)
  {

    TNode::RestartCollections(v4, HIBYTE(a3) & 1);
  }
}

- (BOOL)markAsUsed:(id *)a3
{
  v4 = [(FIDSNode *)self asTNode];
  v6 = TNode::Validate(v4, v5);
  v7 = v6;
  if (!v6)
  {
    v8 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v8);
    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v8);
      v11 = *(v10 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (v11)
      {
LABEL_4:
        v7 = -8072;
        goto LABEL_5;
      }
    }

    else
    {
      os_unfair_lock_unlock(v8);
      if (*(v10 + 120))
      {
        goto LABEL_4;
      }
    }

    memset(&v13, 0, sizeof(v13));
    TNode::RequestInternalTask();
  }

LABEL_5:
  if (a3)
  {
    *a3 = ErrorWithOSStatus(v7, 0);
  }

  return v7 == 0;
}

- (void)synchronizeWithOptions:(unsigned int)a3 async:(BOOL)a4
{
  v4 = a4;
  v6 = [(FIDSNode *)self asTNode];
  if (v6)
  {
    if (v4)
    {
      NodeCreateNewRequest(0);
    }

    v7 = 0;
    v8 = 0;
    TNode::Synchronize(v6, &v8, a3);
    TRef<OpaqueNodeRequest *,TRetainReleasePolicy<OpaqueNodeRequest *>>::~TRef(&v7);
  }
}

- (void)_sendNotification:(unsigned int)a3 node:(id)a4 property:(unsigned int)a5
{
  v8 = a4;
  v9 = [(FIDSNode *)self asTNode];
  v10 = objc_cast<FIDSNode,FINode * {__strong}>(v8);
  TNodePtr::TNodePtr(&v11, [v10 asTNode]);
  TNodeEvent::CreateNodeEvent(a3, &v11.fFINode, a5, &v14);

  v11.fFINode = 0;
  v12 = 0;
  v13 = 0;
  TNodePtr::TNodePtr(&v15, v9);
  TNodeEventPtrs::AddEvent(&v11, &v15, &v14);

  TNodeEventPtrs::SendNotifications(&v11);
  v15.fFINode = &v11;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v15);
  TNodeEventPtr::~TNodeEventPtr(&v14);
}

+ (id)appContainersForContainerRoot:(id)a3 showAllFiles:(BOOL)a4 showSystemFiles:(BOOL)a5
{
  v7 = a3;
  TNodePtr::TNodePtr(&v16, [v7 asTNode]);
  v17[0] = a4;
  v17[1] = a5;
  v18 = 0;

  TContainerFetcher::FetchContainersAndDocumentsFolders(v17, &v14);
  v8 = type_traits_extras::CopyAsHelper<NSArray<FPSandboxingURLWrapper *> * {__strong}>::MakeWithCapacity(0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 4));
  v9 = v14;
  v10 = v15;
  v11 = v8;
  while (v9 != v10)
  {
    v12 = *(v9 + 8);
    [v11 addObject:v12];

    v9 += 48;
  }

  v19 = &v14;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](&v19);

  return v11;
}

@end