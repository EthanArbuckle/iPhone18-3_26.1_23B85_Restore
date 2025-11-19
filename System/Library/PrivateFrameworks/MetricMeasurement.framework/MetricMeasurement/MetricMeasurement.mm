void sub_258DABFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_258DAC148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258DAC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_258DAC84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_258DACB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_258DACCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_258DACEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_258DAD074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_258DAD208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_258DB305C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MXMGetLog()
{
  if (_MXMGetLog_onceToken != -1)
  {
    _MXMGetLog_cold_1();
  }

  return _MXMGetLog__defaultLogger;
}

uint64_t _MXMGetInstrumentsLog()
{
  if (_MXMGetInstrumentsLog_onceToken != -1)
  {
    _MXMGetInstrumentsLog_cold_1();
  }

  return _MXMGetInstrumentsLog__instrumentsLogger;
}

void sub_258DB79AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_258DB86EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258DB9F3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_258DBB968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258DBBE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258DC0984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a30);
  _Unwind_Resume(a1);
}

void sub_258DC1408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MXMRunBlockIteration(uint64_t a1)
{
  v2 = _MXMGetLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_258DAA000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration", &unk_258DCCD8F, buf, 2u);
  }

  if (!*(a1 + 40) && !*(a1 + 16))
  {
    v5 = *(a1 + 32) != 1 || *(a1 + 24) != 1;
    v6 = *(a1 + 128);
    if (!v6)
    {
      goto LABEL_14;
    }

    if (!*(a1 + 136))
    {
      v5 = 1;
    }

    if (v5)
    {
LABEL_14:
      v7 = _MXMGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v3 = 2;
        _os_log_impl(&dword_258DAA000, v7, OS_LOG_TYPE_ERROR, "Bad state detected for iteration structure.", buf, 2u);
      }

      else
      {
        v3 = 2;
      }

LABEL_43:

      return v3;
    }

    v7 = v6;
    v8 = *(a1 + 136);
    v9 = *(a1 + 144);
    if (v9)
    {
      v10 = v9;
    }

    v11 = _Block_copy(v9);
    *(a1 + 16) = MEMORY[0x259C9CA80]();
    if (*(a1 + 120))
    {
      *(a1 + 24) = 2;
      v12 = [v7 _transitionWithState:1 iteration:a1 instrumentals:v8];
      dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    memset(buf, 0, sizeof(buf));
    v28 = 0uLL;
    v13 = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = mach_continuous_time();
    v16 = mach_absolute_time();
    thread_selfcounts();
    if (*(a1 + 120))
    {
      *(a1 + 40) = v16;
      *(a1 + 88) = *buf;
      *(a1 + 56) = v15;
      *(a1 + 72) = v14;
      v17 = _MXMGetInstrumentsLog();
      if (os_signpost_enabled(v17))
      {
        *v27 = 0;
        _os_signpost_emit_with_name_impl(&dword_258DAA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration_User_Work", "isAnimation=YES ", v27, 2u);
      }
    }

    v11[2](v11);
    if ((*(a1 + 120) & 2) != 0)
    {
      v18 = _MXMGetInstrumentsLog();
      if (os_signpost_enabled(v18))
      {
        *v27 = 0;
        _os_signpost_emit_with_name_impl(&dword_258DAA000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration_User_Work", "isAnimation=YES ", v27, 2u);
      }
    }

    thread_selfcounts();
    v19 = mach_absolute_time();
    v20 = mach_continuous_time();
    v21 = [MEMORY[0x277CBEAA8] date];
    objc_autoreleasePoolPop(v13);
    v22 = *(a1 + 120);
    if (v22)
    {
      if ((v22 & 2) == 0)
      {
        if (*(a1 + 80))
        {
          v3 = 0;
        }

        else
        {
          v3 = 5;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (!*(a1 + 72))
      {
        v3 = 5;
        goto LABEL_40;
      }

      if ((v22 & 2) == 0)
      {
LABEL_38:
        v3 = 0;
LABEL_40:

        v26 = _MXMGetLog();
        if (os_signpost_enabled(v26))
        {
          *v27 = 0;
          _os_signpost_emit_with_name_impl(&dword_258DAA000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration", &unk_258DCCD8F, v27, 2u);
        }

        goto LABEL_43;
      }
    }

    *(a1 + 104) = v28;
    *(a1 + 48) = v19;
    *(a1 + 80) = v21;
    *(a1 + 64) = v20;
    v23 = [v7 _transitionWithState:2 iteration:a1 instrumentals:v8];
    v24 = [v7 _transitionWithState:3 iteration:a1 instrumentals:v8];
    v25 = [v7 _transitionWithState:4 iteration:a1 instrumentals:v8];
    dispatch_group_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_38;
  }

  return 1;
}

void __MXMQuiesceBeforeIteration_block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 8) = a2;
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 6;
    [*(a1 + 32) setActive:0];
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Did not quiesce within time limit to specified cpu idle percentage." userInfo:0];
    objc_exception_throw(v6);
  }
}

void __MXMUncacheBeforeIteration_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = _MXMGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_258DAA000, v2, OS_LOG_TYPE_ERROR, "Unable to uncache before iteration. See error logs for more details.", v3, 2u);
    }
  }
}

