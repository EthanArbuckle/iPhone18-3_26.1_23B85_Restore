NSMapTable *FBSSettingForExtensionSelector(void *a1, const void *a2)
{
  if (!a2)
  {
    FBSSettingForExtensionSelector_cold_2();
  }

  if (!a1)
  {
    FBSSettingForExtensionSelector_cold_1();
  }

  os_unfair_lock_lock(&__ExtensionLock);
  if (__SelectorsToSettingsMap)
  {
    v4 = NSMapGet(__SelectorsToSettingsMap, [a1 _baseClass]);
    v5 = v4;
    if (v4)
    {
      v4 = NSMapGet(v4, a2);
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&__ExtensionLock);

  return v6;
}

void OUTLINED_FUNCTION_11(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_5_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

__n128 OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *(v14 - 256) = a13.n128_u32[0];
  *(v14 - 252) = v13;
  return result;
}

__CFString *FBSDisplayTypeDescription(unint64_t a1)
{
  if (a1 == -1)
  {
    v5 = @"<<Invalid>>";
  }

  else
  {
    v2 = FBSDisplayTypeName(a1);
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
    }

    v5 = v4;
  }

  return v5;
}

__CFString *FBSDisplayTypeName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E76BF2F0[a1];
  }
}

uint64_t FBSDisplayTagToFBSDisplayType(int a1, int a2, _BYTE *a3)
{
  if (a1 == 1)
  {
    result = 0;
    *a3 = 1;
  }

  else
  {
    v4 = 8;
    v5 = 3;
    v6 = 6;
    v7 = 4;
    v8 = 5;
    v9 = 7;
    if ((*&a2 & 0x10000) == 0)
    {
      v9 = -1;
    }

    if ((a2 & 0x10) == 0)
    {
      v8 = v9;
    }

    if ((a2 & 8) == 0)
    {
      v7 = v8;
    }

    if ((a2 & 0x40) == 0)
    {
      v6 = v7;
    }

    if ((a2 & 0x20) == 0)
    {
      v5 = v6;
    }

    if ((a2 & 0x80) == 0)
    {
      v4 = v5;
    }

    if ((a2 & 4) != 0)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

id getkCADisplayOrientationRotation180()
{
  v0 = getkCADisplayOrientationRotation180SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation180_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayOrientationRotation180SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation180SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation180SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation180SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation180");
    getkCADisplayOrientationRotation180SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBCE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCADisplayOrientationRotation270()
{
  v0 = getkCADisplayOrientationRotation270SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation270_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayOrientationRotation270SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation270SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation270SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation270SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation270");
    getkCADisplayOrientationRotation270SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBCF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayRotationFromCADisplayRotation(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = getkCADisplayOrientationRotation90();
    v3 = [v1 isEqualToString:v2];

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = getkCADisplayOrientationRotation180();
      v6 = [v1 isEqualToString:v5];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v7 = getkCADisplayOrientationRotation270();
        v8 = [v1 isEqualToString:v7];

        if (v8)
        {
          v4 = 3;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getkCADisplayOrientationRotation90()
{
  v0 = getkCADisplayOrientationRotation90SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation90_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayOrientationRotation90SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation90SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation90SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation90SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation90");
    getkCADisplayOrientationRotation90SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCADisplayModeGamutP3()
{
  v0 = getkCADisplayModeGamutP3SymbolLoc();
  if (!v0)
  {
    getkCADisplayModeGamutP3_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *FBSDisplayGamutFromCADisplayGamut(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = getkCADisplayModeGamutP3();
    v3 = [v1 isEqualToString:v2];

    return v3;
  }

  return result;
}

uint64_t getkCADisplayModeGamutP3SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeGamutP3SymbolLoc_ptr;
  v6 = getkCADisplayModeGamutP3SymbolLoc_ptr;
  if (!getkCADisplayModeGamutP3SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeGamutP3");
    getkCADisplayModeGamutP3SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayHDRModeFromCADisplayHDRMode(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = getkCADisplayModeHDR10();
    v3 = [v1 isEqualToString:v2];

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = getkCADisplayModeDolby();
      v6 = [v1 isEqualToString:v5];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getkCADisplayModeHDR10()
{
  v0 = getkCADisplayModeHDR10SymbolLoc();
  if (!v0)
  {
    getkCADisplayModeHDR10_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayModeHDR10SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeHDR10SymbolLoc_ptr;
  v6 = getkCADisplayModeHDR10SymbolLoc_ptr;
  if (!getkCADisplayModeHDR10SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeHDR10");
    getkCADisplayModeHDR10SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCADisplayModeDolby()
{
  v0 = getkCADisplayModeDolbySymbolLoc();
  if (!v0)
  {
    getkCADisplayModeDolby_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayModeDolbySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeDolbySymbolLoc_ptr;
  v6 = getkCADisplayModeDolbySymbolLoc_ptr;
  if (!getkCADisplayModeDolbySymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeDolby");
    getkCADisplayModeDolbySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayOverscanCompensationFromCADisplayOverscanAdjustment(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = getkCADisplayScaleContent();
    v3 = [v1 isEqualToString:v2];

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = getkCADisplayInsetBounds();
      v6 = [v1 isEqualToString:v5];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getkCADisplayScaleContent()
{
  v0 = getkCADisplayScaleContentSymbolLoc();
  if (!v0)
  {
    getkCADisplayScaleContent_cold_1();
  }

  v1 = *v0;

  return v1;
}

id getkCADisplayInsetBounds()
{
  v0 = getkCADisplayInsetBoundsSymbolLoc();
  if (!v0)
  {
    getkCADisplayInsetBounds_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayScaleContentSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayScaleContentSymbolLoc_ptr;
  v6 = getkCADisplayScaleContentSymbolLoc_ptr;
  if (!getkCADisplayScaleContentSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayScaleContent");
    getkCADisplayScaleContentSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCADisplayInsetBoundsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayInsetBoundsSymbolLoc_ptr;
  v6 = getkCADisplayInsetBoundsSymbolLoc_ptr;
  if (!getkCADisplayInsetBoundsSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayInsetBounds");
    getkCADisplayInsetBoundsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayTypeToDisplayTag(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1A2E69450[a1 - 1];
  }
}

uint64_t _FBSCreateUnsafeObjectFromData(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 length])
  {
    v2 = objc_autoreleasePoolPush();
    v7 = 0;
    v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v1 error:&v7];
    v4 = v7;
    if (v3)
    {
      [v3 setRequiresSecureCoding:0];
      v5 = [v3 decodeObjectOfClasses:0 forKey:*MEMORY[0x1E696A508]];
      [v3 finishDecoding];
    }

    else
    {
      v3 = FBLogAppDataStore();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _FBSCreateUnsafeObjectFromData_cold_2(v4, v3);
      }

      v5 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void OUTLINED_FUNCTION_11_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_11_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, (v5 - 112), 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return [a1 countByEnumeratingWithState:&a41 objects:v41 - 232 count:16];
}

void ___realizeSettingsExtension_block_invoke_285(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!*(a1 + 48) || (objc_opt_isKindOfClass() & 1) != 0)
    {
      if (-[FBSSetting specialCollection](*(a1 + 32)) == 0x7FFFFFFFFFFFFFFFLL && [v6 count])
      {
        if (objc_opt_respondsToSelector())
        {
          [v6 firstObject];
        }

        else
        {
          [v6 anyObject];
        }

        objc_claimAutoreleasedReturnValue();
        objc_opt_respondsToSelector();
        BSSettingFlagForBool();
      }

      BSSettingFlagIsYes();
    }

    ___realizeSettingsExtension_block_invoke_285_cold_1(v6, (a1 + 48));
  }

  [(FBSSettings *)v5 _setValue:*(a1 + 32) forSetting:?];
}

void FBSRealizeSubclassExtension(objc_class *a1)
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FBSRealizeSubclassExtension_cold_9();
  }

  Superclass = a1;
  os_unfair_lock_lock(&__SubclassLock);
  if (objc_opt_class() == Superclass)
  {
    goto LABEL_51;
  }

  do
  {
    v2 = objc_getAssociatedObject(Superclass, _FBSRealizedKey);
    v3 = v2 == 0;

    if (!v3)
    {
      break;
    }

    outCount = 0;
    Class = object_getClass(Superclass);
    v5 = 0;
    v52 = class_copyMethodList(Class, &outCount);
    if (!v52 || !outCount)
    {
      goto LABEL_50;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v52[v6];
      if (method_getImplementation(v10) == MEMORY[0x1E69E58E8])
      {
        goto LABEL_28;
      }

      name = method_getDescription(v10)->name;
      if (name == sel_subclassExtension)
      {
        v15 = [(objc_class *)Superclass subclassExtension];
        if (!v15)
        {
          goto LABEL_28;
        }

        v55[0] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
        goto LABEL_27;
      }

      if (name == sel_subclassExtensions)
      {
        v16 = [(objc_class *)Superclass subclassExtensions];
LABEL_27:
        v17 = v16;

        v9 = v17;
        goto LABEL_28;
      }

      if (name == sel_immutableSubclass)
      {
        v7 = [(objc_class *)Superclass immutableSubclass];
        if (v7 && [v7 isSubclassOfClass:{-[objc_class _mutableClass](Superclass, "_mutableClass")}])
        {
          v27 = MEMORY[0x1E696AEC0];
          v28 = NSStringFromClass(Superclass);
          v29 = [v27 stringWithFormat:@"%@ is not immutable", v28];

          v30 = MEMORY[0x1E69E9C10];
          v31 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
            objc_claimAutoreleasedReturnValue();
            FBSRealizeSubclassExtension_cold_7();
          }

          v33 = v29;
          [v29 UTF8String];
          _bs_set_crash_log_message();
        }
      }

      else if (name == sel_mutableSubclass)
      {
        v8 = [(objc_class *)Superclass mutableSubclass];
        if (!v8)
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = NSStringFromClass(Superclass);
          v23 = [v21 stringWithFormat:@"+[%@ mutableSubclass] returned nil", v22];

          v24 = MEMORY[0x1E69E9C10];
          v25 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
            objc_claimAutoreleasedReturnValue();
            FBSRealizeSubclassExtension_cold_5();
          }

          v26 = v23;
          [v23 UTF8String];
          _bs_set_crash_log_message();
        }

        if (([v8 isSubclassOfClass:{-[objc_class _mutableClass](Superclass, "_mutableClass")}] & 1) == 0)
        {
          v34 = MEMORY[0x1E696AEC0];
          v35 = NSStringFromClass(Superclass);
          v36 = [v34 stringWithFormat:@"%@ is not mutable", v35];

          v37 = MEMORY[0x1E69E9C10];
          v38 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
            objc_claimAutoreleasedReturnValue();
            FBSRealizeSubclassExtension_cold_3();
          }

          v40 = v36;
          [v36 UTF8String];
          _bs_set_crash_log_message();
        }
      }

      else if (name == sel_settingForProperty_ || name == sel_allSettings || name == sel_allSettingsFromProtocol_ || name == sel_allSettingsFromExtension_)
      {
        v41 = MEMORY[0x1E696AEC0];
        v42 = NSStringFromSelector(name);
        v43 = [v41 stringWithFormat:@"+[FBSSettings %@] may not be overridden.", v42];

        v44 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
          objc_claimAutoreleasedReturnValue();
          FBSRealizeSubclassExtension_cold_1();
        }

        v47 = v43;
        [v43 UTF8String];
        _bs_set_crash_log_message();
      }

LABEL_28:
      ++v6;
    }

    while (v6 < outCount);
    if (v7 && v8 && v7 != v8)
    {
      [v7 _setCounterpartClass:v8];
      [v8 _setCounterpartClass:v7];
    }

    if (v9)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v5 = v9;
      v18 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v18)
      {
        v19 = *v49;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v49 != v19)
            {
              objc_enumerationMutation(v5);
            }

            FBSRealizeSettingsExtension(Superclass, *(*(&v48 + 1) + 8 * i));
          }

          v18 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_50:
    objc_setAssociatedObject(Superclass, _FBSRealizedKey, &unk_1F15AE910, 0);
    Superclass = class_getSuperclass(Superclass);
    fbs_free(&v52);
  }

  while (Superclass != objc_opt_class());
LABEL_51:
  os_unfair_lock_unlock(&__SubclassLock);
}

void sub_1A2DBF038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  fbs_free(va);
  _Unwind_Resume(a1);
}

unint64_t FBSProcessResourceValueForTimeInterval(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  else
  {
    return (a1 * 1000.0);
  }
}

id FBLogWatchdog()
{
  if (FBLogWatchdog_onceToken != -1)
  {
    FBLogWatchdog_cold_1();
  }

  v1 = FBLogWatchdog___logObj;

  return v1;
}

id FBSProcessPrettyDescription(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = [v1 identity];
  v3 = [v1 handle];
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
LABEL_8:
      v7 = MEMORY[0x1E696AEC0];
      v2 = [v4 name];
      v8 = v2;
      if (!v2)
      {
        v8 = [v4 bundleIdentifier];
      }

      v9 = [v7 stringWithFormat:@"%@:%d", v8, objc_msgSend(v4, "pid")];
      if (!v2)
      {
      }

      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = v1) == 0)
    {
      v9 = [v1 description];
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v5 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v6 = [v3 pid];
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v9 = [v5 stringWithFormat:@"%@:%d", v2, v6];
LABEL_15:

LABEL_16:

  return v9;
}

__CFString *NSStringFromProcessResourceType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return *(&off_1E76BFB40 + a1);
  }
}

void *FBSProcessResourceAllowanceIsValid(void *result)
{
  if (result)
  {
    if (*result)
    {
      return (result[1] != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FBSSettingsExtensionIsRealized(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(&__ExtensionLock);
  v4 = [__SettingsToExtensionsMap objectForKey:a1];
  v5 = [v4 containsObject:a2];
  os_unfair_lock_unlock(&__ExtensionLock);

  return v5;
}

id FBSGetDefaultExtensions(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&FBSGetDefaultExtensions___lock);
  Class = object_getClass(v1);
  v3 = _lock_getDefaultExtensions(v1, Class);

  os_unfair_lock_unlock(&FBSGetDefaultExtensions___lock);

  return v3;
}

id _lock_getDefaultExtensions(void *a1, void *a2)
{
  v3 = a1;
  if (objc_opt_class() == a2)
  {
    v4 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  else
  {
    v4 = objc_getAssociatedObject(a2, _FBSDefaultExtensionsKey);
    if (!v4)
    {
      Superclass = class_getSuperclass(a2);
      v6 = _lock_getDefaultExtensions(v3, Superclass);
      if (!v6)
      {
        _lock_getDefaultExtensions_cold_1();
      }

      v4 = v6;
      outCount = 0;
      v16 = class_copyMethodList(a2, &outCount);
      if (outCount)
      {
        v7 = 0;
        while (1)
        {
          v8 = v16[v7];
          if (method_getName(v8) == sel_defaultExtensions)
          {
            break;
          }

          if (++v7 >= outCount)
          {
            goto LABEL_14;
          }
        }

        Implementation = method_getImplementation(v8);
        v10 = MEMORY[0x1E695DFB8];
        v11 = (Implementation)(v3, sel_defaultExtensions);
        v12 = [v10 orderedSetWithArray:v11];

        if ([v12 count] && (objc_msgSend(v12, "isSubsetOfOrderedSet:", v4) & 1) == 0)
        {
          v13 = [v4 mutableCopy];
          [v13 unionOrderedSet:v12];
          v14 = [v13 copy];

          v4 = v14;
        }
      }

LABEL_14:
      objc_setAssociatedObject(a2, _FBSDefaultExtensionsKey, v4, 1);
      fbs_free(&v16);
    }
  }

  return v4;
}

id FBLogCommon()
{
  if (FBLogCommon_onceToken != -1)
  {
    FBLogCommon_cold_1();
  }

  v1 = FBLogCommon___logObj;

  return v1;
}

uint64_t OUTLINED_FUNCTION_15_1(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  return [a1 countByEnumeratingWithState:&a17 objects:&a49 count:16];
}

void __accessProxiesWithBlock(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v4 = v1;
    os_unfair_lock_lock(&__accessProxiesWithBlock___lock);
    if (!__accessProxiesWithBlock___endpointToProxy)
    {
      v2 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
      v3 = __accessProxiesWithBlock___endpointToProxy;
      __accessProxiesWithBlock___endpointToProxy = v2;
    }

    v4[2]();
    os_unfair_lock_unlock(&__accessProxiesWithBlock___lock);
    v1 = v4;
  }
}

BOOL FBSSceneActivityModeIsValid(int a1)
{
  result = 1;
  if ((a1 + 50) > 0x3C || ((1 << (a1 + 50)) & 0x1004010040000001) == 0)
  {
    return a1 == -128;
  }

  return result;
}

id FBSSettingForSelector(void *a1, const void *a2)
{
  v4 = FBSSettingForExtensionSelector(a1, a2);
  if (!v4)
  {
    v4 = FBSSettingForLegacySelector(a1, a2);
  }

  return v4;
}

id FBSSettingForLegacySelector(objc_class *a1, const void *a2)
{
  Superclass = a1;
  if ([(objc_class *)a1 _baseClass]== a1 || [(objc_class *)Superclass _mutableClass]== Superclass)
  {
    v7 = 0;
  }

  else
  {
    FBSIngestSubclassProperties(Superclass);
    if ([(objc_class *)Superclass isSubclassOfClass:[(objc_class *)Superclass _mutableClass]]&& [(objc_class *)Superclass _counterpartClass])
    {
      Superclass = [(objc_class *)Superclass _counterpartClass];
    }

    os_unfair_lock_lock(&__ExtensionLock);
    if (__SelectorsToSettingsMap)
    {
      while (Superclass != objc_opt_class())
      {
        v4 = NSMapGet(__SelectorsToSettingsMap, Superclass);
        v5 = v4;
        if (v4)
        {
          v6 = NSMapGet(v4, a2);
          if (v6)
          {
            v7 = v6;

            goto LABEL_13;
          }
        }

        Superclass = class_getSuperclass(Superclass);
      }
    }

    v7 = 0;
LABEL_13:
    os_unfair_lock_unlock(&__ExtensionLock);
  }

  return v7;
}

void FBSIngestSubclassProperties(uint64_t a1)
{
  if (!a1)
  {
    FBSIngestSubclassProperties_cold_1();
  }

  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __FBSIngestSubclassProperties_block_invoke;
  v1[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v1[4] = a1;
  os_unfair_lock_lock(&__SubclassLock);
  __FBSIngestSubclassProperties_block_invoke(v1);
  os_unfair_lock_unlock(&__SubclassLock);
}

void __FBSIngestSubclassProperties_block_invoke(uint64_t a1)
{
  for (i = *(a1 + 32); i != objc_opt_class(); i = class_getSuperclass(i))
  {
    v2 = objc_getAssociatedObject(i, _FBSIngestedKey);

    if (v2)
    {
      break;
    }

    _ingestPropertiesFromSettingsSubclass(i);
    objc_setAssociatedObject(i, _FBSIngestedKey, &unk_1F15AE910, 0);
  }
}

BOOL FBSSubclassHasBeenIngested(void *a1)
{
  if (!a1)
  {
    FBSSubclassHasBeenIngested_cold_1();
  }

  os_unfair_lock_lock(&__SubclassLock);
  v2 = objc_getAssociatedObject(a1, _FBSIngestedKey);
  v3 = v2 != 0;

  os_unfair_lock_unlock(&__SubclassLock);
  return v3;
}

uint64_t soft_CALayerGetRenderId(void *a1)
{
  v1 = a1;
  RenderIdSymbolLoc = getCALayerGetRenderIdSymbolLoc();
  if (!RenderIdSymbolLoc)
  {
    soft_CALayerGetRenderId_cold_1();
  }

  v3 = RenderIdSymbolLoc(v1);

  return v3;
}

uint64_t getCALayerGetRenderIdSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCALayerGetRenderIdSymbolLoc_ptr;
  v6 = getCALayerGetRenderIdSymbolLoc_ptr;
  if (!getCALayerGetRenderIdSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "CALayerGetRenderId");
    getCALayerGetRenderIdSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DC2FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___realizeSettingsExtension_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

double ___realizeSettingsExtension_block_invoke_3(uint64_t a1, void *a2)
{
  memset(v5, 0, sizeof(v5));
  v3 = [a2 valueForSetting:*(a1 + 32)];
  [v3 getValue:v5 size:*(a1 + 40)];

  return *v5;
}

void FBSRealizeSceneExtension(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FBSRealizeSceneExtension_cold_3();
  }

  if (([a1 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    FBSRealizeSceneExtension_cold_1(a1);
  }

  if (objc_opt_class() == a1)
  {
    FBSRealizeSceneExtension_cold_2();
  }

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [a1 settingsExtensions];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (1)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if (!--v4)
      {
        v4 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a1 clientSettingsExtensions];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if (!--v8)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [a1 transitionContextExtensions];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    while (1)
    {
      if (*v16 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if (!--v12)
      {
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v27 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FBSRealizeSceneExtension_block_invoke;
  v14[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v14[4] = a1;
  os_unfair_lock_lock(&__ExtensionLock);
  __FBSRealizeSceneExtension_block_invoke(v14);
  os_unfair_lock_unlock(&__ExtensionLock);
}

void __FBSRealizeSceneExtension_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = __SceneExtensions;
  if (!__SceneExtensions)
  {
    v3 = objc_opt_new();
    v4 = __SceneExtensions;
    __SceneExtensions = v3;

    v2 = __SceneExtensions;
  }

  if (([v2 containsObject:*(a1 + 32)] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    [__SceneExtensions addObject:*(a1 + 32)];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [*(a1 + 32) settingsExtensions];
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          objc_opt_class();
          _realizeSettingsExtension();
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v8);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [*(a1 + 32) clientSettingsExtensions];
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          objc_opt_class();
          _realizeSettingsExtension();
          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v13);
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v16 = [*(a1 + 32) transitionContextExtensions];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          objc_opt_class();
          _realizeSettingsExtension();
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v18);
    }

    objc_autoreleasePoolPop(v5);
  }
}

void FBSRealizeSettingsExtension(uint64_t a1, void *a2)
{
  if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    FBSRealizeSettingsExtension_cold_1();
  }

  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __FBSRealizeSettingsExtension_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0lu32l8u40l8;
    v4[4] = a1;
    v4[5] = a2;
    os_unfair_lock_lock(&__ExtensionLock);
    __FBSRealizeSettingsExtension_block_invoke(v4);
    os_unfair_lock_unlock(&__ExtensionLock);
  }
}

void __FBSRealizeSettingsExtension_block_invoke(uint64_t a1)
{
  [*(a1 + 32) _baseClass];

  _realizeSettingsExtension();
}

void _realizeSettingsExtension()
{
  v0 = MEMORY[0x1EEE9AC00]();
  aClass = v1;
  v2 = v0;
  v241 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&__ExtensionLock);
  v191 = v2;
  cls = [(objc_class *)v2 _baseClass];
  v182 = [__SettingsToExtensionsMap objectForKey:?];
  if (([v182 containsObject:aClass] & 1) == 0)
  {
    if (!cls)
    {
      _realizeSettingsExtension_cold_35();
    }

    if (([(objc_class *)cls isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      _realizeSettingsExtension_cold_1();
    }

    if (([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      _realizeSettingsExtension_cold_2(aClass);
    }

    v197 = [(objc_class *)aClass isSubclassOfClass:objc_opt_class()];
    if (v197)
    {
      if (cls == v2)
      {
        _realizeSettingsExtension_cold_34();
      }
    }

    else if (cls != v2)
    {
      _realizeSettingsExtension_cold_3();
    }

    if (!__SettingsToExtensionsMap)
    {
      v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v4 = __SettingsToExtensionsMap;
      __SettingsToExtensionsMap = v3;

      v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v6 = __SelectorsToSettingsMap;
      __SelectorsToSettingsMap = v5;

      v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v8 = __LegacySettingsToSettingsMap;
      __LegacySettingsToSettingsMap = v7;
    }

    v9 = v182;
    if (!v182)
    {
      v9 = [MEMORY[0x1E695DFA8] set];
      [__SettingsToExtensionsMap setObject:v9 forKey:cls];
    }

    v182 = v9;
    [v9 addObject:aClass];
    if (v197)
    {
      v10 = v2;
    }

    else
    {
      v10 = cls;
    }

    v177 = v10;
    v11 = [__SelectorsToSettingsMap objectForKey:?];
    v12 = [v11 copy];

    table = v12;
    if (!v12)
    {
      table = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:0 capacity:32];
    }

    v13 = [__LegacySettingsToSettingsMap objectForKey:cls];
    v14 = [v13 copy];

    v181 = v14;
    if (!v14)
    {
      v181 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:32];
    }

    v15 = FBLogSceneExtension();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromClass(aClass);
      v17 = NSStringFromClass(cls);
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_1A2DBB000, v15, OS_LOG_TYPE_DEFAULT, "Realizing settings extension %{public}@ on %{public}@", buf, 0x16u);
    }

    v18 = [(objc_class *)aClass BSObjCProtocol];
    v180 = v18;
    if (v18)
    {
      v19 = [v18 name];
      v20 = _gatherProperties(v180);
      v21 = _gatherMethods(v180);
      v192 = [v21 mutableCopy];

      protocol = [v180 protocol];
      if (protocol)
      {
        class_addProtocol(cls, protocol);
      }

      bzero(&buf[16], 0xC10uLL);
      *buf = cls;
      *&buf[8] = aClass;
      oslog = v19;
      *&buf[16] = oslog;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      obj = v20;
      v188 = [obj countByEnumeratingWithState:&v230 objects:v239 count:16];
      if (v188)
      {
        if (v197)
        {
          v22 = v191;
        }

        else
        {
          v22 = aClass;
        }

        v186 = v22;
        v187 = *v231;
        do
        {
          v195 = 0;
          do
          {
            if (*v231 != v187)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v230 + 1) + 8 * v195);
            v24 = v23;
            if (v197)
            {
              v25 = [v23 copyAsReadWrite];

              v24 = v25;
            }

            else if (([v23 isReadWrite] & 1) == 0)
            {
              v142 = [MEMORY[0x1E696AEC0] stringWithFormat:@"property is not readwrite: %@", v24];
              v143 = MEMORY[0x1E69E9C10];
              v144 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_4();
              }

              v145 = v142;
              [v142 UTF8String];
              _bs_set_crash_log_message();
            }

            v26 = [v24 isRequired];
            v190 = [v24 isCopy];
            v189 = [v24 isWeak];
            if ((v189 & v26) == 1)
            {
              v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only @optional properties can be weak: %@", v24];
              v114 = MEMORY[0x1E69E9C10];
              v115 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_32();
              }

              v116 = v113;
              [v113 UTF8String];
              _bs_set_crash_log_message();
            }

            v27 = [v24 name];
            v196 = [v24 value];
            v28 = [v196 type];
            if (v197)
            {
              v29 = [v24 customAttributeForKey:@"#"];
              v30 = v29;
              if (v29)
              {
                v31 = [v29 integerValue];
                if (!v31)
                {
                  v146 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not convert %@ to an integer", v30];
                  v147 = MEMORY[0x1E69E9C10];
                  v148 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                  {
                    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                    objc_claimAutoreleasedReturnValue();
                    _realizeSettingsExtension_cold_6();
                  }

                  v150 = v146;
                  [v146 UTF8String];
                  _bs_set_crash_log_message();
                }
              }

              else
              {
                v31 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v31 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v28 > 0x5Du)
            {
              if (v28 == 98)
              {
                v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bitfields are not supported"];
                v118 = MEMORY[0x1E69E9C10];
                v119 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_14();
                }

                v120 = v117;
                [v117 UTF8String];
                _bs_set_crash_log_message();
              }

              if (v28 == 94)
              {
                v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pointers are not supported"];
                v131 = MEMORY[0x1E69E9C10];
                v132 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_8();
                }

                v133 = v130;
                [v130 UTF8String];
                _bs_set_crash_log_message();
              }
            }

            else
            {
              if (v28 == 91)
              {
                v121 = [MEMORY[0x1E696AEC0] stringWithFormat:@"C arrays are not supported"];
                v122 = MEMORY[0x1E69E9C10];
                v123 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_12();
                }

                v124 = v121;
                [v121 UTF8String];
                _bs_set_crash_log_message();
              }

              if (v28 == 40)
              {
                v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unions are not supported"];
                v126 = MEMORY[0x1E69E9C10];
                v127 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_10();
                }

                v129 = v125;
                [v125 UTF8String];
                _bs_set_crash_log_message();
              }
            }

            v32 = v27;
            Property = class_getProperty(v186, [v27 UTF8String]);
            if (Property)
            {
              outCount = 0;
              v34 = property_copyAttributeList(Property, &outCount);
              v228 = v34;
              v35 = outCount;
              if (outCount)
              {
                do
                {
                  if (*v34->name == 86 && !*(v34->name + 1))
                  {
                    v107 = MEMORY[0x1E696AEC0];
                    v108 = NSStringFromClass(aClass);
                    v109 = [v107 stringWithFormat:@"Property %@ of extension %@ is inappropriately implemented with a backing ivar. Was this an accidental auto-synthesis?", v27, v108];

                    v110 = MEMORY[0x1E69E9C10];
                    v111 = MEMORY[0x1E69E9C10];
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                    {
                      [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                      objc_claimAutoreleasedReturnValue();
                      _realizeSettingsExtension_cold_16();
                    }

                    v112 = v109;
                    [v109 UTF8String];
                    _bs_set_crash_log_message();
                  }

                  ++v34;
                  --v35;
                }

                while (v35);
              }

              fbs_free(&v228);
            }

            if ((v197 & 1) == 0 && [v27 isEqualToString:@"displayConfigurationRequest"])
            {
              if (NSClassFromString(&cfstr_Uiresponder.isa))
              {
                v36 = FBLogSceneExtension();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *v235 = 138412290;
                  v236 = oslog;
                  _os_log_debug_impl(&dword_1A2DBB000, v36, OS_LOG_TYPE_DEBUG, "Skipping property displayConfigurationRequest from <%@> because it belongs to <UIApplicationSceneClientSettings>", v235, 0xCu);
                }

LABEL_61:

                v37 = [v24 getter];
                [v192 removeObject:v37];

                v38 = [v24 setter];
                [v192 removeObject:v38];
                goto LABEL_176;
              }

              v39 = FBLogSceneExtension();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *v235 = 138412290;
                v236 = oslog;
                _os_log_error_impl(&dword_1A2DBB000, v39, OS_LOG_TYPE_ERROR, "Property displayConfigurationRequest from <%@> is being defined in a process that does not link UIKit. This probably won't behave correctly.", v235, 0xCu);
              }
            }

            if (v28 != 64)
            {
              v193 = 0;
LABEL_79:
              v44 = 1;
              goto LABEL_80;
            }

            v193 = [v196 objectClass];
            if (!v26)
            {
              goto LABEL_79;
            }

            if (v193)
            {
              v40 = 0;
            }

            else
            {
              v40 = v197;
            }

            if (v40 == 1)
            {
              v41 = [v196 objectProtocols];
              v42 = [v41 containsObject:&unk_1F15C5408];

              if (!v42)
              {
                goto LABEL_75;
              }

              v193 = objc_opt_class();
              v43 = FBLogSceneExtension();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                *v235 = 138412546;
                v236 = v27;
                v237 = 2112;
                v238 = oslog;
                _os_log_debug_impl(&dword_1A2DBB000, v43, OS_LOG_TYPE_DEBUG, "Mapping property %@ in <%@> to BSCanonicalOrientationMapResolver", v235, 0x16u);
              }

              if (!v193)
              {
LABEL_75:
                v36 = FBLogSceneExtension();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *v235 = 138543618;
                  v236 = v27;
                  v237 = 2114;
                  v238 = oslog;
                  _os_log_impl(&dword_1A2DBB000, v36, OS_LOG_TYPE_DEFAULT, "Ignoring object property %{public}@ in <%{public}@> because it has no defined class.", v235, 0x16u);
                }

                goto LABEL_61;
              }
            }

            else if (!v193)
            {
              v151 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object property %@ in <%@> has an unknown class.", v27, oslog];
              v152 = MEMORY[0x1E69E9C10];
              v153 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_18();
              }

              v154 = v151;
              [v151 UTF8String];
              _bs_set_crash_log_message();
            }

            v44 = v193 != objc_opt_class() && v193 != objc_opt_class() && v193 != objc_opt_class();
