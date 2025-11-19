@interface DSFileServiceProgressGroup
- (BOOL)hasOutstandingChildren;
- (BOOL)registerChildProgress:(id)a3;
- (DSFileServiceProgressGroup)initWithUUID:(id)a3 operationKind:(id)a4 groupCount:(int64_t)a5 publishingURL:(id)a6 firstChildName:(id)a7 dateStarted:(id)a8 utType:(id)a9;
- (id).cxx_construct;
- (id)_timeRemainingEstimateWithTimeElapsed:(double)a3 fractionDone:(double)a4;
- (id)addChildProgress:;
- (uint64_t)addChildProgress:;
- (void)addChildProgress:;
- (void)addChildProgress:(id)a3;
- (void)cancel;
- (void)completedUnitCountDidChange:(id)a3 forProgress:(id)a4;
- (void)dealloc;
- (void)publish;
- (void)removeChildProgress:(id)a3;
- (void)setupBGTask;
- (void)unpublish;
- (void)updateProgressLocalizedStrings;
@end

@implementation DSFileServiceProgressGroup

- (DSFileServiceProgressGroup)initWithUUID:(id)a3 operationKind:(id)a4 groupCount:(int64_t)a5 publishingURL:(id)a6 firstChildName:(id)a7 dateStarted:(id)a8 utType:(id)a9
{
  v52[6] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v39 = a4;
  v16 = a6;
  v17 = a7;
  v40 = a8;
  v18 = a9;
  v45.receiver = self;
  v45.super_class = DSFileServiceProgressGroup;
  v19 = [(DSFileServiceProgressGroup *)&v45 init];
  if (v19)
  {
    v20 = *MEMORY[0x1E696A880];
    v51[0] = *MEMORY[0x1E696A858];
    v51[1] = v20;
    v52[0] = v39;
    v52[1] = v16;
    v51[2] = *MEMORY[0x1E696A8A0];
    v51[3] = @"DSFileOperationUUID";
    v52[2] = MEMORY[0x1E695E118];
    v52[3] = v15;
    v52[4] = v40;
    v51[4] = @"DSFileOperationDateStarted";
    v51[5] = @"DSFileOperationIconUTTypeIdentifier";
    v21 = [v18 identifier];
    v52[5] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:6];
    v23 = [v22 mutableCopy];

    if (a5 <= 1 && [v17 length])
    {
      [v23 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696A818]];
    }

    atomic_store(0, &v19->_hasRequestedBGTask);
    v24 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:v23];
    [v24 setFileURL:v16];
    [v24 setKind:*MEMORY[0x1E696A888]];
    [v24 setTotalUnitCount:-1];
    [v24 setCompletedUnitCount:-1];
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [v24 setFileTotalCount:v25];

    [v24 setFileCompletedCount:&unk_1F5F4A3B8];
    make_nsweak<FIRenameOperation>(v19, &from);
    objc_copyWeak(&to, &from);
    v46 = MEMORY[0x1E69E9820];
    v47 = 3321888768;
    v48 = ___ZZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__ENK3__1cvU13block_pointerFvvEEv_block_invoke;
    v49 = &__block_descriptor_40_ea8_32c130_ZTSKZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__E3__1_e5_v8__0l;
    objc_copyWeak(&v50, &to);
    v26 = MEMORY[0x1E692D6D0](&v46);
    objc_destroyWeak(&v50);
    [v24 setCancellationHandler:v26];

    objc_destroyWeak(&to);
    objc_copyWeak(&location, &from);
    v46 = MEMORY[0x1E69E9820];
    v47 = 3321888768;
    v48 = ___ZZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__ENK3__2cvU13block_pointerFvvEEv_block_invoke;
    v49 = &__block_descriptor_40_ea8_32c130_ZTSKZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__E3__2_e5_v8__0l;
    objc_copyWeak(&v50, &location);
    v27 = MEMORY[0x1E692D6D0](&v46);
    objc_destroyWeak(&v50);
    [v24 setResumingHandler:v27];

    objc_destroyWeak(&location);
    objc_copyWeak(&v41, &from);
    v46 = MEMORY[0x1E69E9820];
    v47 = 3321888768;
    v48 = ___ZZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__ENK3__3cvU13block_pointerFvvEEv_block_invoke;
    v49 = &__block_descriptor_40_ea8_32c130_ZTSKZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__E3__3_e5_v8__0l;
    objc_copyWeak(&v50, &v41);
    v28 = MEMORY[0x1E692D6D0](&v46);
    objc_destroyWeak(&v50);
    [v24 setPausingHandler:v28];

    objc_destroyWeak(&v41);
    v29 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v15);
    uuid = v19->_uuid;
    v19->_uuid = v29;

    objc_storeStrong(&v19->_progress, v24);
    objc_storeStrong(&v19->_dateStarted, a8);
    v31 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v17);
    firstChildName = v19->_firstChildName;
    v19->_firstChildName = v31;

    v33 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v16);
    publishingURL = v19->_publishingURL;
    v19->_publishingURL = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    childProgresses = v19->_childProgresses;
    v19->_childProgresses = v35;

    [(DSFileServiceProgressGroup *)v19 updateProgressLocalizedStrings];
    objc_destroyWeak(&from);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)updateProgressLocalizedStrings
{
  v3 = [(NSProgress *)self->_progress fileTotalCount];
  v4 = [v3 integerValue];

  v5 = MEMORY[0x1E696A880];
  if (v4 > 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = [(NSProgress *)self->_progress userInfo];
    v7 = *v5;
    v9 = [v6 objectForKey:*v5];

    [(NSProgress *)self->_progress setUserInfoObject:0 forKey:v7];
  }

  [(NSProgress *)self->_progress setLocalizedDescription:0];
  v8 = [(NSProgress *)self->_progress localizedDescription];
  [(NSProgress *)self->_progress setLocalizedDescription:v8];

  if (v9)
  {
    [(NSProgress *)self->_progress setUserInfoObject:v9 forKey:*v5];
  }
}

