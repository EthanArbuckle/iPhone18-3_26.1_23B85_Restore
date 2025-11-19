void sub_1A2E2EE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotSizeWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotSizeWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotSizeWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotSizeWidth()
{
  v0 = getkCASnapshotSizeWidthSymbolLoc();
  if (!v0)
  {
    getkCASnapshotSizeWidth_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotTransformSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotTransformSymbolLoc_ptr;
  v6 = getkCASnapshotTransformSymbolLoc_ptr;
  if (!getkCASnapshotTransformSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotTransform");
    getkCASnapshotTransformSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2EFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotTransformSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotTransform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotTransformSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotTransform()
{
  v0 = getkCASnapshotTransformSymbolLoc();
  if (!v0)
  {
    getkCASnapshotTransform_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotMapCacheAttributeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotMapCacheAttributeSymbolLoc_ptr;
  v6 = getkCASnapshotMapCacheAttributeSymbolLoc_ptr;
  if (!getkCASnapshotMapCacheAttributeSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotMapCacheAttribute");
    getkCASnapshotMapCacheAttributeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotMapCacheAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotMapCacheAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotMapCacheAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotMapCacheAttribute()
{
  v0 = getkCASnapshotMapCacheAttributeSymbolLoc();
  if (!v0)
  {
    getkCASnapshotMapCacheAttribute_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getCARenderServerCreateSnapshotsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCARenderServerCreateSnapshotsSymbolLoc_ptr;
  v6 = getCARenderServerCreateSnapshotsSymbolLoc_ptr;
  if (!getCARenderServerCreateSnapshotsSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "CARenderServerCreateSnapshots");
    getCARenderServerCreateSnapshotsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2F2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCARenderServerCreateSnapshotsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "CARenderServerCreateSnapshots");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCARenderServerCreateSnapshotsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_CARenderServerCreateSnapshots(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  SnapshotsSymbolLoc = getCARenderServerCreateSnapshotsSymbolLoc();
  if (!SnapshotsSymbolLoc)
  {
    soft_CARenderServerCreateSnapshots_cold_1();
  }

  v9 = SnapshotsSymbolLoc(a1, a2, a3, v7);

  return v9;
}

__CFString *FBSDisplayAttachmentDescription(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_1E76BFC88[a1];
  }

  return v2;
}

id OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{

  return a16;
}

void FBSSettingForExtensionSelector_cold_2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"FBSSetting * _Nullable FBSSettingForExtensionSelector(__unsafe_unretained Class _Nonnull, SEL _Nonnull)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"selector != ((void*)0)", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSRealizeSettingsExtension_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void FBSRealizeSettingsExtension(__unsafe_unretained Class _Nonnull, __unsafe_unretained FBSSettingsExtensionType _Nonnull)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"![extension isSubclassOfClass:[FBSDerivedSettingsExtension class]]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSRealizeSceneExtension_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a FBSSceneExtension"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSceneExtension(__unsafe_unretained Class _Nonnull)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
}

void FBSRealizeSceneExtension_cold_2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSSceneExtension should not be realized"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSceneExtension(__unsafe_unretained Class _Nonnull)"];
    OUTLINED_FUNCTION_3_1();
    v5 = @"FBSSceneExtension.m";
    v6 = 1024;
    v7 = 1162;
    v8 = v2;
    v9 = v0;
    OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSRealizeSceneExtension_cold_3()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSceneExtension(__unsafe_unretained Class _Nonnull)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"extension != ((void *)0)", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _realizeSettingsExtension_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[baseClass isSubclassOfClass:[FBSSettings class]]", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _realizeSettingsExtension_cold_2(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a valid FBSSettingsExtension"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v10, v11);
  }

  v8 = v1;
  [v1 UTF8String];
  _bs_set_crash_log_message();
}

void _realizeSettingsExtension_cold_3()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsClass == baseClass", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _realizeSettingsExtension_cold_4()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_6()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_8()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_10()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_12()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_14()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_16()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_18()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_20()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_22()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_24()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_26()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_28()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_30()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_32()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _realizeSettingsExtension_cold_34()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsClass != baseClass", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSRealizeSubclassExtension_cold_1()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void FBSRealizeSubclassExtension_cold_3()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void FBSRealizeSubclassExtension_cold_5()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void FBSRealizeSubclassExtension_cold_7()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void FBSRealizeSubclassExtension_cold_9()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsClass != ((void *)0)", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSIngestSubclassProperties_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSIngestSubclassProperties(__unsafe_unretained Class _Nonnull)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsClass != ((void *)0)", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _ingestPropertiesFromSettingsSubclass_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  v3 = v0;
  OUTLINED_FUNCTION_10_0(&dword_1A2DBB000, v1, v1, "Derived %{public}@ from %{public}@.", v2);
}

