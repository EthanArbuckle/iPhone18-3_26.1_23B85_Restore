@interface BLTSettingSyncSendQueue
- (BLTSettingSyncSendQueue)initWithMaxConcurrentSendCount:(unint64_t)a3;
- (void)_sendSectionInfoWithSectionID:(unint64_t)a3 usingProvider:(id)a4 updateProgress:(id)a5 sendCompleted:(id)a6 sendAttempt:(unint64_t)a7 waitForAcknowledgement:(BOOL)a8 group:(id)a9 spoolToFile:(BOOL)a10;
- (void)sendEffectiveSectionInfosUsingProvider:(id)a3 count:(unint64_t)a4 sectionInfoSendCompleted:(id)a5 completion:(id)a6 progress:(id)a7 spoolToFile:(BOOL)a8;
- (void)sendRemoveSectionWithSectionID:(id)a3 sent:(id)a4;
- (void)sendSectionSubtypeParameterIcons:(id)a3 sectionID:(id)a4 waitForAcknowledgement:(BOOL)a5 spoolToFile:(BOOL)a6 completion:(id)a7;
- (void)sendSpooledRequestsNowWithSender:(id)a3 completion:(id)a4 progress:(id)a5;
@end

@implementation BLTSettingSyncSendQueue

- (BLTSettingSyncSendQueue)initWithMaxConcurrentSendCount:(unint64_t)a3
{
  v22.receiver = self;
  v22.super_class = BLTSettingSyncSendQueue;
  v4 = [(BLTSettingSyncSendQueue *)&v22 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bulletindistributord.sectioninfosenderqueue", v5);
    sectionInfoSenderQueue = v4->_sectionInfoSenderQueue;
    v4->_sectionInfoSenderQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.bulletindistributord.sectioninfoprocessingqueue", v8);
    sectionInfoProcessingQueue = v4->_sectionInfoProcessingQueue;
    v4->_sectionInfoProcessingQueue = v9;

    v11 = dispatch_semaphore_create(a3);
    sectionInfoSemaphore = v4->_sectionInfoSemaphore;
    v4->_sectionInfoSemaphore = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.bulletindistributord.subsectionparametericonsenderqueue", v13);
    subsectionParameterIconSenderQueue = v4->_subsectionParameterIconSenderQueue;
    v4->_subsectionParameterIconSenderQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.bulletindistributord.subsectionparametericonprocessingqueue", v16);
    subsectionParameterIconProcessingQueue = v4->_subsectionParameterIconProcessingQueue;
    v4->_subsectionParameterIconProcessingQueue = v17;

    v19 = dispatch_semaphore_create(a3);
    subsectionParameterIconSemaphore = v4->_subsectionParameterIconSemaphore;
    v4->_subsectionParameterIconSemaphore = v19;
  }

  return v4;
}

