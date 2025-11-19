@interface CKVocabularyAdminEventSimulator
- (CKVocabularyAdminEventSimulator)initWithAdminService:(id)a3 timeout:(double)a4;
- (int64_t)finish;
- (void)dealloc;
- (void)handleTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 completion:(id)a5;
@end

@implementation CKVocabularyAdminEventSimulator

- (void)handleTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  adminService = self->_adminService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CKVocabularyAdminEventSimulator_handleTask_reason_completion___block_invoke;
  v11[3] = &unk_1E831EB80;
  v13 = v6;
  v12 = v8;
  v10 = v8;
  [(CKVAdminService *)adminService handleTask:v6 reason:v5 completion:v11];
}

uint64_t __64__CKVocabularyAdminEventSimulator_handleTask_reason_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = CKLogContextVocabulary;
  if (a2 == 1)
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = CKVTaskIdDescription(v4);
      v14 = 136315394;
      v15 = "[CKVocabularyAdminEventSimulator handleTask:reason:completion:]_block_invoke";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1C8683000, v5, OS_LOG_TYPE_INFO, "%s Successfuly handle %@ simulated event.", &v14, 0x16u);
    }

    result = *(a1 + 32);
    if (result)
    {
      v8 = *(result + 16);
      return v8();
    }
  }

  else
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = v3;
      v12 = CKVTaskIdDescription(v10);
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v14 = 136315650;
      v15 = "[CKVocabularyAdminEventSimulator handleTask:reason:completion:]_block_invoke";
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_1C8683000, v11, OS_LOG_TYPE_ERROR, "%s Failed to handle %@ simulated event due to service error result: %@", &v14, 0x20u);
    }

    result = *(a1 + 32);
    if (result)
    {
      v8 = *(result + 16);
      return v8();
    }
  }

  return result;
}

- (int64_t)finish
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 2;
  adminService = self->_adminService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CKVocabularyAdminEventSimulator_finish__block_invoke;
  v11[3] = &unk_1E831EB08;
  v13 = &v14;
  v11[4] = self;
  v5 = v3;
  v12 = v5;
  [(CKVAdminService *)adminService finishEventSimulation:v11];
  v6 = dispatch_time(0, (self->_timeout * 1000000000.0));
  if (dispatch_group_wait(v5, v6))
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
      *buf = 136315394;
      v19 = "[CKVocabularyAdminEventSimulator finish]";
      v20 = 2112;
      v21 = v10;
      _os_log_error_impl(&dword_1C8683000, v7, OS_LOG_TYPE_ERROR, "%s Timed out waiting for admin service to finish simulation. timeout: %@ seconds", buf, 0x16u);
    }
  }

  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __41__CKVocabularyAdminEventSimulator_finish__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = CKLogContextVocabulary;
  if (a2 == 1)
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[CKVocabularyAdminEventSimulator finish]_block_invoke";
      _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s Successfuly finish event simulation.", &v8, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = v3;
    v7 = [v5 numberWithInteger:a2];
    v8 = 136315394;
    v9 = "[CKVocabularyAdminEventSimulator finish]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&dword_1C8683000, v6, OS_LOG_TYPE_ERROR, "%s Failed to finish event simulation due to service error result: %@", &v8, 0x16u);
  }

  *(*(a1 + 32) + 24) = 1;
  dispatch_group_leave(*(a1 + 40));
}

- (void)dealloc
{
  if (!self->_simulationFinished)
  {
    v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"[CKVocabularyAdminEventSimulator finish] was not called" userInfo:MEMORY[0x1E695E0F8]];
    objc_exception_throw(v2);
  }

  v3.receiver = self;
  v3.super_class = CKVocabularyAdminEventSimulator;
  [(CKVocabularyAdminEventSimulator *)&v3 dealloc];
}

- (CKVocabularyAdminEventSimulator)initWithAdminService:(id)a3 timeout:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CKVocabularyAdminEventSimulator;
  v8 = [(CKVocabularyAdminEventSimulator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_adminService, a3);
    if (!v9->_adminService)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9->_timeout = a4;
    v9->_simulationFinished = 0;
  }

  v10 = v9;
LABEL_6:

  return v10;
}

@end