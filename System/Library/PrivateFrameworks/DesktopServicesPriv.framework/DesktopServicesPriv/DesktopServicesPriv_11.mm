void NodeDisposeNotifier(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v1 = NodeChangeNotifierRegistry();
  v3 = v2;
  std::mutex::lock(v2);
  v4 = std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::find<OpaqueEventNotifier *>(v1, &v7);
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::erase(v1, v4);
  }

  else
  {
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v9 = v7;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "Calling RemoveFromNodeChangeNotifierRegistry on a notifier not being tracked: %{public}p", buf, 0xCu);
    }
  }

  std::mutex::unlock(v3);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t NodeUnregisterChangeNotification(TNode *a1, OpaqueNodeRef *a2, uint64_t a3)
{
  if (!a2)
  {
    return 4294959224;
  }

  v6 = TNode::NodeFromNodeRef(a1, a2);
  v8 = TNode::WeakValidate(v6, v7);
  if (!v8)
  {
    [(TNode *)a1 unregisteringChangeNotification:a3];
    ClientNotifierFromNodeNotifier(a2, &v11);
    if (v11)
    {
      TNodePtr::TNodePtr(&v10, v6);
      v8 = TNode::UnregisterChangeNotification(v6, &v11, &v10.fFINode, a3);
    }

    else
    {
      v8 = 4294959224;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return v8;
}

void sub_1E5736CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t NodeEventPostReply(NSObject *a1)
{
  v1 = 4294967246;
  if (a1)
  {
    if (dispatch_semaphore_signal(a1))
    {
      return 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return v1;
}

uint64_t _NodeSizingV2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a1 && a5 && !*a5)
  {
    _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 4294959224;
}

void sub_1E5736F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  TOperationSizer::~TOperationSizer(&a9);
  TOperationSizer::TOperationSizerParams::~TOperationSizerParams(&a57);
  v59 = *(v57 - 120);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  v60 = *(v57 - 104);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *NodePauseOperation(void *a1)
{
  if (!a1)
  {
    return 4294959224;
  }

  TNodeOperationTask::TaskFromOperationRef(a1, &v8);
  result = v9;
  if (v9)
  {
    v2 = std::__shared_weak_count::lock(v9);
    if (v2)
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (v3)
    {
      os_unfair_lock_lock(v3 + 2);
      v4 = *(v3 + 2);
      v8 = v4;
      if (v4)
      {
        TOperation::AddPtrReference(v4);
      }

      os_unfair_lock_unlock(v3 + 2);
      if (!v8)
      {
        TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
        if (!v2)
        {
          return 0;
        }

        goto LABEL_17;
      }

      os_unfair_lock_lock(v3 + 2);
      v5 = *(v3 + 2);
      v7 = v5;
      if (v5)
      {
        TOperation::AddPtrReference(v5);
      }

      os_unfair_lock_unlock(v3 + 2);
      v6 = *(v7 + 16);
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v7);
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
      if (v6)
      {
        TNodeOperationTask::Pause(v3);
      }
    }

    if (!v2)
    {
      return 0;
    }

LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    return 0;
  }

  return result;
}

void sub_1E57370A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *NodeResumeOperation(void *a1)
{
  if (!a1)
  {
    return 4294959224;
  }

  TNodeOperationTask::TaskFromOperationRef(a1, &v8);
  result = v9;
  if (v9)
  {
    v2 = std::__shared_weak_count::lock(v9);
    if (v2)
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (v3)
    {
      os_unfair_lock_lock(v3 + 2);
      v4 = *(v3 + 2);
      v8 = v4;
      if (v4)
      {
        TOperation::AddPtrReference(v4);
      }

      os_unfair_lock_unlock(v3 + 2);
      if (!v8)
      {
        TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
        if (!v2)
        {
          return 0;
        }

        goto LABEL_17;
      }

      os_unfair_lock_lock(v3 + 2);
      v5 = *(v3 + 2);
      v7 = v5;
      if (v5)
      {
        TOperation::AddPtrReference(v5);
      }

      os_unfair_lock_unlock(v3 + 2);
      v6 = *(v7 + 16);
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v7);
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
      if (v6)
      {
        TNodeOperationTask::Resume(v3);
      }
    }

    if (!v2)
    {
      return 0;
    }

LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    return 0;
  }

  return result;
}

void sub_1E57371D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *NodeCancelOperation(void *a1)
{
  if (!a1)
  {
    return 4294959224;
  }

  TNodeOperationTask::TaskFromOperationRef(a1, &v8);
  result = v9;
  if (v9)
  {
    v2 = std::__shared_weak_count::lock(v9);
    if (v2)
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (v3)
    {
      os_unfair_lock_lock(v3 + 2);
      v4 = *(v3 + 2);
      v8 = v4;
      if (v4)
      {
        TOperation::AddPtrReference(v4);
      }

      os_unfair_lock_unlock(v3 + 2);
      if (!v8)
      {
        TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
        if (!v2)
        {
          return 0;
        }

        goto LABEL_17;
      }

      os_unfair_lock_lock(v3 + 2);
      v5 = *(v3 + 2);
      v7 = v5;
      if (v5)
      {
        TOperation::AddPtrReference(v5);
      }

      os_unfair_lock_unlock(v3 + 2);
      v6 = *(v7 + 16);
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v7);
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
      if (v6)
      {
        TNodeOperationTask::Cancel(v3);
      }
    }

    if (!v2)
    {
      return 0;
    }

LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    return 0;
  }

  return result;
}

void sub_1E5737308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NodeGetStatus(TNodeOperationTask *this, _DWORD *a2)
{
  result = 4294959224;
  if (this && a2)
  {
    *a2 = 0;
    TNodeOperationTask::TaskFromOperationRef(this, &v8);
    if (v9)
    {
      v5 = std::__shared_weak_count::lock(v9);
      if (v5)
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v6)
      {
        os_unfair_lock_lock(v6 + 2);
        v7 = *(v6 + 2);
        v8 = v7;
        if (v7)
        {
          TOperation::AddPtrReference(v7);
        }

        os_unfair_lock_unlock(v6 + 2);
        if (v8 && *(v8 + 16) && TOperation::CancelRequested(v8))
        {
          *a2 = -128;
        }

        TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
        if (!v5)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v5 = 0;
    }

    *a2 = -8080;
    if (!v5)
    {
      return 0;
    }

LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    return 0;
  }

  return result;
}

void sub_1E573742C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, TOperation *a9)
{
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void ISignpostInterval::~ISignpostInterval(id *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table((this + 9));

  std::mutex::~mutex(this);
}

void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  v4 = *(a1 + 112);
  v6[0] = &unk_1F5F3FBC0;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v6;
  ISignpostInterval::EventPriv(a1, v4, v6);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v6);
  std::mutex::unlock(a1);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E5737540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F3FBC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}::operator()(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *a1;
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *&v11 = a1[1];
    *(&v11 + 1) = strlen(v11);
    FormatDetails(&v11, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v13 = p_p;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_EVENT, v7, "NodeContextCloseAsync", "%{public}s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void TOperationSizer::TOperationSizerParams::~TOperationSizerParams(id *this)
{
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a2 + 16));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_1,std::allocator<_NodeContextOpenExtended::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FD20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FDB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextOpen::$_1,std::allocator<NodeContextOpen::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FEA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FF30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextClose::$_1,std::allocator<NodeContextClose::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::operator()(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v6 = *a3;
  v7[0] = &unk_1F5F40020;
  v7[1] = &v6;
  v7[3] = v7;
  ISignpostInterval::EndPriv(v3, v6, v7);
  result = std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5737ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<NodeContextClose::$_1,std::allocator<NodeContextClose::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40020;
  a2[1] = v2;
  return result;
}

void std::__function::__func<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Close", "End", v6, 2u);
  }
}

uint64_t std::__function::__func<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F400B0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Close", "Begin", v6, 2u);
  }
}

uint64_t std::__function::__func<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__120__shared_ptr_emplaceI50AutoSignpostInterval_General_NodeContextCloseAsyncNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40130;
  AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync((a1 + 3), 0);
  return a1;
}

void std::__shared_ptr_emplace<AutoSignpostInterval_General_NodeContextCloseAsync>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(AutoSignpostInterval_General_NodeContextCloseAsync *this, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = LogObj(5);
  TString::TString(&v7, "NodeContextCloseAsync");
  ISignpostInterval::ISignpostInterval(this, v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);

  *(this + 14) = ISignpostInterval::MakeSignpostID(this, a2);
  std::mutex::lock(this);
  v5 = *(this + 14);
  v7.fString.fRef = &unk_1F5F40180;
  v8 = this;
  v9 = &v7;
  ISignpostInterval::BeginPriv(this, v5, &v7);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](&v7);
  std::mutex::unlock(this);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E5738460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  std::mutex::unlock(v2);
  ISignpostInterval::~ISignpostInterval(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40180;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NodeContextCloseAsync", "Begin", v8, 2u);
  }
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync(AutoSignpostInterval_General_NodeContextCloseAsync *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  v4[0] = *(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(this + 9, v4))
  {
    v2 = *(this + 14);
    v4[0] = &unk_1F5F40200;
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

void sub_1E5738704(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40200;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_END, v7, "NodeContextCloseAsync", "End", v8, 2u);
  }
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<TNodeTask>::__shared_ptr_emplace[abi:ne200100]<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::allocator<TNodeTask>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40280;
  TNodeTask::TNodeTask(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<TNodeTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t TPropertyValue::TPropertyValue<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(uint64_t a1, const void **a2)
{
  *(a1 + 16) = 0;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<16ul,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const&>(a1, a1, a2);
  return a1;
}

uint64_t TPropertyValue::TPropertyValue<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(uint64_t a1, const void **a2)
{
  *(a1 + 16) = 0;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<14ul,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>> const&>(a1, a1, a2);
  return a1;
}

id CopyDeep(NSArray *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CopyDeepCommon(v1, 0);
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CopyDeepCommon(NSArray *a1, BOOL a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = CopyDeepHelper(*(*(&v12 + 1) + 8 * i), a2);
        [v4 addObject:{v9, v12}];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

id MutableCopyDeep(NSArray *a1)
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

void ISignpostInterval::EventPriv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v6 = os_signpost_enabled(v5);
  if (a2 && v6)
  {

    std::function<void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(a3, v5);
  }
}

__n128 __copy_helper_block_ea8_32c37_ZTSKZN12TGlobalNodes8BootNodeEvE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

id TGlobalNodes::DataSeparatedICloudLibrariesContainerNode@<X0>(void *a1@<X8>)
{
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = TGlobalNodes::gGlobalNodes;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12TGlobalNodes41DataSeparatedICloudLibrariesContainerNodeEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = TGlobalNodes::gGlobalNodes;
  if (TGlobalNodes::DataSeparatedICloudLibrariesContainerNode(void)::onceToken != -1)
  {
    dispatch_once(&TGlobalNodes::DataSeparatedICloudLibrariesContainerNode(void)::onceToken, block);
  }

  result = *(v3 + 88);
  *a1 = result;
  return result;
}

void ___ZN12TGlobalNodes41DataSeparatedICloudLibrariesContainerNodeEv_block_invoke(uint64_t a1)
{
  TFSVolumeInfo::GetVolumeInfoFor(25, &v9);
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
  TNode::CreateNode(&v7, &v5, &v3, &obj);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  objc_storeStrong((*(a1 + 32) + 88), obj);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E5738EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
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

void TGlobalNodes::NetworkNearbyNode(void *a1@<X8>)
{
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = (TGlobalNodes::gGlobalNodes + 56);
  if (!TNodeFromFINode(*(TGlobalNodes::gGlobalNodes + 56)))
  {
    TFSVolumeInfo::GetVolumeInfoFor(&v11, 32);
    TNodePtr::TNodePtr(&v9, 0);
    v4 = *(v11 + 64);
    v7 = *(v11 + 56);
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = 0;
    v6 = 0;
    TNode::CreateNode(&obj, &v9, &v7, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    objc_storeStrong(v3, obj);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  *a1 = *v3;
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
}

void sub_1E5739030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
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

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

void TGlobalNodes::AirDropNode(void *a1@<X8>)
{
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = (TGlobalNodes::gGlobalNodes + 64);
  if (!TNodeFromFINode(*(TGlobalNodes::gGlobalNodes + 64)))
  {
    TFSVolumeInfo::GetVolumeInfoFor(&v11, 34);
    TNodePtr::TNodePtr(&v9, 0);
    v4 = *(v11 + 64);
    v7 = *(v11 + 56);
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = 0;
    v6 = 0;
    TNode::CreateNode(&obj, &v9, &v7, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    objc_storeStrong(v3, obj);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  *a1 = *v3;
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
}

void sub_1E573918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
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

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

void TGlobalNodes::NetworkSidebarNode(void *a1@<X8>)
{
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = (TGlobalNodes::gGlobalNodes + 72);
  if (!TNodeFromFINode(*(TGlobalNodes::gGlobalNodes + 72)))
  {
    TFSVolumeInfo::GetVolumeInfoFor(&v11, 33);
    TNodePtr::TNodePtr(&v9, 0);
    v4 = *(v11 + 64);
    v7 = *(v11 + 56);
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = 0;
    v6 = 0;
    TNode::CreateNode(&obj, &v9, &v7, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    objc_storeStrong(v3, obj);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  *a1 = *v3;
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
}

void sub_1E57392E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
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

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

BOOL TGlobalNodes::IsNetworkNode(TGlobalNodes *this, FINode **a2, const TNodePtr *a3)
{
  v4 = this;
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v5 = TGlobalNodes::gGlobalNodes;
  if (TGlobalNodes::gGlobalNodes && TNodeFromFINode(*a2))
  {
    switch(v4)
    {
      case 1836348013:
        v6 = TNodeFromFINode(v5[8]);
        v7 = TNodeFromFINode(*a2);
        goto LABEL_12;
      case 1853125474:
        v6 = TNodeFromFINode(v5[9]);
        v7 = TNodeFromFINode(*a2);
        goto LABEL_12;
      case 1853126507:
        v6 = TNodeFromFINode(v5[7]);
        v7 = TNodeFromFINode(*a2);
LABEL_12:
        v8 = v6 == v7;
        goto LABEL_13;
    }
  }

  v8 = 0;
LABEL_13:
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  return v8;
}

void TGlobalNodes::FinalizeGlobalNode(FINode **this, const TNodePtr *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = TNodeFromFINode(*this);
  TNode::UnRegisterForInternalNotifications(v4, this, 3);
  v5 = TNodeFromFINode(*this);
  TNode::RemoveAllChildren(v5, 0, 0);
  v6 = TNodeFromFINode(*this);
  TNode::RemoveSelf(v6, 0);

  objc_autoreleasePoolPop(v3);
}

void TGlobalNodes::FinalizeNodes(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::gGlobalNodes)
  {
    v2 = v1;
    v21 = v2;
    TGlobalNodes::FinalizeNodes(NSObject  {objcproto17OS_dispatch_group}*)::$_3::operator()(&v21, TGlobalNodes::gGlobalNodes, 3, 0, 1);
    v26.fFINode = *(TGlobalNodes::gGlobalNodes + 88);
    v3 = 0;
    v27 = *(TGlobalNodes::gGlobalNodes + 80);
    do
    {
      if (TNodeFromFINode((&v26.fFINode)[v3]))
      {
        v4 = TNodeFromFINode((&v26.fFINode)[v3]);
        TNode::UnRegisterForUbiquityAttributes(v4);
        atomic_store(0, (TNodeFromFINode((&v26.fFINode)[v3]) + 88));
        v5 = TNodeFromFINode((&v26.fFINode)[v3]);
        TNode::GetVolumeInfo(v5, &v18);
        TFSVolumeInfo::GetVolumeSyncThread(v18, &v22);
        v6 = TString::operator NSString *(&v22->super.isa);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        TGlobalNodes::FinalizeNodes(NSObject  {objcproto17OS_dispatch_group}*)::$_3::operator()(&v21, &(&v26.fFINode)[v3], 0, v6, 0);
      }

      ++v3;
    }

    while (v3 != 2);
    for (i = 1; i != -1; --i)
    {
    }

    v26.fFINode = (TGlobalNodes::gGlobalNodes + 56);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3321888768;
    v24 = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__0cvU13block_pointerFvvEEv_block_invoke;
    v25 = &__block_descriptor_33_ea8_32c83_ZTSKZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectE3__0_e5_v8__0l;
    v8 = MEMORY[0x1E692D6D0](&v22);
    v27 = MEMORY[0x1E692D6D0](v8);
    v28 = TGlobalNodes::gGlobalNodes + 64;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3321888768;
    v24 = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__1cvU13block_pointerFvvEEv_block_invoke;
    v25 = &__block_descriptor_33_ea8_32c83_ZTSKZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectE3__1_e5_v8__0l;
    v9 = MEMORY[0x1E692D6D0](&v22);
    v29 = MEMORY[0x1E692D6D0](v9);
    v30 = TGlobalNodes::gGlobalNodes + 72;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3321888768;
    v24 = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__2cvU13block_pointerFvvEEv_block_invoke;
    v25 = &__block_descriptor_33_ea8_32c83_ZTSKZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectE3__2_e5_v8__0l;
    v10 = MEMORY[0x1E692D6D0](&v22);
    v31 = MEMORY[0x1E692D6D0](v10);
    v19 = 0;
    v20 = 0;
    v18 = 0;
    std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__init_with_size[abi:ne200100]<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*,std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*>(&v18, &v26, &v32, 3uLL);
    for (j = 5; j != -1; j -= 2)
    {
    }

    v13 = v18;
    v14 = v19;
    while (v13 != v14)
    {
      v15 = *v13;
      v12 = TNodeFromFINode(**v13);
      if (v12)
      {
        (*(*(v13 + 1) + 16))();
        TNodePtr::TNodePtr(&v22, v15);
        TNodePtr::TNodePtr(&v26, 0);
        TNodePtr::operator=(v15, &v26.fFINode);

        TGlobalNodes::FinalizeGlobalNode(&v22, v16);
      }

      v13 = (v13 + 16);
    }

    TFSVolumeInfo::GarbageCollect(v12);
    v26.fFINode = &v18;
    std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v26);
  }

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E5739844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  a20 = &a11;
  std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&a20);

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

void TGlobalNodes::FinalizeNodes(NSObject  {objcproto17OS_dispatch_group}*)::$_3::operator()(NSObject **a1, id *a2, int a3, void *a4, char a5)
{
  v9 = a4;
  if (TNodeFromFINode(*a2))
  {
    if (!v9)
    {
      v9 = dispatch_get_global_queue(0, 0);
    }

    v10 = *a1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_b_block_invoke;
    v12[3] = &__block_descriptor_48_ea8_32c168_ZTSKZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bEUlvE__e5_v8__0l;
    v13 = *a2;
    v14 = a3;
    v15 = a5;
    v11 = v13;
    dispatch_group_async(v10, v9, v12);
  }
}

void ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_b_block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEv_block_invoke;
  v6[3] = &__block_descriptor_48_ea8_32c181_ZTSKZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEvEUlvE__e5_v8__0l;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = v2;
  v7 = v5;
  v8 = v3;
  v9 = v4;
  ExceptionSafeBlock(v6);
}

id __copy_helper_block_ea8_32c168_ZTSKZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bEUlvE_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  v5 = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = v5;
  return result;
}

void ___ZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  TNode::StPopulating::StPopulating(v10, (a1 + 32), 0);
  v2 = TNodeFromFINode(*(a1 + 32));
  v3 = TNode::ChildRegistrationCount(v2);
  v4 = *(TNodeFromFINode(*(a1 + 32)) + 56);
  if (v4)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = &TNode::GetChildren(void)const::sEmptyList;
  }

  if (&v11 != v5)
  {
    std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&v11, *v5, v5[1], v5[1] - *v5);
  }

  v6 = TNodeFromFINode(*(a1 + 32));
  TChildrenList::Clear(*(v6 + 56));
  TNode::StPopulating::~StPopulating(v10);
  if (*(a1 + 44) == 1)
  {
    v7 = v11;
    v8 = v12;
    while (v7 != v8)
    {
      v9 = TNodeFromFINode(*v7);
      TNode::RemoveAllChildren(v9, 3, 0);
      ++v7;
    }
  }

  else
  {
    TNode::RemoveChildrenDeep(&v11, *(a1 + 40), v3 == 0, 0);
  }

  v10[0] = &v11;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_1E5739C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c181_ZTSKZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEvEUlvE_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  v5 = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = v5;
  return result;
}

uint64_t std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__init_with_size[abi:ne200100]<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*,std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *NoFollowPrefix(void)
{
  {
    TString::TString(&NoFollowPrefix(void)::sNoFollowPrefix, @"/.nofollow/");
  }

  return &NoFollowPrefix(void)::sNoFollowPrefix;
}

uint64_t *NoFollowPrefixWithoutSlash(void)
{
  {
    TString::TString(&NoFollowPrefixWithoutSlash(void)::sNoFollowPrefixWithoutSlash, @"/.nofollow");
  }

  return &NoFollowPrefixWithoutSlash(void)::sNoFollowPrefixWithoutSlash;
}

void MakeNoFollowPath(TString *a1@<X0>, TString *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  TString::TString(&v12, "/");
  v4 = TString::BeginsWith(a1, &v12);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12);
  if (v4)
  {
    NoFollowPrefix();
    if (TString::BeginsWith(a1, &NoFollowPrefix(void)::sNoFollowPrefix))
    {
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, a1->fString.fRef);
    }

    else
    {
      NoFollowPrefixWithoutSlash();
      v9 = NoFollowPrefixWithoutSlash(void)::sNoFollowPrefixWithoutSlash;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
      CFRelease(&stru_1F5F42870);
      a2->fString.fRef = MutableCopy;
      TString::Append(a2, a1);
    }
  }

  else
  {
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = SanitizedPath(a1);
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "Path does not begin with a '/' : %{public}@", &v12, 0xCu);
    }

    NoFollowPrefix();
    v7 = NoFollowPrefix(void)::sNoFollowPrefix;
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    v8 = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
    CFRelease(&stru_1F5F42870);
    a2->fString.fRef = v8;
    TString::Append(a2, a1);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t *AppNapNodeSet(void)
{
  if ((atomic_load_explicit(&qword_1ECFF44A0, memory_order_acquire) & 1) == 0)
  {
    AppNapNodeSet();
  }

  return &qword_1ECFF4508;
}

__int128 *TNode::FirmlinkParents(TNode *this)
{
  if ((atomic_load_explicit(&qword_1ECFF44A8, memory_order_acquire) & 1) == 0)
  {
    TNode::FirmlinkParents();
  }

  return &xmmword_1ECFF4538;
}

void TNode::AddToAppNapCache(TNode *this)
{
  AppNapNodeSet();
  TNodePtr::TNodePtr(&v2, this);
  std::__tree<TNodePtr>::__emplace_unique_key_args<TNodePtr,TNodePtr>(&qword_1ECFF4508, &v2.fFINode);
}

uint64_t TNode::IsVolume(TNode *this)
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

  return (v5 >> 8) & 1;
}

