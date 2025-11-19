id NUAssertLogger()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_8139);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10021);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_17406);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_17850);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21063);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_25195);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_26556);
  }

  v1 = _NUAssertLogger;

  return v1;
}

{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id averageLTMFilter(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 valueForKey:@"inputMapPointsH"];
  v4 = [v3 intValue];

  v5 = [v1 valueForKey:@"inputMapPointsV"];
  v6 = [v5 intValue];

  v7 = [v1 valueForKey:@"inputMapPointsN"];
  v8 = [v7 intValue];

  v9 = [v1 valueForKey:@"inputGainData"];
  v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v8];
  v11 = [v9 bytes];
  v12 = [v10 mutableBytes];
  v13 = (v6 * v4);
  v14 = v8;
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      v16 = v11;
      v17 = v12;
      v18 = v8;
      if (v8 >= 1)
      {
        do
        {
          v19 = *v16++;
          *v17 = v19 + *v17;
          ++v17;
          --v18;
        }

        while (v18);
      }

      v11 += 4 * v8;
    }
  }

  if (v8 >= 1)
  {
    do
    {
      *v12 = *v12 / v13;
      ++v12;
      --v14;
    }

    while (v14);
  }

  [v2 setValue:&unk_1F3F82080 forKey:@"inputMapPointsH"];
  [v2 setValue:&unk_1F3F82080 forKey:@"inputMapPointsV"];
  [v2 setValue:&unk_1F3F82C30 forKey:@"inputMapSpacingH"];
  [v2 setValue:&unk_1F3F82C30 forKey:@"inputMapSpacingV"];
  [v2 setValue:&unk_1F3F82C30 forKey:@"inputMapOriginH"];
  [v2 setValue:&unk_1F3F82C30 forKey:@"inputMapOriginV"];
  [v2 setValue:v10 forKey:@"inputGainData"];

  return v2;
}

id NUAssertLogger_5()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_34()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_48);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_70()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_78);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_165()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_173);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_222()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_235);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C0192A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_292()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_370()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_382);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_440()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_455);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_530()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C01983D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__565(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C019CAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

void sub_1C019D728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getStringEnv(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v6 = NUAssertLogger_716();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v23 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_716();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("NSString *getStringEnv(NSString *__strong)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUGlobalSettings.m", 24, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "name != nil");
  }

  v2 = v1;
  v3 = getenv([v1 UTF8String]);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NUAssertLogger_716()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_862);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__727(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_981()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_990);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C01A7BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_1092()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1107);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_1149()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1177);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_1288()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_409);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C01AED4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1479(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C01AF1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NUEvaluationModeName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Prepare";
  }

  else
  {
    return off_1E8109570[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__1495(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN12_GLOBAL__N_114getCachedBrushElf_block_invoke_10(uint64_t a1)
{
  {
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      {
        return;
      }

      v3 = v2;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v4 = [NUImageLayout contiguousLayoutForImageSize:v3, v3];
  v5 = +[NUPixelFormat R8];
  v6 = +[NUColorSpace genericGrayColorSpace];
  v7 = [NUImageFactory bufferImageWithLayout:v4 format:v5 colorSpace:v6];

  v13[0] = 0;
  v13[1] = 0;
  v13[2] = v3;
  v13[3] = v3;
  v8 = [NURegion regionWithRect:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN12_GLOBAL__N_114getCachedBrushElf_block_invoke_2;
  v11[3] = &__block_descriptor_44_e35_v24__0___NUMutableBufferTile__8_B16l;
  v11[4] = *(a1 + 40);
  v12 = *(a1 + 48);
  [v7 writeBufferRegion:v8 withBlock:v11];

  v9 = [v7 immutableImageCopy];
}

void ___ZN12_GLOBAL__N_114getCachedBrushElf_block_invoke_2(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 mutableBuffer];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v3 mutableBytes];
  v7 = [v3 rowBytes];
  if ((2.0 / v4) <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2.0 / v4;
  }

  if (v4)
  {
    v9 = vcvts_n_f32_s64(v4, 1uLL);
    v10 = v9 * (1.0 - v8);
    v11 = 0.5;
    v12 = v4;
    do
    {
      v13 = 0;
      v14 = 0.5;
      do
      {
        v15 = sqrtf(((v11 - v9) * (v11 - v9)) + ((v14 - v9) * (v14 - v9)));
        if (v15 <= v9)
        {
          if (v15 <= v10)
          {
            LOBYTE(v16) = -1;
          }

          else
          {
            v16 = ((1.0 - (((v15 - v10) / (v9 - v10)) * (((v15 - v10) / (v9 - v10)) * ((((v15 - v10) / (v9 - v10)) * -2.0) + 3.0)))) * 255.0);
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }

        *(v6 + v13) = v16;
        v14 = v14 + 1.0;
        ++v13;
      }

      while (v4 != v13);
      v6 += v7;
      v11 = v11 + 1.0;
      --v12;
    }

    while (v12);
  }
}

uint64_t ___ZN12_GLOBAL__N_114getCachedBrushElf_block_invoke()
{

  return MEMORY[0x1EEE66BB8]();
}

id NUAssertLogger_1594()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C01B08C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C01B3488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C01B44D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1736(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_1900()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1916);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_2109()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_379);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C01BF760(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1C01BF750);
}

void sub_1C01BF7B4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1C01BF7A0);
}

__CFString *NUPixelRoundingPolicyToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Out";
  }

  else
  {
    return *(&off_1E8109788 + a1 - 1);
  }
}

unint64_t NUEvenPixelSize(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 | a2))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFFFELL;
    if (a1 & 0x8000000000000000 | a2 & 0x8000000000000000)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
      [v4 handleFailureInFunction:v5 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
    }
  }

  return v2;
}

__n128 NUEvenSizedPixelRect@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a1[1].n128_u64[0] = NUEvenPixelSize(a1[1].n128_u64[0], a1[1].n128_i64[1]);
  a1[1].n128_u64[1] = v4;
  result = *a1;
  v6 = a1[1];
  *a2 = *a1;
  a2[1] = v6;
  return result;
}

void NUPixelRectFromArray(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a1;
  if ([v11 count] == 4)
  {
    v3 = [v11 objectAtIndexedSubscript:0];
    v4 = [v3 integerValue];
    v5 = [v11 objectAtIndexedSubscript:1];
    v6 = [v5 integerValue];
    v7 = [v11 objectAtIndexedSubscript:2];
    v8 = [v7 integerValue];
    v9 = [v11 objectAtIndexedSubscript:3];
    v10 = [v9 integerValue];
    *a2 = v4;
    a2[1] = v6;
    a2[2] = v8;
    a2[3] = v10;
  }

  else
  {
    *a2 = NUPixelRectNull;
    *(a2 + 1) = unk_1C03C4308;
  }
}

id NSArrayFromNUPixelRect(void *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = *a1 == 0x7FFFFFFFFFFFFFFFLL && a1[1] == 0x7FFFFFFFFFFFFFFFLL && a1[2] == 0;
  if (v3 && !a1[3])
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v10[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a1[1]];
    v10[1] = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a1[2]];
    v10[2] = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a1[3]];
    v10[3] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  }

  return v8;
}

__CFString *NUOrientationName(uint64_t a1)
{
  if ((a1 - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return *(&NUOrientationName_names + v1);
}

id NUAssertLogger_2583()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C01C183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NURenderLogger()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
  }

  v1 = _NURenderLogger;

  return v1;
}

uint64_t ImageIOLibraryCore()
{
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    ImageIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ImageIOLibraryCore_frameworkLibrary;
}

uint64_t getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc_ptr;
  v6 = getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc_ptr;
  if (!getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc_block_invoke;
    v2[3] = &unk_1E810A8A8;
    v2[4] = &v3;
    __getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C01C40CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc_block_invoke(void *a1)
{
  v2 = ImageIOLibraryCore();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"NURenderSourceNode+CGImage.m" lineNumber:39 description:{@"%s", 0}];

    __break(1u);
    free(v5);
  }

  result = dlsym(v3, "CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions");
  *(*(a1[4] + 8) + 24) = result;
  getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary = result;
  return result;
}

double nu_rgb_to_tempTint(float *a1, double *a2, double *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v18 = 0.0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v21 = 0;
  v23 = 0u;
  v20 = 0u;
  v19 = 0x3FF03B3AF053F29DLL;
  v22 = 0x3FF0000000000000;
  v24 = 0;
  v25 = 0x3FE83CFAB36818D8;
  MatrixMatrix(GetAdaptationMatrix_identity_mtx, &v19, &v14);
  MatrixMatrix(&v14, GetAdaptationMatrix_identity_mtx, &v14);
  result = (*(&v14 + 1) * 0.672250773 + *&v14 * 0.327791699 + *&v15 * 0.11111583) * v6 + v5 * (*(&v14 + 1) * 0.231750546 + *&v14 * 0.429420129 + *&v15 * 0.0204485776) + v7 * (*(&v14 + 1) * 0.0959986815 + *&v14 * 0.193244099 + *&v15 * 0.957493343);
  v9 = (*&v16 * 0.672250773 + *(&v15 + 1) * 0.327791699 + *(&v16 + 1) * 0.11111583) * v6 + v5 * (*&v16 * 0.231750546 + *(&v15 + 1) * 0.429420129 + *(&v16 + 1) * 0.0204485776) + v7 * (*&v16 * 0.0959986815 + *(&v15 + 1) * 0.193244099 + *(&v16 + 1) * 0.957493343);
  v10 = (*(&v17 + 1) * 0.672250773 + *&v17 * 0.327791699 + v18 * 0.11111583) * v6 + v5 * (*(&v17 + 1) * 0.231750546 + *&v17 * 0.429420129 + v18 * 0.0204485776) + v7 * (*(&v17 + 1) * 0.0959986815 + *&v17 * 0.193244099 + v18 * 0.957493343);
  if (result >= 1.0e-20 || v9 >= 1.0e-20 || v10 >= 1.0e-20)
  {
    v11 = result + v9 + v10;
    v12 = result / v11;
    v13 = v9 / v11;

    return nu_xy_to_tempTint(a2, a3, v12, v13);
  }

  else
  {
    *a3 = NAN;
    *a2 = NAN;
  }

  return result;
}

double MatrixMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = v7 * v13 + v4 * *a2 + v10 * v14;
  *a3 = v6 * v13 + *a1 * *a2 + v9 * v14;
  a3[1] = v21;
  a3[2] = v8 * v13 + v5 * v12 + v11 * v14;
  a3[3] = v6 * v16 + v3 * v15 + v9 * v17;
  a3[4] = v7 * v16 + v4 * v15 + v10 * v17;
  a3[5] = v8 * v16 + v5 * v15 + v11 * v17;
  a3[6] = v6 * v19 + v3 * v18 + v9 * v20;
  a3[7] = v7 * v19 + v4 * v18 + v10 * v20;
  result = v8 * v19 + v5 * v18 + v11 * v20;
  a3[8] = result;
  return result;
}

double nu_xy_to_tempTint(double *a1, double *a2, double a3, double a4)
{
  v4 = 0;
  v5 = 1.5 - a3 + a4 * 6.0;
  v6 = (a3 + a3) / v5;
  v7 = a4 * 3.0 / v5;
  v8 = 0.0;
  v9 = &kTempTable;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = v11;
    v13 = v10;
    v14 = v8;
    v15 = v9[7];
    v16 = sqrt(v15 * v15 + 1.0);
    v8 = 1.0 / v16;
    v10 = v15 / v16;
    v18 = v9[5];
    v17 = v9[6];
    v11 = (v7 - v17) * v8 - (v6 - v18) * v10;
    v19 = v4 + 1;
    v9 += 4;
    if (v4 == 29)
    {
      break;
    }

    ++v4;
  }

  while (v11 > 0.0);
  v20 = 0.0;
  if (v19 != 1)
  {
    if (v11 <= 0.0)
    {
      v20 = (v7 - v17) * v8 - (v6 - v18) * v10;
    }

    v20 = -v20 / (v12 - v20);
  }

  v21 = (&kTempTable + (((v19 << 32) - 0x100000000) >> 27));
  *a1 = 1000000.0 / ((1.0 - v20) * *v9 + *v21 * v20);
  v22 = v14 * v20 + v8 * (1.0 - v20);
  v23 = v13 * v20 + v10 * (1.0 - v20);
  v24 = sqrt(v23 * v23 + v22 * v22);
  result = (v23 / v24 * (v7 - (v17 * (1.0 - v20) + v21[2] * v20)) + (v6 - (v18 * (1.0 - v20) + v21[1] * v20)) * (v22 / v24)) * -3000.0;
  *a2 = result;
  return result;
}

double nu_tempTint_to_xy(double *a1, double *a2, double a3, double a4)
{
  v4 = -1;
  v5 = &kTempTable;
  v6 = 1000000.0 / a3;
  do
  {
    v7 = v4;
    v8 = v5[4];
    v5 += 4;
    v9 = v8;
    ++v4;
  }

  while (v7 != 28 && v6 >= v9);
  v10 = a4 * -0.000333333333;
  v11 = (&kTempTable + 32 * v4);
  v12 = (v9 - v6) / (v9 - *v11);
  v13 = v5[1] * (1.0 - v12) + v11[1] * v12;
  v14 = v11[3];
  v15 = (1.0 - v12) * v5[2] + v11[2] * v12;
  v16 = v5[3];
  v17 = sqrt(v14 * v14 + 1.0);
  v18 = sqrt(v16 * v16 + 1.0);
  v19 = (1.0 - v12) * (1.0 / v18) + 1.0 / v17 * v12;
  v20 = (1.0 - v12) * (v16 / v18) + v14 / v17 * v12;
  v21 = sqrt(v20 * v20 + v19 * v19);
  v22 = v13 + v19 / v21 * v10;
  v23 = v15 + v20 / v21 * v10;
  v24 = v22 * 1.5;
  v25 = v22 + v23 * -4.0 + 2.0;
  *a1 = v24 / v25;
  result = v23 / v25;
  *a2 = result;
  return result;
}

uint64_t __Block_byref_object_copy__3020(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_3063()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_3083);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_3114()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_3130);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_3196()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_3170);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_3297()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_682);
  }

  v1 = _NUAssertLogger;

  return v1;
}

__CFString *NUMediaTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E81098D0[a1];
  }
}

uint64_t mediaTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Image"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Video"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LivePhoto"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NUMediaComponentTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E81098F0[a1];
  }
}

uint64_t NUMediaComponentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Image"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Video"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NUAuxiliaryImageTypeToString(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E8109908[a1];
  }
}

uint64_t NUAuxiliaryImageTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"None"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Disparity"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PortraitEffectsMatte"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"SkinSegmentationMatte"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"TeethSegmentationMatte"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"HairSegmentationMatte"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"GlassesSegmentationMatte"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"HDRGainMap"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"LinearThumbnail"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"DeltaImage"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"SkySegmentationMatte"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NUSampleModeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"invalid";
  }

  else
  {
    return off_1E8109968[a1];
  }
}

uint64_t NUSampleModeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"lanczos"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"bilinear"])
  {
    v2 = 2;
  }

  else
  {
    v2 = [v1 isEqualToString:@"nearest"];
  }

  return v2;
}

id NUAssertLogger_3811()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_3824);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_3854()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_3873);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C01D71A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a2 == 2)
  {
    v47 = objc_begin_catch(exception_object);
    *a29 = [NUError errorWithCode:1 reason:@"video export AVAssetWriterInput: exception" object:v47];

    objc_end_catch();
    JUMPOUT(0x1C01D6D54);
  }

  _Unwind_Resume(exception_object);
}

id NUAssertLogger_3938()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_4036);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void ConfigureAssistantTimingFromTrack(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    memset(&v11, 0, sizeof(v11));
    [v4 minFrameDuration];
    if (0 >> 96)
    {
      time1 = v11;
      time2 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        time1 = v11;
        [v3 setSourceVideoMinFrameDuration:&time1];
      }
    }

    [v5 nominalFrameRate];
    if (v6 > 0.0 && [v5 naturalTimeScale] >= 1)
    {
      [v5 nominalFrameRate];
      CMTimeMakeWithSeconds(&v8, 1.0 / v7, [v5 naturalTimeScale]);
      time1 = v8;
      [v3 setSourceVideoAverageFrameDuration:&time1];
    }
  }
}

id NULogger()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_144_3965);
  }

  v1 = _NULogger;

  return v1;
}

void *SourceFormatHintForTrack(void *a1)
{
  v1 = a1;
  v2 = [v1 formatDescriptions];
  v3 = [v2 count];

  if (v3 == 1)
  {
    v4 = [v1 formatDescriptions];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id NUAssertLogger_4090()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_4104);
  }

  v1 = _NUAssertLogger;

  return v1;
}

__CFString *NUPriorityLevelName(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E8109988[a1];
  }
}

uint64_t NUPriorityLevelToDispatchQOS(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C03C2A60[a1];
  }
}

id NUAssertLogger_4187()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v1 = _NUAssertLogger;

  return v1;
}

__CFString *NUChannelMediaTypeDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"???";
  }

  else
  {
    return off_1E8109A90[a1];
  }
}

void sub_1C01E5E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4581(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NUChannelTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"???";
  }

  else
  {
    return off_1E8109B18[a1 - 1];
  }
}

__CFString *NUChannelTypeSymbol(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"?";
  }

  else
  {
    return off_1E8109A68[a1 - 1];
  }
}

__CFString *NUChannelMediaTemporalityDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"???";
  }

  else
  {
    return off_1E8109AC0[a1];
  }
}

__CFString *NUImageMediaTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"???";
  }

  else
  {
    return off_1E8109AF0[a1];
  }
}

__CFString *NUContainerMediaTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"???";
  }

  else
  {
    return off_1E8109AD8[a1 - 1];
  }
}

__CFString *NUChannelControlTypeDescription(uint64_t a1)
{
  v1 = @"???";
  if (a1 == 2)
  {
    v1 = @"schema";
  }

  if (a1 == 1)
  {
    return @"setting";
  }

  else
  {
    return v1;
  }
}

__CFString *NUChannelMetadataTypeDescription(uint64_t a1)
{
  v1 = @"???";
  if (a1 == 2)
  {
    v1 = @"video";
  }

  if (a1 == 1)
  {
    return @"image";
  }

  else
  {
    return v1;
  }
}

__CFString *NUChannelExpressionTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"???";
  }

  else
  {
    return off_1E8109B40[a1];
  }
}

void sub_1C01FFF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_4789()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_4803);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_5128()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_5142);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C020ACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_5458()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
  }

  v1 = _NUAssertLogger;

  return v1;
}

double NU::TValue95(NU *this)
{
  if (this < 2)
  {
    return NAN;
  }

  v2 = this - 1;
  if ((this - 1) >= 0x1F4)
  {
    v2 = 500;
  }

  return gT95[v2 - 1];
}

id NUAssertLogger_5637()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_144_5661);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_5769()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NULogger_6168()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1397);
  }

  v1 = _NULogger;

  return v1;
}

void sub_1C0225378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6249(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C023F768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C023F944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_7029()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_7209()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_7168);
  }

  v1 = _NUAssertLogger;

  return v1;
}

