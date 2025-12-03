@interface FPRTCReportingSessionManager
+ (NSDictionary)sessionInfo;
+ (id)defaultManager;
- (FPRTCReportingSessionManager)init;
- (id)sessionForDomainID:(id)d providerVersion:(id)version;
- (id)sessionForProviderID:(id)d version:(id)version;
- (id)sessionWithCommonProperties:(id)properties;
- (void)flushMessagesWithCompletion:(id)completion;
- (void)postMultipleReports:(id)reports type:(unint64_t)type userinfo:(id)userinfo session:(id)session observer:(id)observer;
- (void)postReportWithCategory:(unint64_t)category type:(unint64_t)type payload:(id)payload error:(id)error decoratedPayload:(id)decoratedPayload session:(id)session observer:(id)observer;
- (void)postReportWithCategory:(unint64_t)category type:(unint64_t)type payload:(id)payload userinfo:(id)userinfo error:(id)error decoratedPayload:(id)decoratedPayload session:(id)session observer:(id)self0;
- (void)waitUntilTelemetrySessionIsAvailable:(unint64_t)available retryDuration:(unint64_t)duration;
@end

@implementation FPRTCReportingSessionManager

+ (NSDictionary)sessionInfo
{
  v11[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D44040];
  v10[0] = *MEMORY[0x277D44030];
  v10[1] = v2;
  v11[0] = &unk_285E20098;
  v11[1] = &unk_285E200B0;
  v10[2] = *MEMORY[0x277D44080];
  v3 = MEMORY[0x277CCABB0];
  atomic_fetch_add(nextSessionID_sessionId, 1u);
  v4 = [v3 numberWithUnsignedInt:?];
  v5 = *MEMORY[0x277D44028];
  v11[2] = v4;
  v11[3] = @"com.apple.FileProviderDaemon";
  v6 = *MEMORY[0x277D44010];
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = *MEMORY[0x277D44050];
  v11[4] = MEMORY[0x277CBEC28];
  v11[5] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (FPRTCReportingSessionManager)init
{
  v9.receiver = self;
  v9.super_class = FPRTCReportingSessionManager;
  v2 = [(FPRTCReportingSessionManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.FileProvider.rtcreporting", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v6;
  }

  return v2;
}

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[FPRTCReportingSessionManager defaultManager];
  }

  v3 = defaultManager_defaultManager;

  return v3;
}

uint64_t __46__FPRTCReportingSessionManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager = objc_alloc_init(FPRTCReportingSessionManager);

  return MEMORY[0x2821F96F8]();
}

- (id)sessionForProviderID:(id)d version:(id)version
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (version)
  {
    v21[0] = @"provider";
    v21[1] = @"providerVersion";
    v22[0] = d;
    v22[1] = version;
    v6 = MEMORY[0x277CBEAC0];
    versionCopy = version;
    dCopy = d;
    v9 = v22;
    v10 = v21;
    v11 = v6;
    v12 = 2;
  }

  else
  {
    v19 = @"provider";
    dCopy2 = d;
    v13 = MEMORY[0x277CBEAC0];
    versionCopy = 0;
    dCopy3 = d;
    v9 = &dCopy2;
    v10 = &v19;
    v11 = v13;
    v12 = 1;
  }

  v15 = [v11 dictionaryWithObjects:v9 forKeys:v10 count:v12];

  v16 = [(FPRTCReportingSessionManager *)self sessionWithCommonProperties:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)sessionWithCommonProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [[FPRTCReportingSession alloc] initWithWithCommonProperties:propertiesCopy manager:self];

  return v5;
}

- (id)sessionForDomainID:(id)d providerVersion:(id)version
{
  versionCopy = version;
  fp_toProviderID = [d fp_toProviderID];
  v8 = [(FPRTCReportingSessionManager *)self sessionForProviderID:fp_toProviderID version:versionCopy];

  return v8;
}

- (void)postReportWithCategory:(unint64_t)category type:(unint64_t)type payload:(id)payload userinfo:(id)userinfo error:(id)error decoratedPayload:(id)decoratedPayload session:(id)session observer:(id)self0
{
  payloadCopy = payload;
  userinfoCopy = userinfo;
  errorCopy = error;
  decoratedPayloadCopy = decoratedPayload;
  sessionCopy = session;
  observerCopy = observer;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__FPRTCReportingSessionManager_postReportWithCategory_type_payload_userinfo_error_decoratedPayload_session_observer___block_invoke;
  block[3] = &unk_278FFA810;
  block[4] = self;
  v30 = sessionCopy;
  v31 = decoratedPayloadCopy;
  v32 = payloadCopy;
  v33 = errorCopy;
  v34 = observerCopy;
  categoryCopy = category;
  typeCopy = type;
  v35 = userinfoCopy;
  v22 = userinfoCopy;
  v23 = observerCopy;
  v24 = errorCopy;
  v25 = payloadCopy;
  v26 = decoratedPayloadCopy;
  v27 = sessionCopy;
  dispatch_async(queue, block);
}

