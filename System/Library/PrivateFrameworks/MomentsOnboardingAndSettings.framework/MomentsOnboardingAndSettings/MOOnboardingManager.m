@interface MOOnboardingManager
+ (id)sharedInstance;
- (MOOnboardingManager)init;
- (MOOnboardingManagerDelegate)delegate;
- (unint64_t)extendedOnboardingFlowCompletionStatus;
- (unint64_t)onboardingFlowCompletionStatus;
- (unint64_t)onboardingFlowRefreshCompletionStatus;
- (void)getExtendedOnboardingFlowRefreshCompletionStatus:(id)a3;
- (void)onboardingFlowRefreshCompletionStatus;
- (void)setDelegate:(id)a3;
- (void)setOnboardingFlowCompletionStatus:(unint64_t)a3;
@end

@implementation MOOnboardingManager

- (MOOnboardingManager)init
{
  v9.receiver = self;
  v9.super_class = MOOnboardingManager;
  v2 = [(MOOnboardingManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->hasCheckedOnboardingStatus = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("MOOnboardingManagerClient", v4);
    clientQueue = v3->clientQueue;
    v3->clientQueue = v5;

    v7 = v3;
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MOOnboardingManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_shared_2;

  return v2;
}

uint64_t __37__MOOnboardingManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)onboardingFlowCompletionStatus
{
  self->hasCheckedOnboardingStatus = 1;
  v2 = +[MOOnboardingAndSettingsManager sharedInstance];
  v3 = [v2 getOnboardingFlowCompletionStatus];

  return v3;
}

- (unint64_t)extendedOnboardingFlowCompletionStatus
{
  self->hasCheckedOnboardingStatus = 1;
  v2 = +[MOOnboardingAndSettingsManager sharedInstance];
  v3 = [v2 getExtendedOnboardingFlowCompletionStatus];

  return v3;
}

- (void)setOnboardingFlowCompletionStatus:(unint64_t)a3
{
  if (!self->hasCheckedOnboardingStatus)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOOnboardingManager setOnboardingFlowCompletionStatus:];
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOOnboardingManager.m" lineNumber:71 description:{@"Can't set onboarding status if you have not checked what it was before trying to set it (in %s:%d)", "-[MOOnboardingManager setOnboardingFlowCompletionStatus:]", 71}];
  }

  self->hasSetOnboardingStatus = 1;
  v8 = +[MOOnboardingAndSettingsManager sharedInstance];
  [v8 setOnboardingFlowCompletionStatus:a3];
}

- (unint64_t)onboardingFlowRefreshCompletionStatus
{
  if (!self->hasSetOnboardingStatus)
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MOOnboardingManager onboardingFlowRefreshCompletionStatus];
    }

    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MOOnboardingManager.m" lineNumber:78 description:{@"Can't check onboarding refresh status if you have not changed onboarding status (in %s:%d)", "-[MOOnboardingManager onboardingFlowRefreshCompletionStatus]", 78}];
  }

  v6 = +[MOOnboardingAndSettingsManager sharedInstance];
  v7 = [v6 getOnboardingFlowRefreshCompletionStatus];

  return v7;
}

- (void)getExtendedOnboardingFlowRefreshCompletionStatus:(id)a3
{
  v4 = a3;
  clientQueue = self->clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__MOOnboardingManager_getExtendedOnboardingFlowRefreshCompletionStatus___block_invoke;
  v7[3] = &unk_27991F2C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clientQueue, v7);
}

uint64_t __72__MOOnboardingManager_getExtendedOnboardingFlowRefreshCompletionStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) extendedOnboardingFlowCompletionStatus];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (MOOnboardingManagerDelegate)delegate
{
  v2 = +[MOOnboardingAndSettingsManager sharedInstance];
  v3 = [v2 onboardingManagerDelegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v3 = a3;
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  [v4 setOnboardingManagerDelegate:v3];
}

- (void)setOnboardingFlowCompletionStatus:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v3 = 71;
  _os_log_error_impl(&dword_25A200000, v0, OS_LOG_TYPE_ERROR, "Can't set onboarding status if you have not checked what it was before trying to set it (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)onboardingFlowRefreshCompletionStatus
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v3 = 78;
  _os_log_error_impl(&dword_25A200000, v0, OS_LOG_TYPE_ERROR, "Can't check onboarding refresh status if you have not changed onboarding status (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end