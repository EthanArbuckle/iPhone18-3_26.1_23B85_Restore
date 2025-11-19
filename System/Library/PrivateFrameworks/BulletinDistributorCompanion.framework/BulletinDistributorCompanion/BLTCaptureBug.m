@interface BLTCaptureBug
@end

@implementation BLTCaptureBug

uint64_t ___BLTCaptureBug_block_invoke()
{
  _BLTCaptureBug__diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);

  return MEMORY[0x2821F96F8]();
}

void ___BLTCaptureBug_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = blt_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "Received response from Diagnostic Reporter - %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end