LABEL_80:
            v185 = _structDisposition(v196);
            v45 = v26 ^ 1;
            v46 = [FBSSetting settingWithName:v27 settingsClass:v191 extension:aClass local:v26 ^ 1 type:v28 legacySetting:v31 expectedClass:v193];
            v38 = v46;
            if ((v45 | v44))
            {
              [(FBSSetting *)v46 setSpecialCollection:?];
            }

            v47 = [v24 getter];
            if (!v47)
            {
              v134 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no getter for %@", v24];
              v135 = MEMORY[0x1E69E9C10];
              v136 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_30();
              }

              v137 = v134;
              [v134 UTF8String];
              _bs_set_crash_log_message();
            }

            [v192 removeObjectIdenticalTo:v47];
            v48 = [v47 selector];
            v49 = NSMapGet(table, v48);
            v50 = v49;
            if (v49)
            {
              if (![v49 isEqual:v38])
              {
                v155 = MEMORY[0x1E696AEC0];
                v156 = NSStringFromClass(aClass);
                v157 = [v155 stringWithFormat:@"setting named %@ from %@ already exists as %@", v27, v156, v50];

                v158 = MEMORY[0x1E69E9C10];
                v159 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_20();
                }

                v160 = v157;
                [v157 UTF8String];
                _bs_set_crash_log_message();
              }

              v51 = v50;

              v38 = v51;
            }

            else
            {
              v52 = [v47 name];
              v53 = [v27 isEqualToString:v52];

              if ((v53 & 1) == 0)
              {
                v54 = NSSelectorFromString(&v27->isa);
                if (!v54)
                {
                  v55 = v27;
                  v54 = sel_registerName([v27 UTF8String]);
                }

                NSMapInsert(table, v54, v38);
              }

              NSMapInsert(table, v48, v38);
              if (v31 != 0x7FFFFFFFFFFFFFFFLL)
              {
                NSMapInsert(v181, v31, v38);
              }
            }

            if (v197)
            {
              MethodImplementation = class_getMethodImplementation(v191, v48);
              if (MethodImplementation != class_getMethodImplementation(cls, v48))
              {
                goto LABEL_129;
              }

LABEL_96:
              if (v28 == 123)
              {
                v58 = [v196 size];
                switch(v185)
                {
                  case 3:
                    v59 = v225;
                    v225[0] = MEMORY[0x1E69E9820];
                    v225[1] = 3221225472;
                    v225[2] = ___realizeSettingsExtension_block_invoke_3;
                    v225[3] = &unk_1E76BCF28;
                    v225[4] = v38;
                    v225[5] = v58;
                    break;
                  case 2:
                    v59 = v226;
                    v226[0] = MEMORY[0x1E69E9820];
                    v226[1] = 3221225472;
                    v226[2] = ___realizeSettingsExtension_block_invoke_2;
                    v226[3] = &unk_1E76BCF00;
                    v226[4] = v38;
                    v226[5] = v58;
                    break;
                  case 1:
                    v59 = v227;
                    v227[0] = MEMORY[0x1E69E9820];
                    v227[1] = 3221225472;
                    v227[2] = ___realizeSettingsExtension_block_invoke;
                    v227[3] = &unk_1E76BCED8;
                    v227[4] = v38;
                    v227[5] = v58;
                    break;
                  default:
                    v165 = MEMORY[0x1E696AEC0];
                    v166 = [v196 encoding];
                    v167 = [v165 stringWithFormat:@"Struct property %@ is not a supported format (%@) and must be explicitly synthesized using SYNTHESIZE_STRUCT_PROPERTY()", v27, v166];

                    v168 = MEMORY[0x1E69E9C10];
                    v169 = MEMORY[0x1E69E9C10];
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                    {
                      [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                      objc_claimAutoreleasedReturnValue();
                      _realizeSettingsExtension_cold_28();
                    }

                    v170 = v167;
                    [v167 UTF8String];
                    _bs_set_crash_log_message();
                }

                goto LABEL_122;
              }

              if (v28 == 64)
              {
                v59 = v224;
                v224[0] = MEMORY[0x1E69E9820];
                v224[1] = 3221225472;
                v224[2] = ___realizeSettingsExtension_block_invoke_259;
                v224[3] = &unk_1E76BCF50;
                v224[4] = v38;
LABEL_122:
                v60 = MEMORY[0x1A58E80F0](v59);

                v57 = imp_implementationWithBlock(v60);
                goto LABEL_123;
              }

              if (v28 <= 0x39u)
              {
                if (v28 == 35)
                {
                  v59 = v220;
                  v220[0] = MEMORY[0x1E69E9820];
                  v220[1] = 3221225472;
                  v220[2] = ___realizeSettingsExtension_block_invoke_5;
                  v220[3] = &unk_1E76BCFF0;
                  v220[4] = v38;
                  goto LABEL_122;
                }

                if (v28 == 42)
                {
                  v59 = v221;
                  v221[0] = MEMORY[0x1E69E9820];
                  v221[1] = 3221225472;
                  v221[2] = ___realizeSettingsExtension_block_invoke_4;
                  v221[3] = &unk_1E76BCFC8;
                  v221[4] = v38;
                  goto LABEL_122;
                }
              }

              else
              {
                switch(v28)
                {
                  case ':':
                    v59 = v219;
                    v219[0] = MEMORY[0x1E69E9820];
                    v219[1] = 3221225472;
                    v219[2] = ___realizeSettingsExtension_block_invoke_6;
                    v219[3] = &unk_1E76BD018;
                    v219[4] = v38;
                    goto LABEL_122;
                  case 'd':
                    v59 = v222;
                    v222[0] = MEMORY[0x1E69E9820];
                    v222[1] = 3221225472;
                    v222[2] = ___realizeSettingsExtension_block_invoke_3_263;
                    v222[3] = &unk_1E76BCFA0;
                    v222[4] = v38;
                    goto LABEL_122;
                  case 'f':
                    v59 = v223;
                    v223[0] = MEMORY[0x1E69E9820];
                    v223[1] = 3221225472;
                    v223[2] = ___realizeSettingsExtension_block_invoke_2_261;
                    v223[3] = &unk_1E76BCF78;
                    v223[4] = v38;
                    goto LABEL_122;
                }
              }

              v59 = v218;
              v218[0] = MEMORY[0x1E69E9820];
              v218[1] = 3221225472;
              v218[2] = ___realizeSettingsExtension_block_invoke_7;
              v218[3] = &unk_1E76BD040;
              v218[4] = v38;
              goto LABEL_122;
            }

            v57 = class_getMethodImplementation(aClass, v48);
            if (v57 == MEMORY[0x1E69E58E8])
            {
              goto LABEL_96;
            }

LABEL_123:
            v61 = 0;
            if (v57 && v57 != MEMORY[0x1E69E58E8])
            {
              v62 = [v47 encoding];
              v63 = v62;
              v64 = [v62 UTF8String];

              if (!v197)
              {
                _addBulkMethod(buf, v48, v57, v64);
LABEL_129:
                v61 = 0;
                goto LABEL_130;
              }

              _addMethod(v191, aClass, v48, v57, v64, 1);
              v65 = [(objc_class *)v191 _counterpartClass];
              v61 = 1;
              if (v65)
              {
                _addMethod(v65, aClass, v48, v57, v64, 1);
              }
            }

LABEL_130:

            v66 = [v24 setter];
            if (!v66)
            {
              v138 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no setter for %@", v24];
              v139 = MEMORY[0x1E69E9C10];
              v140 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_26();
              }

              v141 = v138;
              [v138 UTF8String];
              _bs_set_crash_log_message();
            }

            [v192 removeObjectIdenticalTo:v66];
            v67 = [v66 selector];
            v68 = NSMapGet(table, v67);
            v69 = v68;
            if (v68)
            {
              if (![v68 isEqual:v38])
              {
                v161 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setting named %@ already exists as %@", v27, v69];
                v162 = MEMORY[0x1E69E9C10];
                v163 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_22();
                }

                v164 = v161;
                [v161 UTF8String];
                _bs_set_crash_log_message();
              }

              v70 = v69;

              v38 = v70;
            }

            else
            {
              if (v28 == 123)
              {
                v71 = [v27 stringByAppendingString:@":"];
                v72 = NSSelectorFromString(v71);
                if (!v72)
                {
                  v73 = v71;
                  v72 = sel_registerName([(NSString *)v71 UTF8String]);
                }

                NSMapInsert(table, v72, v38);
              }

              NSMapInsert(table, v67, v38);
            }

            if (!v197)
            {
              v74 = class_getMethodImplementation(aClass, v67);
              if (v74 != MEMORY[0x1E69E58E8])
              {
                goto LABEL_169;
              }

LABEL_143:
              if (v28 == 123)
              {
                v75 = [v27 stringByAppendingString:@":"];
                v76 = NSSelectorFromString(v75);
                v74 = class_getMethodImplementation(aClass, v76);

                if (v74 != MEMORY[0x1E69E58E8])
                {
                  v77 = 0;
                  goto LABEL_168;
                }

                v80 = [v196 encoding];
                switch(v185)
                {
                  case 3:
                    v81 = v215;
                    v215[0] = MEMORY[0x1E69E9820];
                    v215[1] = 3221225472;
                    v215[2] = ___realizeSettingsExtension_block_invoke_3_283;
                    v215[3] = &unk_1E76BD0B8;
                    break;
                  case 2:
                    v81 = v216;
                    v216[0] = MEMORY[0x1E69E9820];
                    v216[1] = 3221225472;
                    v216[2] = ___realizeSettingsExtension_block_invoke_2_281;
                    v216[3] = &unk_1E76BD090;
                    break;
                  case 1:
                    v81 = v217;
                    v217[0] = MEMORY[0x1E69E9820];
                    v217[1] = 3221225472;
                    v217[2] = ___realizeSettingsExtension_block_invoke_278;
                    v217[3] = &unk_1E76BD068;
                    break;
                  default:
                    v171 = MEMORY[0x1E696AEC0];
                    v172 = [v196 encoding];
                    v173 = [v171 stringWithFormat:@"Struct property %@ is not a supported format (%@) and must be explicitly synthesized using SYNTHESIZE_STRUCT_PROPERTY()", v27, v172];

                    v174 = MEMORY[0x1E69E9C10];
                    v175 = MEMORY[0x1E69E9C10];
                    if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
                    {
                      [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                      objc_claimAutoreleasedReturnValue();
                      _realizeSettingsExtension_cold_24();
                    }

                    v176 = v173;
                    [v173 UTF8String];
                    _bs_set_crash_log_message();
                }

                v79 = v80;
                v81[4] = v79;
                v82 = (v81 + 4);
                v81[5] = v38;
                v83 = (v81 + 5);
                v77 = MEMORY[0x1A58E80F0](v81);

LABEL_165:
                if (v77)
                {
                  v74 = imp_implementationWithBlock(v77);
                }

                else
                {
                  v74 = MEMORY[0x1E69E58E8];
                }

LABEL_168:

LABEL_169:
                if (v74 && v74 != MEMORY[0x1E69E58E8])
                {
                  v84 = [v66 encoding];
                  v85 = v84;
                  v86 = [v84 UTF8String];

                  if (v197)
                  {
                    _addMethod(v191, aClass, v67, v74, v86, 1);
                    v87 = [(objc_class *)v191 _counterpartClass];
                    if (v87)
                    {
                      _addMethod(v87, aClass, v67, v74, v86, 1);
                    }
                  }

                  else
                  {
                    _addBulkMethod(buf, v67, v74, v86);
                  }
                }

                goto LABEL_175;
              }

              if (v28 == 64)
              {
                v210[0] = MEMORY[0x1E69E9820];
                v210[1] = 3221225472;
                v210[2] = ___realizeSettingsExtension_block_invoke_285;
                v210[3] = &unk_1E76BD0E0;
                v212 = v193;
                v210[4] = v38;
                v211 = v27;
                v213 = v190;
                v214 = v189;
                v77 = MEMORY[0x1A58E80F0](v210);

                v78 = v210;
LABEL_148:
                v79 = v78[4];
                goto LABEL_165;
              }

              if (v28 > 0x41u)
              {
                switch(v28)
                {
                  case 'B':
                    v204[0] = MEMORY[0x1E69E9820];
                    v204[1] = 3221225472;
                    v204[2] = ___realizeSettingsExtension_block_invoke_6_308;
                    v204[3] = &unk_1E76BD1D0;
                    v204[4] = v38;
                    v77 = MEMORY[0x1A58E80F0](v204);
                    v78 = v204;
                    goto LABEL_148;
                  case 'd':
                    v207[0] = MEMORY[0x1E69E9820];
                    v207[1] = 3221225472;
                    v207[2] = ___realizeSettingsExtension_block_invoke_3_302;
                    v207[3] = &unk_1E76BD158;
                    v207[4] = v38;
                    v77 = MEMORY[0x1A58E80F0](v207);
                    v78 = v207;
                    goto LABEL_148;
                  case 'f':
                    v208[0] = MEMORY[0x1E69E9820];
                    v208[1] = 3221225472;
                    v208[2] = ___realizeSettingsExtension_block_invoke_2_300;
                    v208[3] = &unk_1E76BD130;
                    v208[4] = v38;
                    v77 = MEMORY[0x1A58E80F0](v208);
                    v78 = v208;
                    goto LABEL_148;
                }
              }

              else
              {
                switch(v28)
                {
                  case '#':
                    v206[0] = MEMORY[0x1E69E9820];
                    v206[1] = 3221225472;
                    v206[2] = ___realizeSettingsExtension_block_invoke_4_304;
                    v206[3] = &unk_1E76BD180;
                    v206[4] = v38;
                    v77 = MEMORY[0x1A58E80F0](v206);
                    v78 = v206;
                    goto LABEL_148;
                  case '*':
                    v209[0] = MEMORY[0x1E69E9820];
                    v209[1] = 3221225472;
                    v209[2] = ___realizeSettingsExtension_block_invoke_298;
                    v209[3] = &unk_1E76BD108;
                    v209[4] = v38;
                    v77 = MEMORY[0x1A58E80F0](v209);
                    v78 = v209;
                    goto LABEL_148;
                  case ':':
                    v205[0] = MEMORY[0x1E69E9820];
                    v205[1] = 3221225472;
                    v205[2] = ___realizeSettingsExtension_block_invoke_5_306;
                    v205[3] = &unk_1E76BD1A8;
                    v205[4] = v38;
                    v77 = MEMORY[0x1A58E80F0](v205);
                    v78 = v205;
                    goto LABEL_148;
                }
              }

              v203[0] = MEMORY[0x1E69E9820];
              v203[1] = 3221225472;
              v203[2] = ___realizeSettingsExtension_block_invoke_7_310;
              v203[3] = &unk_1E76BD1F8;
              v203[4] = v38;
              v77 = MEMORY[0x1A58E80F0](v203);
              v78 = v203;
              goto LABEL_148;
            }

            if (v61)
            {
              goto LABEL_143;
            }

LABEL_175:

LABEL_176:
            ++v195;
          }

          while (v195 != v188);
          v88 = [obj countByEnumeratingWithState:&v230 objects:v239 count:16];
          v188 = v88;
        }

        while (v88);
      }

      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v89 = v192;
      v90 = [v89 countByEnumeratingWithState:&v199 objects:v234 count:16];
      if (v90)
      {
        v91 = *v200;
        do
        {
          for (i = 0; i != v90; ++i)
          {
            if (*v200 != v91)
            {
              objc_enumerationMutation(v89);
            }

            v93 = *(*(&v199 + 1) + 8 * i);
            InstanceMethod = class_getInstanceMethod(aClass, [v93 selector]);
            v95 = InstanceMethod;
            if (InstanceMethod)
            {
              Name = method_getName(InstanceMethod);
              Implementation = method_getImplementation(v95);
              TypeEncoding = method_getTypeEncoding(v95);
              _addBulkMethod(buf, Name, Implementation, TypeEncoding);
            }

            else
            {
              v99 = FBLogSceneExtension();
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                v100 = [v93 name];
                v101 = NSStringFromClass(aClass);
                *v235 = 138412546;
                v236 = v100;
                v237 = 2112;
                v238 = v101;
                _os_log_error_impl(&dword_1A2DBB000, v99, OS_LOG_TYPE_ERROR, "method %@ is not implemented on extension %@; ignoring", v235, 0x16u);
              }
            }
          }

          v90 = [v89 countByEnumeratingWithState:&v199 objects:v234 count:16];
        }

        while (v90);
      }

      _flushBulkMethods(buf);
      v102 = __SelectorsToSettingsMap;
      v103 = [(NSMapTable *)table copy];
      [v102 setObject:v103 forKey:v177];

      v104 = __LegacySettingsToSettingsMap;
      v105 = [(NSMapTable *)v181 copy];
      [v104 setObject:v105 forKey:cls];
    }

    else
    {
      oslog = FBLogSceneExtension();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v106 = NSStringFromClass(aClass);
        *buf = 138543362;
        *&buf[4] = v106;
        _os_log_impl(&dword_1A2DBB000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ defines no extension protocol!", buf, 0xCu);
      }
    }
  }
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

