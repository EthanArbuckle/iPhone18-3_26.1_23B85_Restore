id _SanitizeError(void *a1, char a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _SanitizeError_cold_1();
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D05640];
    v20 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid error type: %@", objc_opt_class(), v20];
    v21[0] = v9;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v12 errorWithDomain:v13 code:1401 userInfo:v14];
    goto LABEL_21;
  }

  v4 = [v3 underlyingErrors];
  v5 = [v4 count];

  if (a2)
  {
    if (v5 >= 2)
    {
      v6 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _SanitizeError_cold_3(v3);
      }
    }

    v7 = [v3 underlyingErrors];
    v8 = [v7 firstObject];
    v9 = _SanitizeError(v8, 0);
  }

  else
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_18;
    }

    v7 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _SanitizeError_cold_2(v3);
    }

    v9 = 0;
  }

LABEL_18:
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [v3 localizedDescription];
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v9)
  {
    [v14 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v16 = objc_alloc(MEMORY[0x277CCA9B8]);
  v17 = [v3 domain];
  v10 = [v16 initWithDomain:v17 code:objc_msgSend(v3 userInfo:{"code"), v14}];

LABEL_21:
LABEL_22:

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2577D12F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _SanitizeError_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void _SanitizeError_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 underlyingErrors];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void _SanitizeError_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 underlyingErrors];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}