- (void)dealloc
{
  std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::clear(&self->_completedUnitCountObservers);
  if (GlobalCopyProgressEnabled())
  {
    v3 = [(DSFileServiceProgressGroup *)self continuedUITask];
    [v3 setTaskCompletedWithSuccess:1];
  }

  v4.receiver = self;
  v4.super_class = DSFileServiceProgressGroup;
  [(DSFileServiceProgressGroup *)&v4 dealloc];
}

- (BOOL)registerChildProgress:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"DSFileOperationChildProgressUUID"];
  v7 = static_objc_cast<NSString,objc_object * {__strong}>(v6);

  v8 = [(NSMutableDictionary *)self->_childProgresses objectForKeyedSubscript:v7];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_childProgresses setObject:v4 forKeyedSubscript:v7];
    [(DSFileServiceProgressGroup *)self updateProgressLocalizedStrings];
  }

  return v8 == 0;
}

- (void)addChildProgress:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = v4;
  v5 = [v4 totalUnitCount];
  v6 = [(DSFileServiceProgressGroup *)self progress];
  v7 = [v6 totalUnitCount];

  v8 = [(DSFileServiceProgressGroup *)self progress];
  [v8 setTotalUnitCount:(v7 & ~(v7 >> 63)) + v5];

  if (([v4 isIndeterminate] & 1) == 0)
  {
    v9 = [v4 completedUnitCount];
    v10 = [(DSFileServiceProgressGroup *)self progress];
    v11 = [v10 completedUnitCount];

    v12 = [(DSFileServiceProgressGroup *)self progress];
    [v12 setCompletedUnitCount:(v11 & ~(v11 >> 63)) + v9];
  }

  make_nsweak<FIRenameOperation>(self, &from);
  objc_copyWeak(&to, &from);
  v31 = [v4 cancellationHandler];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3321888768;
  v39 = ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__4cvU13block_pointerFvvEEv_block_invoke;
  v40 = &__block_descriptor_48_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__4_e5_v8__0l;
  objc_copyWeak(&v41, &to);
  v42 = MEMORY[0x1E692D6D0](v31);
  v13 = MEMORY[0x1E692D6D0](&v37);

  objc_destroyWeak(&v41);
  [v4 setCancellationHandler:v13];

  objc_destroyWeak(&to);
  objc_copyWeak(&location, &from);
  v29 = [v4 resumingHandler];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3321888768;
  v39 = ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__5cvU13block_pointerFvvEEv_block_invoke;
  v40 = &__block_descriptor_48_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__5_e5_v8__0l;
  objc_copyWeak(&v41, &location);
  v42 = MEMORY[0x1E692D6D0](v29);
  v14 = MEMORY[0x1E692D6D0](&v37);

  objc_destroyWeak(&v41);
  [v4 setResumingHandler:v14];

  objc_destroyWeak(&location);
  objc_copyWeak(&v26, &from);
  v27 = [v4 pausingHandler];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3321888768;
  v39 = ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__6cvU13block_pointerFvvEEv_block_invoke;
  v40 = &__block_descriptor_48_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__6_e5_v8__0l;
  objc_copyWeak(&v41, &v26);
  v42 = MEMORY[0x1E692D6D0](v27);
  v15 = MEMORY[0x1E692D6D0](&v37);

  objc_destroyWeak(&v41);
  [v4 setPausingHandler:v15];

  objc_destroyWeak(&v26);
  v37 = &v33;
  v16 = std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__emplace_unique_key_args<NSProgress * {__strong},std::piecewise_construct_t const&,std::tuple<NSProgress * const {__strong}&>,std::tuple<>>(&self->_completedUnitCountObservers.__table_.__bucket_list_.__ptr_, &v33);
  v17 = v33;
  v18 = NSStringFromSelector(sel_completedUnitCount);
  v25.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v25, v18);

  objc_copyWeak(&v23, &from);
  v24 = v33;
  v19 = v17;
  objc_copyWeak(&v34, &v23);
  v35 = v24;
  v45 = 0;
  v43 = &unk_1F5F41148;
  objc_copyWeak(v44, &v34);
  objc_storeWeak(&v34, 0);
  v20 = v35;
  v35 = 0;
  v44[1] = v20;
  v45 = &v43;
  v36 = v19;
  std::unordered_set<NSObject *>::unordered_set(&v37, &v36, 1);
  v21 = TKeyValueObserver::CreateObserver((v16 + 3), &v43, &v37, &v25);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(&v37);
  std::__function::__value_func<void ()(NSDictionary<NSString *,NSObject *> *)>::~__value_func[abi:ne200100](&v43);

  objc_destroyWeak(&v34);
  TKeyValueObserver::StartObservingPriv((v16 + 3), v21, v19, &v25, 3);

  objc_destroyWeak(&v23);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v25.fString.fRef);

  objc_destroyWeak(&from);
  v22 = *MEMORY[0x1E69E9840];
}

