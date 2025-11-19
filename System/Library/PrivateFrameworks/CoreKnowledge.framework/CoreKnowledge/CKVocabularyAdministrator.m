@interface CKVocabularyAdministrator
+ (id)makeAdministrator;
+ (void)initialize;
- (CKVocabularyAdministrator)init;
- (CKVocabularyAdministrator)initWithAdminService:(id)a3 timeout:(double)a4 queue:(id)a5;
- (id)rawSpeechProfileConverter;
- (id)rawSpeechProfileConverterOmittingItemTypes:(id)a3;
- (id)simulateEventHandling:(BOOL)a3;
- (int64_t)_synchronouslyWrapRequest:(id)a3;
- (int64_t)beginEvaluation:(id)a3 options:(unsigned __int16)a4;
- (int64_t)endEvaluation;
- (int64_t)executeEvaluationTask:(unsigned __int16)a3;
- (void)_triggerMigration:(BOOL)a3 completeAfterTrigger:(BOOL)a4 completion:(id)a5;
- (void)beginEvaluation:(id)a3 options:(unsigned __int16)a4 completion:(id)a5;
- (void)captureVocabularySnapshot:(id)a3 completion:(id)a4;
- (void)deleteAllItemsWithUserId:(id)a3 completion:(id)a4;
- (void)deleteAllItemsWithUserId:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)endEvaluation:(id)a3;
- (void)executeEvaluationTask:(unsigned __int16)a3 completion:(id)a4;
- (void)rebuildSpeechProfileForUserId:(id)a3 completion:(id)a4;
- (void)triggerMaintenance:(id)a3;
- (void)triggerMigration:(BOOL)a3 completion:(id)a4;
@end

@implementation CKVocabularyAdministrator

- (int64_t)_synchronouslyWrapRequest:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__CKVocabularyAdministrator__synchronouslyWrapRequest___block_invoke;
  aBlock[3] = &unk_1E831EB08;
  v19 = &v20;
  aBlock[4] = self;
  v6 = v5;
  v18 = v6;
  v7 = _Block_copy(aBlock);
  dispatch_group_enter(v6);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__CKVocabularyAdministrator__synchronouslyWrapRequest___block_invoke_26;
  v15[3] = &unk_1E831EA68;
  v15[4] = self;
  v8 = v7;
  v16 = v8;
  v4[2](v4, v15);
  v9 = dispatch_time(0, (self->_timeout * 1000000000.0));
  if (dispatch_group_wait(v6, v9))
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__CKVocabularyAdministrator__synchronouslyWrapRequest___block_invoke_3;
    v13[3] = &unk_1E831EA90;
    v14 = v8;
    dispatch_sync(queue, v13);
  }

  v11 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v11;
}

void __55__CKVocabularyAdministrator__synchronouslyWrapRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = a2;
    if (*(*(*(a1 + 48) + 8) + 24) == 4)
    {
      v4 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v5 = MEMORY[0x1E696AD98];
        v6 = *(*(a1 + 32) + 16);
        v7 = v4;
        v8 = [v5 numberWithDouble:v6];
        v9 = 136315394;
        v10 = "[CKVocabularyAdministrator _synchronouslyWrapRequest:]_block_invoke";
        v11 = 2112;
        v12 = v8;
        _os_log_error_impl(&dword_1C8683000, v7, OS_LOG_TYPE_ERROR, "%s Timed out waiting for admin service. timeout: %@ seconds", &v9, 0x16u);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void __55__CKVocabularyAdministrator__synchronouslyWrapRequest___block_invoke_26(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CKVocabularyAdministrator__synchronouslyWrapRequest___block_invoke_2;
  v4[3] = &unk_1E831EA40;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (int64_t)executeEvaluationTask:(unsigned __int16)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__CKVocabularyAdministrator_executeEvaluationTask___block_invoke;
  v4[3] = &unk_1E831EBA8;
  v4[4] = self;
  v5 = a3;
  return [(CKVocabularyAdministrator *)self _synchronouslyWrapRequest:v4];
}

- (void)executeEvaluationTask:(unsigned __int16)a3 completion:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CKVocabularyAdministrator executeEvaluationTask:completion:]";
      _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", buf, 0xCu);
    }

