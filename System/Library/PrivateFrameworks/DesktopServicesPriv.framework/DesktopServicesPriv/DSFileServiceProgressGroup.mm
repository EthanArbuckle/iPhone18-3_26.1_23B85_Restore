@interface DSFileServiceProgressGroup
- (BOOL)hasOutstandingChildren;
- (BOOL)registerChildProgress:(id)progress;
- (DSFileServiceProgressGroup)initWithUUID:(id)d operationKind:(id)kind groupCount:(int64_t)count publishingURL:(id)l firstChildName:(id)name dateStarted:(id)started utType:(id)type;
- (id).cxx_construct;
- (id)_timeRemainingEstimateWithTimeElapsed:(double)elapsed fractionDone:(double)done;
- (id)addChildProgress:;
- (uint64_t)addChildProgress:;
- (void)addChildProgress:;
- (void)addChildProgress:(id)progress;
- (void)cancel;
- (void)completedUnitCountDidChange:(id)change forProgress:(id)progress;
- (void)dealloc;
- (void)publish;
- (void)removeChildProgress:(id)progress;
- (void)setupBGTask;
- (void)unpublish;
- (void)updateProgressLocalizedStrings;
@end

@implementation DSFileServiceProgressGroup

- (DSFileServiceProgressGroup)initWithUUID:(id)d operationKind:(id)kind groupCount:(int64_t)count publishingURL:(id)l firstChildName:(id)name dateStarted:(id)started utType:(id)type
{
  v52[6] = *MEMORY[0x1E69E9840];
  dCopy = d;
  kindCopy = kind;
  lCopy = l;
  nameCopy = name;
  startedCopy = started;
  typeCopy = type;
  v45.receiver = self;
  v45.super_class = DSFileServiceProgressGroup;
  v19 = [(DSFileServiceProgressGroup *)&v45 init];
  if (v19)
  {
    v20 = *MEMORY[0x1E696A880];
    v51[0] = *MEMORY[0x1E696A858];
    v51[1] = v20;
    v52[0] = kindCopy;
    v52[1] = lCopy;
    v51[2] = *MEMORY[0x1E696A8A0];
    v51[3] = @"DSFileOperationUUID";
    v52[2] = MEMORY[0x1E695E118];
    v52[3] = dCopy;
    v52[4] = startedCopy;
    v51[4] = @"DSFileOperationDateStarted";
    v51[5] = @"DSFileOperationIconUTTypeIdentifier";
    identifier = [typeCopy identifier];
    v52[5] = identifier;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:6];
    v23 = [v22 mutableCopy];

    if (count <= 1 && [nameCopy length])
    {
      [v23 setObject:nameCopy forKeyedSubscript:*MEMORY[0x1E696A818]];
    }

    atomic_store(0, &v19->_hasRequestedBGTask);
    v24 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:v23];
    [v24 setFileURL:lCopy];
    [v24 setKind:*MEMORY[0x1E696A888]];
    [v24 setTotalUnitCount:-1];
    [v24 setCompletedUnitCount:-1];
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:count];
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
    v29 = Copy<NSMutableArray<FILocalAppContainerNode *>>(dCopy);
    uuid = v19->_uuid;
    v19->_uuid = v29;

    objc_storeStrong(&v19->_progress, v24);
    objc_storeStrong(&v19->_dateStarted, started);
    v31 = Copy<NSMutableArray<FILocalAppContainerNode *>>(nameCopy);
    firstChildName = v19->_firstChildName;
    v19->_firstChildName = v31;

    v33 = Copy<NSMutableArray<FILocalAppContainerNode *>>(lCopy);
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
  fileTotalCount = [(NSProgress *)self->_progress fileTotalCount];
  integerValue = [fileTotalCount integerValue];

  v5 = MEMORY[0x1E696A880];
  if (integerValue > 1)
  {
    v9 = 0;
  }

  else
  {
    userInfo = [(NSProgress *)self->_progress userInfo];
    v7 = *v5;
    v9 = [userInfo objectForKey:*v5];

    [(NSProgress *)self->_progress setUserInfoObject:0 forKey:v7];
  }

  [(NSProgress *)self->_progress setLocalizedDescription:0];
  localizedDescription = [(NSProgress *)self->_progress localizedDescription];
  [(NSProgress *)self->_progress setLocalizedDescription:localizedDescription];

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
    continuedUITask = [(DSFileServiceProgressGroup *)self continuedUITask];
    [continuedUITask setTaskCompletedWithSuccess:1];
  }

  v4.receiver = self;
  v4.super_class = DSFileServiceProgressGroup;
  [(DSFileServiceProgressGroup *)&v4 dealloc];
}

