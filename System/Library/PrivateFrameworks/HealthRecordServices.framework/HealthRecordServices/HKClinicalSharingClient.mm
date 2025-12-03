@interface HKClinicalSharingClient
+ (id)defaultSyncActivityCriteria;
- (HKClinicalSharingClient)init;
- (HKClinicalSharingClient)initWithConnection:(id)connection;
- (id)exportedInterface;
- (void)gatherQueryDiagnosticsWithOptions:(unint64_t)options date:(id)date completion:(id)completion;
- (void)scheduleSharingHealthDataWithReason:(int64_t)reason completion:(id)completion;
- (void)shareHealthDataWithOptions:(unint64_t)options reason:(int64_t)reason date:(id)date completion:(id)completion;
- (void)submitDailyAnalyticsWithCompletion:(id)completion;
- (void)submitOnboardingAnalyticsForStepIdentifier:(id)identifier context:(id)context completion:(id)completion;
@end

@implementation HKClinicalSharingClient

- (HKClinicalSharingClient)init
{
  v3 = +[HKHealthRecordsDaemonConnection sharedConnection];
  v4 = [(HKClinicalSharingClient *)self initWithConnection:v3];

  return v4;
}

- (HKClinicalSharingClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = HKClinicalSharingClient;
  v5 = [(HKClinicalSharingClient *)&v9 init];
  if (v5)
  {
    v6 = [[HKHealthRecordsDaemonProxyProvider alloc] initWithConnection:connectionCopy serviceIdentifier:@"ClinicalSharing" exportedObject:v5];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = &v6->super;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (void)shareHealthDataWithOptions:(unint64_t)options reason:(int64_t)reason date:(id)date completion:(id)completion
{
  dateCopy = date;
  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__HKClinicalSharingClient_shareHealthDataWithOptions_reason_date_completion___block_invoke;
  v16[3] = &unk_2796DD1B0;
  optionsCopy = options;
  reasonCopy = reason;
  v17 = dateCopy;
  v18 = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HKClinicalSharingClient_shareHealthDataWithOptions_reason_date_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v18;
  v12 = v18;
  v13 = dateCopy;
  [(HKClinicalSharingClient *)self _fetchProxyWithHandler:v16 errorHandler:v14];
}

- (void)scheduleSharingHealthDataWithReason:(int64_t)reason completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HKClinicalSharingClient_scheduleSharingHealthDataWithReason_completion___block_invoke;
  v10[3] = &unk_2796DD1D8;
  reasonCopy = reason;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HKClinicalSharingClient_scheduleSharingHealthDataWithReason_completion___block_invoke_2;
  v8[3] = &unk_2796DBFF8;
  v9 = v11;
  v7 = v11;
  [(HKClinicalSharingClient *)self _fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)gatherQueryDiagnosticsWithOptions:(unint64_t)options date:(id)date completion:(id)completion
{
  dateCopy = date;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HKClinicalSharingClient_gatherQueryDiagnosticsWithOptions_date_completion___block_invoke;
  v14[3] = &unk_2796DD200;
  optionsCopy = options;
  v15 = dateCopy;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HKClinicalSharingClient_gatherQueryDiagnosticsWithOptions_date_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = dateCopy;
  [(HKClinicalSharingClient *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)submitDailyAnalyticsWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HKClinicalSharingClient_submitDailyAnalyticsWithCompletion___block_invoke;
  v8[3] = &unk_2796DD228;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HKClinicalSharingClient_submitDailyAnalyticsWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalSharingClient *)self _fetchProxyWithHandler:v8 errorHandler:v6];
}

- (void)submitOnboardingAnalyticsForStepIdentifier:(id)identifier context:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__HKClinicalSharingClient_submitOnboardingAnalyticsForStepIdentifier_context_completion___block_invoke;
  v16[3] = &unk_2796DD250;
  v17 = identifierCopy;
  v18 = contextCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__HKClinicalSharingClient_submitOnboardingAnalyticsForStepIdentifier_context_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = contextCopy;
  v13 = identifierCopy;
  [(HKClinicalSharingClient *)self _fetchProxyWithHandler:v16 errorHandler:v14];
}

+ (id)defaultSyncActivityCriteria
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86370], 1);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);

  return empty;
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end