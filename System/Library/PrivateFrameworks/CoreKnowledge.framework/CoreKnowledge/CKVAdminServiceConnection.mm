@interface CKVAdminServiceConnection
- (BOOL)_isCustomerInstall:(id)install;
- (CKVAdminServiceConnection)initWithServiceQueue:(id)queue taskManager:(id)manager semAdministrator:(id)administrator;
- (void)beginEvaluation:(id)evaluation clean:(BOOL)clean completion:(id)completion;
- (void)captureVocabularySnapshot:(id)snapshot completion:(id)completion;
- (void)deleteAllItemsWithUserId:(id)id completion:(id)completion;
- (void)deleteAllItemsWithUserId:(id)id deviceId:(id)deviceId completion:(id)completion;
- (void)endEvaluation:(id)evaluation;
- (void)finishEventSimulation:(id)simulation;
- (void)handleTask:(unsigned __int16)task reason:(unsigned __int16)reason completion:(id)completion;
- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion;
- (void)startEventSimulation:(BOOL)simulation completion:(id)completion;
- (void)triggerMaintenance:(id)maintenance;
- (void)triggerMigration:(BOOL)migration completeAfterTrigger:(BOOL)trigger completion:(id)completion;
@end

@implementation CKVAdminServiceConnection

- (void)endEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  serviceQueue = self->_serviceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CKVAdminServiceConnection_endEvaluation___block_invoke;
  v7[3] = &unk_1E831E850;
  v7[4] = self;
  v8 = evaluationCopy;
  v6 = evaluationCopy;
  dispatch_async(serviceQueue, v7);
}

uint64_t __43__CKVAdminServiceConnection_endEvaluation___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _isCustomerInstall:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    if ([*(*(a1 + 32) + 32) isEvaluationEnabled])
    {
      [*(*(a1 + 32) + 24) endEvaluation];
      [*(*(a1 + 32) + 32) setEvaluationEnabled:0];
      [*(*(a1 + 32) + 32) setEvaluationWithProfile:0];
      result = *(a1 + 40);
      if (result)
      {
        v3 = *(result + 16);

        return v3();
      }
    }

    else
    {
      v4 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315138;
        v6 = "[CKVAdminServiceConnection endEvaluation:]_block_invoke";
        _os_log_error_impl(&dword_1C8683000, v4, OS_LOG_TYPE_ERROR, "%s Evaluation is not enabled. Use beginEvaluation API to enable evaluation.", &v5, 0xCu);
      }

      result = *(a1 + 40);
      if (result)
      {
        return (*(result + 16))(result, 2);
      }
    }
  }

  return result;
}

- (void)beginEvaluation:(id)evaluation clean:(BOOL)clean completion:(id)completion
{
  evaluationCopy = evaluation;
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CKVAdminServiceConnection_beginEvaluation_clean_completion___block_invoke;
  v13[3] = &unk_1E831E7D8;
  v14 = evaluationCopy;
  v15 = completionCopy;
  v13[4] = self;
  cleanCopy = clean;
  v11 = evaluationCopy;
  v12 = completionCopy;
  dispatch_async(serviceQueue, v13);
}