uint64_t TChildCreator::TChildCreator(uint64_t a1, TString *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v17.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v17, a2);
  SlashesToColons(&v17, a1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
  if (a3)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  v15 = *a7;
  v14 = a7[1];
  *(a1 + 24) = a5;
  *(a1 + 32) = v15;
  *(a1 + 40) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = a6;
  return a1;
}

void sub_1E573A410(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v2, 0x10E0C40C528182ELL);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

id TNode::CopyInlineProgress(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  v9.fFINode = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17[0] = 0;
  *(v17 + 7) = 0;
  v18 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v19 = 0u;
  v20 = 0u;
  TNodePtr::TNodePtr(&v8, this);
  Progress = TProgressMap::GetProgress(&v8, &v9, v4);

  if (Progress)
  {
    ProgressDictionary = TProgressInfo::CreateProgressDictionary(&v9);
  }

  else
  {
    ProgressDictionary = 0;
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return ProgressDictionary;
}

void sub_1E573A564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TProgressInfo::~TProgressInfo(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t TempProperties(void)
{
  {
    operator new();
  }

  return TempProperties(void)::sTempProperties;
}

void TNode::AddTemporaryProperties(TNode *this, TNodePtr a2)
{
  TempPropertiesLock();
  os_unfair_lock_lock(&dword_1ECFF4494);
  v9 = a2.fFINode->super.isa;
  v4.fFINode = &v9;
  TTempProperties::TTempProperties(&v10, v4);

  v5 = TempProperties();
  v8 = this;
  v14 = &v8;
  v6 = std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::__emplace_unique_key_args<TNode *,std::piecewise_construct_t const&,std::tuple<TNode *&&>,std::tuple<>>(v5, &v8);
  v7 = v6;
  *(v6 + 3) = v10;
  v6[5] = v11;
  if (v6 + 3 != &v10)
  {
    TString::SetStringRefAsImmutable(v6 + 6, v12);
  }

  objc_storeStrong(v7 + 7, obj);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12);
  os_unfair_lock_unlock(&dword_1ECFF4494);
}

void sub_1E573A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, id a16)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a15);
  os_unfair_lock_unlock(&dword_1ECFF4494);
  _Unwind_Resume(a1);
}

void TempPropertiesLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF44F8, memory_order_acquire) & 1) == 0)
  {
    TempPropertiesLock();
  }
}

void TNode::RemoveTemporaryProperties(TNode *this)
{
  TempPropertiesLock();
  os_unfair_lock_lock(&dword_1ECFF4494);
  v2 = TempProperties();
  v3 = this;
  std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::__erase_unique<TNode *>(v2, &v3);
  os_unfair_lock_unlock(&dword_1ECFF4494);
}

uint64_t TNode::IsVisible(TNode *this)
{
  v1 = this;
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
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

  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  IsRootItem = TFSInfo::IsRootItem(v9);
  v11 = IsRootItem;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if ((v11 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (!IsRootItem)
  {
LABEL_21:
    LOBYTE(v1) = v5;
    return v1 & 1;
  }

  TNode::GetVolumeInfo(v1, &v19);
  v13 = v19;
  if (v19)
  {
    v14 = TNode::InfoLock(v12);
    os_unfair_lock_lock(v14);
    v16 = *(v1 + 2);
    v15 = *(v1 + 3);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v14);
    TFSInfo::Name(v16, &v18);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    LOBYTE(v1) = !TFSVolumeInfo::IsHiddenFile(v13, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  return v1 & 1;
}

void sub_1E573A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<DSBladeRunnerFlags>(uint64_t a1, unsigned int *a2)
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

      result = TPropertyValue::SetAs<DSBladeRunnerFlags>(v5, a2);
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

BOOL TNode::IsVirtual(TNode *this)
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

  return v5 != 0;
}

uint64_t TFSInfo::AliasIsContainer(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 17) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

BOOL TNode::AliasResolved(TNode *this)
{
  TNode::GetAliasTarget(this, &v16);
  v2 = v16;
  if (TNodeFromFINode(v16))
  {
    TNode::GetAliasTarget(this, &v15);
    v3 = v15;
    v4 = TNodeFromFINode(v15);
    v5 = TNode::InfoLock(v4);
    os_unfair_lock_lock(v5);
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v5);
      v8 = *(v7 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      v8 = *(v7 + 120);
    }

    if (v8 == 16)
    {
      v9 = 0;
    }

    else
    {
      TNode::GetAliasTarget(this, &v14);
      v10 = v14;
      v11 = TNodeFromFINode(v14);
      v9 = TNode::Validate(v11, v12) == 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void TPropertyReference::As<ISIcon * {__strong}>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  TPropertyReference::As<ISIcon * {__strong}>(a1, &v2, a2);
}

uint64_t TNode::HasVisibleChildren(TNode *this)
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

  if ((v5 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(this + 2);
  v8 = *(this + 3);
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

  if (v10 == 5)
  {
    TNode::GetAliasTarget(this, &v20);
  }

  else
  {
    TNodePtr::TNodePtr(&v20, this);
  }

  if (!TNodeFromFINode(v20.fFINode) || !*(TNodeFromFINode(v20.fFINode) + 56))
  {
LABEL_22:

LABEL_23:
    v17 = 0;
    return v17 | (v17 << 8);
  }

  TNode::StPopulating::StPopulating(v19, &v20.fFINode, 0);
  v11 = *(TNodeFromFINode(v20.fFINode) + 56);
  if (v11)
  {
    v12 = (v11 + 64);
  }

  else
  {
    v12 = &TNode::GetChildren(void)const::sEmptyList;
  }

  v13 = *v12;
  v14 = v12[1];
  for (i = *v12; ; ++i)
  {
    if (i == v14)
    {
      TNode::StPopulating::~StPopulating(v19);
      goto LABEL_22;
    }

    v16 = TNodeFromFINode(*i);
    if (TNode::IsVisible(v16))
    {
      break;
    }
  }

  TNode::StPopulating::~StPopulating(v19);

  v17 = 1;
  return v17 | (v17 << 8);
}

void sub_1E573AEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TNode::StPopulating::~StPopulating(&a9);

  _Unwind_Resume(a1);
}

void TNode::SetVolumeInfo(uint64_t a1, uint64_t *a2)
{
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  os_unfair_lock_unlock(v4);
}

BOOL TNode::BeingOperatedOn(TNode *this, int a2)
{
  v4 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v4);
  v5 = *(this + 5);
  if (v5)
  {
    os_unfair_lock_lock(v5);
    if (v5[1]._os_unfair_lock_opaque || v5[4]._os_unfair_lock_opaque)
    {
      v6 = 1;
    }

    else
    {
      os_unfair_lock_opaque = v5[3]._os_unfair_lock_opaque;
      v6 = os_unfair_lock_opaque != 0;
      if (os_unfair_lock_opaque)
      {
        v9 = 1;
      }

      else
      {
        v9 = a2 == 0;
      }

      if (!v9)
      {
        v6 = v5[2]._os_unfair_lock_opaque != 0;
      }
    }

    os_unfair_lock_unlock(v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v4);
  return v6;
}

void TNode::SuspendSynching(TNode *this)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  ++OperationLock[5]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(OperationLock);
}

uint64_t TNode::GetOperationLock(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (!v3)
  {
    operator new();
  }

  os_unfair_lock_unlock(v2);
  return v3;
}

void TNode::ResumeSynching(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    --v3[5]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3);
  }

  os_unfair_lock_unlock(v2);
}

BOOL TNode::SynchingSuspended(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    os_unfair_lock_lock(*(this + 5));
    v4 = v3[5]._os_unfair_lock_opaque != 0;
    os_unfair_lock_unlock(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::SetComputerName(TNode *this, const TString *a2)
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
  SlashesToColons(a2, &v9);
  TFSInfo::Rename(v6, &v9, 0, &v10);
  v7 = v11;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fFINode);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TNodePtr::TNodePtr(&v10, this);
  TNode::SendNotification(this, 2, &v10.fFINode, 1886282093, 0);

  return v7;
}

uint64_t TNode::SetNameAndExtension(TNode *this, const TString *a2, uint64_t a3, _BOOL8 a4, TDesktopServicesHelperNewFileSystemObjectOperation *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = TNode::InfoLock(this);
  os_unfair_lock_lock(v10);
  v12 = *(this + 2);
  v11 = *(this + 3);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v10);
    v13 = *(v12 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (v13 == 35)
    {
LABEL_3:
      v15 = TNode::InfoLock(v14);
      os_unfair_lock_lock(v15);
      v17 = *(this + 2);
      v16 = *(this + 3);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v15);
      TFSInfo::Rename(v17, a2, 0, __s);
      v18 = v55;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(__s);
      if (!v16)
      {
        goto LABEL_61;
      }

      v19 = v16;
      goto LABEL_60;
    }
  }

  else
  {
    os_unfair_lock_unlock(v10);
    if (*(v12 + 120) == 35)
    {
      goto LABEL_3;
    }
  }

  v20 = TNode::InfoLock(v14);
  os_unfair_lock_lock(v20);
  v22 = *(this + 2);
  v21 = *(this + 3);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v20);
    v23 = *(v22 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  else
  {
    os_unfair_lock_unlock(v20);
    v23 = *(v22 + 120);
  }

  if (v23 != 1)
  {
    v27 = TNode::InfoLock(v24);
    os_unfair_lock_lock(v27);
    v28 = *(this + 3);
    v49 = *(this + 2);
    v50 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v27);
    if (a5)
    {
      v29 = *(a5 + 658);
    }

    else
    {
      v29 = 0;
    }

    TFileCoordinationRecord::TFileCoordinationRecord(v48, v29);
    IsBootVolume = TFSInfo::IsBootVolume(v49);
    if (!IsBootVolume)
    {
      *__s = 0;
      v55 = 0;
      v18 = TFileCoordinationRecord::CoordinateWriting(v48, &v49, 2u, __s);
      if (v18)
      {
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

LABEL_59:
        TFileCoordinationRecord::~TFileCoordinationRecord(v48);
        v19 = v50;
        if (!v50)
        {
LABEL_61:
          v42 = *MEMORY[0x1E69E9840];
          return v18;
        }

LABEL_60:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        goto LABEL_61;
      }

      if ((TFSInfo::Equal(*__s, &v49) & 1) == 0)
      {
        TNode::SetFSInfo(this, __s, 1);
        v35 = *__s;
        v34 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v50;
        v49 = v35;
        v50 = v34;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }
    }

    TFSInfo::CopyPathToCBuffer(v49, __s, 1024);
    v31 = strlen(__s);
    v47 = CFURLCreateFromFileSystemRepresentation(0, __s, v31, 0);
    v46 = 0uLL;
    SlashesToColons(a2, &v45);
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TFSInfo::Rename(v49, &v45, a3, &cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&theString, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    *&cf = &stru_1F5F42870;
    v18 = DWORD2(cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (v18 != -5000 && v18 != -54)
    {
      if (!v18)
      {
        if (!CFStringGetLength(theString))
        {
          TString::SetStringRefAsImmutable(&theString, 0);
          v32 = strlen(__s);
          TString::SetFromUTF8(&theString, __s, v32);
        }

        _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      goto LABEL_50;
    }

    if (a5)
    {
      TNodePtr::TNodePtr(&cf, this);
      v18 = (*(*a5 + 288))(a5, &cf, &v45, a3, a4);

      if (v18)
      {
LABEL_50:
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
        cf = 0uLL;
        v53 = 0;
        if (v18)
        {
          TNodePtr::TNodePtr(&theString, this);
          v51.fFINode = 0x646E616D706E616DLL;
          std::set<Property>::set[abi:ne200100](v43, &v51, 2);
          TNodeEventPtrs::AddPropertyChanges(&cf, &theString, v43);
          std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(v43, v43[1]);
        }

        else
        {
          if (v46)
          {
            TNode::ReconcileInternalProperties(this, &v46, &cf, 1);
          }

          if (!IsBootVolume)
          {
            v41 = v47;
            TNode::CFURL(this, v43);
            TFileCoordinationRecord::DidMove(v48, v41, v43[0]);
            TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v43);
          }
        }

        TNodeEventPtrs::SendNotifications(&cf);
        v43[0] = &cf;
        std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](v43);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v45.fString.fRef);
        if (*(&v46 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
        }

        TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v47);
        goto LABEL_59;
      }
    }

    else
    {
      TDSHelperContext::TDSHelperContext(&cf, 4096, 0, 0);
      v18 = TDSHelperContext::LaunchDesktopServicesHelper(&cf, 1);
      if (!v18)
      {
        v18 = TDSHelperContext::RenamePath(&cf, __s, &v45, a3, a4);
      }

      TDSHelperContext::~TDSHelperContext(&cf);
      if (v18)
      {
        goto LABEL_50;
      }
    }

    v37 = TNode::ParentLock(v33);
    os_unfair_lock_lock(v37);
    TNodePtr::TNodePtr(&v51, *(this + 6));
    os_unfair_lock_unlock(v37);
    if (TNodeFromFINode(v51.fFINode))
    {
      v38 = TNodeFromFINode(v51.fFINode);
      v39 = TNode::InfoLock(v38);
      os_unfair_lock_lock(v39);
      v40 = *(v38 + 24);
      *&cf = *(v38 + 16);
      *(&cf + 1) = v40;
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v39);
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v18 = 0;
    goto LABEL_50;
  }

  v25 = *MEMORY[0x1E69E9840];

  return TNode::SetComputerName(this, a2);
}

void sub_1E573B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, const void *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, id a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a13);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a14);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&a18);
  TFileCoordinationRecord::~TFileCoordinationRecord(&a19);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void TNode::Finalize(void *a1)
{
  v2 = a1;
  AppNapNodeSet();
  std::__tree<TNodePtr>::destroy(&qword_1ECFF4508, qword_1ECFF4510);
  qword_1ECFF4508 = &qword_1ECFF4510;
  qword_1ECFF4518 = 0;
  qword_1ECFF4510 = 0;
  TGlobalNodes::FinalizeNodes(v2);
  TNode::FinalizeNWMaps(+[FIPresentationNodeMap finalize]);
  TFSInfo::Finalize(v1);
}

void TNode::FinalizeNWMaps(TNode *this)
{
  NWMapSpinlock();
  os_unfair_lock_lock(&_MergedGlobals_3);
  if (gNWSidebarNodeMap)
  {
    v1 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::~__hash_table(gNWSidebarNodeMap);
    MEMORY[0x1E692CD30](v1, 0x10A0C408EF24B1CLL);
  }

  gNWSidebarNodeMap = 0;
  if (gAirDropNodeMap)
  {
    v2 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::~__hash_table(gAirDropNodeMap);
    MEMORY[0x1E692CD30](v2, 0x10A0C408EF24B1CLL);
  }

  gAirDropNodeMap = 0;

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

BOOL TNode::IsNetworkNode(TNode *this, TGlobalNodes *a2)
{
  TNodePtr::TNodePtr(&v6, this);
  IsNetworkNode = TGlobalNodes::IsNetworkNode(a2, &v6.fFINode, v3);

  return IsNetworkNode;
}

void TNode::GetNetworkNode(TNode *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  switch(this)
  {
    case 0x6D74726D:
      TGlobalNodes::AirDropNode(&v3);
      break;
    case 0x6E747362:
      TGlobalNodes::NetworkSidebarNode(&v3);
      break;
    case 0x6E74776B:
      TGlobalNodes::NetworkNearbyNode(&v3);
      break;
    default:
      return;
  }

  TNodePtr::operator=(a2, &v3);
}

void TNode::ComputerNameChangedCallback(TNode *this, const __SCDynamicStore *a2, const __CFArray *a3, void *a4)
{
  TGlobalNodes::RootNode(&v7);
  TNodeFromFINode(v7);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  TNode::RequestInternalTask();
}

void sub_1E573BD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TPropertyValue::~TPropertyValue(&a9);

  _Unwind_Resume(a1);
}