double NUAbsoluteTime()
{
  v0 = mach_absolute_time();
  if (_NUMachTimeToSeconds_onceToken != -1)
  {
    dispatch_once(&_NUMachTimeToSeconds_onceToken, &__block_literal_global_7295);
  }

  return *&_NUMachTimeToSeconds_sFactor * v0;
}

id NUAbsoluteTimeToString(long double a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v1 = modf(a1, &__y);
  v2 = gmtime(&v7);
  strftime(__s, 0x32uLL, "%H:%M:%S", v2);
  v3 = strlen(__s);
  snprintf(&__s[v3], 50 - v3, " +%5i", (v1 * 100000.0) % 100000);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:__s encoding:1];

  return v4;
}

id NUAssertLogger_7332()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_7345);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t NUScaleMultiplyInteger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1 * a3;
  result = a1 * a3 / a2;
  v6 = v4 - result * a2;
  if (v6)
  {
    if (v6 < 0)
    {
      v6 = -v6;
    }

    v7 = v6 < a2 - v6;
    if (a4 != 2)
    {
      v7 = a4;
    }

    if (v7)
    {
      if (v7 == 4)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_7376);
        }

        v8 = _NUAssertLogger;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUScaleMultiplyInteger. this line should not be hit"];
          *buf = 138543362;
          v24 = v9;
          _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = NUAssertLogger();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v12)
          {
            v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v16 = [MEMORY[0x1E696AF00] callStackSymbols];
            v17 = [v16 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v24 = v15;
            v25 = 2114;
            v26 = v17;
            _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v12)
        {
          v13 = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = [v13 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v24 = v14;
          _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("NSInteger NUScaleMultiplyInteger(NUScale, NSInteger, NUPixelRoundingPolicy)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScale.mm", 54, @"NUScaleMultiplyInteger. this line should not be hit", v18, v19, v20, v21, v22);
      }
    }

    else if (a3 >= 1)
    {
      ++result;
    }

    else
    {
      --result;
    }
  }

  return result;
}

id NUAssertLogger(void)
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_7376);
  }

  v1 = _NUAssertLogger;

  return v1;
}

unint64_t NUScaleFromDouble(double a1)
{
  v1 = (a1 * 100000.0);
  if (v1 <= 1)
  {
    v1 = 1;
  }

  v2 = 100000;
  v3 = v1;
  do
  {
    v4 = v3;
    v3 = v2;
    v2 = v4 % v2;
  }

  while (v2);
  return v1 / v3;
}

BOOL NUScaleEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  NU::Rational<long>::Rational(v8, a1, a2);
  NU::Rational<long>::Rational(v7, a3, a4);
  return v8[1] * v7[0] == v7[1] * v8[0];
}

void *NU::Rational<long>::Rational(void *result, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    v3 = NUAssertLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"zero denominator"];
      *buf = 138543362;
      v19 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v10;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("NU::Rational<long>::Rational(T, T) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Math/NURational.h", 39, @"zero denominator", v13, v14, v15, v16, v17);
  }

  return result;
}

uint64_t NUScaleCompare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  NU::Rational<long>::Rational(&v11, a1, a2);
  NU::Rational<long>::Rational(&v9, a3, a4);
  if (v12 * v9 == v10 * v11)
  {
    return 0;
  }

  v7 = 1;
  if ((v10 * v11) < (v12 * v9))
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if ((v10 * v11) < (v12 * v9))
  {
    v7 = -1;
  }

  if ((v12 >> 63) + (v10 >> 63) == 1)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t NUScaleMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  NU::Rational<long>::Rational(v11, a1, a2);
  NU::Rational<long>::Rational(v10, a3, a4);
  NU::Rational<long>::Rational(&v12, v10[0] * v11[0], v10[1] * v11[1]);
  if (v13)
  {
    v6 = v13;
    v7 = v12;
    do
    {
      v8 = v6;
      v6 = v7 % v6;
      v7 = v8;
    }

    while (v6);
  }

  else
  {
    v8 = v12;
  }

  return v12 / v8;
}

uint64_t NUScaleDivide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  NU::Rational<long>::Rational(v11, a1, a2);
  NU::Rational<long>::Rational(v10, a3, a4);
  NU::Rational<long>::Rational(&v12, v10[1] * v11[0], v10[0] * v11[1]);
  if (v13)
  {
    v6 = v13;
    v7 = v12;
    do
    {
      v8 = v6;
      v6 = v7 % v6;
      v7 = v8;
    }

    while (v6);
  }

  else
  {
    v8 = v12;
  }

  return v12 / v8;
}

double NUScaleToDouble(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1 < 1 || a2 <= 0)
  {
    v3 = NUAssertLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(scale)"];
      *buf = 138543362;
      v18 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v18 = v10;
        v19 = 2114;
        v20 = v12;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v18 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("double NUScaleToDouble(NUScale)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScale.mm", 117, @"Invalid parameter not satisfying: %s", v13, v14, v15, v16, "NUScaleIsValid(scale)");
  }

  return a1 / a2;
}

uint64_t NUScaleFromString(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v1];
  v9 = 0;
  if (([v2 scanInteger:&v9] & 1) == 0)
  {
    goto LABEL_13;
  }

  if ([v2 scanString:@":" intoString:0])
  {
    v8 = 0;
    v3 = [v2 scanInteger:&v8];
    v4 = &NUScaleUnknown;
    if (v3)
    {
      v4 = &v9;
    }

    v5 = *v4;
    goto LABEL_14;
  }

  if (![v2 scanString:@"." intoString:0])
  {
    if ([v2 isAtEnd])
    {
      v5 = v9;
      goto LABEL_14;
    }

LABEL_13:
    v5 = NUScaleUnknown;
    goto LABEL_14;
  }

  v8 = 0;
  if (![v2 scanInteger:&v8])
  {
    goto LABEL_13;
  }

    ;
  }

  v5 = v8 + v9 * i;
LABEL_14:

  return v5;
}

id NUScaleToValue(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] value:v4 withObjCType:"{?=qq}"];

  return v2;
}

uint64_t NUScaleFromValue(void *a1)
{
  v2 = NUScaleUnknown;
  [a1 getValue:&v2];
  return v2;
}

id NUAssertLogger_7609()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_192);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t _vertexIDFromPoint(const CGRect *a1, float64x2_t *a2)
{
  v3 = 0;
  v8 = *a2;
  while (1)
  {
    v4.f64[0] = pointFromVertexID(a1, v3);
    v4.f64[1] = v5;
    v6 = vsubq_f64(v8, v4);
    if (sqrt(vaddvq_f64(vmulq_f64(v6, v6))) < 5.0)
    {
      break;
    }

    v3 = (v3 + 1);
    if (v3 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t _vertexIDFromPointWithTolerance(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, float64x2_t a5, float64_t a6, double a7)
{
  v8 = 0;
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  a5.f64[1] = a6;
  v13 = a5;
  while (1)
  {
    v9.f64[0] = pointFromVertexID(&v14, v8);
    v9.f64[1] = v10;
    v11 = vsubq_f64(v13, v9);
    if (sqrt(vaddvq_f64(vmulq_f64(v11, v11))) < a7)
    {
      break;
    }

    v8 = (v8 + 1);
    if (v8 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v8;
}

double _pointFromVertexID(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6.origin.x = a2;
  v6.origin.y = a3;
  v6.size.width = a4;
  v6.size.height = a5;
  return pointFromVertexID(&v6, a1);
}

BOOL _canExpandWithAbsoluteAnchor(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v12.origin.x = a6;
  v12.origin.y = a7;
  v12.size.width = a8;
  v12.size.height = a9;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  return canExpandWithAbsoluteAnchor(a1, v10, &v12, &v11);
}

void sub_1C024CD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C024CF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NUCVPixelBuffer *GenerateMaskForInstances(void *a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  v11 = a2;
  v12 = a1;
  if (![v12 count])
  {
    v31 = [NUError invalidError:@"Can't create mask for empty index set" object:v12];

    v32 = v31;
    v30 = 0;
    *a4 = v31;
    goto LABEL_22;
  }

  v13 = [v11 generateMaskForInstances:v12 error:a4];

  v14 = [[NUCVPixelBuffer alloc] initWithCVPixelBuffer:v13];
  CVPixelBufferRelease(v13);
  if (a6 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = a5 / a6;
  }

  if (a3 == 1 && v15 == 1.0)
  {
    goto LABEL_17;
  }

  v16 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:{-[NUCVPixelBuffer CVPixelBuffer](v14, "CVPixelBuffer")}];
  v17 = 1.0 / v15;
  if (v15 < 1.0)
  {
    v17 = 1.0;
  }

  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeScale(&v35, v17, fmin(v15, 1.0));
  v34 = v35;
  v18 = [v16 imageByApplyingTransform:&v34];

  v19 = 6;
  if (a3 != 8)
  {
    v19 = a3;
  }

  if (a3 == 6)
  {
    v20 = 8;
  }

  else
  {
    v20 = v19;
  }

  v21 = ApplyOrientation(v18, v20);

  [v21 extent];
  v24 = [NUVideoUtilities newPixelBufferOfSize:vcvtpd_s64_f64(v22) format:vcvtpd_s64_f64(v23), 1278226488];

  v25 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{-[NUCVPixelBuffer CVPixelBuffer](v24, "CVPixelBuffer")}];
  v26 = objc_alloc_init(MEMORY[0x1E695F620]);
  v27 = [v26 startTaskToRender:v21 toDestination:v25 error:a4];
  if (!v27)
  {

    goto LABEL_20;
  }

  v28 = v27;
  v29 = [v27 waitUntilCompletedAndReturnError:a4];

  if (!v29)
  {
LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  v14 = v24;
LABEL_17:
  v24 = v14;
  v30 = v24;
LABEL_21:

LABEL_22:

  return v30;
}

id ApplyOrientation(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 != 1)
  {
    [v3 extent];
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    NUOrientationMakeTransformWithSizeAndOrigin(a2, vcvtpd_s64_f64(v5), vcvtpd_s64_f64(v6), 0, 0, &v10);
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v7 = [v4 imageByApplyingTransform:v9];

    v4 = v7;
  }

  return v4;
}

id NUAssertLogger_8293()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_8305);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_8665()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_9067()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_38);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_9314()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_9329);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C02622E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float64x2_t CGAffineTransformSubstract@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vsubq_f64(a1[1], a2[1]);
  *a3 = vsubq_f64(*a1, *a2);
  a3[1] = v3;
  result = vsubq_f64(a1[2], a2[2]);
  a3[2] = result;
  return result;
}

double CGAffineTransformRoot(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a1 * v3 - v2 * v4;
  if (v5 != 0.0)
  {
    return (v4 * a1[5] - v3 * a1[4]) / v5;
  }

  if (v1 == 0.0 && v4 == 0.0)
  {
    if (v2 == 0.0)
    {
      return 0.0;
    }

    else if (a1[4] == 0.0)
    {
      return -a1[5] / v2;
    }

    else
    {
      return 0.0;
    }
  }

  else if (v2 == 0.0 && v3 == 0.0)
  {
    result = 0.0;
    if (a1[5] == 0.0)
    {
      result = -a1[4] / v1;
      if (v1 == 0.0)
      {
        return 0.0;
      }
    }
  }

  else
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = v2 * v7;
    v10 = v3 * v7;
    result = -v7 / v1;
    if (v4 * v8 != v10)
    {
      result = 0.0;
    }

    if (v9 != v1 * v8)
    {
      return 0.0;
    }
  }

  return result;
}

double CGAffineTransformFixedPoint(float64x2_t *a1)
{
  v1 = vsubq_f64(a1[1], *(MEMORY[0x1E695EFD0] + 16));
  v3[0] = vsubq_f64(*a1, *MEMORY[0x1E695EFD0]);
  v3[1] = v1;
  v3[2] = vsubq_f64(a1[2], *(MEMORY[0x1E695EFD0] + 32));
  return CGAffineTransformRoot(v3);
}

CGAffineTransform *CGAffineTransformMove@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeTranslation(&v16, a3, a4);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, -a5, -a6);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  t1 = v16;
  v10 = a1[1];
  *&v12.a = *a1;
  *&v12.c = v10;
  *&v12.tx = a1[2];
  CGAffineTransformConcat(&v14, &t1, &v12);
  t1 = v15;
  return CGAffineTransformConcat(a2, &v14, &t1);
}

id NSStringFromAffineTransform(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = a1[2];
  v2 = [MEMORY[0x1E696AA98] nu_transformWithCGAffineTransform:v5];
  v3 = [v2 description];

  return v3;
}

CGFloat CGAffineTransformForMappingFromRectToRect@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v16 = MEMORY[0x1E695EFD0];
  v17 = *MEMORY[0x1E695EFD0];
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v18;
  v19 = *(v16 + 32);
  *(a1 + 32) = v19;
  *&v26.a = v17;
  *&v26.c = v18;
  *&v26.tx = v19;
  CGAffineTransformTranslate(a1, &v26, a6, a7);
  v20 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v20;
  *&v25.tx = *(a1 + 32);
  CGAffineTransformScale(&v26, &v25, a8 / a4, a9 / a5);
  v21 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v21;
  *(a1 + 32) = *&v26.tx;
  v22 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v22;
  *&v25.tx = *(a1 + 32);
  CGAffineTransformTranslate(&v26, &v25, -a2, -a3);
  v23 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v23;
  result = v26.tx;
  *(a1 + 32) = *&v26.tx;
  return result;
}

__n128 CGAffineTransformRelative@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_9883()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_9896);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__9999(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void deriveTranslatedRectFromConstrainedRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float64x2_t a9, double a10, double a11, double a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16, float64x2_t a17)
{
  v18.n128_f64[0] = a9.f64[0] + a11;
  a9.f64[1] = a10;
  v19.n128_f64[0] = a9.f64[0] + a11;
  v19.n128_f64[1] = a10;
  v20.n128_u64[0] = *&a9.f64[0];
  v20.n128_f64[1] = a10 + a12;
  v18.n128_f64[1] = a10 + a12;
  v24[0] = deriveTranslatedQuadFromConstrainedQuad(a9, v19, v20, v18, a13, a14, a15, a16, a1, a2, a3, a4, a5, a6, a7, a8, a17);
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  NU::Quad2d::boundingRect(v24);
}

float64x2_t deriveTranslatedQuadFromConstrainedQuad(float64x2_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float64x2_t a17)
{
  v82 = *MEMORY[0x1E69E9840];
  v51 = a1;
  v60[0] = a1;
  v60[1] = a2;
  v60[2] = a3;
  v60[3] = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  intersectionPoint(v64, v60, &v56, a17, 0.000244140625);
  if (v67[20])
  {
    goto LABEL_8;
  }

  NU::Quad2d::boundingRect(&v56);
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = 10.0;
  if (v19 <= 10.0)
  {
    v20 = v19;
  }

  intersectionPoint(buf, v60, &v56, a17, v20);
  *&v67[13] = *&v75[13];
  v65 = v73;
  v66 = v74;
  *v67 = *v75;
  v64[0] = *buf;
  v64[1] = *&buf[16];
  if (v75[20])
  {
LABEL_8:
    v46 = v64[0];
    v62[1] = v66;
    v63 = *v67;
    v62[0] = v65;
    LODWORD(v63) = 1;
    v21.f64[0] = projectionPoint(v62, vaddq_f64(v64[0], a17));
    v22 = 0;
    v23 = 0;
    *buf = a5;
    *&buf[16] = a6;
    v55 = vsubq_f64(v21, v46);
    LODWORD(v73) = 0;
    v74 = a6;
    *v75 = a8;
    *&v75[16] = 0;
    v76 = a8;
    v77 = a7;
    v78 = 0;
    v79 = a7;
    v80 = a5;
    v81 = 0;
    v71[0] = v51;
    v71[1] = a2;
    v24 = 1.79769313e308;
    v71[2] = a3;
    v71[3] = a4;
    do
    {
      v25 = 0;
      v26 = vaddq_f64(v71[v23], v55);
      v69[0] = v71[v23];
      v69[1] = v26;
      v70 = 0;
      do
      {
        v27 = *&buf[v25 + 16];
        v68[0] = *&buf[v25];
        v68[1] = v27;
        v68[2] = *&buf[v25 + 32];
        v61 = 0.0;
        IntersectParam = NU::LineSegment2d::findIntersectParam(v69, v68, &v61);
        v30 = v61 >= 0.0 && IntersectParam == 2;
        v31 = v30 && v24 > v61;
        if (v31)
        {
          v24 = v61;
        }

        v22 |= v31;
        v25 += 48;
      }

      while (v25 != 192);
      ++v23;
    }

    while (v23 != 4);
    if ((v22 & (v24 > 0.000000953674316)) != 0)
    {
      return vaddq_f64(vmulq_n_f64(v55, fmin(v24, 1.0)), v51);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10021);
    }

    v32 = _NUAssertLogger;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"None of the crop rect points are on the boundary!"];
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_impl(&dword_1C0184000, v32, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);
    }

    if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10021);
      }

      v34 = _NUAssertLogger;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = [MEMORY[0x1E696AF00] callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2114;
        *&buf[14] = v37;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10021);
      }

      v34 = _NUAssertLogger;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v43 = [MEMORY[0x1E696AF00] callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v44;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }
    }

    _NUAssertContinueHandler("NU::Quad2d deriveTranslatedQuadFromConstrainedQuad(NU::Quad2d, NU::Quad2d, CGVector)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModelAlgo.mm", 212, @"None of the crop rect points are on the boundary!", v38, v39, v40, v41, v45);
  }

  return v51;
}

double NU::Quad2d::boundingRect(float64x2_t *this)
{
  v1 = vbslq_s8(vcgtq_f64(this[1], *this), *this, this[1]);
  v2 = vbslq_s8(vcgtq_f64(this[2], v1), v1, this[2]);
  *&result = vbslq_s8(vcgtq_f64(this[3], v2), v2, this[3]).u64[0];
  return result;
}

