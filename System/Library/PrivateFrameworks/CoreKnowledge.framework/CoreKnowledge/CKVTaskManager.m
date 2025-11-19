@interface CKVTaskManager
+ (id)defaultManager;
- (BOOL)_didLocalizationChange:(unsigned __int16)a3;
- (BOOL)_didTriggerMigration:(id)a3 reason:(unsigned __int16)a4;
- (BOOL)_enumerateLocalInstancesOfSet:(id)a3 priorBookmark:(id)a4 newBookmark:(id *)a5 hasDelta:(BOOL *)a6 addedInstancesBlock:(id)a7;
- (BOOL)_isClearRequiredForSet:(id)a3 installedAppBundleIds:(id)a4;
- (BOOL)_isDeleteRequiredForSet:(id)a3 installedAppBundleIds:(id)a4;
- (BOOL)_isSet:(id)a3 excludedFromInstalledAppBundleIds:(id)a4;
- (BOOL)_loadOrCreateTaskInfo;
- (BOOL)_validateFilesystemState;
- (BOOL)clearAllState;
- (BOOL)handleTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 shouldDefer:(id)a5 completion:(id)a6;
- (CKVTaskManager)initWithManagerName:(id)a3 rootDirectoryURL:(id)a4 setEnumerator:(id)a5 settings:(id)a6;
- (id)_cleanUpDeletedAppDonationsTaskBlock:(unsigned __int16)a3;
- (id)_derivativeTaskBlockForTask:(unsigned __int16)a3 reason:(unsigned __int16)a4;
- (id)_descriptorForSiriLocale;
- (id)_findContactSet;
- (id)_findInstalledAppSet;
- (id)_firstSetWithItemType:(unsigned __int16)a3 matchingDescriptor:(id)a4 inSets:(id)a5;
- (id)_maintenanceTaskBlockWithReason:(unsigned __int16)a3 shouldDefer:(id)a4;
- (id)_siriLanguageChangedTaskBlockWithReason:(unsigned __int16)a3;
- (id)_taskBlockForTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 shouldDefer:(id)a5;
- (id)_verificationTaskBlockForTask:(unsigned __int16)a3 reason:(unsigned __int16)a4;
- (id)_wakePodcastsTaskBlockWithReason:(unsigned __int16)a3;
- (id)_wrapperForTaskBlock:(id)a3 checkingEnablement:(unsigned __int16)a4 reason:(unsigned __int16)a5;
- (void)_enumerateLocalInstancesOfSet:(id)a3 hasDelta:(BOOL *)a4 fromBookmark:(BOOL *)a5;
- (void)_postNotification:(const char *)a3 forChangeToItemType:(unsigned __int16)a4;
- (void)_runInstalledAppDerivativeTasksWithReason:(unsigned __int16)a3;
- (void)_submitTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 taskBlock:(id)a5 completion:(id)a6;
- (void)enableSimulatedTasks:(BOOL)a3;
@end

@implementation CKVTaskManager

- (id)_derivativeTaskBlockForTask:(unsigned __int16)a3 reason:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  if (a3 == 9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__CKVTaskManager__derivativeTaskBlockForTask_reason___block_invoke;
    v10[3] = &unk_1E831E9B0;
    v10[4] = self;
    v11 = 9;
    v12 = a4;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CKVTaskManager *)self _wrapperForTaskBlock:v7 checkingEnablement:v5 reason:v4];

  return v8;
}

void __53__CKVTaskManager__derivativeTaskBlockForTask_reason___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _findInstalledAppSet];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [*(a1 + 32) _blockToCollectInstalledAppBundleIds:v3];
    v5 = [*(*(a1 + 32) + 56) changeRegistry];
    v6 = [v5 bookmarkForSet:v2];
    v7 = *(a1 + 32);
    v41 = 0;
    v8 = [v7 _enumerateLocalInstancesOfSet:v2 priorBookmark:v6 newBookmark:&v41 hasDelta:0 addedInstancesBlock:v4];
    v9 = v41;
    v10 = &unk_1ED5BC000;
    if (v8)
    {
      goto LABEL_7;
    }

    if (!v6)
    {
      goto LABEL_13;
    }

    [v3 removeAllObjects];
    v11 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v43 = "[CKVTaskManager _derivativeTaskBlockForTask:reason:]_block_invoke";
      _os_log_impl(&dword_1C8683000, v11, OS_LOG_TYPE_INFO, "%s Retrying InstalledApp enumeration without a bookmark", buf, 0xCu);
    }

    v12 = *(a1 + 32);
    v40 = v9;
    v13 = [v12 _enumerateLocalInstancesOfSet:v2 priorBookmark:0 newBookmark:&v40 hasDelta:0 addedInstancesBlock:v4];
    v14 = v40;

    v9 = v14;
    if (v13)
    {
LABEL_7:
      v15 = [v3 count];
      v16 = CKLogContextVocabulary;
      v17 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v17)
        {
          v18 = *(a1 + 40);
          v19 = v16;
          v20 = CKVTaskIdDescription(v18);
          *buf = 136315650;
          v43 = "[CKVTaskManager _derivativeTaskBlockForTask:reason:]_block_invoke";
          v44 = 2112;
          v45 = v20;
          v46 = 2112;
          v47 = v3;
          _os_log_impl(&dword_1C8683000, v19, OS_LOG_TYPE_INFO, "%s Running task %@ with added / updated appBundleIds: [%@]", buf, 0x20u);
        }

        v21 = *(a1 + 32);
        v22 = *(v21 + 48);
        v23 = *(a1 + 40);
        v24 = [*(v21 + 24) localization];
        v25 = [v22 derivativeTaskForId:v23 usingLocalization:v24 modifiedItemIds:v3];

        [v25 runWithType:*(a1 + 40) reason:*(a1 + 42)];
        v10 = &unk_1ED5BC000;
      }

      else if (v17)
      {
        *buf = 136315138;
        v43 = "[CKVTaskManager _derivativeTaskBlockForTask:reason:]_block_invoke";
        _os_log_impl(&dword_1C8683000, v16, OS_LOG_TYPE_INFO, "%s Zero InstalledApp adds / updates", buf, 0xCu);
      }

      v39 = 0;
      v32 = [v5 updateBookmark:v9 forSet:v2 error:&v39];
      v33 = v39;
      v34 = v33;
      if (!v32 || (v38 = v33, v35 = [v5 commitAllBookmarkUpdates:&v38], v36 = v38, v34, v34 = v36, (v35 & 1) == 0))
      {
        v37 = *(v10 + 233);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v43 = "[CKVTaskManager _derivativeTaskBlockForTask:reason:]_block_invoke";
          v44 = 2112;
          v45 = v34;
          _os_log_error_impl(&dword_1C8683000, v37, OS_LOG_TYPE_ERROR, "%s Failed to commit updated InstalledApp bookmark to registry: %@", buf, 0x16u);
        }
      }
    }

    else
    {
LABEL_13:
      v28 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 40);
        v30 = v28;
        v31 = CKVTaskIdDescription(v29);
        *buf = 136315394;
        v43 = "[CKVTaskManager _derivativeTaskBlockForTask:reason:]_block_invoke";
        v44 = 2112;
        v45 = v31;
        _os_log_error_impl(&dword_1C8683000, v30, OS_LOG_TYPE_ERROR, "%s Cannot run task %@ without successful enumeration of InstalledApp set", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  v26 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a1 + 40);
    v3 = v26;
    v4 = CKVTaskIdDescription(v27);
    *buf = 136315394;
    v43 = "[CKVTaskManager _derivativeTaskBlockForTask:reason:]_block_invoke";
    v44 = 2112;
    v45 = v4;
    _os_log_error_impl(&dword_1C8683000, v3, OS_LOG_TYPE_ERROR, "%s Cannot run task %@ without InstalledApp set", buf, 0x16u);
LABEL_23:
  }
}

- (id)_verificationTaskBlockForTask:(unsigned __int16)a3 reason:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  if (a3 == 2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__CKVTaskManager__verificationTaskBlockForTask_reason___block_invoke;
    v10[3] = &unk_1E831E9B0;
    v10[4] = self;
    v11 = 2;
    v12 = a4;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CKVTaskManager *)self _wrapperForTaskBlock:v7 checkingEnablement:v5 reason:v4];

  return v8;
}

