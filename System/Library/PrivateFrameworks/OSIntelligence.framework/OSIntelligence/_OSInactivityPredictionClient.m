@interface _OSInactivityPredictionClient
- (BOOL)hasEnoughInactivityHistory;
- (BOOL)overrideRecommendedWaitTimeTo:(double)a3;
- (BOOL)restoreInactivityModel;
- (BOOL)restoreRecommendedWaitTime;
- (_OSInactivityPredictionClient)init;
- (double)recommendedWaitTime;
- (id)backedUpData;
- (id)deviceUsageDiagnosis;
- (id)fixModelOutput:(id)a3;
- (id)inactivityHistoryDiagnosis;
- (id)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withError:(id *)a6;
- (id)longInactivityPredictionResultWithOptions:(int64_t)a3 withError:(id *)a4;
- (id)modelDescription;
- (id)modelMetadata;
- (id)unfixModelOutput;
- (id)validConnection;
- (void)backedUpDataWithHandler:(id)a3;
- (void)dealloc;
- (void)deviceUsageDiagnosisWithHandler:(id)a3;
- (void)fixModelOutput:(id)a3 withHandler:(id)a4;
- (void)handleInterruption;
- (void)hasEnoughInactivityHistoryWithHandler:(id)a3;
- (void)inactivityHistoryDiagnosisWithHandler:(id)a3;
- (void)initConnection;
- (void)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withHandler:(id)a6;
- (void)longInactivityPredictionResultWithOptions:(int64_t)a3 withHandler:(id)a4;
- (void)modelDescriptionWithHandler:(id)a3;
- (void)modelMetadataWithHandler:(id)a3;
- (void)overrideRecommendedWaitTimeTo:(double)a3 withHandler:(id)a4;
- (void)recommendedWaitTimeWithHandler:(id)a3;
- (void)restoreInactivityModelWithHandler:(id)a3;
- (void)restoreRecommendedWaitTimeWithHandler:(id)a3;
- (void)unfixModelOutputWithHandler:(id)a3;
@end

@implementation _OSInactivityPredictionClient

- (_OSInactivityPredictionClient)init
{
  v6.receiver = self;
  v6.super_class = _OSInactivityPredictionClient;
  v2 = [(_OSInactivityPredictionClient *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "inactivity.predictionclient");
    v4 = gInactivityPredictionClientLog;
    gInactivityPredictionClientLog = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    [(_OSInactivityPredictionClient *)v2 initConnection];
  }

  return v2;
}

- (void)initConnection
{
  v18[6] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.OSIntelligence" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286EBC6C8];
  v6 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v18[3] = objc_opt_class();
  v18[4] = objc_opt_class();
  v18[5] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:6];
  v8 = [v6 setWithArray:v7];
  [v5 setClasses:v8 forSelector:sel_backedUpDataWithHandler_ argumentIndex:0 ofReply:1];

  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47___OSInactivityPredictionClient_initConnection__block_invoke;
  v15[3] = &unk_2799C1528;
  objc_copyWeak(&v16, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v15];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __47___OSInactivityPredictionClient_initConnection__block_invoke_85;
  v13 = &unk_2799C1528;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:&v10];
  [(NSXPCConnection *)self->_connection resume:v10];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleInterruption
{
  v3 = gInactivityPredictionClientLog;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    [(_OSInactivityPredictionClient *)v3 handleInterruption];
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
    [(_OSInactivityPredictionClient *)self initConnection];
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
  v4.super_class = _OSInactivityPredictionClient;
  [(_OSInactivityPredictionClient *)&v4 dealloc];
}