void __117__FPRTCReportingSessionManager_postReportWithCategory_type_payload_userinfo_error_decoratedPayload_session_observer___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(*(a1 + 32) + 16));
  v2 = *(a1 + 40);
  if (v2 && *(a1 + 48) && ([v2 executeModifyDecoratedPayloadHook:*(a1 + 88) type:*(a1 + 96) payload:*(a1 + 56) error:*(a1 + 64) decoratedPayload:?], !objc_msgSend(*(a1 + 48), "count")))
  {
    v14 = *(a1 + 72);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 72) reportDiscardedOnSession:*(a1 + 40) category:*(a1 + 88) type:*(a1 + 96) payload:*(a1 + 56) error:*(a1 + 64)];
    }

    v15 = *(*(a1 + 32) + 16);

    dispatch_group_leave(v15);
  }

  else
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      v3 = *(a1 + 56);
    }

    v4 = v3;
    v5 = MEMORY[0x277D43FE0];
    v6 = +[FPRTCReportingSessionManager sessionInfo];
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v16 = 0;
    v10 = [v5 sendOneMessageWithSessionInfo:v6 userInfo:v7 category:v8 type:v9 payload:v4 error:&v16];
    v11 = v16;

    v12 = fp_current_or_default_log();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __117__FPRTCReportingSessionManager_postReportWithCategory_type_payload_userinfo_error_decoratedPayload_session_observer___block_invoke_cold_2(v4, v13);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __117__FPRTCReportingSessionManager_postReportWithCategory_type_payload_userinfo_error_decoratedPayload_session_observer___block_invoke_cold_1(v11);
    }

    [*(a1 + 72) reportSentOnSession:*(a1 + 40) category:*(a1 + 88) type:*(a1 + 96) payload:v4 error:v11];
    dispatch_group_leave(*(*(a1 + 32) + 16));
  }
}

- (void)postMultipleReports:(id)reports type:(unint64_t)type userinfo:(id)userinfo session:(id)session observer:(id)observer
{
  v30[2] = *MEMORY[0x277D85DE8];
  reportsCopy = reports;
  userinfoCopy = userinfo;
  sessionCopy = session;
  observerCopy = observer;
  if (!userinfoCopy)
  {
    v16 = *MEMORY[0x277D44098];
    v29[0] = *MEMORY[0x277D44090];
    v29[1] = v16;
    v30[0] = @"fileprovider";
    v30[1] = @"fpfs";
    userinfoCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke;
  block[3] = &unk_278FFA888;
  block[4] = self;
  v24 = userinfoCopy;
  v25 = reportsCopy;
  v26 = sessionCopy;
  v27 = observerCopy;
  typeCopy = type;
  v18 = observerCopy;
  v19 = sessionCopy;
  v20 = reportsCopy;
  v21 = userinfoCopy;
  dispatch_async(queue, block);

  v22 = *MEMORY[0x277D85DE8];
}

void __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(*(a1 + 32) + 16));
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v2 = objc_alloc(MEMORY[0x277D43FE0]);
  v3 = +[FPRTCReportingSessionManager sessionInfo];
  v18 = [v2 initWithSessionInfo:v3 userInfo:*(a1 + 40) frameworksToCheck:0];

  v4 = v14[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_24;
  v7[3] = &unk_278FFA860;
  v7[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v8 = v5;
  v12 = v6;
  v9 = *(a1 + 56);
  v11 = &v13;
  v10 = *(a1 + 64);
  [v4 startConfigurationWithCompletionHandler:v7];

  _Block_object_dispose(&v13, 8);
}

void __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_24(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v30 = v3;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v44 = 0u;
    obj = *(a1 + 40);
    v33 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    v5 = 0;
    if (v33)
    {
      v32 = *v45;
      v37 = *MEMORY[0x277D43FF0];
      v36 = *MEMORY[0x277D44008];
      do
      {
        v6 = 0;
        do
        {
          if (*v45 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v6;
          v7 = *(*(&v44 + 1) + 8 * v6);
          v8 = [v7 unsignedIntValue];
          v9 = [*(a1 + 40) objectForKeyedSubscript:v7];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v35 = v9;
          v10 = [v9 countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = v8;
            v13 = *v41;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                v15 = v5;
                if (*v41 != v13)
                {
                  objc_enumerationMutation(v35);
                }

                v16 = *(*(&v40 + 1) + 8 * i);
                v17 = [v16 mutableCopy];
                v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
                [v17 setObject:v18 forKey:v37];

                v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
                [v17 setObject:v19 forKey:v36];

                v20 = *(a1 + 48);
                if (v20)
                {
                  [v20 executeModifyDecoratedPayloadHook:v12 type:*(a1 + 72) payload:v16 error:0 decoratedPayload:v17];
                }

                v21 = *(*(*(a1 + 64) + 8) + 40);
                v22 = *(a1 + 72);
                v39 = v15;
                v23 = [v21 sendMessageWithCategory:v12 type:v22 payload:v17 error:&v39];
                v5 = v39;

                v24 = fp_current_or_default_log();
                v25 = v24;
                if (v23)
                {
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_24_cold_2(v49, v17);
                  }
                }

                else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_24_cold_1(v48, v5);
                }

                [*(a1 + 56) reportSentOnSession:*(a1 + 48) category:v12 type:*(a1 + 72) payload:v17 error:v5];
              }

              v11 = [v35 countByEnumeratingWithState:&v40 objects:v50 count:16];
            }

            while (v11);
          }

          v6 = v34 + 1;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v33);
    }

    v26 = *(a1 + 64);
    v27 = *(*(v26 + 8) + 40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_25;
    v38[3] = &unk_278FFA838;
    v38[4] = *(a1 + 32);
    v38[5] = v26;
    [v27 flushMessagesWithCompletion:v38];

    v4 = v30;
  }

  else
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_24_cold_3(v28);
    }

    dispatch_group_leave(*(*(a1 + 32) + 16));
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_25_cold_1(v3);
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  dispatch_group_leave(*(*(a1 + 32) + 16));
}

