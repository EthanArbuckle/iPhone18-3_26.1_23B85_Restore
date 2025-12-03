@interface _OSLastLockPredictionClient
- (BOOL)hasEnoughActivityHistory;
- (BOOL)overrideRecommendedRequeryTimeTo:(double)to;
- (BOOL)restoreLastLockModel;
- (BOOL)restoreRecommendedRequeryTime;
- (_OSLastLockPredictionClient)init;
- (double)recommendedRequeryTime;
- (id)activityHistoryDiagnosis;
- (id)deviceUsageDiagnosis;
- (id)fixModelOutput:(id)output;
- (id)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withError:(id *)error;
- (id)lastLockPredictionResultWithError:(id *)error;
- (id)modelDescription;
- (id)modelMetadata;
- (id)unfixModelOutput;
- (id)validConnection;
- (void)activityHistoryDiagnosisWithHandler:(id)handler;
- (void)dealloc;
- (void)deviceUsageDiagnosisWithHandler:(id)handler;
- (void)fixModelOutput:(id)output withHandler:(id)handler;
- (void)handleInterruption;
- (void)hasEnoughActivityHistoryWithHandler:(id)handler;
- (void)initConnection;
- (void)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withHandler:(id)handler;
- (void)lastLockPredictionResultWithHandler:(id)handler;
- (void)modelDescriptionWithHandler:(id)handler;
- (void)modelMetadataWithHandler:(id)handler;
- (void)overrideRecommendedRequeryTimeTo:(double)to withHandler:(id)handler;
- (void)recommendedRequeryTimeWithHandler:(id)handler;
- (void)restoreLastLockModelWithHandler:(id)handler;
- (void)restoreRecommendedRequeryTimeWithHandler:(id)handler;
- (void)unfixModelOutputWithHandler:(id)handler;
@end

@implementation _OSLastLockPredictionClient

- (_OSLastLockPredictionClient)init
{
  v6.receiver = self;
  v6.super_class = _OSLastLockPredictionClient;
  v2 = [(_OSLastLockPredictionClient *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "lastLock.predictionclient");
    v4 = gLastLockPredictionClientLog;
    gLastLockPredictionClientLog = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    [(_OSLastLockPredictionClient *)v2 initConnection];
  }

  return v2;
}

- (void)initConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.OSIntelligence.lastlock" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286EBB178];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45___OSLastLockPredictionClient_initConnection__block_invoke;
  v8[3] = &unk_2799C1528;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45___OSLastLockPredictionClient_initConnection__block_invoke_72;
  v6[3] = &unk_2799C1528;
  objc_copyWeak(&v7, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v6];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleInterruption
{
  v3 = gLastLockPredictionClientLog;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    [(_OSLastLockPredictionClient *)v3 handleInterruption];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)validConnection
{
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (!connection)
  {
    [(_OSLastLockPredictionClient *)self initConnection];
    connection = self->_connection;
  }

  v4 = connection;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = _OSLastLockPredictionClient;
  [(_OSLastLockPredictionClient *)&v4 dealloc];
}

- (double)recommendedRequeryTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___OSLastLockPredictionClient_recommendedRequeryTime__block_invoke_76;
  v6[3] = &unk_2799C18A8;
  v6[4] = &v7;
  [v3 recommendedRequeryTimeWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)modelDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_79];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47___OSLastLockPredictionClient_modelDescription__block_invoke_80;
  v6[3] = &unk_2799C15F0;
  v6[4] = &v7;
  [v3 modelDescriptionWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)modelMetadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_83];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44___OSLastLockPredictionClient_modelMetadata__block_invoke_84;
  v6[3] = &unk_2799C18D0;
  v6[4] = &v7;
  [v3 modelMetadataWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)hasEnoughActivityHistory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_87];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55___OSLastLockPredictionClient_hasEnoughActivityHistory__block_invoke_88;
  v5[3] = &unk_2799C18F8;
  v5[4] = &v6;
  [v3 hasEnoughActivityHistoryWithHandler:v5];

  LOBYTE(validConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return validConnection;
}

