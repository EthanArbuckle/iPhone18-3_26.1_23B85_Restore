@interface DKStarkMonitor
@end

@implementation DKStarkMonitor

uint64_t __37___DKStarkMonitor_sessionDidConnect___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37___DKStarkMonitor_sessionDidConnect___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(a1 + 32) updateCurrentState];
}

uint64_t __40___DKStarkMonitor_sessionDidDisconnect___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40___DKStarkMonitor_sessionDidDisconnect___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(a1 + 32) updateCurrentState];
}

void __37___DKStarkMonitor_sessionDidConnect___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_22595A000, a1, a3, "%s: CARSession connected", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __40___DKStarkMonitor_sessionDidDisconnect___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_22595A000, a1, a3, "%s: CARSession disconnected", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end