- (double)recommendedWaitTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52___OSInactivityPredictionClient_recommendedWaitTime__block_invoke_89;
  v6[3] = &unk_2799C18A8;
  v6[4] = &v7;
  [v3 recommendedWaitTimeWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)modelDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_92];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49___OSInactivityPredictionClient_modelDescription__block_invoke_93;
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
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_96];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46___OSInactivityPredictionClient_modelMetadata__block_invoke_97;
  v6[3] = &unk_2799C1B80;
  v6[4] = &v7;
  [v3 modelMetadataWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)hasEnoughInactivityHistory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_100];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59___OSInactivityPredictionClient_hasEnoughInactivityHistory__block_invoke_101;
  v5[3] = &unk_2799C18F8;
  v5[4] = &v6;
  [v3 hasEnoughInactivityHistoryWithHandler:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (id)inactivityHistoryDiagnosis
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_104];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___OSInactivityPredictionClient_inactivityHistoryDiagnosis__block_invoke_105;
  v6[3] = &unk_2799C15F0;
  v6[4] = &v7;
  [v3 inactivityHistoryDiagnosisWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)deviceUsageDiagnosis
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_107];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___OSInactivityPredictionClient_deviceUsageDiagnosis__block_invoke_108;
  v6[3] = &unk_2799C15F0;
  v6[4] = &v7;
  [v3 deviceUsageDiagnosisWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)longInactivityPredictionResultWithOptions:(int64_t)a3 withError:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withError___block_invoke;
  v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v11[4] = a3;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withError___block_invoke_110;
  v10[3] = &unk_2799C1BC8;
  v10[4] = &v18;
  v10[5] = &v12;
  [v7 longInactivityPredictionResultWithOptions:a3 withHandler:v10];

  if (a4)
  {
    *a4 = v13[5];
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

- (id)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withError:(id *)a6
{
  v10 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v11 = [(_OSInactivityPredictionClient *)self validConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __114___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withError___block_invoke;
  v17[3] = &unk_2799C1BF0;
  v19 = a5;
  v12 = v10;
  v18 = v12;
  v20 = a4;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withError___block_invoke_112;
  v16[3] = &unk_2799C1BC8;
  v16[4] = &v27;
  v16[5] = &v21;
  [v13 longInactivityPredictionResultAtDate:v12 withTimeSinceInactive:a5 withOptions:v16 withHandler:a4];

  if (a6)
  {
    *a6 = v22[5];
  }

  v14 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

- (id)fixModelOutput:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v5 = [(_OSInactivityPredictionClient *)self validConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_114_0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48___OSInactivityPredictionClient_fixModelOutput___block_invoke_115;
  v9[3] = &unk_2799C15F0;
  v9[4] = &v10;
  [v6 fixModelOutput:v4 withHandler:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)unfixModelOutput
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_117_0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49___OSInactivityPredictionClient_unfixModelOutput__block_invoke_118;
  v6[3] = &unk_2799C15F0;
  v6[4] = &v7;
  [v3 unfixModelOutputWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)overrideRecommendedWaitTimeTo:(double)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_120_0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63___OSInactivityPredictionClient_overrideRecommendedWaitTimeTo___block_invoke_121;
  v7[3] = &unk_2799C18F8;
  v7[4] = &v8;
  [v5 overrideRecommendedWaitTimeTo:v7 withHandler:a3];

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (BOOL)restoreRecommendedWaitTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_123_0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59___OSInactivityPredictionClient_restoreRecommendedWaitTime__block_invoke_124;
  v5[3] = &unk_2799C18F8;
  v5[4] = &v6;
  [v3 restoreRecommendedWaitTimeWithHandler:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)restoreInactivityModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_126];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55___OSInactivityPredictionClient_restoreInactivityModel__block_invoke_127;
  v5[3] = &unk_2799C18F8;
  v5[4] = &v6;
  [v3 restoreInactivityModelWithHandler:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (id)backedUpData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = [(_OSInactivityPredictionClient *)self validConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_129_0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45___OSInactivityPredictionClient_backedUpData__block_invoke_130;
  v6[3] = &unk_2799C1C18;
  v6[4] = &v7;
  [v3 backedUpDataWithHandler:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)recommendedWaitTimeWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_133_0];
  [v5 recommendedWaitTimeWithHandler:v4];
}

- (void)modelDescriptionWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_135_0];
  [v5 modelDescriptionWithHandler:v4];
}

- (void)modelMetadataWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_137_0];
  [v5 modelMetadataWithHandler:v4];
}

- (void)inactivityHistoryDiagnosisWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_139_0];
  [v5 inactivityHistoryDiagnosisWithHandler:v4];
}

- (void)hasEnoughInactivityHistoryWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_141];
  [v5 hasEnoughInactivityHistoryWithHandler:v4];
}

- (void)deviceUsageDiagnosisWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_143];
  [v5 deviceUsageDiagnosisWithHandler:v4];
}

- (void)longInactivityPredictionResultWithOptions:(int64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [(_OSInactivityPredictionClient *)self validConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withHandler___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v8 = [v7 remoteObjectProxyWithErrorHandler:v9];
  [v8 longInactivityPredictionResultWithOptions:a3 withHandler:v6];
}

- (void)longInactivityPredictionResultAtDate:(id)a3 withTimeSinceInactive:(double)a4 withOptions:(int64_t)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(_OSInactivityPredictionClient *)self validConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __116___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withHandler___block_invoke;
  v15[3] = &unk_2799C1BF0;
  v16 = v10;
  v17 = a5;
  v18 = a4;
  v13 = v10;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v15];
  [v14 longInactivityPredictionResultAtDate:v13 withTimeSinceInactive:a5 withOptions:v11 withHandler:a4];
}

- (void)fixModelOutput:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(_OSInactivityPredictionClient *)self validConnection];
  v8 = [v9 remoteObjectProxyWithErrorHandler:&__block_literal_global_145];
  [v8 fixModelOutput:v7 withHandler:v6];
}

- (void)unfixModelOutputWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_147];
  [v5 unfixModelOutputWithHandler:v4];
}

- (void)overrideRecommendedWaitTimeTo:(double)a3 withHandler:(id)a4
{
  v6 = a4;
  v8 = [(_OSInactivityPredictionClient *)self validConnection];
  v7 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_149];
  [v7 overrideRecommendedWaitTimeTo:v6 withHandler:a3];
}

- (void)restoreRecommendedWaitTimeWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_151];
  [v5 restoreRecommendedWaitTimeWithHandler:v4];
}

- (void)restoreInactivityModelWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_153];
  [v5 restoreInactivityModelWithHandler:v4];
}

- (void)backedUpDataWithHandler:(id)a3
{
  v4 = a3;
  v6 = [(_OSInactivityPredictionClient *)self validConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_155];
  [v5 backedUpDataWithHandler:v4];
}

@end