uint64_t intersectionPoint(uint64_t result, const NU::Quad2d *a2, const CGVector *a3, float64x2_t a4, double a5)
{
  v6 = result;
  v7 = 0;
  v49 = *MEMORY[0x1E69E9840];
  *(result + 84) = 0;
  v8 = a3[1];
  v38[0] = *a3;
  v38[1] = v8;
  v39 = 0;
  v10 = a3[2];
  v9 = a3[3];
  v40 = v8;
  v41 = v9;
  v42 = 0;
  v43 = v9;
  v44 = v10;
  v45 = 0;
  v46 = v10;
  v47 = v38[0];
  v11 = *(a2 + 1);
  v37[0] = *a2;
  v37[1] = v11;
  v12 = *(a2 + 3);
  v37[2] = *(a2 + 2);
  v37[3] = v12;
  v13 = a4.f64[1] != 0.0 || a4.f64[0] != 0.0;
  v48 = 0;
LABEL_5:
  v14 = 0;
  v15 = v37[v7];
  v16.f64[0] = v15.f64[0] + -0.1;
  v17 = *(&v37[v7] + 1);
  v18.f64[0] = v15.f64[0] + -0.1;
  v18.f64[1] = v17 + -0.1;
  v29 = v18;
  v18.f64[0] = v15.f64[0] + 0.1;
  v19.f64[0] = v15.f64[0] + 0.1;
  v19.f64[1] = v17 + -0.1;
  v16.f64[1] = v17 + 0.1;
  v30 = v16;
  v31 = v19;
  v18.f64[1] = v17 + 0.1;
  v32 = v18;
  v20 = v38;
  v34 = v15;
  while (1)
  {
    v22 = *v20;
    v21 = v20[1];
    if (LODWORD(v20[2].f64[0]))
    {
      v23 = 1.79769313e308;
    }

    else
    {
      v24 = vsubq_f64(v21, v22);
      v23 = sqrt(vaddvq_f64(vmulq_f64(v24, v24)));
    }

    v25 = vsubq_f64(v15, v22);
    v26 = vsubq_f64(v21, v15);
    if (vabdd_f64(vaddvq_f64(vsqrtq_f64(vpaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v25, v25)))), v23) < a5)
    {
      *v6 = v15;
      *(v6 + 16) = v7;
      v27 = v20[1];
      *(v6 + 32) = *v20;
      *(v6 + 48) = v27;
      *(v6 + 64) = LODWORD(v20[2].f64[0]);
      *(v6 + 80) = v14;
      *(v6 + 84) = 1;
      if (!v13)
      {
        return result;
      }

      if (v7 > 1)
      {
        v28 = v31;
        if (v7 != 2)
        {
          v28 = v29;
        }
      }

      else
      {
        v28 = v32;
        if (v7)
        {
          v28 = v30;
        }
      }

      v35[0] = v28;
      v35[1] = vaddq_f64(v28, a4);
      v36 = 0;
      result = NU::LineSegment2d::findIntersectParam(v35, v6 + 32, 0);
      v15 = v34;
      if (result == 2)
      {
        return result;
      }
    }

    ++v14;
    v20 += 3;
    if (v14 == 4)
    {
      if (++v7 != 4)
      {
        goto LABEL_5;
      }

      return result;
    }
  }
}

double projectionPoint(uint64_t a1, float64x2_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v8 = *a1;
  v3 = vsubq_f64(v2, *a1);
  v2.f64[0] = -*&v3.i64[1];
  v7 = v3;
  v11[0] = a2;
  v11[1] = vaddq_f64(vzip1q_s64(v2, v3), a2);
  v12 = 1;
  v10 = 0.0;
  v4.i32[0] = NU::LineSegment2d::findIntersectParam(a1, v11, &v10);
  v5.i32[0] = 2;
  *&result = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v4, v5), 0), vmlaq_n_f64(v8, v7, v10), a2).u64[0];
  return result;
}

uint64_t NU::LineSegment2d::findIntersectParam(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *a1;
  v4 = vsubq_f64(*(a1 + 16), *a1);
  v5 = vsubq_f64(*(a2 + 16), *a2);
  _Q2 = vsubq_f64(*a2, *a1);
  v7 = -_Q2.f64[1] * v5.f64[0] + _Q2.f64[0] * v5.f64[1];
  _D3 = v4.f64[1];
  v9 = -v4.f64[1] * v5.f64[0] + v4.f64[0] * v5.f64[1];
  if (v9 == 0.0)
  {
    if (v7 == 0.0)
    {
      if (*(a1 + 32) | *(a2 + 32))
      {
        return 4;
      }

      else
      {
        if (v4.f64[0] == 0.0)
        {
          v10 = 1;
          v4.f64[0] = v4.f64[1];
          v11 = _Q2.f64[1] / v4.f64[1];
        }

        else
        {
          v10 = 0;
          *&v11 = *&vdivq_f64(_Q2, v4);
        }

        v27 = *(a2 + 16);
        v22 = *(&v27 & 0xFFFFFFFFFFFFFFF7 | (8 * (v10 & 1)));
        v26 = v3;
        v23 = (v22 - *(&v26 | (8 * v10))) / v4.f64[0];
        result = 3;
        if (v11 <= 1.0 || v23 <= 1.0)
        {
          if (v23 < 0.0 && v11 < 0.0)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = v7 / v9;
    if (v12 != 1)
    {
      v12 = v13 >= 0.0;
      if (v13 > 1.0)
      {
        v12 = 0;
      }
    }

    v14 = *(a2 + 32);
    if (v14 != 1)
    {
      __asm { FMLS            D4, D3, V2.D[0] }

      v19 = _D4 / (v5.f64[0] * v4.f64[1] - v5.f64[1] * v4.f64[0]);
      v14 = v19 >= 0.0;
      if (v19 > 1.0)
      {
        v14 = 0;
      }
    }

    v20 = v12 ^ 1;
    if (!a3)
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      *a3 = v13;
    }

    if ((v12 & v14) != 0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void deriveScaledRectFromConstrainedRect(double a1, double a2, double a3, double a4, float64_t a5, float64_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CGVector a17, __int128 a18, __int128 a19, __int128 a20)
{
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v70 = *MEMORY[0x1E69E9840];
  v57 = a17;
  v58 = a18;
  v59 = a19;
  v60 = a20;
  *&v21 = a1 + a3;
  *&v22 = v21;
  *(&v22 + 1) = a2;
  v56[0] = v20;
  v56[1] = v22;
  *(&v20 + 1) = a2 + a4;
  *(&v21 + 1) = a2 + a4;
  v56[2] = v20;
  v56[3] = v21;
  intersectionPoint(v64, v56, &v57, 0, 0.000244140625);
  if ((v69 & 1) == 0)
  {
    v29 = NUAssertLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"none of the crop rect points are on the boundary!"];
      LODWORD(buf[0].f64[0]) = 138543362;
      *(buf[0].f64 + 4) = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        LODWORD(buf[0].f64[0]) = 138543618;
        *(buf[0].f64 + 4) = v36;
        WORD2(buf[0].f64[1]) = 2114;
        *(&buf[0].f64[1] + 6) = v38;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      LODWORD(buf[0].f64[0]) = 138543362;
      *(buf[0].f64 + 4) = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("CGRect deriveScaledRectFromConstrainedRect(CGRect, CGRect, NU::Quad2d)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModelAlgo.mm", 247, @"none of the crop rect points are on the boundary!", v39, v40, v41, v42, v43);
  }

  v23.f64[0] = a5;
  v23.f64[1] = a6;
  v24.f64[0] = a5 + a7;
  if (v65 > 1)
  {
    if (v65 == 2)
    {
      v24.f64[0] = a5;
      v24.f64[1] = a6 + a8;
      v25 = xmmword_1C03C27A0;
    }

    else
    {
      if (v65 != 3)
      {
        return;
      }

      v24.f64[1] = a6 + a8;
      v25 = vdupq_n_s64(0xBEE4F8B588E368F1);
    }
  }

  else
  {
    if (!v65)
    {
      v45 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
      v24 = v23;
      goto LABEL_13;
    }

    if (v65 != 1)
    {
      return;
    }

    v24.f64[1] = a6;
    v25 = xmmword_1C03C27B0;
  }

  v45 = v25;
LABEL_13:
  v47 = v24;
  v49 = v23;
  v62[1] = v67;
  v63 = v68;
  v62[0] = v66;
  LODWORD(v63) = 1;
  v26.f64[0] = projectionPoint(v62, v24);
  v44 = v26;
  v53 = vaddq_f64(v49, vsubq_f64(v26, v47));
  v26.f64[0] = a7;
  v26.f64[1] = a8;
  v54 = a7;
  v55 = a8;
  v27 = vaddq_f64(v26, v53);
  v28.f64[0] = v53.f64[0];
  v28.f64[1] = v27.f64[1];
  buf[2] = v28;
  buf[3] = v27;
  v27.f64[1] = v53.f64[1];
  buf[0] = v53;
  buf[1] = v27;
  if ((NU::Quad2d::simpleContains(&v57, buf) & 1) == 0)
  {
    buf[0] = vaddq_f64(v45, v44);
    v52 = a7 / a8;
    NU::Quad2d::findInscribedAxisAlignedAspectFitRectWithAnchor(&v57, buf[0].f64, &v53, &v53, &v52, 0.000000953674316);
  }
}

uint64_t NU::Quad2d::simpleContains(float64x2_t *this, float64x2_t *a2)
{
  v4 = NU::Quad2d::simpleContains(this, *a2);
  v5 = NU::Quad2d::simpleContains(this, a2[1]);
  v6 = NU::Quad2d::simpleContains(this, a2[2]);
  return (v4 && v5) & v6 & NU::Quad2d::simpleContains(this, a2[3]);
}

void NU::Quad2d::findInscribedAxisAlignedAspectFitRectWithAnchor(float64x2_t *a1, CGFloat *a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6)
{
  v42 = *MEMORY[0x1E69E9840];
  rect.origin = *a4;
  v12 = vaddq_f64(*(a4 + 16), *a4);
  v13.f64[0] = *a4;
  v13.f64[1] = v12.f64[1];
  v37[2] = v13;
  v37[3] = v12;
  v12.f64[1] = rect.origin.y;
  v37[0] = rect.origin;
  v37[1] = v12;
  if (!NU::Quad2d::equivalentWithTolerance(a1, v37, a6))
  {
    v14 = *(a3 + 16);
    v35 = *a3;
    v36 = v14;
    v15 = 100;
    height = *(&v14 + 1);
    width = *&v14;
    while (1)
    {
      *&v18 = v35.x;
      *&v19 = width + v35.x;
      *(&v20 + 1) = *&v35.y;
      *&v20 = width + v35.x;
      size = v35;
      v39 = v20;
      *(&v18 + 1) = v35.y + height;
      *(&v19 + 1) = v35.y + height;
      v40 = v18;
      v41 = v19;
      if ((NU::Quad2d::contains(a1, &size) & 1) != 0 || !v15)
      {
        break;
      }

      if (width <= 10.0 || height <= 10.0)
      {
        break;
      }

      v43.origin = v35;
      v43.size.width = width;
      v43.size.height = height;
      v44 = CGRectOffset(v43, -*a2, -a2[1]);
      v44.size.width = v44.size.width * 0.5;
      v44.size.height = v44.size.height * 0.5;
      v44.origin.x = v44.origin.x * 0.5;
      v44.origin.y = v44.origin.y * 0.5;
      v45 = CGRectOffset(v44, *a2, a2[1]);
      width = v45.size.width;
      height = v45.size.height;
      v35.x = v45.origin.x;
      v35.y = v45.origin.y;
      *&v36 = v45.size.width;
      *(&v36 + 1) = *&v45.size.height;
      --v15;
    }

    v22 = *(a4 + 16);
    rect.size = *a4;
    v34 = v22;
    v23 = 100;
    v25 = *(&v22 + 1);
    v24 = *&v22;
    while (1)
    {
      *&v26 = rect.size.width;
      *&v27 = v24 + rect.size.width;
      *(&v28 + 1) = *&rect.size.height;
      *&v28 = v24 + rect.size.width;
      size = rect.size;
      v39 = v28;
      *(&v26 + 1) = rect.size.height + v25;
      *(&v27 + 1) = rect.size.height + v25;
      v40 = v26;
      v41 = v27;
      v29 = NU::Quad2d::contains(a1, &size);
      v30 = v23-- != 0;
      v31 = v30;
      if (!v29 || !v31)
      {
        break;
      }

      v46.origin.x = rect.size.width;
      v46.origin.y = rect.size.height;
      v46.size.width = v24;
      v46.size.height = v25;
      v47 = CGRectOffset(v46, -*a2, -a2[1]);
      v47.size.width = v47.size.width + v47.size.width;
      v47.size.height = v47.size.height + v47.size.height;
      v47.origin.x = v47.origin.x + v47.origin.x;
      v47.origin.y = v47.origin.y + v47.origin.y;
      v48 = CGRectOffset(v47, *a2, a2[1]);
      v24 = v48.size.width;
      v25 = v48.size.height;
      rect.size.width = v48.origin.x;
      rect.size.height = v48.origin.y;
      *&v34 = v48.size.width;
      *(&v34 + 1) = *&v48.size.height;
    }

    v32 = *a5;
    *&size.x = &unk_1F3F44A00;
    v39 = *a2;
    *&v40 = v32;
    NU::Quad2d::computeLimitRect(a1, &v35, &rect.size, &size, a6);
  }
}

BOOL NU::Quad2d::equivalentWithTolerance(float64x2_t *this, float64x2_t *a2, double a3)
{
  v3 = vsubq_f64(*this, *a2);
  v4 = fabs(v3.f64[0]);
  v5 = fabs(v3.f64[1]);
  v6 = v4 < a3 && v5 < a3;
  result = 0;
  if (v6)
  {
    v7 = vsubq_f64(this[1], a2[1]);
    v8 = fabs(v7.f64[0]);
    v9 = fabs(v7.f64[1]);
    if (v8 < a3 && v9 < a3)
    {
      v11 = vsubq_f64(this[2], a2[2]);
      v12 = fabs(v11.f64[0]);
      v13 = fabs(v11.f64[1]);
      if (v12 < a3 && v13 < a3)
      {
        v15 = vsubq_f64(this[3], a2[3]);
        v16 = fabs(v15.f64[0]);
        v17 = fabs(v15.f64[1]);
        if (v16 < a3 && v17 < a3)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t NU::Quad2d::contains(float64x2_t *this, float64x2_t *a2)
{
  v4 = NU::Quad2d::contains(this, *a2);
  v5 = NU::Quad2d::contains(this, a2[1]);
  v6 = NU::Quad2d::contains(this, a2[2]);
  return v4 & v5 & v6 & NU::Quad2d::contains(this, a2[3]);
}

float64_t NU::Quad2d::computeLimitRect(float64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = 100;
  do
  {
    v11.f64[0] = (*(*a4 + 16))(a4, a3, a2);
    v21.f64[0] = v11.f64[0];
    v21.f64[1] = v12;
    v22.f64[0] = v13;
    v22.f64[1] = v14;
    v15.f64[0] = v13 + v11.f64[0];
    v16.f64[0] = v15.f64[0];
    v16.f64[1] = v12;
    v20[0] = v21;
    v20[1] = v16;
    v11.f64[1] = v14 + v12;
    v15.f64[1] = v12 + v14;
    v20[2] = v11;
    v20[3] = v15;
    if ((*(*a4 + 24))(a4, &v21, a3, a5) && NU::Quad2d::simpleContains(a1, v20))
    {
      break;
    }

    v17 = (NU::Quad2d::simpleContains(a1, v20) ? a2 : a3);
    v18 = v22;
    *v17 = v21;
    v17[1] = v18;
    --v10;
  }

  while (v10);
  return v21.f64[0];
}

double NU::AnchorRectFinder::constructNextRect(NU::AnchorRectFinder *this, const CGRect *a2, const CGRect *a3)
{
  width = a2->size.width;
  height = a2->size.height;
  v8 = a3->size.height + (height - a3->size.height) * 0.5;
  v9 = v8 / height;
  v10 = *(this + 4);
  v11 = v10 * v8 / width;
  if (v11 > 1.0 || v9 > 1.0)
  {
    v13 = a3->size.width + (width - a3->size.width) * 0.5;
    v11 = v13 / width;
    v9 = v13 / v10 / height;
  }

  x = a2->origin.x;
  y = a2->origin.y;
  v22 = CGRectOffset(*(&width - 2), -*(this + 2), -*(this + 3));
  v14 = v11 * v22.size.width;
  v15 = v9 * v22.size.height;
  v16 = v11 * v22.origin.x;
  v17 = v9 * v22.origin.y;
  v18 = *(this + 1);
  v19 = *(this + 3);

  *&result = CGRectOffset(*&v16, *&v18, v19);
  return result;
}

uint64_t NU::Quad2d::contains(float64x2_t *a1, float64x2_t a2)
{
  v2 = 0;
  v3 = 0;
  v28 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = vmovn_s64(vcgtq_f64(v5, *a1)).u8[0];
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = a1->f64[0];
  }

  else
  {
    v8 = a1[1].f64[0];
  }

  if (v7)
  {
    v9 = a1->f64[0];
  }

  else
  {
    v9 = a1[1].f64[0];
  }

  v10 = a1[2];
  v11 = a1[3];
  if (v8 >= v10.f64[0])
  {
    v8 = a1[2].f64[0];
  }

  if (v8 >= v11.f64[0])
  {
    v8 = a1[3].f64[0];
  }

  if (v9 < v10.f64[0])
  {
    v9 = a1[2].f64[0];
  }

  if (v9 < v11.f64[0])
  {
    v9 = a1[3].f64[0];
  }

  v26[1] = a2;
  a2.f64[0] = v8;
  v26[0] = vsubq_f64(a2, vdupq_lane_s64(COERCE__INT64((v9 - v8) / 100.0), 0));
  v27 = 0;
  v15[0] = v4;
  v15[1] = v5;
  v16 = 0;
  v17 = v5;
  v18 = v11;
  v19 = 0;
  v20 = v11;
  v21 = v10;
  v22 = 0;
  v23 = v10;
  v24 = v4;
  v25 = 0;
  do
  {
    IntersectParam = NU::LineSegment2d::findIntersectParam(v26, &v15[v2], 0);
    if (IntersectParam == 4 || IntersectParam == 2)
    {
      ++v3;
    }

    v2 += 3;
  }

  while (v2 != 12);
  return v3 & 1;
}

BOOL NU::Quad2d::simpleContains(float64x2_t *a1, float64x2_t a2)
{
  v2 = 0;
  v16 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v15[0] = v3;
  v15[1] = v4;
  v5 = a1[2];
  v15[2] = a1[3];
  v15[3] = v5;
  v15[4] = v3;
  for (i = 1; i != 5; ++i)
  {
    v7 = v3;
    v8 = vmovn_s64(vmvnq_s8(vcgeq_f64(a2, v3))).i32[1];
    v3 = v15[i];
    v9 = *(&v15[i] + 1);
    if (v8)
    {
      if (v9 <= a2.f64[1])
      {
        v10 = vsubq_f64(v3, v7);
        v11 = vsubq_f64(a2, v7);
        v2 -= -v10.f64[1] * v11.f64[0] + v10.f64[0] * v11.f64[1] <= 0.0;
      }
    }

    else if (v9 > a2.f64[1])
    {
      v12 = vsubq_f64(v3, v7);
      v13 = vsubq_f64(a2, v7);
      if (-v12.f64[1] * v13.f64[0] + v12.f64[0] * v13.f64[1] >= 0.0)
      {
        ++v2;
      }
    }
  }

  return v2 != 0;
}

__n128 deriveScaledQuadFromConstrainedQuad(__n128 a1, __n128 a2, __n128 a3, __n128 a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, float64x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CGVector a17, __int128 a18, __int128 a19, __int128 a20)
{
  v64 = *MEMORY[0x1E69E9840];
  v52[0] = a1;
  v52[1] = a2;
  v39 = a4.n128_u64[0];
  v52[2] = a3;
  v52[3] = a4;
  v48 = a17;
  v49 = a18;
  v50 = a19;
  v51 = a20;
  intersectionPoint(v58, v52, &v48, 0, 0.000244140625);
  if ((v63 & 1) == 0)
  {
    v25 = NUAssertLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"none of the crop rect points are on the boundary!"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("NU::Quad2d deriveScaledQuadFromConstrainedQuad(NU::Quad2d, NU::Quad2d, NU::Quad2d)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModelAlgo.mm", 333, @"none of the crop rect points are on the boundary!", v35, v36, v37, v38, v39);
  }

  if (v59 > 1)
  {
    if (v59 == 2)
    {
      v20 = a7;
    }

    else
    {
      v20 = a8;
      if (v59 != 3)
      {
        return *MEMORY[0x1E695F058];
      }
    }
  }

  else if (v59)
  {
    v20 = a6;
    if (v59 != 1)
    {
      return *MEMORY[0x1E695F058];
    }
  }

  else
  {
    v20 = a5;
  }

  v41 = v20;
  v56[1] = v61;
  v57 = v62;
  v56[0] = v60;
  LODWORD(v57) = 1;
  v22.f64[0] = projectionPoint(v56, v20);
  v23 = vsubq_f64(v22, v41);
  v24 = vaddq_f64(a7, v23);
  v44 = vaddq_f64(a6, v23);
  v46 = vaddq_f64(a5, v23);
  *buf = v46;
  *&buf[16] = v44;
  v54 = v24;
  v55 = vaddq_f64(a8, v23);
  if (NU::Quad2d::simpleContains(&v48, buf))
  {
    return v46;
  }

  else
  {
    return a1;
  }
}

float64_t aspectRatioConstrainedFromRect(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, float64_t a7, float64_t a8, double a9)
{
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  v9 = sqrt(a2 * a9 / a1);
  v10 = v9 / a6;
  v11 = v9 * a1 / a2 / a5;
  NU::RectT<double>::RectT(v16.f64, &v17);
  v12.f64[0] = a7;
  v12.f64[1] = a8;
  v16 = vsubq_f64(v16, v12);
  NU::RectT<double>::scale(v16.f64, v11, v10);
  return a7 + v16.f64[0];
}

double *NU::RectT<double>::RectT(double *a1, CGRect *a2)
{
  MinX = CGRectGetMinX(*a2);
  MinY = CGRectGetMinY(*a2);
  MaxX = CGRectGetMaxX(*a2);
  MaxY = CGRectGetMaxY(*a2);
  NU::RectT<double>::setXYMinMax(a1, MinX, MinY, MaxX, MaxY);
  return a1;
}

double NU::RectT<double>::scale(double *a1, double a2, double a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2 < 0.0)
  {
    v9 = NUAssertLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Negative x-scale values not supported"];
      *buf = 138543362;
      v39 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v23;
        v40 = 2114;
        v41 = v25;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<double>::scale(CGFloat, CGFloat, NUPixelRoundingPolicy) [T = double]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 289, @"Negative x-scale values not supported", v26, v27, v28, v29, v37);
  }

  if (a3 < 0.0)
  {
    v16 = NUAssertLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Negative y-scale values not supported"];
      *buf = 138543362;
      v39 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v30;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<double>::scale(CGFloat, CGFloat, NUPixelRoundingPolicy) [T = double]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 290, @"Negative y-scale values not supported", v33, v34, v35, v36, v37);
  }

  v3 = a1[1];
  v4 = v3 * a3;
  v5 = *a1 * a2 + a1[2] * a2;
  v6 = v3 * a3 + a1[3] * a3;
  v7 = *a1 * a2;

  return NU::RectT<double>::setXYMinMax(a1, v7, v4, v5, v6);
}

double NU::RectT<double>::setXYMinMax(double *a1, double a2, double a3, double a4, double a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2 > a4)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set min > max"];
      *buf = 138543362;
      v36 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = [MEMORY[0x1E696AF00] callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v20;
        v37 = 2114;
        v38 = v22;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<double>::setXMinMax(T, T) [T = double]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 129, @"Cannot set min > max", v23, v24, v25, v26, v34);
  }

  a1[2] = a4 - a2;
  *a1 = a2;
  if (a3 > a5)
  {
    v13 = NUAssertLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set min > max"];
      *buf = 138543362;
      v36 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v27;
        v37 = 2114;
        v38 = v29;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<double>::setYMinMax(T, T) [T = double]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 136, @"Cannot set min > max", v30, v31, v32, v33, v34);
  }

  result = a5 - a3;
  a1[3] = a5 - a3;
  a1[1] = a3;
  return result;
}

uint64_t vertexIDFromPoint(const CGRect *a1, float64x2_t *a2)
{
  v3 = 0;
  v8 = *a2;
  while (1)
  {
    v4.f64[0] = pointFromVertexID(a1, v3);
    v4.f64[1] = v5;
    v6 = vsubq_f64(v8, v4);
    if (sqrt(vaddvq_f64(vmulq_f64(v6, v6))) < 5.0)
    {
      break;
    }

    v3 = (v3 + 1);
    if (v3 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

double pointFromVertexID(const CGRect *a1, int a2)
{
  v3 = -1.79769313e308;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          return v3;
        }

        MidX = CGRectGetMidX(*a1);
LABEL_18:
        v3 = MidX;
        CGRectGetMaxY(*a1);
        return v3;
      }

      MinX = CGRectGetMinX(*a1);
    }

    else
    {
      if (a2 == 4)
      {
        MaxX = CGRectGetMidX(*a1);
        goto LABEL_16;
      }

      MinX = CGRectGetMaxX(*a1);
    }

    v3 = MinX;
    CGRectGetMidY(*a1);
    return v3;
  }

  if (a2 > 1)
  {
    x = a1->origin.x;
    y = a1->origin.y;
    width = a1->size.width;
    height = a1->size.height;
    if (a2 == 2)
    {
      MidX = CGRectGetMinX(*&x);
    }

    else
    {
      MidX = CGRectGetMaxX(*&x);
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    MaxX = CGRectGetMinX(*a1);
    goto LABEL_16;
  }

  if (a2 == 1)
  {
    MaxX = CGRectGetMaxX(*a1);
LABEL_16:
    v3 = MaxX;
    CGRectGetMinY(*a1);
  }

  return v3;
}

uint64_t vertexIDFromPoint(const CGRect *a1, float64x2_t *a2, double a3)
{
  v5 = 0;
  v10 = *a2;
  while (1)
  {
    v6.f64[0] = pointFromVertexID(a1, v5);
    v6.f64[1] = v7;
    v8 = vsubq_f64(v10, v6);
    if (sqrt(vaddvq_f64(vmulq_f64(v8, v8))) < a3)
    {
      break;
    }

    v5 = (v5 + 1);
    if (v5 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

BOOL canExpandWithAbsoluteAnchor(uint64_t a1, float64x2_t *a2, const CGRect *a3, float64x2_t *a4)
{
  MidX = CGRectGetMidX(*a3);
  MidY = CGRectGetMidY(*a3);
  a4->f64[0] = MidX;
  a4->f64[1] = MidY;
  if ((a1 & 0x10) == 0)
  {
    if ((a1 & 0x40) != 0)
    {
      *a4 = xmmword_1C03C27D0;
      *a4 = vmlaq_f64(a3->origin, xmmword_1C03C27D0, a3->size);
      result = (a1 & 0x20) == 0;
      if ((a1 & 0xA0) != 0x80)
      {
        return result;
      }
    }

    else
    {
      if ((a1 & 0x20) != 0)
      {
        *a4 = xmmword_1C03C27E0;
        v22 = a3->origin.y + a3->size.height * 0.5;
        a4->f64[0] = a3->origin.x + a3->size.width;
        a4->f64[1] = v22;
        if ((a1 & 0x80) == 0)
        {
          return 1;
        }

        goto LABEL_20;
      }

      if ((a1 & 0x80) != 0)
      {
        *a4 = xmmword_1C03C27F0;
        x = a3->origin.x;
        y = a3->origin.y;
        width = a3->size.width;
        height = a3->size.height;
        v25 = 0.5;
LABEL_24:
        v19 = x + width * v25;
        goto LABEL_25;
      }

      v10 = a2[1];
      v11 = vmovn_s64(vcgtq_f64(v10, *a2)).i32[1];
      if ((a1 & 1) == 0)
      {
        if ((a1 & 2) == 0)
        {
          if ((a1 & 4) == 0)
          {
            if ((a1 & 8) != 0)
            {
              if (a1 == 8)
              {
                __asm { FMOV            V0.2D, #1.0 }

                *a4 = _Q0;
                y = a3->origin.y;
                height = a3->size.height;
                v19 = a3->origin.x + a3->size.width;
LABEL_25:
                v21 = y + height;
LABEL_26:
                a4->f64[0] = v19;
                goto LABEL_27;
              }

              return 0;
            }

            return 1;
          }

          if (a1 == 4)
          {
            *a4 = xmmword_1C03C2760;
            x = a3->origin.x;
            y = a3->origin.y;
            width = a3->size.width;
            height = a3->size.height;
            v25 = 0.0;
            goto LABEL_24;
          }

          if ((a1 & 8) == 0)
          {
            return 0;
          }

          if (v11)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        if (a1 == 2)
        {
          *a4 = xmmword_1C03C2770;
          v19 = a3->origin.x + a3->size.width;
          v21 = a3->origin.y + a3->size.height * 0.0;
          goto LABEL_26;
        }

        if ((a1 & 0xC) != 8)
        {
          return 0;
        }

        if (v11)
        {
          goto LABEL_43;
        }

LABEL_20:
        a4->f64[0] = a2[3].f64[0];
        v21 = a2[3].f64[1];
        goto LABEL_27;
      }

      if (a1 == 1)
      {
        a4->f64[0] = 0.0;
        a4->f64[1] = 0.0;
        v19 = a3->origin.x + a3->size.width * 0.0;
        v21 = a3->origin.y + a3->size.height * 0.0;
        goto LABEL_26;
      }

      if ((a1 & 8) != 0)
      {
        return 0;
      }

      if ((a1 & 4) == 0)
      {
        if ((a1 & 2) == 0)
        {
          return 0;
        }

        if ((v11 & 1) == 0)
        {
LABEL_43:
          a4->f64[0] = v10.f64[0];
          goto LABEL_22;
        }

        goto LABEL_45;
      }

      if ((v11 & 1) == 0)
      {
LABEL_45:
        a4->f64[0] = a2->f64[0];
        goto LABEL_16;
      }
    }

LABEL_18:
    a4->f64[0] = a2[2].f64[0];
    v21 = a2[2].f64[1];
    goto LABEL_27;
  }

  result = 0;
  *a4 = xmmword_1C03C27C0;
  *a4 = vmlaq_f64(a3->origin, xmmword_1C03C27C0, a3->size);
  if ((~a1 & 0x60) != 0 && (a1 & 0x80) == 0)
  {
    if ((a1 & 0x20) != 0)
    {
      a4->f64[0] = a2[1].f64[0];
LABEL_22:
      v21 = a2[1].f64[1];
      goto LABEL_27;
    }

    if ((a1 & 0x40) == 0)
    {
      return 1;
    }

    a4->f64[0] = a2->f64[0];
LABEL_16:
    v21 = a2->f64[1];
LABEL_27:
    a4->f64[1] = v21;
    return 1;
  }

  return result;
}

uint64_t _NULogInit()
{
  v0 = os_log_create("com.apple.photos.Neutrino", "general");
  v1 = _NULogger;
  _NULogger = v0;

  v2 = os_log_create("com.apple.photos.Neutrino", "pipeline");
  v3 = _NUPipelineLogger;
  _NUPipelineLogger = v2;

  v4 = os_log_create("com.apple.photos.Neutrino", "render");
  v5 = _NURenderLogger;
  _NURenderLogger = v4;

  v6 = os_log_create("com.apple.photos.Neutrino", "schedule");
  v7 = _NUScheduleLogger;
  _NUScheduleLogger = v6;

  v8 = os_log_create("com.apple.photos.Neutrino", "assert");
  v9 = _NUAssertLogger;
  _NUAssertLogger = v8;

  v10 = os_log_create("com.apple.photos.Neutrino", "ui");
  v11 = _NUUILogger;
  _NUUILogger = v10;

  _NUJSLogger = os_log_create("com.apple.photos.Neutrino", "js");

  return MEMORY[0x1EEE66BB8]();
}

void NULogAdoptVoucher(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  voucher_adopt();
  v4[2](v4);

  v5 = voucher_adopt();
}

void sub_1C026A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_10319()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__10498(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C026D884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NUAssertLogger_10628()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10653);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_10839()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_11252()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_11236);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_11533()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_311);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C0283DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_11892()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_11921);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__11904(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_12083()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_222);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_12301()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_94);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C0288698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12343(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_12418()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12433);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_12581()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
  }

  v1 = _NUAssertLogger;

  return v1;
}