void TNode::HandleSyncComputerName(TNode *this)
{
  TGlobalNodes::RootNode(&v9, this);
  TGlobalNodes::ComputerName(&v8);
  v1 = TNodeFromFINode(v9);
  v2 = TNode::InfoLock(v1);
  os_unfair_lock_lock(v2);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  TFSInfo::Name(v4, &v7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = CFEqual(v7.fString.fRef, v8.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  if (!v5)
  {
    v6 = TNodeFromFINode(v9);
    TNode::SetComputerName(v6, &v8);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
}

void sub_1E573BE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, id a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);

  _Unwind_Resume(a1);
}

uint64_t TNode::VolumeHasNoVolumeSizes(TNode *this)
{
  TNode::GetVolumeInfo(this, &v3);
  v1 = *(v3 + 115);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t TNode::VolumeIsReadOnly(TNode *this)
{
  TNode::GetVolumeInfo(this, &v3);
  v1 = *(v3 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t TNode::VolumeSupportsACLs(TNode *this)
{
  TNode::GetVolumeInfo(this, &v3);
  v1 = *(v3 + 118);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t TPropertyValue::TPropertyValue<__CFURL const*>(uint64_t a1, const void **a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  TPropertyValue::TPropertyValue<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(a1, &v5);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v5);
  return a1;
}

void sub_1E573BF90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::GetVolume(TNode *this@<X0>, TNodePtr *a2@<X8>)
{
  TGlobalNodes::RootNode(&v6, this);
  v5 = TNodeFromFINode(v6);
  TChildrenList::FindDisplayName(*(v5 + 56), this, a2);
}

void TNode::FindFPv2Child(TNode *this@<X0>, FPItem *a2@<X1>, TNodePtr *a3@<X8>)
{
  v5 = a2;
  v6 = TNode::InfoLock(v5);
  os_unfair_lock_lock(v6);
  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  os_unfair_lock_lock((v8 + 108));
  v9 = *(v8 + 123);
  os_unfair_lock_unlock((v8 + 108));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!v5 || (v9 & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v11 = TNode::InfoLock(v10);
  os_unfair_lock_lock(v11);
  v13 = *(this + 2);
  v12 = *(this + 3);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v11);
  IsFPv2 = TFSInfo::IsFPv2(v13, 1);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (IsFPv2)
  {
    a3->fFINode = 0;
    TNodePtr::TNodePtr(&v16, this);
    TNode::StPopulating::StPopulating(&v17, &v16.fFINode, 0);

    v15 = *(this + 7);
    if (v15)
    {
      TChildrenList::FindByFPItem(v15, v5, &v16);
      TNodePtr::operator=(&a3->fFINode, &v16.fFINode);
    }

    TNode::StPopulating::~StPopulating(&v17);
    if (!TNodeFromFINode(a3->fFINode))
    {
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  else
  {
LABEL_16:
    TNodePtr::TNodePtr(a3, 0);
  }
}

void sub_1E573C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void TNode::FindChildButDontSynchronize(TNode *this@<X0>, TNode *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  TGlobalNodes::RootNode(v14, this);
  v6 = TNodeFromFINode(v14[0]);

  if (v6 == this)
  {
    TNode::GetVolume(a2, v14);
    TNodePtr::operator=(a3, v14);
  }

  else
  {
    v8 = TNode::InfoLock(v7);
    os_unfair_lock_lock(v8);
    v10 = *(this + 2);
    v9 = *(this + 3);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v8);
    os_unfair_lock_lock((v10 + 108));
    v11 = *(v10 + 123);
    os_unfair_lock_unlock((v10 + 108));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if ((v11 & 0x20) != 0 && CFStringGetLength(*a2) >= 1)
    {
      TNodePtr::TNodePtr(&v13, this);
      TNode::StPopulating::StPopulating(v14, &v13.fFINode, 0);

      v12 = *(this + 7);
      if (v12)
      {
        TChildrenList::Find(v12, a2, &v13);
        TNodePtr::operator=(a3, &v13.fFINode);
      }

      TNode::StPopulating::~StPopulating(v14);
    }
  }
}

void sub_1E573C398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TNode::StPopulating::~StPopulating(va);

  _Unwind_Resume(a1);
}

uint64_t TNode::CopyPathToCBuffer(TNode *this, char *a2, CFIndex a3)
{
  TNode::GetPath(this, &cf);
  v5 = v11;
  if (!v11)
  {
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

    if (CFStringGetCString(v6, a2, a3, 0x8000100u))
    {
      v5 = v11;
    }

    else
    {
      v5 = 4294959236;
    }
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  return v5;
}

void TNode::DisplayName(TNode *this@<X0>, TString *a2@<X8>)
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
  TFSInfo::DisplayName(v6, a2);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E573C510(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TNode::ProviderNodeForProviderDomainID(TNode *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  TGlobalNodes::AllProvidersNode(&v14);
  v5 = TNodeFromFINode(v14);
  TNode::CopyChildren(v5, &v12);
  v6 = v12;
  v7 = v13;
  if (v12 != v13)
  {
    while (1)
    {
      v8 = TNodeFromFINode(*v6);
      v9 = TNode::GetFIProvider(v8);
      v10 = [v9 identifier];
      v11 = [(TNode *)v4 isEqual:v10];

      if (v11)
      {
        break;
      }

      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = v13;
  }

  if (v6 == v7)
  {
    *a2 = 0;
  }

  else
  {
    v15 = *v6;
    v16 = 1;
    TNodePtr::TNodePtr(a2, &v15);
    if (v16)
    {
    }
  }

  v15 = &v12;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void TNode::ProviderNodeForProviderDomain(void *a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if ((atomic_load_explicit(&qword_1ECFF44B0, memory_order_acquire) & 1) == 0)
  {
    TNode::ProviderNodeForProviderDomain();
  }

  v6 = [v5 identifier];
  TNode::ProviderNodeForProviderDomainID(v6, a3);

  v7 = TNodeFromFINode(*a3);
  if ((a2 & 0x80) == 0 && !v7)
  {
    v8 = [v5 identifier];
    location = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&location, v8);

    std::mutex::lock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
    p_location = &location;
    v9 = std::__hash_table<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(&xmmword_1ECFF4560, &location);
    p_location = pthread_self();
    std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::__emplace_unique_key_args<_opaque_pthread_t *,_opaque_pthread_t *>(v9 + 3, &p_location);
    LOBYTE(v9) = v10;
    std::mutex::unlock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
    if (v9)
    {
      p_location = &location;
      TGlobalNodes::AllProvidersNode(&v22);
      v11 = TNodeFromFINode(v22);
      TNode::HandleSync(v11, 256);

      v12 = [v5 identifier];
      TNode::ProviderNodeForProviderDomainID(v12, &v22);
      TNodePtr::operator=(a3, &v22);

      StDefer<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_0>::~StDefer(&p_location);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&location);
  }

  if (TNodeFromFINode(*a3))
  {
    v13 = TNodeFromFINode(*a3);
    v14 = TNode::InfoLock(v13);
    os_unfair_lock_lock(v14);
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v14);
    v17 = TFSInfo::GetFPItem(v16);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v17)
    {
      goto LABEL_20;
    }

    if ([v5 expectFPItems])
    {
      v17 = [v5 domain];
      if (!v17)
      {
        v17 = [v5 asyncFetchedDomain];
      }

      objc_initWeak(&location, *a3);
      v18 = 1000.0;
      if ((a2 & 0x40000) == 0)
      {
        v18 = 5.0;
      }

      v22 = *&v18;
      objc_copyWeak(&v20, &location);
      p_p_location = 0;
      p_location = &unk_1F5F409B8;
      objc_moveWeak(&v25, &v20);
      p_p_location = &p_location;
      objc_destroyWeak(&v20);
      TNode::RootFPItemForDomainWithTimeout(v17, &p_location, v21);

      std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](&p_location);
      objc_destroyWeak(&location);
LABEL_20:
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

TString **StDefer<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_0>::~StDefer(TString **a1)
{
  std::mutex::lock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
  v2 = std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::find<TString>(&xmmword_1ECFF4560, *a1);
  if (v2)
  {
    v4 = pthread_self();
    std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::__erase_unique<_opaque_pthread_t *>(v2 + 3, &v4);
    if (!v2[6])
    {
      std::__hash_table<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>>>::erase(&xmmword_1ECFF4560, v2);
    }
  }

  std::mutex::unlock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
  return a1;
}

void TNode::RootFPItemForDomainWithTimeout(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    v9[0] = v5;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    objc_claimAutoreleasedReturnValue();
    std::__function::__value_func<void ()(FPItem *,NSError *)>::__value_func[abi:ne200100](v7, a2);
    v8 = 0;
    operator new();
  }

  std::function<void ()(FPItem *,NSError *)>::operator()(a2, 0, 0);
  *a3 = 0;
  a3[1] = 0;

  v6 = *MEMORY[0x1E69E9840];
}

void TNode::ClearAliasTarget(TNode *this, int a2)
{
  TNodePtr::TNodePtr(&v4, 0);
  TNode::SetAliasTarget(this, &v4, a2);
}

void TNode::SetUnresolvedTarget(TNode *this)
{
  TNode::GetAliasTarget(this, &v12);
  fRef = v12.fString.fRef;
  v3 = TNodeFromFINode(v12.fString.fRef);

  if (!v3)
  {
    *v11 = 0;
    v12.fString.fRef = &stru_1F5F42870;
    v4 = CFRetain(&stru_1F5F42870);
    v5 = TNode::InfoLock(v4);
    os_unfair_lock_lock(v5);
    v7 = *(this + 2);
    v6 = *(this + 3);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v5);
    v8 = *(v7 + 120);
    if (v8 > 0x24)
    {
      goto LABEL_10;
    }

    if (((1 << v8) & 0x10000C0001) != 0)
    {
      TFSInfo::GetAliasInfoFrom(v7, &v11[1], v11, 0, &v12);
      goto LABEL_13;
    }

    if (v8 == 7)
    {
      TNode::DisplayName(this, &cf);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v12.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      v9 = cf;
      if (cf)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_10:
      TNode::DisplayName(this, &cf);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v12.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      v9 = cf;
      if (cf)
      {
LABEL_11:
        CFRelease(v9);
      }
    }

    cf = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
LABEL_13:
    TNode::AliasIsContainer(this);
    TNode::GetUnresolvedNode();
  }
}

void sub_1E573CF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::RequestTask(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v7 = TNode::InfoLock(a1);
    os_unfair_lock_lock(v7);
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
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
  }

  v11 = *(*a5 + 24);
  if (v11)
  {
    TDSNotifier::AddPtrReference(v11);
  }

  std::allocate_shared[abi:ne200100]<TNodeTask,std::allocator<TNodeTask>,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,0>();
}

void sub_1E573D10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void sub_1E573D1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::OpenScreenShareSync(uint64_t a1)
{
  v2 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v6 = *(a1 + 24);
  if (!v6)
  {
    os_unfair_lock_unlock(v5);
    if (!v3)
    {
      return 4294959224;
    }

    goto LABEL_5;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock(v5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (v3)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return 4294959224;
}

void sub_1E573D2A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::IsNetworkNeighborhood(TNode *this)
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

  return 0;
}

uint64_t TNode::OpenServerSync(uint64_t a1)
{
  v2 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 24);
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
  v6 = *(a1 + 24);
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

  return 4294959224;
}

void TNode::CloseNodeBrowserIfNecessary(TNode *this, int a2)
{
  NotifierList = TNode::GetNotifierList(this);
  v6 = *(NotifierList + 24);
  v5 = *(NotifierList + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock(v6);
  v7 = *(v6 + 5);
  os_unfair_lock_unlock(v6);
  if (v7 == 1)
  {
    v9 = TNode::InfoLock(v8);
    os_unfair_lock_lock(v9);
    v10 = *(this + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v9);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      os_unfair_lock_unlock(v9);
    }

    v16 = 0;
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(this + 2);
    v13 = *(this + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    v15[0] = TFSInfo::CopySFBrowserRef(v14);
    TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::operator=<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>(&v16, v15);
    TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(v15);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    LOBYTE(v15[0]) = 0;
    TFSInfo::BrowserCloseNode(v16, 0, v15);
    os_unfair_lock_lock(v6);
    *(v6 + 5) = 0;
    os_unfair_lock_unlock(v6);
    atomic_fetch_and(this + 44, 0xFFF7u);
    atomic_fetch_and(this + 44, 0xFFEFu);
    if (a2)
    {
      memset(v15, 0, sizeof(v15));
      TNode::RemoveAllChildren(this, 0, v15);
      TNodeEventPtrs::SendNotifications(v15);
      v17 = v15;
      std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    else
    {
      TNode::RemoveAllChildren(this, 0, 0);
    }

    TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v16);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E573D56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(va);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void sub_1E573D5BC()
{
  if (!v0)
  {
    JUMPOUT(0x1E573D5B4);
  }

  JUMPOUT(0x1E573D5ACLL);
}

const void **TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::operator=<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>(const void **a1, const void **a2)
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

BOOL TNode::RemoveAllChildren(TNode *a1, char a2, TNodeEventPtrs *a3)
{
  v3 = atomic_load(a1 + 44);
  if ((v3 & 2) != 0)
  {
    return 0;
  }

  TNodePtr::TNodePtr(&v14, a1);
  TNode::StPopulating::StPopulating(v17, &v14.fFINode, 0);

  v7 = TNode::ChildRegistrationCount(a1);
  v8 = *(a1 + 7);
  if (v8)
  {
    v9 = (v8 + 64);
  }

  else
  {
    v9 = &TNode::GetChildren(void)const::sEmptyList;
  }

  v15 = 0;
  v16 = 0;
  v14.fFINode = 0;
  std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&v14, *v9, v9[1], (v9[1] - *v9) >> 3);
  TNode::RemoveChildrenDeep(&v14, a2, v7 == 0, a3);
  v10 = *(a1 + 7);
  if (v10)
  {
    v11 = (v10 + 64);
  }

  else
  {
    v11 = &TNode::GetChildren(void)const::sEmptyList;
  }

  v12 = *v11 == v11[1];
  v18 = &v14;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  TNode::StPopulating::~StPopulating(v17);
  return v12;
}

void sub_1E573D71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, FINode *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](va1);
  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

void TNode::AddNWNode(int a1, uint64_t a2, FINode **a3)
{
  v9[0] = a2;
  NWMapSpinlock();
  os_unfair_lock_lock(&_MergedGlobals_3);
  NWNodeMap = TNode::GetNWNodeMap(a1);
  if (!std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::find<__SFNode *>(NWNodeMap, v9))
  {
    TNode::GetNetworkNode(0x6E74776B, &v8);
    v6 = TNodeFromFINode(*a3);
    if (v6 != TNodeFromFINode(v8))
    {
      v9[2] = v9;
      v7 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::__emplace_unique_key_args<__SFNode *,std::piecewise_construct_t const&,std::tuple<__SFNode * const&>,std::tuple<>>(NWNodeMap, v9);
      objc_storeStrong(v7 + 3, *a3);
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

uint64_t TNode::AddServerToSidebarSync(uint64_t a1)
{
  v2 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 24);
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

  return 4294959224;
}

uint64_t TNode::CopyEnumeratorError(uint64_t a1, void **a2)
{
  v4 = TNode::VirtualType(a1);
  if (v4 != 28 && v4)
  {
    return 4294959224;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    return 4294959224;
  }

  v6 = TChildrenList::GetCollectionStatusObserver(v5);
  v7 = [v6 fpError];
  v8 = *a2;
  *a2 = v7;

  return 0;
}

uint64_t TNode::GetChildrenCount(TNode *this)
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

  if ((v5 & 0x20) == 0)
  {
    return 0;
  }

  v8 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v8);
    v11 = *(v10 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    os_unfair_lock_unlock(v8);
    v11 = *(v10 + 120);
  }

  if (v11 == 5)
  {
    TNode::GetAliasTarget(this, &v16);
  }

  else
  {
    TNodePtr::TNodePtr(&v16, this);
  }

  if (TNodeFromFINode(v16.fFINode) && *(TNodeFromFINode(v16.fFINode) + 56))
  {
    TNode::StPopulating::StPopulating(v15, &v16.fFINode, 0);
    v12 = *(TNodeFromFINode(v16.fFINode) + 56);
    if (v12)
    {
      v13 = (v12 + 64);
    }

    else
    {
      v13 = &TNode::GetChildren(void)const::sEmptyList;
    }

    v7 = (v13[1] - *v13) >> 3;
    TNode::StPopulating::~StPopulating(v15);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1E573DA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TNode::StPopulating::~StPopulating(&a9);

  _Unwind_Resume(a1);
}

uint64_t TNode::SetProperty(TNode *a1, uint64_t a2, const TPropertyReference *a3, __CFString **a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  if (*a4)
  {
    v33.fString.fRef = *a4;
    TOperationErrorRecord::AddPtrReference(v9);
    TPropertyValue::TPropertyValue(&v35, a3);
    TNode::RequestTask(a1, 2, a2, &v35, &v33);
  }

  TNodePtr::TNodePtr(&v33, a1);
  TNodePropertySetterContext::TNodePropertySetterContext(&v35, &v33.fString.fRef, a2, a3);

  if (a2 <= 1869769062)
  {
    if (a2 == 1718903156 || a2 == 1718904684)
    {
      v12 = TNode::InfoLock(v11);
      os_unfair_lock_lock(v12);
      v14 = *(a1 + 2);
      v13 = *(a1 + 3);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_16:
      os_unfair_lock_unlock(v12);
      TNode::GetVolumeInfo(a1, &v33);
      v19 = TFSInfo::SetProperty(v14, a2, a3, &v33, 0x10000000);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

LABEL_24:
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      goto LABEL_26;
    }

LABEL_14:
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(a1 + 2);
    v13 = *(a1 + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (a2 == 1869769063)
  {
    v20 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v20);
    v21 = *(a1 + 2);
    v13 = *(a1 + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v20);
    TNode::GetVolumeInfo(a1, &v33);
    v19 = TFSInfo::SetProperty(v21, 0x6F726967u, a3, &v33, a6);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (!v19)
    {
      TNodePtr::TNodePtr(&v33, a1);
      TNode::SendNotification(a1, 2, &v33.fString.fRef, 1869769063, 0);
    }

    goto LABEL_24;
  }

  if (a2 != 1886282093)
  {
    goto LABEL_14;
  }

  v15 = TNode::InfoLock(v11);
  os_unfair_lock_lock(v15);
  v17 = *(a1 + 2);
  v16 = *(a1 + 3);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v15);
    v18 = *(v17 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (!v18)
    {
LABEL_35:
      if (TNode::BeingOperatedOn(a1, 1))
      {
        v19 = -8065;
      }

      else
      {
        v33.fString.fRef = 0;
        v27 = TPropertyReference::As<__CFString const*>(a3, &v33.fString.fRef);
        v19 = v28;
        if (!v28)
        {
          TString::TString(&v33, v27);
          v19 = TNode::SetNameAndExtension(a1, &v33, 0, 0, 0);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v33.fString.fRef);
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    os_unfair_lock_unlock(v15);
    if (!*(v17 + 120))
    {
      goto LABEL_35;
    }
  }

  v23 = FIDSNodeFromTNode(a1);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_35;
  }

  v33.fString.fRef = 0;
  v25 = TPropertyReference::As<__CFString const*>(a3, &v33.fString.fRef);
  if (v26)
  {
    v19 = -50;
  }

  else
  {
    v29 = v25;
    TNode::GetFSInfo(a1, &v33);
    fRef = v33.fString.fRef;
    TString::TString(&v32, v29);
    TFSInfo::SetItemName(fRef, &v32);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v32.fString.fRef);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    TNode::GetFSInfo(a1, &v33);
    v31 = v33.fString.fRef;
    TString::TString(&v32, v29);
    TFSInfo::SetDisplayName(v31, &v32);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v32.fString.fRef);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v19 = 0;
  }

LABEL_26:
  v36 = v19;
  TNodePropertySetterContext::~TNodePropertySetterContext(&v35);
  if (a2 == 1634758244)
  {
    TNode::AddToAppNapCache(a1);
  }

  if (v19 == -8057)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

void sub_1E573DED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TPropertyValue *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  TNodePropertySetterContext::~TNodePropertySetterContext(&a12);
  _Unwind_Resume(a1);
}

uint64_t TNode::CreateNewChildLockItem(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, const TString *a4, id *a5, uint64_t a6, TNodePtr *a7)
{
  TNodePtr::TNodePtr(&v28, 0);
  TNodePtr::operator=(&a7->fFINode, &v28.fFINode);

  Length = CFStringGetLength(a4->fString.fRef);
  if (!Length)
  {
    return 4294959227;
  }

  v14 = TNode::InfoLock(Length);
  os_unfair_lock_lock(v14);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
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

  if ((v17 & 0x20) == 0 && !TNode::AliasIsContainer(a1))
  {
    return 4294959241;
  }

  v18 = *(a3 + 8);
  v28.fFINode = *a3;
  v29 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IsMigration = TOperation::IsMigration(a2, &v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (IsMigration)
  {
    TDSOperationRecord::SetNeedsAuthentication(*a3, 1);
  }

  v27 = 0;
  SlashesToColons(a4, &v28);
  TNodePtr::TNodePtr(&v26, a1);
  v20 = TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(a2, a3, &v28, &v26.fFINode, a7, &v27);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v28.fFINode);
  if (!v20)
  {
    TNode::AddChild(a1, a7);
    if (v27 == 1)
    {
      TOperation::UpdateStatusThroughput(a2, 0, 1);
      TOperation::ReportStatus(a2, 0);
    }

    else
    {
      v21 = TNodeFromFINode(a7->fFINode);
      v22 = *a5;
      v25 = v22;
      v23.fFINode = &v25;
      TNode::AddTemporaryProperties(v21, v23);
    }
  }

  return v20;
}

uint64_t TNode::DeleteChildLockItem(uint64_t a1, uint64_t a2, uint64_t a3, FINode **a4, int a5)
{
  v10 = TNodeFromFINode(*a4);
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
LABEL_3:
      v15 = 4294959238;
      goto LABEL_31;
    }
  }

  else
  {
    os_unfair_lock_unlock(v11);
    if (*(v13 + 120))
    {
      goto LABEL_3;
    }
  }

  if (a5)
  {
    v16 = TNodeFromFINode(*a4);
    IsLockFile = TNode::LowLevelIsLockFile(v16);
    if (IsLockFile)
    {
      goto LABEL_12;
    }
  }

  v18 = TNodeFromFINode(*a4);
  v19 = TNode::InfoLock(v18);
  os_unfair_lock_lock(v19);
  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v19);
  IsLockFile = TFSInfo::GetType(v21);
  v22 = IsLockFile;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22 == 1651666795)
  {
LABEL_12:
    v23 = TNode::InfoLock(IsLockFile);
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

    if (v26 & 0x20) != 0 || (TNode::AliasIsContainer(a1))
    {
      v27 = *(a3 + 8);
      v34 = *a3;
      v35 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IsMigration = TOperation::IsMigration(a2, &v34);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (IsMigration)
      {
        TDSOperationRecord::SetNeedsAuthentication(*a3, 1);
      }

      v29 = *a3;
      v30 = *(a3 + 8);
      v34 = v29;
      v35 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      TNodePtr::TNodePtr(&v37, a1);
      v15 = TDesktopServicesHelperCopyMoveOperation::DeleteLockItem(a2, &v34, &v37.fFINode, a4);

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }

    else
    {
      v15 = 4294959241;
    }
  }

  else
  {
    v15 = 4294959238;
  }

LABEL_31:
  v31 = TNodeFromFINode(*a4);
  TNode::RemoveTemporaryProperties(v31);
  if (!v15)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v32 = TNodeFromFINode(*a4);
    TNode::RemoveSelf(v32, &v34);
    TNodeEventPtrs::SendNotifications(&v34);
    v37.fFINode = &v34;
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v37);
  }

  return v15;
}

