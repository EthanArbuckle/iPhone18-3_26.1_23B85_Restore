@interface FHSearchSuggestionController
- (FHSearchSuggestionController)init;
- (FHSearchSuggestionController)initWithDelegate:(id)a3;
- (FHSuggestionDelegate)delegate;
- (id)_clientConnection;
- (id)_newClientConnection;
- (id)_remoteObjectInterface;
- (id)_remoteObjectProxyWithErrorHandler;
- (id)_validateInstrumentationRecord:(id)a3;
- (void)_init;
- (void)_updateOrRecordCacheEntries:(id)a3 instrumentationCacheSize:(unint64_t)a4;
- (void)aggregateFeaturesWithHandler:(id)a3;
- (void)aggregateFeaturesWithProcessSource:(id)a3 completion:(id)a4;
- (void)allFeatureInsightsWithStartDate:(id)a3 endDate:(id)a4 insightTypeItems:(id)a5 trendWindow:(int64_t)a6 completion:(id)a7;
- (void)allPeerPaymentForecastingSignals:(id)a3;
- (void)dealloc;
- (void)deleteAllData:(id)a3;
- (void)deleteDataForPassesWithSourceIdentifiers:(id)a3 completion:(id)a4;
- (void)deleteTransactionByTransactionIdentifier:(id)a3 completion:(id)a4;
- (void)featureResponsesForApplication:(id)a3 withCompletion:(id)a4;
- (void)featuresForApplication:(id)a3 withCompletion:(id)a4;
- (void)fetchUserProperties:(id)a3 withParameters:(id)a4 completion:(id)a5;
- (void)generatePredictionWithModelType:(id)a3 withModelPathComponent:(id)a4 completion:(id)a5;
- (void)getDisputeDocumentSuggestionsForTransactionId:(id)a3 completion:(id)a4;
- (void)getTopTransactionCategoriesWithCountryCode:(id)a3 timeWindow:(unint64_t)a4 minRegularTransactionRatio:(double)a5 discretizedTimeOfDay:(unint64_t)a6 completion:(id)a7;
- (void)getTopTransactionCategoriesWithTimeWindow:(unint64_t)a3 completion:(id)a4;
- (void)paymentRingSuggestionsFromSearchFeatures:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6;
- (void)peerPaymentForecastingSignals:(id)a3 withCompletion:(id)a4;
- (void)predictionsByModelName:(id)a3 modelVersion:(id)a4 completion:(id)a5;
- (void)recordUserInteraction:(id)a3;
- (void)reevaluateTransactionFeatures;
- (void)sendAllTransactionFeatures;
- (void)transactionsByGroupID:(id)a3 completion:(id)a4;
- (void)transactionsRequireSyncing;
- (void)updatePeerPaymentAccountBalanceWithTransactionSourceId:(id)a3 amount:(id)a4 currencyCode:(id)a5 completion:(id)a6;
- (void)updatePeerPaymentForecastingSuggestionStatus:(unint64_t)a3 counterpartHandle:(id)a4 amount:(id)a5 completion:(id)a6;
@end

@implementation FHSearchSuggestionController