LABEL_7:
    if (v6)
    {
      v6[2](v6, 3);
    }

    goto LABEL_15;
  }

  if (v4 >= 2)
  {
    v8 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = v8;
      v11 = [v9 numberWithUnsignedShort:v4];
      *buf = 136315394;
      v21 = "[CKVocabularyAdministrator executeEvaluationTask:completion:]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1C8683000, v10, OS_LOG_TYPE_INFO, "%s evaluationTaskId: %@ is not valid.", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (v4)
  {
    v12 = 4 * (v4 == 1);
  }

  else
  {
    v12 = 2;
  }

  v13 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = CKVTaskIdDescription(v12);
    *buf = 136315394;
    v21 = "[CKVocabularyAdministrator executeEvaluationTask:completion:]";
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&dword_1C8683000, v14, OS_LOG_TYPE_INFO, "%s Submitting request to execute task (%@)", buf, 0x16u);
  }

  adminService = self->_adminService;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__CKVocabularyAdministrator_executeEvaluationTask_completion___block_invoke;
  v17[3] = &unk_1E831EB80;
  v18 = v6;
  v19 = v12;
  [(CKVAdminService *)adminService handleTask:v12 reason:17 completion:v17];

LABEL_15:
}

uint64_t __62__CKVocabularyAdministrator_executeEvaluationTask_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  if (v2)
  {
    v4 = result;
    v5 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v6 = *(v4 + 40);
      v7 = v5;
      v8 = CKVTaskIdDescription(v6);
      v9 = v8;
      v10 = @"failed";
      v13 = "[CKVocabularyAdministrator executeEvaluationTask:completion:]_block_invoke";
      v12 = 136315650;
      if (a2 == 1)
      {
        v10 = @"completed";
      }

      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s Task (%@) %@", &v12, 0x20u);

      v2 = *(v4 + 32);
    }

    if (a2 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    return (*(v2 + 16))(v2, v11);
  }

  return result;
}

- (int64_t)endEvaluation
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CKVocabularyAdministrator_endEvaluation__block_invoke;
  v3[3] = &unk_1E831EB58;
  v3[4] = self;
  return [(CKVocabularyAdministrator *)self _synchronouslyWrapRequest:v3];
}

- (void)endEvaluation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CKVAssistantSettingsBridge isCustomerInstall];
  v6 = CKLogContextVocabulary;
  v7 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 136315138;
      v12 = "[CKVocabularyAdministrator endEvaluation:]";
      _os_log_impl(&dword_1C8683000, v6, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, 3);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v12 = "[CKVocabularyAdministrator endEvaluation:]";
      _os_log_impl(&dword_1C8683000, v6, OS_LOG_TYPE_INFO, "%s Submitting request to end evaluation", buf, 0xCu);
    }

    adminService = self->_adminService;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__CKVocabularyAdministrator_endEvaluation___block_invoke;
    v9[3] = &unk_1E831EAB8;
    v10 = v4;
    [(CKVAdminService *)adminService endEvaluation:v9];
  }
}

uint64_t __43__CKVocabularyAdministrator_endEvaluation___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = @"NOT ";
    if (a2 == 1)
    {
      v5 = &stru_1F4852890;
    }

    v8 = 136315394;
    v9 = "[CKVocabularyAdministrator endEvaluation:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Evaluation mode %@deactivated", &v8, 0x16u);
  }

  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    return (*(result + 16))(result, v7);
  }

  return result;
}

- (int64_t)beginEvaluation:(id)a3 options:(unsigned __int16)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CKVocabularyAdministrator_beginEvaluation_options___block_invoke;
  v10[3] = &unk_1E831EB30;
  v10[4] = self;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  v8 = [(CKVocabularyAdministrator *)self _synchronouslyWrapRequest:v10];

  return v8;
}