void sub_1E573E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void TNode::RemoveSelf(TNode *this, TNodeEventPtrs *a2)
{
  v4 = TNode::ParentLock(this);
  os_unfair_lock_lock(v4);
  TNodePtr::TNodePtr(&v43, *(this + 6));
  os_unfair_lock_unlock(v4);
  v5 = TNode::StPopulating::StPopulating(v42, &v43.fFINode, 0);
  v6 = TNode::InfoLock(v5);
  os_unfair_lock_lock(v6);
  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  os_unfair_lock_lock((v8 + 108));
  v9 = *(v8 + 123);
  os_unfair_lock_unlock((v8 + 108));
  if ((v9 & 0x80000000) == 0)
  {
    TNodePtr::TNodePtr(&v41, this);

    v11 = TNode::InfoLock(v10);
    os_unfair_lock_lock(v11);
    v13 = *(this + 2);
    v12 = *(this + 3);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v11);
    IsAlias = TFSInfo::IsAlias(v13);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (IsAlias)
    {
      TNode::ClearAliasTarget(this, 0);
    }

    TNodePtr::TNodePtr(&v41, 0);
    v16 = TNode::ParentLock(v15);
    os_unfair_lock_lock(v16);
    *(this + 6) = TNodeFromFINode(v41.fFINode);
    os_unfair_lock_unlock(v16);

    os_unfair_lock_lock((v8 + 108));
    LODWORD(v16) = *(v8 + 123);
    os_unfair_lock_unlock((v8 + 108));
    if ((v16 & 4) != 0)
    {
      TDeviceManagementMonitor::UnRegisterApp(this, v18);
    }

    v19 = TNode::InfoLock(v17);
    os_unfair_lock_lock(v19);
    v21 = *(this + 2);
    v20 = *(this + 3);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v19);
    if (!*(v21 + 120))
    {
      os_unfair_lock_lock((v21 + 108));
      *(v21 + 123) |= 0x80000000;
      os_unfair_lock_unlock((v21 + 108));
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (TNodeFromFINode(v43.fFINode))
    {
      TNodePtr::TNodePtr(&v41, this);
      v22 = +[FIPresentationNodeMap shared];
      v23 = FINodeFromTNode(this);
      [v22 unregisterAllForPresentationNode:v23];

      v25 = TGlobalNodes::RootNode(&v40, v24);
      v26 = TNode::InfoLock(v25);
      os_unfair_lock_lock(v26);
      v28 = *(this + 2);
      v27 = *(this + 3);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v26);
      os_unfair_lock_lock((v28 + 108));
      v29 = *(v28 + 123);
      os_unfair_lock_unlock((v28 + 108));
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if ((v29 & 0x100) != 0)
      {
        v30 = TNodeFromFINode(v43.fFINode);
        if (v30 != TNodeFromFINode(v40))
        {
          if ((atomic_load_explicit(&qword_1ECFF44C0, memory_order_acquire) & 1) == 0)
          {
            TNode::RemoveSelf();
          }

          TNodePtr::TNodePtr(&v39, this);
          v31 = qword_1ECFF44B8;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3321888768;
          block[2] = ___ZN5TNode10RemoveSelfEP14TNodeEventPtrs_block_invoke;
          block[3] = &__block_descriptor_48_ea8_32c48_ZTSKZN5TNode10RemoveSelfEP14TNodeEventPtrsE3__0_e5_v8__0l;
          v37 = v39.fFINode;
          v38 = a2 != 0;
          v32 = v37;
          dispatch_async(v31, block);
        }
      }

      v33 = TNodeFromFINode(v43.fFINode);
      TNodePtr::TNodePtr(&v39, this);
      LOBYTE(v33) = TChildrenList::RemoveChild(*(v33 + 56), &v39);

      if (((a2 != 0) & v33) == 1)
      {
        TNodePtr::TNodePtr(&v35, this);
        TNodeEvent::CreateNodeEvent(4, &v35.fFINode, 0, &v39);
        TNodeEventPtrs::AddEvent(a2, &v43, &v39.fFINode);
        TNodeEventPtr::~TNodeEventPtr(&v39.fFINode);

        TNodePtr::TNodePtr(&v39, this);
        TNodePtr::TNodePtr(&v34, this);
        TNodeEvent::CreateNodeEvent(1, &v34.fFINode, 0, &v35);
        TNodeEventPtrs::AddEvent(a2, &v39, &v35.fFINode);
        TNodeEventPtr::~TNodeEventPtr(&v35.fFINode);
      }
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  TNode::StPopulating::~StPopulating(v42);
}

void sub_1E573E908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, ...)
{
  va_start(va, a13);

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  TNode::StPopulating::~StPopulating(va);

  _Unwind_Resume(a1);
}

void TNode::PostFolderSizingTaskRequest(uint64_t a1, uint64_t a2, int a3)
{
  IsContextOpen = TNode::IsContextOpen(a1);
  if (IsContextOpen)
  {
    v7 = TNode::InfoLock(IsContextOpen);
    os_unfair_lock_lock(v7);
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
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
      goto LABEL_12;
    }

    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    IsAlias = TFSInfo::IsAlias(v14);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (IsAlias)
    {
LABEL_12:
      TNode::GetVolumeInfo(a1, &v18);
      if (v18 && ((atomic_fetch_or((a1 + 88), 0x40u) & 0x40) == 0 || a3))
      {
        TFSVolumeInfo::GetFolderSizingThread(v18, &v16);
        if (v16)
        {
          TFolderSizingThread::PostFolderSizingTaskRequest(&v16, a2);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }
  }
}

void sub_1E573EB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t TNode::IsSymlink(TNode *this)
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

  return (v5 >> 6) & 1;
}

void ___ZNK5TNode16AliasIsContainerEv_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = ___ZNK5TNode16AliasIsContainerEv_block_invoke_2;
  v1[3] = &unk_1E877ED90;
  v2 = *(a1 + 32);
  ExceptionSafeBlock(v1);
}

void ___ZNK5TNode16AliasIsContainerEv_block_invoke_2(uint64_t a1)
{
  TNodeFromFINode(*(a1 + 32));
  v1 = 0;
  v2 = 0;
  TNodeRequest::Make();
}

void sub_1E573ED2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, TNodeRequest *a12)
{
  TPropertyValue::~TPropertyValue(&a9);
  TRef<TNodeRequest *,TRetainReleasePolicy<TNodeRequest *>>::~TRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t TNode::UpdateSizeInfo(TNode *this)
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
    v10 = this;
    v7 = TNode::ParentLock(v6);
    os_unfair_lock_lock(v7);
    TNodePtr::TNodePtr(&v9, *(this + 6));
    os_unfair_lock_unlock(v7);
    std::allocate_shared[abi:ne200100]<TFSInfoSizer,std::allocator<TFSInfoSizer>,TNode *,TNodePtr,decltype(nullptr),0>();
  }

  return 0;
}

void sub_1E573EE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::UpdatePropertySynchronous(TNode *this, int a2, char a3)
{
  v54 = a2;
  v52 = 0;
  v53 = 0;
  v51 = &v52;
  if (a2 > 1819240306)
  {
    if (a2 <= 1886613603)
    {
      if (a2 <= 1870098033)
      {
        if (a2 <= 1836016739)
        {
          if (a2 != 1819240307)
          {
            if (a2 == 1819632756)
            {
              v50 = 0;
              LODWORD(v45) = 7;
              v44 = &v50;
              v49 = 0;
              v5 = TNode::InfoLock(this);
              os_unfair_lock_lock(v5);
              v7 = *(this + 2);
              v6 = *(this + 3);
              if (v6)
              {
                atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              os_unfair_lock_unlock(v5);
              v47.fFINode = 0;
              v48 = 0;
              LastUsedDate = TFSInfo::GetLastUsedDate(v7, &v44, &v47, a3 & 0x7D, &v49);
              if (v48)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v48);
              }

              if (v49 == 1)
              {
                std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v51, &v54);
              }

              if (v6)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v6);
              }

              goto LABEL_119;
            }

LABEL_93:
            LastUsedDate = 4294959245;
            goto LABEL_119;
          }

          goto LABEL_85;
        }

        if (a2 != 1836016740)
        {
          if (a2 != 1869769063)
          {
            goto LABEL_93;
          }

          v50 = 0;
          LODWORD(v45) = 10;
          v44 = &v50;
          v49 = 0;
          v19 = TNode::InfoLock(this);
          os_unfair_lock_lock(v19);
          v21 = *(this + 2);
          v20 = *(this + 3);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v19);
          v47.fFINode = 0;
          v48 = 0;
          LastUsedDate = TFSInfo::GetOriginatorInfo(v21, &v44, &v47, a3 & 0x7D, &v49);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          if (v49 == 1)
          {
            LODWORD(v47.fFINode) = 1869769063;
            std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v51, &v47);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          v18 = v50;
LABEL_65:

          goto LABEL_119;
        }

        goto LABEL_82;
      }

      if (a2 > 1885895026)
      {
        if (a2 == 1885895027)
        {
LABEL_85:
          v25 = TNode::InfoLock(this);
          os_unfair_lock_lock(v25);
          v27 = *(this + 2);
          v26 = *(this + 3);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v25);
          os_unfair_lock_lock((v27 + 108));
          v28 = *(v27 + 123);
          os_unfair_lock_unlock((v27 + 108));
          if ((v28 & 0x2000000) != 0)
          {
            IsLockFile = TNode::LowLevelIsLockFile(this);
            v38 = IsLockFile;
            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            if ((v38 & 1) == 0)
            {
              IsLockFile = TNode::HandleSync(this, 268959744);
            }
          }

          else if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          v39 = TNode::InfoLock(IsLockFile);
          os_unfair_lock_lock(v39);
          v41 = *(this + 2);
          v40 = *(this + 3);
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v39);
          os_unfair_lock_lock((v41 + 108));
          v42 = *(v41 + 123);
          os_unfair_lock_unlock((v41 + 108));
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          if ((v42 & 0x20) != 0)
          {
            TNode::UpdateSizeInfo(this);
          }

          goto LABEL_118;
        }

        v11 = 1886549619;
        goto LABEL_81;
      }

      if (a2 != 1870098034)
      {
        v11 = 1883333732;
        goto LABEL_81;
      }

LABEL_82:
      if ((TNode::LowLevelIsLockFile(this) & 1) == 0)
      {
        TNode::HandleSync(this, 268959744);
      }

      LastUsedDate = 4294959239;
      goto LABEL_119;
    }

    if (a2 <= 1970497393)
    {
      if (a2 <= 1937340017)
      {
        if (a2 == 1886613604)
        {
          goto LABEL_82;
        }

        v10 = 1936225906;
        goto LABEL_73;
      }

      if (a2 == 1937340018)
      {
        goto LABEL_74;
      }

      if (a2 != 1969385844)
      {
        goto LABEL_93;
      }

LABEL_118:
      LastUsedDate = 0;
      goto LABEL_119;
    }

    if (a2 <= 1970566255)
    {
      if (a2 == 1970497394)
      {
        goto LABEL_82;
      }

      if (a2 != 1970563428)
      {
        goto LABEL_93;
      }

LABEL_90:
      v30 = MEMORY[0x1E695EC28];
      if (a2 != 1970563428)
      {
        v30 = MEMORY[0x1E695EBD0];
      }

LABEL_101:
      v34 = *v30;
      v35 = TNode::InfoLock(this);
      os_unfair_lock_lock(v35);
      v37 = *(this + 2);
      v36 = *(this + 3);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v35);
      LastUsedDate = TFSInfo::RefreshUTTypeProperty(v37, v34);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (LastUsedDate)
      {
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v51, &v54);
        goto LABEL_118;
      }

      goto LABEL_119;
    }

    if (a2 == 1970566256)
    {
      v30 = MEMORY[0x1E695DAA0];
      goto LABEL_101;
    }

    v10 = 1986359923;
LABEL_73:
    if (a2 != v10)
    {
      goto LABEL_93;
    }

LABEL_74:
    v22 = TNode::InfoLock(this);
    os_unfair_lock_lock(v22);
    v24 = *(this + 2);
    v23 = *(this + 3);
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v22);
    TFSInfo::CopyFSInfo(v24);
  }

  if (a2 > 1717793395)
  {
    if (a2 > 1752392561)
    {
      if (a2 <= 1802072171)
      {
        if (a2 == 1752392562)
        {
          goto LABEL_82;
        }

        if (a2 != 1769170540)
        {
          goto LABEL_93;
        }

        v12 = TNode::InfoLock(this);
        os_unfair_lock_lock(v12);
        v14 = *(this + 2);
        v13 = *(this + 3);
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

        if ((v15 & 0x40) != 0)
        {
          TNode::GetAliasTarget(this, &v44);
          v16 = v44;
          v17 = TNodeFromFINode(v44);

          if (!v17)
          {
            v44 = 0;
            v47.fFINode = 0;
            LastUsedDate = TNode::FollowAlias(this, &v44, &v47, 8);
            if (!LastUsedDate)
            {
              std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v51, &v54);
            }

            v18 = v44;
            goto LABEL_65;
          }
        }

        goto LABEL_118;
      }

      if (a2 == 1802072172)
      {
        goto LABEL_90;
      }

      v11 = 1818321516;
    }

    else
    {
      if (a2 <= 1718903155)
      {
        if (a2 == 1717793396)
        {
          goto LABEL_82;
        }

        v9 = 1718776688;
        goto LABEL_50;
      }

      if (a2 == 1718903156)
      {
        v47.fFINode = 0;
        LODWORD(v45) = 17;
        v44 = &v47;
        LastUsedDate = TNode::GetProperty(this, 1718903156, &v44, 0);
        TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v47.fFINode);
        goto LABEL_119;
      }

      v11 = 1751480436;
    }

LABEL_81:
    if (a2 != v11)
    {
      goto LABEL_93;
    }

    goto LABEL_82;
  }

  if (a2 <= 1667851117)
  {
    if (a2 == 1634952036 || a2 == 1634956409)
    {
      goto LABEL_82;
    }

    v9 = 1667330145;
LABEL_50:
    if (a2 != v9)
    {
      goto LABEL_93;
    }

    TNode::RecalculateFreeSpaceAndCapacity(this, 1);
    goto LABEL_118;
  }

  if (a2 <= 1684893816)
  {
    if (a2 == 1667851118)
    {
      goto LABEL_82;
    }

    v10 = 1668313715;
    goto LABEL_73;
  }

  if (a2 != 1684893817)
  {
    v11 = 1684955501;
    goto LABEL_81;
  }

  v31 = TNode::InfoLock(this);
  os_unfair_lock_lock(v31);
  v32 = *(this + 2);
  LastUsedDate = *(this + 3);
  if (LastUsedDate)
  {
    atomic_fetch_add_explicit((LastUsedDate + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v31);
  v33 = TFSInfo::ApplicationDMFPolicy(v32);
  if (v33 != TFSInfo::FetchApplicationDMFPolicy(v32))
  {
    LODWORD(v44) = 1684893817;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v51, &v44);
  }

  if (LastUsedDate)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](LastUsedDate);
    goto LABEL_118;
  }

LABEL_119:
  if (v53)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    TNodePtr::TNodePtr(&v47, this);
    TNodeEventPtrs::AddPropertyChanges(&v44, &v47, &v51);

    TNodeEventPtrs::SendNotifications(&v44);
    v47.fFINode = &v44;
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v47);
  }

  std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(&v51, v52);
  return LastUsedDate;
}

