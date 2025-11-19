@interface CDInteractionRecorder
@end

@implementation CDInteractionRecorder

uint64_t __45___CDInteractionRecorder_interactionRecorder__block_invoke()
{
  v0 = [[_CDInteractionRecorder alloc] initWithServiceName:@"com.apple.coreduetd.people"];
  v1 = interactionRecorder_recorder;
  interactionRecorder_recorder = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke()
{
  v0 = dispatch_group_create();
  v1 = recordInteractions_synchronous_completionHandler__group;
  recordInteractions_synchronous_completionHandler__group = v0;

  v2 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"recordInteractions:synchronous:completionHandler:"];
  v3 = recordInteractions_synchronous_completionHandler__queue;
  recordInteractions_synchronous_completionHandler__queue = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_21(void *a1)
{
  v2 = *(a1[4] + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_2;
  v11[3] = &unk_1E736A500;
  v11[4] = a1[6];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_3;
  v7[3] = &unk_1E736A550;
  v4 = a1[4];
  v5 = a1[5];
  v8 = v3;
  v9 = v4;
  v10 = a1[7];
  v6 = v3;
  [v5 _pas_enumerateChunksOfSize:128 usingBlock:v7];
  dispatch_group_leave(recordInteractions_synchronous_completionHandler__group);
  atomic_store(0, recordInteractions_synchronous_completionHandler__flag);
}

void __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v6 enforceDataLimits];
  v9 = [*(a1 + 40) enforcePrivacy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_4;
  v10[3] = &unk_1E736A528;
  v10[4] = *(a1 + 48);
  [v5 recordInteractions:v7 enforceDataLimits:v8 enforcePrivacy:v9 reply:v10];

  *a3 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

void __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_4(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "[sync path] batch sent successfully", v5, 2u);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  dispatch_group_leave(recordInteractions_synchronous_completionHandler__group);
  atomic_store(0, recordInteractions_synchronous_completionHandler__flag);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_2_26(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (atomic_exchange(recordInteractions_synchronous_completionHandler__flag, 1u))
  {
    dispatch_group_enter(recordInteractions_synchronous_completionHandler__group);
    v2 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) count];
      *buf = 134217984;
      v11 = v3;
      _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_DEFAULT, "[async path] beginning recordInteractions (%tu interactions)", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_27;
    v8[3] = &unk_1E7367508;
    v9 = *(a1 + 48);
    v4 = MEMORY[0x193B00C50](v8);
    v5 = [*(*(a1 + 40) + 8) remoteObjectProxyWithErrorHandler:v4];
    recordInteractionsAsync(v5, *(a1 + 32), 0, [*(a1 + 40) enforceDataLimits], objc_msgSend(*(a1 + 40), "enforcePrivacy"), *(a1 + 48));
  }

  else
  {
    v6 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_DEFAULT, "[async path] It's not our turn yet...", buf, 2u);
    }

    dispatch_group_notify(recordInteractions_synchronous_completionHandler__group, recordInteractions_synchronous_completionHandler__queue, *(*(*(a1 + 56) + 8) + 24));
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_27_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __110___CDInteractionRecorder_queryInteractionsUsingPredicate_synchronous_sortDescriptors_limit_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __86___CDInteractionRecorder_queryInteractionsUsingPredicate_sortDescriptors_limit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __88___CDInteractionRecorder_countInteractionsUsingPredicate_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __106___CDInteractionRecorder_queryContactsUsingPredicate_synchronous_sortDescriptors_limit_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __82___CDInteractionRecorder_queryContactsUsingPredicate_sortDescriptors_limit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __84___CDInteractionRecorder_countContactsUsingPredicate_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __130___CDInteractionRecorder_deleteInteractionsMatchingPredicate_synchronous_sortDescriptors_limit_debuggingReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __87___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __95___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_account_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __104___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_domainIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __105___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_domainIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_27_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "[async path] xpc error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end