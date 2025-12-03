@interface CESRSpeechProfileAdminServiceConnection
- (BOOL)_isCustomerInstall:(id)install;
- (CESRSpeechProfileAdminServiceConnection)initWithServiceQueue:(id)queue speechProfileSiteManager:(id)manager;
- (int64_t)_deleteUserExclusiveSitesWithUserId:(id)id;
- (void)_clearAllState;
- (void)beginEvaluationWithSetEnumerator:(id)enumerator completion:(id)completion;
- (void)endEvaluation:(id)evaluation;
- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion;
- (void)triggerMaintenance:(BOOL)maintenance completion:(id)completion;
@end

@implementation CESRSpeechProfileAdminServiceConnection

- (void)endEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  v5 = os_transaction_create();
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CESRSpeechProfileAdminServiceConnection_endEvaluation___block_invoke;
  block[3] = &unk_2785800F8;
  v10 = v5;
  v11 = evaluationCopy;
  block[4] = self;
  v7 = v5;
  v8 = evaluationCopy;
  dispatch_async(serviceQueue, block);
}

uint64_t __57__CESRSpeechProfileAdminServiceConnection_endEvaluation___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _isCustomerInstall:*(a1 + 48)];
  if (result)
  {
    goto LABEL_11;
  }

  v3 = +[CESRSpeechProfileEvaluationStatus sharedStatus];
  v4 = [v3 isEvaluationEnabled];

  if ((v4 & 1) == 0)
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CESRSpeechProfileAdminServiceConnection endEvaluation:]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s Evaluation is not enabled. Use the beginEvaluation API to enable evaluation.", &v10, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      result = (*(result + 16))(result, 2);
    }

    goto LABEL_11;
  }

  [*(a1 + 32) _clearAllState];
  v5 = +[CESRSpeechProfileEvaluationStatus sharedStatus];
  [v5 setEvaluationEnabled:0];

  result = *(a1 + 48);
  if (!result)
  {
LABEL_11:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = *(result + 16);
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

- (void)beginEvaluationWithSetEnumerator:(id)enumerator completion:(id)completion
{
  enumeratorCopy = enumerator;
  completionCopy = completion;
  v8 = os_transaction_create();
  serviceQueue = self->_serviceQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__CESRSpeechProfileAdminServiceConnection_beginEvaluationWithSetEnumerator_completion___block_invoke;
  v13[3] = &unk_2785801B8;
  v13[4] = self;
  v14 = v8;
  v15 = enumeratorCopy;
  v16 = completionCopy;
  v10 = enumeratorCopy;
  v11 = v8;
  v12 = completionCopy;
  dispatch_async(serviceQueue, v13);
}

uint64_t __87__CESRSpeechProfileAdminServiceConnection_beginEvaluationWithSetEnumerator_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _isCustomerInstall:*(a1 + 56)];
  if (result)
  {
    goto LABEL_11;
  }

  v3 = +[CESRSpeechProfileEvaluationStatus sharedStatus];
  v4 = [v3 isEvaluationEnabled];

  if (v4)
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CESRSpeechProfileAdminServiceConnection beginEvaluationWithSetEnumerator:completion:]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v5, OS_LOG_TYPE_ERROR, "%s Evaluation is already enabled. Use the endEvaluation API to disable evaluation.", &v10, 0xCu);
    }

    result = *(a1 + 56);
    if (result)
    {
      result = (*(result + 16))(result, 2);
    }

    goto LABEL_11;
  }

  v6 = +[CESRSpeechProfileEvaluationStatus sharedStatus];
  [v6 setEvaluationEnabled:1];

  [*(*(a1 + 32) + 16) rebuildAllSpeechProfilesWithSetEnumerator:*(a1 + 48)];
  result = *(a1 + 56);
  if (!result)
  {
LABEL_11:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = *(result + 16);
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = os_transaction_create();
  serviceQueue = self->_serviceQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__CESRSpeechProfileAdminServiceConnection_rebuildSpeechProfileForUserId_completion___block_invoke;
  v13[3] = &unk_2785801B8;
  v13[4] = self;
  v14 = idCopy;
  v15 = v8;
  v16 = completionCopy;
  v10 = v8;
  v11 = completionCopy;
  v12 = idCopy;
  dispatch_async(serviceQueue, v13);
}

uint64_t __84__CESRSpeechProfileAdminServiceConnection_rebuildSpeechProfileForUserId_completion___block_invoke(void *a1)
{
  [*(a1[4] + 16) rebuildSpeechProfileSiteWithUserId:a1[5]];
  result = a1[7];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)triggerMaintenance:(BOOL)maintenance completion:(id)completion
{
  maintenanceCopy = maintenance;
  completionCopy = completion;
  v7 = os_transaction_create();
  if (maintenanceCopy)
  {
    serviceQueue = self->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__CESRSpeechProfileAdminServiceConnection_triggerMaintenance_completion___block_invoke;
    block[3] = &unk_27857FFE8;
    block[4] = self;
    dispatch_sync(serviceQueue, block);
  }

  [(CESRSpeechProfileSiteManager *)self->_speechProfileSiteManager performMaintenance:0 shouldDefer:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (BOOL)_isCustomerInstall:(id)install
{
  v10 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v4 = +[CESRUtilities isCustomerInstall];
  if (v4)
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[CESRSpeechProfileAdminServiceConnection _isCustomerInstall:]";
      _os_log_impl(&dword_225EEB000, v5, OS_LOG_TYPE_INFO, "%s Admin operations are not supported on customer installs.", &v8, 0xCu);
    }

    if (installCopy)
    {
      installCopy[2](installCopy, 2);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int64_t)_deleteUserExclusiveSitesWithUserId:(id)id
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (![idCopy length])
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v5 = 2;
      goto LABEL_8;
    }

    v13 = 136315394;
    v14 = "[CESRSpeechProfileAdminServiceConnection _deleteUserExclusiveSitesWithUserId:]";
    v15 = 2112;
    v16 = idCopy;
    v7 = "%s Invalid userId: %@";
    v8 = v6;
    v9 = 22;
LABEL_10:
    _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, v7, &v13, v9);
    goto LABEL_7;
  }

  if (![(CESRSpeechProfileSiteManager *)self->_speechProfileSiteManager clearSpeechProfileSiteWithUserId:idCopy])
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = 136315138;
    v14 = "[CESRSpeechProfileAdminServiceConnection _deleteUserExclusiveSitesWithUserId:]";
    v7 = "%s Clear failed.";
    v8 = v10;
    v9 = 12;
    goto LABEL_10;
  }

  v5 = 1;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_clearAllState
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[CESRSpeechProfileAdminServiceConnection _clearAllState]";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Resetting all state across all modules.", &v5, 0xCu);
  }

  [(CESRSpeechProfileSiteManager *)self->_speechProfileSiteManager clearAllState];
  v4 = *MEMORY[0x277D85DE8];
}

- (CESRSpeechProfileAdminServiceConnection)initWithServiceQueue:(id)queue speechProfileSiteManager:(id)manager
{
  queueCopy = queue;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CESRSpeechProfileAdminServiceConnection;
  v9 = [(CESRSpeechProfileAdminServiceConnection *)&v13 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_serviceQueue, queue), v10->_serviceQueue) && (objc_storeStrong(&v10->_speechProfileSiteManager, manager), v10->_speechProfileSiteManager))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end