void TNode::RecalculateFreeSpaceAndCapacity(TNode *this, int a2)
{
  TNode::GetVolumeInfo(this, &v4);
  if (v4)
  {
    TFSVolumeInfo::RecalculateFreeSpaceAndCapacity(v4, a2);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E573F8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNodePropertySetterContext::TNodePropertySetterContext(uint64_t a1, id *a2, int a3, uint64_t a4)
{
  *a1 = *a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0;
  v8 = a1 + 32;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v9 = *a2;
  v10 = v9;
  if (a3 == 1718904684 || a3 == 1718903156)
  {
    v11 = TNodeFromFINode(v9);
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    v18 = TFSInfo::CopyTagsAndAttributes(v14, 1);
    TCFURLInfo::TagsFromAttributes(v18, &v19);
    std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(a1 + 24, *(a1 + 32));
    v15 = v20;
    *(a1 + 24) = v19;
    *(a1 + 32) = v15;
    v16 = v21;
    *(a1 + 40) = v21;
    if (v16)
    {
      *(v15 + 16) = v8;
      v19 = &v20;
      v20 = 0;
      v21 = 0;
      v15 = 0;
    }

    else
    {
      *(a1 + 24) = v8;
    }

    std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(&v19, v15);
    TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v18);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return a1;
}

void sub_1E573FA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&a9);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(v11, *(v9 + 32));
  _Unwind_Resume(a1);
}

void TNodePropertySetterContext::~TNodePropertySetterContext(TNodePropertySetterContext *this)
{
  if (!*(this + 12))
  {
    v15 = 0;
    v2 = TNodeFromFINode(*this);
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
    }

    else
    {
      os_unfair_lock_unlock(v3);
      v6 = *(v5 + 120);
    }

    if (v6 != 7)
    {
      v7 = TNodeFromFINode(*this);
      TNode::HandleSync(v7, 268959744);
    }

    v8 = *(this + 2);
    if (v8 == 1718904684 || v8 == 1718903156)
    {
      v9 = TNodeFromFINode(*this);
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
      }

      else
      {
        os_unfair_lock_unlock(v10);
        v13 = *(v12 + 120);
      }

      if (v13 == 7)
      {
        v14 = TNodeFromFINode(*this);
        TNode::SendNotification(v14, 2, this, 1718903156, 0);
      }
    }

    TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v15);
  }

  std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(this + 24, *(this + 4));
}

uint64_t TNode::VolumeIs(uint64_t a1, int *a2)
{
  v4 = TNode::VirtualType(a1);
  if (v4 > 27)
  {
    if ((v4 - 28) < 2)
    {
      v5 = 0;
      v6 = *a2;
      v7 = 9;
      goto LABEL_6;
    }

    if (v4 == 30)
    {
LABEL_8:
      v5 = 0;
      v8 = *a2 & 0x18;
      goto LABEL_20;
    }
  }

  else
  {
    if ((v4 - 24) < 3)
    {
      v5 = 0;
      v6 = *a2;
      v7 = 25;
LABEL_6:
      v8 = v6 & v7;
      goto LABEL_20;
    }

    if (v4 == 27)
    {
      goto LABEL_8;
    }
  }

  v9 = *a2;
  v10 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v10);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
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
      goto LABEL_15;
    }
  }

  if ((v9 & 0xB9) != 0)
  {
LABEL_19:
    v8 = 0;
    v5 = 4294959224;
    goto LABEL_20;
  }

LABEL_15:
  v15 = TNode::InfoLock(v14);
  os_unfair_lock_lock(v15);
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
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

  if (v18 == 16)
  {
    goto LABEL_19;
  }

  v21 = *a2;
  if (*a2)
  {
    IsLocalVolume = TNode::IsLocalVolume(a1);
    v8 = IsLocalVolume;
    v21 = *a2;
  }

  else
  {
    v8 = 0;
  }

  if ((v21 & 2) != 0)
  {
    IsLocalVolume = TNode::IsEjectable(a1);
    if (IsLocalVolume)
    {
      v8 |= 2u;
    }

    v21 = *a2;
    if ((*a2 & 8) == 0)
    {
LABEL_27:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }
  }

  else if ((v21 & 8) == 0)
  {
    goto LABEL_27;
  }

  IsLocalVolume = TNode::VolumeHasNoVolumeSizes(a1);
  if (IsLocalVolume)
  {
    v8 |= 8u;
  }

  v21 = *a2;
  if ((*a2 & 0x10) == 0)
  {
LABEL_28:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_40:
    IsLocalVolume = TNode::VolumeSupportsACLs(a1);
    if (IsLocalVolume)
    {
      v8 |= 0x20u;
    }

    if ((*a2 & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_37:
  IsLocalVolume = TNode::VolumeIsReadOnly(a1);
  if (IsLocalVolume)
  {
    v8 |= 0x10u;
  }

  v21 = *a2;
  if ((*a2 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_29:
  if ((v21 & 0x400) == 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  v22 = TNode::InfoLock(IsLocalVolume);
  os_unfair_lock_lock(v22);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v22);
  IsBootVolume = TFSInfo::IsBootVolume(v24);
  v26 = IsBootVolume;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    if (!v26)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (IsBootVolume)
  {
LABEL_47:
    v8 |= 0x400u;
  }

LABEL_48:
  TNode::GetVolumeInfo(a1, &v31);
  v27 = v31;
  v28 = *a2;
  v29 = (*a2 & 0x3BDB80) != 0 && v31 == 0;
  v30 = !v29;
  if (v29)
  {
    v5 = 0;
    goto LABEL_104;
  }

  if ((v28 & 0x80) != 0 && ((*(v31 + 125) & 1) != 0 || *(v31 + 107) == 1 && (*(v31 + 128) & 1) == 0))
  {
    v8 |= 0x80u;
  }

  if ((v28 & 0x100) == 0)
  {
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_65;
    }

LABEL_70:
    if (!*(v31 + 117))
    {
      v8 |= 0x200u;
    }

    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

LABEL_73:
    if (*(v31 + 119))
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294959224;
    }

    if (*(v31 + 129))
    {
      v8 |= 0x4000u;
    }

    goto LABEL_78;
  }

  if (!*(v31 + 114))
  {
    v8 |= 0x100u;
  }

  if ((v28 & 0x200) != 0)
  {
    goto LABEL_70;
  }

LABEL_65:
  if ((v28 & 0x4000) != 0)
  {
    goto LABEL_73;
  }

LABEL_66:
  v5 = 0;
LABEL_78:
  if ((v28 & 0x200000) != 0)
  {
    if (IsRunningInFinder())
    {
      v8 |= 0x200000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x400000) != 0 && *(v27 + 119))
  {
    v8 |= 0x400000u;
  }

  if ((v28 & 0x8000) != 0)
  {
    if (TFSVolumeInfo::VolumeSupportsUNIXPermissions(v27))
    {
      v8 |= 0x8000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x10000) != 0)
  {
    if (TFSVolumeInfo::VolumeSupportsAFPPermissions(v27))
    {
      v8 |= 0x10000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x20000) != 0)
  {
    if (TFSVolumeInfo::VolumeSupportsIgnoreOwnership(v27))
    {
      v8 |= 0x20000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x80000) != 0)
  {
    if (TFSVolumeInfo::VolumeShouldShowCapacity(v27))
    {
      v8 |= 0x80000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x100000) != 0 && TFSVolumeInfo::VolumeAllowPermissionChanges(v27))
  {
    v8 |= 0x100000u;
  }

LABEL_104:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (!v30)
  {
    return 4294959224;
  }

LABEL_20:
  *a2 = v8;
  return v5;
}

void sub_1E573FFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::IsEjectable(TNode *this)
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
  TNode::GetVolumeInfo(this, &v7);
  v5 = IsRunningInFinder();
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5;
}

void sub_1E5740080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

BOOL TNode::NodesOnSameVolume(TNode *this, const TNodePtr *a2, const TNodePtr *a3)
{
  v4 = TNodeFromFINode(*this);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  TFSInfo::GetVolumeID(v7, &v14 + 1);
  v8 = TNodeFromFINode(a2->fFINode);
  v9 = TNode::InfoLock(v8);
  os_unfair_lock_lock(v9);
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v9);
  TFSInfo::GetVolumeID(v11, &v14);
  v12 = v14 == 0;
  if (*(&v14 + 1) && v14)
  {
    v12 = CFEqual(*(&v14 + 1), v14) != 0;
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v14);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v14 + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v12;
}

void sub_1E57401AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a10);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::ChildRegistrationCount(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 9);
  if (v3)
  {
    v4 = atomic_load(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::UnregisterChangeNotification(uint64_t a1, uint64_t a2, FINode **a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  StRegistrationLock::StRegistrationLock(&v51);
  if ((a4 & 0x40) != 0 && atomic_fetch_add((TNode::GetNotifierList(a1) + 16), 0xFFFFFFFF) == 1)
  {
    memset(&buf, 0, sizeof(buf));
    TNode::RequestInternalTask(a1, 1020, &buf, 0);
    TPropertyValue::~TPropertyValue(&buf);
  }

  TNode::FindRegistration(a1, a2, a3, &v50);
  if (v50)
  {
    if ((a4 & 2) != 0)
    {
      v8 = atomic_load(v50 + 11);
      if (v8 < 1)
      {
        a4 = a4 & 0xFFFFFFFD;
      }

      else
      {
        atomic_fetch_add(v50 + 11, 0xFFFFFFFF);
        add = atomic_fetch_add(TNode::GetNotifierList(a1), 0xFFFFFFFF);
        v10 = add - 1;
        if (add <= 0)
        {
          v11 = LogObj(5);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v10;
            _os_log_impl(&dword_1E5674000, v11, OS_LOG_TYPE_ERROR, "Incorrect childRegistrations when decrementing: %d", &buf, 8u);
          }
        }

        else if (add == 1)
        {
          memset(&buf, 0, sizeof(buf));
          TNode::RequestInternalTask(a1, 1019, &buf, 0);
          TPropertyValue::~TPropertyValue(&buf);
        }
      }
    }

    if ((a4 & 4) != 0)
    {
      --*(v50 + 12);
      v12 = atomic_fetch_add((TNode::GetNotifierList(a1) + 4), 0xFFFFFFFF);
      v13 = v12 - 1;
      if (v12 <= 0)
      {
        v25 = LogObj(5);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v13;
          _os_log_impl(&dword_1E5674000, v25, OS_LOG_TYPE_ERROR, "Incorrect deepChildRegistrations when decrementing: %d", &buf, 8u);
        }
      }

      else if (v12 == 1)
      {
        Path = TNode::GetPath(&buf, a1, 1, 0);
        v15 = TString::KEmptyString(Path);
        v49.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v49, *v15);
        fstd::optional_err<TString,int>::value_or<TString>(&buf, &v49.fString.fRef, &v47);
        TSystemNotificationTask::StopObservingDirectory(&v47, 1);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v47);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v49.fString.fRef);
        TNode::GetVolumeInfo(a1, &v47);
        TNodePtr::TNodePtr(&v49, a1);
        v16 = TFSVolumeInfo::GetSynchingGCDQueue(v47);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptions_block_invoke;
        block[3] = &__block_descriptor_40_ea8_32c132_ZTSKZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptionsE3__0_e5_v8__0l;
        v17 = v49.fString.fRef;
        v46 = v17;
        dispatch_async(v16, block);

        v19 = TNode::ParentLock(v18);
        os_unfair_lock_lock(v19);
        TNodePtr::TNodePtr(&v44, *(a1 + 48));
        os_unfair_lock_unlock(v19);
        v20 = TNodeFromFINode(v44.fFINode);
        if (v20)
        {
          v21 = TNode::ParentLock(v20);
          os_unfair_lock_lock(v21);
          TNodePtr::TNodePtr(&v43, *(a1 + 48));
          os_unfair_lock_unlock(v21);
          v22 = TNodeFromFINode(v43);
          v23 = atomic_load((TNode::GetNotifierList(v22) + 4));
          LODWORD(v21) = v23 > 0;

          if (!v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
        }

        v40 = TNode::InfoLock(v24);
        os_unfair_lock_lock(v40);
        v42 = *(a1 + 16);
        v41 = *(a1 + 24);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v40);
          os_unfair_lock_lock((v42 + 108));
          *(v42 + 123) &= ~0x4000000u;
          os_unfair_lock_unlock((v42 + 108));
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        else
        {
          os_unfair_lock_unlock(v40);
          os_unfair_lock_lock((v42 + 108));
          *(v42 + 123) &= ~0x4000000u;
          os_unfair_lock_unlock((v42 + 108));
        }

LABEL_48:

        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&buf);
        if ((a4 & 8) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    if ((a4 & 8) == 0)
    {
LABEL_29:
      if ((a4 & 0x10) != 0)
      {
        --*(v50 + 14);
        v28 = atomic_fetch_add((TNode::GetNotifierList(a1) + 12), 0xFFFFFFFF);
        v29 = v28 - 1;
        if (v28 <= 0)
        {
          v30 = LogObj(4);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v29;
            _os_log_impl(&dword_1E5674000, v30, OS_LOG_TYPE_ERROR, "Incorrect ubiquityRegistrations when decrementing: %d", &buf, 8u);
          }
        }

        else if (v28 == 1)
        {
          TNode::SetShouldSyncUbiquityAttributes(a1, 0);
        }
      }

      v31 = v50;
      if (a4)
      {
        v32 = *(v50 + 2);
        v33 = TNodeFromFINode(v32);
        v34 = TNode::ParentLock(v33);
        os_unfair_lock_lock(v34);
        TNodePtr::TNodePtr(&buf, *(v33 + 48));
        os_unfair_lock_unlock(v34);

        if (TNodeFromFINode(buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value))
        {
          v35 = *(TNodeFromFINode(buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value) + 56);
          if (v35)
          {
            TChildrenList::DecrementRegisteredChildrenCount(v35);
          }
        }

        v31 = v50;
      }

      v36 = TDSNotifier::DecrementRegistrationCountForOptions(v31, a4);
      TNodePtr::TNodePtr(&buf, a1);

      if (v36)
      {
        NotifierList = TNode::GetNotifierList(a1);
        TNotifierList::RemoveNotifier(NotifierList, &v50);
      }

      goto LABEL_43;
    }

LABEL_24:
    v26 = atomic_fetch_add((TNode::GetNotifierList(a1) + 8), 0xFFFFFFFF);
    if (v26 <= 0)
    {
      v27 = LogObj(5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v26 - 1;
        _os_log_impl(&dword_1E5674000, v27, OS_LOG_TYPE_ERROR, "Incorrect spotlightRegistrations when decrementing: %d", &buf, 8u);
      }
    }

    --*(v50 + 13);
    atomic_load((TNode::GetNotifierList(a1) + 8));
    goto LABEL_29;
  }

LABEL_43:
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v50);
  StRegistrationLock::~StRegistrationLock(&v51);
  v38 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E5740874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, std::__shared_weak_count *a17, void *a18, TDSNotifier *a19)
{
  os_unfair_lock_unlock(v19);

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v20 - 80));
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a19);
  StRegistrationLock::~StRegistrationLock((v20 - 81));
  _Unwind_Resume(a1);
}

void fstd::optional_err<TString,int>::value_or<TString>(uint64_t a1@<X0>, CFTypeRef *a2@<X1>, TString *a3@<X8>)
{
  if (*(a1 + 8))
  {
    a3->fString.fRef = *a2;
    *a2 = 0;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  }

  else
  {
    a3->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a3, *a1);
  }
}

void ___ZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptions_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3321888768;
  v1[2] = ___ZZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptionsENK3__0clEv_block_invoke;
  v1[3] = &__block_descriptor_40_ea8_32c13_ZTS8TNodePtr_e5_v8__0l;
  v2 = *(a1 + 32);
  ExceptionSafeBlock(v1);
}

id __copy_helper_block_ea8_32c132_ZTSKZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptionsE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void TNotifierList::RemoveNotifier(uint64_t a1, TDSNotifier **a2)
{
  os_unfair_lock_lock((a1 + 64));
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v5 != v4)
  {
    while (*v5 != *a2)
    {
      if (++v5 == v4)
      {
        v5 = *(a1 + 48);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    if (v5 + 1 != v4)
    {
      do
      {
        v6 = v5 + 1;
        TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>(v5, v5 + 1);
        v7 = v5 + 2;
        ++v5;
      }

      while (v7 != v4);
      v4 = *(a1 + 48);
      v5 = v6;
    }

    while (v4 != v5)
    {
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(--v4);
    }

    *(a1 + 48) = v5;
  }

  os_unfair_lock_unlock((a1 + 64));
}

BOOL RemovePrefix(const TString *a1, TString *this)
{
  v4 = TString::BeginsWith(this, a1);
  if (v4)
  {
    Length = CFStringGetLength(a1->fString.fRef);
    TString::SubStringFrom(this, Length, &cf);
    if (&cf != this)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&this->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  return v4;
}

uint64_t MatchesEDSContainerPattern(const TString *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a1->fString.fRef];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 fp_matchesEDSLocation];
  }

  else
  {
    v18.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v18, a1->fString.fRef);
    v4 = *MEMORY[0x1E695E480];
    v5 = *MEMORY[0x1E695E498];
    v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "/private", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    cf = v6;
    v17.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v17, v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    RemovePrefix(&v17, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    v7 = CFStringCreateWithBytesNoCopy(v4, "/var/PersonaVolumes/", 20, 0x8000100u, 0, v5);
    cf = v7;
    v17.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v17, v7);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    v8 = RemovePrefix(&v17, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    if (!v8)
    {
      goto LABEL_13;
    }

    TString::TString(&cf, "/");
    v9 = TString::IndexOf(&v18, &cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (v9 < 1)
    {
      goto LABEL_13;
    }

    TString::SubStringFrom(&v18, v9, &cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v18.fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    v10 = CFStringCreateWithBytesNoCopy(v4, "/Containers/Data/InternalDaemon/", 32, 0x8000100u, 0, v5);
    cf = v10;
    v17.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v17, v10);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    v11 = RemovePrefix(&v17, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    if (!v11)
    {
      goto LABEL_13;
    }

    TString::TString(&cf, "/");
    v12 = TString::IndexOf(&v18, &cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (v12 >= 1)
    {
      TString::SubStringFrom(&v18, v12, &cf);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v18.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      v13 = CFStringCreateWithBytesNoCopy(v4, "/Library/Mobile Documents", 25, 0x8000100u, 0, v5);
      cf = v13;
      v17.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v17, v13);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      if (RemovePrefix(&v17, &v18))
      {
        v3 = 1;
      }

      else
      {
        v15 = CFStringCreateWithBytesNoCopy(v4, "/Library/CloudStorage", 21, 0x8000100u, 0, v5);
        cf = v15;
        v16.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v16, v15);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
        v3 = RemovePrefix(&v16, &v18);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    }

    else
    {
LABEL_13:
      v3 = 0;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  }

  return v3;
}

void sub_1E574101C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);

  _Unwind_Resume(a1);
}