- (id)activityHistoryDiagnosis
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_91];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___OSLastLockPredictionClient_activityHistoryDiagnosis__block_invoke_92;
  v6[3] = &unk_2799C15F0;
  v6[4] = &v7;
  [v3 activityHistoryDiagnosisWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)deviceUsageDiagnosis
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_94];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51___OSLastLockPredictionClient_deviceUsageDiagnosis__block_invoke_95;
  v6[3] = &unk_2799C15F0;
  v6[4] = &v7;
  [v3 deviceUsageDiagnosisWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)lastLockPredictionResultWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_97];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___OSLastLockPredictionClient_lastLockPredictionResultWithError___block_invoke_98;
  v8[3] = &unk_2799C1920;
  v8[4] = &v15;
  v8[5] = &v9;
  [v5 lastLockPredictionResultWithHandler:v8];

  if (error)
  {
    *error = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

- (id)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withError:(id *)error
{
  dateCopy = date;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withError___block_invoke;
  v15[3] = &unk_2799C1690;
  v10 = dateCopy;
  v16 = v10;
  activeCopy = active;
  v11 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withError___block_invoke_100;
  v14[3] = &unk_2799C1920;
  v14[4] = &v24;
  v14[5] = &v18;
  [v11 lastLockPredictionResultAtDate:v10 withTimeSinceActive:v14 withHandler:active];

  if (error)
  {
    *error = v19[5];
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (id)fixModelOutput:(id)output
{
  outputCopy = output;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v6 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_102];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___OSLastLockPredictionClient_fixModelOutput___block_invoke_103;
  v9[3] = &unk_2799C15F0;
  v9[4] = &v10;
  [v6 fixModelOutput:outputCopy withHandler:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)unfixModelOutput
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_105];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47___OSLastLockPredictionClient_unfixModelOutput__block_invoke_106;
  v6[3] = &unk_2799C15F0;
  v6[4] = &v7;
  [v3 unfixModelOutputWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)overrideRecommendedRequeryTimeTo:(double)to
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_108];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___OSLastLockPredictionClient_overrideRecommendedRequeryTimeTo___block_invoke_109;
  v7[3] = &unk_2799C18F8;
  v7[4] = &v8;
  [v5 overrideRecommendedRequeryTimeTo:v7 withHandler:to];

  LOBYTE(validConnection) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return validConnection;
}

- (BOOL)restoreRecommendedRequeryTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_111];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60___OSLastLockPredictionClient_restoreRecommendedRequeryTime__block_invoke_112;
  v5[3] = &unk_2799C18F8;
  v5[4] = &v6;
  [v3 restoreRecommendedRequeryTimeWithHandler:v5];

  LOBYTE(validConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return validConnection;
}

- (BOOL)restoreLastLockModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v3 = [validConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_114];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___OSLastLockPredictionClient_restoreLastLockModel__block_invoke_115;
  v5[3] = &unk_2799C18F8;
  v5[4] = &v6;
  [v3 restoreLastLockModelWithHandler:v5];

  LOBYTE(validConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return validConnection;
}

- (void)recommendedRequeryTimeWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_117];
  [v5 recommendedRequeryTimeWithHandler:handlerCopy];
}

- (void)modelDescriptionWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_119];
  [v5 modelDescriptionWithHandler:handlerCopy];
}

- (void)modelMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_121];
  [v5 modelMetadataWithHandler:handlerCopy];
}

- (void)activityHistoryDiagnosisWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_123];
  [v5 activityHistoryDiagnosisWithHandler:handlerCopy];
}

- (void)hasEnoughActivityHistoryWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_125];
  [v5 hasEnoughActivityHistoryWithHandler:handlerCopy];
}

- (void)deviceUsageDiagnosisWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_127];
  [v5 deviceUsageDiagnosisWithHandler:handlerCopy];
}

- (void)lastLockPredictionResultWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_129];
  [v5 lastLockPredictionResultWithHandler:handlerCopy];
}

- (void)lastLockPredictionResultAtDate:(id)date withTimeSinceActive:(double)active withHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __94___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withHandler___block_invoke;
  v16 = &unk_2799C1690;
  v17 = dateCopy;
  activeCopy = active;
  v11 = dateCopy;
  v12 = [validConnection remoteObjectProxyWithErrorHandler:&v13];
  [v12 lastLockPredictionResultAtDate:v11 withTimeSinceActive:handlerCopy withHandler:{active, v13, v14, v15, v16}];
}

- (void)fixModelOutput:(id)output withHandler:(id)handler
{
  handlerCopy = handler;
  outputCopy = output;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v8 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_131];
  [v8 fixModelOutput:outputCopy withHandler:handlerCopy];
}

- (void)unfixModelOutputWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_133];
  [v5 unfixModelOutputWithHandler:handlerCopy];
}

- (void)overrideRecommendedRequeryTimeTo:(double)to withHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v7 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_135];
  [v7 overrideRecommendedRequeryTimeTo:handlerCopy withHandler:to];
}

- (void)restoreRecommendedRequeryTimeWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_137];
  [v5 restoreRecommendedRequeryTimeWithHandler:handlerCopy];
}

- (void)restoreLastLockModelWithHandler:(id)handler
{
  handlerCopy = handler;
  validConnection = [(_OSLastLockPredictionClient *)self validConnection];
  v5 = [validConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_139];
  [v5 restoreLastLockModelWithHandler:handlerCopy];
}

@end