void __55__CKVTaskManager__verificationTaskBlockForTask_reason___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 48) verificationTaskForId:*(a1 + 40)];
  v3 = [v2 wasLastDonationAccepted];
  v4 = [v2 lastDonationAcceptedDate];
  v5 = [*(*(a1 + 32) + 56) lastMaintenance];
  if (v3 && [v4 compare:v5] == -1)
  {
    v6 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = CKVTaskIdDescription(v7);
      v10 = [v4 ISO8601String];
      v11 = [v5 ISO8601String];
      *buf = 136315906;
      v14 = "[CKVTaskManager _verificationTaskBlockForTask:reason:]_block_invoke";
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s Skipping verification task (%@). No changes have been accepted (%@) since the last maintenance task (%@).", buf, 0x2Au);
    }
  }

  else
  {
    LOWORD(v12) = *(a1 + 40);
    BYTE2(v12) = v3;
    [v2 runWithType:MEMORY[0x1E69E9820] reason:3221225472 completion:{__55__CKVTaskManager__verificationTaskBlockForTask_reason___block_invoke_141, &unk_1E831E9D8, *(a1 + 32), v12}];
  }
}

void __55__CKVTaskManager__verificationTaskBlockForTask_reason___block_invoke_141(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    v11 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = *(a1 + 40);
    v4 = v11;
    v13 = CKVTaskIdDescription(v12);
    *buf = 136315394;
    v16 = "[CKVTaskManager _verificationTaskBlockForTask:reason:]_block_invoke";
    v17 = 2112;
    v18 = v13;
    _os_log_error_impl(&dword_1C8683000, v4, OS_LOG_TYPE_ERROR, "%s Failed to run verification task (%@).", buf, 0x16u);

    goto LABEL_13;
  }

  if (*(a1 + 40) == 2)
  {
    v3 = [*(a1 + 32) _findContactSet];
    if (v3)
    {
      v4 = v3;
      v14 = 0;
      [*(a1 + 32) _enumerateLocalInstancesOfSet:v3 hasDelta:&v14 + 1 fromBookmark:&v14];
      v5 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        v7 = v5;
        v8 = CKVTaskIdDescription(v6);
        v9 = v8;
        v10 = @"confirmed a ";
        v16 = "[CKVTaskManager _verificationTaskBlockForTask:reason:]_block_invoke";
        *buf = 136315650;
        v17 = 2112;
        if (HIBYTE(v14) & v14)
        {
          v10 = @"fixed an in";
        }

        v18 = v8;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s Verification task (%@) %@consistent set", buf, 0x20u);
      }

      if (v14 == 1 && *(a1 + 42) == 1)
      {
        [CKVAnalytics sendDonateVerification:*(a1 + 40) isConsistent:(v14 & 0x100) == 0];
      }

LABEL_13:
    }
  }
}

- (id)_taskBlockForTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 shouldDefer:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ((v6 - 1) <= 0xA)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__CKVTaskManager__taskBlockForTask_reason_shouldDefer___block_invoke;
    v13[3] = &unk_1E831E9B0;
    v13[4] = self;
    v14 = v6;
    v15 = v5;
    v9 = _Block_copy(v13);
LABEL_3:
    v10 = v9;
    goto LABEL_4;
  }

  v10 = 0;
  if (v6 > 103)
  {
    if (v6 == 104)
    {
      v9 = [(CKVTaskManager *)self _wakePodcastsTaskBlockWithReason:v5];
      goto LABEL_3;
    }

    if (v6 == 105)
    {
      v9 = [(CKVTaskManager *)self _cleanUpDeletedAppDonationsTaskBlock:v5];
      goto LABEL_3;
    }
  }

  else
  {
    if (v6 == 101)
    {
      v9 = [(CKVTaskManager *)self _siriLanguageChangedTaskBlockWithReason:v5];
      goto LABEL_3;
    }

    if (v6 == 102)
    {
      v9 = [(CKVTaskManager *)self _maintenanceTaskBlockWithReason:v5 shouldDefer:v8];
      goto LABEL_3;
    }
  }

LABEL_4:
  v11 = [(CKVTaskManager *)self _wrapperForTaskBlock:v10 checkingEnablement:v6 reason:v5];

  return v11;
}

void __55__CKVTaskManager__taskBlockForTask_reason_shouldDefer___block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 24) localization];
  v2 = [*(*(a1 + 32) + 48) taskForId:*(a1 + 40) usingLocalization:?];
  [v2 runWithType:*(a1 + 40) reason:*(a1 + 42)];
  v3 = *(a1 + 40);
  switch(v3)
  {
    case 10:
      v4 = *(a1 + 32);
      v5 = "com.apple.siri.vocabulary.findmy_devices_changed";
      v6 = 27122;
      break;
    case 3:
      [*(a1 + 32) _runInstalledAppDerivativeTasksWithReason:*(a1 + 42)];
      goto LABEL_8;
    case 2:
      v4 = *(a1 + 32);
      v5 = "com.apple.siri.vocabulary.contacts_changed";
      v6 = 19668;
      break;
    default:
      goto LABEL_8;
  }

  [v4 _postNotification:v5 forChangeToItemType:v6];
LABEL_8:
}

- (void)_postNotification:(const char *)a3 forChangeToItemType:(unsigned __int16)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  setEnumerator = self->_setEnumerator;
  v17 = 0;
  v8 = [(CCSetEnumerator *)setEnumerator allSetsWithItemType:a4 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [(CKVTaskManager *)self _firstSetWithItemType:v4 inSets:v8];
    if (v10)
    {
      v16 = 0;
      [(CKVTaskManager *)self _enumerateLocalInstancesOfSet:v10 hasDelta:&v16 fromBookmark:0];
      if (v16 == 1)
      {
        notify_post(a3);
        v11 = CKLogContextVocabulary;
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = v11;
          v14 = [v12 stringWithUTF8String:a3];
          *buf = 136315394;
          v19 = "[CKVTaskManager _postNotification:forChangeToItemType:]";
          v20 = 2112;
          v21 = v14;
          _os_log_impl(&dword_1C8683000, v13, OS_LOG_TYPE_INFO, "%s Posted change notification: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v15 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[CKVTaskManager _postNotification:forChangeToItemType:]";
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&dword_1C8683000, v15, OS_LOG_TYPE_ERROR, "%s Failed to discover all sets: %@", buf, 0x16u);
    }
  }
}

- (BOOL)_enumerateLocalInstancesOfSet:(id)a3 priorBookmark:(id)a4 newBookmark:(id *)a5 hasDelta:(BOOL *)a6 addedInstancesBlock:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v14 = @"prior bookmark";
    *buf = 136315650;
    *&buf[4] = "[CKVTaskManager _enumerateLocalInstancesOfSet:priorBookmark:newBookmark:hasDelta:addedInstancesBlock:]";
    *&buf[12] = 2112;
    if (!v11)
    {
      v14 = @"NO bookmark";
    }

    *&buf[14] = v14;
    *&buf[22] = 2112;
    v57 = v10;
    _os_log_impl(&dword_1C8683000, v13, OS_LOG_TYPE_INFO, "%s Enumerating from %@ for set: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = __Block_byref_object_copy__1752;
  v58 = __Block_byref_object_dispose__1753;
  v59 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v15 = [v10 changePublisher];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __103__CKVTaskManager__enumerateLocalInstancesOfSet_priorBookmark_newBookmark_hasDelta_addedInstancesBlock___block_invoke;
  v32[3] = &unk_1E831E960;
  v34 = buf;
  v16 = v10;
  v33 = v16;
  v35 = &v44;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __103__CKVTaskManager__enumerateLocalInstancesOfSet_priorBookmark_newBookmark_hasDelta_addedInstancesBlock___block_invoke_132;
  v28[3] = &unk_1E831E988;
  v30 = &v40;
  v31 = &v36;
  v17 = v12;
  v29 = v17;
  v18 = [v15 sinkWithBookmark:v11 completion:v32 receiveInput:v28];

  v19 = *(v45 + 24);
  if (v19)
  {
    v20 = *(v41 + 6);
    if (v20 || *(v37 + 6))
    {
      v21 = CKLogContextVocabulary;
      v22 = 1;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        v23 = *(v37 + 6);
        v24 = @"prior";
        if (!v11)
        {
          v24 = @"nil";
        }

        *v48 = 136316162;
        v49 = "[CKVTaskManager _enumerateLocalInstancesOfSet:priorBookmark:newBookmark:hasDelta:addedInstancesBlock:]";
        v50 = 1024;
        *v51 = v20;
        *&v51[4] = 1024;
        *&v51[6] = v23;
        v52 = 2112;
        v53 = v24;
        v54 = 2112;
        v55 = v16;
        _os_log_impl(&dword_1C8683000, v21, OS_LOG_TYPE_INFO, "%s Completed local instance enumeration counting %u adds and %u removes from %@ bookmark for set: %@", v48, 0x2Cu);
      }

      if (!a6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v26 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        *v48 = 136315394;
        v49 = "[CKVTaskManager _enumerateLocalInstancesOfSet:priorBookmark:newBookmark:hasDelta:addedInstancesBlock:]";
        v50 = 2112;
        *v51 = v16;
        _os_log_impl(&dword_1C8683000, v26, OS_LOG_TYPE_INFO, "%s Completed enumeration with no local changes to set: %@", v48, 0x16u);
      }

      v22 = 0;
      if (!a6)
      {
        goto LABEL_14;
      }
    }

    *a6 = v22;
LABEL_14:
    if (a5)
    {
      *a5 = *(*&buf[8] + 40);
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(buf, 8);

  return v19;
}

void __103__CKVTaskManager__enumerateLocalInstancesOfSet_priorBookmark_newBookmark_hasDelta_addedInstancesBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 state])
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = v7;
      v10 = [v5 error];
      v11 = 136315650;
      v12 = "[CKVTaskManager _enumerateLocalInstancesOfSet:priorBookmark:newBookmark:hasDelta:addedInstancesBlock:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s Failed to enumerate set: %@ error: %@", &v11, 0x20u);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }
}