- (FHSearchSuggestionController)initWithDelegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D087B8];
  v6 = FinHealthLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[FHSearchSuggestionController initWithDelegate:]";
    _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = FHSearchSuggestionController;
  v7 = [(FHSearchSuggestionController *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v4);
    [(FHSearchSuggestionController *)v8 _init];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (FHSearchSuggestionController)init
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D087B8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = "[FHSearchSuggestionController init]";
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = FHSearchSuggestionController;
  v5 = [(FHSearchSuggestionController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FHSearchSuggestionController *)v5 _init];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_init
{
  self->_lockConnection._os_unfair_lock_opaque = 0;
  self->_lockCache._os_unfair_lock_opaque = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  instrumentationCache = self->_instrumentationCache;
  self->_instrumentationCache = v3;

  MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D087B8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[FHSearchSuggestionController dealloc]";
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v7.receiver = self;
  v7.super_class = FHSearchSuggestionController;
  [(FHSearchSuggestionController *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteDataForPassesWithSourceIdentifiers:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *MEMORY[0x277D087B8];
  v8 = a3;
  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[FHSearchSuggestionController deleteDataForPassesWithSourceIdentifiers:completion:]";
    _os_log_impl(&dword_24ABD8000, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v10 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__FHSearchSuggestionController_deleteDataForPassesWithSourceIdentifiers_completion___block_invoke;
  v13[3] = &unk_278FFB288;
  v14 = v6;
  v11 = v6;
  [v10 deleteDataForPasses:v8 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteTransactionByTransactionIdentifier:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *MEMORY[0x277D087B8];
  v8 = a3;
  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[FHSearchSuggestionController deleteTransactionByTransactionIdentifier:completion:]";
    _os_log_impl(&dword_24ABD8000, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v10 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__FHSearchSuggestionController_deleteTransactionByTransactionIdentifier_completion___block_invoke;
  v13[3] = &unk_278FFB2B0;
  v14 = v6;
  v11 = v6;
  [v10 deleteTransactionById:v8 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D087B8];
  v6 = FinHealthLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[FHSearchSuggestionController deleteAllData:]";
    _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v7 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__FHSearchSuggestionController_deleteAllData___block_invoke;
  v10[3] = &unk_278FFB288;
  v11 = v4;
  v8 = v4;
  [v7 deleteAllData:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __46__FHSearchSuggestionController_deleteAllData___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(v3 + 16);
    v5 = a3;
    v4(v3, 1, v5);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D086D8];
    v12 = *MEMORY[0x277CCA7E8];
    v13[0] = a3;
    v8 = MEMORY[0x277CBEAC0];
    v9 = a3;
    v5 = [v8 dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v6 errorWithDomain:v7 code:20002 userInfo:v5];
    (*(v3 + 16))(v3, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featuresForApplication:(id)a3 withCompletion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v9 processName];
  }

  v10 = *MEMORY[0x277D087B8];
  v11 = FinHealthLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[FHSearchSuggestionController featuresForApplication:withCompletion:]";
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_24ABD8000, v11, OS_LOG_TYPE_DEBUG, "%s process/application name: %@", buf, 0x16u);
  }

  v12 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__FHSearchSuggestionController_featuresForApplication_withCompletion___block_invoke;
  v15[3] = &unk_278FFB2D8;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  [v12 featuresForApplication:v8 withCompletion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __70__FHSearchSuggestionController_featuresForApplication_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchUserProperties:(id)a3 withParameters:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__FHSearchSuggestionController_fetchUserProperties_withParameters_completion___block_invoke;
  v11[3] = &unk_278FFB300;
  v13 = self;
  v14 = v8;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [(FHSearchSuggestionController *)self featuresForApplication:@"Messaging" withCompletion:v11];
}

void __78__FHSearchSuggestionController_fetchUserProperties_withParameters_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = MEMORY[0x277CCAC30];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v5 predicateWithFormat:@"self IN %@", v6];
  v9 = [v7 allKeys];
  v10 = [v9 filteredArrayUsingPredicate:v8];
  v11 = [v7 dictionaryWithValuesForKeys:v10];

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, v13);
  }
}