id OUTLINED_FUNCTION_6_0()
{

  return [(FBSSceneIdentityToken *)v0 _initWithHost:v2 endpoint:v1 target:v3 workspace:v4 identifier:v5];
}

void ___realizeSettingsExtension_block_invoke_6_308(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 32);
  v9 = a2;
  v6 = [(FBSSetting *)v5 isNullPreserving];
  v7 = *MEMORY[0x1E695E4C0];
  if (!v6)
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v8 = v7;
  }

  [(FBSSettings *)v9 _setValue:v8 forSetting:*(a1 + 32)];
}

void OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  _FBSApplicationLibraryLogTransaction(a1, 3, 1, v1, v2);
}

NSMapTable *FBSSettingForLegacySetting(void *a1, const void *a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    FBSSettingForLegacySetting_cold_2();
  }

  if (!a1)
  {
    FBSSettingForLegacySetting_cold_1();
  }

  os_unfair_lock_lock(&__ExtensionLock);
  if (__LegacySettingsToSettingsMap)
  {
    v4 = NSMapGet(__LegacySettingsToSettingsMap, [a1 _baseClass]);
    v5 = v4;
    if (v4)
    {
      v4 = NSMapGet(v4, a2);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v4;
  os_unfair_lock_unlock(&__ExtensionLock);

  return v6;
}

void ___realizeSettingsExtension_block_invoke_7_310(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [(FBSSetting *)*(a1 + 32) isNullPreserving];
  if (a3 || v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  }

  else
  {
    v6 = 0;
  }

  [(FBSSettings *)v7 _setValue:v6 forSetting:*(a1 + 32)];
}

id FBSWorkspaceInitialize(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&FBSWorkspaceInitialize___initializeLock);
  if (FBSWorkspaceInitialize___initialized == 1)
  {
    os_unfair_lock_unlock(&FBSWorkspaceInitialize___initializeLock);
    goto LABEL_9;
  }

  FBSWorkspaceInitialize___initialized = 1;
  v2 = [FBSWorkspace alloc];
  v3 = +[FBSWorkspaceCoupler _sharedInstance];
  v4 = [(FBSWorkspace *)v2 _initWithCoupler:v3 options:v1];

  v5 = +[FBSWorkspace _findDomainSpecification];
  v6 = [v5 launchIdentifiers];
  v7 = [v6 containsObject:@"com.apple.frontboard.workspace-service"];

  if (v7)
  {
    v8 = +[FBSWorkspace _startWorkspaceListener];
  }

  os_unfair_lock_unlock(&FBSWorkspaceInitialize___initializeLock);
  if (!v4)
  {
LABEL_9:
    FBSWorkspaceInitialize_cold_1();
  }

  return v4;
}

id FBLogSceneExtension()
{
  if (FBLogSceneExtension_onceToken != -1)
  {
    FBLogSceneExtension_cold_1();
  }

  v1 = FBLogSceneExtension___logObj;

  return v1;
}