void __103__CKVTaskManager__enumerateLocalInstancesOfSet_priorBookmark_newBookmark_hasDelta_addedInstancesBlock___block_invoke_132(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 addedLocalInstances];
  *(*(a1[5] + 8) + 24) += [v4 count];

  v5 = [v3 removedLocalInstances];
  *(*(a1[6] + 8) + 24) += [v5 count];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v3 addedLocalInstances];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = a1[4];
        if (v11)
        {
          (*(v11 + 16))(v11, *(*(&v12 + 1) + 8 * v10));
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_enumerateLocalInstancesOfSet:(id)a3 hasDelta:(BOOL *)a4 fromBookmark:(BOOL *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(CKVTaskManagerInfo *)self->_info changeRegistry];
  v10 = [v9 bookmarkForSet:v8];
  v25 = 0;
  v11 = [(CKVTaskManager *)self _enumerateLocalInstancesOfSet:v8 priorBookmark:v10 newBookmark:&v25 hasDelta:a4 addedInstancesBlock:0];
  v12 = v25;
  if (!v10 || v11)
  {
    if (!v11)
    {
      v16 = 0;
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[CKVTaskManager _enumerateLocalInstancesOfSet:hasDelta:fromBookmark:]";
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1C8683000, v13, OS_LOG_TYPE_INFO, "%s Retrying enumeration without a bookmark for set: %@", buf, 0x16u);
    }

    v24 = v12;
    v14 = [(CKVTaskManager *)self _enumerateLocalInstancesOfSet:v8 priorBookmark:0 newBookmark:&v24 hasDelta:0 addedInstancesBlock:0];
    v15 = v24;

    v10 = 0;
    v16 = 0;
    v12 = v15;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v23 = 0;
  v17 = [v9 updateBookmark:v12 forSet:v8 error:&v23];
  v18 = v23;
  v19 = v18;
  if (v17)
  {
    v22 = v18;
    v20 = [v9 commitAllBookmarkUpdates:&v22];
    v16 = v22;

    if (v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = v18;
  }

  v21 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v27 = "[CKVTaskManager _enumerateLocalInstancesOfSet:hasDelta:fromBookmark:]";
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v16;
    _os_log_error_impl(&dword_1C8683000, v21, OS_LOG_TYPE_ERROR, "%s Failed to commit registry update for set: %@ error: %@", buf, 0x20u);
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (a5)
  {
LABEL_16:
    *a5 = v10 != 0;
  }

LABEL_17:
}

- (id)_descriptorForSiriLocale
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(CKVTaskSettings *)self->_settings localization];
  v3 = [v2 siriLanguageCode];

  v4 = [CKVLocalization supportedNSLocaleFromLanguageCode:v3];
  v5 = objc_alloc(MEMORY[0x1E6993A78]);
  v6 = *MEMORY[0x1E6993990];
  v7 = [v4 localeIdentifier];
  v12 = 0;
  v8 = [v5 initWithKey:v6 value:v7 error:&v12];
  v9 = v12;

  v10 = CKLogContextVocabulary;
  if (v8)
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "[CKVTaskManager _descriptorForSiriLocale]";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_1C8683000, v10, OS_LOG_TYPE_INFO, "%s Resolved locale descriptor: %@ from siriLanguageCode: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[CKVTaskManager _descriptorForSiriLocale]";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v9;
    _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Failed to resolve locale descriptor from siriLanguageCode: %@ error: %@", buf, 0x20u);
  }

  return v8;
}