void __MXMTerminateBeforeIteration_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = _MXMGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_258DAA000, v2, OS_LOG_TYPE_ERROR, "Unable to terminate processes before iteration. See error logs for more details.", v3, 2u);
    }
  }
}

void __MXMStartPerformanceTraceCollection_block_invoke(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = _MXMGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v11;
LABEL_10:
      _os_log_impl(&dword_258DAA000, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    v12 = _MXMGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v10;
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v9)
  {
    v12 = _MXMGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_12:
  *(*(*(a1 + 32) + 8) + 24) = a2 ^ 1u;

  v13 = *MEMORY[0x277D85DE8];
}

void __MXMStartFunctionCoverageCollection_block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = _MXMGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
LABEL_7:
      _os_log_impl(&dword_258DAA000, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v10 = _MXMGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v9;
      goto LABEL_7;
    }

LABEL_8:
  }

  *(*(*(a1 + 32) + 8) + 24) = a2 ^ 1u;

  v11 = *MEMORY[0x277D85DE8];
}

void __MXMStopPerformanceTraceCollection_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  objc_storeStrong((*(a1 + 32) + 24), a2);
  objc_storeStrong((*(a1 + 32) + 40), a3);
  v23 = *(a1 + 32);
  if (!*(v23 + 24) || !*(v23 + 40))
  {
    if (v21)
    {
      v25 = _MXMGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        v28 = v21;
LABEL_19:
        _os_log_impl(&dword_258DAA000, v25, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
      }
    }

    else if (v19)
    {
      v25 = _MXMGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        v28 = v19;
        goto LABEL_19;
      }
    }

    else if (v22)
    {
      v25 = _MXMGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        v28 = v22;
        goto LABEL_19;
      }
    }

    else if (v20)
    {
      v25 = _MXMGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        v28 = v20;
        goto LABEL_19;
      }
    }

    else
    {
      if (!v18)
      {
LABEL_21:
        v24 = 3;
        goto LABEL_22;
      }

      v25 = _MXMGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        v28 = v18;
        goto LABEL_19;
      }
    }

    goto LABEL_21;
  }

  v24 = 2;
LABEL_22:
  *(*(*(a1 + 40) + 8) + 24) = v24;

  v26 = *MEMORY[0x277D85DE8];
}

void __MXMStopFunctionCoverageCollection_block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((a1[4] + 48), a2);
  if (v7)
  {
    v8 = _MXMGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_258DAA000, v8, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
    }

    *(*(a1[5] + 8) + 24) = 3;
    v9 = *(a1[6] + 8);
    v10 = 1;
  }

  else
  {
    v11 = *(a1[5] + 8);
    if (*(a1[4] + 48))
    {
      *(v11 + 24) = 2;
      goto LABEL_8;
    }

    *(v11 + 24) = 3;
    v9 = *(a1[6] + 8);
    v10 = 2;
  }

  *(v9 + 24) = v10;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}