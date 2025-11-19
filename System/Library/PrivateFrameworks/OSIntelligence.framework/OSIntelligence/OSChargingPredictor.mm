@interface OSChargingPredictor
@end

@implementation OSChargingPredictor

void __38___OSChargingPredictor_initConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && os_log_type_enabled(WeakRetained[2], OS_LOG_TYPE_ERROR))
  {
    __38___OSChargingPredictor_initConnection__block_invoke_cold_1();
  }
}

void __38___OSChargingPredictor_initConnection__block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (os_log_type_enabled(WeakRetained[2], OS_LOG_TYPE_ERROR))
    {
      __38___OSChargingPredictor_initConnection__block_invoke_58_cold_1();
    }

    [(os_log_t *)v2 handleInterruption];
  }
}

void __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_62_cold_1();
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

void __82___OSChargingPredictor_timeUntilNextChargeSessionOfMinDuration_fromSOC_WithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __82___OSChargingPredictor_timeUntilNextChargeSessionOfMinDuration_fromSOC_WithError___block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_62_cold_1();
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

void __39___OSChargingPredictor_fixModelOutput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39___OSChargingPredictor_fixModelOutput___block_invoke_cold_1();
  }
}

void __51___OSChargingPredictor_fixModelOutput_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51___OSChargingPredictor_fixModelOutput_withHandler___block_invoke_cold_1();
  }
}

void __40___OSChargingPredictor_unfixModelOutput__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40___OSChargingPredictor_unfixModelOutput__block_invoke_cold_1();
  }
}

void __52___OSChargingPredictor_unfixModelOutputWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52___OSChargingPredictor_unfixModelOutputWithHandler___block_invoke_cold_1();
  }
}

void __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 48));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25D171000, v2, v3, "Error executing %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_62_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 56));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25D171000, v2, v3, "Error executing %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __39___OSChargingPredictor_fixModelOutput___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51___OSChargingPredictor_fixModelOutput_withHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __40___OSChargingPredictor_unfixModelOutput__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52___OSChargingPredictor_unfixModelOutputWithHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end