- (id)_firstSetWithItemType:(unsigned __int16)a3 matchingDescriptor:(id)a4 inSets:(id)a5
{
  v6 = a3;
  v81 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        if ([v15 itemType] == v6)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v16 = [v9 firstObject];
    if ([v9 count] < 2)
    {
      if ([v9 count] == 1)
      {
        v38 = CKLogContextVocabulary;
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
        {
          v39 = MEMORY[0x1E69AA778];
          v40 = v38;
          v41 = [v39 descriptionForTypeIdentifier:v6];
          *buf = 136315650;
          v71 = "[CKVTaskManager _firstSetWithItemType:matchingDescriptor:inSets:]";
          v72 = 2112;
          v73 = v41;
          v74 = 2112;
          v75 = v16;
          _os_log_impl(&dword_1C8683000, v40, OS_LOG_TYPE_INFO, "%s Exactly one set found with itemType: %@ set: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v17 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        v18 = MEMORY[0x1E69AA778];
        v19 = v17;
        v20 = [v18 descriptionForTypeIdentifier:v6];
        *buf = 136315650;
        v71 = "[CKVTaskManager _firstSetWithItemType:matchingDescriptor:inSets:]";
        v72 = 2112;
        v73 = v20;
        v74 = 2112;
        v75 = v9;
        _os_log_impl(&dword_1C8683000, v19, OS_LOG_TYPE_INFO, "%s More than one set with itemType: %@ sets: %@", buf, 0x20u);
      }

      if (v7)
      {
        v53 = v16;
        v54 = v10;
        v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v55 = v9;
        obj = v9;
        v21 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v63;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v63 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v62 + 1) + 8 * j);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v26 = [v25 descriptors];
              v27 = [v26 countByEnumeratingWithState:&v58 objects:v78 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v59;
                while (2)
                {
                  for (k = 0; k != v28; ++k)
                  {
                    if (*v59 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    if ([*(*(&v58 + 1) + 8 * k) isEqual:v7])
                    {
                      [v57 addObject:v25];
                      goto LABEL_30;
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v58 objects:v78 count:16];
                  if (v28)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_30:
            }

            v22 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
          }

          while (v22);
        }

        if ([v57 count] == 1)
        {
          v31 = [v57 firstObject];

          v32 = CKLogContextVocabulary;
          v10 = v54;
          v9 = v55;
          if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
          {
            v33 = MEMORY[0x1E69AA778];
            v34 = v32;
            v35 = [v33 descriptionForTypeIdentifier:v6];
            *buf = 136315906;
            v71 = "[CKVTaskManager _firstSetWithItemType:matchingDescriptor:inSets:]";
            v72 = 2112;
            v73 = v31;
            v74 = 2112;
            v75 = v35;
            v76 = 2112;
            v77 = v7;
            v36 = "%s Found set: %@ with itemType: %@ and descriptor: %@";
LABEL_46:
            _os_log_impl(&dword_1C8683000, v34, OS_LOG_TYPE_INFO, v36, buf, 0x2Au);
          }
        }

        else
        {
          v10 = v54;
          v9 = v55;
          if ([v57 count] < 2)
          {
            v45 = CKLogContextVocabulary;
            if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
            {
              v46 = MEMORY[0x1E69AA778];
              v47 = v45;
              v48 = [v46 descriptionForTypeIdentifier:v6];
              *buf = 136315906;
              v71 = "[CKVTaskManager _firstSetWithItemType:matchingDescriptor:inSets:]";
              v72 = 2112;
              v73 = v48;
              v74 = 2112;
              v75 = v7;
              v76 = 2112;
              v77 = obj;
              _os_log_impl(&dword_1C8683000, v47, OS_LOG_TYPE_INFO, "%s No sets have itemType: %@ and descriptor: %@. Arbitrarily selecting the first of sets: %@", buf, 0x2Au);
            }

            v31 = v53;
            goto LABEL_50;
          }

          v31 = [v57 firstObject];

          v43 = CKLogContextVocabulary;
          if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
          {
            v44 = MEMORY[0x1E69AA778];
            v34 = v43;
            v35 = [v44 descriptionForTypeIdentifier:v6];
            *buf = 136315906;
            v71 = "[CKVTaskManager _firstSetWithItemType:matchingDescriptor:inSets:]";
            v72 = 2112;
            v73 = v35;
            v74 = 2112;
            v75 = v7;
            v76 = 2112;
            v77 = v57;
            v36 = "%s Multiple sets with itemType: %@ have descriptor: %@ arbitrarily selecting the first set: %@";
            goto LABEL_46;
          }
        }

LABEL_50:

        v16 = v31;
        goto LABEL_51;
      }

      v42 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v71 = "[CKVTaskManager _firstSetWithItemType:matchingDescriptor:inSets:]";
        v72 = 2112;
        v73 = v16;
        _os_log_impl(&dword_1C8683000, v42, OS_LOG_TYPE_INFO, "%s Arbitratily selecting the first set: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v37 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v50 = MEMORY[0x1E69AA778];
      v51 = v37;
      v52 = [v50 descriptionForTypeIdentifier:v6];
      *buf = 136315650;
      v71 = "[CKVTaskManager _firstSetWithItemType:matchingDescriptor:inSets:]";
      v72 = 2112;
      v73 = v52;
      v74 = 2112;
      v75 = v10;
      _os_log_error_impl(&dword_1C8683000, v51, OS_LOG_TYPE_ERROR, "%s No set found with itemType: %@ from sets: %@", buf, 0x20u);
    }

    v16 = 0;
  }

LABEL_51:

  return v16;
}

- (id)_wrapperForTaskBlock:(id)a3 checkingEnablement:(unsigned __int16)a4 reason:(unsigned __int16)a5
{
  v8 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CKVTaskManager__wrapperForTaskBlock_checkingEnablement_reason___block_invoke;
  aBlock[3] = &unk_1E831E938;
  aBlock[4] = self;
  v13 = v8;
  v14 = a4;
  v15 = a5;
  v9 = v8;
  v10 = _Block_copy(aBlock);

  return v10;
}

void __65__CKVTaskManager__wrapperForTaskBlock_checkingEnablement_reason___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    v11 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = *(*(a1 + 32) + 8);
    v13 = MEMORY[0x1E696AD98];
    v14 = *(a1 + 48);
    v15 = v11;
    v16 = [v13 numberWithUnsignedShort:v14];
    v17 = CKVTaskIdDescription(*(a1 + 48));
    v21 = 136315906;
    v22 = "[CKVTaskManager _wrapperForTaskBlock:checkingEnablement:reason:]_block_invoke";
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_error_impl(&dword_1C8683000, v15, OS_LOG_TYPE_ERROR, "%s (%@) Missing taskBlock for task (%@) %@", &v21, 0x2Au);
LABEL_10:

    return;
  }

  v2 = [*(*(a1 + 32) + 24) isTaskEnabled:*(a1 + 48) reason:*(a1 + 50)];
  v3 = CKLogContextVocabulary;
  v4 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
  if (!v2)
  {
    if (!v4)
    {
      return;
    }

    v18 = *(*(a1 + 32) + 8);
    v19 = MEMORY[0x1E696AD98];
    v20 = *(a1 + 48);
    v15 = v3;
    v16 = [v19 numberWithUnsignedShort:v20];
    v17 = CKVTaskIdDescription(*(a1 + 48));
    v21 = 136315906;
    v22 = "[CKVTaskManager _wrapperForTaskBlock:checkingEnablement:reason:]_block_invoke";
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_1C8683000, v15, OS_LOG_TYPE_INFO, "%s (%@) Ignoring task (%@) %@ not enabled for current device configuration", &v21, 0x2Au);
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = MEMORY[0x1E696AD98];
    v7 = *(a1 + 48);
    v8 = v3;
    v9 = [v6 numberWithUnsignedShort:v7];
    v10 = CKVTaskIdDescription(*(a1 + 48));
    v21 = 136315906;
    v22 = "[CKVTaskManager _wrapperForTaskBlock:checkingEnablement:reason:]_block_invoke";
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s (%@) Running task (%@) %@", &v21, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_submitTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 taskBlock:(id)a5 completion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    managerName = self->_managerName;
    v14 = MEMORY[0x1E696AD98];
    v15 = v12;
    v16 = [v14 numberWithUnsignedShort:v8];
    v17 = CKVTaskIdDescription(v8);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v7];
    v19 = 136316162;
    v20 = "[CKVTaskManager _submitTask:reason:taskBlock:completion:]";
    v21 = 2112;
    v22 = managerName;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_1C8683000, v15, OS_LOG_TYPE_INFO, "%s (%@) Submitting task (%@) %@ with reason (%@)", &v19, 0x34u);
  }

  [(CKVTaskCoalescer *)self->_coalescer submitTaskWithId:v8 taskBlock:v10 completion:v11];
}

- (void)enableSimulatedTasks:(BOOL)a3
{
  v3 = a3;
  [(CKVDonateTaskProvider *)self->_donateTaskProvider enableSimulatedTasks:?];
  settings = self->_settings;

  [(CKVTaskSettings *)settings setTaskCoalescenceDisabled:v3];
}

- (BOOL)_isDeleteRequiredForSet:(id)a3 installedAppBundleIds:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 itemType];
  v9 = 0;
  if (v8 > 25882)
  {
    if (v8 <= 38250)
    {
      if (v8 > 32964)
      {
        if (v8 == 32965 || v8 == 34307)
        {
          goto LABEL_37;
        }

        v10 = 36059;
      }

      else
      {
        if (v8 == 25883 || v8 == 26512)
        {
          goto LABEL_37;
        }

        v10 = 30598;
      }
    }

    else if (v8 <= 47340)
    {
      if (v8 == 38251 || v8 == 42611)
      {
        goto LABEL_37;
      }

      v10 = 44935;
    }

    else if (v8 > 61351)
    {
      if (v8 == 63369)
      {
        goto LABEL_37;
      }

      v10 = 61352;
    }

    else
    {
      if (v8 == 47341)
      {
        goto LABEL_37;
      }

      v10 = 53482;
    }

LABEL_36:
    if (v8 != v10)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (v8 <= 12009)
  {
    if (v8 > 7718)
    {
      if (v8 == 7719 || v8 == 7822)
      {
        goto LABEL_37;
      }

      v10 = 8194;
    }

    else
    {
      if (v8 == 800 || v8 == 3615)
      {
        goto LABEL_37;
      }

      v10 = 5595;
    }

    goto LABEL_36;
  }

  if (v8 <= 14705)
  {
    if (v8 == 12010 || v8 == 13884)
    {
      goto LABEL_37;
    }

    v10 = 14025;
    goto LABEL_36;
  }

  if (v8 > 15571)
  {
    if (v8 == 15572)
    {
      goto LABEL_37;
    }

    v10 = 16251;
    goto LABEL_36;
  }

  if (v8 != 14706)
  {
    v10 = 14816;
    goto LABEL_36;
  }

LABEL_37:
  if (![(CKVTaskManager *)self _isSet:v6 excludedFromInstalledAppBundleIds:v7])
  {
LABEL_41:
    v9 = 0;
    goto LABEL_42;
  }

  v11 = [v6 changePublisher];
  v12 = [v11 sharedItemCount];

  v13 = CKLogContextVocabulary;
  v14 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v17 = 136315650;
      v18 = "[CKVTaskManager _isDeleteRequiredForSet:installedAppBundleIds:]";
      v19 = 2112;
      v20 = v6;
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_1C8683000, v13, OS_LOG_TYPE_INFO, "%s Skipping delete for nonempty set: %@ with %u shared items", &v17, 0x1Cu);
    }

    goto LABEL_41;
  }

  if (v14)
  {
    v16 = v13;
    v17 = 136315650;
    v18 = "[CKVTaskManager _isDeleteRequiredForSet:installedAppBundleIds:]";
    v19 = 2112;
    v20 = v6;
    v21 = 1024;
    v22 = [v7 count];
    v9 = 1;
    _os_log_impl(&dword_1C8683000, v16, OS_LOG_TYPE_INFO, "%s Delete required for empty set: %@ whose sourceIdentifier does not match any of the %u installed appBundleIds", &v17, 0x1Cu);
  }

  else
  {
    v9 = 1;
  }

