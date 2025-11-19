void BSXPCServiceConnectionExecuteCallOut(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a3)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSXPCServiceConnectionExecuteCallOut(BSXPCServiceConnection *const __strong _Nonnull, __strong id _Nullable, const __strong dispatch_block_t _Nonnull)"}];
      *buf = 138544130;
      v37 = v18;
      v38 = 2114;
      v39 = @"BSXPCServiceConnection.m";
      v40 = 1024;
      v41 = 1487;
      v42 = 2114;
      v43 = v17;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v19 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A822940);
  }

  if (!v5)
  {
    v6 = [(BSXPCServiceConnection *)a1 _eventHandler];
    v7 = v6;
    v8 = v6 ? *(v6 + 136) : 0;
    v9 = v8;
    v10 = v9;
    v11 = v9 ? v9 : a1;
    v34 = v11;

    v5 = v34;
    if (!v34)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [(BSXPCServiceConnection *)a1 _eventHandler];
      v22 = [(BSXPCServiceConnection *)a1 _eventHandler];
      v23 = v22;
      if (v22)
      {
        v24 = *(v22 + 136);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      v26 = [v20 stringWithFormat:@"failure to find context to execute call out : param=%@ connection=%@ eventHandler=%@ (%@)", 0, a1, v21, v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSXPCServiceConnectionExecuteCallOut(BSXPCServiceConnection *const __strong _Nonnull, __strong id _Nullable, const __strong dispatch_block_t _Nonnull)"}];
        *buf = 138544130;
        v37 = v27;
        v38 = 2114;
        v39 = @"BSXPCServiceConnection.m";
        v40 = 1024;
        v41 = 1493;
        v42 = 2114;
        v43 = v26;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v28 = v26;
      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A822A54);
    }
  }

  v35 = v5;
  v12 = [MEMORY[0x1E696AF00] currentThread];
  v13 = [v12 threadDictionary];

  if (!v13)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = [MEMORY[0x1E696AF00] currentThread];
    v31 = [v29 stringWithFormat:@"missing thread-local storage on %@", v30];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSXPCServiceConnectionExecuteCallOut(BSXPCServiceConnection *const __strong _Nonnull, __strong id _Nullable, const __strong dispatch_block_t _Nonnull)"}];
      *buf = 138544130;
      v37 = v32;
      v38 = 2114;
      v39 = @"BSXPCServiceConnection.m";
      v40 = 1024;
      v41 = 1496;
      v42 = 2114;
      v43 = v31;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v33 = v31;
    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A822B3CLL);
  }

  v14 = [v13 objectForKey:@"BSXPCCurrentContext"];
  [v13 setObject:v35 forKey:@"BSXPCCurrentContext"];
  v15 = objc_autoreleasePoolPush();
  (*(a3 + 16))(a3);
  objc_autoreleasePoolPop(v15);
  if (v14)
  {
    [v13 setObject:v14 forKey:@"BSXPCCurrentContext"];
  }

  else
  {
    [v13 removeObjectForKey:@"BSXPCCurrentContext"];
  }

  v16 = *MEMORY[0x1E69E9840];
}

id BSServiceXPCLog()
{
  if (BSServiceXPCLog_onceToken != -1)
  {
    dispatch_once(&BSServiceXPCLog_onceToken, &__block_literal_global_10);
  }

  v1 = BSServiceXPCLog___logObj;

  return v1;
}

id BSServiceConnectionEndpointTargetDescriptionForMachName(void *a1, uint64_t a2)
{
  v3 = a1;
  __escaped(v3);
  if (a2)
    v4 = {;
    v5 = [v4 stringByAppendingFormat:@"[%u]", a2];
  }

  else
    v5 = {;
  }

  return v5;
}

void *__escaped(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  if ([v3 isEqualToString:v1])
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

id BSServiceLog()
{
  if (BSServiceLog_onceToken != -1)
  {
    dispatch_once(&BSServiceLog_onceToken, &__block_literal_global_10);
  }

  v1 = BSServiceLog___logObj;

  return v1;
}

id BSServiceXPCErrorsLog()
{
  if (BSServiceXPCErrorsLog_onceToken != -1)
  {
    dispatch_once(&BSServiceXPCErrorsLog_onceToken, &__block_literal_global_16);
  }

  v1 = BSServiceXPCErrorsLog___logObj;

  return v1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x19A908200](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id BSServiceEndpointGrantNamespace()
{
  if (qword_1ED4A7BE0 != -1)
  {
    dispatch_once(&qword_1ED4A7BE0, &__block_literal_global_2);
  }

  v1 = qword_1ED4A7BD8;

  return v1;
}

void ____disallowedValueClasses_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:7];
  v2 = [v0 initWithArray:{v1, v5, v6, v7, v8, v9, v10}];
  v3 = qword_1ED4A7C68;
  qword_1ED4A7C68 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id getRBSTargetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRBSTargetClass_softClass;
  v7 = getRBSTargetClass_softClass;
  if (!getRBSTargetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRBSTargetClass_block_invoke;
    v3[3] = &unk_1E75200F8;
    v3[4] = &v4;
    __getRBSTargetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19A823A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRBSTargetClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRBSTargetClass_softClass_1;
  v7 = getRBSTargetClass_softClass_1;
  if (!getRBSTargetClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRBSTargetClass_block_invoke_0;
    v3[3] = &unk_1E75200F8;
    v3[4] = &v4;
    __getRBSTargetClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19A823B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____protocolsToRemove_block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F0E07E70;
  v3[1] = &unk_1F0E0A610;
  v3[2] = &unk_1F0E09168;
  v3[3] = &unk_1F0E06538;
  v3[4] = &unk_1F0E080C0;
  v3[5] = &unk_1F0E087C8;
  v3[6] = &unk_1F0E0A6E8;
  v3[7] = &unk_1F0E0A778;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:8];
  v1 = qword_1ED4A7C58;
  qword_1ED4A7C58 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTarget");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSServiceConnectionEndpointInjector.m" lineNumber:34 description:{@"Unable to find class %s", "RBSTarget"}];

    __break(1u);
  }
}