uint64_t __FBLogSceneExtension_block_invoke()
{
  FBLogSceneExtension___logObj = os_log_create("com.apple.FrontBoard", "SceneExtension");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _structDisposition(void *a1)
{
  v1 = a1;
  if ([v1 isStruct])
  {
    v2 = [v1 structFlattenedMembers];
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
    if ([v2 count] < 2 || objc_msgSend(v3, "count") != 1)
    {
      v6 = 4;
LABEL_20:

      goto LABEL_21;
    }

    v4 = [v3 anyObject];
    if ([v4 size] == 8)
    {
      v5 = [v4 type];
      if ([v2 count] != 2)
      {
        v7 = [v2 count];
        if (v5 == 100 && v7 == 4)
        {
          v6 = 3;
        }

        else
        {
          v6 = 4;
        }

        goto LABEL_19;
      }

      v6 = 1;
      if (v5 == 81 || v5 == 113)
      {
LABEL_19:

        goto LABEL_20;
      }

      if (v5 == 100)
      {
        v6 = 2;
        goto LABEL_19;
      }
    }

    v6 = 4;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_21:

  return v6;
}

id getCADisplayClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCADisplayClass_softClass;
  v7 = getCADisplayClass_softClass;
  if (!getCADisplayClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCADisplayClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getCADisplayClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2DC7550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t QuartzCoreLibrary()
{
  v1 = 0;
  result = QuartzCoreLibraryCore();
  if (!result)
  {
    QuartzCoreLibrary_cold_1(&v1);
  }

  return result;
}

Class __getCADisplayClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  result = objc_getClass("CADisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCADisplayClass_block_invoke_cold_1();
  }

  getCADisplayClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t QuartzCoreLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = QuartzCoreLibraryCore_frameworkLibrary;
  v5 = QuartzCoreLibraryCore_frameworkLibrary;
  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76BFB58;
    v7 = *off_1E76BFB68;
    v8 = 0;
    v3[3] = _sl_dlopen();
    QuartzCoreLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A2DC780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _flushBulkMethods(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v2 = FBLogSceneExtension();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

    if (v3 && *(a1 + 24))
    {
      v4 = 4;
      do
      {
        v5 = FBLogSceneExtension();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = NSStringFromSelector(*(a1 + 8 * v4));
          v8 = NSStringFromClass(*(a1 + 8));
          v9 = NSStringFromClass(*a1);
          *buf = 138412802;
          v26 = v7;
          v27 = 2112;
          v28 = v8;
          v29 = 2112;
          v30 = v9;
          _os_log_debug_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEBUG, "registering method %@ from extension %@ on class %@", buf, 0x20u);
        }

        v6 = v4 - 3;
        ++v4;
      }

      while (v6 < *(a1 + 24));
    }

    v24 = 0;
    v10 = class_addMethodsBulk();
    v23 = v10;
    *(a1 + 24) = 0;
    if (v10)
    {
      if (v24)
      {
        for (i = 0; i < v24; ++i)
        {
          v19 = FBLogSceneExtension();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(v23[i]);
            v21 = NSStringFromClass(*(a1 + 8));
            v22 = NSStringFromClass(*a1);
            *buf = 138412802;
            v26 = v20;
            v27 = 2112;
            v28 = v21;
            v29 = 2112;
            v30 = v22;
            _os_log_error_impl(&dword_1A2DBB000, v19, OS_LOG_TYPE_ERROR, "unable to register method %@ from extension %@ on class %@", buf, 0x20u);
          }
        }
      }

      v11 = MEMORY[0x1E696AEC0];
      v12 = *(a1 + 16);
      v13 = NSStringFromClass(*a1);
      v14 = [v11 stringWithFormat:@"unable to add some methods from <%@> to %@", v12, v13];

      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _flushBulkMethods(struct BulkMethodContext *)"];
        objc_claimAutoreleasedReturnValue();
        _flushBulkMethods_cold_1();
      }

      v17 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
    }

    fbs_free(&v23);
  }
}

void sub_1A2DC7B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  fbs_free(va);
  _Unwind_Resume(a1);
}

uint64_t __FBLogCommon_block_invoke()
{
  FBLogCommon___logObj = os_log_create("com.apple.FrontBoard", "Common");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t OUTLINED_FUNCTION_8_3(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_13_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8_t *a5)
{

  _os_log_impl(a1, v6, OS_LOG_TYPE_DEFAULT, v5, a5, 0x18u);
}

id _gatherProperties(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v1 inheritedProtocols];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 hasPrefix:@"NS"];

        if ((v10 & 1) == 0)
        {
          v11 = _gatherProperties(v8);
          [v2 addObjectsFromArray:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = MEMORY[0x1E695DFD8];
  v13 = [v1 properties];
  v14 = [v12 setWithArray:v13];

  [v2 minusSet:v14];
  [v2 unionSet:v14];
  v15 = [v2 allObjects];

  return v15;
}

uint64_t FBSProcessResourceAllowanceMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FBSProcessResourceAllowanceGetValue(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void *NSStringFromProcessResourceAllowance(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [off_1E76BC9B0 builderWithObject:0];
    v3 = [v2 appendObject:@"FBSProcessResourceAllowance" withName:0];
    if (*v1 > 2uLL)
    {
      v4 = @"(unknown)";
    }

    else
    {
      v4 = *(&off_1E76BFB40 + *v1);
    }

    v5 = [v2 appendObject:v4 withName:@"type"];
    v6 = v1[1];
    if ((*v1 - 1) > 1)
    {
      v8 = [v2 appendUInt64:v6 withName:@"value"];
    }

    else
    {
      v7 = [v2 appendTimeInterval:@"timeValue" withName:0 decomposeUnits:v6 / 1000.0];
    }

    v9 = v1[2];
    if (v9)
    {
      if (*v1 == 2)
      {
        v10 = [v2 appendTimeInterval:@"refreshInterval" withName:0 decomposeUnits:v9 / 1000.0];
      }

      else
      {
        v11 = [v2 appendUInt64:? withName:?];
      }
    }

    v1 = [v2 build];
  }

  return v1;
}

id _gatherMethods(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v1 inheritedProtocols];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 hasPrefix:@"NS"];

        if ((v10 & 1) == 0)
        {
          v11 = _gatherMethods(v8);
          [v2 addObjectsFromArray:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v1 methods];
  [v2 addObjectsFromArray:v12];

  v13 = [v2 allObjects];

  return v13;
}

void _addBulkMethod(uint64_t a1, const char *a2, void (*a3)(void), char *a4)
{
  if ([*(a1 + 8) isSubclassOfClass:objc_opt_class()])
  {
    v8 = *a1;
    v9 = *(a1 + 8);

    _addMethod(v8, v9, a2, a3, a4, 0);
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = v10 + 1;
    *(a1 + 24) = v10 + 1;
    v12 = (a1 + 8 * v10);
    v12[4] = a2;
    v12[132] = a3;
    v12[260] = a4;
    if (v11 == 128)
    {

      _flushBulkMethods(a1);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2114;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void _realizeSettingsExtension_cold_35()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"baseClass != ((void *)0)", v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

id FBLogSceneClient()
{
  if (FBLogSceneClient_onceToken != -1)
  {
    FBLogSceneClient_cold_1();
  }

  v1 = FBLogSceneClient___logObj;

  return v1;
}

uint64_t __FBLogSceneClient_block_invoke()
{
  FBLogSceneClient___logObj = os_log_create("com.apple.FrontBoard", "SceneClient");

  return MEMORY[0x1EEE66BB8]();
}

id _NSStringFromFBSDisplayLayoutQOS(signed int a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = *(&off_1E76BE6F0 + a1);
  }

  return v2;
}

id _serviceQualityForFBSDisplayLayoutQOS(int a1)
{
  if (a1 == 2)
  {
    v1 = [off_1E76BCA50 userInitiated];
  }

  else if (a1 == 1)
  {
    v1 = [off_1E76BCA50 serviceWithClass:21];
  }

  else
  {
    if (a1)
    {
      [off_1E76BCA50 background];
    }

    else
    {
      [off_1E76BCA50 utility];
    }
    v1 = ;
  }

  return v1;
}

BOOL OUTLINED_FUNCTION_31_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

__CFString *FBSDisplayGamutDescription(uint64_t a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF358[a1 + 1];
  }

  return v2;
}

__CFString *FBSDisplayHDRModeDescription(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF370[a1 + 1];
  }

  return v2;
}

double ___realizeSettingsExtension_block_invoke_3_263(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void ___realizeSettingsExtension_block_invoke_3_302(uint64_t a1, void *a2, double a3)
{
  v8 = a2;
  v5 = [(FBSSetting *)*(a1 + 32) isNullPreserving];
  if (fabs(a3) < 2.22044605e-16 && v5 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  }

  [(FBSSettings *)v8 _setValue:v7 forSetting:*(a1 + 32)];
}

void sub_1A2DCC68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___realizeSettingsExtension_block_invoke_3_283(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v8 = MEMORY[0x1E696B098];
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = a2;
  v12 = [v8 valueWithBytes:&v13 objCType:{objc_msgSend(v9, "UTF8String", *&v13, *&v14, *&v15, *&v16)}];
  [(FBSSettings *)v11 _setValue:v12 forSetting:*(a1 + 40)];
}

id FBLogInterfaceOrientationObserver()
{
  if (FBLogInterfaceOrientationObserver_onceToken != -1)
  {
    FBLogInterfaceOrientationObserver_cold_1();
  }

  v1 = FBLogInterfaceOrientationObserver___logObj;

  return v1;
}

uint64_t FBSSceneJetsamPriorityGetJetsamMode(unsigned int a1)
{
  LOBYTE(v1) = 0;
  v2 = a1 >> 8;
  if (a1 >> 8 > 0x7F)
  {
    if (v2 != 128 && v2 != 246 && v2 != 236)
    {
      return v1;
    }

LABEL_8:
    v1 = a1 >> 8;
    return v1;
  }

  if (!v2 || v2 == 10)
  {
    goto LABEL_8;
  }

  return v1;
}

void _ingestPropertiesFromSettingsSubclass(objc_class *a1)
{
  v146[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _ingestPropertiesFromSettingsSubclass_cold_17();
  }

  v1 = a1;
  os_unfair_lock_assert_owner(&__SubclassLock);
  os_unfair_lock_assert_not_owner(&__ExtensionLock);
  if (!__BaseToSubclassMap)
  {
    v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v3 = __BaseToSubclassMap;
    __BaseToSubclassMap = v2;

    v4 = __BaseToSubclassMap;
    v5 = [MEMORY[0x1E695DFA8] set];
    [v4 setObject:v5 forKey:objc_opt_class()];

    v6 = __BaseToSubclassMap;
    v7 = [MEMORY[0x1E695DFA8] set];
    [v6 setObject:v7 forKey:objc_opt_class()];

    v8 = __BaseToSubclassMap;
    v9 = [MEMORY[0x1E695DFA8] set];
    [v8 setObject:v9 forKey:objc_opt_class()];
  }

  v10 = [(objc_class *)v1 _baseClass];
  v11 = [__BaseToSubclassMap objectForKey:v10];
  if (([v11 containsObject:v1] & 1) == 0)
  {
    [v11 addObject:v1];
    v12 = [(objc_class *)v1 _mutableClass];
    if (v10 != v1)
    {
      v13 = v12;
      if (v12 != v1 && v10 != objc_opt_class())
      {
        v14 = NSStringFromClass(v1);
        v15 = FBLogSceneExtension();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v142 = v14;
          _os_log_impl(&dword_1A2DBB000, v15, OS_LOG_TYPE_DEFAULT, "Ingesting properties from %{public}@...", buf, 0xCu);
        }

        v16 = [(objc_class *)v1 _counterpartClass];
        if ([(objc_class *)v1 isSubclassOfClass:v13])
        {
          if (v10 == v13)
          {
            v17 = v1;
            goto LABEL_17;
          }

          if (v16)
          {
            v17 = v16;
LABEL_17:
            v18 = v1;
            goto LABEL_44;
          }

          v22 = [v14 rangeOfString:@"Mutable"];
          if (v22 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = FBLogSceneExtension();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              _ingestPropertiesFromSettingsSubclass_cold_5();
            }

            v17 = 0;
            v24 = 1;
            goto LABEL_47;
          }

          v25 = v21;
          v26 = MEMORY[0x1E696AEC0];
          v27 = [v14 substringToIndex:v22];
          v28 = [v14 substringFromIndex:v22 + v25];
          v19 = [v26 stringWithFormat:@"%@%@", v27, v28];

          v29 = NSClassFromString(v19);
          v30 = FBLogSceneExtension();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
          if (v29)
          {
            if (v31)
            {
              _ingestPropertiesFromSettingsSubclass_cold_1();
            }
          }

          else if (v31)
          {
            _ingestPropertiesFromSettingsSubclass_cold_4();
          }

          v18 = v1;
        }

        else
        {
          if (v16)
          {
            v17 = v1;
            v18 = v16;
            goto LABEL_44;
          }

          v19 = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
          if (![v14 length])
          {
            goto LABEL_28;
          }

          v20 = 0;
          while (([(NSString *)v19 characterIsMember:[v14 characterAtIndex:v20]]& 1) == 0)
          {
            if (++v20 >= [v14 length])
            {
              goto LABEL_28;
            }
          }

          if (v20 < 2)
          {
LABEL_28:
            v18 = 0;
LABEL_42:

            if (!v1)
            {
              v17 = 0;
              v24 = 1;
              goto LABEL_46;
            }

            v17 = v1;
LABEL_44:
            if (v17 == [v17 _baseClass])
            {
              _ingestPropertiesFromSettingsSubclass_cold_16();
            }

            [v11 addObject:v17];
            v24 = 0;
LABEL_46:
            v1 = v18;
            if (!v18)
            {
LABEL_49:
              v38 = FBLogSceneExtension();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v142 = v14;
                _os_log_impl(&dword_1A2DBB000, v38, OS_LOG_TYPE_DEFAULT, "Unable to determine counterpart class for %{public}@.", buf, 0xCu);
              }

              goto LABEL_157;
            }

LABEL_47:
            if (v1 == [(objc_class *)v1 _mutableClass])
            {
              _ingestPropertiesFromSettingsSubclass_cold_15();
            }

            [v11 addObject:v1];
            if (v24)
            {
              goto LABEL_49;
            }

            if (!v16)
            {
              [v17 _setCounterpartClass:v1];
              [(objc_class *)v1 _setCounterpartClass:v17];
            }

            outCount = 0;
            v137 = class_copyPropertyList(v1, &outCount);
            if (outCount)
            {
              v120 = NSStringFromClass(v17);

              v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[derived]", v120];
              v40 = NSProtocolFromString(v39);
              v118 = v39;
              LOBYTE(v39) = v40 == 0;

              if ((v39 & 1) == 0)
              {
                v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a protocol named %@ already exists", v118];
                v94 = MEMORY[0x1E69E9C10];
                v95 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                  objc_claimAutoreleasedReturnValue();
                  _ingestPropertiesFromSettingsSubclass_cold_6();
                }

                v96 = v93;
                [v93 UTF8String];
                _bs_set_crash_log_message();
              }

              v121 = [off_1E76BC9F0 protocolWithName:v118];
              v119 = [(objc_class *)v1 _legacyDescriptionProvider];
              if (!v119)
              {
                v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"mutableInstance != nil"];
                v98 = MEMORY[0x1E69E9C10];
                v99 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                  objc_claimAutoreleasedReturnValue();
                  _ingestPropertiesFromSettingsSubclass_cold_12();
                }

                v100 = v97;
                [v97 UTF8String];
                _bs_set_crash_log_message();
              }

              if (outCount)
              {
                v41 = 0;
                v111 = *MEMORY[0x1E695E4D0];
                do
                {
                  v42 = v137[v41];
                  v43 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:property_getName(v42)];
                  v44 = FBLogSceneExtension();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v142 = v43;
                    _os_log_debug_impl(&dword_1A2DBB000, v44, OS_LOG_TYPE_DEBUG, "Checking property %@...", buf, 0xCu);
                  }

                  if (([v43 isEqualToString:@"hash"]& 1) != 0 || ([v43 isEqualToString:@"superclass"]& 1) != 0 || ([v43 isEqualToString:@"description"]& 1) != 0 || ([v43 isEqualToString:@"debugDescription"]& 1) != 0)
                  {
                    goto LABEL_112;
                  }

                  v136 = 0;
                  v45 = [off_1E76BCA08 propertyWithProperty:v42 error:&v136];
                  v46 = v136;
                  v117 = v46;
                  if (!v45)
                  {
                    v48 = v46;
                    v45 = FBLogSceneExtension();
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                    {
                      v49 = [v48 descriptionWithMultilinePrefix:0];
                      *buf = 138412546;
                      v142 = v43;
                      v143 = 2112;
                      v144 = v49;
                      _os_log_debug_impl(&dword_1A2DBB000, v45, OS_LOG_TYPE_DEBUG, "Skipping %@ due to error building property: %@", buf, 0x16u);
                    }

                    goto LABEL_111;
                  }

                  if ([v45 isReadOnly])
                  {
                    v47 = FBLogSceneExtension();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v142 = v43;
                      _os_log_debug_impl(&dword_1A2DBB000, v47, OS_LOG_TYPE_DEBUG, "Skipping %@ since it is readonly", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v50 = [v45 setter];
                    aSelector = [v50 selector];

                    v116 = [(objc_class *)v1 instancesRespondToSelector:aSelector];
                    if (!v116 || (-[NSObject getter](v45, "getter"), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v17 instancesRespondToSelector:{objc_msgSend(v51, "selector")}], v51, (v52 & 1) != 0))
                    {
                      [v121 addProperty:v45];
                      v132 = 0;
                      v133 = &v132;
                      v134 = 0x2020000000;
                      v135 = 0;
                      v128 = 0;
                      v129 = &v128;
                      v130 = 0x2020000000;
                      v131 = 0;
                      if (!v116)
                      {
                        v131 = 0x7FFFFFFFFFFFFFFFLL;
                        v135 = 1;
                        goto LABEL_105;
                      }

                      context = objc_autoreleasePoolPush();
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        v101 = MEMORY[0x1E696AEC0];
                        v102 = NSStringFromSelector(aSelector);
                        v103 = [v101 stringWithFormat:@"instance doesn't respond to %@", v102];

                        v104 = MEMORY[0x1E69E9C10];
                        v105 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                        {
                          [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                          objc_claimAutoreleasedReturnValue();
                          _ingestPropertiesFromSettingsSubclass_cold_8();
                        }

                        v106 = v103;
                        [v103 UTF8String];
                        _bs_set_crash_log_message();
                      }

                      v110 = [v45 value];
                      v53 = [(__CFString *)v110 type];
                      v55 = v53;
                      if (v53 <= 0x3Fu)
                      {
                        if (v53 == 35)
                        {
                          v58 = objc_opt_class();
                        }

                        else
                        {
                          v58 = aSelector;
                          if (v53 != 58)
                          {
                            if (v53 == 63)
                            {
                              v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type cannot be unknown"];
                              v77 = MEMORY[0x1E69E9C10];
                              v78 = MEMORY[0x1E69E9C10];
                              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                              {
                                v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                                *buf = 138544130;
                                v142 = v79;
                                v143 = 2114;
                                v144 = @"FBSSceneExtension.m";
                                v145 = 1024;
                                LODWORD(v146[0]) = 1047;
                                WORD2(v146[0]) = 2114;
                                *(v146 + 6) = v76;
                                _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
                              }

                              v80 = v76;
                              [v76 UTF8String];
                              _bs_set_crash_log_message();
                            }

                            goto LABEL_120;
                          }
                        }

                        [v119 aSelector];
                        goto LABEL_92;
                      }

                      if (v53 == 64)
                      {
                        v56 = [(__CFString *)v110 objectClass];
                        if (v56)
                        {
                          if (v56 == objc_opt_class())
                          {
                            v57 = v111;
                          }

                          else
                          {
                            v57 = [FBSObjectProxy proxyForClass:v56];
                          }
                        }

                        else
                        {
                          v59 = objc_opt_class();
                          v57 = [FBSObjectProxy proxyForClass:v59];
                        }

                        v60 = v57;
                        [v119 aSelector];

LABEL_92:
                        v61 = 0;
LABEL_93:
                        v62 = [(FBSSettings *)v119 _legacyOtherSettings];
                        v63 = [v62 allSettings];
                        if ([v63 count] == 1)
                        {
                          v127[0] = MEMORY[0x1E69E9820];
                          v127[1] = 3221225472;
                          v127[2] = ___ingestPropertiesFromSettingsSubclass_block_invoke;
                          v127[3] = &unk_1E76BD220;
                          v127[4] = &v128;
                          v127[5] = &v132;
                          [v63 enumerateWithBlock:v127];
                        }

                        else
                        {
                          if ([v63 count])
                          {
                            v64 = FBLogSceneExtension();
                            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                            {
                              v107 = NSStringFromClass(v1);
                              v65 = NSStringFromSelector(aSelector);
                              *buf = 138412546;
                              v142 = v107;
                              v143 = 2112;
                              aSelectora = v65;
                              v144 = v65;
                              _os_log_debug_impl(&dword_1A2DBB000, v64, OS_LOG_TYPE_DEBUG, "Calling [%@ %@] produced multiple settings changes. Ignoring this property.", buf, 0x16u);
                            }
                          }

                          else if (v61)
                          {
                            v64 = FBLogSceneExtension();
                            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                            {
                              v66 = [(__CFString *)v110 encoding];
                              *buf = 138543618;
                              v142 = v43;
                              v143 = 2114;
                              aSelectorb = v66;
                              v144 = v66;
                              _os_log_debug_impl(&dword_1A2DBB000, v64, OS_LOG_TYPE_DEBUG, "Ignoring property %{public}@ because %{public}@ is not a supported encoding.", buf, 0x16u);
                            }
                          }

                          else
                          {
                            v64 = FBLogSceneExtension();
                            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                            {
                              v108 = NSStringFromClass(v1);
                              aSelectorc = NSStringFromSelector(aSelector);
                              *buf = 138412546;
                              v142 = v108;
                              v143 = 2112;
                              v144 = aSelectorc;
                              _os_log_debug_impl(&dword_1A2DBB000, v64, OS_LOG_TYPE_DEBUG, "Calling [%@ %@] produced no settings changes. Ignoring this property.", buf, 0x16u);
                            }
                          }
                        }

                        [v62 removeAllSettings];

                        objc_autoreleasePoolPop(context);
LABEL_105:
                        [v121 removeProperty:v45];
                        if (*(v133 + 24) == 1)
                        {
                          v67 = FBLogSceneExtension();
                          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412802;
                            v71 = "modern";
                            if (v116)
                            {
                              v71 = "legacy";
                            }

                            v142 = v43;
                            v143 = 2080;
                            v144 = v71;
                            v145 = 2112;
                            v146[0] = v118;
                            _os_log_debug_impl(&dword_1A2DBB000, v67, OS_LOG_TYPE_DEBUG, "Adding %@ as a %s property to %@", buf, 0x20u);
                          }

                          if (v116)
                          {
                            v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v129[3]];
                            v139 = @"#";
                            v140 = v68;
                            v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
                            v70 = [v45 copyAddingCustomAttributes:v69];

                            v45 = v70;
                          }

                          [v121 addProperty:v45];
                        }

                        _Block_object_dispose(&v128, 8);
                        _Block_object_dispose(&v132, 8);
                        goto LABEL_111;
                      }

                      if (v53 == 66)
                      {
LABEL_115:
                        [v119 aSelector];
                        goto LABEL_92;
                      }

LABEL_120:
                      if ((v53 & 0xFFFFFFFD) == 0x64)
                      {
                        LODWORD(v54) = 1.0;
                        [v119 aSelector];
                        goto LABEL_92;
                      }

                      v72 = v53 - 40;
                      if (v72 <= 0x3A)
                      {
                        if (((1 << (v53 - 40)) & 0x448000000000001) != 0)
                        {
                          v73 = FBLogSceneExtension();
                          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412546;
                            v142 = v43;
                            v143 = 1024;
                            LODWORD(v144) = v55;
                            _os_log_debug_impl(&dword_1A2DBB000, v73, OS_LOG_TYPE_DEBUG, "Skipping %@ because this type (%d) is not supported", buf, 0x12u);
                          }

                          goto LABEL_127;
                        }

                        if (v72 == 2)
                        {
                          [v119 aSelector];
                          goto LABEL_92;
                        }
                      }

                      if (v53 != 123)
                      {
                        goto LABEL_115;
                      }

                      v74 = _structDisposition(v110);
                      switch(v74)
                      {
                        case 3:
                          [v119 aSelector];
                          goto LABEL_92;
                        case 2:
                          [v119 aSelector];
                          goto LABEL_92;
                        case 1:
                          [v119 aSelector];
                          goto LABEL_92;
                      }

                      v75 = FBLogSceneExtension();
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v142 = v43;
                        v143 = 2112;
                        v144 = v110;
                        _os_log_debug_impl(&dword_1A2DBB000, v75, OS_LOG_TYPE_DEBUG, "Skipping %@ because this struct is not supported: %@", buf, 0x16u);
                      }

