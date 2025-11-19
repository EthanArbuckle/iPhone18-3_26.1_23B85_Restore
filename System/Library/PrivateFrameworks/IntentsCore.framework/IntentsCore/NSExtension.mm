@interface NSExtension
@end

@implementation NSExtension

void __109__NSExtension_IntentsCore___intents_startExtensionConnectionWithExtensionInputItems_intent_queue_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[NSExtension(IntentsCore) _intents_startExtensionConnectionWithExtensionInputItems:intent:queue:completion:]_block_invoke";
    v8 = 2050;
    v9 = 0x4024000000000000;
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&dword_255503000, v2, OS_LOG_TYPE_ERROR, "%s Extension launching timed out after %{public}f seconds for intent %@", &v6, 0x20u);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3848] code:5000 userInfo:0];
  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

@end