Class __getRBSTargetClass_block_invoke_0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_2)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __RunningBoardServicesLibraryCore_block_invoke_3;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E7520980;
    v10 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary_2)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"BSXPCServiceConnectionEndpoint.m" lineNumber:19 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("RBSTarget");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"BSXPCServiceConnectionEndpoint.m" lineNumber:20 description:{@"Unable to find class %s", "RBSTarget"}];

LABEL_10:
    __break(1u);
  }

  getRBSTargetClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getRBSTargetClass_block_invoke_1(uint64_t a1)
{
  RunningBoardServicesLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTarget");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSXPCServiceConnection.m" lineNumber:36 description:{@"Unable to find class %s", "RBSTarget"}];

    __break(1u);
  }
}

void __BSServiceXPCErrorsLog_block_invoke()
{
  v0 = os_log_create("com.apple.BoardServices", "XPCErrors");
  v1 = BSServiceXPCErrorsLog___logObj;
  BSServiceXPCErrorsLog___logObj = v0;
}

id __emptyProtocol()
{
  if (qword_1ED4A7C50 != -1)
  {
    dispatch_once(&qword_1ED4A7C50, &__block_literal_global_9);
  }

  v1 = _MergedGlobals_10;

  return v1;
}

void __BSServiceLog_block_invoke()
{
  v0 = os_log_create("com.apple.BoardServices", "Common");
  v1 = BSServiceLog___logObj;
  BSServiceLog___logObj = v0;
}

void __BSServiceXPCLog_block_invoke()
{
  v0 = os_log_create("com.apple.BoardServices", "XPC");
  v1 = BSServiceXPCLog___logObj;
  BSServiceXPCLog___logObj = v0;
}