LABEL_127:
                      v61 = 1;
                      goto LABEL_93;
                    }

                    v47 = FBLogSceneExtension();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v142 = v43;
                      _os_log_debug_impl(&dword_1A2DBB000, v47, OS_LOG_TYPE_DEBUG, "Skipping %@ since it defines a setter but no getter", buf, 0xCu);
                    }
                  }

LABEL_111:
LABEL_112:

                  ++v41;
                }

                while (v41 < outCount);
              }

              v81 = [v121 properties];
              v82 = [v81 count] == 0;

              if (v82)
              {
                v86 = FBLogSceneExtension();
                if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
                {
                  v89 = NSStringFromClass(v1);
                  _ingestPropertiesFromSettingsSubclass_cold_11(v89, buf, v86);
                }
              }

              else
              {
                v83 = FBLogSceneExtension();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                {
                  v90 = NSStringFromClass(v1);
                  v91 = [v121 properties];
                  v92 = [v91 count];
                  *buf = 138543874;
                  v142 = v118;
                  v143 = 2114;
                  v144 = v90;
                  v145 = 2048;
                  v146[0] = v92;
                  _os_log_debug_impl(&dword_1A2DBB000, v83, OS_LOG_TYPE_DEBUG, "Derived protocol <%{public}@> from %{public}@ with %lu properties.", buf, 0x20u);
                }

                v84 = [v121 copy];
                v85 = [(FBSSettingsExtension *)FBSDerivedSettingsExtension extensionForBSObjCProtocol:v84];

                v122[0] = MEMORY[0x1E69E9820];
                v122[1] = 3221225472;
                v123 = ___ingestPropertiesFromSettingsSubclass_block_invoke_399;
                v124 = &__block_descriptor_48_e5_v8__0lu32l8u40l8;
                v125 = v17;
                v126 = v85;
                v86 = v122;
                os_unfair_lock_lock(&__ExtensionLock);
                (v123)(v86);
                os_unfair_lock_unlock(&__ExtensionLock);
              }

              v87 = v118;
            }

            else
            {
              v87 = FBLogSceneExtension();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                v88 = NSStringFromClass(v1);
                _ingestPropertiesFromSettingsSubclass_cold_14(v88, buf, v87);
              }

              v120 = v14;
            }

            fbs_free(&v137);
            v14 = v120;
LABEL_157:

            goto LABEL_158;
          }

          v32 = v20 - 1;
          v33 = MEMORY[0x1E696AEC0];
          v34 = [v14 substringToIndex:v20 - 1];
          v35 = [v14 substringFromIndex:v32];
          v30 = [v33 stringWithFormat:@"%@Mutable%@", v34, v35];

          v18 = NSClassFromString(&v30->isa);
          v36 = FBLogSceneExtension();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
          if (v18)
          {
            if (v37)
            {
              _ingestPropertiesFromSettingsSubclass_cold_1();
            }
          }

          else if (v37)
          {
            _ingestPropertiesFromSettingsSubclass_cold_2();
          }

          v29 = v1;
        }

        v1 = v29;
        goto LABEL_42;
      }
    }
  }

LABEL_158:
}

void sub_1A2DCEC8C()
{
  objc_end_catch();
  _Block_object_dispose(&v1, 8);
  _Block_object_dispose((v0 - 232), 8);
  JUMPOUT(0x1A2DCED50);
}

void sub_1A2DCED5C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1A2DCED68);
}

uint64_t ___ingestPropertiesFromSettingsSubclass_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

__CFString *NSStringFromFBSSceneLayerType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(undefined: %ld)", a1];
  }

  else
  {
    v2 = off_1E76BF2D8[a1];
  }

  return v2;
}

double ___realizeSettingsExtension_block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v3 = [a2 valueForSetting:*(a1 + 32)];
  [v3 getValue:v5 size:*(a1 + 40)];

  return *v5;
}

void FBSSettingForExtensionSelector_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"FBSSetting * _Nullable FBSSettingForExtensionSelector(__unsafe_unretained Class _Nonnull, SEL _Nonnull)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"settingsClass != ((void*)0)", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void OUTLINED_FUNCTION_14(uint64_t a1, ...)
{
  va_start(va, a1);

  [(FBSWorkspaceScenesClient *)v1 _executeCalloutFromHostEvent:va withBlock:?];
}

unint64_t OUTLINED_FUNCTION_14_0(unint64_t result, float a2)
{
  *&STACK[0x2C0] = a2;
  STACK[0x2C4] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  return [v49 countByEnumeratingWithState:&a17 objects:&a49 count:16];
}

void FBSProcessResourceAllowanceMakeWithScheduledTimeInterval(void *a1@<X8>, double a2@<D0>)
{
  v2 = (a2 * 1000.0);
  if (a2 <= 0.0)
  {
    v2 = 0;
  }

  *a1 = 2;
  a1[1] = v2;
  a1[2] = 0;
}

id OUTLINED_FUNCTION_29_0()
{

  return v0;
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return objc_opt_class();
}

__n128 OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *(v15 - 256) = a13.n128_u32[0];
  *(v15 - 252) = v13;
  *(v15 - 248) = 1024;
  *(v15 - 246) = v14;
  *(v15 - 242) = 2114;
  *(v15 - 240) = a1;
  return result;
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  return [v6 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return [v1 applySettings:a1];
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return [a16 countByEnumeratingWithState:&a41 objects:v41 - 232 count:16];
}

id OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{

  return a16;
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return objc_opt_respondsToSelector();
}

id FBSFrameworkBundle()
{
  if (FBSFrameworkBundle___once != -1)
  {
    FBSFrameworkBundle_cold_1();
  }

  v1 = FBSFrameworkBundle___bundle;

  return v1;
}

uint64_t __FBSFrameworkBundle_block_invoke()
{
  FBSFrameworkBundle___bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A2DD3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id FBSAllSettings(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock(&__ExtensionLock);
  if (__SelectorsToSettingsMap)
  {
    v3 = [a1 _baseClass];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = NSAllMapTableKeys(__SelectorsToSettingsMap);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 isSubclassOfClass:{v3, v14}])
          {
            v10 = NSMapGet(__SelectorsToSettingsMap, v9);
            v11 = v10;
            if (v10)
            {
              v12 = NSAllMapTableValues(v10);
            }

            else
            {
              v12 = 0;
            }

            [v2 addObjectsFromArray:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  os_unfair_lock_unlock(&__ExtensionLock);

  return v2;
}

id FBSAllSettingsFromProtocol(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [off_1E76BCA10 protocolForProtocol:v3];
  v6 = _gatherProperties(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) getter];
        v12 = FBSSettingForSelector(a1, [v11 selector]);

        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

id FBSSettingNameForSelector(void *a1, const void *a2)
{
  if (a1)
  {
    v3 = [a1 _baseClass];
LABEL_3:
    v4 = FBSSettingForExtensionSelector(v3, a2);
    v5 = [(FBSSetting *)v4 name];

    goto LABEL_6;
  }

  v6 = objc_opt_class();
  v7 = FBSSettingForExtensionSelector(v6, a2);
  v5 = [(FBSSetting *)v7 name];

  if (!v5)
  {
    v8 = objc_opt_class();
    v9 = FBSSettingForExtensionSelector(v8, a2);
    v5 = [(FBSSetting *)v9 name];

    if (!v5)
    {
      v3 = objc_opt_class();
      goto LABEL_3;
    }
  }

LABEL_6:

  return v5;
}

uint64_t ___realizeSettingsExtension_block_invoke(uint64_t a1, void *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v3 = [a2 valueForSetting:*(a1 + 32)];
  [v3 getValue:v5 size:*(a1 + 40)];

  return v5[0];
}

float ___realizeSettingsExtension_block_invoke_2_261(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

uint64_t ___realizeSettingsExtension_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  v3 = [v2 UTF8String];

  return v3;
}

SEL ___realizeSettingsExtension_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = NSSelectorFromString(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void _addMethod(objc_class *a1, objc_class *a2, SEL name, IMP imp, char *types, int a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _addMethod_cold_6();
  }

  if (!a2)
  {
    _addMethod_cold_5();
  }

  if (!name)
  {
    _addMethod_cold_4();
  }

  if (!imp)
  {
    _addMethod_cold_3();
  }

  if (!types)
  {
    _addMethod_cold_2();
  }

  if (!a6)
  {
    v15 = class_addMethod(a1, name, imp, types);
    v16 = FBLogSceneExtension();
    v11 = v16;
    if (!v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(name);
        v18 = NSStringFromClass(a2);
        v19 = NSStringFromClass(a1);
        *buf = 138412802;
        v26 = v17;
        v27 = 2112;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_error_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_ERROR, "unable to register method %@ from extension %@ on class %@", buf, 0x20u);
      }

      v20 = MEMORY[0x1E696AEC0];
      v21 = NSStringFromSelector(name);
      v22 = NSStringFromClass(a2);
      v23 = NSStringFromClass(a1);
      v24 = [v20 stringWithFormat:@"unable to register method %@ from extension %@ on class %@", v21, v22, v23];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _addMethod_cold_1(v24);
      }

      [v24 UTF8String];
      _bs_set_crash_log_message();
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v12 = NSStringFromSelector(name);
    v13 = NSStringFromClass(a2);
    v14 = NSStringFromClass(a1);
    *buf = 138412802;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    _os_log_debug_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEBUG, "registered method %@ from extension %@ on class %@", buf, 0x20u);
    goto LABEL_16;
  }

  v10 = class_replaceMethod(a1, name, imp, types);
  if (v10 && v10 != imp)
  {
    v11 = FBLogSceneExtension();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      return;
    }

    v12 = NSStringFromSelector(name);
    v13 = NSStringFromClass(a2);
    v14 = NSStringFromClass(a1);
    *buf = 138543874;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v14;
    _os_log_error_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_ERROR, "replaced @selector(%{public}@) from extension %{public}@ that was already implemented on %{public}@.", buf, 0x20u);
LABEL_16:

    goto LABEL_13;
  }
}

void ___realizeSettingsExtension_block_invoke_278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  v6 = MEMORY[0x1E696B098];
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = a2;
  v10 = [v6 valueWithBytes:&v11 objCType:{objc_msgSend(v7, "UTF8String", v11, v12)}];
  [(FBSSettings *)v9 _setValue:v10 forSetting:*(a1 + 40)];
}

void ___realizeSettingsExtension_block_invoke_2_281(uint64_t a1, void *a2, double a3, double a4)
{
  v11 = a3;
  v12 = a4;
  v6 = MEMORY[0x1E696B098];
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = a2;
  v10 = [v6 valueWithBytes:&v11 objCType:{objc_msgSend(v7, "UTF8String", *&v11, *&v12)}];
  [(FBSSettings *)v9 _setValue:v10 forSetting:*(a1 + 40)];
}

void ___realizeSettingsExtension_block_invoke_298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  }

  [(FBSSettings *)v5 _setValue:a3 forSetting:*(a1 + 32)];
}

