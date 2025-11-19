@interface HKClinicalProviderServiceStore
- (HKClinicalProviderServiceStore)init;
- (HKClinicalProviderServiceStore)initWithHealthStore:(id)a3;
- (void)cancelInFlightSearchQueriesWithCompletion:(id)a3;
- (void)fetchLogoDataForBrand:(id)a3 scaleKey:(id)a4 completion:(id)a5;
- (void)fetchRemoteGatewayWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5;
- (void)fetchRemoteProviderWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5;
- (void)fetchRemoteSearchResultsPageForQuery:(id)a3 completion:(id)a4;
- (void)setHealthRecordsEnvironment:(int64_t)a3 completion:(id)a4;
@end

@implementation HKClinicalProviderServiceStore

- (HKClinicalProviderServiceStore)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalProviderServiceStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKClinicalProviderServiceStore;
  v5 = [(HKClinicalProviderServiceStore *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCDAA0]);
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;
  }

  return v5;
}

- (void)fetchRemoteSearchResultsPageForQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HKClinicalProviderServiceStore_fetchRemoteSearchResultsPageForQuery_completion___block_invoke;
  v12[3] = &unk_2796DD0E8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__HKClinicalProviderServiceStore_fetchRemoteSearchResultsPageForQuery_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalProviderServiceStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)cancelInFlightSearchQueriesWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HKClinicalProviderServiceStore_cancelInFlightSearchQueriesWithCompletion___block_invoke;
  v8[3] = &unk_2796DD110;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HKClinicalProviderServiceStore_cancelInFlightSearchQueriesWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalProviderServiceStore *)self _fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchRemoteProviderWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HKClinicalProviderServiceStore_fetchRemoteProviderWithExternalID_batchID_completion___block_invoke;
  v16[3] = &unk_2796DD138;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__HKClinicalProviderServiceStore_fetchRemoteProviderWithExternalID_batchID_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalProviderServiceStore *)self _fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)fetchRemoteGatewayWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HKClinicalProviderServiceStore_fetchRemoteGatewayWithExternalID_batchID_completion___block_invoke;
  v16[3] = &unk_2796DD138;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HKClinicalProviderServiceStore_fetchRemoteGatewayWithExternalID_batchID_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalProviderServiceStore *)self _fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)fetchLogoDataForBrand:(id)a3 scaleKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HKClinicalProviderServiceStore_fetchLogoDataForBrand_scaleKey_completion___block_invoke;
  v16[3] = &unk_2796DD138;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HKClinicalProviderServiceStore_fetchLogoDataForBrand_scaleKey_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalProviderServiceStore *)self _fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)setHealthRecordsEnvironment:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HKClinicalProviderServiceStore_setHealthRecordsEnvironment_completion___block_invoke;
  v10[3] = &unk_2796DD160;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HKClinicalProviderServiceStore_setHealthRecordsEnvironment_completion___block_invoke_2;
  v8[3] = &unk_2796DBFF8;
  v9 = v11;
  v7 = v11;
  [(HKClinicalProviderServiceStore *)self _fetchServerProxyWithHandler:v10 errorHandler:v8];
}

@end