id BSServiceConnectionErrorCreate(unint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must provide underlyingXPCError or reason"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSError * _Nonnull BSServiceConnectionErrorCreate(BSServiceConnectionErrorCode, xpc_object_t  _Nullable __strong, NSString * _Nullable __strong)"}];
      *buf = 138544130;
      v18 = v12;
      v19 = 2114;
      v20 = @"BSServiceConnectionErrors.m";
      v21 = 1024;
      v22 = 31;
      v23 = 2114;
      v24 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v13 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A824370);
  }

  v7 = v6;
  if (v5)
  {
    if (MEMORY[0x19A908710](v5) != MEMORY[0x1E69E9E98])
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"underlyingXPCError must be of type XPC_TYPE_ERROR"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSError * _Nonnull BSServiceConnectionErrorCreate(BSServiceConnectionErrorCode, xpc_object_t  _Nullable __strong, NSString * _Nullable __strong)"}];
        *buf = 138544130;
        v18 = v15;
        v19 = 2114;
        v20 = @"BSServiceConnectionErrors.m";
        v21 = 1024;
        v22 = 32;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v16 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82443CLL);
    }

    if (!v7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v5, *MEMORY[0x1E69E9E28])}];
    }
  }

  v8 = BSServiceConnectionErrorCreateWithInfo(a1, v7, 0);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id BSServiceConnectionErrorCreateWithInfo(unint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must provide reason"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSError * _Nonnull BSServiceConnectionErrorCreateWithInfo(BSServiceConnectionErrorCode, NSString *__strong _Nonnull, NSDictionary * _Nullable __strong)"}];
      v16 = 138544130;
      v17 = v14;
      v18 = 2114;
      v19 = @"BSServiceConnectionErrors.m";
      v20 = 1024;
      v21 = 42;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v16, 0x26u);
    }

    v15 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82467CLL);
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = v7;
  if (v6)
  {
    [v7 addEntriesFromDictionary:v6];
  }

  if (a1 > 4)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_1E75213B8[a1];
  }

  [v8 setObject:v9 forKey:*MEMORY[0x1E698E5B8]];
  [v8 setObject:v5 forKey:*MEMORY[0x1E696A588]];
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BSServiceConnectionErrorDomain" code:a1 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_19A824960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, objc_super a13)
{
  a13.super_class = BSServiceConnection;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A8249A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_19A824B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BSXPCServiceConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A826764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSXPCServiceConnectionActivationMessage;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A8267B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

id BSServiceQualityFromBSServiceDomainMultiplexingType(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = +[BSServiceQuality userInteractive];
  }

  else if (a1 == 1)
  {
    v1 = +[BSServiceQuality userInitiated];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id __protocolsToRemove()
{
  if (qword_1ED4A7C60 != -1)
  {
    dispatch_once(&qword_1ED4A7C60, &__block_literal_global_143);
  }

  v1 = qword_1ED4A7C58;

  return v1;
}

void ____emptyProtocol_block_invoke()
{
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F0E0D528];
  v1 = _MergedGlobals_10;
  _MergedGlobals_10 = v0;
}

void __vetProtocol(void *a1)
{
  v146 = *MEMORY[0x1E69E9840];
  v93 = a1;
  v92 = [v93 parsingErrors];
  if ([v92 count])
  {
    v75 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = [v93 name];
      *buf = 138412546;
      *&buf[4] = v76;
      *&buf[12] = 2112;
      *&buf[14] = v92;
      _os_log_error_impl(&dword_19A821000, v75, OS_LOG_TYPE_ERROR, "parsingErrors detected for protocol '%@':%@", buf, 0x16u);
    }

    v77 = MEMORY[0x1E696AEC0];
    v78 = [v93 name];
    v79 = [v77 stringWithFormat:@"parsingErrors detected for protocol '%@':%@", v78, v92];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __vetProtocol(BSObjCProtocol *__strong)"];
      *buf = 138544130;
      *&buf[4] = v80;
      *&buf[12] = 2114;
      *&buf[14] = @"BSServiceInterface.m";
      *&buf[22] = 1024;
      LODWORD(v144) = 61;
      WORD2(v144) = 2114;
      *(&v144 + 6) = v79;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v81 = v79;
    [v79 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8281D0);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v144 = __Block_byref_object_copy__3;
  *(&v144 + 1) = __Block_byref_object_dispose__3;
  v145 = 0;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x2020000000;
  v128 = 0;
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = ____vetProtocol_block_invoke;
  v126[3] = &unk_1E7520BC0;
  v126[4] = buf;
  v126[5] = v127;
  v1 = MEMORY[0x19A908200](v126);
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = [v93 methods];
  v96 = [obj countByEnumeratingWithState:&v122 objects:v142 count:16];
  if (v96)
  {
    v95 = *v123;
    do
    {
      v97 = 0;
      do
      {
        if (*v123 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v122 + 1) + 8 * v97);
        v3 = [v2 arguments];
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v101 = v3;
        v4 = [v101 countByEnumeratingWithState:&v118 objects:v141 count:16];
        if (v4)
        {
          v5 = *v119;
          do
          {
            v6 = 0;
            do
            {
              if (*v119 != v5)
              {
                objc_enumerationMutation(v101);
              }

              v7 = *(*(&v118 + 1) + 8 * v6);
              if ([v7 size] != 8)
              {
                (v1)[2](v1, v2, v7, @"protocol methods and blocks may only accept pointer-sized arguments");
              }

              if ([v7 argumentIndex] >= 10)
              {
                (v1)[2](v1, v2, v7, @"argument index is out of bounds");
              }

              v8 = [v7 type];
              if ((v8 & 0xFFFFFFFD) == 0x64)
              {
                (v1)[2](v1, v2, v7, @"floating point arguments are not allowed");
              }

              if (v8 > 0x5Du)
              {
                if (v8 == 94)
                {
                  goto LABEL_37;
                }

                if (v8 != 123 && v8 != 98)
                {
                  goto LABEL_28;
                }
              }

              else if (v8 != 40)
              {
                if (v8 == 64)
                {
                  goto LABEL_29;
                }

                if (v8 != 91)
                {
                  goto LABEL_28;
                }
              }

              (v1)[2](v1, v2, v7, @"c structs and bitfields unions, etc, are not allowed");
              if (v8 != 64)
              {
                if (v8 == 94)
                {
                  goto LABEL_37;
                }

LABEL_28:
                (v1)[2](v1, v2, v7, @"only objects and pointers are allowed");
                if (v8 != 64)
                {
                  goto LABEL_37;
                }
              }

LABEL_29:
              if (([v7 isXPCObject] & 1) == 0 && (objc_msgSend(v7, "isBlock") & 1) == 0)
              {
                v9 = [v7 objectClass];
                if (([v9 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()))
                {
                  v10 = [v7 objectContainedClasses];
                  v11 = [v10 firstObject];

                  if (!v11 || (__disallowedValueClasses(), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 containsObject:v11], v12, v13))
                  {
                    (v1)[2](v1, v2, v7, @"collections must specify a valid value class");
                  }
                }

                else if ([v9 isSubclassOfClass:objc_opt_class()])
                {
                  v14 = [v7 objectContainedClasses];
                  if ([v14 count])
                  {
                    v15 = [v14 firstObject];
                    if (v15 != objc_opt_class())
                    {
                      (v1)[2](v1, v2, v7, @"dictionary keys must be of type NSString");
                    }

                    v16 = __disallowedValueClasses();
                    v17 = [v16 containsObject:{objc_msgSend(v14, "lastObject")}];

                    if (v17)
                    {
                      (v1)[2](v1, v2, v7, @"dictionary value must be a concrete, non-collection type");
                    }

                    if ([v14 count] != 2)
                    {
                      (v1)[2](v1, v2, v7, @"dictionaries must specify both their key and value classes");
                    }
                  }
                }

                else if (!v9 || v9 == objc_opt_class())
                {
                  (v1)[2](v1, v2, v7, @"parameter objects must be concrete types");
                }
              }

LABEL_37:
              ++v6;
            }

            while (v4 != v6);
            v18 = [v101 countByEnumeratingWithState:&v118 objects:v141 count:16];
            v4 = v18;
          }

          while (v18);
        }

        v98 = [v2 returnValue];
        v19 = [v101 lastObject];
        if ([v19 isPointer])
        {
          v100 = [v101 lastObject];
        }

        else
        {
          v100 = 0;
        }

        v20 = [v101 lastObject];
        if ([v20 isBlock])
        {
          v21 = [v101 lastObject];
        }

        else
        {
          v21 = 0;
        }

        if ([v98 isVoid] && (objc_msgSend(v98, "isOneWay") & 1) != 0)
        {
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v22 = v101;
          v23 = [v22 countByEnumeratingWithState:&v106 objects:v138 count:16];
          if (v23)
          {
            v24 = *v107;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v107 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v106 + 1) + 8 * i);
                v27 = [v26 isBlock];
                if (v26 == v21)
                {
                  v28 = 0;
                }

                else
                {
                  v28 = v27;
                }

                if (v28 == 1)
                {
                  (v1)[2](v1, v2, v26, @"methods may only contain one block parameter, and it must be the last");
                }

                if ([v26 isPointer])
                {
                  (v1)[2](v1, v2, v26, @"Async method cannot contain an out-parameter");
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v106 objects:v138 count:16];
            }

            while (v23);
          }
        }

        else
        {
          if ([v98 isVoid])
          {
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v29 = v101;
            v30 = [v29 countByEnumeratingWithState:&v114 objects:v140 count:16];
            if (v30)
            {
              v31 = *v115;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v115 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = *(*(&v114 + 1) + 8 * j);
                  v34 = [v33 isBlock];
                  if (v33 == v21)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v34;
                  }

                  if (v35 == 1)
                  {
                    (v1)[2](v1, v2, v33, @"a reply block may only be the last argument of a method");
                  }

                  v36 = [v33 isPointer];
                  if (v33 == v100)
                  {
                    v37 = 0;
                  }

                  else
                  {
                    v37 = v36;
                  }

                  if (v37 == 1)
                  {
                    (v1)[2](v1, v2, v33, @"an NSError out-param may only be the last argument of a method");
                  }
                }

                v30 = [v29 countByEnumeratingWithState:&v114 objects:v140 count:16];
              }

              while (v30);
            }
          }

          else
          {
            if ([v98 isObject] && (objc_msgSend(v98, "isBlock") & 1) == 0)
            {
              if (([v98 isXPCObject] & 1) == 0)
              {
                v38 = [v98 objectClass];
                if (([v38 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v38, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v38, "isSubclassOfClass:", objc_opt_class()))
                {
                  v39 = [v98 objectContainedClasses];
                  v40 = [v39 firstObject];

                  if (!v40 || (__disallowedValueClasses(), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 containsObject:v40], v41, v42))
                  {
                    (v1)[2](v1, v2, 0, @"collections must specify a valid value class");
                  }
                }

                else if ([v38 isSubclassOfClass:objc_opt_class()])
                {
                  v69 = [v98 objectContainedClasses];
                  if ([v69 count])
                  {
                    v70 = [v69 firstObject];
                    if (v70 != objc_opt_class())
                    {
                      (v1)[2](v1, v2, 0, @"dictionary keys must be of type NSString");
                    }

                    v71 = __disallowedValueClasses();
                    v72 = [v71 containsObject:{objc_msgSend(v69, "lastObject")}];

                    if (v72)
                    {
                      (v1)[2](v1, v2, 0, @"dictionary value must be a concrete, non-collection type");
                    }

                    if ([v69 count] != 2)
                    {
                      (v1)[2](v1, v2, 0, @"dictionaries must specify both their key and value classes");
                    }
                  }
                }

                else if (!v38 || v38 == objc_opt_class())
                {
                  (v1)[2](v1, v2, 0, @"returned objects must be concrete types");
                }
              }
            }

            else if (([v98 isBoolean] & 1) == 0)
            {
              (v1)[2](v1, v2, 0, @"synchronous method has invalid return type");
            }

            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v43 = v101;
            v44 = [v43 countByEnumeratingWithState:&v110 objects:v139 count:16];
            if (v44)
            {
              v45 = *v111;
              do
              {
                for (k = 0; k != v44; ++k)
                {
                  if (*v111 != v45)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v47 = *(*(&v110 + 1) + 8 * k);
                  if ([v47 isBlock])
                  {
                    (v1)[2](v1, v2, v47, @"a method with a return value may not also provide a block");
                  }
                }

                v44 = [v43 countByEnumeratingWithState:&v110 objects:v139 count:16];
              }

              while (v44);
            }
          }

          if ([v98 hasQualifier:82])
          {
            (v1)[2](v1, v2, 0, @"a synchronous method may not opt in to batching");
          }
        }

        v48 = [v98 isVoid];
        if (v21)
        {
          v49 = v48;
        }

        else
        {
          v49 = 1;
        }

        if ((v49 & 1) == 0)
        {
          (v1)[2](v1, v2, 0, @"Method cannot have both a sync and async return value");
        }

        if (v100)
        {
          if ([v98 isVoid] && objc_msgSend(v98, "isOneWay"))
          {
            (v1)[2](v1, v2, 0, @"Asynchronous message cannot contain an out-parameter");
          }

          if ([v100 isObjectNonnull])
          {
            (v1)[2](v1, v2, 0, @"NSError out parameter cannot be nonnull");
          }
        }

        if (v21)
        {
          v50 = [v21 blockArguments];
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v51 = v50;
          v52 = [v51 countByEnumeratingWithState:&v102 objects:v137 count:16];
          if (v52)
          {
            v53 = *v103;
            do
            {
              v54 = 0;
              do
              {
                if (*v103 != v53)
                {
                  objc_enumerationMutation(v51);
                }

                v55 = *(*(&v102 + 1) + 8 * v54);
                v56 = [v55 isObject];
                v57 = @"Arguments of reply block must be objects";
                if (v56 && (v58 = [v55 isBlock], v57 = @"Arguments of reply block cannot be blocks", (v58 & 1) == 0))
                {
                  if (([v55 isXPCObject] & 1) == 0)
                  {
                    v59 = [v55 objectClass];
                    if (([v59 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v59, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v59, "isSubclassOfClass:", objc_opt_class()))
                    {
                      v60 = [v55 objectContainedClasses];
                      v61 = [v60 firstObject];

                      if (!v61 || (__disallowedValueClasses(), v62 = objc_claimAutoreleasedReturnValue(), v63 = [v62 containsObject:v61], v62, v63))
                      {
                        (v1)[2](v1, v2, v21, @"collections must specify a valid value class");
                      }
                    }

                    else if ([v59 isSubclassOfClass:objc_opt_class()])
                    {
                      v99 = [v55 objectContainedClasses];
                      if ([v99 count])
                      {
                        v64 = [v99 firstObject];
                        if (v64 != objc_opt_class())
                        {
                          (v1)[2](v1, v2, v21, @"dictionary keys must be of type NSString");
                        }

                        v65 = __disallowedValueClasses();
                        v66 = [v65 containsObject:{objc_msgSend(v99, "lastObject")}];

                        if (v66)
                        {
                          (v1)[2](v1, v2, v21, @"dictionary value must be a concrete, non-collection type");
                        }

                        if ([v99 count] != 2)
                        {
                          (v1)[2](v1, v2, v21, @"dictionaries must specify both their key and value classes");
                        }
                      }
                    }

                    else if (!v59 || v59 == objc_opt_class())
                    {
                      (v1)[2](v1, v2, v21, @"Arguments of reply block must be concrete types");
                    }
                  }
                }

                else
                {
                  (v1)[2](v1, v2, v21, v57);
                }

                ++v54;
              }

              while (v52 != v54);
              v67 = [v51 countByEnumeratingWithState:&v102 objects:v137 count:16];
              v52 = v67;
            }

            while (v67);
          }

          if (![v51 count] || objc_msgSend(v51, "count") >= 0xB)
          {
            (v1)[2](v1, v2, v21, @"Reply block contains an invalid number of arguments");
          }

          v68 = [v51 lastObject];
          if (([objc_msgSend(v68 "objectClass")] & 1) == 0)
          {
            (v1)[2](v1, v2, v21, @"Reply block signature does not contain required NSError as last parameter");
          }

          if ([v68 isObjectNonnull])
          {
            (v1)[2](v1, v2, v21, @"It does not make sense to declare an error parameter as nonnull");
          }

          if ([v98 hasQualifier:82] && objc_msgSend(v51, "count") != 1)
          {
            (v1)[2](v1, v2, v21, @"a batchable method may only accept blocks with a single NSError parameter");
          }
        }

        ++v97;
      }

      while (v97 != v96);
      v73 = [obj countByEnumeratingWithState:&v122 objects:v142 count:16];
      v96 = v73;
    }

    while (v73);
  }

  if ([*(*&buf[8] + 40) count])
  {
    v82 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [v93 name];
      v84 = *(*&buf[8] + 40);
      *v129 = 138412546;
      v130 = v83;
      v131 = 2112;
      v132 = v84;
      _os_log_error_impl(&dword_19A821000, v82, OS_LOG_TYPE_ERROR, "Non-conforming methods on protocol '%@':%@", v129, 0x16u);
    }

    v85 = MEMORY[0x1E696AEC0];
    v86 = [v93 name];
    v87 = [v85 stringWithFormat:@"Non-conforming methods on protocol '%@':%@", v86, *(*&buf[8] + 40)];

    v88 = MEMORY[0x1E69E9C10];
    v89 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __vetProtocol(BSObjCProtocol *__strong)"];
      *v129 = 138544130;
      v130 = v90;
      v131 = 2114;
      v132 = @"BSServiceInterface.m";
      v133 = 1024;
      v134 = 280;
      v135 = 2114;
      v136 = v87;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v129, 0x26u);
    }

    v91 = v87;
    [v87 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A828358);
  }

  _Block_object_dispose(v127, 8);
  _Block_object_dispose(buf, 8);

  v74 = *MEMORY[0x1E69E9840];
}

