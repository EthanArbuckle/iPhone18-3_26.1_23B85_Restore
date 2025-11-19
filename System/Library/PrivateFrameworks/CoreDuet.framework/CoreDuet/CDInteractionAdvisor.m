@interface CDInteractionAdvisor
@end

@implementation CDInteractionAdvisor

uint64_t __49___CDInteractionAdvisor_sharedInteractionAdvisor__block_invoke()
{
  v0 = [[_CDInteractionAdvisor alloc] initWithServiceName:@"com.apple.coreduetd.people"];
  v1 = sharedInteractionAdvisor_advisor;
  sharedInteractionAdvisor_advisor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  [*(a1 + 32) setError:v3];
}

void __57___CDInteractionAdvisor_adviseInteractionsUsingSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  [*(a1 + 32) setError:v3];
}

void __65___CDInteractionAdvisor_adviseInteractionsForDate_usingSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  [*(a1 + 32) setError:v3];
}

void __87___CDInteractionAdvisor_adviseSocialInteractionsForDate_andSeedContacts_usingSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  [*(a1 + 32) setError:v3];
}

void __77___CDInteractionAdvisor_adviseInteractionsForKeywordsInString_usingSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  [*(a1 + 32) setError:v3];
}

void __73___CDInteractionAdvisor_tuneSocialAdvisorUsingSettings_heartBeatHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  [*(a1 + 32) setError:v3];
}

void __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "XPC Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end