LABEL_42:

  return v9;
}

- (BOOL)_isClearRequiredForSet:(id)a3 installedAppBundleIds:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 itemType];
  v9 = 0;
  if (v8 <= 14024)
  {
    if (v8 == 3615)
    {
      goto LABEL_8;
    }

    v10 = 8194;
  }

  else
  {
    if (v8 == 14025 || v8 == 36059)
    {
      goto LABEL_8;
    }

    v10 = 34307;
  }

  if (v8 != v10)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (![(CKVTaskManager *)self _isSet:v6 excludedFromInstalledAppBundleIds:v7])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v11 = [v6 changePublisher];
  v12 = [v11 localItemInstanceCount];

  v13 = CKLogContextVocabulary;
  if (!v12)
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      v17 = "[CKVTaskManager _isClearRequiredForSet:installedAppBundleIds:]";
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_1C8683000, v13, OS_LOG_TYPE_DEBUG, "%s Skipping clear for already empty set: %@", &v16, 0x16u);
    }

    goto LABEL_14;
  }

  v9 = 1;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v16 = 136315906;
    v17 = "[CKVTaskManager _isClearRequiredForSet:installedAppBundleIds:]";
    v18 = 2112;
    v19 = v6;
    v20 = 1024;
    v21 = v12;
    v22 = 1024;
    v23 = [v7 count];
    _os_log_impl(&dword_1C8683000, v14, OS_LOG_TYPE_INFO, "%s Clear required for set: %@ with %u local item instances whose sourceIdentifier does not match any of the %u installed appBundleIds", &v16, 0x22u);
  }

LABEL_15:

  return v9;
}

- (BOOL)_isSet:(id)a3 excludedFromInstalledAppBundleIds:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 descriptorWithKey:*MEMORY[0x1E6993998]];
  v8 = [v7 value];

  if (v8)
  {
    if (![v6 containsObject:v8])
    {
      v11 = 1;
      goto LABEL_9;
    }

    v9 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "[CKVTaskManager _isSet:excludedFromInstalledAppBundleIds:]";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      _os_log_debug_impl(&dword_1C8683000, v9, OS_LOG_TYPE_DEBUG, "%s No cleanup required for set: %@ which is associated with installed app: %@", &v13, 0x20u);
    }
  }

  else
  {
    v10 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[CKVTaskManager _isSet:excludedFromInstalledAppBundleIds:]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1C8683000, v10, OS_LOG_TYPE_INFO, "%s Skipping cleanup for set: %@ with no sourceIdentifier", &v13, 0x16u);
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)_cleanUpDeletedAppDonationsTaskBlock:(unsigned __int16)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__CKVTaskManager__cleanUpDeletedAppDonationsTaskBlock___block_invoke;
  aBlock[3] = &unk_1E831E828;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __55__CKVTaskManager__cleanUpDeletedAppDonationsTaskBlock___block_invoke(uint64_t a1)
{
  v1 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 48) allInstalledAppBundleIdentifiers];
  if ([(__CFString *)v2 count])
  {
    v3 = *(*(v1 + 32) + 40);
    v52 = 0;
    v4 = [v3 allSets:&v52];
    v5 = v52;
    v6 = v5;
    if (v4)
    {
      v36 = v5;
      v7 = _os_feature_enabled_impl();
      v8 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (v7)
        {
          v9 = @"YES";
        }

        *buf = 136315394;
        v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
        v55 = 2112;
        v56 = v9;
        _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s enableSetDeletion = %@", buf, 0x16u);
      }

      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v48 = 0u;
      v37 = v4;
      obj = v4;
      v10 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (v10)
      {
        v12 = v10;
        v40 = *v49;
        *&v11 = 136315138;
        v35 = v11;
        v38 = v1;
LABEL_9:
        v13 = 0;
        while (1)
        {
          if (*v49 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v48 + 1) + 8 * v13);
          if ([*(v1 + 32) _isClearRequiredForSet:v14 installedAppBundleIds:{v2, v35}])
          {
            v15 = v12;
            v16 = v2;
            v17 = v7;
            v18 = CKLogContextVocabulary;
            if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
              v55 = 2112;
              v56 = v14;
              _os_log_impl(&dword_1C8683000, v18, OS_LOG_TYPE_INFO, "%s Submitting clear for set: %@", buf, 0x16u);
            }

            v19 = dispatch_semaphore_create(0);
            v20 = MEMORY[0x1E6993A80];
            v21 = [(__CFString *)v14 itemType];
            v22 = [(__CFString *)v14 descriptors];
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __55__CKVTaskManager__cleanUpDeletedAppDonationsTaskBlock___block_invoke_111;
            v46[3] = &unk_1E831E8E8;
            v46[4] = v14;
            v23 = v19;
            v47 = v23;
            [v20 fullSetDonationWithItemType:v21 descriptors:v22 completion:v46];

            v24 = dispatch_time(0, 300000000000);
            if (dispatch_semaphore_wait(v23, v24))
            {
              v25 = CKLogContextVocabulary;
              if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
                v55 = 2112;
                v56 = v14;
                v57 = 2112;
                v58 = &unk_1F4858490;
                _os_log_error_impl(&dword_1C8683000, v25, OS_LOG_TYPE_ERROR, "%s Timed out waiting to clear set: %@ timeout: %@ seconds", buf, 0x20u);
              }
            }

            v7 = v17;
            v2 = v16;
            v12 = v15;
            v1 = v38;
          }

          if (v7 && [*(v1 + 32) _isDeleteRequiredForSet:v14 installedAppBundleIds:v2])
          {
            v26 = dispatch_semaphore_create(0);
            v45 = [(__CFString *)v14 itemType];
            v44 = [(__CFString *)v14 descriptors];
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __55__CKVTaskManager__cleanUpDeletedAppDonationsTaskBlock___block_invoke_113;
            aBlock[3] = &unk_1E831E910;
            aBlock[4] = v14;
            v27 = v26;
            v42 = v27;
            v43 = _Block_copy(aBlock);
            v28 = [MEMORY[0x1E6993A80] methodSignatureForSelector:sel_deleteSetWithItemType_descriptors_completion_];
            v29 = CKLogContextVocabulary;
            if (v28)
            {
              if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
                v55 = 2112;
                v56 = v14;
                _os_log_impl(&dword_1C8683000, v29, OS_LOG_TYPE_INFO, "%s Submitting delete for set: %@", buf, 0x16u);
              }

              v30 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v28];
              [v30 setTarget:objc_opt_class()];
              [v30 setSelector:sel_deleteSetWithItemType_descriptors_completion_];
              [v30 setArgument:&v45 atIndex:2];
              [v30 setArgument:&v44 atIndex:3];
              [v30 setArgument:&v43 atIndex:4];
              [v30 invoke];
              v31 = dispatch_time(0, 300000000000);
              if (dispatch_semaphore_wait(v27, v31))
              {
                v32 = CKLogContextVocabulary;
                if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
                  v55 = 2112;
                  v56 = v14;
                  v57 = 2112;
                  v58 = &unk_1F4858490;
                  _os_log_error_impl(&dword_1C8683000, v32, OS_LOG_TYPE_ERROR, "%s Timed out waiting to delete set: %@ timeout: %@ seconds", buf, 0x20u);
                }
              }
            }

            else if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
              _os_log_error_impl(&dword_1C8683000, v29, OS_LOG_TYPE_ERROR, "%s Failed to resolve deleteSet method signature", buf, 0xCu);
            }

            if (!v28)
            {
              break;
            }
          }

          if (v12 == ++v13)
          {
            v12 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
            if (v12)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v6 = v36;
      v4 = v37;
    }

    else
    {
      v34 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
        v55 = 2112;
        v56 = v6;
        _os_log_error_impl(&dword_1C8683000, v34, OS_LOG_TYPE_ERROR, "%s Failed to enumerate all sets: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v33 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
      v55 = 2112;
      v56 = v2;
      _os_log_error_impl(&dword_1C8683000, v33, OS_LOG_TYPE_ERROR, "%s Failed to resolve installed appBundleIds: %@", buf, 0x16u);
    }
  }
}