- (void)postReportWithCategory:(unint64_t)category type:(unint64_t)type payload:(id)payload error:(id)error decoratedPayload:(id)decoratedPayload session:(id)session observer:(id)observer
{
  v26[2] = *MEMORY[0x277D85DE8];
  v16 = *MEMORY[0x277D44098];
  v25[0] = *MEMORY[0x277D44090];
  v25[1] = v16;
  v26[0] = @"fileprovider";
  v26[1] = @"fpfs";
  v17 = MEMORY[0x277CBEAC0];
  observerCopy = observer;
  sessionCopy = session;
  decoratedPayloadCopy = decoratedPayload;
  errorCopy = error;
  payloadCopy = payload;
  v23 = [v17 dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(FPRTCReportingSessionManager *)self postReportWithCategory:category type:type payload:payloadCopy userinfo:v23 error:errorCopy decoratedPayload:decoratedPayloadCopy session:sessionCopy observer:observerCopy];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)flushMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_sync(self->_queue, &__block_literal_global_29);
  p_queue = &self->_queue;
  queue = self->_queue;
  v6 = p_queue[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FPRTCReportingSessionManager_flushMessagesWithCompletion___block_invoke_2;
  block[3] = &unk_278FFA8B0;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_group_notify(v6, queue, block);
}

- (void)waitUntilTelemetrySessionIsAvailable:(unint64_t)available retryDuration:(unint64_t)duration
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D44098];
  v26[0] = *MEMORY[0x277D44090];
  v26[1] = v6;
  v27[0] = @"fileprovider";
  v27[1] = @"fpfs";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  if (available)
  {
    v8 = 1000000000 * duration;
    v9 = available - 1;
    v10 = MEMORY[0x277D85DD0];
    do
    {
      v11 = objc_alloc(MEMORY[0x277D43FE0]);
      v12 = +[FPRTCReportingSessionManager sessionInfo];
      v13 = [v11 initWithSessionInfo:v12 userInfo:v7 frameworksToCheck:0];

      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v14 = dispatch_semaphore_create(0);
      v19[0] = v10;
      v19[1] = 3221225472;
      v19[2] = __83__FPRTCReportingSessionManager_waitUntilTelemetrySessionIsAvailable_retryDuration___block_invoke;
      v19[3] = &unk_278FFA8D8;
      v21 = &v22;
      v15 = v14;
      v20 = v15;
      [v13 startConfigurationWithCompletionHandler:v19];
      v16 = dispatch_time(0, v8);
      dispatch_semaphore_wait(v15, v16);

      sleep(1u);
      LODWORD(v13) = *(v23 + 24);

      _Block_object_dispose(&v22, 8);
      v17 = v9-- == 0;
    }

    while (((v13 | v17) & 1) == 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __117__FPRTCReportingSessionManager_postReportWithCategory_type_payload_userinfo_error_decoratedPayload_session_observer___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_24ABCC000, v2, v3, "[ERROR] FPRTCReporting: error: unable to send RTC message: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __117__FPRTCReportingSessionManager_postReportWithCategory_type_payload_userinfo_error_decoratedPayload_session_observer___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24ABCC000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPRTCReporting: RTC message sent %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_24_cold_1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_1(a1 a2)];
  *v4 = 138412290;
  *v3 = v5;
  _os_log_error_impl(&dword_24ABCC000, v2, OS_LOG_TYPE_ERROR, "[ERROR] FPRTCReporting: error: unable to send RTC message: %@", v4, 0xCu);
}

void __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_24_cold_2(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_1(a1 a2)];
  *v4 = 138412290;
  *v3 = v5;
  _os_log_debug_impl(&dword_24ABCC000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPRTCReporting: RTC message sent %@", v4, 0xCu);
}

void __83__FPRTCReportingSessionManager_postMultipleReports_type_userinfo_session_observer___block_invoke_25_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_24ABCC000, v2, v3, "[ERROR] FPRTCReporting: flushsing session failed: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end