void _ingestPropertiesFromSettingsSubclass_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  v4 = v0;
  OUTLINED_FUNCTION_10_0(&dword_1A2DBB000, v1, v2, "Found no mutable variant of %{public}@. Please implement +[%{public}@ mutableSubclass].", v3);
}

void _ingestPropertiesFromSettingsSubclass_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  v4 = v0;
  OUTLINED_FUNCTION_10_0(&dword_1A2DBB000, v1, v2, "Found no immutable variant of %{public}@. Please implement +[%{public}@ immutableSubclass].", v3);
}

void _ingestPropertiesFromSettingsSubclass_cold_5()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  v4 = v0;
  OUTLINED_FUNCTION_10_0(&dword_1A2DBB000, v1, v2, "Unable to derive immutable class from %{public}@. Please implement +[%{public}@ immutableSubclass]", v3);
}

void _ingestPropertiesFromSettingsSubclass_cold_6()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _ingestPropertiesFromSettingsSubclass_cold_8()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _ingestPropertiesFromSettingsSubclass_cold_11(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1A2DBB000, log, OS_LOG_TYPE_DEBUG, "Ignoring %{public}@ as we found no valid properties on the class.", buf, 0xCu);
}

void _ingestPropertiesFromSettingsSubclass_cold_12()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void _ingestPropertiesFromSettingsSubclass_cold_14(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1A2DBB000, log, OS_LOG_TYPE_DEBUG, "Ignoring %{public}@ since it defines no properties.", buf, 0xCu);
}

void _ingestPropertiesFromSettingsSubclass_cold_15()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"mutableSubclass != [mutableSubclass _mutableClass]", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _ingestPropertiesFromSettingsSubclass_cold_16()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsSubclass != [settingsSubclass _baseClass]", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _ingestPropertiesFromSettingsSubclass_cold_17()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsSubclass != ((void *)0)", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSSubclassHasBeenIngested_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL FBSSubclassHasBeenIngested(__unsafe_unretained Class _Nonnull)"];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsClass != ((void *)0)", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSSettingForLegacySetting_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"FBSSetting * _Nullable FBSSettingForLegacySetting(__unsafe_unretained Class _Nonnull, NSUInteger)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsClass != ((void*)0)", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void FBSSettingForLegacySetting_cold_2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"FBSSetting * _Nullable FBSSettingForLegacySetting(__unsafe_unretained Class _Nonnull, NSUInteger)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"legacySetting != NSNotFound", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _addMethod_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addMethod(__unsafe_unretained Class, __unsafe_unretained Class, SEL, IMP, const char *, BOOL)"}];
  OUTLINED_FUNCTION_3_1();
  v6 = @"FBSSceneExtension.m";
  v7 = 1024;
  v8 = 336;
  v9 = v3;
  v10 = a1;
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ (%{public}@:%i) : %{public}@", v5);
}