- (void)paymentRingSuggestionsFromSearchFeatures:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v14 = *MEMORY[0x277D087B8];
    v15 = FinHealthLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[FHSearchSuggestionController paymentRingSuggestionsFromSearchFeatures:startDate:endDate:completion:]";
      _os_log_impl(&dword_24ABD8000, v15, OS_LOG_TYPE_DEBUG, "applicationName cannot be nil %s", buf, 0xCu);
    }

    v16 = objc_opt_new();
    v13[2](v13, v16);
  }

  v17 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__FHSearchSuggestionController_paymentRingSuggestionsFromSearchFeatures_startDate_endDate_completion___block_invoke;
  v20[3] = &unk_278FFB328;
  v21 = v13;
  v18 = v13;
  [v17 paymentRingSuggestionsFromSearchFeatures:v10 startDate:v11 endDate:v12 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __102__FHSearchSuggestionController_paymentRingSuggestionsFromSearchFeatures_startDate_endDate_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)featureResponsesForApplication:(id)a3 withCompletion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v9 processName];
  }

  v10 = *MEMORY[0x277D087B8];
  v11 = FinHealthLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v20 = "[FHSearchSuggestionController featureResponsesForApplication:withCompletion:]";
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_24ABD8000, v11, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  v12 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__FHSearchSuggestionController_featureResponsesForApplication_withCompletion___block_invoke;
  v16[3] = &unk_278FFB350;
  v17 = v6;
  v18 = v7;
  v16[4] = self;
  v13 = v6;
  v14 = v7;
  [v12 featureResponsesForApplication:v8 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __78__FHSearchSuggestionController_featureResponsesForApplication_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }

    v8 = *MEMORY[0x277D087B8];
    v9 = FinHealthLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "[FHSearchSuggestionController featureResponsesForApplication:withCompletion:]_block_invoke";
      _os_log_impl(&dword_24ABD8000, v9, OS_LOG_TYPE_DEBUG, "%s sending next batch", &v11, 0xCu);
    }

    [*(a1 + 32) featureResponsesForApplication:*(a1 + 40) withCompletion:*(a1 + 48)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getDisputeDocumentSuggestionsForTransactionId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__FHSearchSuggestionController_getDisputeDocumentSuggestionsForTransactionId_completion___block_invoke;
  v10[3] = &unk_278FFB378;
  v11 = v6;
  v9 = v6;
  [v8 getDisputeDocumentSuggestionsForTransactionId:v7 completion:v10];
}

- (void)sendAllTransactionFeatures
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D087B8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[FHSearchSuggestionController sendAllTransactionFeatures]";
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
  }

  [(FHSearchSuggestionController *)self _sendAllTransactionFeatures:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)reevaluateTransactionFeatures
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D087B8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FHSearchSuggestionController reevaluateTransactionFeatures]";
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v5 = [(FHSearchSuggestionController *)self _clientConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__FHSearchSuggestionController_reevaluateTransactionFeatures__block_invoke;
  v9[3] = &unk_278FFB3A0;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v9];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__FHSearchSuggestionController_reevaluateTransactionFeatures__block_invoke_100;
  v8[3] = &unk_278FFB3F0;
  v8[4] = self;
  v8[5] = &buf;
  [v6 recomputeFeaturesForTransactions:v8];
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__FHSearchSuggestionController_reevaluateTransactionFeatures__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *MEMORY[0x277D087B8];
  v6 = FinHealthLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 localizedDescription];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = objc_opt_class();
    v8 = v18;
    _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "Error getting remote proxy object: %@, [%@]", &v15, 0x16u);
  }

  v9 = [*(a1 + 32) delegate];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [*(a1 + 32) delegate];
      [v13 didUpdateFeatures:0 moreComing:0 readyForNextBatch:0 error:v3];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __61__FHSearchSuggestionController_reevaluateTransactionFeatures__block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  *(*(*(a1 + 40) + 8) + 24) = v7 == *MEMORY[0x277D087A8];
  v8 = [*(a1 + 32) delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      v13 = v12;
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __61__FHSearchSuggestionController_reevaluateTransactionFeatures__block_invoke_2;
        v17[3] = &unk_278FFB3C8;
        v17[4] = *(a1 + 32);
        v14 = v17;
        v15 = v5;
        v16 = 1;
      }

      else
      {
        v15 = v5;
        v16 = 0;
        v14 = 0;
      }

      [v12 didUpdateFeatures:v15 moreComing:v16 readyForNextBatch:v14 error:v6];
    }
  }
}

