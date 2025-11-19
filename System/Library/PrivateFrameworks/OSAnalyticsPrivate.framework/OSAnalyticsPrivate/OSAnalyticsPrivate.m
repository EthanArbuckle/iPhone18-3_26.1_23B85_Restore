void OSAStabilityMonitorEvaluateStabilityForBundleID(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = OSAnalyticsHelperServiceConnection();
    if (v11)
    {
      v12 = OSAStabilityMonitorLoadParameters();
      if (v12)
      {
        v13 = ns2xpc();
        v14 = v13 == 0;
        if (v13)
        {
          empty = xpc_dictionary_create_empty();
          xpc_dictionary_set_uint64(empty, "operation", 8uLL);
          xpc_dictionary_set_string(empty, "stability_bundleID", [v7 UTF8String]);
          xpc_dictionary_set_value(empty, "stability_parameters", v13);
          if (v8)
          {
            xpc_dictionary_set_string(empty, "stability_coalitionName", [v8 UTF8String]);
          }

          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke;
          handler[3] = &unk_2799C0128;
          v17 = v10;
          xpc_connection_send_message_with_reply(v11, empty, v9, handler);
        }

        else
        {
          empty = OSAStabilityMonitorLogDomain();
          if (os_log_type_enabled(empty, OS_LOG_TYPE_ERROR))
          {
            OSAStabilityMonitorEvaluateStabilityForBundleID_cold_1();
          }
        }
      }

      else
      {
        v13 = OSAStabilityMonitorLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          OSAStabilityMonitorEvaluateStabilityForBundleID_cold_2();
        }

        v14 = 1;
      }
    }

    else
    {
      v12 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        OSAStabilityMonitorEvaluateStabilityForBundleID_cold_3();
      }

      v14 = 1;
    }
  }

  else
  {
    v11 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OSAStabilityMonitorEvaluateStabilityForBundleID_cold_4();
    }

    v14 = 1;
  }

  if (v10 && v14)
  {
    (*(v10 + 2))(v10, 0);
  }
}

id OSAStabilityMonitorLoadParameters()
{
  if (objc_opt_class())
  {
    v0 = [MEMORY[0x277D73668] clientWithIdentifier:295];
    v1 = [v0 levelForFactor:@"parameters" withNamespaceName:@"OS_ANALYTICS_STABILITY_MONITOR"];
    v2 = MEMORY[0x277CBEA90];
    v3 = [v1 fileValue];
    v4 = [v3 path];
    v5 = [v2 dataWithContentsOfFile:v4];

    if (v5)
    {
      v10 = 0;
      v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v10];
      v7 = v10;
      if (!v6)
      {
        v8 = OSAStabilityMonitorLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          OSAStabilityMonitorLoadParameters_cold_1();
        }
      }
    }

    else
    {
      v7 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        OSAStabilityMonitorLoadParameters_cold_2();
      }

      v6 = 0;
    }
  }

  else
  {
    v0 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OSAStabilityMonitorLoadParameters_cold_3();
    }

    v6 = 0;
  }

  return v6;
}

id OSAStabilityMonitorLogDomain()
{
  if (OSAStabilityMonitorLogDomain_onceToken != -1)
  {
    OSAStabilityMonitorLogDomain_cold_1();
  }

  v1 = OSAStabilityMonitorLogDomain_domain;

  return v1;
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x25F892B00]() == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_BOOL(v3, "result"))
    {
      v6 = xpc_dictionary_get_BOOL(v3, "stability_result");
      goto LABEL_12;
    }

    xpc_dictionary_get_string(v3, "error_desc");
    v7 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_2();
    }
  }

  else
  {
    v4 = MEMORY[0x25F892A40](v3);
    v5 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_1();
    }

    if (v4)
    {
      free(v4);
    }
  }

  v6 = 0;
LABEL_12:
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }

  else
  {
    v9 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_3();
    }
  }
}

void sub_25D12EE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __OSAStabilityMonitorLogDomain_block_invoke()
{
  OSAStabilityMonitorLogDomain_domain = os_log_create("com.apple.osanalytics.monitors", "stability");

  return MEMORY[0x2821F96F8]();
}

void OSAStabilityMonitorLoadParameters_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void OSAStabilityMonitorLoadParameters_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorLoadParameters_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}