uint64_t TNode::HandleChange(const TString *a1, uint64_t a2)
{
  result = PathEligibleForSynching(a1);
  if (result)
  {
    v5 = TPathName::TPathName(&v59, a1, TPathName::kPOSIXPathNameSeparator);
    TGlobalNodes::BootNode(&v58, v5);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    if (v61 != v60)
    {
      v6 = (v60 + 8 * (v62 >> 9));
      v7 = (*v6 + 8 * (v62 & 0x1FF));
      v8 = *(v60 + (((v63 + v62) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v63 + v62) & 0x1FF);
      while (v7 != v8)
      {
        if (!TNodeFromFINode(v58))
        {
          break;
        }

        v9 = TNodeFromFINode(v58);
        v10 = TNode::InfoLock(v9);
        os_unfair_lock_lock(v10);
        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v10);
        os_unfair_lock_lock((v12 + 108));
        v13 = *(v12 + 123);
        os_unfair_lock_unlock((v12 + 108));
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if ((v13 & 0x20) != 0)
        {
          std::vector<TNodePtr>::push_back[abi:ne200100](&v55, &v58);
          v14 = TNodeFromFINode(v58);
          v15 = TNode::ParentLock(v14);
          os_unfair_lock_lock(v15);
          TNodePtr::TNodePtr(&v64, *(v14 + 48));
          os_unfair_lock_unlock(v15);
          v16 = TNodeFromFINode(v64.fFINode);
          TGlobalNodes::BootNode(&cf2, v16);
          v17 = TNodeFromFINode(cf2);

          if (v16 == v17)
          {
            v27 = TNodeFromFINode(v58);
            v28 = TNode::InfoLock(v27);
            os_unfair_lock_lock(v28);
            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            os_unfair_lock_unlock(v28);
            TFSInfo::Name(v30, &v64);
            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            TPathName::UsersDirectory(&cf2);
            if (CFEqual(v64.fFINode, cf2))
            {
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v64.fFINode);
LABEL_37:
              if ((a2 & 0x200) != 0)
              {
                v37 = TNodeFromFINode(v58);
                TNode::HandleSync(v37, 0x1000000);
              }

              v38 = TNodeFromFINode(v58);
              TNode::FindChild(v38, v7, 0, 0, &v64.fFINode);
              goto LABEL_12;
            }

            v32 = TNodeFromFINode(v58);
            v33 = TNode::InfoLock(v32);
            os_unfair_lock_lock(v33);
            v35 = *(v32 + 16);
            v34 = *(v32 + 24);
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            os_unfair_lock_unlock(v33);
            TFSInfo::Name(v35, &v53);
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            TPathName::VolumesDirectory(&v52);
            v36 = CFEqual(v53.fString.fRef, v52.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v52.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v53.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v64.fFINode);
            if (v36)
            {
              goto LABEL_37;
            }
          }
        }

        v18 = TNodeFromFINode(v58);
        TNode::FindChildButDontSynchronize(v18, v7, &v64.fFINode);
LABEL_12:
        TNodePtr::operator=(&v58, &v64.fFINode);

        v19 = TNodeFromFINode(v58);
        if (v19 != TNodeFromFINode(0))
        {
          v20 = TNodeFromFINode(v58);
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

          if ((v24 & 0x40) != 0)
          {
            v64.fFINode = 0;
            v25 = TNodeFromFINode(v58);
            cf2 = 0;
            if (TNode::FollowAlias(v25, &v64, &cf2, 8))
            {
              v26 = 0;
            }

            else
            {
              v26 = v64.fFINode;
            }

            cf2 = v26;
            TNodePtr::operator=(&v58, &cf2);
          }
        }

        v7 = (v7 + 8);
        if ((v7 - *v6) == 4096)
        {
          v31 = v6[1];
          ++v6;
          v7 = v31;
        }
      }
    }

    if (TNodeFromFINode(v58))
    {
      v39 = TNodeFromFINode(v58);
      v40 = TNode::InfoLock(v39);
      os_unfair_lock_lock(v40);
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v40);
      os_unfair_lock_lock((v42 + 108));
      v43 = *(v42 + 123);
      os_unfair_lock_unlock((v42 + 108));
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if ((v43 & 0x20) != 0)
      {
        std::vector<TNodePtr>::push_back[abi:ne200100](&v55, &v58);
      }

      if ((a2 & 0x200) != 0)
      {
        v45 = TNodeFromFINode(v58);
        v46 = TNode::ParentLock(v45);
        os_unfair_lock_lock(v46);
        TNodePtr::TNodePtr(&v64, *(v45 + 48));
        os_unfair_lock_unlock(v46);
        if (TNodeFromFINode(v64.fFINode))
        {
          v47 = TNodeFromFINode(v64.fFINode);
          TNode::RequestSynchronize(v47, 0x1000000);
        }
      }

      else
      {
        v44 = TNodeFromFINode(v58);
        TNode::HandleListeners(v44, a2);
      }
    }

    v49 = v55;
    for (i = v56; i != v49; i -= 8)
    {
      v50 = *(i - 8);
      v51 = TNodeFromFINode(v50);
      TNode::HandleRecursiveListeners(v51);
    }

    v64.fFINode = &v55;
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v64);

    return std::deque<TString>::~deque[abi:ne200100](&v59);
  }

  return result;
}

void sub_1E57415C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  os_unfair_lock_unlock(v16);
  *(v17 - 72) = &a12;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100]((v17 - 72));

  std::deque<TString>::~deque[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void TNode::RecursiveChildrenAndSelf(TNode *this@<X0>, void *a2@<X8>)
{
  v2 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  operator new();
}

void sub_1E574179C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(TNode const*)>::~__value_func[abi:ne200100](va);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(TNode const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1E5741890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void TNode::SubscribeForFSNotification(TNode *this)
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
    v6 = *(this + 7);

    TChildrenList::SubscribeWithKQueue(v6);
  }
}

uint64_t ___ZN5TNode22DoExternalRegistrationERK4TRefIP11TDSNotifier20TRetainReleasePolicyIS2_EEb_block_invoke(uint64_t a1)
{
  result = TNodeFromFINode(*(a1 + 32));
  if ((atomic_fetch_and((result + 88), 0xFFDFu) & 0x20) != 0)
  {
    v3 = TNodeFromFINode(*(a1 + 32));

    return TNode::HandleSync(v3, 20971520);
  }

  return result;
}

id __copy_helper_block_ea8_32c94_ZTSKZN5TNode22DoExternalRegistrationERK4TRefIP11TDSNotifier20TRetainReleasePolicyIS2_EEbE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

const void **TNode::ExternalUnRegistrationProper(uint64_t a1, int a2, uint64_t a3)
{
  v6 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v6);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  v9 = TFSInfo::CopySFBrowserRef(v8);
  v14 = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    TNode::CloseNodeBrowserIfNecessary(a1, 1);
    v11 = TNode::InfoLock(v10);
    os_unfair_lock_lock(v11);
    v12 = *(a1 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v11);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      os_unfair_lock_unlock(v11);
    }

    TNode::RemoveNWNode(a2, a3);
  }

  return TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v14);
}

void sub_1E5741AE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::RemoveNWNode(int a1, uint64_t a2)
{
  v5 = a2;
  NWMapSpinlock();
  os_unfair_lock_lock(&_MergedGlobals_3);
  NWNodeMap = TNode::GetNWNodeMap(a1);
  v4 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::find<__SFNode *>(NWNodeMap, &v5);
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(NWNodeMap, v4, v6);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>>>>::~unique_ptr[abi:ne200100](v6);
  }

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

void TNode::DoExternalUnRegistration(TNode *this)
{
  NotifierList = TNode::GetNotifierList(this);
  v4 = *(NotifierList + 24);
  v3 = *(NotifierList + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock(v4);
  v5 = *(v4 + 4);
  os_unfair_lock_unlock(v4);
  if (v5 == 1)
  {
    TNode::UnsubscribeForFSNotification(this);
    os_unfair_lock_lock(v4);
    *(v4 + 4) = 0;
    os_unfair_lock_unlock(v4);
  }

  v6 = TNode::VirtualType(this);
  os_unfair_lock_lock(v4);
  v7 = *(v4 + 5);
  os_unfair_lock_unlock(v4);
  if (v7 == 1)
  {
    v30.fFINode = 0;
    if (TNode::IsNetworkNode(this, 0x6E747362))
    {
      TGlobalNodes::NetworkSidebarNode(&v29);

      v9 = TFSInfo::CopyNetworkSidebarBrowserRef(v8);
    }

    else if (TNode::IsNetworkNode(this, 0x6E74776B))
    {
      TGlobalNodes::NetworkNearbyNode(&v28);

      v9 = TFSInfo::CopyNetworkNearbyBrowserRef(v12);
    }

    else
    {
      IsNetworkNode = TNode::IsNetworkNode(this, 0x6D74726D);
      if (!IsNetworkNode)
      {
        v18 = TNode::InfoLock(IsNetworkNode);
        os_unfair_lock_lock(v18);
        v19 = *(this + 3);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v18);
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          os_unfair_lock_unlock(v18);
        }

        IsNetworkNeighborhood = TNode::IsNetworkNeighborhood(this);
        if (IsNetworkNeighborhood)
        {
          v21 = TNode::InfoLock(IsNetworkNeighborhood);
          os_unfair_lock_lock(v21);
          v23 = *(this + 2);
          v22 = *(this + 3);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v21);
          v24 = TFSInfo::CopySFBrowserRef(v23);
          v30.fFINode = v24;
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v25 = TNode::InfoLock(v24);
          os_unfair_lock_lock(v25);
          v26 = *(this + 3);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            os_unfair_lock_unlock(v25);
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          else
          {
            os_unfair_lock_unlock(v25);
          }
        }

        RootNode = 0;
        goto LABEL_24;
      }

      TGlobalNodes::AirDropNode(&v27);

      v9 = TFSInfo::CopyAirDropBrowserRef(v14);
    }

    v30.fFINode = v9;
    if (!v9)
    {
LABEL_26:
      TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(&v30.fFINode);
      goto LABEL_27;
    }

    RootNode = SFBrowserGetRootNode();
LABEL_24:
    if (v30.fFINode)
    {
      v16 = TNode::VirtualType(this);
      TNode::ExternalUnRegistrationProper(this, v16, RootNode);
    }

    goto LABEL_26;
  }

  if (v6 != 27)
  {
    if (!TNode::IsFPv2(this, 1))
    {
      if ((v6 & 0xFE) != 0x18)
      {
        TNodePtr::TNodePtr(&v30, this);
        TProgressMap::RemoveSubscriberForExternalProgress(&v30, v17);

        if (!v3)
        {
          return;
        }

LABEL_28:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return;
      }

      if (!ICloudDriveFPFSEnabled())
      {
LABEL_27:
        if (!v3)
        {
          return;
        }

        goto LABEL_28;
      }
    }

    TChildrenList::StopCollectionStatusObserver(*(this + 7));
    goto LABEL_27;
  }

  os_unfair_lock_lock(v4);
  v10 = *(v4 + 8);
  os_unfair_lock_unlock(v4);
  if (v10)
  {
    [v10 stopObserving];
    os_unfair_lock_lock(v4);
    v11 = *(v4 + 8);
    *(v4 + 8) = 0;

    os_unfair_lock_unlock(v4);
  }

  if (v3)
  {
    goto LABEL_28;
  }
}

void sub_1E5741EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void TNode::UnsubscribeForFSNotification(TNode *this)
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
    v6 = *(this + 7);

    TChildrenList::UnsubscribeWithKQueue(v6);
  }
}

void ___ZN5TNode10RemoveSelfEP14TNodeEventPtrs_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3321888768;
  v2[2] = ___ZZN5TNode10RemoveSelfEP14TNodeEventPtrsENK3__0clEv_block_invoke;
  v2[3] = &__block_descriptor_41_ea8_32c13_ZTS8TNodePtr_e5_v8__0l;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  ExceptionSafeBlock(v2);
}

id __copy_helper_block_ea8_32c48_ZTSKZN5TNode10RemoveSelfEP14TNodeEventPtrsE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void TNode::SendNotifications(TNode *a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v5 = *(v3 + 7);
      TNodePtr::TNodePtr(&v9, a1);
      TNode::SendNotification(a1, 2, &v9.fFINode, v5, 0);

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }
}

uint64_t TNode::Operate(TOperation **a1, void *a2)
{
  *a2 = 0;
  v2 = *a1;
  if (v2)
  {
    RequestedOperation = TOperation::GetRequestedOperation(v2);
    if (RequestedOperation <= 0xF && ((1 << RequestedOperation) & 0x8C00) != 0)
    {
      operator new();
    }

    operator new();
  }

  return 4294959224;
}

uint64_t TNode::Move(TNode *this, const TNodePtr *a2, TDSOperationRecord *a3, TOperation *a4, TNodeEventPtrs *a5, const TString *a6)
{
  cf[129] = *MEMORY[0x1E69E9840];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v12 = TNode::ParentLock(this);
  os_unfair_lock_lock(v12);
  TNodePtr::TNodePtr(cf, *(this + 6));
  os_unfair_lock_unlock(v12);
  v13 = TNodeFromFINode(cf[0]);
  LOBYTE(v13) = v13 == TNodeFromFINode(a2->fFINode);

  if (v13)
  {
    goto LABEL_17;
  }

  TNodePtr::TNodePtr(cf, this);
  v15 = TNode::NodesOnSameVolume(cf, a2, v14);

  if (!v15)
  {
    *(v64 + 6) = -8062;
LABEL_17:
    v20 = *(v64 + 6);
    goto LABEL_18;
  }

  v62 = &stru_1F5F42870;
  v16 = CFRetain(&stru_1F5F42870);
  if (!a6)
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
    TFSInfo::LogicalName(cf, v19);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v62, cf);
    CFRetain(&stru_1F5F42870);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    cf[0] = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(cf);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    a6 = &v62;
  }

  v20 = TNode::CopyPathToCBuffer(this, cf, 1024);
  *(v64 + 6) = v20;
  if (v20)
  {
    goto LABEL_15;
  }

  v21 = TNodeFromFINode(a2->fFINode);
  v20 = TNode::CopyPathToCBuffer(v21, __dst, 1024);
  *(v64 + 6) = v20;
  if (v20)
  {
    goto LABEL_15;
  }

  if (strlcat(__dst, "/", 0x400uLL) <= 0x3FF)
  {
    theString[0] = 0;
    TNode::CopyURL(this, theString);
    v61 = theString[0];
    v24 = strlen(__dst);
    v60 = CFURLCreateFromFileSystemRepresentation(0, __dst, v24, 1u);
    if (TDSOperationRecord::GetResolution(a3) == 3 || (TDSOperationRecord::TargetName(a3, theString), Length = CFStringGetLength(theString[0]), TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString), Length >= 1))
    {
      operator new();
    }

    TFileCoordinationRecord::TFileCoordinationRecord(theString, *(a4 + 658));
    v26 = theString[3];
    v27 = v26;
    if (!*(v64 + 6))
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = ___ZN5TNode4MoveERK8TNodePtrR18TDSOperationRecordR10TOperationR14TNodeEventPtrsPK7TString_block_invoke;
      v44[3] = &unk_1E877F300;
      v46 = &v55;
      v47 = &v63;
      v48 = this;
      v49 = a5;
      v28 = v26;
      v45 = v28;
      v50 = a4;
      v51 = a2;
      v52 = 0;
      v53 = a3;
      v54 = a6;
      v29 = MEMORY[0x1E692D6D0](v44);
      v30 = TString::operator NSString *(&v60);
      v31 = as_ns<TString>(&a6->fString.fRef);
      v32 = v31;
      v33 = [v30 URLByAppendingPathComponent:v31];

      v34 = TString::operator NSString *(&v61);
      v43 = 0;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = ___ZN5TNode4MoveERK8TNodePtrR18TDSOperationRecordR10TOperationR14TNodeEventPtrsPK7TString_block_invoke_2;
      v41[3] = &unk_1E877F328;
      v35 = v29;
      v42 = v35;
      [(__CFString *)v28 coordinateWritingItemAtURL:v34 options:2 writingItemAtURL:v33 options:0 error:&v43 byAccessor:v41];
      v36 = v43;

      if (!*(v64 + 6))
      {
        v38 = TCFURLInfo::TranslateCFError(v36, v37);
        *(v64 + 6) = v38;
      }

      if ((v56[3] & 1) == 0)
      {
        v39 = LogObj(2);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *(v64 + 6);
          *buf = 67109378;
          v68 = v40;
          v69 = 2114;
          v70 = v36;
          _os_log_impl(&dword_1E5674000, v39, OS_LOG_TYPE_ERROR, "TNode::Move coordination failed to call block. status = %d, error: %{public}@", buf, 0x12u);
        }
      }

      _Block_object_dispose(&v55, 8);
    }

    TFileCoordinationRecord::~TFileCoordinationRecord(theString);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v60);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v61);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62);
    goto LABEL_17;
  }

  v20 = 4294965186;
LABEL_15:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62);
LABEL_18:
  _Block_object_dispose(&v63, 8);
  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1E57427B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, const void *a40, const void *a41, const void *a42, char a43)
{
  _Block_object_dispose(&a30, 8);

  TFileCoordinationRecord::~TFileCoordinationRecord(&a34);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a40);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a41);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a42);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void ___ZN5TNode4MoveERK8TNodePtrR18TDSOperationRecordR10TOperationR14TNodeEventPtrsPK7TString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E57430D0(_Unwind_Exception *a1, TPropertyValue *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v21 - 128));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v21 - 120));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v21 - 144));

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v21 - 104));
  v23 = *(v21 - 88);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::MoveToParent(TNode *this, const TNodePtr *a2, const TString *a3)
{
  v5 = TNode::ParentLock(this);
  os_unfair_lock_lock(v5);
  TNodePtr::TNodePtr(&v46, *(this + 6));
  os_unfair_lock_unlock(v5);
  v6 = TNode::GetFIProvider(this);
  TNode::StPopulating::StPopulating(&v45, &v46.fFINode, 0);
  TNode::StPopulating::StPopulating(v44, &a2->fFINode, 0);
  if (TNodeFromFINode(v46.fFINode))
  {
    v43.fFINode = v46.fFINode;
    v7 = TOperation::OperationLock(v43.fFINode);
    std::mutex::lock(v7);
    v8 = TNode::Readers(this);
    v9 = TNode::Writers(this);
    v10 = TNode::ChildWriters(this);
    v11 = v9 + v8 + v10 + TNode::ReadersBelow(this);
    while (TNodeFromFINode(v43.fFINode) && v11 != 0)
    {
      v13 = TNodeFromFINode(v43.fFINode);
      TNode::DecrementReadersBelowBy(v13, v11);
      v14 = TNodeFromFINode(v43.fFINode);
      v15 = TNode::ParentLock(v14);
      os_unfair_lock_lock(v15);
      TNodePtr::TNodePtr(&v42, *(v14 + 48));
      os_unfair_lock_unlock(v15);
      TNodePtr::operator=(&v43.fFINode, &v42.fFINode);
    }

    std::mutex::unlock(v7);
    v16 = TNodeFromFINode(v46.fFINode);
    TNodePtr::TNodePtr(&v42, this);
    TChildrenList::RemoveChild(*(v16 + 56), &v42);
  }

  else
  {
    v11 = 0;
  }

  v41 = 0;
  v17 = TNodeFromFINode(a2->fFINode);
  TNodePtr::TNodePtr(&v43, this);
  TNode::AddNewChild(&v40, v17, &v43, &v41, 1);

  v19 = TNode::ParentLock(v18);
  os_unfair_lock_lock(v19);
  TNodePtr::TNodePtr(&v43, *(this + 6));
  os_unfair_lock_unlock(v19);
  v21 = TOperation::OperationLock(v20);
  std::mutex::lock(v21);
  while (TNodeFromFINode(v43.fFINode) && v11 != 0)
  {
    v23 = TNodeFromFINode(v43.fFINode);
    TNode::IncrementReadersBelowBy(v23, v11);
    v24 = TNodeFromFINode(v43.fFINode);
    v25 = TNode::ParentLock(v24);
    os_unfair_lock_lock(v25);
    TNodePtr::TNodePtr(&v42, *(v24 + 48));
    os_unfair_lock_unlock(v25);
    TNodePtr::operator=(&v43.fFINode, &v42.fFINode);
  }

  std::mutex::unlock(v21);

  TNode::StPopulating::~StPopulating(v44);
  TNode::StPopulating::~StPopulating(&v45.fFINode);
  v26 = UseFileProviderFramework();
  if (v26)
  {
    v27 = TNode::InfoLock(v26);
    os_unfair_lock_lock(v27);
    v29 = *(this + 2);
    v28 = *(this + 3);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v27);
    os_unfair_lock_lock((v29 + 108));
    v30 = *(v29 + 123);
    os_unfair_lock_unlock((v29 + 108));
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if ((v30 & 0x20) != 0)
    {
      v32 = TNode::GetFIProvider(this);
      v33 = v32;
      v34 = 0;
      v35 = v32 != 0;
      if (v6 && v32)
      {
        v36 = [v32 identifier];
        v37 = [v6 identifier];
        v34 = [v36 isEqualToString:v37] ^ 1;
      }

      v31 = (v6 != 0) ^ v35 | v34;
    }

    else
    {
      v31 = 0;
    }

    TNodePtr::TNodePtr(&v45, this);
    v44[0] = 0x4014000000000000;
    TNode::UpdateFPItemIfNeeded(&v45.fFINode, v44, 1, 1u, 1, v39);

    if (v31)
    {
      TNode::RestartCollections(this, 1);
      TNode::RecursiveSyncOfObserveNodes(this);
    }
  }

  return 0;
}