- (BOOL)registerChildProgress:(id)progress
{
  progressCopy = progress;
  userInfo = [progressCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"DSFileOperationChildProgressUUID"];
  v7 = static_objc_cast<NSString,objc_object * {__strong}>(v6);

  v8 = [(NSMutableDictionary *)self->_childProgresses objectForKeyedSubscript:v7];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_childProgresses setObject:progressCopy forKeyedSubscript:v7];
    [(DSFileServiceProgressGroup *)self updateProgressLocalizedStrings];
  }

  return v8 == 0;
}

- (void)addChildProgress:(id)progress
{
  v46 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  v33 = progressCopy;
  totalUnitCount = [progressCopy totalUnitCount];
  progress = [(DSFileServiceProgressGroup *)self progress];
  totalUnitCount2 = [progress totalUnitCount];

  progress2 = [(DSFileServiceProgressGroup *)self progress];
  [progress2 setTotalUnitCount:(totalUnitCount2 & ~(totalUnitCount2 >> 63)) + totalUnitCount];

  if (([progressCopy isIndeterminate] & 1) == 0)
  {
    completedUnitCount = [progressCopy completedUnitCount];
    progress3 = [(DSFileServiceProgressGroup *)self progress];
    completedUnitCount2 = [progress3 completedUnitCount];

    progress4 = [(DSFileServiceProgressGroup *)self progress];
    [progress4 setCompletedUnitCount:(completedUnitCount2 & ~(completedUnitCount2 >> 63)) + completedUnitCount];
  }

  make_nsweak<FIRenameOperation>(self, &from);
  objc_copyWeak(&to, &from);
  cancellationHandler = [progressCopy cancellationHandler];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3321888768;
  v39 = ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__4cvU13block_pointerFvvEEv_block_invoke;
  v40 = &__block_descriptor_48_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__4_e5_v8__0l;
  objc_copyWeak(&v41, &to);
  v42 = MEMORY[0x1E692D6D0](cancellationHandler);
  v13 = MEMORY[0x1E692D6D0](&v37);

  objc_destroyWeak(&v41);
  [progressCopy setCancellationHandler:v13];

  objc_destroyWeak(&to);
  objc_copyWeak(&location, &from);
  resumingHandler = [progressCopy resumingHandler];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3321888768;
  v39 = ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__5cvU13block_pointerFvvEEv_block_invoke;
  v40 = &__block_descriptor_48_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__5_e5_v8__0l;
  objc_copyWeak(&v41, &location);
  v42 = MEMORY[0x1E692D6D0](resumingHandler);
  v14 = MEMORY[0x1E692D6D0](&v37);

  objc_destroyWeak(&v41);
  [progressCopy setResumingHandler:v14];

  objc_destroyWeak(&location);
  objc_copyWeak(&v26, &from);
  pausingHandler = [progressCopy pausingHandler];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3321888768;
  v39 = ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__6cvU13block_pointerFvvEEv_block_invoke;
  v40 = &__block_descriptor_48_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__6_e5_v8__0l;
  objc_copyWeak(&v41, &v26);
  v42 = MEMORY[0x1E692D6D0](pausingHandler);
  v15 = MEMORY[0x1E692D6D0](&v37);

  objc_destroyWeak(&v41);
  [progressCopy setPausingHandler:v15];

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

- (void)removeChildProgress:(id)progress
{
  progressCopy = progress;
  userInfo = [progressCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"DSFileOperationChildProgressUUID"];
  v6 = static_objc_cast<NSString,objc_object * {__strong}>(v5);

  childProgresses = [(DSFileServiceProgressGroup *)self childProgresses];
  v8 = [childProgresses objectForKeyedSubscript:v6];

  if (v8)
  {
    std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__erase_unique<NSProgress * {__strong}>(&self->_completedUnitCountObservers.__table_.__bucket_list_.__ptr_, &progressCopy);
    childProgresses2 = [(DSFileServiceProgressGroup *)self childProgresses];
    [childProgresses2 setObject:0 forKeyedSubscript:v6];

    v10 = MEMORY[0x1E696AD98];
    progress = [(DSFileServiceProgressGroup *)self progress];
    fileCompletedCount = [progress fileCompletedCount];
    v13 = [v10 numberWithInteger:{objc_msgSend(fileCompletedCount, "integerValue") + 1}];
    progress2 = [(DSFileServiceProgressGroup *)self progress];
    [progress2 setFileCompletedCount:v13];
  }
}

- (BOOL)hasOutstandingChildren
{
  childProgresses = [(DSFileServiceProgressGroup *)self childProgresses];
  v3 = [childProgresses count] != 0;

  return v3;
}

- (id)_timeRemainingEstimateWithTimeElapsed:(double)elapsed fractionDone:(double)done
{
  if (elapsed == 0.0 || (v6 = done / elapsed, v6 == 0.0) || (COERCE__INT64(fabs((1.0 - done) / v6)) - 0x10000000000000) >> 53 > 0x3FE)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  }

  return v7;
}