double NU::Sum(double **this, const DataSet *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = ___ZN2NU3SumERKNS_7DataSetE_block_invoke;
  v8 = &unk_1E810A238;
  v9 = &v10;
  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    v4 = 0.0;
  }

  else
  {
    do
    {
      (v7)(v6, a2, *v2++);
    }

    while (v2 != v3);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_1C028CC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double ___ZN2NU3SumERKNS_7DataSetE_block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

double NU::Min(double **this, const DataSet *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0x7FF0000000000000;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = ___ZN2NU3MinERKNS_7DataSetE_block_invoke;
  v8 = &unk_1E810A260;
  v9 = &v10;
  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    v4 = INFINITY;
  }

  else
  {
    do
    {
      (v7)(v6, a2, *v2++);
    }

    while (v2 != v3);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_1C028CDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2NU3MinERKNS_7DataSetE_block_invoke(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) <= a2)
  {
    a2 = *(v2 + 24);
  }

  *(v2 + 24) = a2;
  return result;
}

double NU::Max(double **this, const DataSet *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0xFFF0000000000000;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = ___ZN2NU3MaxERKNS_7DataSetE_block_invoke;
  v8 = &unk_1E810A288;
  v9 = &v10;
  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    v4 = -INFINITY;
  }

  else
  {
    do
    {
      (v7)(v6, a2, *v2++);
    }

    while (v2 != v3);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_1C028CEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2NU3MaxERKNS_7DataSetE_block_invoke(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) >= a2)
  {
    a2 = *(v2 + 24);
  }

  *(v2 + 24) = a2;
  return result;
}

double NU::Mean(double **this, const DataSet *a2)
{
  v3 = NU::Sum(this, a2);
  v4 = this[1] - *this;
  if (v4)
  {
    return v3 / (v4 >> 3);
  }

  else
  {
    return 0.0;
  }
}

double NU::Mean(NU *this, double a2)
{
  if (this)
  {
    return a2 / this;
  }

  else
  {
    return 0.0;
  }
}

double NU::Variance(double **this, const DataSet *a2)
{
  v4 = NU::Sum(this, a2);
  v5 = this[1] - *this;
  if (v5)
  {
    v6 = v4 / (v5 >> 3);
  }

  else
  {
    v6 = 0.0;
  }

  return NU::Variance(this, v3, v6);
}

double NU::Variance(NU *this, const NU::DataSet *a2, double a3)
{
  if (*(this + 1) == *this)
  {
    return 0.0;
  }

  NU::operator+(this, v8, -a3);
  NU::Square(v8, __p);
  v5 = NU::Sum(__p, v4);
  if ((*(this + 1) - *this) >> 3 == 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5 / (((*(this + 1) - *this) >> 3) - 1);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    operator delete(v8[0]);
  }

  return v6;
}

void sub_1C028D044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

double NU::StandardError(double **this, const DataSet *a2)
{
  v3 = NU::Variance(this, a2);
  v4 = this[1] - *this;
  if (v4)
  {
    return sqrt(v3) / sqrt((v4 >> 3));
  }

  else
  {
    return 0.0;
  }
}

double NU::StandardError(NU *this, double a2)
{
  if (this)
  {
    return a2 / sqrt(this);
  }

  else
  {
    return 0.0;
  }
}

double NU::StandardError(NU *this, const NU::DataSet *a2, double a3)
{
  v4 = NU::Variance(this, a2, a3);
  v5 = *(this + 1) - *this;
  if (v5)
  {
    return sqrt(v4) / sqrt((v5 >> 3));
  }

  else
  {
    return 0.0;
  }
}

double NU::Percentile(NU *this, const NU::DataSet *a2, double a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v12, *this, *(this + 1), (*(this + 1) - *this) >> 3);
  v4 = v12;
  v5 = v13;
  std::__sort<std::__less<double,double> &,double *>();
  v6 = (v5 - v4) >> 3;
  v7 = a3 * v6 + -0.5;
  if (v7 >= 0.0)
  {
    v9 = vcvtmd_u64_f64(v7);
    v10 = v6 - 1;
    if (v9 + 1 <= v10)
    {
      v8 = v4[v9] + (v7 - v9) * (v4[v9 + 1] - v4[v9]);
    }

    else
    {
      v8 = v4[v10];
    }
  }

  else
  {
    v8 = *v4;
  }

  operator delete(v4);
  return v8;
}