void sub_19A828360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v22 - 160), 8);

  _Unwind_Resume(a1);
}

id __disallowedValueClasses()
{
  if (qword_1ED4A7C70 != -1)
  {
    dispatch_once(&qword_1ED4A7C70, &__block_literal_global_270);
  }

  v1 = qword_1ED4A7C68;

  return v1;
}

void *__getRBSServiceInitializeSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A7BF8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __RunningBoardServicesLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E75208E0;
    v8 = 0;
    qword_1ED4A7BF8 = _sl_dlopen();
  }

  v2 = qword_1ED4A7BF8;
  if (!qword_1ED4A7BF8)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"BSRBSService.m" lineNumber:22 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "RBSServiceInitialize");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED4A7BF0 = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id BSServiceInjectionLog()
{
  if (BSServiceInjectionLog_onceToken != -1)
  {
    dispatch_once(&BSServiceInjectionLog_onceToken, &__block_literal_global_7);
  }

  v1 = BSServiceInjectionLog___logObj;

  return v1;
}

void __BSServiceInjectionLog_block_invoke()
{
  v0 = os_log_create("com.apple.BoardServices", "Injection");
  v1 = BSServiceInjectionLog___logObj;
  BSServiceInjectionLog___logObj = v0;
}

id *__decodedEndpoint(void *a1, void *a2, void *a3, int a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v43 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v17)
  {
    if (v20)
    {
      v23 = [[BSXPCServiceConnectionEndpoint alloc] initWithXPCEndpoint:v17 oneshot:v18 nonLaunching:a4 targetPID:a5 targetDescription:v19];
      v24 = v16;
      if (!v16)
      {
        v24 = [BSServiceConnectionEndpoint alloc];
      }

      v25 = [(BSServiceConnectionEndpoint *)v24 _initWithEndpoint:v23 service:v20 instance:v21];
      if (!v16)
      {
      }

LABEL_17:

      goto LABEL_18;
    }

    v26 = BSServiceInjectionLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = 138413826;
      v30 = v22;
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      v35 = 1024;
      v36 = a4;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = 0;
      v41 = 2112;
      v42 = v21;
      _os_log_error_impl(&dword_19A821000, v26, OS_LOG_TYPE_ERROR, "BSServiceConnectionEndpoint: Unable to decode endpoint from %@ : endpoint=%@ oneshot=%@ nonLaunching=%{BOOL}i (%@) service=%@ instance=%@", &v29, 0x44u);
    }