void __62__CKVAdminServiceConnection_beginEvaluation_clean_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _isCustomerInstall:*(a1 + 48)] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 32) isEvaluationEnabled];
    v3 = CKLogContextVocabulary;
    if (v2 && os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CKVAdminServiceConnection beginEvaluation:clean:completion:]_block_invoke";
      _os_log_error_impl(&dword_1C8683000, v3, OS_LOG_TYPE_ERROR, "%s Evaluation is already enabled. Resetting all state.", buf, 0xCu);
      v3 = CKLogContextVocabulary;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[CKVAdminServiceConnection beginEvaluation:clean:completion:]_block_invoke";
      _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s Enabling evaluaton", buf, 0xCu);
    }

    [*(*(a1 + 32) + 32) setEvaluationEnabled:1];
    v4 = [*(a1 + 40) profileInfo];
    v5 = [v4 datasetCount];

    if (v5)
    {
      [*(*(a1 + 32) + 32) setEvaluationWithProfile:1];
    }

    if ((v2 | *(a1 + 56)))
    {
      [*(*(a1 + 32) + 16) clearAllState];
    }

    v6 = *(a1 + 40);
    v20 = 0;
    v7 = [v6 toSerializedSets:&v20];
    v8 = v20;
    if (v7)
    {
      v9 = [*(*(a1 + 32) + 24) beginEvaluation:v7];
      v10 = CKLogContextVocabulary;
      if (v9 == 1)
      {
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v22 = "[CKVAdminServiceConnection beginEvaluation:clean:completion:]_block_invoke_2";
          _os_log_impl(&dword_1C8683000, v10, OS_LOG_TYPE_INFO, "%s Evaluation ready", buf, 0xCu);
        }

        v11 = *(a1 + 48);
        if (v11)
        {
          (*(v11 + 16))(v11, 1);
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[CKVAdminServiceConnection beginEvaluation:clean:completion:]_block_invoke_2";
        v23 = 2112;
        v24 = v7;
        _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Failed to begin SiriEntityMatcher evaluation with serialized sets: %@", buf, 0x16u);
      }

      v15 = *(a1 + 32);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __62__CKVAdminServiceConnection_beginEvaluation_clean_completion___block_invoke_13;
      v16[3] = &unk_1E831EAB8;
      v17 = *(a1 + 48);
      [v15 endEvaluation:v16];
      v14 = v17;
    }

    else
    {
      v12 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[CKVAdminServiceConnection beginEvaluation:clean:completion:]_block_invoke";
        v23 = 2112;
        v24 = v8;
        _os_log_error_impl(&dword_1C8683000, v12, OS_LOG_TYPE_ERROR, "%s Failed to convert KVProfile to serialized sets: %@", buf, 0x16u);
      }

      v13 = *(a1 + 32);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__CKVAdminServiceConnection_beginEvaluation_clean_completion___block_invoke_11;
      v18[3] = &unk_1E831EAB8;
      v19 = *(a1 + 48);
      [v13 endEvaluation:v18];
      v14 = v19;
    }

LABEL_24:
  }
}

uint64_t __62__CKVAdminServiceConnection_beginEvaluation_clean_completion___block_invoke_11(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

uint64_t __62__CKVAdminServiceConnection_beginEvaluation_clean_completion___block_invoke_13(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion
{
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CKVAdminServiceConnection_rebuildSpeechProfileForUserId_completion___block_invoke;
  block[3] = &unk_1E831EA90;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(serviceQueue, block);
}

uint64_t __70__CKVAdminServiceConnection_rebuildSpeechProfileForUserId_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CKVAdminServiceConnection rebuildSpeechProfileForUserId:completion:]_block_invoke";
    _os_log_error_impl(&dword_1C8683000, v2, OS_LOG_TYPE_ERROR, "%s No longer supported", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

- (BOOL)_isCustomerInstall:(id)install
{
  v9 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v4 = +[CKVAssistantSettingsBridge isCustomerInstall];
  if (v4)
  {
    v5 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[CKVAdminServiceConnection _isCustomerInstall:]";
      _os_log_impl(&dword_1C8683000, v5, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", &v7, 0xCu);
    }

    if (installCopy)
    {
      installCopy[2](installCopy, 2);
    }
  }

  return v4;
}

- (void)deleteAllItemsWithUserId:(id)id deviceId:(id)deviceId completion:(id)completion
{
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CKVAdminServiceConnection_deleteAllItemsWithUserId_deviceId_completion___block_invoke;
  block[3] = &unk_1E831EA90;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(serviceQueue, block);
}

uint64_t __74__CKVAdminServiceConnection_deleteAllItemsWithUserId_deviceId_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CKVAdminServiceConnection deleteAllItemsWithUserId:deviceId:completion:]_block_invoke";
    _os_log_error_impl(&dword_1C8683000, v2, OS_LOG_TYPE_ERROR, "%s deleteAllItemsWithUserId:deviceId:completion: no longer supported.", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

- (void)deleteAllItemsWithUserId:(id)id completion:(id)completion
{
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CKVAdminServiceConnection_deleteAllItemsWithUserId_completion___block_invoke;
  block[3] = &unk_1E831EA90;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(serviceQueue, block);
}

uint64_t __65__CKVAdminServiceConnection_deleteAllItemsWithUserId_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CKVAdminServiceConnection deleteAllItemsWithUserId:completion:]_block_invoke";
    _os_log_error_impl(&dword_1C8683000, v2, OS_LOG_TYPE_ERROR, "%s deleteAllItemsWithUserId:completion: no longer supported.", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

- (void)captureVocabularySnapshot:(id)snapshot completion:(id)completion
{
  snapshotCopy = snapshot;
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CKVAdminServiceConnection_captureVocabularySnapshot_completion___block_invoke;
  v11[3] = &unk_1E831E850;
  v12 = snapshotCopy;
  v13 = completionCopy;
  v9 = snapshotCopy;
  v10 = completionCopy;
  dispatch_async(serviceQueue, v11);
}

void __66__CKVAdminServiceConnection_captureVocabularySnapshot_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v2 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[CKVAdminServiceConnection captureVocabularySnapshot:completion:]_block_invoke";
      _os_log_impl(&dword_1C8683000, v2, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 2, 0);
    }
  }

  else
  {
    v4 = +[CKVSnapshotManager sharedInstance];
    v5 = *(a1 + 32);
    v13 = 0;
    v6 = [v4 captureToFileInDirectory:v5 error:&v13];
    v7 = v13;

    if (!v6)
    {
      v8 = CKLogContextVocabulary;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to directory: %@", *(a1 + 32)];
        }

        else
        {
          v12 = &stru_1F4852890;
        }

        *buf = 136315650;
        v15 = "[CKVAdminServiceConnection captureVocabularySnapshot:completion:]_block_invoke";
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v7;
        _os_log_error_impl(&dword_1C8683000, v8, OS_LOG_TYPE_ERROR, "%s Failed to capture snapshot%@: %@", buf, 0x20u);
        if (v11)
        {
        }
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      if (v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      (*(v9 + 16))(v9, v10, v6);
    }
  }
}