void sub_1C028D238(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C028D2B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8109208, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

long double NU::GeometricMean(NU *this, const NU::DataSet *a2)
{
  NU::Log(this, &v6);
  v3 = NU::Sum(&v6, v2);
  if (v7 != v6)
  {
    v4 = v3 / (v7 - v6);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0.0;
  if (v6)
  {
LABEL_3:
    operator delete(v6);
  }

LABEL_4:

  return exp(v4);
}

void sub_1C028D4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id NUAssertLogger_12810()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_30);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void NU::Quad2d::findInscribedAxisAlignedAspectFitRect(float64x2_t *a1, __n128 a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(MEMORY[0x1E695F058] + 16);
  v11[0] = *MEMORY[0x1E695F058];
  v11[1] = v5;
  v10[0] = NU::Quad2d::boundingRect(a1);
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v12 = &unk_1F3F44A90;
  v13 = a2;
  v14 = a3;
  NU::Quad2d::computeLimitRect(a1, v11, v10, &v12, 0.000244140625);
}

float64_t NU::Quad2d::findInscribedUnscaledFitRect(NU::Quad2d *this, const CGRect *a2, float64_t a3, double a4, double a5, float64x2_t a6)
{
  a6.f64[0] = a3;
  v65 = *MEMORY[0x1E69E9840];
  rect = a2->size;
  v49.origin = a2->origin;
  v8 = vaddq_f64(rect, a2->origin);
  *&v9 = a2->origin.x;
  *(&v9 + 1) = *&v8.f64[1];
  v51 = v9;
  v52 = v8;
  v8.f64[1] = v49.origin.y;
  v49.size = v49.origin;
  v50 = v8;
  v43 = a6;
  if (NU::Quad2d::equivalentWithTolerance(this, &v49.size, a6.f64[0]))
  {
    origin.f64[0] = v49.origin.x;
  }

  else
  {
    v12 = 0;
    v13 = *(this + 1);
    v54[0] = *this;
    v54[1] = v13;
    v55 = 0;
    v15 = *(this + 2);
    v14 = *(this + 3);
    v56 = v13;
    v57 = v14;
    v58 = 0;
    v59 = v14;
    v60 = v15;
    v61 = 0;
    v62 = v15;
    v63 = v54[0];
    v64 = 0;
    origin = v49.origin;
    while (v12 != 100)
    {
      ++v12;
      v16 = origin.f64[1];
      v66.origin = origin;
      v66.size = rect;
      v49.origin = origin;
      MinX = CGRectGetMinX(v66);
      v67.size.width = rect.width;
      v67.origin.x = v49.origin.x;
      v67.origin.y = v16;
      v67.size.height = rect.height;
      MinY = CGRectGetMinY(v67);
      *&v18 = MinX;
      width = rect.width;
      *(&v18 + 1) = MinY;
      v53[0] = v18;
      x = v49.origin.x;
      *&v18 = v16;
      height = rect.height;
      MaxX = CGRectGetMaxX(*(&v18 - 8));
      v68.size.width = rect.width;
      v68.origin.x = v49.origin.x;
      v68.origin.y = v16;
      v68.size.height = rect.height;
      v22 = CGRectGetMinY(v68);
      *&v23 = MaxX;
      v24 = rect.width;
      *(&v23 + 1) = v22;
      v53[1] = v23;
      v25 = v49.origin.x;
      *&v23 = v16;
      v26 = rect.height;
      v46 = CGRectGetMinX(*(&v23 - 8));
      v69.size.width = rect.width;
      v69.origin.x = v49.origin.x;
      v69.origin.y = v16;
      v69.size.height = rect.height;
      MaxY = CGRectGetMaxY(v69);
      *&v28 = v46;
      v29 = rect.width;
      *(&v28 + 1) = MaxY;
      v53[2] = v28;
      v30 = v49.origin.x;
      *&v28 = v16;
      v31 = rect.height;
      v47 = CGRectGetMaxX(*(&v28 - 8));
      v70.size.width = rect.width;
      v70.origin.x = v49.origin.x;
      v70.origin.y = v16;
      v70.size.height = rect.height;
      v32 = CGRectGetMaxY(v70);
      *&v34 = v47;
      origin = v49.origin;
      v35 = 0;
      *(&v34 + 1) = v32;
      v53[3] = v34;
      v36 = 1;
      do
      {
        v37 = 0;
        v38 = v54[v35];
        v39 = vsubq_f64(v54[v35 + 1], v38);
        v33.f64[0] = -*&v39.i64[1];
        v40 = vzip1q_s64(v33, v39);
        v41 = vmulq_n_f64(v40, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v40, v40))));
        do
        {
          v33 = vmulq_f64(v41, vsubq_f64(v53[v37], v38));
          v42 = vaddq_f64(v33, vdupq_laneq_s64(v33, 1));
          v33.f64[0] = vaddvq_f64(v33);
          origin = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgtq_f64(v43, v42)).i64[0], 0), origin, vsubq_f64(origin, vmulq_n_f64(v41, v33.f64[0] * 0.4 - v43.f64[0])));
          v36 &= v33.f64[0] >= v43.f64[0];
          ++v37;
        }

        while (v37 != 4);
        v35 += 3;
      }

      while (v35 != 12);
      if (v36)
      {
        if (v12 == 100)
        {
          origin = a2->origin;
        }

        return origin.f64[0];
      }
    }
  }

  return origin.f64[0];
}

void NU::Quad2d::findInscribedAxisAlignedFitRectWithAnchor(float64x2_t *a1, float64x2_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = *a4;
  v27 = *(a4 + 16);
  v8 = vaddq_f64(v27, *a4);
  v9.f64[0] = v8.f64[0];
  v9.f64[1] = *(a4 + 8);
  v42 = v26;
  v43 = v9;
  v24 = v9;
  v25 = v8;
  v9.f64[0] = v26.f64[0];
  v9.f64[1] = v8.f64[1];
  v23 = v9;
  v44 = v9;
  v45 = v8;
  if (!NU::Quad2d::equivalentWithTolerance(a1, &v42, 0.000000953674316))
  {
    v38 = v26;
    v39 = v24;
    v40 = v23;
    v41 = v25;
    if ((NU::Quad2d::simpleContains(a1, &v38) & 1) == 0)
    {
      v37 = v27.f64[0] / v27.f64[1];
      NU::Quad2d::findInscribedAxisAlignedAspectFitRectWithAnchor(a1, a2->f64, a3, a4, &v37, 0.000000953674316);
      v11 = v10;
      v42.f64[0] = v12;
      v42.f64[1] = v13;
      v43.f64[0] = v10;
      v43.f64[1] = v14;
      NU::RectT<double>::RectT(v38.f64, a4);
      v28 = *a2;
      v38 = vsubq_f64(v38, *a2);
      NU::RectT<double>::scale(v38.f64, v11 / v39.f64[0], 1.0);
      v38 = vaddq_f64(v28, v38);
      v35 = v38;
      v36 = v39;
      v33 = &unk_1F3F44960;
      v34 = *a2;
      v15 = NU::Quad2d::computeLimitRect(a1, &v42, &v35, &v33, 0.000000953674316);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      NU::RectT<double>::RectT(v32[0].f64, a4);
      v42.f64[0] = v15;
      v42.f64[1] = v17;
      v43.f64[0] = v19;
      v43.f64[1] = v21;
      v22 = v21 / *(a4 + 24);
      v29 = *a2;
      v32[0] = vsubq_f64(v32[0], *a2);
      NU::RectT<double>::scale(v32[0].f64, 1.0, v22);
      v32[0] = vaddq_f64(v29, v32[0]);
      v35 = v32[0];
      v36 = v32[1];
      v30 = &unk_1F3F449B8;
      v31 = *a2;
      NU::Quad2d::computeLimitRect(a1, &v42, &v35, &v30, 0.000000953674316);
    }
  }
}

double NU::AnchorRectFinderHorizontal::constructNextRect(NU::AnchorRectFinderHorizontal *this, const CGRect *a2, const CGRect *a3)
{
  v11 = *a2;
  v4 = (a3->size.width + (v11.size.width - a3->size.width) * 0.5) / v11.size.width;
  v12 = CGRectOffset(*a2, -*(this + 2), -*(this + 3));
  v5 = v4 * v12.size.width;
  v6 = v4 * v12.origin.x;
  v7 = *(this + 1);
  v8 = *(this + 3);

  *&result = CGRectOffset(*&v6, *&v7, v8);
  return result;
}

double NU::AnchorRectFinderVertical::constructNextRect(NU::AnchorRectFinderVertical *this, const CGRect *a2, const CGRect *a3)
{
  v11 = *a2;
  v4 = (a3->size.height + (v11.size.height - a3->size.height) * 0.5) / v11.size.height;
  v12 = CGRectOffset(*a2, -*(this + 2), -*(this + 3));
  v5 = v4 * v12.size.height;
  v6 = v4 * v12.origin.y;
  v7 = *(this + 1);
  v8 = *(this + 3);

  *&result = CGRectOffset(v12, *&v7, v8);
  return result;
}

double _bestIntegralRectPreservingAspectRatioAndAnchor(CGRect a1, CGPoint a2)
{
  v2 = nearbyint(a1.size.width * nearbyint(a1.size.height) / a1.size.height);
  v3 = nearbyint(a1.size.width);
  if (a1.size.width > a1.size.height)
  {
    v2 = v3;
  }

  return nearbyint(a1.origin.x + a2.x * (a1.size.width - v2));
}

void sub_1C02932CC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

__n128 makeTranslationMatrix@<Q0>(__n128 result@<Q0>, double a2@<D1>, double a3@<D2>, uint64_t a4@<X8>)
{
  v4 = MEMORY[0x1E69E9B08];
  v5 = *(MEMORY[0x1E69E9B08] + 80);
  *(a4 + 64) = *(MEMORY[0x1E69E9B08] + 64);
  *(a4 + 80) = v5;
  v6 = v4[1];
  *a4 = *v4;
  *(a4 + 16) = v6;
  v7 = v4[3];
  *(a4 + 32) = v4[2];
  *(a4 + 48) = v7;
  v8 = v4[7];
  result.n128_f64[1] = a2;
  *(a4 + 96) = result;
  *(a4 + 112) = v8;
  *(a4 + 112) = a3;
  return result;
}

double convertTo2D(const simd_double4x4 *a1)
{
  for (i = 0; i != 4; ++i)
  {
    *(&v3 + i) = vdivq_f64(*a1->columns[i].f64, vdupq_laneq_s64(*&a1->columns[i].f64[2], 1));
  }

  return *&v3;
}

uint64_t *nu::fill_rect<NUPixelRect>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int *a5, uint64_t a6)
{
  if (a6 > 5)
  {
    if (a6 > 11)
    {
      if (a6 == 12)
      {
        v163 = result[2];
        v162 = result[3];
        if (v163 >= 1 && v162 >= 1)
        {
          v165 = a4[2];
          if (v165 >= 1)
          {
            v166 = a4[3];
            if (v166 >= 1)
            {
              v167 = *result;
              if (*result <= *a4)
              {
                v168 = *a4;
              }

              else
              {
                v168 = *result;
              }

              v169 = v167 + v163;
              v170 = *a4 + v165;
              if (v169 >= v170)
              {
                v169 = v170;
              }

              v171 = v169 - v168;
              if (v169 > v168)
              {
                v172 = result[1];
                v173 = a4[1];
                if (v172 <= v173)
                {
                  v174 = a4[1];
                }

                else
                {
                  v174 = result[1];
                }

                v175 = v172 + v162;
                v176 = v173 + v166;
                if (v175 >= v176)
                {
                  v175 = v176;
                }

                v99 = v175 <= v174;
                v177 = v175 - v174;
                if (!v99 && v171 >= 1 && v177 >= 1)
                {
                  v178 = *a5;
                  v179 = a5[2];
                  v180 = a2 + (v174 - v172) * a3 + 12 * (v168 - v167);
                  v181 = v171 + 1;
                  do
                  {
                    v182 = 0;
                    v183 = v181;
                    do
                    {
                      v184 = v180 + v182;
                      *v184 = v178;
                      *(v184 + 8) = v179;
                      v182 += 12;
                      --v183;
                    }

                    while (v183 > 1);
                    v180 += a3;
                    --v177;
                  }

                  while (v177);
                }
              }
            }
          }
        }
      }

      else if (a6 == 16)
      {
        v77 = result[2];
        if (v77 >= 1)
        {
          v78 = result[3];
          if (v78 >= 1)
          {
            v79 = a4[2];
            if (v79 >= 1)
            {
              v80 = a4[3];
              if (v80 >= 1)
              {
                v81 = *result;
                if (*result <= *a4)
                {
                  v82 = *a4;
                }

                else
                {
                  v82 = *result;
                }

                v83 = v81 + v77;
                v84 = *a4 + v79;
                if (v83 >= v84)
                {
                  v83 = v84;
                }

                v99 = v83 <= v82;
                v85 = v83 - v82;
                if (!v99)
                {
                  v86 = result[1];
                  v87 = a4[1];
                  if (v86 <= v87)
                  {
                    v88 = a4[1];
                  }

                  else
                  {
                    v88 = result[1];
                  }

                  v89 = v86 + v78;
                  v90 = v87 + v80;
                  if (v89 >= v90)
                  {
                    v89 = v90;
                  }

                  v99 = v89 <= v88;
                  v91 = v89 - v88;
                  if (!v99 && v85 >= 1 && v91 >= 1)
                  {
                    v92 = *a5;
                    v93 = a2 + (v88 - v86) * a3 + 16 * (v82 - v81);
                    v94 = v85 + 1;
                    do
                    {
                      v95 = 0;
                      v96 = v94;
                      do
                      {
                        *(v93 + v95) = v92;
                        v95 += 16;
                        --v96;
                      }

                      while (v96 > 1);
                      v93 += a3;
                      --v91;
                    }

                    while (v91);
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (a6 == 6)
    {
      v117 = result[2];
      v116 = result[3];
      if (v117 >= 1 && v116 >= 1)
      {
        v119 = a4[2];
        if (v119 >= 1)
        {
          v120 = a4[3];
          if (v120 >= 1)
          {
            v121 = *result;
            if (*result <= *a4)
            {
              v122 = *a4;
            }

            else
            {
              v122 = *result;
            }

            v123 = v121 + v117;
            v124 = *a4 + v119;
            if (v123 >= v124)
            {
              v123 = v124;
            }

            v99 = v123 <= v122;
            v125 = v123 - v122;
            if (!v99)
            {
              v126 = result[1];
              v127 = a4[1];
              if (v126 <= v127)
              {
                v128 = a4[1];
              }

              else
              {
                v128 = result[1];
              }

              v129 = v126 + v116;
              v130 = v127 + v120;
              if (v129 >= v130)
              {
                v129 = v130;
              }

              v99 = v129 <= v128;
              v131 = v129 - v128;
              if (!v99 && v125 >= 1 && v131 >= 1)
              {
                v132 = *a5 | (*(a5 + 2) << 32);
                v133 = a2 + (v128 - v126) * a3 + 6 * (v122 - v121);
                v134 = vdupq_n_s64(v125 - 1);
                do
                {
                  v135 = 0;
                  v136 = v133;
                  do
                  {
                    v137 = vmovn_s64(vcgeq_u64(v134, vorrq_s8(vdupq_n_s64(v135), xmmword_1C03C2740)));
                    if (v137.i8[0])
                    {
                      *v136 = v132;
                      *(v136 + 4) = WORD2(v132);
                    }

                    if (v137.i8[4])
                    {
                      *(v136 + 6) = v132;
                      *(v136 + 10) = WORD2(v132);
                    }

                    v135 += 2;
                    v136 += 12;
                  }

                  while (((v125 + 1) & 0xFFFFFFFFFFFFFFFELL) != v135);
                  v133 += a3;
                  --v131;
                }

                while (v131);
              }
            }
          }
        }
      }
    }

    else if (a6 == 8)
    {
      v32 = result[2];
      if (v32 >= 1)
      {
        v33 = result[3];
        if (v33 >= 1)
        {
          v34 = a4[2];
          if (v34 >= 1)
          {
            v35 = a4[3];
            if (v35 >= 1)
            {
              v36 = *result;
              if (*result <= *a4)
              {
                v37 = *a4;
              }

              else
              {
                v37 = *result;
              }

              v38 = v36 + v32;
              v39 = *a4 + v34;
              if (v38 >= v39)
              {
                v38 = v39;
              }

              v40 = v38 - v37;
              if (v38 > v37)
              {
                v41 = result[1];
                v42 = a4[1];
                if (v41 <= v42)
                {
                  v43 = a4[1];
                }

                else
                {
                  v43 = result[1];
                }

                v44 = v41 + v33;
                v45 = v42 + v35;
                if (v44 >= v45)
                {
                  v44 = v45;
                }

                v99 = v44 <= v43;
                v46 = v44 - v43;
                if (!v99 && v40 >= 1 && v46 >= 1)
                {
                  v47 = *a5;
                  v48 = a2 + (v43 - v41) * a3 + 8 * (v37 - v36);
                  v49 = (v40 + 1) & 0xFFFFFFFFFFFFFFFELL;
                  v50 = vdupq_n_s64(v40 - 1);
                  do
                  {
                    v51 = 0;
                    do
                    {
                      v52 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(vdupq_n_s64(v51), xmmword_1C03C2740)));
                      if (v52.i8[0])
                      {
                        *(v48 + 8 * v51) = v47;
                      }

                      if (v52.i8[4])
                      {
                        *(v48 + 8 * v51 + 8) = v47;
                      }

                      v51 += 2;
                    }

                    while (v49 != v51);
                    v48 += a3;
                    --v46;
                  }

                  while (v46);
                }
              }
            }
          }
        }
      }
    }
  }

  else if (a6 > 2)
  {
    if (a6 == 3)
    {
      v139 = result[2];
      v138 = result[3];
      if (v139 >= 1 && v138 >= 1)
      {
        v141 = a4[2];
        if (v141 >= 1)
        {
          v142 = a4[3];
          if (v142 >= 1)
          {
            v143 = *result;
            if (*result <= *a4)
            {
              v144 = *a4;
            }

            else
            {
              v144 = *result;
            }

            v145 = v143 + v139;
            v146 = *a4 + v141;
            if (v145 >= v146)
            {
              v145 = v146;
            }

            v99 = v145 <= v144;
            v147 = v145 - v144;
            if (!v99)
            {
              v148 = result[1];
              v149 = a4[1];
              if (v148 <= v149)
              {
                v150 = a4[1];
              }

              else
              {
                v150 = result[1];
              }

              v151 = v148 + v138;
              v152 = v149 + v142;
              if (v151 >= v152)
              {
                v151 = v152;
              }

              v99 = v151 <= v150;
              v153 = v151 - v150;
              if (!v99 && v147 >= 1 && v153 >= 1)
              {
                v154 = *a5 | (*(a5 + 2) << 16);
                v155 = vdupq_n_s64(v147 - 1);
                v156 = (v147 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v157 = 3 * v144 + (v150 - v148) * a3 - 3 * v143 + a2 + 6;
                do
                {
                  v158 = 0;
                  v159 = v157;
                  do
                  {
                    v160 = vdupq_n_s64(v158);
                    v161 = vmovn_s64(vcgeq_u64(v155, vorrq_s8(v160, xmmword_1C03C2740)));
                    if (vuzp1_s16(v161, *v155.i8).u8[0])
                    {
                      *(v159 - 6) = v154;
                      *(v159 - 4) = BYTE2(v154);
                    }

                    if (vuzp1_s16(v161, *&v155).i8[2])
                    {
                      *(v159 - 3) = v154;
                      *(v159 - 1) = BYTE2(v154);
                    }

                    if (vuzp1_s16(*&v155, vmovn_s64(vcgeq_u64(v155, vorrq_s8(v160, xmmword_1C03C2730)))).i32[1])
                    {
                      *v159 = v154;
                      *(v159 + 2) = BYTE2(v154);
                      *(v159 + 3) = v154;
                      *(v159 + 5) = BYTE2(v154);
                    }

                    v158 += 4;
                    v159 += 12;
                  }

                  while (v156 != v158);
                  v157 += a3;
                  --v153;
                }

                while (v153);
              }
            }
          }
        }
      }
    }

    else if (a6 == 4)
    {
      v53 = result[2];
      if (v53 >= 1)
      {
        v54 = result[3];
        if (v54 >= 1)
        {
          v55 = a4[2];
          if (v55 >= 1)
          {
            v56 = a4[3];
            if (v56 >= 1)
            {
              v57 = *result;
              if (*result <= *a4)
              {
                v58 = *a4;
              }

              else
              {
                v58 = *result;
              }

              v59 = v57 + v53;
              v60 = *a4 + v55;
              if (v59 >= v60)
              {
                v59 = v60;
              }

              v61 = v59 - v58;
              if (v59 > v58)
              {
                v62 = result[1];
                v63 = a4[1];
                if (v62 <= v63)
                {
                  v64 = a4[1];
                }

                else
                {
                  v64 = result[1];
                }

                v65 = v62 + v54;
                v66 = v63 + v56;
                if (v65 >= v66)
                {
                  v65 = v66;
                }

                v99 = v65 <= v64;
                v67 = v65 - v64;
                if (!v99)
                {
                  v68 = v61 - 1;
                  if (v61 >= 1 && v67 >= 1)
                  {
                    v69 = *a5;
                    v70 = (v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v71 = vdupq_n_s64(v68);
                    v72 = (v64 - v62) * a3 + 4 * v58 - 4 * v57 + a2 + 8;
                    do
                    {
                      v73 = 0;
                      v74 = v72;
                      do
                      {
                        v75 = vdupq_n_s64(v73);
                        v76 = vmovn_s64(vcgeq_u64(v71, vorrq_s8(v75, xmmword_1C03C2740)));
                        if (vuzp1_s16(v76, *v71.i8).u8[0])
                        {
                          *(v74 - 2) = v69;
                        }

                        if (vuzp1_s16(v76, *&v71).i8[2])
                        {
                          *(v74 - 1) = v69;
                        }

                        if (vuzp1_s16(*&v71, vmovn_s64(vcgeq_u64(v71, vorrq_s8(v75, xmmword_1C03C2730)))).i32[1])
                        {
                          *v74 = v69;
                          v74[1] = v69;
                        }

                        v73 += 4;
                        v74 += 4;
                      }

                      while (v70 != v73);
                      v72 += a3;
                      --v67;
                    }

                    while (v67);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else if (a6 == 1)
  {
    v98 = result[2];
    v97 = result[3];
    v99 = v98 < 1 || v97 < 1;
    if (!v99)
    {
      v100 = a4[2];
      if (v100 >= 1)
      {
        v101 = a4[3];
        if (v101 >= 1)
        {
          v102 = *result;
          if (*result <= *a4)
          {
            v103 = *a4;
          }

          else
          {
            v103 = *result;
          }

          v104 = v102 + v98;
          v105 = *a4 + v100;
          if (v104 >= v105)
          {
            v104 = v105;
          }

          v106 = v104 - v103;
          if (v104 > v103)
          {
            v107 = result[1];
            v108 = a4[1];
            if (v107 <= v108)
            {
              v109 = a4[1];
            }

            else
            {
              v109 = result[1];
            }

            v110 = v107 + v97;
            v111 = v108 + v101;
            if (v110 >= v111)
            {
              v110 = v111;
            }

            if (v110 > v109 && v106 >= 1 && v110 - v109 >= 1)
            {
              v112 = *a5;
              v113 = (a2 + (v109 - v107) * a3 + v103 - v102);
              v114 = v109 - v110;
              do
              {
                result = memset(v113, v112, v106);
                v113 += a3;
              }

              while (!__CFADD__(v114++, 1));
            }
          }
        }
      }
    }
  }

  else if (a6 == 2)
  {
    v7 = result[2];
    if (v7 >= 1)
    {
      v8 = result[3];
      if (v8 >= 1)
      {
        v9 = a4[2];
        if (v9 >= 1)
        {
          v10 = a4[3];
          if (v10 >= 1)
          {
            v11 = *result;
            if (*result <= *a4)
            {
              v12 = *a4;
            }

            else
            {
              v12 = *result;
            }

            v13 = v11 + v7;
            v14 = *a4 + v9;
            if (v13 >= v14)
            {
              v13 = v14;
            }

            v15 = v13 - v12;
            if (v13 > v12)
            {
              v16 = result[1];
              v17 = a4[1];
              if (v16 <= v17)
              {
                v18 = a4[1];
              }

              else
              {
                v18 = result[1];
              }

              v19 = v16 + v8;
              v20 = v17 + v10;
              if (v19 >= v20)
              {
                v19 = v20;
              }

              v99 = v19 <= v18;
              v21 = v19 - v18;
              if (!v99)
              {
                v22 = v15 - 1;
                if (v15 >= 1 && v21 >= 1)
                {
                  v23 = *a5;
                  v24 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v25 = vdupq_n_s64(v22);
                  v26 = (v18 - v16) * a3 + 2 * v12 - 2 * v11 + a2 + 8;
                  do
                  {
                    v27 = 0;
                    v28 = v26;
                    do
                    {
                      v29 = vdupq_n_s64(v27);
                      v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v29, xmmword_1C03C2740)));
                      if (vuzp1_s8(vuzp1_s16(v30, *v25.i8), *v25.i8).u8[0])
                      {
                        *(v28 - 4) = v23;
                      }

                      if (vuzp1_s8(vuzp1_s16(v30, *&v25), *&v25).i8[1])
                      {
                        *(v28 - 3) = v23;
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v29, xmmword_1C03C2730)))), *&v25).i8[2])
                      {
                        *(v28 - 2) = v23;
                        *(v28 - 1) = v23;
                      }

                      v31 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v29, xmmword_1C03C28D0)));
                      if (vuzp1_s8(*&v25, vuzp1_s16(v31, *&v25)).i32[1])
                      {
                        *v28 = v23;
                      }

                      if (vuzp1_s8(*&v25, vuzp1_s16(v31, *&v25)).i8[5])
                      {
                        v28[1] = v23;
                      }

                      if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v29, xmmword_1C03C28C0))))).i8[6])
                      {
                        v28[2] = v23;
                        v28[3] = v23;
                      }

                      v27 += 8;
                      v28 += 8;
                    }

                    while (v24 != v27);
                    v26 += a3;
                    --v21;
                  }

                  while (v21);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C02A0BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = NUPurgeableImageAccessGuard;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id NUAssertLogger_13707()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13724);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_14028()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14053);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_14097()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14118);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_14382()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_14554()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14567);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_14640()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__14664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_14813()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14833);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_14928()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14943);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_15131()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_624);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__15239(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUMediaCharacteristicForAuxiliaryImageType(uint64_t a1)
{
  v2 = a1 - 2;
  if (a1 - 2) <= 9 && ((0x387u >> v2))
  {
    v3 = **(&unk_1E810A7D8 + v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1C02B60D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose((v55 - 208), 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1C02B69EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1C02B71C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v41 - 192), 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Block_object_dispose((v41 - 224), 8);
  _Unwind_Resume(a1);
}

BOOL __NUCMSampleBufferIsSyncSample_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E6960430]];
  v3 = v2 != 0;

  return v3;
}

void sub_1C02B88C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C02BB9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C02BC21C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    *v2 = [NUError errorWithCode:1 reason:@"AVAssetReaderVideoCompositionOutput: exception" object:v3];

    objc_end_catch();
    JUMPOUT(0x1C02BBFF4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C02BDCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

__CFString *NUStringFromTimeRange(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *&v5.start.value = *a1;
  *&v5.start.epoch = v2;
  *&v5.duration.timescale = a1[2];
  v3 = CMTimeRangeCopyDescription(v1, &v5);

  return v3;
}

void NUCVImageBufferSetCleanRect(__CVBuffer *a1, uint64_t *a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v6 = *a2 - (Width - a2[2]) * 0.5;
  v7 = (Height - a2[3]) * 0.5 - a2[1];
  v13[0] = *MEMORY[0x1E6965D80];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v14[0] = v8;
  v13[1] = *MEMORY[0x1E6965D60];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2[3]];
  v14[1] = v9;
  v13[2] = *MEMORY[0x1E6965D68];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v14[2] = v10;
  v13[3] = *MEMORY[0x1E6965D78];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v14[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  CVBufferSetAttachment(a1, *MEMORY[0x1E6965D70], v12, kCVAttachmentMode_ShouldPropagate);
}

__CFString *NUStringFromTime(CMTime *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v4 = *a1;
  v2 = CMTimeCopyDescription(v1, &v4);

  return v2;
}

id NUStringFromTimeMapping(_OWORD *a1)
{
  v2 = a1[1];
  *&range.start.value = *a1;
  *&range.start.epoch = v2;
  *&range.duration.timescale = a1[2];
  v3 = *MEMORY[0x1E695E480];
  v4 = CMTimeRangeCopyDescription(*MEMORY[0x1E695E480], &range);
  v5 = a1[4];
  *&range.start.value = a1[3];
  *&range.start.epoch = v5;
  *&range.duration.timescale = a1[5];
  v6 = CMTimeRangeCopyDescription(v3, &range);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ -> %@]", v4, v6];

  return v7;
}

id NUValueFromArrayAtTime(void *a1, CMTime *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (![v3 count])
  {
    v13 = NUAssertLogger_15131();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"array is empty"];
      LODWORD(time1.value) = 138543362;
      *(&time1.value + 4) = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time1, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_15131();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v20;
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time1, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      LODWORD(time1.value) = 138543362;
      *(&time1.value + 4) = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time1, 0xCu);
    }

    _NUAssertFailHandler("id  _Nonnull NUValueFromArrayAtTime(NSArray *__strong _Nonnull, CMTime)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2861, @"array is empty", v25, v26, v27, v28, v29.value);
  }

  v4 = [v3 firstObject];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    while (2)
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v30 + 1) + 8 * v9);
        if (v11)
        {
          [*(*(&v30 + 1) + 8 * v9) time];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v29 = *a2;
        if (CMTimeCompare(&time1, &v29) > 0)
        {
          v4 = v10;
          goto LABEL_15;
        }

        v4 = v11;

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v4;
}

