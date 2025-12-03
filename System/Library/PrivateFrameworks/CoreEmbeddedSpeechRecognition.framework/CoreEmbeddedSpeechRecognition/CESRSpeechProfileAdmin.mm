@interface CESRSpeechProfileAdmin
+ (id)makeAdmin;
- (CESRSpeechProfileAdmin)init;
- (CESRSpeechProfileAdmin)initWithAdminService:(id)service timeout:(double)timeout queue:(id)queue;
- (int64_t)_synchronouslyWrapRequest:(id)request;
- (int64_t)beginEvaluation:(id)evaluation;
- (int64_t)beginEvaluationWithSetEnumerator:(id)enumerator;
- (int64_t)endEvaluation;
- (void)beginEvaluation:(id)evaluation completion:(id)completion;
- (void)beginEvaluationWithSetEnumerator:(id)enumerator completion:(id)completion;
- (void)endEvaluation:(id)evaluation;
- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion;
@end

@implementation CESRSpeechProfileAdmin

- (int64_t)_synchronouslyWrapRequest:(id)request
{
  requestCopy = request;
  v5 = dispatch_group_create();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CESRSpeechProfileAdmin__synchronouslyWrapRequest___block_invoke;
  aBlock[3] = &unk_27857FC88;
  v19 = &v20;
  aBlock[4] = self;
  v6 = v5;
  v18 = v6;
  v7 = _Block_copy(aBlock);
  dispatch_group_enter(v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__CESRSpeechProfileAdmin__synchronouslyWrapRequest___block_invoke_13;
  v15[3] = &unk_27857FCD8;
  v15[4] = self;
  v8 = v7;
  v16 = v8;
  requestCopy[2](requestCopy, v15);
  v9 = dispatch_time(0, (self->_timeout * 1000000000.0));
  if (dispatch_group_wait(v6, v9))
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__CESRSpeechProfileAdmin__synchronouslyWrapRequest___block_invoke_3;
    v13[3] = &unk_2785802D0;
    v14 = v8;
    dispatch_sync(queue, v13);
  }

  v11 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v11;
}

void __52__CESRSpeechProfileAdmin__synchronouslyWrapRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 48) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = a2;
    if (*(*(*(a1 + 48) + 8) + 24) == 4)
    {
      v4 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = *(*(a1 + 32) + 16);
        v8 = v4;
        v9 = [v6 numberWithDouble:v7];
        v10 = 136315394;
        v11 = "[CESRSpeechProfileAdmin _synchronouslyWrapRequest:]_block_invoke";
        v12 = 2112;
        v13 = v9;
        _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s Timed out waiting for admin service. Timeout: %@ seconds", &v10, 0x16u);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __52__CESRSpeechProfileAdmin__synchronouslyWrapRequest___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__CESRSpeechProfileAdmin__synchronouslyWrapRequest___block_invoke_2;
  v4[3] = &unk_27857FCB0;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (int64_t)endEvaluation
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CESRSpeechProfileAdmin_endEvaluation__block_invoke;
  v3[3] = &unk_27857FC60;
  v3[4] = self;
  return [(CESRSpeechProfileAdmin *)self _synchronouslyWrapRequest:v3];
}

- (void)endEvaluation:(id)evaluation
{
  v14 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  v5 = +[CESRUtilities isCustomerInstall];
  v6 = *MEMORY[0x277CEF0E8];
  v7 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 136315138;
      v13 = "[CESRSpeechProfileAdmin endEvaluation:]";
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Admin operations are not supported on customer installs.", buf, 0xCu);
    }

    if (evaluationCopy)
    {
      evaluationCopy[2](evaluationCopy, 3);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v13 = "[CESRSpeechProfileAdmin endEvaluation:]";
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Submitting request to end evaluation", buf, 0xCu);
    }

    adminService = self->_adminService;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__CESRSpeechProfileAdmin_endEvaluation___block_invoke;
    v10[3] = &unk_27857FC10;
    v11 = evaluationCopy;
    [(CESRSpeechProfileAdminService *)adminService endEvaluation:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __40__CESRSpeechProfileAdmin_endEvaluation___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = @"NOT ";
    if (a2 == 1)
    {
      v5 = &stru_283946208;
    }

    v9 = 136315394;
    v10 = "[CESRSpeechProfileAdmin endEvaluation:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Evaluation mode %@deactivated", &v9, 0x16u);
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

    result = (*(result + 16))(result, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)beginEvaluationWithSetEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__CESRSpeechProfileAdmin_beginEvaluationWithSetEnumerator___block_invoke;
  v8[3] = &unk_27857FC38;
  v8[4] = self;
  v9 = enumeratorCopy;
  v5 = enumeratorCopy;
  v6 = [(CESRSpeechProfileAdmin *)self _synchronouslyWrapRequest:v8];

  return v6;
}