- (void)beginEvaluation:(id)a3 options:(unsigned __int16)a4 completion:(id)a5
{
  v6 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v10 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[CKVocabularyAdministrator beginEvaluation:options:completion:]";
      _os_log_impl(&dword_1C8683000, v10, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", buf, 0xCu);
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (v8)
    {
      v11 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[CKVocabularyAdministrator beginEvaluation:options:completion:]";
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&dword_1C8683000, v11, OS_LOG_TYPE_INFO, "%s Submitting request to begin evaluation with options: %X", buf, 0x12u);
      }

      adminService = self->_adminService;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64__CKVocabularyAdministrator_beginEvaluation_options_completion___block_invoke;
      v14[3] = &unk_1E831EAB8;
      v15 = v9;
      [(CKVAdminService *)adminService beginEvaluation:v8 clean:(v6 & 1) == 0 completion:v14];

      goto LABEL_12;
    }

    v13 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CKVocabularyAdministrator beginEvaluation:options:completion:]";
      _os_log_error_impl(&dword_1C8683000, v13, OS_LOG_TYPE_ERROR, "%s Profile cannot be nil.", buf, 0xCu);
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v9)
  {
LABEL_11:
    (*(v9 + 2))(v9, 3);
  }

LABEL_12:
}

uint64_t __64__CKVocabularyAdministrator_beginEvaluation_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = @"NOT ";
    if (a2 == 1)
    {
      v5 = &stru_1F4852890;
    }

    v8 = 136315394;
    v9 = "[CKVocabularyAdministrator beginEvaluation:options:completion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Evaluation mode %@activated", &v8, 0x16u);
  }

  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    return (*(result + 16))(result, v7);
  }

  return result;
}

- (id)rawSpeechProfileConverterOmittingItemTypes:(id)a3
{
  v3 = a3;
  v4 = [[CKVEvaluationProfileBuilder alloc] initWithOmittedItemTypes:v3];

  return v4;
}

- (id)rawSpeechProfileConverter
{
  v2 = [[CKVEvaluationProfileBuilder alloc] initWithOmittedItemTypes:0];

  return v2;
}

- (void)rebuildSpeechProfileForUserId:(id)a3 completion:(id)a4
{
  v6 = a4;
  adminService = self->_adminService;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CKVocabularyAdministrator_rebuildSpeechProfileForUserId_completion___block_invoke;
  v9[3] = &unk_1E831EAB8;
  v10 = v6;
  v8 = v6;
  [(CKVAdminService *)adminService rebuildSpeechProfileForUserId:a3 completion:v9];
}

uint64_t __70__CKVocabularyAdministrator_rebuildSpeechProfileForUserId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (void)deleteAllItemsWithUserId:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 length])
  {
    v12 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    v17 = "[CKVocabularyAdministrator deleteAllItemsWithUserId:deviceId:completion:]";
    v13 = "%s userId cannot be empty.";
    goto LABEL_11;
  }

  if (![v9 length])
  {
    v12 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      if (!v10)
      {
        goto LABEL_9;
      }

LABEL_8:
      v10[2](v10, 3);
      goto LABEL_9;
    }

    *buf = 136315138;
    v17 = "[CKVocabularyAdministrator deleteAllItemsWithUserId:deviceId:completion:]";
    v13 = "%s deviceId cannot be empty.";
LABEL_11:
    _os_log_error_impl(&dword_1C8683000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  adminService = self->_adminService;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CKVocabularyAdministrator_deleteAllItemsWithUserId_deviceId_completion___block_invoke;
  v14[3] = &unk_1E831EAB8;
  v15 = v10;
  [(CKVAdminService *)adminService deleteAllItemsWithUserId:v8 deviceId:v9 completion:v14];

LABEL_9:
}

uint64_t __74__CKVocabularyAdministrator_deleteAllItemsWithUserId_deviceId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (void)deleteAllItemsWithUserId:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v9 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[CKVocabularyAdministrator deleteAllItemsWithUserId:completion:]";
      _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s userId cannot be empty.", buf, 0xCu);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    v7[2](v7, 3);
    goto LABEL_6;
  }

  adminService = self->_adminService;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CKVocabularyAdministrator_deleteAllItemsWithUserId_completion___block_invoke;
  v10[3] = &unk_1E831EAB8;
  v11 = v7;
  [(CKVAdminService *)adminService deleteAllItemsWithUserId:v6 completion:v10];