- (void)_sendSectionInfoWithSectionID:(unint64_t)a3 usingProvider:(id)a4 updateProgress:(id)a5 sendCompleted:(id)a6 sendAttempt:(unint64_t)a7 waitForAcknowledgement:(BOOL)a8 group:(id)a9 spoolToFile:(BOOL)a10
{
  v25 = a8;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  dispatch_semaphore_wait(self->_sectionInfoSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v18 = _os_activity_create(&dword_241FB3000, "Send Section Info", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v18, &state);
  v19 = objc_autoreleasePoolPush();
  v20 = v14[2](v14, a3);
  v21 = [v20 sectionID];
  v22 = v21;
  if (v20)
  {
    sectionInfoProcessingQueue = self->_sectionInfoProcessingQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke;
    v26[3] = &unk_278D31B10;
    v26[4] = self;
    v27 = v21;
    v34 = v25;
    v35 = a10;
    v29 = v15;
    v30 = v16;
    v32 = a7;
    v28 = v17;
    v33 = a3;
    v31 = v14;
    [(BLTSettingSyncSendQueue *)self _sendEffectiveSectionInfo:v20 waitForAcknowledgement:v25 withQueue:sectionInfoProcessingQueue spoolToFile:a10 andCompletion:v26];
  }

  else
  {
    v15[2](v15);
    (*(v16 + 2))(v16, 0);
  }

  objc_autoreleasePoolPop(v19);
  os_activity_scope_leave(&state);
}

void __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke(uint64_t a1, int a2, int a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = blt_settings_log();
  v7 = v6;
  if (!a2 || !a3)
  {
    if (a2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        *buf = 138412290;
        v43 = v14;
        _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Sent section info but nano failed to acknowledge with section ID %@", buf, 0xCu);
      }

      v15 = blt_settings_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 80);
        *buf = 134217984;
        v43 = v16;
        _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_DEFAULT, "Current send attempts: %lu", buf, 0xCu);
      }

      v17 = *(a1 + 80);
      v18 = blt_settings_log();
      v7 = v18;
      if (v17 < 3)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          *buf = 138412290;
          v43 = v19;
          _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Enqueuing section ID %@ for future resend attempt", buf, 0xCu);
        }

        dispatch_group_enter(*(a1 + 48));
        v20 = *(a1 + 32);
        v21 = *(v20 + 8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_9;
        block[3] = &unk_278D31AE8;
        v22 = *(a1 + 88);
        block[4] = v20;
        v31 = v22;
        v28 = *(a1 + 72);
        v29 = *(a1 + 56);
        v23 = *(a1 + 64);
        v24 = *(a1 + 80);
        v30 = v23;
        v32 = v24;
        v33 = *(a1 + 96);
        v27 = *(a1 + 48);
        v34 = *(a1 + 97);
        dispatch_async(v21, block);

        goto LABEL_24;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_cold_2(a1, v7);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_cold_1(a1, v7);
    }

    (*(*(a1 + 56) + 16))();
LABEL_24:
    (*(*(a1 + 64) + 16))();
    goto LABEL_25;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Section info sent", buf, 2u);
  }

  v8 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  if ([v8 BOOLValue] && (objc_msgSend(*(a1 + 32), "sectionParametersProvider"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [*(a1 + 32) sectionParametersProvider];
    v11 = *(a1 + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_5;
    v35[3] = &unk_278D31AC0;
    v12 = v11;
    v13 = *(a1 + 32);
    v36 = v12;
    v37 = v13;
    v40 = *(a1 + 96);
    v38 = *(a1 + 56);
    v39 = *(a1 + 64);
    v41 = a3;
    (v10)[2](v10, v12, v35);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    (*(*(a1 + 64) + 16))();
  }

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
}

void __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = blt_settings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to send subsection parameter icons for section ID %@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 65);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_6;
  v11[3] = &unk_278D31A98;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 66);
  [v6 sendSectionSubtypeParameterIcons:v3 sectionID:v7 waitForAcknowledgement:v8 spoolToFile:v9 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)sendEffectiveSectionInfosUsingProvider:(id)a3 count:(unint64_t)a4 sectionInfoSendCompleted:(id)a5 completion:(id)a6 progress:(id)a7 spoolToFile:(BOOL)a8
{
  v56 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v14 = a5;
  v30 = a6;
  v15 = a7;
  v16 = dispatch_group_create();
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0;
  v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke;
  v48[3] = &unk_278D31B38;
  v29 = v17;
  v49 = v29;
  v51 = v53;
  v18 = v15;
  v50 = v18;
  v52 = a4;
  v19 = MEMORY[0x245D067A0](v48);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_2;
  v44[3] = &unk_278D31B88;
  v28 = v14;
  v47 = v28;
  v20 = v16;
  v45 = v20;
  v46 = self;
  v21 = MEMORY[0x245D067A0](v44);
  if (a4)
  {
    v22 = 0;
    do
    {
      v23 = blt_settings_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v55 = v22;
        _os_log_impl(&dword_241FB3000, v23, OS_LOG_TYPE_DEFAULT, "Queueing section ID Index %lu for send", buf, 0xCu);
      }

      dispatch_group_enter(v20);
      sectionInfoSenderQueue = self->_sectionInfoSenderQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_12;
      block[3] = &unk_278D31BD8;
      block[4] = self;
      v42 = v22;
      v38 = v31;
      v39 = v19;
      v40 = v21;
      v41 = v18;
      v37 = v20;
      v43 = a8;
      dispatch_async(sectionInfoSenderQueue, block);

      ++v22;
    }

    while (a4 != v22);
  }

  v25 = self->_sectionInfoSenderQueue;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_3_15;
  v32[3] = &unk_278D31C00;
  v34 = v53;
  v35 = a4;
  v33 = v30;
  v26 = v30;
  dispatch_group_notify(v20, v25, v32);

  _Block_object_dispose(v53, 8);
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  ++*(*(*(a1 + 48) + 8) + 24);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(*(*(*(a1 + 48) + 8) + 24) / *(a1 + 56));
  }

  v3 = *(a1 + 32);

  return [v3 unlock];
}