LABEL_13:

    v25 = 0;
    goto LABEL_18;
  }

  if (v19)
  {
    v26 = BSServiceInjectionLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = 138413826;
      v30 = v22;
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = v18;
      v35 = 1024;
      v36 = a4;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = v21;
      _os_log_error_impl(&dword_19A821000, v26, OS_LOG_TYPE_ERROR, "BSServiceConnectionEndpoint: Unable to decode endpoint from %@ : endpoint=%@ oneshot=%@ nonLaunching=%{BOOL}i (%@) service=%@ instance=%@", &v29, 0x44u);
    }

    goto LABEL_13;
  }

  v23 = v16;
  if (!v16)
  {
    v23 = [BSServiceConnectionEndpoint alloc];
  }

  v25 = [(BSServiceConnectionEndpoint *)v23 _initForNullEndpointWithService:v20 instance:v21];
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_18:

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

void __BSServiceEndpointGrantNamespace_block_invoke()
{
  v0 = qword_1ED4A7BD8;
  qword_1ED4A7BD8 = @"com.apple.boardservices.endpoint-injection";
}

void BSServiceMainRunLoopSourceHandler(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = v1;
    if ((v1[7] & 1) == 0)
    {
      *(v1 + 56) = 1;
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__2;
      v10 = __Block_byref_object_dispose__2;
      v11 = 0;
      v3 = v1[3];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __58__BSServiceMainRunLoopQueue__performNextFromRunLoopSource__block_invoke;
      v5[3] = &unk_1E7520B40;
      v5[4] = v2;
      v5[5] = &v6;
      dispatch_async_and_wait(v3, v5);
      v4 = v7[5];
      if (v4)
      {
        __BSSERVICEMAINRUNLOOPQUEUE_IS_CALLING_OUT_TO_A_BLOCK__(v4);
        *(v2 + 56) = 0;
        _Block_object_dispose(&v6, 8);

        CFRunLoopSourceSignal(v2[4]);
      }

      else
      {
        *(v2 + 56) = 0;
        _Block_object_dispose(&v6, 8);
      }
    }
  }
}