LABEL_6:
}

uint64_t __65__CKVocabularyAdministrator_deleteAllItemsWithUserId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (id)simulateEventHandling:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v5 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CKVocabularyAdministrator simulateEventHandling:]";
      _os_log_impl(&dword_1C8683000, v5, OS_LOG_TYPE_INFO, "%s Event simulation is not supported on customer install.", &buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1966;
    v24 = __Block_byref_object_dispose__1967;
    v25 = 0;
    adminService = self->_adminService;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__CKVocabularyAdministrator_simulateEventHandling___block_invoke;
    v14[3] = &unk_1E831EB08;
    p_buf = &buf;
    v14[4] = self;
    v9 = v7;
    v15 = v9;
    [(CKVAdminService *)adminService startEventSimulation:v3 completion:v14];
    v10 = dispatch_time(0, (self->_timeout * 1000000000.0));
    if (dispatch_group_wait(v9, v10))
    {
      v11 = CKLogContextVocabulary;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
        *v17 = 136315394;
        v18 = "[CKVocabularyAdministrator simulateEventHandling:]";
        v19 = 2112;
        v20 = v13;
        _os_log_error_impl(&dword_1C8683000, v11, OS_LOG_TYPE_ERROR, "%s Timed out waiting for admin service to start simulation. timeout: %@ seconds", v17, 0x16u);
      }
    }

    v6 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  return v6;
}

void __51__CKVocabularyAdministrator_simulateEventHandling___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = CKLogContextVocabulary;
  if (a2 == 1)
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CKVocabularyAdministrator simulateEventHandling:]_block_invoke";
      _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s Successfuly start an event simulation.", &v11, 0xCu);
    }

    v4 = [[CKVocabularyAdminEventSimulator alloc] initWithAdminService:*(*(a1 + 32) + 8)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = v3;
    v10 = [v8 numberWithInteger:a2];
    v11 = 136315394;
    v12 = "[CKVocabularyAdministrator simulateEventHandling:]_block_invoke";
    v13 = 2112;
    v14 = v10;
    _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s Failed to start an event simulation due to service error result: %@", &v11, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)captureVocabularySnapshot:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v8 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[CKVocabularyAdministrator captureVocabularySnapshot:completion:]";
      _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", buf, 0xCu);
    }

    if (v7)
    {
      v7[2](v7, 3, 0);
    }
  }

  else
  {
    adminService = self->_adminService;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__CKVocabularyAdministrator_captureVocabularySnapshot_completion___block_invoke;
    v10[3] = &unk_1E831EAE0;
    v11 = v7;
    [(CKVAdminService *)adminService captureVocabularySnapshot:v6 completion:v10];
  }
}

uint64_t __66__CKVocabularyAdministrator_captureVocabularySnapshot_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (void)triggerMaintenance:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v5 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[CKVocabularyAdministrator triggerMaintenance:]";
      _os_log_impl(&dword_1C8683000, v5, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, 3);
    }
  }

  else
  {
    adminService = self->_adminService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__CKVocabularyAdministrator_triggerMaintenance___block_invoke;
    v7[3] = &unk_1E831EAB8;
    v8 = v4;
    [(CKVAdminService *)adminService triggerMaintenance:v7];
  }
}