id NUAssertLogger_15661()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_15673);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_15823()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C02C63F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C02C8120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C02CC7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C02CCAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NURenderNodeDictionaryHash_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) ^= 0x18482028EBA975 * [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) ^= 0x20E47795B02877 * a3;
}

void sub_1C02CCD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NURenderNodeDictionaryEqual_block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];

  if (v9 != v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id NUAssertLogger_16336()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C02CEF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16409(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_16664()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16681);
  }

  v1 = _NUAssertLogger;

  return v1;
}

__CVBuffer *nu_CVPixelBufferDataProviderReleaseBytePointer(__CVBuffer *result, uint64_t a2)
{
  if (a2)
  {
    return CVPixelBufferUnlockBaseAddress(result, 1uLL);
  }

  return result;
}

void *nu_CVPixelBufferDataProviderGetBytePointer(__CVBuffer *a1)
{
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    return 0;
  }

  return CVPixelBufferGetBaseAddress(a1);
}

uint64_t ImageIOLibraryCore_16784()
{
  if (!ImageIOLibraryCore_frameworkLibrary_16801)
  {
    ImageIOLibraryCore_frameworkLibrary_16801 = _sl_dlopen();
  }

  return ImageIOLibraryCore_frameworkLibrary_16801;
}

uint64_t getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr;
  v6 = getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr;
  if (!getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_block_invoke;
    v2[3] = &unk_1E810A8A8;
    v2[4] = &v3;
    __getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C02D7ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkCGImageAuxiliaryDataInfoPixelBuffer()
{
  if (!getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc())
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImageAuxiliaryDataInfoPixelBuffer(void)"];
    [v0 handleFailureInFunction:v1 file:@"NUAuxiliaryImage.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void *__getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_block_invoke(void *a1)
{
  v2 = ImageIOLibraryCore_16784();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"NUAuxiliaryImage.m" lineNumber:30 description:{@"%s", 0}];

    __break(1u);
    free(v5);
  }

  result = dlsym(v3, "kCGImageAuxiliaryDataInfoPixelBuffer");
  *(*(a1[4] + 8) + 24) = result;
  getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke_16802()
{
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary_16801 = result;
  return result;
}

void _NUAuxiliaryImageCVPixelBufferReleaseBytesCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFMutableDictionaryRef NUIORegistryEntryCopyProperties(io_registry_entry_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  properties = 0;
  v1 = IORegistryEntryCreateCFProperties(a1, &properties, 0, 0);
  if (v1)
  {
    v2 = v1;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_16852);
    }

    v3 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v2;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Failed to read IORegistry, error: %d", buf, 8u);
    }

    v4 = 0;
  }

  else
  {
    v4 = properties;
  }

  return v4;
}

id NUIORegistryEntryGetProperty(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x1E695E480], 0);

  return CFProperty;
}

id NUIORegistryEntryGetDataProperty(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x1E695E480], 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = CFProperty;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id NUIORegistryEntryGetStringProperty(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x1E695E480], 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = CFProperty;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:objc_msgSend(CFProperty encoding:{"bytes"), 30}];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

id NUIORegistryEntryGetName(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v1 = MEMORY[0x1C68D8D90](a1, v7);
  if (v1)
  {
    v2 = v1;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_16852);
    }

    v3 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Failed to read IORegistry, error: %d", v6, 8u);
    }

    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:30];
  }

  return v4;
}

id NUAssertLogger_16930()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16959);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_17098()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_17111);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C02D9CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NUPixelSizeFromCGSize(uint64_t a1, double a2, double a3)
{
  v5 = NUPixelRoundValue(a1, a2);
  NUPixelRoundValue(a1, a3);
  return v5;
}

uint64_t NUPixelRoundValue(uint64_t result, double a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (result <= 1)
  {
    v2 = vcvtpd_s64_f64(a2);
    v3 = vcvtmd_s64_f64(a2);
    if (result != 1)
    {
      v3 = result;
    }

    if (result)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        return llround(a2);
      case 3:
        return a2;
      case 4:
        v4 = NUAssertLogger();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported rounding policy: OutEven"];
          *buf = 138543362;
          v20 = v5;
          _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v7 = NUAssertLogger();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v8)
          {
            v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v12 = [MEMORY[0x1E696AF00] callStackSymbols];
            v13 = [v12 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v20 = v11;
            v21 = 2114;
            v22 = v13;
            _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v8)
        {
          v9 = [MEMORY[0x1E696AF00] callStackSymbols];
          v10 = [v9 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v20 = v10;
          _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("NSInteger NUPixelRoundValue(CGFloat, NUPixelRoundingPolicy)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometry.mm", 35, @"Unsupported rounding policy: OutEven", v14, v15, v16, v17, v18);
    }
  }

  return result;
}

uint64_t NUPixelSizeLargestDimension(uint64_t result, uint64_t a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

uint64_t NUPixelSizeAlignToGrid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = NUPixelRoundValue(a5, a1 / a3) * a3;
  NUPixelRoundValue(a5, a2 / a4);
  return v8;
}

uint64_t NUPixelPointFromCGPoint(uint64_t a1, double a2, double a3)
{
  v5 = NUPixelRoundValue(a1, a2);
  NUPixelRoundValue(a1, a3);
  return v5;
}

double NUPixelRectContainingPoints@<D0>(float64x2_t *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  if (a2 < 2)
  {
    v7 = *a1;
  }

  else
  {
    v5 = a2 - 1;
    v6 = a1 + 1;
    v7 = *a1;
    do
    {
      v8 = *v6++;
      v4 = vbslq_s8(vcgtq_f64(v8, v4), v8, v4);
      v7 = vbslq_s8(vcgtq_f64(v8, v7), v7, v8);
      --v5;
    }

    while (v5);
  }

  v12.origin = v7;
  v12.size = vsubq_f64(v4, v7);
  NU::RectT<long>::RectT(v11, &v12, 0);
  result = *v11;
  v10 = v11[1];
  *a3 = v11[0];
  a3[1] = v10;
  return result;
}

void *NU::RectT<long>::RectT(void *a1, CGRect *a2, uint64_t a3)
{
  MinX = CGRectGetMinX(*a2);
  MinY = CGRectGetMinY(*a2);
  MaxX = CGRectGetMaxX(*a2);
  MaxY = CGRectGetMaxY(*a2);
  NU::RectT<long>::setXYMinMax(a1, a3, MinX, MinY, MaxX, MaxY);
  return a1;
}

void *NU::RectT<long>::setXYMinMax(void *result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v8 = result;
  v35 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_28;
      }

      v13 = vcvtpd_s64_f64(a3 + -0.000001);
      if (a5 - a3 >= 1.000002)
      {
        result = NU::RectT<long>::setXMinMax(result, v13, vcvtmd_s64_f64(a5 + 0.000001));
      }

      else
      {
        *result = v13;
        result[2] = 0;
      }

      v14 = vcvtpd_s64_f64(a4 + -0.000001);
      if (a6 - a4 < 1.000002)
      {
        *(v8 + 8) = v14;
        *(v8 + 24) = 0;
        return result;
      }

      v15 = vcvtmd_s64_f64(a6 + 0.000001);
    }

    else
    {
      NU::RectT<long>::setXMinMax(result, vcvtmd_s64_f64(a3 + 0.000001), vcvtpd_s64_f64(a5 + -0.000001));
      v14 = vcvtmd_s64_f64(a4 + 0.000001);
      v15 = vcvtpd_s64_f64(a6 + -0.000001);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        NU::RectT<long>::setXMinMax(result, nearbyint(a3), nearbyint(a5));
        v14 = nearbyint(a4);
        v15 = nearbyint(a6);
        break;
      case 3:
        NU::RectT<long>::setXMinMax(result, a3, a5);
        v14 = a4;
        v15 = a6;
        break;
      case 4:
        v9 = floor(a3 + 0.000001);
        v10 = floor(a4 + 0.000001);
        v11 = ceil(a5 + -0.000001);
        v12 = ceil(a6 + -0.000001);
        if ((v11 - v9))
        {
          if (a3 - v9 <= v11 - a5)
          {
            v11 = v11 + -1.0;
          }

          else
          {
            v9 = v9 + 1.0;
          }
        }

        if ((v12 - v10))
        {
          if (a4 - v10 <= v12 - a6)
          {
            v12 = v12 + -1.0;
          }

          else
          {
            v10 = v10 + 1.0;
          }
        }

        NU::RectT<long>::setXMinMax(result, v9, v11);
        v14 = v10;
        v15 = v12;
        break;
      default:
LABEL_28:
        v16 = NUAssertLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rounding mode not supported"];
          *buf = 138543362;
          v32 = v17;
          _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = NUAssertLogger();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v20)
          {
            v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v24 = [MEMORY[0x1E696AF00] callStackSymbols];
            v25 = [v24 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v32 = v23;
            v33 = 2114;
            v34 = v25;
            _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v20)
        {
          v21 = [MEMORY[0x1E696AF00] callStackSymbols];
          v22 = [v21 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v32 = v22;
          _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("void NU::RectT<long>::setXYMinMax(CGFloat, CGFloat, CGFloat, CGFloat, NUPixelRoundingPolicy) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 122, @"Rounding mode not supported", v26, v27, v28, v29, v30);
    }
  }

  return NU::RectT<long>::setYMinMax(v8, v14, v15);
}

void *NU::RectT<long>::setXMinMax(void *result, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 < a2)
  {
    v3 = NUAssertLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set min > max"];
      *buf = 138543362;
      v19 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v10;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::setXMinMax(T, T) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 129, @"Cannot set min > max", v13, v14, v15, v16, v17);
  }

  result[2] = a3 - a2;
  *result = a2;
  return result;
}

uint64_t NU::RectT<long>::setYMinMax(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 < a2)
  {
    v3 = NUAssertLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set min > max"];
      *buf = 138543362;
      v19 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v10;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::setYMinMax(T, T) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 136, @"Cannot set min > max", v13, v14, v15, v16, v17);
  }

  *(result + 24) = a3 - a2;
  *(result + 8) = a2;
  return result;
}

double NUPixelRectFromCGRect@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v10.origin.x = a3;
  v10.origin.y = a4;
  v10.size.width = a5;
  v10.size.height = a6;
  NU::RectT<long>::RectT(v9, &v10, a1);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  a2[1] = v8;
  return result;
}

double NUPixelRectIntersection@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  NU::RectT<long>::Intersection(v8, v10, v9);
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  a3[1] = v7;
  return result;
}

