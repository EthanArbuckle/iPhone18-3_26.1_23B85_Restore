@interface MomentsIntelligenceService
- (MomentsIntelligenceService)init;
- (void)classifyBundleForSystemPrompt:(id)prompt Input:(id)input WithReply:(id)reply;
- (void)clearMemoryAndExitCleanly;
- (void)fetchGenerativeModelsAvailabilityWithReply:(id)reply;
- (void)generatePersonalizedReflectionPromptsWithSystemPrompt:(id)prompt Input:(id)input WithReply:(id)reply;
- (void)interruptionHandler;
- (void)invalidationHandler;
- (void)releaseOSTransaction;
- (void)takeOSTransaction;
@end

@implementation MomentsIntelligenceService

- (MomentsIntelligenceService)init
{
  v10.receiver = self;
  v10.super_class = MomentsIntelligenceService;
  v2 = [(MomentsIntelligenceService *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MomentsIntelligenceService.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  transaction = v2->transaction;
  v2->transaction = 0;

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MIService, service initialized", v9, 2u);
  }

  return v2;
}

- (void)invalidationHandler
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MIService,invalidationHandler", v3, 2u);
  }
}

- (void)interruptionHandler
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MIService,interruptionHandler", v3, 2u);
  }
}

- (void)clearMemoryAndExitCleanly
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MIService,clearMemoryAndExitCleanly", v4, 2u);
  }

  [(MomentsIntelligenceService *)self releaseOSTransaction];
  xpc_transaction_exit_clean();
}

- (void)takeOSTransaction
{
  if (!self->transaction)
  {
    v9 = v2;
    v10 = v3;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MIService,Taking OS Transaction", v8, 2u);
    }

    v6 = os_transaction_create();
    transaction = self->transaction;
    self->transaction = v6;
  }
}

- (void)releaseOSTransaction
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MIService,Releasing OS Transaction", v5, 2u);
  }

  transaction = self->transaction;
  if (transaction)
  {
    self->transaction = 0;
  }
}

- (void)fetchGenerativeModelsAvailabilityWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MIService,fetchGenerativeModelsAvailabilityWithReply", v8, 2u);
  }

  [(MomentsIntelligenceService *)self takeOSTransaction];
  v6 = +[_TtC26MomentsIntelligenceService25GenerativeModelsAvailable isGenerativeModelAvailable];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MIService,isGMSAvailable,%d", v8, 8u);
  }

  replyCopy[2](replyCopy, v6);
  [(MomentsIntelligenceService *)self clearMemoryAndExitCleanly];
}

- (void)classifyBundleForSystemPrompt:(id)prompt Input:(id)input WithReply:(id)reply
{
  replyCopy = reply;
  inputCopy = input;
  promptCopy = prompt;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MIService,classifyBundleWithReply", buf, 2u);
  }

  [(MomentsIntelligenceService *)self takeOSTransaction];
  v12 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __76__MomentsIntelligenceService_classifyBundleForSystemPrompt_Input_WithReply___block_invoke;
  v14[3] = &unk_100010678;
  v15 = replyCopy;
  v13 = replyCopy;
  [v12 classifyBundleDataWithSystemPrompt:promptCopy input:inputCopy completion:v14];

  [(MomentsIntelligenceService *)self clearMemoryAndExitCleanly];
}

void __76__MomentsIntelligenceService_classifyBundleForSystemPrompt_Input_WithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MIService,classifyBundleWithReply, classify result, %@, error, %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generatePersonalizedReflectionPromptsWithSystemPrompt:(id)prompt Input:(id)input WithReply:(id)reply
{
  replyCopy = reply;
  inputCopy = input;
  promptCopy = prompt;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MIService,generatePersonalizedReflectionPromptsWithSystemPrompt", buf, 2u);
  }

  [(MomentsIntelligenceService *)self takeOSTransaction];
  v12 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __100__MomentsIntelligenceService_generatePersonalizedReflectionPromptsWithSystemPrompt_Input_WithReply___block_invoke;
  v14[3] = &unk_100010678;
  v15 = replyCopy;
  v13 = replyCopy;
  [v12 generatePersonalizedReflectionPromptWithSystemPrompt:promptCopy input:inputCopy completion:v14];

  [(MomentsIntelligenceService *)self clearMemoryAndExitCleanly];
}

void __100__MomentsIntelligenceService_generatePersonalizedReflectionPromptsWithSystemPrompt_Input_WithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MIService,generatePersonalizedReflectionPromptsWithSystemPrompt, prompt result, %@, error, %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end