void __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_3;
  block[3] = &unk_278D31B60;
  v11 = *(a1 + 48);
  v12 = a2;
  v13 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_3(uint64_t a1)
{
  v2 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_4;
  block[3] = &unk_278D31B60;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v10 = v3;
  v11 = v4;
  v12 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v2, block);
}

intptr_t __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56), *(a1 + 64));
  }

  dispatch_group_leave(*(a1 + 32));
  v3 = *(*(a1 + 40) + 24);

  return dispatch_semaphore_signal(v3);
}

void __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_12(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_2_13;
  v10[3] = &unk_278D31BB0;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  v11 = v6;
  v12 = v7;
  LOBYTE(v9) = *(a1 + 88);
  [v2 _sendSectionInfoWithSectionID:v3 usingProvider:v4 updateProgress:v5 sendCompleted:v10 sendAttempt:0 waitForAcknowledgement:v8 != 0 group:*(a1 + 40) spoolToFile:v9];
}

uint64_t __129__BLTSettingSyncSendQueue_sendEffectiveSectionInfosUsingProvider_count_sectionInfoSendCompleted_completion_progress_spoolToFile___block_invoke_3_15(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = blt_settings_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[6];
    v4 = *(*(a1[5] + 8) + 24);
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Section info send queue completed; sent %lu of %lu items", &v7, 0x16u);
  }

  result = a1[4];
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendRemoveSectionWithSectionID:(id)a3 sent:(id)a4
{
  v6 = a3;
  v7 = a4;
  sectionInfoSenderQueue = self->_sectionInfoSenderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BLTSettingSyncSendQueue_sendRemoveSectionWithSectionID_sent___block_invoke;
  block[3] = &unk_278D316A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sectionInfoSenderQueue, block);
}

void __63__BLTSettingSyncSendQueue_sendRemoveSectionWithSectionID_sent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionRemoveSender];

  if (v2)
  {
    v3 = [*(a1 + 32) sectionRemoveSender];
    (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 48));
  }
}

- (void)sendSpooledRequestsNowWithSender:(id)a3 completion:(id)a4 progress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sectionInfoSenderQueue = self->_sectionInfoSenderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__BLTSettingSyncSendQueue_sendSpooledRequestsNowWithSender_completion_progress___block_invoke;
  block[3] = &unk_278D31C50;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(sectionInfoSenderQueue, block);
}

void __80__BLTSettingSyncSendQueue_sendSpooledRequestsNowWithSender_completion_progress___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__BLTSettingSyncSendQueue_sendSpooledRequestsNowWithSender_completion_progress___block_invoke_3;
  v3[3] = &unk_278D31C28;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(v2 + 16))(v2, &__block_literal_global_4, v3);
}

uint64_t __80__BLTSettingSyncSendQueue_sendSpooledRequestsNowWithSender_completion_progress___block_invoke_3(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(a2);
  }

  if (v2 + -1.0 > -0.00000011920929)
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 16);

      a2.n128_f64[0] = v2 + -1.0;
      return v5(a2);
    }
  }

  return result;
}