void __55__CKVTaskManager__cleanUpDeletedAppDonationsTaskBlock___block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v5 = a3;
  v6 = [a2 finish:&v11];
  v7 = v11;

  v8 = CKLogContextVocabulary;
  if (v6)
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136315394;
      v13 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s Successfully cleared set: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    *buf = 136315650;
    v13 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v7;
    _os_log_error_impl(&dword_1C8683000, v8, OS_LOG_TYPE_ERROR, "%s Failed to clear set: %@ error: %@", buf, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __55__CKVTaskManager__cleanUpDeletedAppDonationsTaskBlock___block_invoke_113(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = @"success";
    if (v3)
    {
      v6 = v3;
    }

    v7 = 136315650;
    v8 = "[CKVTaskManager _cleanUpDeletedAppDonationsTaskBlock:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Deletion completed for set: %@ with result: %@", &v7, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __55__CKVTaskManager__blockToCollectInstalledAppBundleIds___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 content];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 bundleIdentifier];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }
  }

  else
  {
    v6 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[CKVTaskManager _blockToCollectInstalledAppBundleIds:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_1C8683000, v6, OS_LOG_TYPE_ERROR, "%s Unexpected instance: %@ content: %@", &v7, 0x20u);
    }
  }
}

- (void)_runInstalledAppDerivativeTasksWithReason:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(CKVTaskManager *)self _derivativeTaskBlockForTask:9 reason:a3];
  v5[2]();
  v6 = [(CKVTaskManager *)self _taskBlockForTask:105 reason:v3 shouldDefer:0];

  v6[2]();
}

- (id)_findContactSet
{
  v17 = *MEMORY[0x1E69E9840];
  setEnumerator = self->_setEnumerator;
  v12 = 0;
  v4 = [(CCSetEnumerator *)setEnumerator allSetsWithItemType:19668 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [(CKVTaskManager *)self _firstSetWithItemType:19668 inSets:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "[CKVTaskManager _findContactSet]";
        v15 = 2112;
        v16 = v4;
        _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Failed to find expected Contact set in sets: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[CKVTaskManager _findContactSet]";
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s Failed to enumerate sets: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_findInstalledAppSet
{
  v17 = *MEMORY[0x1E69E9840];
  setEnumerator = self->_setEnumerator;
  v12 = 0;
  v4 = [(CCSetEnumerator *)setEnumerator allSetsWithItemType:36434 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [(CKVTaskManager *)self _descriptorForSiriLocale];
    v7 = [(CKVTaskManager *)self _firstSetWithItemType:36434 matchingDescriptor:v6 inSets:v4];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v10 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "[CKVTaskManager _findInstalledAppSet]";
        v15 = 2112;
        v16 = v4;
        _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Failed to find expected InstalledApp set in sets: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[CKVTaskManager _findInstalledAppSet]";
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s Failed to enumerate sets: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_wakePodcastsTaskBlockWithReason:(unsigned __int16)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CKVTaskManager__wakePodcastsTaskBlockWithReason___block_invoke;
  aBlock[3] = &__block_descriptor_34_e5_v8__0l;
  v6 = a3;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __51__CKVTaskManager__wakePodcastsTaskBlockWithReason___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = CKLogContextVocabulary;
  v3 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
  if (v1 == 14)
  {
    if (v3)
    {
      v4 = MEMORY[0x1E696AD98];
      v5 = v2;
      v6 = [v4 numberWithUnsignedShort:14];
      v7 = 136315394;
      v8 = "[CKVTaskManager _wakePodcastsTaskBlockWithReason:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1C8683000, v5, OS_LOG_TYPE_INFO, "%s Skipping Podcasts wake for reason: %@", &v7, 0x16u);
    }
  }

  else
  {
    if (v3)
    {
      v7 = 136315138;
      v8 = "[CKVTaskManager _wakePodcastsTaskBlockWithReason:]_block_invoke";
      _os_log_impl(&dword_1C8683000, v2, OS_LOG_TYPE_INFO, "%s Waking Podcasts app up", &v7, 0xCu);
    }

    [MEMORY[0x1E69C4EA0] openPodcastsWithOriginBundleId:@"com.apple.siriknowledged"];
  }
}

- (id)_siriLanguageChangedTaskBlockWithReason:(unsigned __int16)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CKVTaskManager__siriLanguageChangedTaskBlockWithReason___block_invoke;
  v5[3] = &unk_1E831E878;
  v5[4] = self;
  v6 = a3;
  v3 = _Block_copy(v5);

  return v3;
}

uint64_t __58__CKVTaskManager__siriLanguageChangedTaskBlockWithReason___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[CKVTaskManager _siriLanguageChangedTaskBlockWithReason:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C8683000, v2, OS_LOG_TYPE_INFO, "%s (%@) Handling Siri language code change notification  - refreshing localization settings", &v5, 0x16u);
  }

  [*(*(a1 + 32) + 24) refreshLocalization];
  return [*(a1 + 32) _didLocalizationChange:*(a1 + 40)];
}

- (id)_maintenanceTaskBlockWithReason:(unsigned __int16)a3 shouldDefer:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CKVTaskManager__maintenanceTaskBlockWithReason_shouldDefer___block_invoke;
  v6[3] = &unk_1E831E878;
  v6[4] = self;
  v7 = a3;
  v4 = _Block_copy(v6);

  return v4;
}