- (void)beginEvaluationWithSetEnumerator:(id)enumerator completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  completionCopy = completion;
  if (+[CESRUtilities isCustomerInstall])
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[CESRSpeechProfileAdmin beginEvaluationWithSetEnumerator:completion:]";
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s Admin operations are not supported on customer installs.", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = *MEMORY[0x277CEF0E8];
    v10 = *MEMORY[0x277CEF0E8];
    if (enumeratorCopy)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[CESRSpeechProfileAdmin beginEvaluationWithSetEnumerator:completion:]";
        _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s Submitting request to begin evaluation.", buf, 0xCu);
      }

      adminService = self->_adminService;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __70__CESRSpeechProfileAdmin_beginEvaluationWithSetEnumerator_completion___block_invoke;
      v13[3] = &unk_27857FC10;
      v14 = completionCopy;
      [(CESRSpeechProfileAdminService *)adminService beginEvaluationWithSetEnumerator:enumeratorCopy completion:v13];

      goto LABEL_12;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CESRSpeechProfileAdmin beginEvaluationWithSetEnumerator:completion:]";
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s setEnumerator cannot be nil.", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (completionCopy)
  {
LABEL_11:
    (*(completionCopy + 2))(completionCopy, 3);
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __70__CESRSpeechProfileAdmin_beginEvaluationWithSetEnumerator_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = @"NOT ";
    if (a2 == 1)
    {
      v5 = &stru_283946208;
    }

    v9 = 136315394;
    v10 = "[CESRSpeechProfileAdmin beginEvaluationWithSetEnumerator:completion:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Evaluation mode %@activated", &v9, 0x16u);
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

    result = (*(result + 16))(result, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)beginEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__CESRSpeechProfileAdmin_beginEvaluation___block_invoke;
  v8[3] = &unk_27857FC38;
  v8[4] = self;
  v9 = evaluationCopy;
  v5 = evaluationCopy;
  v6 = [(CESRSpeechProfileAdmin *)self _synchronouslyWrapRequest:v8];

  return v6;
}

- (void)beginEvaluation:(id)evaluation completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  completionCopy = completion;
  if (+[CESRUtilities isCustomerInstall])
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CESRSpeechProfileAdmin beginEvaluation:completion:]";
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s Admin operations are not supported on customer installs.", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (evaluationCopy)
  {
    v19 = 0;
    v9 = [evaluationCopy toSerializedSets:&v19];
    v10 = v19;
    if (v9)
    {
      if ([v9 count])
      {
        v11 = [MEMORY[0x277CF94E0] enumeratorForSerializedSets:v9];
        [(CESRSpeechProfileAdmin *)self beginEvaluationWithSetEnumerator:v11 completion:completionCopy];

LABEL_17:
        goto LABEL_18;
      }

      v17 = *MEMORY[0x277CEF0E8];
      if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136315138;
      v21 = "[CESRSpeechProfileAdmin beginEvaluation:completion:]";
      v14 = "%s No sets were serialized from the provided profile.";
      v15 = v17;
      v16 = 12;
    }

    else
    {
      v13 = *MEMORY[0x277CEF0E8];
      if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        if (!completionCopy)
        {
          goto LABEL_17;
        }

LABEL_16:
        completionCopy[2](completionCopy, 2);
        goto LABEL_17;
      }

      *buf = 136315394;
      v21 = "[CESRSpeechProfileAdmin beginEvaluation:completion:]";
      v22 = 2112;
      v23 = v10;
      v14 = "%s Failed to serialize sets from the provided profile, error: %@";
      v15 = v13;
      v16 = 22;
    }

    _os_log_error_impl(&dword_225EEB000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v21 = "[CESRSpeechProfileAdmin beginEvaluation:completion:]";
    _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s profile cannot be nil.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (completionCopy)
  {
LABEL_11:
    completionCopy[2](completionCopy, 3);
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion
{
  completionCopy = completion;
  adminService = self->_adminService;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CESRSpeechProfileAdmin_rebuildSpeechProfileForUserId_completion___block_invoke;
  v9[3] = &unk_27857FC10;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CESRSpeechProfileAdminService *)adminService rebuildSpeechProfileForUserId:id completion:v9];
}

uint64_t __67__CESRSpeechProfileAdmin_rebuildSpeechProfileForUserId_completion___block_invoke(uint64_t a1, uint64_t a2)
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

uint64_t __56__CESRSpeechProfileAdmin_triggerMaintenance_completion___block_invoke(uint64_t a1, uint64_t a2)
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

- (CESRSpeechProfileAdmin)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"You must use +makeAdmin factory method" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

- (CESRSpeechProfileAdmin)initWithAdminService:(id)service timeout:(double)timeout queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = CESRSpeechProfileAdmin;
  v11 = [(CESRSpeechProfileAdmin *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_adminService, service);
    v12->_timeout = timeout;
    objc_storeStrong(&v12->_queue, queue);
  }

  return v12;
}

+ (id)makeAdmin
{
  v2 = +[CESRSpeechProfileAdminFactory sharedAdminFactory];
  admin = [v2 admin];

  return admin;
}

@end