- (void)triggerMaintenance:(id)maintenance
{
  maintenanceCopy = maintenance;
  taskManager = self->_taskManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CKVAdminServiceConnection_triggerMaintenance___block_invoke;
  v7[3] = &unk_1E831E850;
  v7[4] = self;
  v8 = maintenanceCopy;
  v6 = maintenanceCopy;
  [(CKVTaskManager *)taskManager handleTask:102 reason:15 shouldDefer:0 completion:v7];
}

void __48__CKVAdminServiceConnection_triggerMaintenance___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__CKVAdminServiceConnection_triggerMaintenance___block_invoke_2;
  v2[3] = &unk_1E831E7B0;
  v3 = *(a1 + 40);
  [v1 triggerMaintenance:0 completion:v2];
}

uint64_t __48__CKVAdminServiceConnection_triggerMaintenance___block_invoke_2(uint64_t a1)
{
  if (!+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v2 = +[CKVSnapshotManager sharedInstance];
    [v2 cleanup];
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)triggerMigration:(BOOL)migration completeAfterTrigger:(BOOL)trigger completion:(id)completion
{
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CKVAdminServiceConnection_triggerMigration_completeAfterTrigger_completion___block_invoke;
  block[3] = &unk_1E831E788;
  migrationCopy = migration;
  triggerCopy = trigger;
  block[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(serviceQueue, block);
}

void __78__CKVAdminServiceConnection_triggerMigration_completeAfterTrigger_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    [*(*(a1 + 32) + 16) clearAllState];
    LOBYTE(v2) = *(a1 + 48);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__CKVAdminServiceConnection_triggerMigration_completeAfterTrigger_completion___block_invoke_2;
  v6[3] = &unk_1E831E788;
  v6[4] = v3;
  v8 = v2;
  v9 = *(a1 + 49);
  v7 = *(a1 + 40);
  [v4 handleTask:103 reason:15 shouldDefer:0 completion:v6];
  if (*(a1 + 49) == 1)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }
  }
}

void __78__CKVAdminServiceConnection_triggerMigration_completeAfterTrigger_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CKVAdminServiceConnection_triggerMigration_completeAfterTrigger_completion___block_invoke_3;
  v3[3] = &unk_1E831E760;
  v5 = *(a1 + 49);
  v4 = *(a1 + 40);
  [v1 triggerMaintenance:v2 completion:v3];
}

