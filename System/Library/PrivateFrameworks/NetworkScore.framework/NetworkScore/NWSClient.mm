@interface NWSClient
- (id)prepareRemoteConnection;
- (void)deleteAllNWActivities:(id)a3;
- (void)deleteAllScores:(id)a3;
- (void)deleteAllScoresForBundleID:(id)a3 start:(id)a4 end:(id)a5 completion:(id)a6;
- (void)getAlgosScoreByUUID:(id)a3 completion:(id)a4;
- (void)getAllScoresForBundleID:(id)a3 start:(id)a4 end:(id)a5 completion:(id)a6;
- (void)getAllScoresForBundleIDAndType:(id)a3 type:(int64_t)a4 completion:(id)a5;
- (void)getCountofNWActivityObjects:(id)a3;
- (void)getCountofScoreObjects:(id)a3;
- (void)getCountofScoreObjectsByType:(int64_t)a3 :(id)a4;
- (void)getCountofScoreObjectsForBundleID:(id)a3 completion:(id)a4;
- (void)getCountofScoreObjectsPerBundleID:(id)a3;
- (void)getMostRecentScores:(id)a3;
- (void)getNWActivityByUUID:(id)a3 completion:(id)a4;
@end

@implementation NWSClient

- (void)getCountofScoreObjects:(id)a3
{
  v4 = a3;
  v5 = [(NWSClient *)self prepareRemoteConnection];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__NWSClient_getCountofScoreObjects___block_invoke;
    v7[3] = &unk_27996D100;
    v8 = v4;
    [v5 getTotalAlgosScoreObjectCountWithCompletion:v7];
    v6 = v8;
  }

  else
  {
    v6 = nws_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofScoreObjectsForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NWSClient *)self prepareRemoteConnection];
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__NWSClient_getCountofScoreObjectsForBundleID_completion___block_invoke;
    v10[3] = &unk_27996D100;
    v11 = v7;
    [v8 getTotalAlgosScoreObjectCountForBundleIDWithBundleID:v6 completion:v10];
    v9 = v11;
  }

  else
  {
    v9 = nws_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofScoreObjectsPerBundleID:(id)a3
{
  v4 = a3;
  v5 = [(NWSClient *)self prepareRemoteConnection];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__NWSClient_getCountofScoreObjectsPerBundleID___block_invoke;
    v7[3] = &unk_27996D128;
    v8 = v4;
    [v5 getTotalAlgosScoreObjectCountPerBundleIDWithCompletion:v7];
    v6 = v8;
  }

  else
  {
    v6 = nws_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofScoreObjectsByType:(int64_t)a3 :(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(NWSClient *)self prepareRemoteConnection];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__NWSClient_getCountofScoreObjectsByType::__block_invoke;
    v9[3] = &unk_27996D100;
    v10 = v6;
    [v7 getAlgosScoreObjectCountByTypeWithType:v4 completion:v9];
    v8 = v10;
  }

  else
  {
    v8 = nws_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getAlgosScoreByUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NWSClient *)self prepareRemoteConnection];
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__NWSClient_getAlgosScoreByUUID_completion___block_invoke;
    v10[3] = &unk_27996D150;
    v11 = v7;
    [v8 getAlgosScoreByUUIDWithUuid:v6 completion:v10];
    v9 = v11;
  }

  else
  {
    v9 = nws_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getAllScoresForBundleIDAndType:(id)a3 type:(int64_t)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(NWSClient *)self prepareRemoteConnection];
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__NWSClient_getAllScoresForBundleIDAndType_type_completion___block_invoke;
    v12[3] = &unk_27996D150;
    v13 = v9;
    [v10 getAllAlgosScoreDataForBundleIDAndTypeWithBundleID:v8 type:v6 completion:v12];
    v11 = v13;
  }

  else
  {
    v11 = nws_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getAllScoresForBundleID:(id)a3 start:(id)a4 end:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NWSClient *)self prepareRemoteConnection];
  if (v14)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__NWSClient_getAllScoresForBundleID_start_end_completion___block_invoke;
    v16[3] = &unk_27996D150;
    v17 = v13;
    [v14 getAllAlgosScoreDataForBundleIDWithBundleID:v10 start:v11 end:v12 completion:v16];
    v15 = v17;
  }

  else
  {
    v15 = nws_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getMostRecentScores:(id)a3
{
  v4 = a3;
  v5 = [(NWSClient *)self prepareRemoteConnection];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__NWSClient_getMostRecentScores___block_invoke;
    v7[3] = &unk_27996D150;
    v8 = v4;
    [v5 getMostRecentAlgosScorePerBundleIDWithCompletion:v7];
    v6 = v8;
  }

  else
  {
    v6 = nws_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)deleteAllScores:(id)a3
{
  v4 = a3;
  v5 = [(NWSClient *)self prepareRemoteConnection];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__NWSClient_deleteAllScores___block_invoke;
    v7[3] = &unk_27996D178;
    v8 = v4;
    [v5 deleteAllAlgosScoreDataWithCompletion:v7];
    v6 = v8;
  }

  else
  {
    v6 = nws_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)deleteAllScoresForBundleID:(id)a3 start:(id)a4 end:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NWSClient *)self prepareRemoteConnection];
  if (v14)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__NWSClient_deleteAllScoresForBundleID_start_end_completion___block_invoke;
    v16[3] = &unk_27996D100;
    v17 = v13;
    [v14 deleteAllAlgosScoreDataForBundleIDWithBundleID:v10 start:v11 end:v12 completion:v16];
    v15 = v17;
  }

  else
  {
    v15 = nws_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NWSMetricReporter sendHTTPMetrics:onQueue:];
    }
  }
}