uint64_t TNode::Readers(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 4);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::Writers(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 12);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::ChildWriters(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::ReadersBelow(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

void TNode::DecrementReadersBelowBy(TNode *this, int a2)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  OperationLock[2]._os_unfair_lock_opaque -= a2;
  os_unfair_lock_unlock(OperationLock);

  TNode::ReleaseOperationLockWhenDone(this);
}

void TNode::IncrementReadersBelowBy(TNode *this, int a2)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  OperationLock[2]._os_unfair_lock_opaque += a2;

  os_unfair_lock_unlock(OperationLock);
}

void TNode::RestartCollections(TNode *this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = LogObj(4);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      TNode::GetPath(this, 1, &v9);
      v6 = SanitizedPath(&v9);
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_DEFAULT, "Recursively restarting collections for %{public}@", buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
    }

    TNode::RecursiveChildrenAndSelf(this, &v9);
  }

  if (v5)
  {
    TNode::GetPath(this, 1, &v9);
    v7 = SanitizedPath(&v9);
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_DEFAULT, "Restarting collection for %{public}@", buf, 0xCu);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  }

  TNode::RestartObservingCollection(this);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E5743BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

uint64_t TNode::RequestSuboperation(uint64_t a1, int a2)
{
  v3 = a2;
  if (a1)
  {
    std::allocate_shared[abi:ne200100]<TSuboperationRequest,std::allocator<TSuboperationRequest>,NodeSuboperation &,0>();
  }

  return 4294959224;
}

void sub_1E5743D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::RequestSuboperation(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, FINode **a6)
{
  if (!a1)
  {
    return 4294959224;
  }

  v9 = TNodeFromFINode(*a6);
  switch(a2)
  {
    case -1:
      if (v9)
      {
        return 4294959224;
      }

      goto LABEL_13;
    case 20:
      if (v9 | a4)
      {
        return 4294959224;
      }

LABEL_13:
      std::allocate_shared[abi:ne200100]<TSuboperationRequest,std::allocator<TSuboperationRequest>,NodeSuboperation &,__CFString const*&,int (*&)(__CFString const*,__CFString const*,NodeClientContext *,__CFString const**),NodeClientContext *&,TNodePtr &,OpaquePropertyListRef *&,0>();
    case 22:
      if (!v9)
      {
        return 4294959224;
      }

      break;
    default:
      if (v9)
      {
        return 4294959224;
      }

      break;
  }

  if (a3)
  {
    goto LABEL_13;
  }

  return 4294959224;
}

void sub_1E5743E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::RemoveUnmarkedChildren(TNode *this, TNodeEventPtrs *a2)
{
  TNodePtr::TNodePtr(&v26, this);
  TNode::StPopulating::StPopulating(v25, &v26.fFINode, 0);

  v4 = *(this + 7);
  if (!v4 || (v6 = *(v4 + 64), v5 = *(v4 + 72), v5 == v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *--v5;
      v9 = TNodeFromFINode(v8);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      os_unfair_lock_lock((v12 + 108));
      v13 = *(v12 + 123);
      os_unfair_lock_unlock((v12 + 108));
      if ((v13 & 0x80000000) == 0)
      {
        v14 = atomic_load((TNodeFromFINode(*v5) + 88));
        if ((v14 & 0x100) == 0)
        {
          if (*(v12 + 120) == 28)
          {
            os_unfair_lock_lock((v12 + 104));
            v15 = *(v12 + 80);
            if (v15)
            {
              os_unfair_lock_lock(v15 + 18);
              v16 = v15[76];
              os_unfair_lock_unlock(v15 + 18);
              if (v16 == 1)
              {
                v15 = *(v15 + 3);
              }

              else
              {
                v15 = 0;
              }
            }

            os_unfair_lock_unlock((v12 + 104));
            v24 = 0;
            v17 = [v15 rootURL];
            v18 = v17;
            if (v17)
            {
              v26.fFINode = v17;
              TNode::GetNodeFromURL(&v26, &v24, 0x80u);
            }

            if (TNodeFromFINode(v24))
            {
              v19 = TNodeFromFINode(v24);
              TNode::DetachFPItemsMetadata(v19);
            }

            if ([v15 isiCloudDriveProvider])
            {
              if ([v15 isDataSeparatedDomain])
              {
                TGlobalNodes::DataSeparatedICloudLibrariesContainerNode(&v26);
              }

              else
              {
                TGlobalNodes::iCloudLibrariesContainerNode(&v26);
              }

              if (TNodeFromFINode(v26.fFINode))
              {
                v20 = TNodeFromFINode(v26.fFINode);
                TNode::RemoveAllChildren(v20, 0, 0);
                atomic_fetch_and((TNodeFromFINode(v26.fFINode) + 88), 0xFFF7u);
                atomic_fetch_and((TNodeFromFINode(v26.fFINode) + 88), 0xFFEFu);
              }
            }
          }

          v21 = TNodeFromFINode(*v5);
          TNode::CloseNodeBrowserIfNecessary(v21, 0);
          v22 = TNodeFromFINode(*v5);
          TNode::Remove(v22, 0, a2);
          v7 = 1;
        }
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    while (v5 != v6);
  }

  TNode::StPopulating::~StPopulating(v25);
  return v7 & 1;
}

void sub_1E57441C4(_Unwind_Exception *a1, uint64_t a2, void *a3, ...)
{
  va_start(va, a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

void TNode::DetachFPItemsMetadata(TNode *this)
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
  TFSInfo::UpdateFileProvider(v4, 0);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TNode::RecursiveChildrenAndSelf(this, &v5);
}

void sub_1E5744318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void TNode::Remove(TNode *this, char a2, TNodeEventPtrs *a3)
{
  v6 = TNode::ParentLock(this);
  os_unfair_lock_lock(v6);
  TNodePtr::TNodePtr(&v7, *(this + 6));
  os_unfair_lock_unlock(v6);
  TNode::StPopulating::StPopulating(v8, &v7.fFINode, 0);

  if (*(this + 7))
  {
    TNode::RemoveAllChildren(this, a2, a3);
  }

  TNode::RemoveSelf(this, a3);
  TNode::StPopulating::~StPopulating(v8);
}

void sub_1E57443E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

TNode *TNode::UnmarkChildren(TNode *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);
    while (v2 != v3)
    {
      v4 = *v2++;
      this = TNodeFromFINode(v4);
      atomic_fetch_and(this + 44, 0xFEFFu);
    }
  }

  return this;
}

void TNode::RestartObservingCollection(TNode *this)
{
  TNode::GetVolumeInfo(this, &v4);
  v2 = TFSVolumeInfo::GetSynchingGCDQueue(v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN5TNode26RestartObservingCollectionEv_block_invoke;
  block[3] = &__block_descriptor_40_ea8_32c48_ZTSKZN5TNode26RestartObservingCollectionEvE3__0_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5744518(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5TNode26RestartObservingCollectionEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (TChildrenList::StopCollectionStatusObserver(*(v1 + 56)))
  {
    TNodePtr::TNodePtr(buf, v1);
    v10 = 0x4014000000000000;
    TNode::UpdateFPItemIfNeeded(buf, &v10, 1, 1u, 1, &v11);
    if (v12)
    {
      fRef = v11.fString.fRef;
    }

    else
    {
      fRef = 0;
    }

    if (v12)
    {
      v3 = 0;
    }

    else
    {
      v3 = v11.fString.fRef;
    }

    if (v3)
    {
      TNode::FPItemsCollection(v1, v3);
    }

    else
    {
      TNode::FPItemsCollectionFromURL(v1);
    }
    v4 = ;
    if (v4)
    {
      v5 = *(v1 + 56);
      TNodePtr::TNodePtr(buf, v1);
      TNode::GetVolumeInfo(v1, &v11);
      v6 = TFSVolumeInfo::GetSynchingGCDQueue(v11.fString.fRef);
      TChildrenList::StartCollectionStatusObserver(v5, v4, buf, v6, 1);

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    else
    {
      v7 = LogObj(4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        TNode::GetPath(v1, 1, &v11);
        v8 = SanitizedPath(&v11);
        *buf = 138543362;
        *&buf[4] = v8;
        _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_ERROR, "Restart observing failed, no collection found for node %{public}@", buf, 0xCu);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E5744700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void TNode::ClearFPItems(TNode *this)
{
  if (!TNode::IsFPv2(this, 1))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    TNode::CopyChildren(this, v8);
    v2 = v8[0];
    v3 = v8[1];
    while (v2 != v3)
    {
      v4 = *v2;
      v12 = v4;
      v13 = 0;
      if (v10 >= v11)
      {
        v7 = std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__emplace_back_slow_path<std::pair<TNodePtr,FPItem * {__strong}>>(&v9, &v12);
      }

      else
      {
        v5 = TNodePtr::TNodePtr(v10, &v12);
        v6 = v13;
        v13 = 0;
        v5[1] = v6;
        v7 = v5 + 2;
      }

      v10 = v7;

      ++v2;
    }

    v12 = v8;
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v12);
    TNode::AttachFPItemsMetadata(&v9, 0, 1);
    TChildrenList::StopCollectionStatusObserver(*(this + 7));
    v8[0] = &v9;
    std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](v8);
  }
}

void sub_1E5744894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void TNode::UpdateFPItemsMetadata(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v4 = TNode::InfoLock(a1);
    os_unfair_lock_lock(v4);
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
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

    if (FPProviderDomainClass() && UseFileProviderFramework())
    {
      v8 = TChildrenList::GetCollectionStatusObserver(*(a1 + 56));
      if (v8 || (TNode::GetFIProvider(a1), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
      {
        TNode::GetVolumeInfo(a1, &v18);
        v10 = TFSVolumeInfo::GetSynchingGCDQueue(v18);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEE_block_invoke;
        block[3] = &__block_descriptor_64_ea8_32c90_ZTSKZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEEE3__0_e5_v8__0l;
        v11 = v8;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&v12, *a2, a2[1], (a2[1] - *a2) >> 3);
        v16 = v11;
        memset(v17, 0, sizeof(v17));
        std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(v17, v12, v13, (v13 - v12) >> 3);
        dispatch_async(v10, block);
        v20 = &v12;
        std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v20);

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v11 = v17;
        std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v11);
      }
    }
  }
}

void ___ZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = a1 + 40;
    v4 = *(a1 + 32);

    [v4 updateNodesFPItemsFromCollection:v3];
  }

  else
  {
    v7[3] = v1;
    v7[4] = v2;
    v5 = 0x4024000000000000;
    TNode::UpdateFPItemsIfNeeded((a1 + 40), &v5, 1, 1u, 1, v6);
    v7[0] = v6;
    std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](v7);
  }
}

uint64_t __copy_helper_block_ea8_32c90_ZTSKZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEEE3__0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  a1[5] = 0;
  a1[4] = v4;
  a1[6] = 0;
  a1[7] = 0;
  return std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>((a1 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void __destroy_helper_block_ea8_32c90_ZTSKZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEEE3__0(uint64_t a1)
{
  v2 = (a1 + 40);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v2);
}

id *TNode::UpdateFPItemsMetadata(std::vector<TNodePtr> const&)::$_0::~$_0(id *a1)
{
  v3 = a1 + 1;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v3);

  return a1;
}

void TNode::Synchronize(TGlobalNodes *a1, void *a2, int a3)
{
  if ((a3 & 0x10000) != 0)
  {
    v4 = 268959744;
  }

  else
  {
    v4 = 285212672;
  }

  if (*a2)
  {
LABEL_7:

    TNode::RequestSynchronize(a1, 0);
    return;
  }

  v5 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v5);
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v5);
    v8 = *(v7 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(v5);
    if (*(v7 + 120))
    {
      goto LABEL_7;
    }
  }

  TNode::HandleSync(a1, v4);
}

void TNode::FPItemFromURLWithTimeout(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = FPItemManagerInstance();

    if (v6)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, a1);
      std::__function::__value_func<void ()(FPItem *,NSError *)>::__value_func[abi:ne200100](v9, a2);
      v10 = 0;
      operator new();
    }
  }

  if (*(a2 + 24))
  {
    std::function<void ()(FPItem *,NSError *)>::operator()(a2, 0, 0);
  }

  *a3 = 0;
  a3[1] = 0;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E5744EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::__function::__value_func<void ()(__CFURL const*,FPItem *,NSError *)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](va1);
  TAutoRef<__CFArray *,TRetainReleasePolicy<__CFArray *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void std::function<void ()(FPItem *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

uint64_t TNode::FPItemsFromURLsWithTimeout(__CFArray const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(__CFURL const*,FPItem *,NSError *)> const&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 24);
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

void std::function<void ()(FPProviderDomain *,FPItem *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(v7, &v10, &v9, &v8);
}

uint64_t TNode::RootFPItemsForDomainsWithTimeout(NSArray<FPProviderDomain *> *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPProviderDomain *,FPItem *,NSError *)> const&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<void ()(FPProviderDomain *,FPItem *,NSError *)>::~__value_func[abi:ne200100](a1 + 16);

  return a1;
}

uint64_t TNode::RootFPItemsForDomainsWithTimeout(NSArray<FPProviderDomain *> *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPProviderDomain *,FPItem *,NSError *)> const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void TNode::RootNodeForFPDomain(TNode *this@<X0>, const TString *a2@<X1>, TNodePtr *a3@<X8>)
{
  v3 = a2;
  v57 = *MEMORY[0x1E69E9840];
  if ((UseFileProviderFramework() & 1) != 0 && FPProviderDomainClass())
  {
    Length = CFStringGetLength(*this);
    TGlobalNodes::AllProvidersNode(&v50);
    v6 = TNodeFromFINode(v50);
    if ((TNode::IsPopulated(v6) & 1) == 0)
    {
      if (Length)
      {
        v7 = LogObj(4);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_15;
        }

        LOWORD(buf) = 0;
        v8 = "Providers not yet loaded perform manual lookup for other";
        v9 = v7;
        v10 = 2;
      }

      else
      {
        v7 = LogObj(4);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_15;
        }

        v12 = "Main";
        if (v3)
        {
          v12 = "DataSeparated";
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v12;
        v8 = "Providers not loaded perform manual lookup for %{public}s iCloud";
        v9 = v7;
        v10 = 12;
      }

      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_INFO, v8, &buf, v10);
LABEL_15:

      operator new();
    }

    buf = 0uLL;
    v56 = 0;
    TNode::StPopulating::StPopulating(cf1, &v50, 0);
    v13 = *(TNodeFromFINode(v50) + 56);
    if (v13)
    {
      v14 = (v13 + 64);
    }

    else
    {
      v14 = &TNode::GetChildren(void)const::sEmptyList;
    }

    if (&buf != v14)
    {
      std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&buf, *v14, v14[1], v14[1] - *v14);
    }

    TNode::StPopulating::~StPopulating(cf1);
    v15 = *(&buf + 1);
    v16 = buf;
    if (buf != *(&buf + 1))
    {
      do
      {
        v17 = TNodeFromFINode(*v16);
        v18 = TNode::GetFIProvider(v17);
        v19 = [v18 domain];
        if (v19 && ([v18 domain], v20 = objc_claimAutoreleasedReturnValue(), v21 = IsDefaultFPDomain(v20), v20, v19, v21))
        {
        }

        else if (Length)
        {
          v22 = [v18 identifier];
          *cf1 = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(cf1, v22);

          v23 = CFEqual(*cf1, *this) == 0;
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(cf1);

          if (!v23)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v3)
          {
            v24 = [v18 isDataSeparatedDomain];
          }

          else
          {
            v24 = [v18 isMainiCloudDriveDomain];
          }

          v25 = v24;

          if (v25)
          {
            goto LABEL_34;
          }
        }

        ++v16;
      }

      while (v16 != v15);
      v16 = v15;
LABEL_34:
      v15 = *(&buf + 1);
    }

    if (v16 == v15)
    {
      TNodePtr::TNodePtr(v54, 0);
    }

    else
    {
      *cf1 = *v16;
      cf1[8] = 1;
      TNodePtr::TNodePtr(v54, cf1);
      if (cf1[8])
      {
      }
    }

    if (!Length && TNodeFromFINode(*v54))
    {
      v26 = LogObj(4);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        if (v3)
        {
          v27 = "Enterprise";
        }

        else
        {
          v27 = "";
        }

        v28 = TNodeFromFINode(*v54);
        v29 = TNode::GetFIProvider(v28);
        v30 = [v29 identifier];
        *cf1 = 136446466;
        *&cf1[4] = v27;
        v52 = 2114;
        v53 = v30;
        _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_INFO, "FPProvider for %{public}s iCloud Drive is %{public}@", cf1, 0x16u);
      }
    }

    if (TNodeFromFINode(*v54))
    {
      v31 = TNodeFromFINode(*v54);
      v32 = TNode::GetFIProvider(v31);
      v33 = [v32 supportsEnumeration];

      if (v33)
      {
        v34 = TNodeFromFINode(*v54);
        v35 = TNode::GetFIProvider(v34);
        v36 = [v35 domain];
        v37 = [v36 isEnabled];

        if (v37)
        {
          TNodePtr::TNodePtr(a3, v54);
        }

        else
        {
          v49.fFINode = 0;
          v42 = [v35 rootURL];
          if (v42)
          {
            if ([v35 isiCloudDriveProvider])
            {
              v43 = [v42 URLByAppendingPathComponent:@"com~apple~CloudDocs" isDirectory:1];

              v42 = v43;
            }

            *cf1 = v42;
            TNode::GetNodeFromURL(cf1, &v49.fFINode, 0);
            TNodePtr::TNodePtr(a3, &v49);
          }

          else
          {
            v44 = LogObj(4);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = TNodeFromFINode(*v54);
              v46 = TNode::GetFIProvider(v45);
              *cf1 = 138543362;
              *&cf1[4] = v46;
              _os_log_impl(&dword_1E5674000, v44, OS_LOG_TYPE_ERROR, "FPProvider storageURLs is empty for %{public}@", cf1, 0xCu);
            }

            TNodePtr::TNodePtr(a3, 0);
          }
        }

        goto LABEL_70;
      }
    }

    if (Length)
    {
      v38 = LogObj(4);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = *this;
        *cf1 = 138543362;
        *&cf1[4] = v39;
        v40 = v39;
        _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_INFO, "Could not find a provider for %{public}@ ", cf1, 0xCu);
      }

      goto LABEL_64;
    }

    if (v3)
    {
      v38 = LogObj(4);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *cf1 = 0;
        v41 = "Could not find a provider which is isDataSeparatedDomain";
LABEL_63:
        _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_INFO, v41, cf1, 2u);
      }
    }

    else
    {
      v38 = LogObj(4);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *cf1 = 0;
        v41 = "Could not find a provider which is isMainiCloudDriveDomain";
        goto LABEL_63;
      }
    }