- (void)sendSectionSubtypeParameterIcons:(id)a3 sectionID:(id)a4 waitForAcknowledgement:(BOOL)a5 spoolToFile:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [v12 defaultSubtypeParameters];
  v16 = [v15 sectionIconOverride];
  subsectionParameterIconSenderQueue = self->_subsectionParameterIconSenderQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __116__BLTSettingSyncSendQueue_sendSectionSubtypeParameterIcons_sectionID_waitForAcknowledgement_spoolToFile_completion___block_invoke;
  v22[3] = &unk_278D31CA0;
  v23 = v16;
  v24 = v13;
  v28 = a5;
  v29 = a6;
  v25 = self;
  v26 = v12;
  v27 = v14;
  v18 = v14;
  v19 = v12;
  v20 = v13;
  v21 = v16;
  dispatch_async(subsectionParameterIconSenderQueue, v22);
}

uint64_t __116__BLTSettingSyncSendQueue_sendSectionSubtypeParameterIcons_sectionID_waitForAcknowledgement_spoolToFile_completion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = blt_settings_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = @"data";
    if (!*(a1 + 32))
    {
      v4 = @"nil";
    }

    *buf = 138412546;
    v40 = v4;
    v41 = 2112;
    v42 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Sending sectionSubtypeParameters icon (%@) for %@ defaults", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 72);
  v9 = v5[2];
  v10 = *(a1 + 73);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __116__BLTSettingSyncSendQueue_sendSectionSubtypeParameterIcons_sectionID_waitForAcknowledgement_spoolToFile_completion___block_invoke_24;
  v38[3] = &unk_278D31C78;
  v38[4] = v5;
  [v5 _sendSectionIcon:v7 forSectionID:v6 forSubtypeID:0x7FFFFFFFFFFFFFFFLL waitForAcknowledgement:v8 withQueue:v9 spoolToFile:v10 andCompletion:v38];
  dispatch_semaphore_wait(*(*(a1 + 48) + 48), 0xFFFFFFFFFFFFFFFFLL);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [*(a1 + 56) allSubtypes];
  v11 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v32 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [*(a1 + 56) parametersForSubtype:{objc_msgSend(v14, "integerValue")}];
        v16 = [v15 sectionIconOverride];
        v17 = blt_settings_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 variants];
          v19 = [v18 count];
          v20 = *(a1 + 40);
          v21 = @"data";
          if (!v19)
          {
            v21 = @"nil";
          }

          *buf = 138412802;
          v40 = v21;
          v41 = 2112;
          v42 = v20;
          v43 = 2112;
          v44 = v14;
          _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_DEFAULT, "Sending sectionSubtypeParameters icon (%@) for %@ %@", buf, 0x20u);
        }

        v23 = *(a1 + 40);
        v22 = *(a1 + 48);
        v24 = [v14 integerValue];
        v25 = *(a1 + 72);
        v26 = *(a1 + 48);
        v27 = *(v26 + 16);
        v28 = *(a1 + 73);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __116__BLTSettingSyncSendQueue_sendSectionSubtypeParameterIcons_sectionID_waitForAcknowledgement_spoolToFile_completion___block_invoke_25;
        v33[3] = &unk_278D31C78;
        v33[4] = v26;
        [v22 _sendSectionIcon:v16 forSectionID:v23 forSubtypeID:v24 waitForAcknowledgement:v25 withQueue:v27 spoolToFile:v28 andCompletion:v33];
        dispatch_semaphore_wait(*(*(a1 + 48) + 48), 0xFFFFFFFFFFFFFFFFLL);
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v12);
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Failed to send section info so abandoning with section ID %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __153__BLTSettingSyncSendQueue__sendSectionInfoWithSectionID_usingProvider_updateProgress_sendCompleted_sendAttempt_waitForAcknowledgement_group_spoolToFile___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Max send attempts exceeded for section ID %@; dropping settings", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end