void ___realizeSettingsExtension_block_invoke_2_300(uint64_t a1, void *a2, float a3)
{
  v9 = a2;
  v5 = [(FBSSetting *)*(a1 + 32) isNullPreserving];
  if (fabsf(a3) < 0.00000011921 && v5 == 0)
  {
    v8 = 0;
  }

  else
  {
    *&v6 = a3;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  }

  [(FBSSettings *)v9 _setValue:v8 forSetting:*(a1 + 32)];
}

void ___realizeSettingsExtension_block_invoke_4_304(uint64_t a1, void *a2, objc_class *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = NSStringFromClass(a3);
  }

  [(FBSSettings *)v5 _setValue:a3 forSetting:*(a1 + 32)];
}

void ___realizeSettingsExtension_block_invoke_5_306(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = NSStringFromSelector(a3);
  }

  [(FBSSettings *)v5 _setValue:a3 forSetting:*(a1 + 32)];
}

void OUTLINED_FUNCTION_1(uint64_t a1@<X1>, uint64_t a2@<X2>, __int16 a3@<W8>)
{
  *(a2 + 24) = v3;
  *(a2 + 28) = a3;
  *(a2 + 30) = a1;
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

__CFString *NSStringFromFBSApplicationTrustState(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    v2 = off_1E76BD240[a1];
  }

  return v2;
}

void sub_1A2DD6610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fbs_release(va);
  _Unwind_Resume(a1);
}

void sub_1A2DD6D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  fbs_release(va);
  _Unwind_Resume(a1);
}

void sub_1A2DD84A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DDC364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2DDD3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2DDD65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FBSLogApplicationLibrary()
{
  if (FBSLogApplicationLibrary_onceToken != -1)
  {
    FBSLogApplicationLibrary_cold_1();
  }

  v1 = FBSLogApplicationLibrary___logObj;

  return v1;
}

uint64_t __FBSLogApplicationLibrary_block_invoke()
{
  v0 = os_log_create("com.apple.frontboard.ApplicationLibrary", "default");
  v1 = FBSLogApplicationLibrary___logObj;
  FBSLogApplicationLibrary___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBSLogApplicationLibraryObserver()
{
  if (FBSLogApplicationLibraryObserver_onceToken != -1)
  {
    FBSLogApplicationLibraryObserver_cold_1();
  }

  v1 = FBSLogApplicationLibraryObserver___logObj;

  return v1;
}

uint64_t __FBSLogApplicationLibraryObserver_block_invoke()
{
  v0 = os_log_create("com.apple.frontboard.ApplicationLibrary", "observer");
  v1 = FBSLogApplicationLibraryObserver___logObj;
  FBSLogApplicationLibraryObserver___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBSLogApplicationPlaceholder()
{
  if (FBSLogApplicationPlaceholder_onceToken != -1)
  {
    FBSLogApplicationPlaceholder_cold_1();
  }

  v1 = FBSLogApplicationPlaceholder___logObj;

  return v1;
}

uint64_t __FBSLogApplicationPlaceholder_block_invoke()
{
  v0 = os_log_create("com.apple.frontboard.ApplicationLibrary", "placeholder");
  v1 = FBSLogApplicationPlaceholder___logObj;
  FBSLogApplicationPlaceholder___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t UIKitServicesLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = UIKitServicesLibraryCore_frameworkLibrary;
  v5 = UIKitServicesLibraryCore_frameworkLibrary;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76BD778;
    v7 = *off_1E76BD788;
    v8 = 0;
    v3[3] = _sl_dlopen();
    UIKitServicesLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A2DDF3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getUISApplicationStateClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUISApplicationStateClass_softClass;
  v6 = getUISApplicationStateClass_softClass;
  if (!getUISApplicationStateClass_softClass)
  {
    UIKitServicesLibraryCore();
    v4[3] = objc_getClass("UISApplicationState");
    getUISApplicationStateClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1A2DDF568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUISApplicationStateClass_block_invoke(uint64_t a1)
{
  UIKitServicesLibraryCore();
  result = objc_getClass("UISApplicationState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISApplicationStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2DDFA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id FBSOpenApplicationErrorCreate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (a1)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = FBSOpenApplicationErrorCodeToString(a1);
    [v11 bs_setSafeObject:v12 forKey:*off_1E76BC958];

    if (v10)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
      [v11 bs_setSafeObject:v13 forKey:*MEMORY[0x1E696A588]];
    }

    a1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSOpenApplicationErrorDomain" code:a1 userInfo:v11];
  }

  return a1;
}

__CFString *FBSOpenApplicationErrorCodeToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E76BD988[a1];
  }
}

__CFString *FBSOpenApplicationServiceErrorCodeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E76BD9E0[a1];
  }
}

__CFString *NSStringFromFBSApplicationPlaceholderAction(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E76BDBA0[a1];
  }
}

void sub_1A2DE24EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2DE2C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FBSWorkspaceErrorCreate(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = a3;
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = NSStringFromFBSWorkspaceErrorCode(a2);
  if (v14)
  {
    [v13 setObject:v14 forKey:*off_1E76BC958];
  }

  if (v11)
  {
    [v13 setObject:v11 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v12)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12 arguments:&a9];
    [v13 setObject:v15 forKey:*MEMORY[0x1E696A588]];
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSWorkspaceErrorDomain" code:a2 userInfo:v13];

  return v16;
}

__CFString *NSStringFromFBSWorkspaceErrorCode(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
  }

  else
  {
    v2 = off_1E76BDD20[a1];
  }

  return v2;
}

void sub_1A2DE5CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DE615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *FBSApplicationTerminationReasonDescription(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"<unknown termination reason>";
  }

  else
  {
    return off_1E76BDD58[a1];
  }
}

__CFString *FBSApplicationTerminationGroupDescription(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"all applications";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"foreground applications";
  }
}

__CFString *NSStringFromFBSOpenApplicationLaunchIntent(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E76BDF28[a1];
  }
}

__CFString *NSStringFromFBSSceneInterruptionPolicy(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BDFA0[a1];
  }

  return v2;
}

__CFString *FBSProcessExceptionCodeDescription(uint64_t a1)
{
  v1 = @"Force Quit";
  if (a1 != 4227595259)
  {
    v1 = 0;
  }

  if (a1 == 3735943697)
  {
    v2 = @"User Initiated Quit";
  }

  else
  {
    v2 = v1;
  }

  v3 = @"Resource Exclusion";
  if (a1 != 3735883980)
  {
    v3 = 0;
  }

  if (a1 == 3221229823)
  {
    v4 = @"Thermal Pressure";
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 3735943696)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = @"(none)";
  v7 = @"Watchdog Violation";
  if (a1 != 2343432205)
  {
    v7 = 0;
  }

  if (a1 == 732775916)
  {
    v8 = @"Security Violation";
  }

  else
  {
    v8 = v7;
  }

  if (a1)
  {
    v6 = v8;
  }

  if (a1 <= 3221229822)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void sub_1A2DECA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

uint64_t SecurityLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SecurityLibraryCore_frameworkLibrary;
  v5 = SecurityLibraryCore_frameworkLibrary;
  if (!SecurityLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76BE058;
    v7 = *off_1E76BE068;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SecurityLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A2DED4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SecurityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SecurityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SecurityLibrary()
{
  v1 = 0;
  result = SecurityLibraryCore();
  if (!result)
  {
    SecurityLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getSecCertificateCreateWithDataSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSecCertificateCreateWithDataSymbolLoc_ptr;
  v6 = getSecCertificateCreateWithDataSymbolLoc_ptr;
  if (!getSecCertificateCreateWithDataSymbolLoc_ptr)
  {
    v1 = SecurityLibrary();
    v4[3] = dlsym(v1, "SecCertificateCreateWithData");
    getSecCertificateCreateWithDataSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DED69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSecCertificateCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecCertificateCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecCertificateCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_SecCertificateCreateWithData(uint64_t a1, uint64_t a2)
{
  v4 = getSecCertificateCreateWithDataSymbolLoc();
  if (!v4)
  {
    soft_SecCertificateCreateWithData_cold_1();
  }

  return v4(a1, a2);
}

uint64_t getSecCertificateCopySubjectSummarySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSecCertificateCopySubjectSummarySymbolLoc_ptr;
  v6 = getSecCertificateCopySubjectSummarySymbolLoc_ptr;
  if (!getSecCertificateCopySubjectSummarySymbolLoc_ptr)
  {
    v1 = SecurityLibrary();
    v4[3] = dlsym(v1, "SecCertificateCopySubjectSummary");
    getSecCertificateCopySubjectSummarySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DED824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSecCertificateCopySubjectSummarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecCertificateCopySubjectSummary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecCertificateCopySubjectSummarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_SecCertificateCopySubjectSummary(uint64_t a1)
{
  SecCertificateCopySubjectSummarySymbolLoc = getSecCertificateCopySubjectSummarySymbolLoc();
  if (!SecCertificateCopySubjectSummarySymbolLoc)
  {
    soft_SecCertificateCopySubjectSummary_cold_1();
  }

  return SecCertificateCopySubjectSummarySymbolLoc(a1);
}

id __displayBuilderError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v10 = MEMORY[0x1E695DF90];
    v11 = a2;
    v12 = [v10 dictionary];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];

    [v12 setObject:v13 forKey:*MEMORY[0x1E696A588]];
  }

  else
  {
    v12 = 0;
  }

  v14 = MEMORY[0x1E696ABC0];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 errorWithDomain:v16 code:a1 userInfo:v12];

  return v17;
}

void FBSSetServiceFacilityManager(void *a1)
{
  v2 = a1;
  if (__manager != v2)
  {
    v3 = v2;
    objc_storeStrong(&__manager, a1);
    v2 = v3;
  }
}

void sub_1A2DF44EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DF4854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DF4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _FBSApplicationLibraryLogTransaction(uint64_t a1, uint64_t a2, char a3, id a4, void *a5)
{
  v10 = a4;
  v9 = a5;
  Helper_x8__OBJC_CLASS___AITransactionLog = gotLoadHelper_x8__OBJC_CLASS___AITransactionLog(v6);
  [*(v8 + 2424) logStep:a1 byParty:11 phase:a2 success:a3 & 1 forBundleID:v10 description:{v9, Helper_x8__OBJC_CLASS___AITransactionLog}];
}

__CFString *NSStringFromFBSApplicationLibraryLogStep(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Uninstall";
  }

  else
  {
    return off_1E76BE230[a1 - 1];
  }
}

void _vetProtocolMethod(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    _vetProtocolMethod_cold_1();
  }

  v2 = [v1 returnValue];
  v3 = [v2 isVoid];

  if ((v3 & 1) == 0)
  {
    _vetProtocolMethod_cold_2();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v1 arguments];
  v4 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    v24 = *v33;
    v25 = v1;
    do
    {
      v7 = 0;
      v23 = sel_bs_array;
      v26 = v5;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        if ([v8 isBlock])
        {
          v9 = [v1 lastArgument];

          if (v8 != v9)
          {
            _vetProtocolMethod_cold_4();
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v10 = [v8 blockArguments];
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v29;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v28 + 1) + 8 * i);
                if ([v15 isBlock])
                {
                  _vetProtocolMethod_cold_5();
                }

                if ([objc_msgSend(v15 "objectClass")])
                {
                  v16 = [v8 objectContainedClasses];
                  v17 = [v16 firstObject];
                  if (v17 != objc_opt_class())
                  {
                    v18 = [MEMORY[0x1E696AAA8] currentHandler];
                    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
                    [v18 handleFailureInFunction:v19 file:@"FBSInvocation.m" lineNumber:55 description:@"non-plist collections are not yet supported; see __FBSPlistCollection__"];

                    if (![v16 count])
                    {
                      _vetProtocolMethod_cold_6();
                    }
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v12);
            v1 = v25;
            v5 = v26;
            v6 = v24;
          }

LABEL_28:

          goto LABEL_34;
        }

        if ([v8 isObject] && objc_msgSend(objc_msgSend(v8, "objectClass"), "instancesRespondToSelector:", v23))
        {
          v10 = [v8 objectContainedClasses];
          v20 = [v10 firstObject];
          if (v20 != objc_opt_class())
          {
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
            [v21 handleFailureInFunction:v22 file:@"FBSInvocation.m" lineNumber:65 description:@"non-plist collections are not yet supported; see __FBSPlistCollection__"];

            if (![v10 count])
            {
              _vetProtocolMethod_cold_3();
            }
          }

          goto LABEL_28;
        }

LABEL_34:
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }
}

void sub_1A2DF7AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint8_t buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v25 = objc_begin_catch(exception_object);
      v26 = FBLogSceneInvocation();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(*(v23 + 64));
        __46__FBSInvocation_initWithInvocation_interface___block_invoke_cold_1(v27, v25, &buf, v26);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1A2DF7A50);
  }

  _Unwind_Resume(exception_object);
}

id _interfaceFromProtocol(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = objc_getAssociatedObject(v1, v2);
  if (!v3)
  {
    v3 = [off_1E76BCA10 protocolForProtocol:v1];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 methods];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          _vetProtocolMethod(*(*(&v11 + 1) + 8 * i));
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = objc_opt_class();
    objc_setAssociatedObject(v1, v9, v3, 0x301);
  }

  return v3;
}

void sub_1A2DFAD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2DFDD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2DFE610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1A2E00D04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1A2E01580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t __FBLogWatchdog_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "Watchdog");
  v1 = FBLogWatchdog___logObj;
  FBLogWatchdog___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBLogAppDataStore()
{
  if (FBLogAppDataStore_onceToken != -1)
  {
    FBLogAppDataStore_cold_1();
  }

  v1 = FBLogAppDataStore___logObj;

  return v1;
}

uint64_t __FBLogAppDataStore_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "AppDataStore");
  v1 = FBLogAppDataStore___logObj;
  FBLogAppDataStore___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBLogAppLaunch()
{
  if (FBLogAppLaunch_onceToken != -1)
  {
    FBLogAppLaunch_cold_1();
  }

  v1 = FBLogAppLaunch___logObj;

  return v1;
}

uint64_t __FBLogAppLaunch_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "AppLaunch");
  v1 = FBLogAppLaunch___logObj;
  FBLogAppLaunch___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __FBLogInterfaceOrientationObserver_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "InterfaceOrientationObserver");
  v1 = FBLogInterfaceOrientationObserver___logObj;
  FBLogInterfaceOrientationObserver___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBLogSceneInvocation()
{
  if (FBLogSceneInvocation_onceToken != -1)
  {
    FBLogSceneInvocation_cold_1();
  }

  v1 = FBLogSceneInvocation___logObj;

  return v1;
}

uint64_t __FBLogSceneInvocation_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "SceneInvocation");
  v1 = FBLogSceneInvocation___logObj;
  FBLogSceneInvocation___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1A2E032B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *FBSProcessSchedulingPolicyDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E76BED18[a1];
  }
}

__CFString *FBSProcessGraphicsPolicyDescription(uint64_t a1)
{
  v1 = @"(unknown)";
  if (a1 == 1)
  {
    v1 = @"full";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"none";
  }
}

__CFString *FBSProcessJetsamPolicyDescription(uint64_t a1)
{
  v1 = @"(unknown)";
  if (a1 == 1)
  {
    v1 = @"foreground";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"default";
  }
}

__CFString *FBSSceneEventSourceDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E76BED48[a1];
  }
}