double NU::RectT<long>::Intersection(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[2];
  if (v4 && (v6 = a2[3]) != 0 && ((v9 = a3[2], v8 = a3[3], v9) ? (v10 = v8 == 0) : (v10 = 1), !v10 && (NU::RectT<long>::intersects(a2, a3) & 1) != 0))
  {
    v11 = a2[1];
    v12 = a3[1];
    if (*a2 <= *a3)
    {
      v13 = *a3;
    }

    else
    {
      v13 = *a2;
    }

    if (v9 + *a3 >= v4 + *a2)
    {
      v14 = v4 + *a2;
    }

    else
    {
      v14 = v9 + *a3;
    }

    if (v11 <= v12)
    {
      v15 = a3[1];
    }

    else
    {
      v15 = a2[1];
    }

    if (v8 + v12 >= v6 + v11)
    {
      v16 = v6 + v11;
    }

    else
    {
      v16 = v8 + v12;
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
    NU::RectT<long>::setXMinMax(a1, v13, v14);

    NU::RectT<long>::setYMinMax(a1, v15, v16);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t NU::RectT<long>::intersects(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 >= *a2)
  {
    if (*a1 > *a2 && a2[2] + v3 <= v2)
    {
      return 0;
    }

LABEL_6:
    v4 = a1[1];
    v5 = a2[1];
    if (v4 >= v5)
    {
      if (v4 > v5 && a2[3] + v5 <= v4)
      {
        return 0;
      }
    }

    else if (a1[3] + v4 <= v5)
    {
      return 0;
    }

    return 1;
  }

  if (a1[2] + v2 > v3)
  {
    goto LABEL_6;
  }

  return 0;
}

double NUPixelRectUnion@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  NU::RectT<long>::add(&v8, v10);
  result = *&v8;
  v7 = v9;
  *a3 = v8;
  a3[1] = v7;
  return result;
}

__n128 NU::RectT<long>::add(uint64_t *a1, uint64_t *a2)
{
  if (a1[2] && a1[3])
  {
    if (a2[2])
    {
      v4 = a2[3] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      if (*a2 >= *a1)
      {
        v5 = *a1;
      }

      else
      {
        v5 = *a2;
      }

      NU::RectT<long>::setXMin(a1, v5);
      v6 = a2[2];
      if (a1[2] + *a1 <= v6 + *a2)
      {
        v7 = v6 + *a2;
      }

      else
      {
        v7 = a1[2] + *a1;
      }

      NU::RectT<long>::setXMax(a1, v7);
      if (a2[1] >= a1[1])
      {
        v8 = a1[1];
      }

      else
      {
        v8 = a2[1];
      }

      NU::RectT<long>::setYMin(a1, v8);
      v9 = a2[3];
      if (a1[3] + a1[1] <= v9 + a2[1])
      {
        v10 = v9 + a2[1];
      }

      else
      {
        v10 = a1[3] + a1[1];
      }

      NU::RectT<long>::setYMax(a1, v10);
    }
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 1);
    *(a1 + 1) = result;
  }

  return result;
}

uint64_t *NU::RectT<long>::setXMin(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v24 = *MEMORY[0x1E69E9840];
  v3 = result[2] + *result;
  v4 = v3 < a2;
  v5 = v3 - a2;
  if (v4)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set min > max: { %ld, %ld, %ld, %ld }", *v2, v2[1], v2[2], v2[3]];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v13;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::setXMin(T) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 143, @"Cannot set min > max: { %ld, %ld, %ld, %ld }", v16, v17, v18, v19, *v2);
  }

  result[2] = v5;
  *result = a2;
  return result;
}

uint64_t *NU::RectT<long>::setXMax(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v21 = *MEMORY[0x1E69E9840];
  if (a2 < *result)
  {
    v3 = NUAssertLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set max < min: { %ld, %ld, %ld, %ld }", *v2, v2[1], v2[2], v2[3]];
      *buf = 138543362;
      v18 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v18 = v10;
        v19 = 2114;
        v20 = v12;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v18 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::setXMax(T) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 155, @"Cannot set max < min: { %ld, %ld, %ld, %ld }", v13, v14, v15, v16, *v2);
  }

  result[2] = a2 - *result;
  return result;
}

uint64_t *NU::RectT<long>::setYMin(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v24 = *MEMORY[0x1E69E9840];
  v3 = result[3] + result[1];
  v4 = v3 < a2;
  v5 = v3 - a2;
  if (v4)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set min > max: { %ld, %ld, %ld, %ld }", *v2, v2[1], v2[2], v2[3]];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v13;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::setYMin(T) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 149, @"Cannot set min > max: { %ld, %ld, %ld, %ld }", v16, v17, v18, v19, *v2);
  }

  result[3] = v5;
  result[1] = a2;
  return result;
}

uint64_t *NU::RectT<long>::setYMax(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v24 = *MEMORY[0x1E69E9840];
  v3 = result[1];
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 != v4)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set max < min: { %ld, %ld, %ld, %ld }", *v2, v2[1], v2[2], v2[3]];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v13;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::setYMax(T) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 160, @"Cannot set max < min: { %ld, %ld, %ld, %ld }", v16, v17, v18, v19, *v2);
  }

  result[3] = v5;
  return result;
}

BOOL NUPixelRectContainsRect(_OWORD *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v11[0] = *a1;
  v11[1] = v3;
  v10[0] = v4;
  v10[1] = v5;
  NU::RectT<long>::Intersection(&v8, v11, v10);
  result = 0;
  if (*a2 == v8.i64[0])
  {
    v7 = vmovn_s64(vceqq_s64(*(a2 + 8), vextq_s8(v8, v9, 8uLL)));
    if (v7.i8[0] & 1) != 0 && (v7.i8[4])
    {
      return *(a2 + 3) == v9.i64[1];
    }
  }

  return result;
}

__n128 NUPixelRectConstrainToRect@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[2];
  v4 = a2[2];
  if (v3 <= v4)
  {
    v5 = a1[3];
    if (v5 <= a2[3])
    {
      v6 = *a2;
      if (*a1 >= *a2)
      {
        v7 = *a2;
        v6 = *a1;
      }

      else
      {
        *a1 = v6;
        v7 = *a2;
        v4 = a2[2];
      }

      v8 = v4 + v7;
      if (v6 + v3 > v8)
      {
        *a1 = v8 - v3;
      }

      v9 = a2[1];
      if (a1[1] >= v9)
      {
        v10 = a2[1];
        v9 = a1[1];
      }

      else
      {
        a1[1] = v9;
        v10 = a2[1];
      }

      v11 = v9 + v5;
      v12 = a2[3] + v10;
      if (v11 > v12)
      {
        a1[1] = v12 - v5;
      }
    }
  }

  result = *a1;
  v14 = *(a1 + 1);
  *a3 = *a1;
  a3[1] = v14;
  return result;
}

int64x2_t *NUPixelRectMaxCenteredInRect@<X0>(int64x2_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*result, vnegq_f64(v3)), vceqzq_s64(v2))))) & 1) == 0 || (v2.i64[0] ? (v4 = v2.i64[1] == 0) : (v4 = 1), v4))
  {
    *a2 = NUPixelRectNull;
    *(a2 + 16) = unk_1C03C4308;
  }

  else
  {
    if (v2.i64[0] >= v2.i64[1])
    {
      v5 = result[1].i64[1];
    }

    else
    {
      v5 = result[1].i64[0];
    }

    v6 = result[1];
    *a2 = *result;
    *(a2 + 16) = v6;
    if (v2.i64[1] <= v2.i64[0])
    {
      *a2 += (v2.i64[0] - v5) / 2;
      *(a2 + 16) = v5;
    }

    else
    {
      *(a2 + 8) += (v2.i64[1] - v5) / 2;
      *(a2 + 24) = v5;
    }
  }

  return result;
}

uint64_t NUPixelRectIntersectsRect(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return NU::RectT<long>::intersects(v6, v5);
}

__n128 NUPixelRectOffset@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1->n128_u64[1] + a3;
  a4->n128_u64[0] = a1->n128_u64[0] + a2;
  a4->n128_u64[1] = v4;
  result = a1[1];
  a4[1] = result;
  return result;
}

__n128 NUPixelRectSetOrigin@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a2;
  a4->n128_u64[1] = a3;
  result = a1[1];
  a4[1] = result;
  return result;
}

__n128 NUPixelRectFlipYOrigin@<Q0>(__n128 *a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2[3] + a2[1] - (a1->n128_u64[1] + a1[1].n128_u64[1]);
  a3->n128_u64[0] = a1->n128_u64[0] - *a2;
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  return result;
}

double NUPixelRectScale@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  NU::RectT<long>::scale(&v9, a2, a4, a5);
  result = *&v9;
  v8 = v10;
  *a3 = v9;
  a3[1] = v8;
  return result;
}

void *NU::RectT<long>::scale(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0)
  {
    v9 = NUAssertLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Negative x-scale values not supported"];
      *buf = 138543362;
      v39 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v23;
        v40 = 2114;
        v41 = v25;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::scale(CGFloat, CGFloat, NUPixelRoundingPolicy) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 289, @"Negative x-scale values not supported", v26, v27, v28, v29, v37);
  }

  if (a4 < 0.0)
  {
    v16 = NUAssertLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Negative y-scale values not supported"];
      *buf = 138543362;
      v39 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v30;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("void NU::RectT<long>::scale(CGFloat, CGFloat, NUPixelRoundingPolicy) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 290, @"Negative y-scale values not supported", v33, v34, v35, v36, v37);
  }

  v4 = *a1 * a3 + a1[2] * a3;
  v5 = a1[1] * a4 + a1[3] * a4;
  v6 = *a1 * a3;
  v7 = a1[1] * a4;

  return NU::RectT<long>::setXYMinMax(a1, a2, v6, v7, v4, v5);
}

double NUPixelRectScaleRational@<D0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int64x2_t *a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a1[1];
  v35 = *a1;
  v36 = v9;
  if (a2 < 1 || a3 <= 0)
  {
    v16 = NUAssertLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", a2, a3];
      v19 = [v17 stringWithFormat:@"Invalid scale: %@", v18];
      *buf = 138543362;
      v38 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v25;
        v39 = 2114;
        v40 = v27;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", a2, a3];
    _NUAssertFailHandler("void NU::RectT<long>::scale(NUScale, NUPixelRoundingPolicy) [T = long]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NURect.h", 302, @"Invalid scale: %@", v29, v30, v31, v32, v28);
  }

  v11 = v8.i64[1];
  v33 = v8;
  v34 = v9;
  v12 = NUScaleToDouble(a2, a3);
  v13 = vaddq_s64(v34, v33);
  NU::RectT<long>::setXYMinMax(&v35, a4, v12 * v33.i64[0], v12 * v11, v12 * v13.i64[0], v12 * v13.i64[1]);
  result = *v35.i64;
  v15 = v36;
  *a5 = v35;
  a5[1] = v15;
  return result;
}

double NUPixelRectInset@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  NU::RectT<long>::shrink(&v8, a2, a3);
  result = *&v8;
  v7 = v9;
  *a4 = v8;
  a4[1] = v7;
  return result;
}

uint64_t *NU::RectT<long>::shrink(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  NU::RectT<long>::setXMin(a1, *a1 + a2);
  NU::RectT<long>::setYMin(a1, a1[1] + a3);
  NU::RectT<long>::setXMax(a1, *a1 - a2 + a1[2]);
  v6 = a1[1] - a3 + a1[3];

  return NU::RectT<long>::setYMax(a1, v6);
}

double NUPixelRectErode@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  NU::RectT<long>::shrink(&v8, a2, a3);
  result = *&v8;
  v7 = v9;
  *a4 = v8;
  a4[1] = v7;
  return result;
}

double NUPixelRectDilate@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  NU::RectT<long>::grow(&v8, a2, a3);
  result = *&v8;
  v7 = v9;
  *a4 = v8;
  a4[1] = v7;
  return result;
}

uint64_t *NU::RectT<long>::grow(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  NU::RectT<long>::setXMin(a1, *a1 - a2);
  NU::RectT<long>::setYMin(a1, a1[1] - a3);
  NU::RectT<long>::setXMax(a1, *a1 + a2 + a1[2]);
  v6 = a1[1] + a3 + a1[3];

  return NU::RectT<long>::setYMax(a1, v6);
}

BOOL NUPixelPointInRect(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  v4 = a3[2] + *a3;
  if (a1 >= *a3)
  {
    v6 = __OFSUB__(a1, v4);
    v5 = a1 - v4 < 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v5 != v6)
  {
    v8 = __OFSUB__(a2, v3);
    v7 = a2 - v3 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v7 == v8 && a2 < a3[3] + v3;
}

uint64_t NUScaleToFitSizeInSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !a2)
  {
    return NUScaleUnknown;
  }

  if (NUScaleCompare(a3, a1, a4, a2) >= 0)
  {
    return a4;
  }

  return a3;
}

uint64_t NUScaleToFillSizeInSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !a2)
  {
    return NUScaleUnknown;
  }

  if (NUScaleCompare(a3, a1, a4, a2) <= 0)
  {
    return a4;
  }

  return a3;
}

uint64_t NUOrientationFromClockwiseRotation(uint64_t a1)
{
  if (a1 / -90 >= 0)
  {
    v1 = -((a1 / -90) & 3);
  }

  else
  {
    v1 = (a1 / 90) & 3;
  }

  return qword_1C03C4168[v1 + 3];
}

uint64_t NUOrientationToClockwiseRotationAndFlips(uint64_t a1, BOOL *a2)
{
  if (a1 <= 4)
  {
    if (a1 == 4)
    {
      v10 = 180;
    }

    else
    {
      v10 = 0;
    }

    v11 = a1 == 4;
    if (a1 == 3)
    {
      v12 = 180;
    }

    else
    {
      v12 = v10;
    }

    if (a1 == 3)
    {
      v11 = 0;
    }

    v13 = a1 == 2;
    if (a1 == 2)
    {
      result = 0;
    }

    else
    {
      result = v12;
    }

    v4 = v13 || v11;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 == 8)
    {
      v2 = 270;
    }

    else
    {
      v2 = 0;
    }

    if (a1 == 7)
    {
      v3 = 90;
    }

    else
    {
      v3 = v2;
    }

    v4 = a1 == 7;
    if (a1 == 6)
    {
      v5 = 90;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 5)
    {
      v6 = 270;
    }

    else
    {
      v6 = v5;
    }

    v7 = a1 == 5;
    v8 = a1 <= 6;
    if (a1 <= 6)
    {
      result = v6;
    }

    else
    {
      result = v3;
    }

    if (v8)
    {
      v4 = v7;
    }

    if (a2)
    {
LABEL_21:
      *a2 = v4;
    }
  }

  return result;
}

uint64_t NUOrientationInverse(uint64_t a1)
{
  v1 = 6;
  if (a1 != 8)
  {
    v1 = a1;
  }

  if (a1 == 6)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t NUOrientationConcat(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((a1 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    v3 = NUAssertLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "orientation1 >= 1 && orientation1 <= 8"];
      *buf = 138543362;
      v32 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = [MEMORY[0x1E696AF00] callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v17;
        v33 = 2114;
        v34 = v19;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("NUOrientation NUOrientationConcat(NUOrientation, NUOrientation)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometry.mm", 458, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "orientation1 >= 1 && orientation1 <= 8");
  }

  if ((a2 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    v10 = NUAssertLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "orientation2 >= 1 && orientation2 <= 8"];
      *buf = 138543362;
      v32 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v24;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("NUOrientation NUOrientationConcat(NUOrientation, NUOrientation)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometry.mm", 459, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "orientation2 >= 1 && orientation2 <= 8");
  }

  return NUOrientationConcat::m[8 * a1 - 9 + a2];
}

uint64_t NUOrientationTransformImageSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((a1 - 5) <= 3)
  {
    if ((a3 | a2) < 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
      [v6 handleFailureInFunction:v7 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
    }

    return a3;
  }

  return v4;
}

double NUOrientationTransformSize(uint64_t a1, double a2, double a3)
{
  if ((a1 - 5) >= 4)
  {
    return a2;
  }

  return a3;
}

uint64_t NUOrientationTransformImageOrigin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 - 5) >= 4)
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

double NUOrientationTransformVector(uint64_t a1, double result, double a3)
{
  if (a1 == 8)
  {
    v3 = -a3;
  }

  else
  {
    v3 = result;
  }

  if (a1 == 7)
  {
    v3 = a3;
  }

  v4 = -result;
  if (a1 == 6)
  {
    v5 = a3;
  }

  else
  {
    v5 = result;
  }

  if (a1 == 5)
  {
    v5 = -a3;
  }

  if (a1 <= 6)
  {
    v3 = v5;
  }

  if (a1 == 3)
  {
    result = -result;
  }

  if (a1 == 2)
  {
    result = v4;
  }

  if (a1 > 4)
  {
    return v3;
  }

  return result;
}

double NUOrientationTransformImagePoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  NUOrientationMakeTransformWithSizeAndOrigin(a1, a2, a3, a4, a5, &v10);
  *&result = vcvtq_s64_f64(vaddq_f64(v12, vmlaq_n_f64(vmulq_n_f64(v11, a7), v10, a6))).u64[0];
  return result;
}

CGAffineTransform *NUOrientationMakeTransformWithSizeAndOrigin@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a2;
  v9 = a3;
  if ((a1 - 5) >= 4)
  {
    v10 = a5;
  }

  else
  {
    v10 = a4;
  }

  if ((a1 - 5) >= 4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a5;
  }

  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeTranslation(&v20, -a4, -a5);
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeTranslation(&v19, v11, v10);
  v12 = xmmword_1C03C2760;
  if (a1 <= 4)
  {
    v13 = xmmword_1C03C28E0;
    switch(a1)
    {
      case 2:
        v14 = v8;
        goto LABEL_24;
      case 3:
        v12 = xmmword_1C03C28F0;
        v14 = v8;
        goto LABEL_25;
      case 4:
        v12 = xmmword_1C03C28F0;
        v13 = xmmword_1C03C2770;
        v14 = 0.0;
        goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      v12 = xmmword_1C03C2770;
      v13 = xmmword_1C03C2760;
      goto LABEL_23;
    }

    if (a1 == 8)
    {
      v12 = xmmword_1C03C28E0;
      v13 = xmmword_1C03C2760;
      v14 = v9;
LABEL_24:
      v9 = 0.0;
      goto LABEL_25;
    }

LABEL_19:
    v13 = xmmword_1C03C2770;
LABEL_23:
    v14 = 0.0;
    goto LABEL_24;
  }

  if (a1 == 5)
  {
    v12 = xmmword_1C03C28E0;
    v13 = xmmword_1C03C28F0;
    v14 = v9;
  }

  else
  {
    v12 = xmmword_1C03C2770;
    v13 = xmmword_1C03C28F0;
    v14 = 0.0;
  }

  v9 = v8;
LABEL_25:
  t1 = v20;
  memset(&v18, 0, sizeof(v18));
  *&v16.a = v13;
  *&v16.c = v12;
  v16.tx = v14;
  v16.ty = v9;
  CGAffineTransformConcat(&v18, &t1, &v16);
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  t1 = v18;
  v16 = v19;
  return CGAffineTransformConcat(a6, &t1, &v16);
}

double NUOrientationTransformPoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  NUOrientationMakeTransformWithSizeAndOrigin(a1, a2, a3, a4, a5, &v10);
  *&result = *&vaddq_f64(v12, vmlaq_n_f64(vmulq_n_f64(v11, a7), v10, a6));
  return result;
}