void __60__FHSearchSuggestionController__sendAllTransactionFeatures___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *MEMORY[0x277D087B8];
  v6 = FinHealthLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 localizedDescription];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = objc_opt_class();
    v8 = v18;
    _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "Error getting remote proxy object: %@, [%@]", &v15, 0x16u);
  }

  v9 = [*(a1 + 32) delegate];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [*(a1 + 32) delegate];
      [v13 didUpdateFeatures:0 moreComing:0 readyForNextBatch:0 error:v3];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__FHSearchSuggestionController__sendAllTransactionFeatures___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  *(*(*(a1 + 40) + 8) + 24) = v7 == *MEMORY[0x277D087A8];
  v8 = [*(a1 + 32) delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      v13 = v12;
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __60__FHSearchSuggestionController__sendAllTransactionFeatures___block_invoke_2;
        v17[3] = &unk_278FFB3C8;
        v17[4] = *(a1 + 32);
        v14 = v17;
        v15 = v5;
        v16 = 1;
      }

      else
      {
        v15 = v5;
        v16 = 0;
        v14 = 0;
      }

      [v12 didUpdateFeatures:v15 moreComing:v16 readyForNextBatch:v14 error:v6];
    }
  }
}

- (void)transactionsRequireSyncing
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D087B8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[FHSearchSuggestionController transactionsRequireSyncing]";
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "%s", &v7, 0xCu);
  }

  v5 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  [v5 transactionsRequireSyncing:&__block_literal_global];

  v6 = *MEMORY[0x277D85DE8];
}

void __58__FHSearchSuggestionController_transactionsRequireSyncing__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D087C8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v2 localizedDescription];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "transactionsRequireSyncing error :%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordUserInteraction:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(FHSearchSuggestionController *)self _validateInstrumentationRecord:a3];
  v5 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  [v5 recordUserInteraction:v4 completion:&__block_literal_global_104];
  v6 = *MEMORY[0x277D087B8];
  v7 = FinHealthLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[FHSearchSuggestionController recordUserInteraction:]";
    _os_log_impl(&dword_24ABD8000, v7, OS_LOG_TYPE_DEBUG, "Ended %s", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_validateInstrumentationRecord:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = *MEMORY[0x277D08740];
    v10 = *MEMORY[0x277D08748];
    v20 = *MEMORY[0x277D08738];
    v19 = *MEMORY[0x277D08728];
    v18 = *MEMORY[0x277D08720];
    v17 = *MEMORY[0x277D08730];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:{v12, v17}];
        if ([v12 isEqualToString:v9] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v12, "isEqualToString:", v10) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v12, "isEqualToString:", v20) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v12, "isEqualToString:", v19) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v12, "isEqualToString:", v18) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v12, "isEqualToString:", v17) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [v4 setObject:v13 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_updateOrRecordCacheEntries:(id)a3 instrumentationCacheSize:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lockCache);
  v7 = *MEMORY[0x277D087B8];
  v8 = FinHealthLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[FHSearchSuggestionController _updateOrRecordCacheEntries:instrumentationCacheSize:]";
    _os_log_impl(&dword_24ABD8000, v8, OS_LOG_TYPE_DEBUG, "Started %s", &v13, 0xCu);
  }

  if (v6)
  {
    [(NSMutableArray *)self->_instrumentationCache addObject:v6];
  }

  if ([(NSMutableArray *)self->_instrumentationCache count]== a4)
  {
    self->_cacheConnectionInitiated = 1;
    v9 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
    v10 = [(NSMutableArray *)self->_instrumentationCache copy];
    [v9 recordUserInteractions:v10 completion:&__block_literal_global_109];

    v11 = FinHealthLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[FHSearchSuggestionController _updateOrRecordCacheEntries:instrumentationCacheSize:]";
      _os_log_impl(&dword_24ABD8000, v11, OS_LOG_TYPE_DEBUG, "Ended %s", &v13, 0xCu);
    }

    [(NSMutableArray *)self->_instrumentationCache removeAllObjects];
  }

  os_unfair_lock_unlock(&self->_lockCache);

  v12 = *MEMORY[0x277D85DE8];
}