- (void)completedUnitCountDidChange:(id)change forProgress:(id)progress
{
  changeCopy = change;
  if (progress)
  {
    progress = [(DSFileServiceProgressGroup *)self progress];
    completedUnitCount = [progress completedUnitCount];

    v8 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v9 = static_objc_cast<NSString,objc_object * {__strong}>(v8);
    longLongValue = [v9 longLongValue];

    v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v12 = static_objc_cast<NSString,objc_object * {__strong}>(v11);
    longLongValue2 = [v12 longLongValue];

    progress2 = [(DSFileServiceProgressGroup *)self progress];
    v15 = progress2;
    v16 = longLongValue2 - longLongValue;
    if (longLongValue2 <= 0 || longLongValue <= 0)
    {
      v16 = longLongValue2 & ~(longLongValue2 >> 63);
    }

    v18 = v16 + completedUnitCount;
    if (completedUnitCount >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = longLongValue2;
    }

    [progress2 setCompletedUnitCount:v19];

    dateStarted = [(DSFileServiceProgressGroup *)self dateStarted];
    [dateStarted timeIntervalSinceNow];
    v22 = v21;
    progress3 = [(DSFileServiceProgressGroup *)self progress];
    [progress3 fractionCompleted];
    v25 = [(DSFileServiceProgressGroup *)self _timeRemainingEstimateWithTimeElapsed:-v22 fractionDone:v24];

    if (v25)
    {
      progress4 = [(DSFileServiceProgressGroup *)self progress];
      [progress4 setEstimatedTimeRemaining:v25];
    }

    if (GlobalCopyProgressEnabled())
    {
      continuedUITask = [(DSFileServiceProgressGroup *)self continuedUITask];
      v28 = continuedUITask;
      if (continuedUITask)
      {
        progress5 = [continuedUITask progress];
        [progress5 setCancellable:1];
        progress6 = [(DSFileServiceProgressGroup *)self progress];
        localizedDescription = [progress6 localizedDescription];
        [progress5 setLocalizedDescription:localizedDescription];

        progress7 = [(DSFileServiceProgressGroup *)self progress];
        localizedAdditionalDescription = [progress7 localizedAdditionalDescription];
        [progress5 setLocalizedAdditionalDescription:localizedAdditionalDescription];

        progress8 = [(DSFileServiceProgressGroup *)self progress];
        [progress5 setTotalUnitCount:{objc_msgSend(progress8, "totalUnitCount")}];

        progress9 = [(DSFileServiceProgressGroup *)self progress];
        [progress5 setCompletedUnitCount:{objc_msgSend(progress9, "completedUnitCount")}];

        continuedUITask2 = [(DSFileServiceProgressGroup *)self continuedUITask];
        localizedDescription2 = [progress5 localizedDescription];
        localizedAdditionalDescription2 = [progress5 localizedAdditionalDescription];
        [continuedUITask2 updateTitle:localizedDescription2 subtitle:localizedAdditionalDescription2];
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
      requestBGTask = [(DSFileServiceProgressGroup *)self requestBGTask];

      if (requestBGTask)
      {
        requestBGTask2 = [(DSFileServiceProgressGroup *)self requestBGTask];
        requestBGTask2[2]();

        [(DSFileServiceProgressGroup *)self setRequestBGTask:0];
      }
    }
  }
}

- (void)publish
{
  progress = [(DSFileServiceProgressGroup *)self progress];
  [progress publish];
}

- (void)unpublish
{
  progress = [(DSFileServiceProgressGroup *)self progress];
  [progress unpublish];
}

- (void)cancel
{
  progress = [(DSFileServiceProgressGroup *)self progress];
  [progress cancel];
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
  v3 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((self + 8));
  [v3 completedUnitCountDidChange:v4 forProgress:*(self + 16)];
}

- (id)addChildProgress:
{
  *a2 = &unk_1F5F41148;
  objc_copyWeak((a2 + 8), (self + 8));
  result = *(self + 16);
  *(a2 + 16) = result;
  return result;
}

- (uint64_t)addChildProgress:
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