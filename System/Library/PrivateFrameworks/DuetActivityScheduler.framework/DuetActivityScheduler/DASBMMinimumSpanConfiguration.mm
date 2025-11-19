@interface DASBMMinimumSpanConfiguration
@end

@implementation DASBMMinimumSpanConfiguration

id __75___DASBMMinimumSpanConfiguration_publisherWithSpansMeetingMinimumDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) aggregationKeyBlock];
  v5 = (v4)[2](v4, v3);

  if (v5)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
    }

    v7 = [*(a1 + 32) spanMarkerBlock];
    v8 = (v7)[2](v7, v3);

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E698F0F8]) initWithFirst:v3 second:0];
      [v6 addObject:v9];
    }

    else
    {
      v9 = [v6 lastObject];
      [v6 removeLastObject];
      v12 = objc_alloc(MEMORY[0x1E698F0F8]);
      v13 = [v9 first];
      v14 = [v12 initWithFirst:v13 second:v3];
      [v6 addObject:v14];
    }

    v11 = [v6 lastObject];
  }

  else
  {
    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __75___DASBMMinimumSpanConfiguration_publisherWithSpansMeetingMinimumDuration___block_invoke_cold_1(v3, v10);
    }

    v11 = [objc_alloc(MEMORY[0x1E698F0F8]) initWithFirst:0 second:0];
  }

  return v11;
}

BOOL __75___DASBMMinimumSpanConfiguration_publisherWithSpansMeetingMinimumDuration___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  if (v4 && (v5 = v4, [v3 second], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 second];
    [v7 timestamp];
    v9 = v8;
    v10 = [v3 first];
    [v10 timestamp];
    v12 = v9 - v11;

    [*(a1 + 32) minimumSpanDuration];
    v14 = v12 >= v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke_cold_1(a1, v3);
    }
  }
}

void __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke_11(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = *(*(*(a1 + 32) + 8) + 40);
        v15 = [v13 first];
        [v14 addObject:v15];

        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = [v13 second];
        [v16 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 dateFromAbsoluteTime:?];
  v7 = MEMORY[0x1E695DF00];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 dateFromAbsoluteTime:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __78___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_heap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke_cold_1(a1, v3);
    }
  }
}

void __78___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_heap___block_invoke_16(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  if ((v4 & 0x4000000000000000) != 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = 2 * v4;
  }

  if (v5 == -1)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_heap___block_invoke_16_cold_2(v6, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = CFBinaryHeapCreate(*MEMORY[0x1E695E480], v5, &_DASBinaryHeapBiomeStoreEventCallbacks, 0);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v6 = v3;
      v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v32;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v31 + 1) + 8 * i);
            v12 = *(*(*(a1 + 40) + 8) + 24);
            v13 = [v11 first];
            CFBinaryHeapAddValue(v12, v13);

            v14 = *(*(*(a1 + 40) + 8) + 24);
            v15 = [v11 second];
            CFBinaryHeapAddValue(v14, v15);
          }

          v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v6 = [*(a1 + 32) log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __78___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_heap___block_invoke_16_cold_1(v6, v23, v24, v25, v26, v27, v28, v29);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __78___DASBMMinimumSpanConfiguration_deriveSpanTuplesWithMinimumDurationOnStream___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke_cold_1(a1, v3);
    }
  }
}

uint64_t __78___DASBMMinimumSpanConfiguration_deriveSpanTuplesWithMinimumDurationOnStream___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __78___DASBMMinimumSpanConfiguration_deriveSpanTuplesWithMinimumDurationOnStream___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [a2 first];
  [v6 timestamp];
  v7 = [v4 dateFromAbsoluteTime:?];

  v8 = MEMORY[0x1E695DF00];
  v9 = [v5 first];

  [v9 timestamp];
  v10 = [v8 dateFromAbsoluteTime:?];

  v11 = [v7 compare:v10];
  return v11;
}

void __75___DASBMMinimumSpanConfiguration_publisherWithSpansMeetingMinimumDuration___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_ERROR, "nil key returned for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_2_0(a1 a2)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1B6E2F000, v4, v5, "Failed to open sink for %@: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end