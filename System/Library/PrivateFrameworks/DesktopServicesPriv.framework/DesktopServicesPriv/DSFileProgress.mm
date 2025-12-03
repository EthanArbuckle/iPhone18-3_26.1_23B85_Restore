@interface DSFileProgress
- (FINode)progressNode;
- (id).cxx_construct;
- (id)startObserving:;
- (uint64_t)progressChanged:(uint64_t)changed;
- (uint64_t)startObserving:;
- (void)progressChanged:(id)changed;
- (void)startObserving:;
- (void)startObserving:(id)observing;
- (void)stopObserving;
@end

@implementation DSFileProgress

- (void)startObserving:(id)observing
{
  v34 = *MEMORY[0x1E69E9840];
  observingCopy = observing;
  objc_initWeak(&location, self);
  objc_copyWeak(&to, &location);
  v5 = observingCopy;
  v20 = v5;
  v30 = 0;
  v28 = &unk_1F5F3DC60;
  objc_moveWeak(v29, &to);
  v6 = v20;
  v20 = 0;
  v29[1] = v6;
  v30 = &v28;
  objc_destroyWeak(&to);
  AddProgressObserver(v5, &self->_observers, &v28);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v28);
  objc_initWeak(&from, self);
  v7 = v5;
  v16 = v7;
  objc_copyWeak(&v17, &from);
  v15.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v15, @"fileURL");
  v13 = v16;
  objc_copyWeak(&v14, &v17);
  v8 = v7;
  TKeyValueObserver::TKeyValueObserver(v24);
  v22 = v13;
  objc_copyWeak(&v23, &v14);
  v9 = v8;
  v25 = v22;
  objc_copyWeak(&v26, &v23);
  v33 = 0;
  v10 = v25;
  v25 = 0;
  v31[0] = &unk_1F5F3DCF0;
  v31[1] = v10;
  objc_moveWeak(&v32, &v26);
  v33 = v31;
  objc_destroyWeak(&v26);

  v27 = v9;
  std::unordered_set<NSObject *>::unordered_set(&v28, &v27, 1);
  v11 = TKeyValueObserver::CreateObserver(v24, v31, &v28, &v15);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(&v28);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v31);
  TKeyValueObserver::StartObservingPriv(v24, v11, v9, &v15, 0);

  objc_destroyWeak(&v23);
  std::vector<TKeyValueObserver>::push_back[abi:ne200100](&self->_observers, v24);
  TKeyValueObserver::~TKeyValueObserver(v24);
  objc_destroyWeak(&v14);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)stopObserving
{
  end = self->_observers.__end_;
  begin = self->_observers.__begin_;
  while (end != begin)
  {
    TKeyValueObserver::~TKeyValueObserver((end - 40));
  }

  self->_observers.__end_ = begin;
}

- (void)progressChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy)
  {
    kind = [changedCopy kind];
    v7 = [kind isEqualToString:*MEMORY[0x1E696A888]];

    if (v7)
    {
      progressNode = [(DSFileProgress *)self progressNode];
      if (progressNode)
      {
        userInfo = [v5 userInfo];
        OperationTypeFromProgress(userInfo, &v38);

        userInfo2 = [v5 userInfo];
        v11 = *MEMORY[0x1E696A858];
        v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A858]];
        v13 = static_objc_cast<NSString,objc_object * {__strong}>(v12);
        v14 = [v13 isEqualToString:*MEMORY[0x1E696A848]];

        userInfo3 = [v5 userInfo];
        v16 = [userInfo3 objectForKeyedSubscript:v11];
        v17 = static_objc_cast<NSString,objc_object * {__strong}>(v16);
        LOBYTE(userInfo2) = [v17 isEqualToString:*MEMORY[0x1E696A870]];

        userInfo4 = [v5 userInfo];
        v19 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x1E696A800]];
        v20 = static_objc_cast<NSString,objc_object * {__strong}>(v19);
        [v20 doubleValue];
        v22 = v21;

        objc_initWeak(&location, progressNode);
        objc_copyWeak(&to, &location);
        v34 = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v34, v38.fString.fRef);
        v35 = v5;
        LOBYTE(v36) = v14;
        BYTE1(v36) = userInfo2;
        *(&v36 + 1) = v22;
        v23 = TProgressMap::GetProgressDispatchQueue(v35);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = __34__DSFileProgress_progressChanged___block_invoke;
        block[3] = &__block_descriptor_72_ea8_32c47_ZTSKZ34__DSFileProgress_progressChanged__E3__3_e5_v8__0l;
        objc_copyWeak(&from, &to);
        v25 = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v25, v34);
        v26 = v35;
        v27 = v36;
        objc_copyWeak(&v29, &from);
        v30.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v30, v25);
        v31 = v26;
        v32 = v27;
        dispatch_async(v23, block);

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v25);
        objc_destroyWeak(&from);

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v30.fString.fRef);
        objc_destroyWeak(&v29);

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
        objc_destroyWeak(&to);
        objc_destroyWeak(&location);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v38.fString.fRef);
      }
    }
  }
}

void __34__DSFileProgress_progressChanged___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v3[2] = ___ZZ34__DSFileProgress_progressChanged__ENK3__2cvU13block_pointerFvvEEv_block_invoke;
  v3[3] = &__block_descriptor_72_ea8_32c47_ZTSKZ34__DSFileProgress_progressChanged__E3__2_e5_v8__0l;
  objc_copyWeak(&v4, (a1 + 32));
  v5.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v5, *(a1 + 40));
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v2 = MEMORY[0x1E692D6D0](v3);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  objc_destroyWeak(&v4);
  ExceptionSafeBlock(v2);
}

- (uint64_t)progressChanged:(uint64_t)changed
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((changed + 8));
  objc_destroyWeak(changed);
  return changed;
}

- (FINode)progressNode
{
  WeakRetained = objc_loadWeakRetained(&self->_progressNode);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)startObserving:
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((self + 16));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = objc_loadWeakRetained(v4 + 4);
    fileURL = [v5 fileURL];
    userInfo = [*(self + 8) userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A880]];
    v9 = objc_cast<NSURL,objc_object * {__strong}>(v8);

    if ((IsEqual(v9, &fileURL->super) & 1) == 0)
    {
      NodeForURL(v9, v16);
      v10 = TNodeFromFINode(*v16);
      v11 = FINodeFromTNode(v10);

      objc_storeWeak(v4 + 4, v11);
      v12 = LogObj(5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = SanitizedURL(fileURL);
        v14 = SanitizedURL(v9);
        *v16 = 138544130;
        *&v16[4] = v13;
        v17 = 2114;
        v18 = v5;
        v19 = 2114;
        v20 = v14;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_INFO, "Progress URL / Node changed - old: '%{public}@ / %{public}@', new: '%{public}@ / %{public}@''", v16, 0x2Au);
      }
    }

    objc_sync_exit(v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)startObserving:
{
  *a2 = &unk_1F5F3DC60;
  objc_copyWeak((a2 + 8), (self + 8));
  result = *(self + 16);
  *(a2 + 16) = result;
  return result;
}

- (uint64_t)startObserving:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end