void __85__FHSearchSuggestionController__updateOrRecordCacheEntries_instrumentationCacheSize___block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D087B8];
  v1 = FinHealthLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "[FHSearchSuggestionController _updateOrRecordCacheEntries:instrumentationCacheSize:]_block_invoke";
    _os_log_impl(&dword_24ABD8000, v1, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)peerPaymentForecastingSignals:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *MEMORY[0x277D087B8];
  v8 = a3;
  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[FHSearchSuggestionController peerPaymentForecastingSignals:withCompletion:]";
    _os_log_impl(&dword_24ABD8000, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v10 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__FHSearchSuggestionController_peerPaymentForecastingSignals_withCompletion___block_invoke;
  v13[3] = &unk_278FFB378;
  v14 = v6;
  v11 = v6;
  [v10 peerPaymentForecastingSignals:v8 withCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __77__FHSearchSuggestionController_peerPaymentForecastingSignals_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)allPeerPaymentForecastingSignals:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D087B8];
  v6 = FinHealthLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[FHSearchSuggestionController allPeerPaymentForecastingSignals:]";
    _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v7 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v8 = [MEMORY[0x277CBEAA8] now];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__FHSearchSuggestionController_allPeerPaymentForecastingSignals___block_invoke;
  v11[3] = &unk_278FFB378;
  v12 = v4;
  v9 = v4;
  [v7 peerPaymentForecastingSignals:v8 withCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __65__FHSearchSuggestionController_allPeerPaymentForecastingSignals___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generatePredictionWithModelType:(id)a3 withModelPathComponent:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = *MEMORY[0x277D087B8];
  v10 = a4;
  v11 = a3;
  v12 = FinHealthLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[FHSearchSuggestionController generatePredictionWithModelType:withModelPathComponent:completion:]";
    _os_log_impl(&dword_24ABD8000, v12, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v13 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__FHSearchSuggestionController_generatePredictionWithModelType_withModelPathComponent_completion___block_invoke;
  v16[3] = &unk_278FFB328;
  v17 = v8;
  v14 = v8;
  [v13 generatePredictionWithModelType:v11 withModelPathComponent:v10 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __98__FHSearchSuggestionController_generatePredictionWithModelType_withModelPathComponent_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = MEMORY[0x277CBEBF8];
  }

  return (*(v2 + 16))(v2, a2);
}

- (void)predictionsByModelName:(id)a3 modelVersion:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v11 = *MEMORY[0x277D087B8];
    v12 = FinHealthLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "[FHSearchSuggestionController predictionsByModelName:modelVersion:completion:]";
      _os_log_impl(&dword_24ABD8000, v12, OS_LOG_TYPE_DEBUG, "modelName cannot be nil %s", buf, 0xCu);
    }

    v13 = objc_opt_new();
    v10[2](v10, v13);
  }

  v14 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__FHSearchSuggestionController_predictionsByModelName_modelVersion_completion___block_invoke;
  v17[3] = &unk_278FFB328;
  v18 = v10;
  v15 = v10;
  [v14 predictionsByModelName:v8 modelVersion:v9 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __79__FHSearchSuggestionController_predictionsByModelName_modelVersion_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updatePeerPaymentForecastingSuggestionStatus:(unint64_t)a3 counterpartHandle:(id)a4 amount:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = *MEMORY[0x277D087B8];
  v12 = a5;
  v13 = a4;
  v14 = FinHealthLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[FHSearchSuggestionController updatePeerPaymentForecastingSuggestionStatus:counterpartHandle:amount:completion:]";
    _os_log_impl(&dword_24ABD8000, v14, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v15 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__FHSearchSuggestionController_updatePeerPaymentForecastingSuggestionStatus_counterpartHandle_amount_completion___block_invoke;
  v18[3] = &unk_278FFB288;
  v19 = v10;
  v16 = v10;
  [v15 updatePeerPaymentForecastingSuggestionStatus:a3 counterpartHandle:v13 amount:v12 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updatePeerPaymentAccountBalanceWithTransactionSourceId:(id)a3 amount:(id)a4 currencyCode:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = *MEMORY[0x277D087B8];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = FinHealthLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v22 = "[FHSearchSuggestionController updatePeerPaymentAccountBalanceWithTransactionSourceId:amount:currencyCode:completion:]";
    _os_log_impl(&dword_24ABD8000, v15, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v16 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __118__FHSearchSuggestionController_updatePeerPaymentAccountBalanceWithTransactionSourceId_amount_currencyCode_completion___block_invoke;
  v19[3] = &unk_278FFB288;
  v20 = v10;
  v17 = v10;
  [v16 updatePeerPaymentAccountBalanceWithTransactionSourceId:v14 amount:v13 currencyCode:v12 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)allFeatureInsightsWithStartDate:(id)a3 endDate:(id)a4 insightTypeItems:(id)a5 trendWindow:(int64_t)a6 completion:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = *MEMORY[0x277D087B8];
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = FinHealthLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = "[FHSearchSuggestionController allFeatureInsightsWithStartDate:endDate:insightTypeItems:trendWindow:completion:]";
    _os_log_impl(&dword_24ABD8000, v17, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v18 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__FHSearchSuggestionController_allFeatureInsightsWithStartDate_endDate_insightTypeItems_trendWindow_completion___block_invoke;
  v21[3] = &unk_278FFB328;
  v22 = v12;
  v19 = v12;
  [v18 allInsightsForDateRange:v16 endDate:v15 insightTypeItems:v14 trendWindow:a6 sourceId:0 accountType:2 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __112__FHSearchSuggestionController_allFeatureInsightsWithStartDate_endDate_insightTypeItems_trendWindow_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getTopTransactionCategoriesWithTimeWindow:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__FHSearchSuggestionController_getTopTransactionCategoriesWithTimeWindow_completion___block_invoke;
  v8[3] = &unk_278FFB458;
  v9 = v6;
  v7 = v6;
  [(FHSearchSuggestionController *)self getTopTransactionCategoriesWithCountryCode:0 timeWindow:a3 minRegularTransactionRatio:0 discretizedTimeOfDay:v8 completion:0.0];
}

- (void)transactionsByGroupID:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = *MEMORY[0x277D087B8];
    v9 = FinHealthLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[FHSearchSuggestionController transactionsByGroupID:completion:]";
      _os_log_impl(&dword_24ABD8000, v9, OS_LOG_TYPE_DEBUG, "Group Id cannot be nil %s", buf, 0xCu);
    }

    v10 = objc_opt_new();
    v7[2](v7, v10);
  }

  v11 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__FHSearchSuggestionController_transactionsByGroupID_completion___block_invoke;
  v14[3] = &unk_278FFB328;
  v15 = v7;
  v12 = v7;
  [v11 transactionsByGroupID:v6 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __65__FHSearchSuggestionController_transactionsByGroupID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getTopTransactionCategoriesWithCountryCode:(id)a3 timeWindow:(unint64_t)a4 minRegularTransactionRatio:(double)a5 discretizedTimeOfDay:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __145__FHSearchSuggestionController_getTopTransactionCategoriesWithCountryCode_timeWindow_minRegularTransactionRatio_discretizedTimeOfDay_completion___block_invoke;
  v16[3] = &unk_278FFB458;
  v17 = v12;
  v15 = v12;
  [v14 getTopTransactionCategoriesWithCountryCode:v13 timeWindow:a4 minRegularTransactionRatio:a6 discretizedTimeOfDay:v16 completion:a5];
}

- (id)_clientConnection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D087B8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[FHSearchSuggestionController _clientConnection]";
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "%s", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_lockConnection);
  v5 = [(FHSearchSuggestionController *)self connection];

  v6 = FinHealthLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v11 = 136315138;
      v12 = "[FHSearchSuggestionController _clientConnection]";
      _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "%s, reusing _clientConnection", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v11 = 136315138;
      v12 = "[FHSearchSuggestionController _clientConnection]";
      _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "%s, _clientConnection nil", &v11, 0xCu);
    }

    v6 = [(FHSearchSuggestionController *)self _newClientConnection];
    [(FHSearchSuggestionController *)self setConnection:v6];
  }

  os_unfair_lock_unlock(&self->_lockConnection);
  v8 = [(FHSearchSuggestionController *)self connection];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_newClientConnection
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D087B8];
  v4 = FinHealthLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[FHSearchSuggestionController _newClientConnection]";
    _os_log_impl(&dword_24ABD8000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.FinHealth.FinHealthXPCServices"];
  v6 = [(FHSearchSuggestionController *)self _remoteObjectInterface];
  [v5 setRemoteObjectInterface:v6];

  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__FHSearchSuggestionController__newClientConnection__block_invoke;
  v14[3] = &unk_278FFB480;
  objc_copyWeak(&v15, buf);
  [v5 setInvalidationHandler:v14];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __52__FHSearchSuggestionController__newClientConnection__block_invoke_116;
  v12 = &unk_278FFB480;
  objc_copyWeak(&v13, buf);
  [v5 setInterruptionHandler:&v9];
  [v5 resume];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void __52__FHSearchSuggestionController__newClientConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D087C8];
  v3 = FinHealthLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[FHSearchSuggestionController _newClientConnection]_block_invoke";
    _os_log_impl(&dword_24ABD8000, v3, OS_LOG_TYPE_DEBUG, "[%s]: connection invalidated", &v5, 0xCu);
  }

  [WeakRetained setConnection:0];
  v4 = *MEMORY[0x277D85DE8];
}