void __BSSERVICEMAINRUNLOOPQUEUE_IS_CALLING_OUT_TO_A_BLOCK__(void *a1)
{
  v2 = a1;
  v1 = objc_autoreleasePoolPush();
  v2[2]();
  objc_autoreleasePoolPop(v1);
}

id BSServiceConnectionEndpointTargetDescriptionForServiceLookup(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = getpid();
    v7 = __escaped(v3);
    v8 = [v4 UUIDString];
    v9 = [v5 stringWithFormat:@"XPCService:%i:%@:%@", v6, v7, v8];
  }

  else
  {
    v10 = getpid();
    v7 = __escaped(v3);
    v9 = [v5 stringWithFormat:@"XPCService:%i:%@", v10, v7];
  }

  return v9;
}

void __BSServiceXPCBatchLog_block_invoke()
{
  v0 = os_log_create("com.apple.BoardServices", "XPCBatch");
  v1 = BSServiceXPCBatchLog___logObj;
  BSServiceXPCBatchLog___logObj = v0;
}

id BSServiceXPCBatchLog()
{
  if (BSServiceXPCBatchLog_onceToken != -1)
  {
    dispatch_once(&BSServiceXPCBatchLog_onceToken, &__block_literal_global_13);
  }

  v1 = BSServiceXPCBatchLog___logObj;

  return v1;
}

id getRBSAttributeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRBSAttributeClass_softClass;
  v7 = getRBSAttributeClass_softClass;
  if (!getRBSAttributeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRBSAttributeClass_block_invoke;
    v3[3] = &unk_1E75200F8;
    v3[4] = &v4;
    __getRBSAttributeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19A82B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BSRBSAssertionGenerator_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v9 = getRBSAssertionClass_softClass;
  v23 = getRBSAssertionClass_softClass;
  if (!getRBSAssertionClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getRBSAssertionClass_block_invoke;
    v25 = &unk_1E75200F8;
    v26 = &v20;
    __getRBSAssertionClass_block_invoke(buf);
    v9 = v21[3];
  }

  v10 = v9;
  _Block_object_dispose(&v20, 8);
  v11 = [[v9 alloc] initWithExplanation:a4 target:a2 attributes:a3];
  v19 = 0;
  v12 = [v11 acquireWithError:&v19];
  v13 = v19;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v15 = BSServiceInjectionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v13 succinctDescription];
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = a5;
      _os_log_error_impl(&dword_19A821000, v15, OS_LOG_TYPE_ERROR, "failed to acquire injector with error=%{public}@ : description='%{public}@'", buf, 0x16u);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

void sub_19A82B9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BSServiceBootstrapLog()
{
  if (BSServiceBootstrapLog_onceToken != -1)
  {
    dispatch_once(&BSServiceBootstrapLog_onceToken, &__block_literal_global_4);
  }

  v1 = BSServiceBootstrapLog___logObj;

  return v1;
}

void sub_19A82CBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSServiceConnectionEndpointInjector;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A82CC24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void __BSServiceBootstrapLog_block_invoke()
{
  v0 = os_log_create("com.apple.BoardServices", "Bootstrap");
  v1 = BSServiceBootstrapLog___logObj;
  BSServiceBootstrapLog___logObj = v0;
}

