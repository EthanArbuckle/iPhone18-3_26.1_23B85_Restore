@interface BulkPositionIterator
@end

@implementation BulkPositionIterator

void __BulkPositionIterator_Step_Compressed_block_invoke(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  makeThreadId();
  v3 = *(a1 + 40);
  v58 = *(a1 + 32);
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  v57 = 1;
  if (*(v3 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(*(v3 + 64), sIndexExceptionCallbacks, v3, 0x20000000, add_explicit + 1);
    v55 = HIDWORD(v5);
    v56 = v5;
    v53 = v7;
    v54 = v6;
    v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    *(v8 + 216) = 0;
    v9 = *(v8 + 312);
    v10 = *(v8 + 224);
    v11 = v8;
    if (v10)
    {
      v10(*(v8 + 288));
    }

    if (_setjmp(v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v11 + 312) = v9;
      if ((~*(v11 + 212) & 0xA0000000) == 0)
      {
        v12 = *(v11 + 288);
        if (v12)
        {
          _CIMakeInvalid(v12);
        }
      }

      CIOnThreadCleanUpReset(v53);
      dropThreadId(v56, 1, add_explicit + 1);
      CICleanUpReset(v56, v54);
    }

    else
    {
      v13 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v14 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v13 + 1);
      v51 = HIDWORD(v14);
      v52 = v14;
      v49 = v16;
      v50 = v15;
      v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
      v18 = *(v17 + 312);
      v19 = *(v17 + 224);
      if (v19)
      {
        v19(*(v17 + 288));
      }

      if (_setjmp(v17))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v17 + 312) = v18;
        CIOnThreadCleanUpReset(v49);
        dropThreadId(v52, 1, v13 + 1);
        CICleanUpReset(v52, v50);
      }

      else
      {
        v45 = v18;
        v46 = v13;
        v47 = v9;
        v48 = add_explicit;
        v43 = mach_absolute_time();
        v20 = atomic_fetch_add_explicit(*(a1 + 48), 1u, memory_order_relaxed);
        if (v20 >= *(a1 + 160))
        {
          v29 = 0;
          v30 = 0;
        }

        else
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = 0;
            v24 = *(*(a1 + 64) + 8 * v20);
            v25 = *(a1 + 120) + 392 * a2;
            do
            {
              v26 = PositionIterate_Compressed(v24, &v58, v25 + 24, *(a1 + 128), *(a1 + 164), *(a1 + 168), *(a1 + 136));
              v27 = ++v23;
            }

            while (v26 == 1);
            if (v27 <= v22)
            {
              v28 = v22;
            }

            else
            {
              v28 = v27;
            }

            if (v26 == 2)
            {
              *(*(a1 + 144) + v20) = 1;
            }

            v29 = v27 + v21;
            v20 = atomic_fetch_add_explicit(*(a1 + 48), 1u, memory_order_relaxed);
            v22 = v28;
            v30 = v28;
            v21 = v29;
          }

          while (v20 < *(a1 + 160));
        }

        v31 = v30;
        v57 = 0;
        v32 = mach_absolute_time();
        if (timingNanosecondsSinceAbsoluteTime_onceToken[0] != -1)
        {
          dispatch_once(timingNanosecondsSinceAbsoluteTime_onceToken, &__block_literal_global_85);
        }

        v33 = (v32 - v43) * timingNanosecondsSinceAbsoluteTime_sTimebaseInfo / *algn_1EBF479E4;
        if (v33 > 0x3B9AC9FF)
        {
          v34 = *__error();
          v35 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = **(a1 + 136);
            *buf = 134219264;
            v37 = *(a1 + 160);
            v63 = v33 / 1000000000.0;
            v64 = 2048;
            v65 = v33;
            v66 = 1024;
            v67 = v37;
            v68 = 2048;
            v69 = v29;
            v70 = 2048;
            v71 = v31;
            v72 = 1024;
            v73 = v36;
            _os_log_impl(&dword_1C278D000, v35, OS_LOG_TYPE_DEFAULT, "It took %.1fs(%llu ns) to iterate %u loops with total %llu. maxIterSteps:%llu canceled:%d", buf, 0x36u);
          }

          *__error() = v34;
        }

        v38 = threadData[9 * v52 + 1] + 320 * v51;
        *(v38 + 312) = v45;
        v39 = *(v38 + 232);
        if (v39)
        {
          v39(*(v38 + 288));
        }

        dropThreadId(v52, 0, v46 + 1);
        v9 = v47;
        add_explicit = v48;
      }

      v40 = threadData[9 * v56 + 1] + 320 * v55;
      *(v40 + 312) = v9;
      v41 = *(v40 + 232);
      if (v41)
      {
        v41(*(v40 + 288));
      }

      dropThreadId(v56, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  if (v57 == 1)
  {
    **(a1 + 152) = 1;
  }

  CIIndexSetDisposePerThreadCache(&v58);
  v42 = *MEMORY[0x1E69E9840];
}

@end