void __52__FHSearchSuggestionController__newClientConnection__block_invoke_116(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D087C8];
  v3 = FinHealthLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[FHSearchSuggestionController _newClientConnection]_block_invoke";
    _os_log_impl(&dword_24ABD8000, v3, OS_LOG_TYPE_DEBUG, "[%s]: connection interrupted", &v5, 0xCu);
  }

  [WeakRetained setConnection:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)_remoteObjectInterface
{
  v108 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285E24388];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v108 setClasses:v12 forSelector:sel_featuresWithCompletion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v13 setWithObjects:{v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  [v108 setClasses:v22 forSelector:sel_featuresForApplication_withCompletion_ argumentIndex:0 ofReply:1];

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v23 setWithObjects:{v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
  [v108 setClasses:v30 forSelector:sel_featureResponsesForApplication_completion_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v31 setWithObjects:{v32, v33, v34, v35, v36, v37, objc_opt_class(), 0}];
  [v108 setClasses:v38 forSelector:sel_paymentRingSuggestionsFromSearchFeatures_startDate_endDate_completion_ argumentIndex:0 ofReply:1];

  v39 = MEMORY[0x277CBEB98];
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = [v39 setWithObjects:{v40, v41, v42, v43, v44, v45, objc_opt_class(), 0}];
  [v108 setClasses:v46 forSelector:sel_recomputeFeaturesForTransactions_ argumentIndex:0 ofReply:1];

  v47 = MEMORY[0x277CBEB98];
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = [v47 setWithObjects:{v48, v49, v50, v51, v52, v53, objc_opt_class(), 0}];
  [v108 setClasses:v54 forSelector:sel_getComputedFeaturesForTransactions_completion_ argumentIndex:0 ofReply:1];

  v107 = MEMORY[0x277CBEB98];
  v106 = objc_opt_class();
  v105 = objc_opt_class();
  v104 = objc_opt_class();
  v103 = objc_opt_class();
  v102 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = [v107 setWithObjects:{v106, v105, v104, v103, v102, v55, v56, v57, v58, v59, v60, v61, v62, v63, objc_opt_class(), 0}];
  [v108 setClasses:v64 forSelector:sel_peerPaymentForecastingSignals_withCompletion_ argumentIndex:0 ofReply:1];

  v65 = MEMORY[0x277CBEB98];
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = [v65 setWithObjects:{v66, v67, v68, objc_opt_class(), 0}];
  [v108 setClasses:v69 forSelector:sel_getDisputeDocumentSuggestionsForTransactionId_completion_ argumentIndex:0 ofReply:1];

  v70 = MEMORY[0x277CBEB98];
  v71 = objc_opt_class();
  v72 = objc_opt_class();
  v73 = objc_opt_class();
  v74 = objc_opt_class();
  v75 = objc_opt_class();
  v76 = objc_opt_class();
  v77 = objc_opt_class();
  v78 = [v70 setWithObjects:{v71, v72, v73, v74, v75, v76, v77, objc_opt_class(), 0}];
  [v108 setClasses:v78 forSelector:sel_allInsightsForDateRange_endDate_insightTypeItems_trendWindow_sourceId_accountType_completion_ argumentIndex:0 ofReply:1];

  v79 = MEMORY[0x277CBEB98];
  v80 = objc_opt_class();
  v81 = objc_opt_class();
  v82 = objc_opt_class();
  v83 = [v79 setWithObjects:{v80, v81, v82, objc_opt_class(), 0}];
  [v108 setClasses:v83 forSelector:sel_getTopTransactionCategoriesWithCountryCode_timeWindow_minRegularTransactionRatio_discretizedTimeOfDay_completion_ argumentIndex:0 ofReply:1];

  v84 = MEMORY[0x277CBEB98];
  v85 = objc_opt_class();
  v86 = objc_opt_class();
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = objc_opt_class();
  v90 = [v84 setWithObjects:{v85, v86, v87, v88, v89, objc_opt_class(), 0}];
  [v108 setClasses:v90 forSelector:sel_transactionsByGroupID_completion_ argumentIndex:0 ofReply:1];

  v91 = MEMORY[0x277CBEB98];
  v92 = objc_opt_class();
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  v95 = objc_opt_class();
  v96 = [v91 setWithObjects:{v92, v93, v94, v95, objc_opt_class(), 0}];
  [v108 setClasses:v96 forSelector:sel_predictionsByModelName_modelVersion_completion_ argumentIndex:0 ofReply:1];

  v97 = MEMORY[0x277CBEB98];
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = [v97 setWithObjects:{v98, v99, objc_opt_class(), 0}];
  [v108 setClasses:v100 forSelector:sel_generatePredictionWithModelType_withModelPathComponent_completion_ argumentIndex:0 ofReply:1];

  return v108;
}

- (void)aggregateFeaturesWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__FHSearchSuggestionController_aggregateFeaturesWithHandler___block_invoke;
    v6[3] = &unk_278FFB4A8;
    v7 = v4;
    [(FHSearchSuggestionController *)self aggregateFeaturesWithProcessSource:0 completion:v6];
  }
}

