@interface HealthAppAnalyticsStore
- (HealthAppAnalyticsStore)initWithHealthStore:(id)store;
- (void)setUserDidAccept:(BOOL)accept agreement:(id)agreement version:(int64_t)version completion:(id)completion;
- (void)setUserDidAccept:(BOOL)accept currentAgreement:(id)agreement completion:(id)completion;
@end

@implementation HealthAppAnalyticsStore

- (HealthAppAnalyticsStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HealthAppAnalyticsStore;
  v6 = [(HealthAppAnalyticsStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    v9 = HealthAppAnalyticsStoreTaskServerIdentifier;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:storeCopy taskIdentifier:v9 exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;
  }

  return v7;
}

- (void)setUserDidAccept:(BOOL)accept agreement:(id)agreement version:(int64_t)version completion:(id)completion
{
  agreementCopy = agreement;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke;
  v17[3] = &unk_2796B5130;
  acceptCopy = accept;
  versionCopy = version;
  v18 = agreementCopy;
  selfCopy = self;
  v20 = completionCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke_4;
  v15[3] = &unk_2796B5180;
  v15[4] = self;
  v16 = v20;
  v13 = v20;
  v14 = agreementCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

void __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke_2;
  v7[3] = &unk_2796B50E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 40);
  v8 = v5;
  [a2 remote_setAccepted:v3 agreement:v4 version:v6 completion:v7];
}

void __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke_3;
  block[3] = &unk_2796B5108;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HealthAppAnalyticsStore_setUserDidAccept_agreement_version_completion___block_invoke_5;
  v7[3] = &unk_2796B5158;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)setUserDidAccept:(BOOL)accept currentAgreement:(id)agreement completion:(id)completion
{
  agreementCopy = agreement;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke;
  v15[3] = &unk_2796B51A8;
  acceptCopy = accept;
  v16 = agreementCopy;
  selfCopy = self;
  v18 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke_4;
  v13[3] = &unk_2796B5180;
  v13[4] = self;
  v14 = v18;
  v11 = v18;
  v12 = agreementCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

void __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke_2;
  v6[3] = &unk_2796B50E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 remote_setAccepted:v3 currentAgreement:v4 completion:v6];
}

void __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke_3;
  block[3] = &unk_2796B5108;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HealthAppAnalyticsStore_setUserDidAccept_currentAgreement_completion___block_invoke_5;
  v7[3] = &unk_2796B5158;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

@end