void __62__CKVTaskManager__maintenanceTaskBlockWithReason_shouldDefer___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = &unk_1ED5BC000;
  v3 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 8);
    *buf = 136315394;
    v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
    v59 = 2112;
    v60 = v4;
    _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s (%@) Starting maintenance", buf, 0x16u);
  }

  v5 = [*(a1 + 32) _didTriggerMigration:0 reason:*(a1 + 40)];
  v6 = CKLogContextVocabulary;
  v7 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = *(*(a1 + 32) + 8);
      *buf = 136315394;
      v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
      v59 = 2112;
      v60 = v8;
      _os_log_impl(&dword_1C8683000, v6, OS_LOG_TYPE_INFO, "%s (%@) Skipping maintenance as migration has been triggered", buf, 0x16u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 8);
      *buf = 136315394;
      v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_1C8683000, v6, OS_LOG_TYPE_INFO, "%s (%@) Refreshing localization settings", buf, 0x16u);
    }

    [*(*(a1 + 32) + 24) refreshLocalization];
    if ([*(a1 + 32) _didLocalizationChange:*(a1 + 40)])
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = [objc_opt_class() siriLanguageDependentDonateTasks];
      v12 = [v10 setWithArray:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v14 = *(*(a1 + 32) + 8);
      *buf = 136315394;
      v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
      v59 = 2112;
      v60 = v14;
      _os_log_impl(&dword_1C8683000, v13, OS_LOG_TYPE_INFO, "%s (%@) Running daily donate tasks", buf, 0x16u);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = [objc_opt_class() dailyDonateTasks];
    v16 = [v15 countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v16)
    {
      v18 = v16;
      v19 = *v53;
      *&v17 = 136315650;
      v46 = v17;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v53 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v52 + 1) + 8 * i);
          v22 = [v21 unsignedIntValue];
          if ([v12 containsObject:v21])
          {
            v23 = *(v2 + 233);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = *(*(a1 + 32) + 8);
              v25 = v23;
              v26 = CKVTaskIdDescription(v22);
              *buf = v46;
              v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
              v59 = 2112;
              v60 = v24;
              v2 = &unk_1ED5BC000;
              v61 = 2112;
              v62 = v26;
              _os_log_impl(&dword_1C8683000, v25, OS_LOG_TYPE_INFO, "%s (%@) Skipping task (%@) which already ran after localization refresh.", buf, 0x20u);
            }
          }

          else
          {
            v27 = [*(a1 + 32) _taskBlockForTask:v22 reason:*(a1 + 40) shouldDefer:0];
            v27[2]();
          }
        }

        v18 = [v15 countByEnumeratingWithState:&v52 objects:v63 count:16];
      }

      while (v18);
    }

    if ([*(*(a1 + 32) + 56) didCompleteMigrationMoreRecentlyThanMaintenance])
    {
      v28 = *(v2 + 233);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = *(*(a1 + 32) + 8);
        *buf = 136315394;
        v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
        v59 = 2112;
        v60 = v29;
        _os_log_impl(&dword_1C8683000, v28, OS_LOG_TYPE_INFO, "%s (%@) First maintenance post migration", buf, 0x16u);
      }

      v30 = [*(a1 + 32) _taskBlockForTask:104 reason:*(a1 + 40) shouldDefer:0];
      v30[2]();
    }

    v31 = *(v2 + 233);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = *(*(a1 + 32) + 8);
      *buf = 136315394;
      v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
      v59 = 2112;
      v60 = v32;
      _os_log_impl(&dword_1C8683000, v31, OS_LOG_TYPE_INFO, "%s (%@) Running verification tasks", buf, 0x16u);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = [objc_opt_class() verificationTasks];
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(a1 + 32) _verificationTaskBlockForTask:objc_msgSend(*(*(&v48 + 1) + 8 * j) reason:{"unsignedIntValue"), *(a1 + 40)}];
          v38[2]();
        }

        v35 = [v33 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v35);
    }

    v39 = [*(a1 + 32) _taskBlockForTask:105 reason:*(a1 + 40) shouldDefer:0];
    v39[2]();
    v40 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v41 = *(*(a1 + 32) + 8);
      *buf = 136315394;
      v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
      v59 = 2112;
      v60 = v41;
      _os_log_impl(&dword_1C8683000, v40, OS_LOG_TYPE_INFO, "%s (%@) Maintenance completed.", buf, 0x16u);
    }

    v42 = *(*(a1 + 32) + 56);
    v47 = 0;
    v43 = [v42 recordMaintenanceCompleted:&v47];
    v44 = v47;
    if ((v43 & 1) == 0)
    {
      v45 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v58 = "[CKVTaskManager _maintenanceTaskBlockWithReason:shouldDefer:]_block_invoke";
        v59 = 2112;
        v60 = v44;
        _os_log_error_impl(&dword_1C8683000, v45, OS_LOG_TYPE_ERROR, "%s Failed to record maintenance completed: %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)_didLocalizationChange:(unsigned __int16)a3
{
  v3 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v5 = [(CKVTaskManagerInfo *)self->_info siriLanguageCode];
  v6 = [(CKVTaskManagerInfo *)self->_info dictationLanguageCodes];
  v7 = [(CKVTaskSettings *)self->_settings localization];
  v8 = [v7 siriLanguageCode];

  v9 = [(CKVTaskSettings *)self->_settings localization];
  v10 = [v9 dictationLanguageCodes];

  if (v8 | v5)
  {
    v11 = [v8 isEqual:v5] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  LOBYTE(v12) = v10 | v6;
  if (v10 | v6)
  {
    v12 = [v10 isEqual:v6] ^ 1;
  }

  v13 = v11 | v12;
  v14 = CKLogContextVocabulary;
  v15 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
  if (v13)
  {
    v33 = v13;
    if (v15)
    {
      v16 = v14;
      v17 = _localizationDescription(v8, v10);
      v18 = _localizationDescription(v5, v6);
      *buf = 136315650;
      v41 = "[CKVTaskManager _didLocalizationChange:]";
      v42 = 2112;
      v43 = v17;
      v44 = 2112;
      v45 = v18;
      _os_log_impl(&dword_1C8683000, v16, OS_LOG_TYPE_INFO, "%s Refreshed localization settings: %@ differ from stored settings: %@", buf, 0x20u);

      v13 = v33;
    }

    if (v11)
    {
      v32 = v5;
      v19 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v41 = "[CKVTaskManager _didLocalizationChange:]";
        _os_log_impl(&dword_1C8683000, v19, OS_LOG_TYPE_INFO, "%s Triggering Siri-language dependent donations", buf, 0xCu);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = [objc_opt_class() siriLanguageDependentDonateTasks];
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = -[CKVTaskManager _taskBlockForTask:reason:shouldDefer:](self, "_taskBlockForTask:reason:shouldDefer:", [*(*(&v35 + 1) + 8 * i) unsignedIntValue], v3, 0);
            v25[2]();
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v22);
      }

      v5 = v32;
      v13 = v33;
    }

    info = self->_info;
    v34 = 0;
    v27 = [(CKVTaskManagerInfo *)info updateSiriLanguageCode:v8 dictationLanguageCodes:v10 error:&v34];
    v28 = v34;
    if (!v27)
    {
      v29 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[CKVTaskManager _didLocalizationChange:]";
        v42 = 2112;
        v43 = v28;
        _os_log_error_impl(&dword_1C8683000, v29, OS_LOG_TYPE_ERROR, "%s Failed to record updated localization: %@", buf, 0x16u);
      }
    }

    goto LABEL_25;
  }

  if (v15)
  {
    v28 = v14;
    v30 = _localizationDescription(v5, v6);
    *buf = 136315394;
    v41 = "[CKVTaskManager _didLocalizationChange:]";
    v42 = 2112;
    v43 = v30;
    _os_log_impl(&dword_1C8683000, v28, OS_LOG_TYPE_INFO, "%s Refreshed localization settings unchanged from stored settings: %@", buf, 0x16u);

LABEL_25:
  }

  return v13 & 1;
}

- (BOOL)_didTriggerMigration:(id)a3 reason:(unsigned __int16)a4
{
  v4 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CKVTaskSettings *)self->_settings isTaskEnabled:103 reason:v4])
  {
    if (v4 == 20)
    {
      v7 = CKLogContextVocabulary;
      v24 = v6;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        managerName = self->_managerName;
        *buf = 136315394;
        v36 = "[CKVTaskManager _didTriggerMigration:reason:]";
        v37 = 2112;
        v38 = managerName;
        _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s (%@) Skipping migration requirement check for reason: Cascade Donate Now", buf, 0x16u);
        v7 = CKLogContextVocabulary;
      }

      goto LABEL_13;
    }

    v12 = [(CKVTaskManagerInfo *)self->_info shouldRunMigration];
    v7 = CKLogContextVocabulary;
    if (v12)
    {
      v24 = v6;
LABEL_13:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = self->_managerName;
        *buf = 136315394;
        v36 = "[CKVTaskManager _didTriggerMigration:reason:]";
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s (%@) Starting migration.", buf, 0x16u);
      }

      [(CKVTaskSettings *)self->_settings refreshLocalization];
      v14 = dispatch_group_create();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v15 = [objc_opt_class() migrationDonateTasks];
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v30 + 1) + 8 * i) unsignedIntValue];
            dispatch_group_enter(v14);
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __46__CKVTaskManager__didTriggerMigration_reason___block_invoke;
            v28[3] = &unk_1E831E828;
            v29 = v14;
            [(CKVTaskManager *)self handleTask:v20 reason:1 shouldDefer:0 completion:v28];
          }

          v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }

      v21 = dispatch_queue_create("DonateAll", 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__CKVTaskManager__didTriggerMigration_reason___block_invoke_2;
      block[3] = &unk_1E831E850;
      block[4] = self;
      v6 = v25;
      v27 = v25;
      dispatch_group_notify(v14, v21, block);

      v11 = 1;
      goto LABEL_23;
    }

    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v23 = self->_managerName;
      *buf = 136315394;
      v36 = "[CKVTaskManager _didTriggerMigration:reason:]";
      v37 = 2112;
      v38 = v23;
      v10 = "%s (%@) Migration not required";
      goto LABEL_7;
    }
  }

  else
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v9 = self->_managerName;
      *buf = 136315394;
      v36 = "[CKVTaskManager _didTriggerMigration:reason:]";
      v37 = 2112;
      v38 = v9;
      v10 = "%s (%@) Skipping migration as vocabulary donation is not enabled on this platform.";