- (void)aggregateFeaturesWithProcessSource:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *MEMORY[0x277D087B8];
  v8 = a3;
  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[FHSearchSuggestionController aggregateFeaturesWithProcessSource:completion:]";
    _os_log_impl(&dword_24ABD8000, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v10 = [(FHSearchSuggestionController *)self _remoteObjectProxyWithErrorHandler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__FHSearchSuggestionController_aggregateFeaturesWithProcessSource_completion___block_invoke;
  v13[3] = &unk_278FFB4A8;
  v14 = v6;
  v11 = v6;
  [v10 aggregateFeaturesWithProcessSource:v8 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __78__FHSearchSuggestionController_aggregateFeaturesWithProcessSource_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_remoteObjectProxyWithErrorHandler
{
  objc_initWeak(&location, self);
  v3 = [(FHSearchSuggestionController *)self _clientConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__FHSearchSuggestionController__remoteObjectProxyWithErrorHandler__block_invoke;
  v6[3] = &unk_278FFB4D0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

void __66__FHSearchSuggestionController__remoteObjectProxyWithErrorHandler__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *MEMORY[0x277D087B8];
  v6 = FinHealthLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 localizedDescription];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = objc_opt_class();
    v8 = v13;
    _os_log_impl(&dword_24ABD8000, v6, OS_LOG_TYPE_DEBUG, "Error getting remote proxy object: %@, [%@]", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (FHSuggestionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end