- (void)removeChildProgress:(id)a3
{
  v15 = a3;
  v4 = [v15 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"DSFileOperationChildProgressUUID"];
  v6 = static_objc_cast<NSString,objc_object * {__strong}>(v5);

  v7 = [(DSFileServiceProgressGroup *)self childProgresses];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__erase_unique<NSProgress * {__strong}>(&self->_completedUnitCountObservers.__table_.__bucket_list_.__ptr_, &v15);
    v9 = [(DSFileServiceProgressGroup *)self childProgresses];
    [v9 setObject:0 forKeyedSubscript:v6];

    v10 = MEMORY[0x1E696AD98];
    v11 = [(DSFileServiceProgressGroup *)self progress];
    v12 = [v11 fileCompletedCount];
    v13 = [v10 numberWithInteger:{objc_msgSend(v12, "integerValue") + 1}];
    v14 = [(DSFileServiceProgressGroup *)self progress];
    [v14 setFileCompletedCount:v13];
  }
}

- (BOOL)hasOutstandingChildren
{
  v2 = [(DSFileServiceProgressGroup *)self childProgresses];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_timeRemainingEstimateWithTimeElapsed:(double)a3 fractionDone:(double)a4
{
  if (a3 == 0.0 || (v6 = a4 / a3, v6 == 0.0) || (COERCE__INT64(fabs((1.0 - a4) / v6)) - 0x10000000000000) >> 53 > 0x3FE)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  }

  return v7;
}