uint64_t InstallCoordinationLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = InstallCoordinationLibraryCore_frameworkLibrary;
  v5 = InstallCoordinationLibraryCore_frameworkLibrary;
  if (!InstallCoordinationLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76BED70;
    v7 = *off_1E76BED80;
    v8 = 0;
    v3[3] = _sl_dlopen();
    InstallCoordinationLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A2E0916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __InstallCoordinationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  InstallCoordinationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t InstallCoordinationLibrary()
{
  v1 = 0;
  result = InstallCoordinationLibraryCore();
  if (!result)
  {
    InstallCoordinationLibrary_cold_1(&v1);
  }

  return result;
}

id getIXAppInstallCoordinatorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXAppInstallCoordinatorClass_softClass;
  v7 = getIXAppInstallCoordinatorClass_softClass;
  if (!getIXAppInstallCoordinatorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXAppInstallCoordinatorClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getIXAppInstallCoordinatorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIXAppInstallCoordinatorClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  result = objc_getClass("IXAppInstallCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXAppInstallCoordinatorClass_block_invoke_cold_1();
  }

  getIXAppInstallCoordinatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIXUninstallOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXUninstallOptionsClass_softClass;
  v7 = getIXUninstallOptionsClass_softClass;
  if (!getIXUninstallOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXUninstallOptionsClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getIXUninstallOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIXUninstallOptionsClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  result = objc_getClass("IXUninstallOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXUninstallOptionsClass_block_invoke_cold_1();
  }

  getIXUninstallOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIXApplicationIdentityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXApplicationIdentityClass_softClass;
  v7 = getIXApplicationIdentityClass_softClass;
  if (!getIXApplicationIdentityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXApplicationIdentityClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getIXApplicationIdentityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E095A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIXApplicationIdentityClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  result = objc_getClass("IXApplicationIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXApplicationIdentityClass_block_invoke_cold_1();
  }

  getIXApplicationIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getIXStringForUninstallDispositionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIXStringForUninstallDispositionSymbolLoc_ptr;
  v6 = getIXStringForUninstallDispositionSymbolLoc_ptr;
  if (!getIXStringForUninstallDispositionSymbolLoc_ptr)
  {
    v1 = InstallCoordinationLibrary();
    v4[3] = dlsym(v1, "IXStringForUninstallDisposition");
    getIXStringForUninstallDispositionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E096EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIXStringForUninstallDispositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InstallCoordinationLibrary();
  result = dlsym(v2, "IXStringForUninstallDisposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIXStringForUninstallDispositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_IXStringForUninstallDisposition(uint64_t a1)
{
  IXStringForUninstallDispositionSymbolLoc = getIXStringForUninstallDispositionSymbolLoc();
  if (!IXStringForUninstallDispositionSymbolLoc)
  {
    soft_IXStringForUninstallDisposition_cold_1();
  }

  return IXStringForUninstallDispositionSymbolLoc(a1);
}

uint64_t EmbeddedDataResetLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = EmbeddedDataResetLibraryCore_frameworkLibrary;
  v5 = EmbeddedDataResetLibraryCore_frameworkLibrary;
  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76BEDB8;
    v7 = *off_1E76BEDC8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    EmbeddedDataResetLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A2E09B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __EmbeddedDataResetLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  EmbeddedDataResetLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t EmbeddedDataResetLibrary()
{
  v1 = 0;
  result = EmbeddedDataResetLibraryCore();
  if (!result)
  {
    EmbeddedDataResetLibrary_cold_1(&v1);
  }

  return result;
}

id getDDRResetServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDRResetServiceClass_softClass;
  v7 = getDDRResetServiceClass_softClass;
  if (!getDDRResetServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDRResetServiceClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getDDRResetServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDRResetServiceClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetServiceClass_block_invoke_cold_1();
  }

  getDDRResetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getDDRResetRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDRResetRequestClass_softClass;
  v7 = getDDRResetRequestClass_softClass;
  if (!getDDRResetRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDRResetRequestClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getDDRResetRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDRResetRequestClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetRequestClass_block_invoke_cold_1();
  }

  getDDRResetRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getDDRResetOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDRResetOptionsClass_softClass;
  v7 = getDDRResetOptionsClass_softClass;
  if (!getDDRResetOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDRResetOptionsClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getDDRResetOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDRResetOptionsClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetOptionsClass_block_invoke_cold_1();
  }

  getDDRResetOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id FBSSceneSnapshotErrorForCode(uint64_t a1)
{
  v1 = a1;
  v8[2] = *MEMORY[0x1E69E9840];
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v2 = @"invalid parameters";
      goto LABEL_12;
    }

LABEL_11:
    v2 = @"an unknown error occurred";
    goto LABEL_12;
  }

  if (a1 == 4)
  {
    v2 = @"an unrelated condition or state was not satisfied";
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v2 = @"the request was canceled";
    goto LABEL_12;
  }

  if (a1 != 2)
  {
    goto LABEL_11;
  }

  v2 = @"the request was denied";
LABEL_12:
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A588];
  v7[0] = *MEMORY[0x1E696A578];
  v7[1] = v4;
  v8[0] = @"an error occurred during a scene snapshotting operation";
  v8[1] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v1 = [v3 errorWithDomain:@"FBSSceneSnapshotErrorDomain" code:v1 userInfo:v5];

LABEL_13:

  return v1;
}

id FBSSceneSnapshotActionResponseForErrorCode(uint64_t a1)
{
  v1 = FBSSceneSnapshotErrorForCode(a1);
  v2 = [off_1E76BC980 responseForError:v1];

  return v2;
}

void sub_1A2E0BBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ManagedConfigurationLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  v5 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76BEED0;
    v7 = *off_1E76BEEE0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    ManagedConfigurationLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A2E0CC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ManagedConfigurationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v1 = 0;
  result = ManagedConfigurationLibraryCore();
  if (!result)
  {
    ManagedConfigurationLibrary_cold_1(&v1);
  }

  return result;
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E0CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getMCManagedAppsChangedNotificationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMCManagedAppsChangedNotificationSymbolLoc_ptr;
  v6 = getMCManagedAppsChangedNotificationSymbolLoc_ptr;
  if (!getMCManagedAppsChangedNotificationSymbolLoc_ptr)
  {
    v1 = ManagedConfigurationLibrary();
    v4[3] = dlsym(v1, "MCManagedAppsChangedNotification");
    getMCManagedAppsChangedNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E0CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMCManagedAppsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCManagedAppsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCManagedAppsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMCManagedAppsChangedNotification()
{
  MCManagedAppsChangedNotificationSymbolLoc = getMCManagedAppsChangedNotificationSymbolLoc();
  if (!MCManagedAppsChangedNotificationSymbolLoc)
  {
    getMCManagedAppsChangedNotification_cold_1();
  }

  v1 = *MCManagedAppsChangedNotificationSymbolLoc;

  return v1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E0DB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fbs_release(va);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFBSApplicationPlaceholderProgressState(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"(unknown)";
  }

  else
  {
    return *(&off_1E76BEF48 + a1);
  }
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void fbs_release(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *FBSApplicationLibraryErrorCodeDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E76BF2A8[a1];
  }
}

void sub_1A2E0FFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E118F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

uint64_t _proxyPassesInclusionFilter(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6 && (v6[2](v6, v5) & 1) == 0)
  {
    v9 = [v5 bundleIdentifier];
    if ([v7 containsObject:v9])
    {
      v8 = [v5 fbs_isLaunchProhibited] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [v5 fbs_isLaunchProhibited] ^ 1;
  }

  return v8;
}

uint64_t _proxyPassesIdentityFilter(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9 && (v9[2](v9, v7, v8) & 1) == 0)
  {
    v12 = [v8 bundleIdentifier];
    if ([v10 containsObject:v12])
    {
      v11 = [v8 fbs_isLaunchProhibited] ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [v8 fbs_isLaunchProhibited] ^ 1;
  }

  return v11;
}

void sub_1A2E13E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t _addResultToArrayCreatingArrayIfNecessary(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *a1;
    v7 = v4;
    if (!*a1)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *a1 = v5;
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void sub_1A2E14D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E150CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E15438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return kdebug_trace();
}

void OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v9 = va_arg(va1, void);
  v4 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

BOOL OUTLINED_FUNCTION_32(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_36(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 80) = a2;
  *(a1 + 4) = v2;
  *(v4 - 68) = 2114;
  *(a1 + 14) = v3;
}

BOOL OUTLINED_FUNCTION_38(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_49(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8_t *a5)
{

  _os_log_impl(a1, v6, OS_LOG_TYPE_DEFAULT, v5, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return [v6 countByEnumeratingWithState:va objects:&STACK[0x318] count:16];
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{

  return [a13 countByEnumeratingWithState:a3 objects:a4 count:16];
}

BOOL OUTLINED_FUNCTION_54(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_55(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_56(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromFBSSceneLayerAlignment(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"display";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
    }
  }

  else
  {
    v2 = @"scene";
  }

  return v2;
}

__CFString *FBSDisplayOverscanCompensationDescription(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF338[a1 + 1];
  }

  return v2;
}

id FBSDisplayOverscanCompensationToCADisplayOverscanAdjustment(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = getkCADisplayInsetBounds();
  }

  else if (a1 == 1)
  {
    v1 = getkCADisplayScaleContent();
  }

  else if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = getkCADisplayNone();
  }

  return v1;
}

id FBSDisplayGamutToCADisplayGamut(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = getkCADisplayModeGamutP3();
  }

  else if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = getkCADisplayModeGamutSRGB();
  }

  return v1;
}

id FBSDisplayHDRModeToCADisplayHDRMode(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = getkCADisplayModeDolby();
  }

  else if (a1 == 1)
  {
    v1 = getkCADisplayModeHDR10();
  }

  else if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = getkCADisplayModeSDR();
  }

  return v1;
}

__CFString *FBSDisplayRotationDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF390[a1];
  }

  return v2;
}

double FBSDisplayRotationRadians(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 1) <= 2)
  {
    return dbl_1A2E69438[a1 - 1];
  }

  return result;
}

id FBSDisplayRotationToCADisplayRotation(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      v1 = getkCADisplayOrientationRotation90();
      goto LABEL_9;
    }

LABEL_7:
    v1 = getkCADisplayOrientationRotation0();
    goto LABEL_9;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v1 = getkCADisplayOrientationRotation270();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v1 = getkCADisplayOrientationRotation180();
LABEL_9:

  return v1;
}

__CFString *FBSDisplayConnectionTypeDescription(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF3B0[a1 + 1];
  }

  return v2;
}

__CFString *NSStringFromFBSSceneResourceMode(int a1)
{
  if (a1 > -11)
  {
    if (a1 == -10)
    {
      v2 = @"support";
    }

    else if (a1)
    {
      if (a1 != 10)
      {
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %li)", a1];

        return v2;
      }

      v2 = @"priority";
    }

    else
    {
      v2 = @"default";
    }
  }

  else
  {
    switch(a1)
    {
      case -128:
        v2 = @"disabled";

        break;
      case -50:
        v2 = @"idle";

        break;
      case -20:
        v2 = @"utility";

        return v2;
      default:
        goto LABEL_20;
    }
  }

  return v2;
}

__CFString *NSStringFromFBSSceneActivityMode(int a1)
{
  if (a1 > -11)
  {
    if (a1 == -10)
    {
      v2 = @"support";
    }

    else if (a1)
    {
      if (a1 != 10)
      {
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(invalid - %d)", a1];

        return v2;
      }

      v2 = @"focal";
    }

    else
    {
      v2 = @"default";
    }
  }

  else
  {
    switch(a1)
    {
      case -128:
        v2 = @"externally-managed";

        break;
      case -50:
        v2 = @"suspended";

        break;
      case -20:
        v2 = @"utility";

        return v2;
      default:
        goto LABEL_20;
    }
  }

  return v2;
}

uint64_t FBSSceneJetsamPriorityCreate(int a1, int a2)
{
  if (((a1 + 20) > 0x1E || ((1 << (a1 + 20)) & 0x40100401) == 0) && a1 != -128)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"FBSSceneJetsamModeIsValid(mode)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      FBSSceneJetsamPriorityCreate_cold_1(v4);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
  }

  v2 = a2 & ~(a2 >> 31);
  if (v2 >= 9)
  {
    LOWORD(v2) = 9;
  }

  if (a1 == -128)
  {
    LOWORD(v2) = 0;
  }

  return (v2 | (a1 << 8));
}

BOOL FBSSceneJetsamModeIsValid(int a1)
{
  result = 1;
  if ((a1 + 20) > 0x1E || ((1 << (a1 + 20)) & 0x40100401) == 0)
  {
    return a1 == -128;
  }

  return result;
}

uint64_t FBSSceneJetsamPriorityGetResourceElevation(char a1)
{
  v1 = a1 & ~(a1 >> 31);
  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t FBSSceneJetsamPriorityUpdateElevation(unsigned int a1, int a2)
{
  LOBYTE(v2) = 0;
  v3 = a1 >> 8;
  if (a1 >> 8 > 0x7F)
  {
    if (v3 != 128 && v3 != 246 && v3 != 236)
    {
      return FBSSceneJetsamPriorityCreate(v2, a2);
    }

LABEL_8:
    v2 = a1 >> 8;
    return FBSSceneJetsamPriorityCreate(v2, a2);
  }

  if (!v3 || v3 == 10)
  {
    goto LABEL_8;
  }

  return FBSSceneJetsamPriorityCreate(v2, a2);
}

id NSStringFromFBSSceneJetsamPriority(unsigned int a1)
{
  LOBYTE(v2) = 0;
  v3 = a1 >> 8;
  if (a1 >> 8 <= 0x7F)
  {
    if (v3 && v3 != 10)
    {
      goto LABEL_9;
    }
  }

  else if (v3 != 128 && v3 != 246 && v3 != 236)
  {
    goto LABEL_9;
  }

  v2 = a1 >> 8;
LABEL_9:
  v4 = a1 & ~(a1 >> 31);
  if (v4 >= 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = NSStringFromFBSSceneJetsamMode(v2);
  v7 = [v6 stringByAppendingFormat:@"[+%d]", v5];

  return v7;
}

__CFString *NSStringFromFBSSceneJetsamMode(int a1)
{
  if (a1 <= -11)
  {
    if (a1 == -128)
    {
      v2 = @"disabled";
    }

    else
    {
      if (a1 != -20)
      {
LABEL_22:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(invalid - %d)", a1];

        return v2;
      }

      v2 = @"utility";
    }
  }

  else if (a1 == -10)
  {
    v2 = @"support";
  }

  else
  {
    if (a1)
    {
      if (a1 == 10)
      {
        v2 = @"elevated";

        return v2;
      }

      goto LABEL_22;
    }

    v2 = @"default";
  }

  return v2;
}

__CFString *NSStringFromDiagnosticReportType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E76BF3D8[a1];
  }
}

void sub_1A2E1A038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E1B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 72), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1A2E1D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E1D470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E1D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E1D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return MEMORY[0x1EEDC70C8](v2, v1, a1);
}