void sub_19A82E408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BSNSXPCTransport;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A82E690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = _BSNSXPCCallbackTracking;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A82E6D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void RunningBoardServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RunningBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7520118;
    v6 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"BSServiceConnectionEndpointInjector.m" lineNumber:29 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void *RunningBoardServicesLibrary_0()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __RunningBoardServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E75202E0;
    v7 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = RunningBoardServicesLibraryCore_frameworkLibrary_0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    v1 = [v0 handleFailureInFunction:v4 file:@"BSXPCServiceConnectionProxy.m" lineNumber:27 description:{@"%s", v5[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *RunningBoardServicesLibrary_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __RunningBoardServicesLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7520568;
    v7 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = RunningBoardServicesLibraryCore_frameworkLibrary_1;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_1)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"BSNSXPCTransport.m" lineNumber:38 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void RunningBoardServicesLibrary_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RunningBoardServicesLibraryCore_block_invoke_5;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7521318;
    v6 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary_3)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"BSXPCServiceConnection.m" lineNumber:34 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __getRBSAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSServiceConnectionEndpointInjector.m" lineNumber:31 description:{@"Unable to find class %s", "RBSAttribute"}];

    __break(1u);
  }
}

void __getRBSHereditaryGrantClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSHereditaryGrant");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A7BA8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSHereditaryGrantClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSServiceConnectionEndpointInjector.m" lineNumber:33 description:{@"Unable to find class %s", "RBSHereditaryGrant"}];

    __break(1u);
  }
}

void __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSAssertion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSServiceConnectionEndpointInjector.m" lineNumber:30 description:{@"Unable to find class %s", "RBSAssertion"}];

    __break(1u);
  }
}

Class __getRBSAssertionClass_block_invoke_0(uint64_t a1)
{
  RunningBoardServicesLibrary_0();
  result = objc_getClass("RBSAssertion");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    _MergedGlobals_3 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getRBSAssertionClass(void)_block_invoke") description:{@"BSXPCServiceConnectionProxy.m", 28, @"Unable to find class %s", "RBSAssertion"}];
    __break(1u);
  }

  return result;
}

void __getRBSAssertionClass_block_invoke_1(uint64_t a1)
{
  RunningBoardServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSAssertion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_4 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSNSXPCTransport.m" lineNumber:39 description:{@"Unable to find class %s", "RBSAssertion"}];

    __break(1u);
  }
}

void __getRBSConstraintsAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSConstraintsAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSConstraintsAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSConstraintsAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSNSXPCTransport.m" lineNumber:40 description:{@"Unable to find class %s", "RBSConstraintsAttribute"}];

    __break(1u);
  }
}

void __getRBSConstraintsAttributeClass_block_invoke_0(uint64_t a1)
{
  RunningBoardServicesLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSConstraintsAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSConstraintsAttributeClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSConstraintsAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSXPCServiceConnection.m" lineNumber:35 description:{@"Unable to find class %s", "RBSConstraintsAttribute"}];

    __break(1u);
  }
}

id getRBSConstraintsAttributeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRBSConstraintsAttributeClass_softClass;
  v7 = getRBSConstraintsAttributeClass_softClass;
  if (!getRBSConstraintsAttributeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRBSConstraintsAttributeClass_block_invoke;
    v3[3] = &unk_1E75200F8;
    v3[4] = &v4;
    __getRBSConstraintsAttributeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19A82F4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getRBSEndowmentGrantClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSEndowmentGrant");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSEndowmentGrantClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSServiceConnectionEndpointInjector.m" lineNumber:32 description:{@"Unable to find class %s", "RBSEndowmentGrant"}];

    __break(1u);
  }
}

void BSSetServiceFeatureFlagResolver()
{
  v0 = MEMORY[0x19A908200]();
  v1 = __explicitResolver;
  __explicitResolver = v0;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getRBSAssertionErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RunningBoardServicesLibrary_0();
  result = dlsym(v2, "RBSAssertionErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4A7BB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getRBSAssertionErrorDomainSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = RunningBoardServicesLibrary_1();
  result = dlsym(v2, "RBSAssertionErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4A7BC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19A843834(_Unwind_Exception *a1)
{
  if (!v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19A8441F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));

  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);

  _Unwind_Resume(a1);
}

void sub_19A8445F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED4A7BF8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *NSStringFromBSServiceDomainMultiplexingType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lu)", a1];
  }

  else
  {
    v2 = off_1E7520940[a1];
  }

  return v2;
}