double NUOrientationTransformImageRect@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = a4[1];
  v9 = *a4;
  v10 = v6;
  NU::RectT<long>::applyOrientation(&v9, a1, a2, a3);
  result = *&v9;
  v8 = v10;
  *a5 = v9;
  a5[1] = v8;
  return result;
}

uint64_t *NU::RectT<long>::applyOrientation(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = result[2];
  v7 = result[3];
  if (a2 <= 4)
  {
    v17 = a3 - (v5 + v6);
    v18 = a4 - (v4 + v7);
    if (a2 == 4)
    {
      v19 = a4 - (v4 + v7);
    }

    else
    {
      v19 = result[1];
    }

    if (a2 == 3)
    {
      v5 = a3 - (v5 + v6);
    }

    else
    {
      v18 = v19;
    }

    if (a2 == 2)
    {
      v5 = v17;
    }

    else
    {
      v4 = v18;
    }
  }

  else
  {
    v8 = a4 - (v4 + v7);
    if (a2 == 8)
    {
      v9 = a4 - (v4 + v7);
    }

    else
    {
      v9 = *result;
    }

    if (a2 == 8)
    {
      v10 = *result;
    }

    else
    {
      v10 = result[1];
    }

    if (a2 == 8)
    {
      v11 = result[3];
    }

    else
    {
      v11 = result[2];
    }

    if (a2 == 8)
    {
      v12 = result[2];
    }

    else
    {
      v12 = result[3];
    }

    if (a2 == 7)
    {
      v9 = result[1];
      v10 = *result;
      v11 = result[3];
      v12 = result[2];
    }

    v13 = a3 - (v5 + v6);
    if (a2 == 6)
    {
      v5 = result[1];
      v4 = v13;
      v14 = result[3];
    }

    else
    {
      v14 = result[2];
    }

    if (a2 == 6)
    {
      v15 = result[2];
    }

    else
    {
      v15 = result[3];
    }

    if (a2 == 5)
    {
      v5 = v8;
      v4 = v13;
      v16 = result[2];
    }

    else
    {
      v7 = v14;
      v16 = v15;
    }

    if (a2 <= 6)
    {
      v6 = v7;
    }

    else
    {
      v5 = v9;
      v4 = v10;
      v6 = v11;
    }

    if (a2 <= 6)
    {
      v7 = v16;
    }

    else
    {
      v7 = v12;
    }
  }

  *result = v5;
  result[1] = v4;
  result[2] = v6;
  result[3] = v7;
  return result;
}

double NUOrientationTransformRect(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v16.origin.x = a4;
  v16.origin.y = a5;
  v16.size.width = a6;
  v16.size.height = a7;
  NU::RectT<double>::RectT(&v12, &v16);
  result = v12;
  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      result = a2 - (v12 + v14);
    }

    if (a1 == 2)
    {
      return a2 - (v12 + v14);
    }
  }

  else
  {
    if (a1 == 8)
    {
      v11 = a3 - (v13 + v15);
    }

    else
    {
      v11 = v12;
    }

    if (a1 == 7)
    {
      v11 = v13;
    }

    if (a1 == 6)
    {
      result = v13;
    }

    if (a1 == 5)
    {
      result = a3 - (v13 + v15);
    }

    if (a1 > 6)
    {
      return v11;
    }
  }

  return result;
}

uint64_t NUAffineTransformOrientation(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = llround(a1[2] * 180.0 / 3.14159265) / -90;
  v4 = v3 & 3;
  v6 = -v3;
  v5 = v6 < 0;
  v7 = v6 & 3;
  if (v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = -v7;
  }

  v9 = qword_1C03C4168[v8 + 3];
  v10 = 4;
  if (v2 >= 0.0)
  {
    v10 = 1;
  }

  v11 = 3;
  if (v2 >= 0.0)
  {
    v11 = 2;
  }

  if (v1 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  return NUOrientationConcat(v9, v12);
}

uint64_t NUOrientationFromCGAffineTransform(_OWORD *a1)
{
  v2 = a1[1];
  *&v6.a = *a1;
  *&v6.c = v2;
  *&v6.tx = a1[2];
  if (CGAffineTransformIsIdentity(&v6))
  {
    return 1;
  }

  v4 = a1[1];
  *&v6.a = *a1;
  *&v6.c = v4;
  *&v6.tx = a1[2];
  NUDecomposeAffineTransform(&v6, v5);
  return NUAffineTransformOrientation(v5);
}

__n128 NUDecomposeAffineTransform@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_f64[0];
  v5 = a1[1].n128_f64[0];
  v6 = hypot(a1->n128_f64[0], v5);
  v7 = a1->n128_f64[1];
  v8 = a1[1].n128_f64[1];
  v9 = hypot(v7, v8);
  v10 = v4 * v8 - v7 * v5;
  v11 = v10 < 0.0;
  if (v10 <= 0.0)
  {
    v12 = 0.0;
    if (!v11)
    {
      goto LABEL_13;
    }

    if (fabs(v4) >= 0.00001 || fabs(v8) >= 0.00001)
    {
      if (v4 >= 0.0)
      {
LABEL_12:
        v12 = atan2(-v7 - v5, v4 - v8);
        v9 = -v9;
        goto LABEL_13;
      }

      v13 = v5 + v7;
    }

    else
    {
      v13 = v5 + v7;
      if (v5 + v7 <= 0.0)
      {
        goto LABEL_12;
      }
    }

    v12 = atan2(v13, v8 - v4);
    v6 = -v6;
    goto LABEL_13;
  }

  v12 = atan2(v7 - v5, v4 + v8);
LABEL_13:
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  result = a1[2];
  *(a2 + 24) = result;
  return result;
}

uint64_t NUOrientationTransformRectVertex(uint64_t a1, unsigned int a2)
{
  v2 = __rbit32(a2) >> 30;
  v3 = a2 ^ 2;
  v4 = __rbit32(a2 ^ 2) >> 30;
  if (a1 != 8)
  {
    v4 = a2;
  }

  if (a1 != 7)
  {
    v2 = v4;
  }

  v5 = __rbit32(~a2) >> 30;
  v6 = __rbit32(a2 ^ 1) >> 30;
  if (a1 != 6)
  {
    v6 = a2;
  }

  if (a1 != 5)
  {
    v5 = v6;
  }

  if (a1 <= 6)
  {
    v2 = v5;
  }

  if (a1 != 4)
  {
    v3 = a2;
  }

  if (a1 == 3)
  {
    v3 = a2 ^ 3;
  }

  if (a1 == 2)
  {
    v3 = a2 ^ 1;
  }

  if (a1 <= 4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

double NUConvertImageRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, double a11, double a12)
{
  v20 = a11 / a7;
  v21 = a12 / a8;
  v24 = CGRectOffset(*&a1, -a5, -a6);
  v24.origin.x = v20 * v24.origin.x;
  v24.origin.y = v21 * v24.origin.y;
  v24.size.width = v20 * v24.size.width;
  v24.size.height = v21 * v24.size.height;
  v25 = CGRectStandardize(v24);

  *&result = CGRectOffset(v25, a9, a10);
  return result;
}

double NUMultiplyRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7.origin.x = a1 * a5;
  v7.origin.y = a2 * a6;
  v7.size.width = a3 * a5;
  v7.size.height = a4 * a6;
  *&result = CGRectStandardize(v7);
  return result;
}

double NUPixelRectVertex(char a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    MaxX = CGRectGetMaxX(*&a2);
  }

  else
  {
    MaxX = CGRectGetMinX(*&a2);
  }

  v11 = MaxX;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((a1 & 2) != 0)
  {
    CGRectGetMaxY(*&v12);
  }

  else
  {
    CGRectGetMinY(*&v12);
  }

  return v11;
}

CGFloat NUAlignRectToPixelGrid@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v10 = a1;
  v11 = a2;
  v12 = 1.0 / a1;
  v13 = 1.0 / a2;
  v18.origin.x = a5 * v12;
  v18.origin.y = a6 * v13;
  v18.size.width = a7 * v12;
  v18.size.height = a8 * v13;
  v17 = CGRectStandardize(v18);
  NU::RectT<long>::RectT(&v16, &v17, a3);
  v17 = v16;
  NU::RectT<long>::scale(&v17, 2, v10, v11);
  result = v17.origin.x;
  size = v17.size;
  *a4 = v17.origin;
  *(a4 + 16) = size;
  return result;
}

double NURelativePointInRect(double a1, double a2, double a3, double a4, double a5)
{
  result = 0.0;
  if (a5 != 0.0)
  {
    return (a1 - a3) / a5;
  }

  return result;
}

double NUPixelPointClipToRect(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  v11 = fmax(a1, CGRectGetMinX(v14));
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  v12 = fmin(v11, CGRectGetMaxX(v15));
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetMinY(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetMaxY(v17);
  return v12;
}

double NUAnchorPointFromRectToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  result = 0.5;
  if (vabdd_f64(a7, a3) > 0.00000011920929)
  {
    return -(a5 - a1) / (a7 - a3);
  }

  return result;
}

double NUScaleRect(double a1, double a2, double a3, double a4, double a5)
{
  v6.origin.x = a1 * a5;
  v6.origin.y = a2 * a5;
  v6.size.width = a3 * a5;
  v6.size.height = a4 * a5;
  *&result = CGRectStandardize(v6);
  return result;
}

double NURectFlipYOrigin(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  v16 = MinX - CGRectGetMinX(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetMaxY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMaxY(v21);
  return v16;
}

double NUResizeRectByMovingRelativePoint(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a1 + a9 * a3;
  if (a5 != a9)
  {
    a3 = (a1 + a5 * a3 + a7 - v16) / (a5 - a9);
  }

  return v16 - a9 * a3;
}

double NUPixelRectEnforceMinimumSizeAndAspectRatio(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a1 | a2 && a7 * a2 < a8 * a1)
  {
    v9 = a1 / a2;
    v10 = INFINITY;
    if (!a1)
    {
      v10 = NAN;
    }

    if (!a2)
    {
      v9 = v10;
    }

    a7 = a8 * v9;
  }

  return fmin(a3, a3 + a9 * (a5 - a7));
}

double NUAspectRatioValue(uint64_t a1, uint64_t a2)
{
  result = a1 / a2;
  v3 = INFINITY;
  if (!a1)
  {
    v3 = NAN;
  }

  if (!a2)
  {
    return v3;
  }

  return result;
}

double NUPixelRectAspectConstrain(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!(a1 | a2))
  {
    v11 = NUAssertLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUAspectRatioIsUndefined(ratio)"];
      *buf = 138543362;
      v26 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v18;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("CGRect NUPixelRectAspectConstrain(CGRect, CGPoint, NUAspectRatio, CGPoint)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometry.mm", 1045, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "!NUAspectRatioIsUndefined(ratio)");
  }

  return a3 + a9 * a5 - a9 * (((a4 + a8 * a6 - (a4 + a10 * a6)) * ((a8 - a10) * a2) + (a3 + a7 * a5 - (a3 + a9 * a5)) * ((a7 - a9) * a1)) / ((a8 - a10) * a2 * ((a8 - a10) * a2) + (a7 - a9) * a1 * ((a7 - a9) * a1)) * a1);
}

CGFloat NUPixelRectResizeToFitInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v38.size.width = a11;
  v22 = a1 + a5 * a3;
  v37 = v22;
  rect_24 = a2 + a6 * a4;
  v38.origin.x = a9;
  v38.origin.y = a10;
  v38.size.height = a12;
  v23 = v22 - CGRectGetMinX(v38);
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  v33 = v23 / (a5 * CGRectGetWidth(v39));
  v40.origin.x = a9;
  v40.origin.y = a10;
  v40.size.width = a11;
  v40.size.height = a12;
  MinY = CGRectGetMinY(v40);
  v41.size.width = a3;
  v31 = rect_24 - MinY;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.height = a4;
  v32 = v31 / (a6 * CGRectGetHeight(v41));
  v42.origin.x = a9;
  v42.origin.y = a10;
  v42.size.width = a11;
  v42.size.height = a12;
  v29 = CGRectGetMaxX(v42) - v37;
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  Width = CGRectGetWidth(v43);
  v44.origin.y = a10;
  v30 = v29 / ((1.0 - a5) * Width);
  v44.origin.x = a9;
  v44.size.width = a11;
  v44.size.height = a12;
  v26 = CGRectGetMaxY(v44) - rect_24;
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  return v37 - a5 * (a3 * fmin(fmin(v33, v30), fmin(v32, v26 / ((1.0 - a6) * CGRectGetHeight(v45)))));
}

double NUPixelRectDenormalize@<D0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, float64x2_t a4@<Q0>, float64_t a5@<D1>, float64x2_t a6@<Q2>, float64_t a7@<D3>)
{
  a6.f64[1] = a7;
  v8 = vcvtq_f64_s64(a1[1]);
  a4.f64[1] = a5;
  v12.origin = vmlaq_f64(vcvtq_f64_s64(*a1), v8, a4);
  v12.size = vmulq_f64(a6, v8);
  NU::RectT<long>::RectT(v11, &v12, a2);
  result = *v11;
  v10 = v11[1];
  *a3 = v11[0];
  a3[1] = v10;
  return result;
}

BOOL NUAspectRatioIsEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 | a4)
  {
    v4 = a4 * a1 == a3 * a2;
  }

  else
  {
    v4 = (a1 | a2 | a3 | a4) == 0;
  }

  if (a1 | a2)
  {
    return v4;
  }

  else
  {
    return (a1 | a2 | a3 | a4) == 0;
  }
}

uint64_t NUAspectRatioWithOrientation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 5) >= 4)
  {
    return a1;
  }

  return a2;
}

uint64_t NUAspectRatioConstrain(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  v6 = a2;
  v7 = a3 / a4;
  if (a5 == 1)
  {
    if (v5 / v6 <= v7)
    {
      if (v6 / v5 > v7)
      {
        return vcvtpd_s64_f64(v6 / v7);
      }
    }

    else
    {
      return vcvtmd_s64_f64(v7 * v6);
    }
  }

  return result;
}

uint64_t NUAspectRatioCompare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 / a2;
  v5 = INFINITY;
  if (!a1)
  {
    v5 = NAN;
  }

  if (!a2)
  {
    v4 = v5;
  }

  v6 = a3 / a4;
  v7 = INFINITY;
  if (!a3)
  {
    v7 = NAN;
  }

  if (!a4)
  {
    v6 = v7;
  }

  if (v4 < v6)
  {
    return -1;
  }

  else
  {
    return v4 > v6;
  }
}

double NUExtractRotationFromStraightenAffineTransform(__n128 *a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  NUDecomposeAffineTransform(v3, &v4);
  result = *&v5 * 180.0 / 3.14159265;
  if (result < 0.0)
  {
    return result + 360.0;
  }

  return result;
}

double NUConvertCropRectWithStraightenAffineTransform(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = a1[1];
  *&v21.a = *a1;
  *&v21.c = v11;
  *&v21.tx = a1[2];
  *&v11 = a7;
  v13 = -_NUOffsetFromDGCropToCICropWithTransform(&v21, *(&v11 - 8));
  v15 = -v14;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;

  *&result = CGRectOffset(*&v16, v13, v15);
  return result;
}

double _NUOffsetFromDGCropToCICropWithTransform(CGAffineTransform *a1, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  v4 = *&a1->c;
  *&v7.a = *&a1->a;
  *&v7.c = v4;
  *&v7.tx = *&a1->tx;
  v5 = 0;
  *&v4 = 0;
  v8 = CGRectApplyAffineTransform(*(&height - 3), &v7);
  *&result = CGRectIntegral(v8);
  return result;
}

double NUConvertCICropRectToDGCropRect(double a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  memset(&v21, 0, sizeof(v21));
  NUStraightenAffineTransformWithRadians(&v21, a5 * 3.14159265 / 180.0, a6, a7);
  v23.width = a6;
  v23.height = a7;
  v13 = -_NUOffsetFromDGCropToCICropWithTransform(&v21, v23);
  v15 = -v14;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;

  *&result = CGRectOffset(*&v16, v13, v15);
  return result;
}

CGFloat NUStraightenAffineTransformWithRadians@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>)
{
  v8 = MEMORY[0x1E695EFD0];
  v9 = *MEMORY[0x1E695EFD0];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v10;
  v11 = *(v8 + 32);
  *(a1 + 32) = v11;
  *&v26.a = v9;
  *&v26.c = v10;
  *&v26.tx = v11;
  *&v9 = 0;
  *&v10 = 0;
  *&v11 = a3;
  v12 = a4;
  MidX = CGRectGetMidX(*&v9);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = a3;
  v27.size.height = a4;
  MidY = CGRectGetMidY(v27);
  CGAffineTransformTranslate(a1, &v26, MidX, MidY);
  v15 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v15;
  *&v25.tx = *(a1 + 32);
  CGAffineTransformRotate(&v26, &v25, a2);
  v16 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v16;
  *(a1 + 32) = *&v26.tx;
  v17 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v17;
  *&v25.tx = *(a1 + 32);
  v18 = 0;
  *&v17 = 0;
  v19 = a3;
  v20 = a4;
  v21 = -CGRectGetMidX(*(&v17 - 8));
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = a3;
  v28.size.height = a4;
  v22 = CGRectGetMidY(v28);
  CGAffineTransformTranslate(&v26, &v25, v21, -v22);
  v23 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v23;
  result = v26.tx;
  *(a1 + 32) = *&v26.tx;
  return result;
}

double NUConvertDGCropRectToCICropRect(double a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  memset(&v21, 0, sizeof(v21));
  NUStraightenAffineTransformWithRadians(&v21, a5 * 3.14159265 / 180.0, a6, a7);
  v23.width = a6;
  v23.height = a7;
  v13 = _NUOffsetFromDGCropToCICropWithTransform(&v21, v23);
  v15 = v14;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;

  *&result = CGRectOffset(*&v16, v13, v15);
  return result;
}

double _rectWithAspectRatio(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = vcvtmd_s64_f64(sqrt(a6 * (a5 * a7) * a2 / a1) + 0.5);
  v8 = v7 | 1;
  v9 = (v7 & 1) + v7;
  if (vcvtmd_s64_f64(a6))
  {
    v9 = v8;
  }

  v10 = vcvtmd_s64_f64(a5);
  v11 = vcvtmd_s64_f64(floor(a1 * v9 / a2) + 0.5);
  v12 = v11 | 1;
  v13 = (v11 & 1) + v11;
  if (v10)
  {
    v13 = v12;
  }

  return a3 - vcvts_n_f32_s32(v13 - v10, 1uLL);
}

__n128 NURecomposeAffineTransform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __sincos_stret(*(a1 + 16));
  v4.f64[0] = v5.__cosval;
  v6 = *a1;
  v7.f64[0] = -*a1;
  v7.f64[1] = v5.__cosval;
  v4.f64[1] = v5.__sinval;
  v6.f64[0] = v5.__sinval;
  *a2 = vmulq_f64(*a1, v4);
  *(a2 + 16) = vmulq_f64(v7, v6);
  result = *(a1 + 24);
  *(a2 + 32) = result;
  return result;
}