uint64_t libmisLibraryCore()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = libmisLibraryCore_frameworkLibrary;
  v5 = libmisLibraryCore_frameworkLibrary;
  if (!libmisLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76BF9F0;
    v7 = 0;
    v3[3] = _sl_dlopen();
    libmisLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A2E27DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libmisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libmisLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libmisLibrary()
{
  v1 = 0;
  result = libmisLibraryCore();
  if (!result)
  {
    libmisLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getMISQueryBlacklistForBundleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISQueryBlacklistForBundleSymbolLoc_ptr;
  v6 = getMISQueryBlacklistForBundleSymbolLoc_ptr;
  if (!getMISQueryBlacklistForBundleSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISQueryBlacklistForBundle");
    getMISQueryBlacklistForBundleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E27F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISQueryBlacklistForBundleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISQueryBlacklistForBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISQueryBlacklistForBundleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISQueryBlacklistForBundle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MISQueryBlacklistForBundleSymbolLoc = getMISQueryBlacklistForBundleSymbolLoc();
  if (!MISQueryBlacklistForBundleSymbolLoc)
  {
    soft_MISQueryBlacklistForBundle_cold_1();
  }

  return MISQueryBlacklistForBundleSymbolLoc(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t getMISQueryBlacklistForCdHashSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISQueryBlacklistForCdHashSymbolLoc_ptr;
  v6 = getMISQueryBlacklistForCdHashSymbolLoc_ptr;
  if (!getMISQueryBlacklistForCdHashSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISQueryBlacklistForCdHash");
    getMISQueryBlacklistForCdHashSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISQueryBlacklistForCdHashSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISQueryBlacklistForCdHash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISQueryBlacklistForCdHashSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISQueryBlacklistForCdHash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MISQueryBlacklistForCdHashSymbolLoc = getMISQueryBlacklistForCdHashSymbolLoc();
  if (!MISQueryBlacklistForCdHashSymbolLoc)
  {
    soft_MISQueryBlacklistForCdHash_cold_1();
  }

  return MISQueryBlacklistForCdHashSymbolLoc(a1, a2, a3, a4, a5);
}

uint64_t getMISAppApprovalStateSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISAppApprovalStateSymbolLoc_ptr;
  v6 = getMISAppApprovalStateSymbolLoc_ptr;
  if (!getMISAppApprovalStateSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISAppApprovalState");
    getMISAppApprovalStateSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E282F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISAppApprovalStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISAppApprovalState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISAppApprovalStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISAppApprovalState(uint64_t a1, uint64_t a2)
{
  MISAppApprovalStateSymbolLoc = getMISAppApprovalStateSymbolLoc();
  if (!MISAppApprovalStateSymbolLoc)
  {
    soft_MISAppApprovalState_cold_1();
  }

  return MISAppApprovalStateSymbolLoc(a1, a2);
}

uint64_t getMISValidateUPPSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISValidateUPPSymbolLoc_ptr;
  v6 = getMISValidateUPPSymbolLoc_ptr;
  if (!getMISValidateUPPSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISValidateUPP");
    getMISValidateUPPSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISValidateUPPSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISValidateUPP");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISValidateUPPSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void soft_MISValidateUPP(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  MISValidateUPPSymbolLoc = getMISValidateUPPSymbolLoc();
  if (!MISValidateUPPSymbolLoc)
  {
    soft_MISValidateUPP_cold_1();
  }

  MISValidateUPPSymbolLoc(a1, v7, v5);
}

uint64_t getMISCopyErrorStringForErrorCodeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISCopyErrorStringForErrorCodeSymbolLoc_ptr;
  v6 = getMISCopyErrorStringForErrorCodeSymbolLoc_ptr;
  if (!getMISCopyErrorStringForErrorCodeSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISCopyErrorStringForErrorCode");
    getMISCopyErrorStringForErrorCodeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISCopyErrorStringForErrorCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISCopyErrorStringForErrorCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISCopyErrorStringForErrorCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISCopyErrorStringForErrorCode(uint64_t a1)
{
  MISCopyErrorStringForErrorCodeSymbolLoc = getMISCopyErrorStringForErrorCodeSymbolLoc();
  if (!MISCopyErrorStringForErrorCodeSymbolLoc)
  {
    soft_MISCopyErrorStringForErrorCode_cold_1();
  }

  return MISCopyErrorStringForErrorCodeSymbolLoc(a1);
}

uint64_t getMISValidateSignatureAndCopyInfoSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISValidateSignatureAndCopyInfoSymbolLoc_ptr;
  v6 = getMISValidateSignatureAndCopyInfoSymbolLoc_ptr;
  if (!getMISValidateSignatureAndCopyInfoSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISValidateSignatureAndCopyInfo");
    getMISValidateSignatureAndCopyInfoSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E287AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISValidateSignatureAndCopyInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISValidateSignatureAndCopyInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISValidateSignatureAndCopyInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISValidateSignatureAndCopyInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MISValidateSignatureAndCopyInfoSymbolLoc = getMISValidateSignatureAndCopyInfoSymbolLoc();
  if (!MISValidateSignatureAndCopyInfoSymbolLoc)
  {
    soft_MISValidateSignatureAndCopyInfo_cold_1();
  }

  return MISValidateSignatureAndCopyInfoSymbolLoc(a1, a2, a3);
}

uint64_t getMISValidationCopySignatureVersionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISValidationCopySignatureVersionSymbolLoc_ptr;
  v6 = getMISValidationCopySignatureVersionSymbolLoc_ptr;
  if (!getMISValidationCopySignatureVersionSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISValidationCopySignatureVersion");
    getMISValidationCopySignatureVersionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISValidationCopySignatureVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISValidationCopySignatureVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISValidationCopySignatureVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISValidationCopySignatureVersion(uint64_t a1, uint64_t a2)
{
  MISValidationCopySignatureVersionSymbolLoc = getMISValidationCopySignatureVersionSymbolLoc();
  if (!MISValidationCopySignatureVersionSymbolLoc)
  {
    soft_MISValidationCopySignatureVersion_cold_1();
  }

  return MISValidationCopySignatureVersionSymbolLoc(a1, a2);
}

uint64_t getkMISValidationOptionUnauthoritativeLaunchSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr;
  v6 = getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr;
  if (!getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionUnauthoritativeLaunch");
    getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionUnauthoritativeLaunch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionUnauthoritativeLaunch()
{
  v0 = getkMISValidationOptionUnauthoritativeLaunchSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionUnauthoritativeLaunch_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionAuthoritativeLaunchSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr;
  v6 = getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr;
  if (!getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionAuthoritativeLaunch");
    getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionAuthoritativeLaunchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionAuthoritativeLaunch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionAuthoritativeLaunch()
{
  v0 = getkMISValidationOptionAuthoritativeLaunchSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionAuthoritativeLaunch_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionOnlineAuthorizationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr;
  v6 = getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr;
  if (!getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionOnlineAuthorization");
    getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionOnlineAuthorizationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionOnlineAuthorization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionOnlineAuthorization()
{
  v0 = getkMISValidationOptionOnlineAuthorizationSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionOnlineAuthorization_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionOnlineCheckTypeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr;
  v6 = getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr;
  if (!getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionOnlineCheckType");
    getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionOnlineCheckTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionOnlineCheckType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionOnlineCheckType()
{
  v0 = getkMISValidationOptionOnlineCheckTypeSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionOnlineCheckType_cold_1();
  }

  return *v0;
}

uint64_t getkMISMinSupportedSignatureVersionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISMinSupportedSignatureVersionSymbolLoc_ptr;
  v6 = getkMISMinSupportedSignatureVersionSymbolLoc_ptr;
  if (!getkMISMinSupportedSignatureVersionSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISMinSupportedSignatureVersion");
    getkMISMinSupportedSignatureVersionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISMinSupportedSignatureVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISMinSupportedSignatureVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISMinSupportedSignatureVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISMinSupportedSignatureVersion()
{
  v0 = getkMISMinSupportedSignatureVersionSymbolLoc();
  if (!v0)
  {
    getkMISMinSupportedSignatureVersion_cold_1();
  }

  return *v0;
}

uint64_t getkMISFutureMinSupportedSignatureVersionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr;
  v6 = getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr;
  if (!getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISFutureMinSupportedSignatureVersion");
    getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E291AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISFutureMinSupportedSignatureVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISFutureMinSupportedSignatureVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISFutureMinSupportedSignatureVersion()
{
  v0 = getkMISFutureMinSupportedSignatureVersionSymbolLoc();
  if (!v0)
  {
    getkMISFutureMinSupportedSignatureVersion_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionHintMainExecutablePathSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr;
  v6 = getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr;
  if (!getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionHintMainExecutablePath");
    getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionHintMainExecutablePathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionHintMainExecutablePath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionHintMainExecutablePath()
{
  v0 = getkMISValidationOptionHintMainExecutablePathSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionHintMainExecutablePath_cold_1();
  }

  return *v0;
}

uint64_t getMISEnumerateInstalledProvisioningProfilesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr;
  v6 = getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr;
  if (!getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISEnumerateInstalledProvisioningProfiles");
    getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISEnumerateInstalledProvisioningProfilesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISEnumerateInstalledProvisioningProfiles");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISEnumerateInstalledProvisioningProfiles(uint64_t a1, void *a2)
{
  v3 = a2;
  MISEnumerateInstalledProvisioningProfilesSymbolLoc = getMISEnumerateInstalledProvisioningProfilesSymbolLoc();
  if (!MISEnumerateInstalledProvisioningProfilesSymbolLoc)
  {
    soft_MISEnumerateInstalledProvisioningProfiles_cold_1();
  }

  v5 = MISEnumerateInstalledProvisioningProfilesSymbolLoc(a1, v3);

  return v5;
}

uint64_t getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetDeveloperCertificates");
    getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E295F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetDeveloperCertificates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetDeveloperCertificates(uint64_t a1)
{
  DeveloperCertificatesSymbolLoc = getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc();
  if (!DeveloperCertificatesSymbolLoc)
  {
    soft_MISProvisioningProfileGetDeveloperCertificates_cold_1();
  }

  return DeveloperCertificatesSymbolLoc(a1);
}

uint64_t getMISProfileGetValueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProfileGetValueSymbolLoc_ptr;
  v6 = getMISProfileGetValueSymbolLoc_ptr;
  if (!getMISProfileGetValueSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProfileGetValue");
    getMISProfileGetValueSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProfileGetValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProfileGetValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProfileGetValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProfileGetValue(uint64_t a1, uint64_t a2)
{
  ValueSymbolLoc = getMISProfileGetValueSymbolLoc();
  if (!ValueSymbolLoc)
  {
    soft_MISProfileGetValue_cold_1();
  }

  return ValueSymbolLoc(a1, a2);
}

uint64_t getMISProvisioningProfileGetEntitlementsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetEntitlements");
    getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetEntitlementsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetEntitlements(uint64_t a1)
{
  EntitlementsSymbolLoc = getMISProvisioningProfileGetEntitlementsSymbolLoc();
  if (!EntitlementsSymbolLoc)
  {
    soft_MISProvisioningProfileGetEntitlements_cold_1();
  }

  return EntitlementsSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileGetExpirationDateSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetExpirationDate");
    getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetExpirationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetExpirationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetExpirationDate(uint64_t a1)
{
  ExpirationDateSymbolLoc = getMISProvisioningProfileGetExpirationDateSymbolLoc();
  if (!ExpirationDateSymbolLoc)
  {
    soft_MISProvisioningProfileGetExpirationDate_cold_1();
  }

  return ExpirationDateSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileGetUUIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetUUIDSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetUUIDSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetUUIDSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetUUID");
    getMISProvisioningProfileGetUUIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetUUID(uint64_t a1)
{
  UUIDSymbolLoc = getMISProvisioningProfileGetUUIDSymbolLoc();
  if (!UUIDSymbolLoc)
  {
    soft_MISProvisioningProfileGetUUID_cold_1();
  }

  return UUIDSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileGrantsEntitlementSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr;
  if (!getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGrantsEntitlement");
    getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGrantsEntitlementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGrantsEntitlement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGrantsEntitlement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MISProvisioningProfileGrantsEntitlementSymbolLoc = getMISProvisioningProfileGrantsEntitlementSymbolLoc();
  if (!MISProvisioningProfileGrantsEntitlementSymbolLoc)
  {
    soft_MISProvisioningProfileGrantsEntitlement_cold_1();
  }

  return MISProvisioningProfileGrantsEntitlementSymbolLoc(a1, a2, a3);
}

uint64_t getMISProvisioningProfileIsAppleInternalProfileSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr;
  v6 = getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr;
  if (!getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileIsAppleInternalProfile");
    getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileIsAppleInternalProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileIsAppleInternalProfile(uint64_t a1)
{
  IsAppleInternalProfileSymbolLoc = getMISProvisioningProfileIsAppleInternalProfileSymbolLoc();
  if (!IsAppleInternalProfileSymbolLoc)
  {
    soft_MISProvisioningProfileIsAppleInternalProfile_cold_1();
  }

  return IsAppleInternalProfileSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileProvisionsAllDevicesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr;
  v6 = getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr;
  if (!getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileProvisionsAllDevices");
    getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2A098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileProvisionsAllDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileProvisionsAllDevices(uint64_t a1)
{
  MISProvisioningProfileProvisionsAllDevicesSymbolLoc = getMISProvisioningProfileProvisionsAllDevicesSymbolLoc();
  if (!MISProvisioningProfileProvisionsAllDevicesSymbolLoc)
  {
    soft_MISProvisioningProfileProvisionsAllDevices_cold_1();
  }

  return MISProvisioningProfileProvisionsAllDevicesSymbolLoc(a1);
}

id getMISLaunchWarningDatabaseClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMISLaunchWarningDatabaseClass_softClass;
  v7 = getMISLaunchWarningDatabaseClass_softClass;
  if (!getMISLaunchWarningDatabaseClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMISLaunchWarningDatabaseClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getMISLaunchWarningDatabaseClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E2A20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMISLaunchWarningDatabaseClass_block_invoke(uint64_t a1)
{
  libmisLibrary();
  result = objc_getClass("MISLaunchWarningDatabase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMISLaunchWarningDatabaseClass_block_invoke_cold_1();
  }

  getMISLaunchWarningDatabaseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2E2A460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E2B5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t FBSProcessResourceAllowanceMakeWithValue@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

uint64_t FBSProcessResourceAllowanceMakeWithTimeInterval@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v3 = (a3 * 1000.0);
  if (a3 <= 0.0)
  {
    v3 = 0;
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = 0;
  return result;
}

void FBSProcessResourceAllowanceMakeWithRealTimeInterval(void *a1@<X8>, double a2@<D0>)
{
  v2 = (a2 * 1000.0);
  if (a2 <= 0.0)
  {
    v2 = 0;
  }

  *a1 = 1;
  a1[1] = v2;
  a1[2] = 0;
}

int8x16_t FBSProcessResourceAllowanceMakeWithScheduledTimeIntervalAndRefreshInterval@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>)
{
  a2.f64[1] = a3;
  *a1 = 2;
  result = vandq_s8(vcvtq_u64_f64(vmulq_f64(a2, vdupq_n_s64(0x408F400000000000uLL))), vcgtzq_f64(a2));
  *(a1 + 8) = result;
  return result;
}

double FBSProcessResourceAllowanceScale@<D0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = a1[1] * a3;
  *a2 = *a1;
  a2[1] = result;
  a2[2] = a1[2];
  return result;
}

double FBSProcessResourceAllowanceExtend@<D0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = a1[1] + a3;
  *a2 = *a1;
  a2[1] = result;
  a2[2] = a1[2];
  return result;
}

uint64_t FBSProcessResourceAllowanceGetType(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t FBSProcessResourceAllowanceValue(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

id NSStringFromProcessResourceValue(uint64_t a1, unint64_t a2)
{
  if ((a1 - 1) > 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3fs", a2 / 1000.0];
  }
  v2 = ;

  return v2;
}

uint64_t __QuartzCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  QuartzCoreLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCALayerGetRenderIdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "CALayerGetRenderId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCALayerGetRenderIdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayNoneSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayNoneSymbolLoc_ptr;
  v6 = getkCADisplayNoneSymbolLoc_ptr;
  if (!getkCADisplayNoneSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayNone");
    getkCADisplayNoneSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2D7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayNone()
{
  v0 = getkCADisplayNoneSymbolLoc();
  if (!v0)
  {
    getkCADisplayNone_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayScaleContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayScaleContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayScaleContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayInsetBoundsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayInsetBounds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayInsetBoundsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayOrientationRotation0SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation0SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation0SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation0SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation0");
    getkCADisplayOrientationRotation0SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2D9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayOrientationRotation0SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation0SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayOrientationRotation0()
{
  v0 = getkCADisplayOrientationRotation0SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation0_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayOrientationRotation90SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation90");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation90SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayOrientationRotation180SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation180");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation180SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayOrientationRotation270SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation270");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation270SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayModeGamutSRGBSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeGamutSRGBSymbolLoc_ptr;
  v6 = getkCADisplayModeGamutSRGBSymbolLoc_ptr;
  if (!getkCADisplayModeGamutSRGBSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeGamutSRGB");
    getkCADisplayModeGamutSRGBSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2DC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayModeGamutSRGBSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeGamutSRGB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeGamutSRGBSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayModeGamutSRGB()
{
  v0 = getkCADisplayModeGamutSRGBSymbolLoc();
  if (!v0)
  {
    getkCADisplayModeGamutSRGB_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayModeGamutP3SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeGamutP3");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeGamutP3SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayModeSDRSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeSDRSymbolLoc_ptr;
  v6 = getkCADisplayModeSDRSymbolLoc_ptr;
  if (!getkCADisplayModeSDRSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeSDR");
    getkCADisplayModeSDRSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2DDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayModeSDRSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeSDR");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeSDRSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayModeSDR()
{
  v0 = getkCADisplayModeSDRSymbolLoc();
  if (!v0)
  {
    getkCADisplayModeSDR_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayModeHDR10SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeHDR10");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeHDR10SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayModeDolbySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeDolby");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeDolbySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCASnapshotContextIdSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotContextIdSymbolLoc_ptr;
  v6 = getkCASnapshotContextIdSymbolLoc_ptr;
  if (!getkCASnapshotContextIdSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotContextId");
    getkCASnapshotContextIdSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotContextIdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotContextId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotContextIdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotContextId()
{
  v0 = getkCASnapshotContextIdSymbolLoc();
  if (!v0)
  {
    getkCASnapshotContextId_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotContextListSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotContextListSymbolLoc_ptr;
  v6 = getkCASnapshotContextListSymbolLoc_ptr;
  if (!getkCASnapshotContextListSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotContextList");
    getkCASnapshotContextListSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotContextListSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotContextList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotContextListSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotContextList()
{
  v0 = getkCASnapshotContextListSymbolLoc();
  if (!v0)
  {
    getkCASnapshotContextList_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotDisplayNameSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotDisplayNameSymbolLoc_ptr;
  v6 = getkCASnapshotDisplayNameSymbolLoc_ptr;
  if (!getkCASnapshotDisplayNameSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotDisplayName");
    getkCASnapshotDisplayNameSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotDisplayName()
{
  v0 = getkCASnapshotDisplayNameSymbolLoc();
  if (!v0)
  {
    getkCASnapshotDisplayName_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotFormatOpaqueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotFormatOpaqueSymbolLoc_ptr;
  v6 = getkCASnapshotFormatOpaqueSymbolLoc_ptr;
  if (!getkCASnapshotFormatOpaqueSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotFormatOpaque");
    getkCASnapshotFormatOpaqueSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotFormatOpaqueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotFormatOpaque");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotFormatOpaqueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotFormatOpaque()
{
  v0 = getkCASnapshotFormatOpaqueSymbolLoc();
  if (!v0)
  {
    getkCASnapshotFormatOpaque_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotFormatWideGamutSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotFormatWideGamutSymbolLoc_ptr;
  v6 = getkCASnapshotFormatWideGamutSymbolLoc_ptr;
  if (!getkCASnapshotFormatWideGamutSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotFormatWideGamut");
    getkCASnapshotFormatWideGamutSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotFormatWideGamutSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotFormatWideGamut");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotFormatWideGamutSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotFormatWideGamut()
{
  v0 = getkCASnapshotFormatWideGamutSymbolLoc();
  if (!v0)
  {
    getkCASnapshotFormatWideGamut_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotModeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotModeSymbolLoc_ptr;
  v6 = getkCASnapshotModeSymbolLoc_ptr;
  if (!getkCASnapshotModeSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotMode");
    getkCASnapshotModeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotMode()
{
  v0 = getkCASnapshotModeSymbolLoc();
  if (!v0)
  {
    getkCASnapshotMode_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotModeIncludeContextListSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotModeIncludeContextListSymbolLoc_ptr;
  v6 = getkCASnapshotModeIncludeContextListSymbolLoc_ptr;
  if (!getkCASnapshotModeIncludeContextListSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotModeIncludeContextList");
    getkCASnapshotModeIncludeContextListSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotModeIncludeContextListSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotModeIncludeContextList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotModeIncludeContextListSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotModeIncludeContextList()
{
  v0 = getkCASnapshotModeIncludeContextListSymbolLoc();
  if (!v0)
  {
    getkCASnapshotModeIncludeContextList_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotOriginXSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotOriginXSymbolLoc_ptr;
  v6 = getkCASnapshotOriginXSymbolLoc_ptr;
  if (!getkCASnapshotOriginXSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotOriginX");
    getkCASnapshotOriginXSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2EA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotOriginXSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotOriginX");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotOriginXSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotOriginX()
{
  v0 = getkCASnapshotOriginXSymbolLoc();
  if (!v0)
  {
    getkCASnapshotOriginX_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotOriginYSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotOriginYSymbolLoc_ptr;
  v6 = getkCASnapshotOriginYSymbolLoc_ptr;
  if (!getkCASnapshotOriginYSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotOriginY");
    getkCASnapshotOriginYSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2EB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotOriginYSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotOriginY");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotOriginYSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotOriginY()
{
  v0 = getkCASnapshotOriginYSymbolLoc();
  if (!v0)
  {
    getkCASnapshotOriginY_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotSizeHeightSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotSizeHeightSymbolLoc_ptr;
  v6 = getkCASnapshotSizeHeightSymbolLoc_ptr;
  if (!getkCASnapshotSizeHeightSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotSizeHeight");
    getkCASnapshotSizeHeightSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2ECF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotSizeHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotSizeHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotSizeHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotSizeHeight()
{
  v0 = getkCASnapshotSizeHeightSymbolLoc();
  if (!v0)
  {
    getkCASnapshotSizeHeight_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotSizeWidthSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotSizeWidthSymbolLoc_ptr;
  v6 = getkCASnapshotSizeWidthSymbolLoc_ptr;
  if (!getkCASnapshotSizeWidthSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotSizeWidth");
    getkCASnapshotSizeWidthSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}