void sub_19A847634(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19A84C4F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void _dedupeOptions(void *a1, void *a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v32 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E695DF70] array];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v37 objects:v50 count:16];
        if (v12)
        {
          v13 = *v38;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v11);
              }

              _dedupeOptions(v10, *(*(&v37 + 1) + 8 * i), 0, v9);
            }

            v12 = [v11 countByEnumeratingWithState:&v37 objects:v50 count:16];
          }

          while (v12);
        }

        v15 = [v10 copy];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"option value of key %@ was of an unexpected type : %@", v8, v7];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _dedupeOptions(__strong id, __strong id, NSString *__strong, id (^__strong)(__strong id<NSCopying>))"}];
            *buf = 138544130;
            v42 = v27;
            v43 = 2114;
            v44 = @"BSServicesConfiguration.m";
            v45 = 1024;
            v46 = 68;
            v47 = 2114;
            v48 = v26;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
          }

          v28 = v26;
          [v26 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A84F71CLL);
        }

        v10 = [MEMORY[0x1E695DF90] dictionary];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v16 = v7;
        v17 = [v16 countByEnumeratingWithState:&v33 objects:v49 count:16];
        if (v17)
        {
          v18 = *v34;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v33 + 1) + 8 * j);
              v21 = [v16 objectForKey:v20];
              _dedupeOptions(v10, v21, v20, v9);
            }

            v17 = [v16 countByEnumeratingWithState:&v33 objects:v49 count:16];
          }

          while (v17);
        }

        v15 = [v10 copy];
      }

      v22 = v15;

      v7 = v22;
    }
  }

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dictionary key %@ is not a string", v8];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _dedupeOptions(__strong id, __strong id, NSString *__strong, id (^__strong)(__strong id<NSCopying>))"}];
        *buf = 138544130;
        v42 = v30;
        v43 = 2114;
        v44 = @"BSServicesConfiguration.m";
        v45 = 1024;
        v46 = 72;
        v47 = 2114;
        v48 = v29;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v31 = v29;
      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84F7ECLL);
    }

    v23 = v9[2](v9, v7);
    v24 = v9[2](v9, v8);
    [v32 setObject:v23 forKey:v24];
  }

  else
  {
    v23 = v9[2](v9, v7);
    [v32 addObject:v23];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_19A84FD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void sub_19A854C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BSServiceMainRunLoopQueue;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBSServiceDomainStartType(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lu)", a1];
  }

  else
  {
    v2 = off_1E7520B88[a1];
  }

  return v2;
}

void ____vetProtocol_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(*(*(a1 + 32) + 8) + 40);
  if (!v9)
  {
    v10 = objc_opt_new();
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v17 name];
  if (v7)
  {
    v15 = [v7 argumentName];
    v16 = [v13 stringWithFormat:@"%@ %@: %@", v14, v15, v8];
    [v9 addObject:v16];
  }

  else
  {
    v15 = [v13 stringWithFormat:@"%@: %@", v14, v8];
    [v9 addObject:v15];
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_19A85C178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSServiceManager;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A85C1C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_19A8612AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSServiceInitiatingConnectionMultiplexer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A8612F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_19A865A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class __getRBSProcessIdentityClass_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1ED4A7CA8)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __RunningBoardServicesLibraryCore_block_invoke_4;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E7520FE0;
    v10 = 0;
    qword_1ED4A7CA8 = _sl_dlopen();
  }

  if (!qword_1ED4A7CA8)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"BSServiceDomain.m" lineNumber:32 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("RBSProcessIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSProcessIdentityClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"BSServiceDomain.m" lineNumber:33 description:{@"Unable to find class %s", "RBSProcessIdentity"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_13 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED4A7CA8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id __xpcInstance()
{
  if (qword_1ED4A7CB8 != -1)
  {
    dispatch_once(&qword_1ED4A7CB8, &__block_literal_global_194);
  }

  v1 = _MergedGlobals_14;

  return v1;
}

void sub_19A867550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSXPCServiceConnectionListener;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A867598(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void ____xpcInstance_block_invoke()
{
  v0 = getenv("LaunchInstanceID");
  if (v0)
  {
    v1 = v0;
    v2 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
    v3 = [v2 initWithUUIDString:?];
    v4 = _MergedGlobals_14;
    _MergedGlobals_14 = v3;
  }
}

void ____handleEvent_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138543618;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_19A821000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Invalidating due to error %@", &v6, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void BSServiceSetIsTesting()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceSetIsTesting isn't allowed outside unit tests"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void BSServiceSetIsTesting(void)"];
    v3 = 138544130;
    v4 = v1;
    v5 = 2114;
    v6 = @"BSServiceTesting.m";
    v7 = 1024;
    v8 = 31;
    v9 = 2114;
    v10 = v0;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
  }

  v2 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_19A86AFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSServiceQuality;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A86B018(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_19A86B544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSServiceConnectionEndpointMonitor;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A86B58C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_19A86CA70(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_19A86CE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSServiceConnectionListener;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A86CE50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_19A870220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, id *a11)
{
  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19A870A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19A871A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A8773D8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id BSServiceConnectionEndpointTargetDescriptionForServiceListener(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = getpid();
    v7 = __escaped(v3);
    v8 = [v4 UUIDString];
    v9 = [v5 stringWithFormat:@"XPCServiceListener:%i:%@:%@", v6, v7, v8];
  }

  else
  {
    v10 = getpid();
    v7 = __escaped(v3);
    v9 = [v5 stringWithFormat:@"XPCServiceListener:%i:%@", v10, v7];
  }

  return v9;
}

id BSServiceConnectionEndpointTargetDescriptionForAnonymousDomain(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  v3 = getpid();
  if (v1)
  {
    v4 = __escaped(v1);
  }

  else
  {
    v4 = @"<unknown>";
  }

  v5 = [v2 stringWithFormat:@"%i:%@", v3, v4];
  if (v1)
  {
  }

  return v5;
}

void sub_19A87BEF0(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19A87CB44(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_19A87CE20(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_19A87CFFC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_19A87D61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_19A8801E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, void *a13)
{
  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

Class __getRBSServiceClass_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1ED4A7CE0)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __RunningBoardServicesLibraryCore_block_invoke_6;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E7521390;
    v10 = 0;
    qword_1ED4A7CE0 = _sl_dlopen();
  }

  if (!qword_1ED4A7CE0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"BSServiceConnectionEndpoint.m" lineNumber:32 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("RBSService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSServiceClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"BSServiceConnectionEndpoint.m" lineNumber:33 description:{@"Unable to find class %s", "RBSService"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_16 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED4A7CE0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *NSStringFromBSServiceConnectionErrorCode(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E75213B8[a1];
  }
}