void _addMethod_cold_2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addMethod(__unsafe_unretained Class, __unsafe_unretained Class, SEL, IMP, const char *, BOOL)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"type", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _addMethod_cold_3()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addMethod(__unsafe_unretained Class, __unsafe_unretained Class, SEL, IMP, const char *, BOOL)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"imp", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _addMethod_cold_4()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addMethod(__unsafe_unretained Class, __unsafe_unretained Class, SEL, IMP, const char *, BOOL)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"sel", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _addMethod_cold_5()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addMethod(__unsafe_unretained Class, __unsafe_unretained Class, SEL, IMP, const char *, BOOL)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"ext", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void _addMethod_cold_6()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addMethod(__unsafe_unretained Class, __unsafe_unretained Class, SEL, IMP, const char *, BOOL)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"cls", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void ___realizeSettingsExtension_block_invoke_285_cold_1(uint64_t a1, Class *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v13 = NSStringFromClass(*a2);
  v6 = [v3 stringWithFormat:@"value of class %@ is not of expected class %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)_block_invoke"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v5, v13, v14);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

void _flushBulkMethods_cold_1()
{
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.8384e-34, v2, v3);
  OUTLINED_FUNCTION_2(v4, v5, v6);
  OUTLINED_FUNCTION_1(v7, v8, v9);
  OUTLINED_FUNCTION_7(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ (%{public}@:%i) : %{public}@", v11);
}

void FBSWorkspaceInitialize_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot invoke FBSWorkspaceInitialize more than once."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"FBSWorkspace * _Nonnull FBSWorkspaceInitialize(FBSWorkspaceInitializationOptions *__strong _Nonnull)"];
    v2 = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"FBSWorkspace.m";
    v6 = 1024;
    v7 = 304;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v2, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void SecurityLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SecurityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SecuritySoftLinking.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void soft_SecCertificateCreateWithData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"SecCertificateRef soft_SecCertificateCreateWithData(CFAllocatorRef, CFDataRef)"}];
  [v0 handleFailureInFunction:v1 file:@"SecuritySoftLinking.m" lineNumber:14 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_SecCertificateCopySubjectSummary_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef soft_SecCertificateCopySubjectSummary(SecCertificateRef)"];
  [v0 handleFailureInFunction:v1 file:@"SecuritySoftLinking.m" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

void _vetProtocolMethod_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
  [v1 handleFailureInFunction:v0 file:@"FBSInvocation.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"method"}];
}

void _vetProtocolMethod_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
  [v1 handleFailureInFunction:v0 file:@"FBSInvocation.m" lineNumber:42 description:@"method return value must be void"];
}

void _vetProtocolMethod_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
  [OUTLINED_FUNCTION_9_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _vetProtocolMethod_cold_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
  [OUTLINED_FUNCTION_9_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _vetProtocolMethod_cold_5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
  [OUTLINED_FUNCTION_9_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _vetProtocolMethod_cold_6()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
  [OUTLINED_FUNCTION_9_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _FBSCreateUnsafeObjectFromData_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_5();
  _os_log_error_impl(&dword_1A2DBB000, v0, OS_LOG_TYPE_ERROR, "Caught exception during decoding of data: %{public}@", v1, 0xCu);
}

void _FBSCreateUnsafeObjectFromData_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "id _FBSCreateUnsafeObjectFromData(NSData *__strong)";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "%s the unarchiver failed to instantiate with error %{public}@", &v2, 0x16u);
}

void InstallCoordinationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *InstallCoordinationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"InstallCoordinationSoftLinking.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getIXAppInstallCoordinatorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXAppInstallCoordinatorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"InstallCoordinationSoftLinking.m" lineNumber:14 description:{@"Unable to find class %s", "IXAppInstallCoordinator"}];

  __break(1u);
}

void __getIXUninstallOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXUninstallOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"InstallCoordinationSoftLinking.m" lineNumber:15 description:{@"Unable to find class %s", "IXUninstallOptions"}];

  __break(1u);
}

void __getIXApplicationIdentityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXApplicationIdentityClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"InstallCoordinationSoftLinking.m" lineNumber:16 description:{@"Unable to find class %s", "IXApplicationIdentity"}];

  __break(1u);
}

void soft_IXStringForUninstallDisposition_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *soft_IXStringForUninstallDisposition(IXUninstallDisposition)"];
  [v0 handleFailureInFunction:v1 file:@"InstallCoordinationSoftLinking.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

void EmbeddedDataResetLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmbeddedDataResetLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EmbeddedDataResetSoftLinking.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getDDRResetServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDRResetServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EmbeddedDataResetSoftLinking.m" lineNumber:14 description:{@"Unable to find class %s", "DDRResetService"}];

  __break(1u);
}

void __getDDRResetRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDRResetRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EmbeddedDataResetSoftLinking.m" lineNumber:15 description:{@"Unable to find class %s", "DDRResetRequest"}];

  __break(1u);
}

void __getDDRResetOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDRResetOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EmbeddedDataResetSoftLinking.m" lineNumber:16 description:{@"Unable to find class %s", "DDRResetOptions"}];

  __break(1u);
}

void _lock_getDefaultExtensions_cold_1()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extensions != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSOrderedSet *_lock_getDefaultExtensions(FBSSceneSpecification *__strong, __unsafe_unretained Class)"}];
    *buf = 138544130;
    v4 = v1;
    v5 = 2114;
    v6 = @"FBSSceneSpecification.m";
    v7 = 1024;
    v8 = 31;
    v9 = 2114;
    v10 = v0;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  v2 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void ManagedConfigurationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ManagedConfigurationSoftLinking.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getMCProfileConnectionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ManagedConfigurationSoftLinking.m" lineNumber:14 description:{@"Unable to find class %s", "MCProfileConnection"}];

  __break(1u);
}

void getMCManagedAppsChangedNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (MCManagedAppsChangedNotification) (*)(void))0)()) getMCManagedAppsChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"ManagedConfigurationSoftLinking.m" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

void FBSSceneJetsamPriorityCreate_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"FBSSceneJetsamPriority FBSSceneJetsamPriorityCreate(FBSSceneJetsamMode, FBSSceneResourceElevation)"}];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"FBSSceneResources.m";
  v7 = 1024;
  v8 = 51;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

void libmisLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libmisLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"libmisSoftLinking.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void soft_MISQueryBlacklistForBundle_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool soft_MISQueryBlacklistForBundle(CFStringRef _Nonnull, off_t, _Bool, struct MISBlacklistFlags * _Nullable, CFDataRef  _Nullable * _Nullable, MISBlacklistHashType * _Nullable, CFDictionaryRef  _Nullable const)"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISQueryBlacklistForCdHash_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool soft_MISQueryBlacklistForCdHash(CFDataRef  _Nonnull const, MISBlacklistHashType, _Bool, struct MISBlacklistFlags * _Nullable, CFDictionaryRef  _Nullable const)"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISAppApprovalState_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MISState soft_MISAppApprovalState(CFStringRef, CFDictionaryRef)"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISValidateUPP_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_MISValidateUPP(CFStringRef, __strong dispatch_queue_t, void (^__strong)(MISState, int64_t))"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISCopyErrorStringForErrorCode_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef soft_MISCopyErrorStringForErrorCode(MISError)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISValidateSignatureAndCopyInfo_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MISError soft_MISValidateSignatureAndCopyInfo(CFStringRef, CFDictionaryRef, CFDictionaryRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISValidationCopySignatureVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MISError soft_MISValidationCopySignatureVersion(CFStringRef, CFNumberRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkMISValidationOptionUnauthoritativeLaunch_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kMISValidationOptionUnauthoritativeLaunch) (*)(void))0)()) getkMISValidationOptionUnauthoritativeLaunch(void)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkMISValidationOptionAuthoritativeLaunch_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kMISValidationOptionAuthoritativeLaunch) (*)(void))0)()) getkMISValidationOptionAuthoritativeLaunch(void)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkMISValidationOptionOnlineAuthorization_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kMISValidationOptionOnlineAuthorization) (*)(void))0)()) getkMISValidationOptionOnlineAuthorization(void)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkMISValidationOptionOnlineCheckType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kMISValidationOptionOnlineCheckType) (*)(void))0)()) getkMISValidationOptionOnlineCheckType(void)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkMISMinSupportedSignatureVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kMISMinSupportedSignatureVersion) (*)(void))0)()) getkMISMinSupportedSignatureVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkMISFutureMinSupportedSignatureVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kMISFutureMinSupportedSignatureVersion) (*)(void))0)()) getkMISFutureMinSupportedSignatureVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkMISValidationOptionHintMainExecutablePath_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kMISValidationOptionHintMainExecutablePath) (*)(void))0)()) getkMISValidationOptionHintMainExecutablePath(void)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISEnumerateInstalledProvisioningProfiles_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MISError soft_MISEnumerateInstalledProvisioningProfiles(CFOptionFlags, _Bool (^__strong)(MISProfileRef))"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProvisioningProfileGetDeveloperCertificates_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFArrayRef soft_MISProvisioningProfileGetDeveloperCertificates(MISProfileRef)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProfileGetValue_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef soft_MISProfileGetValue(MISProfileRef, CFStringRef)"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProvisioningProfileGetEntitlements_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDictionaryRef soft_MISProvisioningProfileGetEntitlements(MISProfileRef)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProvisioningProfileGetExpirationDate_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDateRef soft_MISProvisioningProfileGetExpirationDate(MISProfileRef)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProvisioningProfileGetUUID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef soft_MISProvisioningProfileGetUUID(MISProfileRef)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProvisioningProfileGrantsEntitlement_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean soft_MISProvisioningProfileGrantsEntitlement(MISProfileRef, CFStringRef, CFTypeRef)"}];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProvisioningProfileIsAppleInternalProfile_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean soft_MISProvisioningProfileIsAppleInternalProfile(MISProfileRef)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MISProvisioningProfileProvisionsAllDevices_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean soft_MISProvisioningProfileProvisionsAllDevices(MISProfileRef)"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getMISLaunchWarningDatabaseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMISLaunchWarningDatabaseClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"libmisSoftLinking.m" lineNumber:47 description:{@"Unable to find class %s", "MISLaunchWarningDatabase"}];

  __break(1u);
}

void QuartzCoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuartzCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"QuartzCoreSoftLinking.m" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
}

void soft_CALayerGetRenderId_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t soft_CALayerGetRenderId(CALayer *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:13 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getCADisplayClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCADisplayClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:15 description:{@"Unable to find class %s", "CADisplay"}];

  __break(1u);
}

void getkCADisplayNone_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayNone) (*)(void))0)()) getkCADisplayNone(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayScaleContent_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayScaleContent) (*)(void))0)()) getkCADisplayScaleContent(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayInsetBounds_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayInsetBounds) (*)(void))0)()) getkCADisplayInsetBounds(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayOrientationRotation0_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayOrientationRotation0) (*)(void))0)()) getkCADisplayOrientationRotation0(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayOrientationRotation90_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayOrientationRotation90) (*)(void))0)()) getkCADisplayOrientationRotation90(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayOrientationRotation180_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayOrientationRotation180) (*)(void))0)()) getkCADisplayOrientationRotation180(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayOrientationRotation270_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayOrientationRotation270) (*)(void))0)()) getkCADisplayOrientationRotation270(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayModeGamutSRGB_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayModeGamutSRGB) (*)(void))0)()) getkCADisplayModeGamutSRGB(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayModeGamutP3_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayModeGamutP3) (*)(void))0)()) getkCADisplayModeGamutP3(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayModeSDR_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayModeSDR) (*)(void))0)()) getkCADisplayModeSDR(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayModeHDR10_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayModeHDR10) (*)(void))0)()) getkCADisplayModeHDR10(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCADisplayModeDolby_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCADisplayModeDolby) (*)(void))0)()) getkCADisplayModeDolby(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotContextId_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotContextId) (*)(void))0)()) getkCASnapshotContextId(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotContextList_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotContextList) (*)(void))0)()) getkCASnapshotContextList(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotDisplayName_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotDisplayName) (*)(void))0)()) getkCASnapshotDisplayName(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotFormatOpaque_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotFormatOpaque) (*)(void))0)()) getkCASnapshotFormatOpaque(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotFormatWideGamut_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotFormatWideGamut) (*)(void))0)()) getkCASnapshotFormatWideGamut(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotMode_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotMode) (*)(void))0)()) getkCASnapshotMode(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotModeIncludeContextList_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotModeIncludeContextList) (*)(void))0)()) getkCASnapshotModeIncludeContextList(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotOriginX_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotOriginX) (*)(void))0)()) getkCASnapshotOriginX(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotOriginY_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotOriginY) (*)(void))0)()) getkCASnapshotOriginY(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotSizeHeight_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotSizeHeight) (*)(void))0)()) getkCASnapshotSizeHeight(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotSizeWidth_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotSizeWidth) (*)(void))0)()) getkCASnapshotSizeWidth(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotTransform_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotTransform) (*)(void))0)()) getkCASnapshotTransform(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCASnapshotMapCacheAttribute_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kCASnapshotMapCacheAttribute) (*)(void))0)()) getkCASnapshotMapCacheAttribute(void)"];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_CARenderServerCreateSnapshots_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool soft_CARenderServerCreateSnapshots(mach_port_t, IOSurfaceRef *, IOSurfaceRef *, NSDictionary *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"QuartzCoreSoftLinking.m" lineNumber:52 description:{@"%s", dlerror()}];

  __break(1u);
}

void BSAtomicGetFlag()
{
    ;
  }
}

void BSAtomicSetFlag()
{
    ;
  }
}

void BSContinuousMachTimeNow()
{
    ;
  }
}

void BSCreateDeserializedArrayFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary()
{
    ;
  }
}

void BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSCreateDeserializedCFValueFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSCreateDeserializedSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSCreateDeserializedStringFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSCreateSerializedBSXPCEncodableObject()
{
    ;
  }
}

void BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeCFValueFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeCGFloatFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeCGRectFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeCGRectFromXPCObject()
{
    ;
  }
}

void BSDeserializeCGSizeFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeCGSizeFromXPCObject()
{
    ;
  }
}

void BSDeserializeDataFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeDoubleFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDeserializeStringFromXPCDictionaryWithKey()
{
    ;
  }
}

void BSDispatchBlockCreateWithCurrentQualityOfService()
{
    ;
  }
}

void BSDispatchMain()
{
    ;
  }
}

void BSDispatchQueueAssert()
{
    ;
  }
}

void BSDispatchQueueAssertMain()
{
    ;
  }
}

void BSDispatchQueueAssertNot()
{
    ;
  }
}

void BSDispatchQueueCreate()
{
    ;
  }
}

void BSDispatchQueueCreateSerial()
{
    ;
  }
}

void BSDispatchQueueCreateSerialWithQoS()
{
    ;
  }
}

void BSDispatchQueueCreateWithQualityOfService()
{
    ;
  }
}

void BSEqualBools()
{
    ;
  }
}

void BSEqualObjects()
{
    ;
  }
}

void BSEqualStrings()
{
    ;
  }
}

void BSFloatEqualToFloat()
{
    ;
  }
}

void BSFloatGreaterThanFloat()
{
    ;
  }
}

void BSFloatGreaterThanOrEqualToFloat()
{
    ;
  }
}

void BSFloatIsOne()
{
    ;
  }
}

void BSFloatIsZero()
{
    ;
  }
}

void BSFloatLessThanFloat()
{
    ;
  }
}

void BSFloatLessThanOrEqualToFloat()
{
    ;
  }
}

void BSInterfaceOrientationDescription()
{
    ;
  }
}

void BSInterfaceOrientationIsLandscape()
{
    ;
  }
}

void BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle()
{
    ;
  }
}

void BSModificationDateForPath()
{
    ;
  }
}

void BSNSStringFromCGRect()
{
    ;
  }
}

void BSNSStringFromCGSize()
{
    ;
  }
}

void BSObjCClassCreate()
{
    ;
  }
}

void BSOrientationRotationDirectionDescription()
{
    ;
  }
}

void BSRectEqualToRect()
{
    ;
  }
}

void BSRectFromValue()
{
    ;
  }
}

void BSRectGetCenter()
{
    ;
  }
}

void BSRectWithSize()
{
    ;
  }
}

void BSSelfTaskHasEntitlement()
{
    ;
  }
}

void BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeArrayToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeBSXPCEncodableObjectToXPCDictionary()
{
    ;
  }
}

void BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeCFValueToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeCGFloatToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeCGRectToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeCGSizeToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeDataToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeDoubleToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeSetOfBSXPCEncodableObjectsToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSerializeStringToXPCDictionaryWithKey()
{
    ;
  }
}

void BSSettingFlagForBool()
{
    ;
  }
}

void BSSettingFlagIfYes()
{
    ;
  }
}

void BSSettingFlagIsYes()
{
    ;
  }
}

void BSSettingForKey()
{
    ;
  }
}

void BSSettingsDiffIsEmpty()
{
    ;
  }
}

void BSSettingsEqualToSettings()
{
    ;
  }
}

void BSSettingsIsEmpty()
{
    ;
  }
}

void BSSizeEqualToSize()
{
    ;
  }
}

void BSSizeFromValue()
{
    ;
  }
}

void BSStringFromBOOL()
{
    ;
  }
}

void BSValueWithRect()
{
    ;
  }
}

void BSValueWithSize()
{
    ;
  }
}

void BSXPCAutoCodingInitialize()
{
    ;
  }
}

void BSXPCLegacyCoding()
{
    ;
  }
}

void BSXPCSecureCoding()
{
    ;
  }
}

void NSXPCSecureCoding()
{
    ;
  }
}

void _BSAutoMember()
{
    ;
  }
}

void _BSIsInternalInstall()
{
    ;
  }
}

void _bs_set_crash_log_message()
{
    ;
  }
}

double gotLoadHelper_x8__OBJC_CLASS___AITransactionLog(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileInstallation))
  {
    return dlopenHelper_MobileInstallation(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_MobileInstallation(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 0);
  atomic_store(1u, &dlopenHelperFlag_MobileInstallation);
  return a1;
}