- (void)completedUnitCountDidChange:(id)a3 forProgress:(id)a4
{
  v39 = a3;
  if (a4)
  {
    v6 = [(DSFileServiceProgressGroup *)self progress];
    v7 = [v6 completedUnitCount];

    v8 = [v39 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v9 = static_objc_cast<NSString,objc_object * {__strong}>(v8);
    v10 = [v9 longLongValue];

    v11 = [v39 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v12 = static_objc_cast<NSString,objc_object * {__strong}>(v11);
    v13 = [v12 longLongValue];

    v14 = [(DSFileServiceProgressGroup *)self progress];
    v15 = v14;
    v16 = v13 - v10;
    if (v13 <= 0 || v10 <= 0)
    {
      v16 = v13 & ~(v13 >> 63);
    }

    v18 = v16 + v7;
    if (v7 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v13;
    }

    [v14 setCompletedUnitCount:v19];

    v20 = [(DSFileServiceProgressGroup *)self dateStarted];
    [v20 timeIntervalSinceNow];
    v22 = v21;
    v23 = [(DSFileServiceProgressGroup *)self progress];
    [v23 fractionCompleted];
    v25 = [(DSFileServiceProgressGroup *)self _timeRemainingEstimateWithTimeElapsed:-v22 fractionDone:v24];

    if (v25)
    {
      v26 = [(DSFileServiceProgressGroup *)self progress];
      [v26 setEstimatedTimeRemaining:v25];
    }

    if (GlobalCopyProgressEnabled())
    {
      v27 = [(DSFileServiceProgressGroup *)self continuedUITask];
      v28 = v27;
      if (v27)
      {
        v29 = [v27 progress];
        [v29 setCancellable:1];
        v30 = [(DSFileServiceProgressGroup *)self progress];
        v31 = [v30 localizedDescription];
        [v29 setLocalizedDescription:v31];

        v32 = [(DSFileServiceProgressGroup *)self progress];
        v33 = [v32 localizedAdditionalDescription];
        [v29 setLocalizedAdditionalDescription:v33];

        v34 = [(DSFileServiceProgressGroup *)self progress];
        [v29 setTotalUnitCount:{objc_msgSend(v34, "totalUnitCount")}];

        v35 = [(DSFileServiceProgressGroup *)self progress];
        [v29 setCompletedUnitCount:{objc_msgSend(v35, "completedUnitCount")}];

        v36 = [(DSFileServiceProgressGroup *)self continuedUITask];
        v37 = [v29 localizedDescription];
        v38 = [v29 localizedAdditionalDescription];
        [v36 updateTitle:v37 subtitle:v38];
      }

      else
      {
        [(DSFileServiceProgressGroup *)self setupBGTask];
      }
    }
  }
}

- (void)setupBGTask
{
  if ((atomic_exchange(&self->_hasRequestedBGTask.__a_.__a_value, 1u) & 1) == 0)
  {
    if (GlobalCopyProgressEnabled())
    {
      v3 = [(DSFileServiceProgressGroup *)self requestBGTask];

      if (v3)
      {
        v4 = [(DSFileServiceProgressGroup *)self requestBGTask];
        v4[2]();

        [(DSFileServiceProgressGroup *)self setRequestBGTask:0];
      }
    }
  }
}

- (void)publish
{
  v2 = [(DSFileServiceProgressGroup *)self progress];
  [v2 publish];
}

- (void)unpublish
{
  v2 = [(DSFileServiceProgressGroup *)self progress];
  [v2 unpublish];
}

- (void)cancel
{
  v2 = [(DSFileServiceProgressGroup *)self progress];
  [v2 cancel];
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

- (void)addChildProgress:
{
  v4 = *a2;
  v3 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((a1 + 8));
  [v3 completedUnitCountDidChange:v4 forProgress:*(a1 + 16)];
}

- (id)addChildProgress:
{
  *a2 = &unk_1F5F41148;
  objc_copyWeak((a2 + 8), (a1 + 8));
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

- (uint64_t)addChildProgress:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end