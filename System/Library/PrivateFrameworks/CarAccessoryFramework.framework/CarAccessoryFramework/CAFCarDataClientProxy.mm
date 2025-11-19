@interface CAFCarDataClientProxy
@end

@implementation CAFCarDataClientProxy

void __34___CAFCarDataClientProxy_activate__block_invoke(uint64_t a1)
{
  v2 = CAFDataClientLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __34___CAFCarDataClientProxy_activate__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained carManager];
    v6 = [v4 carManager];
    [v6 _closeConnectionWithReason:@"XPC Interrupted"];

    [v5 _setupCafdConnectionIfAvailable];
  }
}

void __34___CAFCarDataClientProxy_activate__block_invoke_246(uint64_t a1)
{
  v2 = CAFDataClientLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __34___CAFCarDataClientProxy_activate__block_invoke_246_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained carManager];
    [v5 _connectionDidInvalidateForProxy:v4];
  }
}

void __34___CAFCarDataClientProxy_activate__block_invoke_247(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = CAFDataClientLogging();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __34___CAFCarDataClientProxy_activate__block_invoke_247_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34___CAFCarDataClientProxy_activate__block_invoke_248;
    v7[3] = &unk_27890D548;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else if (v5)
  {
    __34___CAFCarDataClientProxy_activate__block_invoke_247_cold_2();
  }
}

void __34___CAFCarDataClientProxy_activate__block_invoke_248(uint64_t a1)
{
  [*(a1 + 32) setCurrentCarConfig:*(a1 + 40)];
  v2 = [*(a1 + 32) carManager];
  [v2 _updateCar];
}

void __52___CAFCarDataClientProxy_didUpdateCurrentCarConfig___block_invoke(uint64_t a1)
{
  v2 = CAFDataClientLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52___CAFCarDataClientProxy_didUpdateCurrentCarConfig___block_invoke_cold_1();
  }

  [*(a1 + 32) setCurrentCarConfig:*(a1 + 40)];
  v3 = [*(a1 + 32) carManager];
  [v3 _updateCar];
}

void __42___CAFCarDataClientProxy_didUpdateConfig___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) currentCarConfig];

  v4 = CAFDataClientLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42___CAFCarDataClientProxy_didUpdateConfig___block_invoke_cold_1(v2, a1);
    }

    v5 = [*(a1 + 32) currentCarConfig];
    [v5 updateConfiguration:*(a1 + 40)];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42___CAFCarDataClientProxy_didUpdateConfig___block_invoke_cold_2();
  }
}

void __51___CAFCarDataClientProxy_didUpdatePluginID_values___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) carManager];
  v3 = [v2 currentCar];

  if (v3)
  {
    [v3 didUpdatePluginID:*(a1 + 40) values:*(a1 + 48)];
  }

  else
  {
    v4 = CAFDataClientLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51___CAFCarDataClientProxy_didUpdatePluginID_values___block_invoke_cold_1();
    }
  }
}

void __61___CAFCarDataClientProxy_didNotifyPluginID_instanceID_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) carManager];
  v3 = [v2 currentCar];

  if (v3)
  {
    [v3 didNotifyPluginID:*(a1 + 40) instanceID:*(a1 + 48) value:*(a1 + 56)];
  }

  else
  {
    v4 = CAFDataClientLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61___CAFCarDataClientProxy_didNotifyPluginID_instanceID_value___block_invoke_cold_1();
    }
  }
}

void __75___CAFCarDataClientProxy_didRequestPluginID_instanceID_value_withResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) carManager];
  v3 = [v2 currentCar];

  if (v3)
  {
    [v3 didRequestPluginID:*(a1 + 40) instanceID:*(a1 + 48) value:*(a1 + 56) withResponse:*(a1 + 64)];
  }

  else
  {
    v4 = CAFDataClientLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75___CAFCarDataClientProxy_didRequestPluginID_instanceID_value_withResponse___block_invoke_cold_1();
    }

    v5 = *(a1 + 64);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void __34___CAFCarDataClientProxy_activate__block_invoke_247_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __34___CAFCarDataClientProxy_activate__block_invoke_247_cold_2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52___CAFCarDataClientProxy_didUpdateCurrentCarConfig___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(v1 + 32) currentCarConfig];
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __42___CAFCarDataClientProxy_didUpdateConfig___block_invoke_cold_1(id *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = [*a1 currentCarConfig];
  [*(a2 + 40) count];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end