LABEL_64:

    TNodePtr::TNodePtr(a3, 0);
LABEL_70:

    *cf1 = &buf;
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](cf1);

    v47 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = *MEMORY[0x1E69E9840];

  TNodePtr::TNodePtr(a3, 0);
}

void sub_1E5745B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  a25 = (v31 - 144);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a25);

  _Unwind_Resume(a1);
}

void ___ZN5TNode19RootNodeForFPDomainERK7TStringb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v8)
  {
    v9 = LogObj(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v8;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "Failed to begin local provider lookup with error %{public}@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (CFStringGetLength(*(a1 + 56)))
  {
    v10 = *(a1 + 56);
    v11 = [v7 objectForKeyedSubscript:v10];
    v12 = *(a1 + 32);
    v13 = *v12;
    *v12 = v11;

    goto LABEL_24;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v7 allValues];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:buf count:16];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = *v24;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v23 + 1) + 8 * i);
      if (*(a1 + 64) == 1)
      {
        if ([*(*(&v23 + 1) + 8 * i) isDataSeparatedDomain])
        {
          objc_storeStrong(*(a1 + 32), v18);
          v19 = LogObj(4);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v21 = [v18 identifier];
            *v27 = 138543362;
            v28 = v21;
            _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_INFO, "FPProvider for Enterprise iCloud Drive is %{public}@", v27, 0xCu);
          }

          goto LABEL_23;
        }

        if (*(a1 + 64))
        {
          continue;
        }
      }

      if ([v18 isMainiCloudDriveDomain])
      {
        objc_storeStrong(*(a1 + 32), v18);
        v19 = LogObj(4);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v18 identifier];
          *v27 = 138543362;
          v28 = v20;
          _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_INFO, "FPProvider for iCloud Drive is %{public}@", v27, 0xCu);
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v23 objects:buf count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_18:

LABEL_24:
  dispatch_semaphore_signal(*(a1 + 48));

  v22 = *MEMORY[0x1E69E9840];
}

void __copy_helper_block_ea8_32c51_ZTSKZN5TNode19RootNodeForFPDomainERK7TStringbE3__1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  *(a1 + 56) = &stru_1F5F42870;
  *(a1 + 48) = v5;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 56), *(a2 + 56));
  *(a1 + 64) = *(a2 + 64);
}

void sub_1E57461AC(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);

  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c51_ZTSKZN5TNode19RootNodeForFPDomainERK7TStringbE3__1(uint64_t a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 56));

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t TNode::RootNodeForFPDomain(TString const&,BOOL)::$_1::~$_1(uint64_t a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 24));

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void TNode::NodeForDomainAndItemID(TNode *this@<X0>, const TString *a2@<X1>, TNodePtr *a3@<X8>)
{
  TNode::RootNodeForFPDomain(this, 0, &v19);
  if (CFStringGetLength(a2->fString.fRef) && TNodeFromFINode(v19) && (NS_FileProviderRootContainerItemIdentifier(), v6 = objc_claimAutoreleasedReturnValue(), v7 = operator==(&a2->fString.fRef, v6), v6, !v7))
  {
    v8 = TNodeFromFINode(v19);
    v9 = TNode::GetFIProvider(v8);
    v10 = [v9 domain];
    v11 = [v10 isEnabled];

    if (v11)
    {
      v12 = v19;
      v13 = TNodeFromFINode(v12);
      v14 = TNode::GetFIProvider(v13);
      v15 = [v14 identifier];
      v20.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v20, v15);

      v16 = FPItemManagerInstance();

      if (v16)
      {
        dispatch_semaphore_create(0);
        operator new();
      }

      v17 = v12;
      v21 = v17;
      v18.fFINode = &v21;
      NodeForProviderWithFPItem(v18, 0, a3);

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);
    }

    else
    {
      TNodePtr::TNodePtr(a3, 0);
    }
  }

  else
  {
    TNodePtr::TNodePtr(a3, &v19);
  }
}

void sub_1E5746548(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v11 = va_arg(va1, const void *);
  FPItemForProviderWithID(TString const&,TString const&)::$_0::~$_0(v9 + 32);
  FPItemForProviderWithID(TString const&,TString const&)::$_0::~$_0(va1);

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void NodeForProviderWithFPItem(TNodePtr a1@<0:X0>, FPItem *a2@<X1>, TNodePtr *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5 && TNodeFromFINode(a1.fFINode->super.isa) && (FPItemManagerInstance(), v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && ([(FPItem *)v5 fileURL], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    a3->fFINode = 0;
    v8 = [(FPItem *)v5 fileURL];
    v15[0] = v8;
    TNode::GetNodeFromURL(v15, &a3->fFINode, 0);

    if (TNodeFromFINode(a3->fFINode))
    {
      v9 = TNodeFromFINode(a3->fFINode);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      v13 = TFSInfo::GetFPItem(v12);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (!v13)
      {
        v17 = a3->fFINode;
        v18 = v5;
        memset(v15, 0, sizeof(v15));
        std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(v15, &v17, &v19, 1uLL);
        TNode::AttachFPItemsMetadata(v15, 1, 1);
        v16 = v15;
        std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v16);
      }
    }
  }

  else
  {
    TNodePtr::TNodePtr(a3, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E57467E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, id a14, id a15)
{
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

const void **TNode::FPItemNodeFromObjectID@<X0>(TNode *this@<X0>, TNodePtr *a2@<X8>)
{
  v13.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v12.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::TString(&cf, "/");
  v5 = TString::IndexOf(this, &cf, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  if (v5 < 0)
  {
    if (&v13 != this)
    {
      TString::SetStringRefAsImmutable(&v13, *this);
    }
  }

  else if (v5)
  {
    TString::SubString(this, 0, v5, &cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v13.fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (v5 < CFStringGetLength(*this) - 1)
    {
      TString::SubStringFrom(this, v5 + 1, &cf);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v12.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    }
  }

  v6 = v13.fString.fRef;
  v7 = [(__CFString *)v6 stringByRemovingPercentEncoding];
  if (v13.fString.fRef != v7)
  {
    TString::SetStringRefAsImmutable(&v13, v7);
  }

  v8 = v12.fString.fRef;
  v9 = [(__CFString *)v8 stringByRemovingPercentEncoding];
  if (v12.fString.fRef != v9)
  {
    TString::SetStringRefAsImmutable(&v12, v9);
  }

  TNode::NodeForDomainAndItemID(&v13, &v12, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
}

void sub_1E5746A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

void TNode::ResolveBRContainer(TNode *this)
{
  if (ICloudDriveFPFSEnabled())
  {
    TNode::CFURL(this, &v14);
    v2 = v14.fFINode;
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v14.fFINode);
  }

  else
  {
    v2 = 0;
  }

  TNodePtr::TNodePtr(&v14, this);
  fFINode = v14.fFINode;
  if (v2)
  {
    v13.fFINode = v2;
    v14.fFINode = 0;
    TNode::GetNodeFromURL(&v13, &v14.fFINode, 0);
    if (TNodeFromFINode(v14.fFINode))
    {
      v4 = +[FIPresentationNodeMap shared];
      v5 = [v4 presentationNodeForKeyNode:v14.fFINode];
      v6 = objc_cast<FIDSNode,FINode * {__strong}>(v5);

      if (v6 && v6 != fFINode)
      {

        v7 = 1;
        goto LABEL_13;
      }

      if (v6)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    v7 = 0;
LABEL_13:
    TNode::SetAliasTarget(this, &v14, 0);
    if (fFINode && TNodeFromFINode(v14.fFINode))
    {
      v9 = +[FIPresentationNodeMap shared];
      [v9 registerPresentationNode:fFINode forNode:v14.fFINode clearOlderKeyNodes:v7];

      v10 = TNodeFromFINode(v14.fFINode);
      v11 = TNode::ParentLock(v10);
      os_unfair_lock_lock(v11);
      TNodePtr::TNodePtr(&v13, *(v10 + 48));
      os_unfair_lock_unlock(v11);
      v12 = +[FIPresentationNodeMap shared];
      [v12 registerPresentationNode:fFINode forNode:v13.fFINode];
    }

    v6 = 0;
    goto LABEL_17;
  }

  TNode::ClearAliasTarget(this, 0);
  if (fFINode)
  {
    v8 = +[FIPresentationNodeMap shared];
    [v8 unregisterAllForPresentationNode:fFINode];
  }

LABEL_18:
}

uint64_t TNode::AddNewChildren(uint64_t a1, TNodePtr **a2, int a3, void ***a4, uint64_t *a5)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = TChildrenList::AddNewChildren(*(a1 + 56), a2, a3, a4, &v10, a5);
  v6 = v10;
  v7 = v11;
  while (v6 != v7)
  {
    v8 = TNodeFromFINode(*v6);
    TNode::RemoveSelf(v8, 0);
    ++v6;
  }

  v13 = &v10;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v13);
  return v5;
}

void sub_1E5746DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void ___ZN5TNode11AddNewChildERK8TNodePtrRbbb_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TNodeFromFINode(*(a1 + 32));
  TNode::AttachCreateFPItemIfNeeded(v2, 1);
  v3 = TNodeFromFINode(*(a1 + 32));
  v4 = TNode::InfoLock(v3);
  os_unfair_lock_lock(v4);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v7 = TFSInfo::GetFPItem(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7)
  {
    v8 = LogObj(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = TNodeFromFINode(*(a1 + 32));
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      v13 = TFSInfo::GetFPItem(v12);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_DEFAULT, "FPItem found asynchronously %{public}@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E5746F30(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c47_ZTSKZN5TNode11AddNewChildERK8TNodePtrRbbbE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void TNode::UnRegisterForUbiquityAttributes(TNode *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    TChildrenList::ClearCollectionStatusObserver(v1);
  }
}

uint64_t TNode::SetPrefetchPropertiesOnSync(TNode *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_12;
  }

  StRegistrationLock::StRegistrationLock(&v8);
  v4 = TFSVolumeInfo::ShouldUseReadDir(v3) && TNode::ShouldUseReadDir(this);
  atomic_fetch_or(this + 44, 0x800u);
  Dir = TFSVolumeInfo::ShouldUseReadDir(v3);
  if (Dir)
  {
    Dir = TNode::ShouldUseReadDir(this);
  }

  v5 = v4 ^ Dir;
  StRegistrationLock::~StRegistrationLock(&v8);
  if (v2)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v5;
}

void sub_1E574706C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL TNode::ShouldUseReadDir(TNode *this)
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
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(v2);
    if (*(v4 + 120))
    {
      return 0;
    }
  }

  v6 = atomic_load(this + 44);
  if ((v6 & 0x800) == 0)
  {
    IsLocalVolume = TNode::IsLocalVolume(this);
    if ((IsLocalVolume & 1) == 0)
    {
      TGlobalNodes::BootNode(&v10, IsLocalVolume);
      v8 = TNodeFromFINode(v10) != this;

      return v8;
    }
  }

  return 0;
}

uint64_t std::vector<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::__emplace_back_slow_path<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>(a1, a2);
  }

  else
  {
    v5 = TNodePtr::TNodePtr(v4, a2);
    *(v5 + 1) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = (v5 + 3);
  }

  a1[1] = result;
  return result;
}

uint64_t std::pair<TNodePtr,std::shared_ptr<TFSInfo>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *std::vector<TNodePtr>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TNodePtr>::__emplace_back_slow_path<TNodePtr>(a1, a2);
  }

  else
  {
    result = TNodePtr::TNodePtr(v3, a2) + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t TNode::ScheduleFPOperation(void *a1, void *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = FPItemManagerInstance();

  if (v7)
  {
    TFPOperationRegistry::Register(v5, a3);
    v8 = LogObj(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling FPOperation: %{public}@", &v12, 0xCu);
    }

    v9 = FPItemManagerInstance();
    [v9 scheduleAction:v5];

    if (dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 isCancelled] ^ 1;
    }

    TFPOperationRegistry::UnRegister(v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void TFPOperationRegistry::Register(void *a1, int a2)
{
  v6[0] = a1;
  v3 = TFPOperationRegistry::Lock(v6[0]);
  os_unfair_lock_lock(v3);
  FPOperationRegistry = TFPOperationRegistry::GetFPOperationRegistry(v4);
  v6[2] = v6;
  *(std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::__emplace_unique_key_args<FPActionOperation * {__strong},std::piecewise_construct_t const&,std::tuple<FPActionOperation * const {__strong}&>,std::tuple<>>(FPOperationRegistry, v6) + 6) = a2;
  os_unfair_lock_unlock(v3);
}

void TFPOperationRegistry::UnRegister(void *a1)
{
  v4 = a1;
  v1 = TFPOperationRegistry::Lock(v4);
  os_unfair_lock_lock(v1);
  FPOperationRegistry = TFPOperationRegistry::GetFPOperationRegistry(v2);
  std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::__erase_unique<FPActionOperation * {__strong}>(FPOperationRegistry, &v4);
  os_unfair_lock_unlock(v1);
}

void TFPOperationRegistry::CancelOperations(TFPOperationRegistry *this)
{
  v1 = this;
  v2 = TFPOperationRegistry::Lock(this);
  os_unfair_lock_lock(v2);
  for (i = *(TFPOperationRegistry::GetFPOperationRegistry(v3) + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = v5;
    if (!v1 || *(i + 6) == v1)
    {
      [v5 cancel];
    }
  }

  os_unfair_lock_unlock(v2);
}

uint64_t TNode::Delete(uint64_t a1, TOperation **a2, TDSOperationRecord **a3, char a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9)
{
  v16 = a9;
  v17 = TNode::ParentLock(v16);
  os_unfair_lock_lock(v17);
  TNodePtr::TNodePtr(&v46, *(a1 + 48));
  os_unfair_lock_unlock(v17);
  v45 = 0;
  if (!TNodeFromFINode(v46.fFINode))
  {
    v19 = 4294959238;
LABEL_30:
    if (v45)
    {
      if (*a2)
      {
        v19 = TOperation::ReportError(*a2, &v45);
      }

      else
      {
        v19 = *(v45 + 2);
      }
    }

    goto LABEL_34;
  }

  if (*a2)
  {
    v18 = *(*a2 + 658);
  }

  else
  {
    v18 = 0;
  }

  v20 = TFileCoordinationRecord::TFileCoordinationRecord(v44, v18);
  v42 = 0;
  v43 = 0;
  if (a7)
  {
    v21 = TNode::InfoLock(v20);
    os_unfair_lock_lock(v21);
    v22 = *(a1 + 24);
    v37 = *(a1 + 16);
    v38 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v21);
    v19 = TFileCoordinationRecord::CoordinateWriting(v44, &v37, 1u, &v42);
    v23 = v38;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (v19)
    {
      v24 = 0;
      goto LABEL_27;
    }

    v25 = v42;
    v26 = TNode::InfoLock(v23);
    os_unfair_lock_lock(v26);
    v27 = *(a1 + 24);
    v37 = *(a1 + 16);
    v38 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v26);
    v28 = TFSInfo::Equal(v25, &v37);
    v20 = v38;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if ((v28 & 1) == 0)
    {
      TNode::SetFSInfo(a1, &v42, 1);
    }
  }

  v29 = TNode::InfoLock(v20);
  os_unfair_lock_lock(v29);
  v30 = *(a1 + 24);
  v40 = *(a1 + 16);
  v41 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v29);
  if (!LOBYTE(v40[30]._os_unfair_lock_opaque))
  {
    if (IsRunningInFinder())
    {
      v19 = 4294967249;
      goto LABEL_24;
    }

    TNode::GetVolumeInfo(a1, &v37);
    if (*a2)
    {
      CanAuthenticate = TOperation::CanAuthenticate(*a2, a3);
      v33 = *a2;
      LODWORD(v36[0]) = 0;
      if (v33)
      {
        Resolution = TDSOperationRecord::GetResolution(*a3);
        v35 = (*(*v33 + 272))(v33, &v40, Resolution, a5, a6, v16);
        goto LABEL_42;
      }
    }

    else
    {
      CanAuthenticate = 0;
      LODWORD(v36[0]) = 0;
    }

    v35 = TNode::Deleting(&v40, CanAuthenticate, v36, a5);
LABEL_42:
    v19 = v35;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (v19 != 0 && v19 < 0xFFFFFFD5 || ((1 << (v19 + 43)) & 0x80000000101) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v19 = 0;
LABEL_23:
  v37 = 0;
  v38 = 0;
  v39 = 0;
  TNode::StPopulating::StPopulating(v36, &v46.fFINode, 0);
  TNode::Remove(a1, a4, &v37);
  TNode::StPopulating::~StPopulating(v36);
  TNodeEventPtrs::SendNotifications(&v37);
  v36[0] = &v37;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](v36);
LABEL_24:
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v24 = 1;
LABEL_27:
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  TFileCoordinationRecord::~TFileCoordinationRecord(v44);
  if (v24)
  {
    goto LABEL_30;
  }

LABEL_34:
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef(&v45);

  return v19;
}

void sub_1E57478D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  TFileCoordinationRecord::~TFileCoordinationRecord(va);
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef((v12 - 96));

  _Unwind_Resume(a1);
}

uint64_t TNode::Deleting(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, char a4)
{
  v7 = *a1;
  os_unfair_lock_lock(*a1 + 27);
  v8 = *(&v7[30]._os_unfair_lock_opaque + 3);
  os_unfair_lock_unlock(v7 + 27);
  if ((v8 & 0x20) != 0)
  {
    v11 = *a1;
    os_unfair_lock_lock(*a1 + 27);
    v12 = *(&v11[30]._os_unfair_lock_opaque + 3);
    os_unfair_lock_unlock(v11 + 27);
    v13 = *a1;
    os_unfair_lock_lock(*a1 + 27);
    v14 = *(&v13[30]._os_unfair_lock_opaque + 3);
    os_unfair_lock_unlock(v13 + 27);
    if ((v14 & 0x20) != 0)
    {
      v15 = (v12 >> 1) & 1;
    }

    else
    {
      v15 = 1;
    }

    if (v15 == 1)
    {
      if ((v12 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = *a1;
      os_unfair_lock_lock(*a1 + 27);
      v17 = *(&v16[30]._os_unfair_lock_opaque + 3);
      os_unfair_lock_unlock(v16 + 27);
      if (v17)
      {
LABEL_15:
        v18 = *a1;
        os_unfair_lock_lock(*a1 + 27);
        v19 = *&v18[4]._os_unfair_lock_opaque;
        if (v19)
        {
          CFRetain(v19);
        }

        os_unfair_lock_unlock(v18 + 27);
        TCFURLInfo::GetBasicInfoPropertyKeys(v20);
        operator new();
      }
    }

    ++*a3;
    goto LABEL_15;
  }

  v9 = TFSInfo::Delete(*a1, 0, a4);
  if (v9 == -43)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == -128)
  {
    TOperationErrorRecord::Make(5, 4294967168, 0, a1, 1, 0);
  }

  return v10;
}