LABEL_7:
      _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, v10, buf, 0x16u);
    }
  }

  if (v6)
  {
    v6[2](v6);
  }

  v11 = 0;
LABEL_23:

  return v11;
}

void __46__CKVTaskManager__didTriggerMigration_reason___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 136315394;
    v25 = "[CKVTaskManager _didTriggerMigration:reason:]_block_invoke_2";
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_1C8683000, v2, OS_LOG_TYPE_INFO, "%s (%@) Running verification tasks following migration donate tasks", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [objc_opt_class() verificationTasks];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 32) _verificationTaskBlockForTask:objc_msgSend(*(*(&v19 + 1) + 8 * i) reason:{"unsignedIntValue"), 1}];
        v9[2]();
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) handleTask:104 reason:1 shouldDefer:0 completion:0];
  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  v12 = *(v10 + 24);
  v18 = 0;
  v13 = [v11 recordMigrationCompletedWithSettings:v12 error:&v18];
  v14 = v18;
  v15 = CKLogContextVocabulary;
  if ((v13 & 1) == 0 && os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[CKVTaskManager _didTriggerMigration:reason:]_block_invoke";
    v26 = 2112;
    v27 = v14;
    _os_log_error_impl(&dword_1C8683000, v15, OS_LOG_TYPE_ERROR, "%s Failed to record migration completed: %@", buf, 0x16u);
    v15 = CKLogContextVocabulary;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(*(a1 + 32) + 8);
    *buf = 136315394;
    v25 = "[CKVTaskManager _didTriggerMigration:reason:]_block_invoke";
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_1C8683000, v15, OS_LOG_TYPE_INFO, "%s (%@) Migration completed.", buf, 0x16u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))();
  }
}

- (BOOL)clearAllState
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    rootDirectoryURL = self->_rootDirectoryURL;
    *buf = 136315394;
    v21 = "[CKVTaskManager clearAllState]";
    v22 = 2112;
    v23 = rootDirectoryURL;
    _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s Clearing root directory: %@", buf, 0x16u);
  }

  v19[2] = 0;
  v5 = KVRemoveItemIfExistsAtURL();
  v6 = 0;
  if (!v5)
  {
LABEL_9:
    v13 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_rootDirectoryURL;
      *buf = 136315650;
      v21 = "[CKVTaskManager clearAllState]";
      v22 = 2112;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      v15 = "%s Failed to reset task handler root directory (%@) error: %@";
      v16 = v13;
      v17 = 32;
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v19[1] = v6;
  v7 = KVGetOrCreateDirectoryURL();
  v8 = v6;

  if (!v7)
  {
    v6 = v8;
    goto LABEL_9;
  }

  [(CKVTaskManager *)self _loadOrCreateTaskInfo];
  info = self->_info;
  v19[0] = v8;
  v10 = [(CKVTaskManagerInfo *)info updateSchemaVersion:&unk_1F48584C8 error:v19];
  v6 = v19[0];

  v11 = CKLogContextVocabulary;
  if (!v10)
  {
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[CKVTaskManager clearAllState]";
      v22 = 2112;
      v23 = v6;
      v15 = "%s Failed to record schema version: %@";
      v16 = v11;
      v17 = 22;
LABEL_15:
      _os_log_error_impl(&dword_1C8683000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v12 = 1;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[CKVTaskManager clearAllState]";
    v22 = 2112;
    v23 = &unk_1F48584C8;
    _os_log_impl(&dword_1C8683000, v11, OS_LOG_TYPE_INFO, "%s Root directory initialized with schema version: %@", buf, 0x16u);
  }

LABEL_11:

  return v12;
}

- (BOOL)handleTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 shouldDefer:(id)a5 completion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  if (v8 == 103)
  {
    [(CKVTaskManager *)self _didTriggerMigration:v11 reason:v7];
LABEL_8:
    v13 = 1;
    goto LABEL_9;
  }

  if ((v8 - 106) > 0xFF96u)
  {
    v14 = [(CKVTaskManager *)self _taskBlockForTask:v8 reason:v7 shouldDefer:v10];
    [(CKVTaskManager *)self _submitTask:v8 reason:v7 taskBlock:v14 completion:v11];

    goto LABEL_8;
  }

  v12 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v16 = MEMORY[0x1E696AD98];
    v17 = v12;
    v18 = [v16 numberWithUnsignedShort:v8];
    v19 = 136315394;
    v20 = "[CKVTaskManager handleTask:reason:shouldDefer:completion:]";
    v21 = 2112;
    v22 = v18;
    _os_log_error_impl(&dword_1C8683000, v17, OS_LOG_TYPE_ERROR, "%s Failed to handle unknown task: %@", &v19, 0x16u);
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (BOOL)_loadOrCreateTaskInfo
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [CKVTaskManagerInfo alloc];
  rootDirectoryURL = self->_rootDirectoryURL;
  v11 = 0;
  v5 = [(CKVTaskManagerInfo *)v3 initWithRootDirectoryURL:rootDirectoryURL error:&v11];
  v6 = v11;
  info = self->_info;
  self->_info = v5;

  v8 = self->_info;
  if (!v8)
  {
    v9 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[CKVTaskManager _loadOrCreateTaskInfo]";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_1C8683000, v9, OS_LOG_TYPE_ERROR, "%s Failed to load / create info: %@", buf, 0x16u);
    }
  }

  return v8 != 0;
}

- (BOOL)_validateFilesystemState
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = KVGetOrCreateDirectoryURL();
  v4 = 0;

  if (v3)
  {
    [(CKVTaskManager *)self _loadOrCreateTaskInfo];
    v5 = [(CKVTaskManagerInfo *)self->_info schemaVersion];
    if ([&unk_1F48584C8 isEqual:v5])
    {
      v6 = 1;
    }

    else
    {
      v8 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        v9 = @"empty";
        *buf = 136315650;
        v13 = "[CKVTaskManager _validateFilesystemState]";
        v14 = 2112;
        if (v5)
        {
          v9 = v5;
        }

        v15 = &unk_1F48584C8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s Current schema (expected: %@) not initialized yet (found: %@)", buf, 0x20u);
      }

      v6 = [(CKVTaskManager *)self clearAllState];
    }
  }

  else
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      rootDirectoryURL = self->_rootDirectoryURL;
      *buf = 136315650;
      v13 = "[CKVTaskManager _validateFilesystemState]";
      v14 = 2112;
      v15 = rootDirectoryURL;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_1C8683000, v7, OS_LOG_TYPE_ERROR, "%s Failed to resolve / create root directory: %@ error: %@", buf, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

- (CKVTaskManager)initWithManagerName:(id)a3 rootDirectoryURL:(id)a4 setEnumerator:(id)a5 settings:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = CKVTaskManager;
  v15 = [(CKVTaskManager *)&v25 init];
  v16 = v15;
  if (!v15 || (objc_storeStrong(&v15->_managerName, a3), objc_storeStrong(&v16->_settings, a6), objc_storeStrong(&v16->_setEnumerator, a5), objc_storeStrong(&v16->_rootDirectoryURL, a4), [(CKVTaskManager *)v16 _validateFilesystemState]) && (v17 = [CKVDonateTaskFactory alloc], [(CKVTaskManagerInfo *)v16->_info donateDirectory], v18 = objc_claimAutoreleasedReturnValue(), v19 = [(CKVDonateTaskFactory *)v17 initWithDirectory:v18 timeout:300.0], donateTaskProvider = v16->_donateTaskProvider, v16->_donateTaskProvider = v19, donateTaskProvider, v18, v16->_donateTaskProvider) && (v21 = [[CKVTaskCoalescer alloc] initWithManagerName:v16->_managerName coalescenceInterval:25 coalescenceDelay:v14 dispatchQoS:10.0 settings:2.0], coalescer = v16->_coalescer, v16->_coalescer = v21, coalescer, v16->_coalescer))
  {
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)defaultManager
{
  v2 = objc_alloc(objc_opt_class());
  v3 = KVTaskManagerRootDirectoryURL();
  v4 = [MEMORY[0x1E6993A50] setEnumerator];
  v5 = +[CKVTaskSettings defaultSettings];
  v6 = [v2 initWithManagerName:@"Default" rootDirectoryURL:v3 setEnumerator:v4 settings:v5];

  return v6;
}

@end