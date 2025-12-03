@interface ATXHeroDataClient
- (ATXHeroDataClient)init;
- (void)addConfirmForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)addHardRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)addSoftRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)dealloc;
- (void)donateHeroAppPredictions:(id)predictions completion:(id)completion;
- (void)feedbackScoreForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)getCurrentHeroPoiCategoryWithCompletion:(id)completion;
- (void)openAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
@end

@implementation ATXHeroDataClient

- (ATXHeroDataClient)init
{
  v7.receiver = self;
  v7.super_class = ATXHeroDataClient;
  v2 = [(ATXHeroDataClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.proactive.hero.AppPrediction.predictions" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = ATXHeroDataXPCInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __25__ATXHeroDataClient_init__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __25__ATXHeroDataClient_init__block_invoke_cold_1();
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXHeroDataClient;
  [(ATXHeroDataClient *)&v3 dealloc];
}

- (void)donateHeroAppPredictions:(id)predictions completion:(id)completion
{
  completionCopy = completion;
  v7 = &__block_literal_global_5;
  if (completionCopy)
  {
    v7 = completionCopy;
  }

  xpcConnection = self->_xpcConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2;
  v12[3] = &unk_27970A238;
  v13 = v7;
  v9 = v7;
  predictionsCopy = predictions;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 donateHeroAppPredictions:predictionsCopy completion:v9];
}

void __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)addConfirmForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  v7 = &__block_literal_global_7;
  if (completionCopy)
  {
    v7 = completionCopy;
  }

  xpcConnection = self->_xpcConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ATXHeroDataClient_addConfirmForAppClipWithHeroAppPrediction_completion___block_invoke_2;
  v12[3] = &unk_27970A238;
  v13 = v7;
  v9 = v7;
  predictionCopy = prediction;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 addConfirmForAppClipWithHeroAppPrediction:predictionCopy completion:v9];
}

void __74__ATXHeroDataClient_addConfirmForAppClipWithHeroAppPrediction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)addSoftRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  v7 = &__block_literal_global_9;
  if (completionCopy)
  {
    v7 = completionCopy;
  }

  xpcConnection = self->_xpcConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ATXHeroDataClient_addSoftRejectForAppClipWithHeroAppPrediction_completion___block_invoke_2;
  v12[3] = &unk_27970A238;
  v13 = v7;
  v9 = v7;
  predictionCopy = prediction;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 addSoftRejectForAppClipWithHeroAppPrediction:predictionCopy completion:v9];
}

void __77__ATXHeroDataClient_addSoftRejectForAppClipWithHeroAppPrediction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)addHardRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  v7 = &__block_literal_global_11;
  if (completionCopy)
  {
    v7 = completionCopy;
  }

  xpcConnection = self->_xpcConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ATXHeroDataClient_addHardRejectForAppClipWithHeroAppPrediction_completion___block_invoke_2;
  v12[3] = &unk_27970A238;
  v13 = v7;
  v9 = v7;
  predictionCopy = prediction;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 addHardRejectForAppClipWithHeroAppPrediction:predictionCopy completion:v9];
}

void __77__ATXHeroDataClient_addHardRejectForAppClipWithHeroAppPrediction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)feedbackScoreForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  v7 = &__block_literal_global_14;
  if (completionCopy)
  {
    v7 = completionCopy;
  }

  xpcConnection = self->_xpcConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ATXHeroDataClient_feedbackScoreForAppClipWithHeroAppPrediction_completion___block_invoke_2;
  v12[3] = &unk_27970A238;
  v13 = v7;
  v9 = v7;
  predictionCopy = prediction;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 feedbackScoreForAppClipWithHeroAppPrediction:predictionCopy completion:v9];
}

void __77__ATXHeroDataClient_feedbackScoreForAppClipWithHeroAppPrediction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))(0.0);
}

- (void)openAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  v7 = &__block_literal_global_16;
  if (completionCopy)
  {
    v7 = completionCopy;
  }

  xpcConnection = self->_xpcConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ATXHeroDataClient_openAppClipWithHeroAppPrediction_completion___block_invoke_2;
  v12[3] = &unk_27970A238;
  v13 = v7;
  v9 = v7;
  predictionCopy = prediction;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 openAppClipWithHeroAppPrediction:predictionCopy completion:v9];
}

void __65__ATXHeroDataClient_openAppClipWithHeroAppPrediction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getCurrentHeroPoiCategoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = &__block_literal_global_19;
  if (completionCopy)
  {
    v5 = completionCopy;
  }

  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ATXHeroDataClient_getCurrentHeroPoiCategoryWithCompletion___block_invoke_2;
  v9[3] = &unk_27970A238;
  v10 = v5;
  v7 = v5;
  v8 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v9];
  [v8 getCurrentHeroPoiCategoryWithCompletion:v7];
}

void __61__ATXHeroDataClient_getCurrentHeroPoiCategoryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __57__ATXHeroDataClient_donateHeroAppPredictions_completion___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_252300000, MEMORY[0x277D86220], v0, "Error: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end