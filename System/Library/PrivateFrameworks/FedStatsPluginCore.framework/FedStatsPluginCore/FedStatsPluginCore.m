void sub_24AB26274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_24AB2799C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24AB2D0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t checkDediscoV2Params(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a1 objectForKey:*MEMORY[0x277D05378]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:*MEMORY[0x277D05380]];
    v6 = v5;
    if (v5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            if ([*(*(&v15 + 1) + 8 * i) containsString:{@"apple", v15}])
            {
              if (a2)
              {
                [FedStatsPluginError errorWithCode:100 description:@"Helper in Dedisco Server configuration cannot be 1st party."];
                *a2 = v12 = 0;
              }

              else
              {
                v12 = 0;
              }

              goto LABEL_20;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v12 = 1;
LABEL_20:
    }

    else if (a2)
    {
      [FedStatsPluginError errorWithCode:100 description:@"Dedisco Server configuration is missing helper servers."];
      *a2 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (a2)
  {
    [FedStatsPluginError errorWithCode:100 description:@"Dedisco configuration is missing Server configuration."];
    *a2 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t checkPrivateRelay(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (![v8 hasSuffix:@"with-private-relay"])
  {
    v12 = [v8 hasSuffix:@"without-private-relay"];
    v13 = +[FedStatsPluginLog logger];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (v14)
      {
        checkPrivateRelay_cold_2();
      }

      if (([v7 containsString:@"privacyProxy = 0"] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v14)
      {
        checkPrivateRelay_cold_1();
      }
    }

    v11 = 1;
    goto LABEL_17;
  }

  v10 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    checkPrivateRelay_cold_3();
  }

  if ([v7 containsString:@"privacyProxy = 1"])
  {
    v11 = checkDediscoV2Params(v9, a4);
    goto LABEL_17;
  }

LABEL_10:
  if (a4)
  {
    [FedStatsPluginError errorWithCode:100 description:@"The SQL query does not filter against only private relay signal on the table."];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  return v11;
}

uint64_t checkMaskingDataRequirements(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [MEMORY[0x277CBEBF8] countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    v5 = MEMORY[0x277CBEBF8];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v14 = 0;
        v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v7 options:16 error:&v14];
        v9 = v14;
        if ([v8 numberOfMatchesInString:v1 options:4 range:{0, objc_msgSend(v1, "length")}])
        {
          v11 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            checkMaskingDataRequirements_cold_1();
          }

          v10 = 1;
          goto LABEL_15;
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    checkMaskingDataRequirements_cold_2();
  }

  v10 = 0;
LABEL_15:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

_BYTE *OUTLINED_FUNCTION_1_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return objc_opt_class();
}

void checkPrivateRelay_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void checkPrivateRelay_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void checkPrivateRelay_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void checkMaskingDataRequirements_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_24AB24000, v1, OS_LOG_TYPE_DEBUG, "SQL query '%@' matches the required pattern '%@' for masking data", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void checkMaskingDataRequirements_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}