uint64_t __78__CKVAdminServiceConnection_triggerMigration_completeAfterTrigger_completion___block_invoke_3(uint64_t result, int a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      if (a2 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }

      return (*(result + 16))(result, v2);
    }
  }

  return result;
}

- (void)handleTask:(unsigned __int16)task reason:(unsigned __int16)reason completion:(id)completion
{
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CKVAdminServiceConnection_handleTask_reason_completion___block_invoke;
  block[3] = &unk_1E831E938;
  block[4] = self;
  v12 = completionCopy;
  taskCopy = task;
  reasonCopy = reason;
  v10 = completionCopy;
  dispatch_async(serviceQueue, block);
}

void __58__CKVAdminServiceConnection_handleTask_reason_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _isCustomerInstall:*(a1 + 40)] & 1) == 0)
  {
    if ([*(*(a1 + 32) + 32) isEvaluationEnabled])
    {
      v2 = *(*(a1 + 32) + 16);
      v3 = *(a1 + 48);
      v4 = *(a1 + 50);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__CKVAdminServiceConnection_handleTask_reason_completion___block_invoke_1;
      v11[3] = &unk_1E831EA90;
      v12 = *(a1 + 40);
      if (([v2 handleTask:v3 reason:v4 shouldDefer:0 completion:v11] & 1) == 0)
      {
        v5 = *(a1 + 40);
        if (v5)
        {
          (*(v5 + 16))(v5, 2);
        }
      }
    }

    else
    {
      v6 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 48);
        v9 = v6;
        v10 = CKVTaskIdDescription(v8);
        *buf = 136315394;
        v14 = "[CKVAdminServiceConnection handleTask:reason:completion:]_block_invoke";
        v15 = 2112;
        v16 = v10;
        _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s Unable to handle task (%@) as evaluation is not enabled", buf, 0x16u);
      }

      v7 = *(a1 + 40);
      if (v7)
      {
        (*(v7 + 16))(v7, 2);
      }
    }
  }
}

uint64_t __58__CKVAdminServiceConnection_handleTask_reason_completion___block_invoke_1(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)finishEventSimulation:(id)simulation
{
  simulationCopy = simulation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CKVAdminServiceConnection_finishEventSimulation___block_invoke;
  v6[3] = &unk_1E831EA68;
  v6[4] = self;
  v7 = simulationCopy;
  v5 = simulationCopy;
  [(CKVAdminServiceConnection *)self endEvaluation:v6];
}

uint64_t __51__CKVAdminServiceConnection_finishEventSimulation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) enableSimulatedTasks:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)startEventSimulation:(BOOL)simulation completion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v7 = [MEMORY[0x1E69ABD00] emptyProfile:&v13];
  v8 = v13;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CKVAdminServiceConnection_startEventSimulation_completion___block_invoke;
  v10[3] = &unk_1E831E738;
  simulationCopy = simulation;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(CKVAdminServiceConnection *)self beginEvaluation:v7 clean:1 completion:v10];
}

uint64_t __61__CKVAdminServiceConnection_startEventSimulation_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 16) enableSimulatedTasks:*(a1 + 48)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (CKVAdminServiceConnection)initWithServiceQueue:(id)queue taskManager:(id)manager semAdministrator:(id)administrator
{
  queueCopy = queue;
  managerCopy = manager;
  administratorCopy = administrator;
  v18.receiver = self;
  v18.super_class = CKVAdminServiceConnection;
  v12 = [(CKVAdminServiceConnection *)&v18 init];
  v13 = v12;
  if (!v12 || (objc_storeStrong(&v12->_serviceQueue, queue), v13->_serviceQueue) && (objc_storeStrong(&v13->_taskManager, manager), v13->_taskManager) && (objc_storeStrong(&v13->_semAdministrator, administrator), v13->_semAdministrator) && ([(CKVTaskManager *)v13->_taskManager settings], v14 = objc_claimAutoreleasedReturnValue(), settings = v13->_settings, v13->_settings = v14, settings, v13->_settings))
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end