- (void)getCountofNWActivityObjects:(id)a3
{
  v4 = a3;
  v5 = [(NWSClient *)self prepareRemoteConnection];
  if (!v5)
  {
    v6 = nws_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__NWSClient_getCountofNWActivityObjects___block_invoke;
  v8[3] = &unk_27996D100;
  v9 = v4;
  v7 = v4;
  [v5 getTotalNWActivityCountWithCompletion:v8];
}

- (void)getNWActivityByUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NWSClient *)self prepareRemoteConnection];
  if (!v8)
  {
    v9 = nws_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__NWSClient_getNWActivityByUUID_completion___block_invoke;
  v11[3] = &unk_27996D150;
  v12 = v7;
  v10 = v7;
  [v8 getNWActivityByUUIDWithUuid:v6 completion:v11];
}

- (void)deleteAllNWActivities:(id)a3
{
  v4 = a3;
  v5 = [(NWSClient *)self prepareRemoteConnection];
  if (!v5)
  {
    v6 = nws_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NWSClient getCountofNWActivityObjects:];
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__NWSClient_deleteAllNWActivities___block_invoke;
  v8[3] = &unk_27996D178;
  v9 = v4;
  v7 = v4;
  [v5 deleteAllNWActivityDataWithCompletion:v8];
}

- (id)prepareRemoteConnection
{
  v3 = [(NWSClientConnection *)self connection];

  if (!v3)
  {
    [(NWSClientConnection *)self activateConnectionOn:0];
  }

  v4 = [(NWSClientConnection *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NWSClient_prepareRemoteConnection__block_invoke;
  v7[3] = &unk_27996CFE0;
  v7[4] = self;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v7];

  return v5;
}

void __36__NWSClient_prepareRemoteConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nws_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __36__NWSClient_prepareRemoteConnection__block_invoke_cold_1(v3, v4);
  }

  v5 = [*(a1 + 32) connection];
  [v5 invalidate];

  [*(a1 + 32) setConnection:0];
}

void __36__NWSClient_prepareRemoteConnection__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25BA15000, a2, OS_LOG_TYPE_ERROR, "connection failed with error : %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end