uint64_t __48__CKVocabularyAdministrator_triggerMaintenance___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (void)_triggerMigration:(BOOL)a3 completeAfterTrigger:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v9 = @"completed";
  if (v5)
  {
    v9 = @"triggered";
  }

  v10 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__CKVocabularyAdministrator__triggerMigration_completeAfterTrigger_completion___block_invoke;
  aBlock[3] = &unk_1E831EA18;
  v25 = v26;
  v11 = v10;
  v23 = v11;
  v12 = v8;
  v24 = v12;
  v13 = _Block_copy(aBlock);
  adminService = self->_adminService;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__CKVocabularyAdministrator__triggerMigration_completeAfterTrigger_completion___block_invoke_11;
  v20[3] = &unk_1E831EA68;
  v20[4] = self;
  v15 = v13;
  v21 = v15;
  [(CKVAdminService *)adminService triggerMigration:v6 completeAfterTrigger:v5 completion:v20];
  if (v5)
  {
    v16 = dispatch_time(0, 3000000000);
    queue = self->_queue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__CKVocabularyAdministrator__triggerMigration_completeAfterTrigger_completion___block_invoke_3;
    v18[3] = &unk_1E831EA90;
    v19 = v15;
    dispatch_after(v16, queue, v18);
  }

  _Block_object_dispose(v26, 8);
}

uint64_t __79__CKVocabularyAdministrator__triggerMigration_completeAfterTrigger_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(*(*(result + 48) + 8) + 24))
  {
    v2 = a2;
    v3 = result;
    v4 = CKLogContextVocabulary;
    if (a2 == 3)
    {
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v6 = v3[4];
        v11 = 136315650;
        v12 = "[CKVocabularyAdministrator _triggerMigration:completeAfterTrigger:completion:]_block_invoke";
        v13 = 2112;
        v14 = &unk_1F48584A0;
        v15 = 2112;
        v16 = v6;
        _os_log_error_impl(&dword_1C8683000, v4, OS_LOG_TYPE_ERROR, "%s Timed out after %@s waiting for migration to be %@", &v11, 0x20u);
      }
    }

    else
    {
      if (a2 == 1)
      {
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
        {
          v5 = v3[4];
          v11 = 136315394;
          v12 = "[CKVocabularyAdministrator _triggerMigration:completeAfterTrigger:completion:]_block_invoke";
          v13 = 2112;
          v14 = v5;
          v2 = 1;
          _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Successfuly %@ migration.", &v11, 0x16u);
        }

        goto LABEL_11;
      }

      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v7 = v3[4];
        v8 = MEMORY[0x1E696AD98];
        v9 = v4;
        v10 = [v8 numberWithInteger:v2];
        v11 = 136315650;
        v12 = "[CKVocabularyAdministrator _triggerMigration:completeAfterTrigger:completion:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        v15 = 2112;
        v16 = v10;
        _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s Migration failed to be %@ due to service error result: %@", &v11, 0x20u);
      }
    }

    v2 = 2;
LABEL_11:
    *(*(v3[6] + 8) + 24) = v2;
    result = v3[5];
    if (result)
    {
      return (*(result + 16))(result, *(*(v3[6] + 8) + 24));
    }
  }

  return result;
}

void __79__CKVocabularyAdministrator__triggerMigration_completeAfterTrigger_completion___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__CKVocabularyAdministrator__triggerMigration_completeAfterTrigger_completion___block_invoke_2;
  v4[3] = &unk_1E831EA40;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)triggerMigration:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[CKVocabularyAdministrator triggerMigration:completion:]";
      _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s Not supported on customer install.", &v8, 0xCu);
    }

    if (v6)
    {
      v6[2](v6, 3);
    }
  }

  else
  {
    [(CKVocabularyAdministrator *)self _triggerMigration:v4 completeAfterTrigger:0 completion:v6];
  }
}

- (CKVocabularyAdministrator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use +makeAdministrator factory method" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVocabularyAdministrator)initWithAdminService:(id)a3 timeout:(double)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CKVocabularyAdministrator;
  v11 = [(CKVocabularyAdministrator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_adminService, a3);
    v12->_timeout = a4;
    objc_storeStrong(&v12->_queue, a5);
  }

  return v12;
}

+ (void)initialize
{
  if (CKLogInit_onceToken != -1)
  {
    dispatch_once(&CKLogInit_onceToken, &__block_literal_global_475);
  }
}

+ (id)makeAdministrator
{
  v2 = +[CKVAdministratorFactory sharedAdministratorFactory];
  v3 = [v2 administrator];

  return v3;
}

@end