@interface NWSClient
- (id)prepareRemoteConnection;
- (void)deleteAllNWActivities:(id)activities;
- (void)deleteAllScores:(id)scores;
- (void)deleteAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion;
- (void)getAlgosScoreByUUID:(id)d completion:(id)completion;
- (void)getAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion;
- (void)getAllScoresForBundleIDAndType:(id)type type:(int64_t)a4 completion:(id)completion;
- (void)getCountofNWActivityObjects:(id)objects;
- (void)getCountofScoreObjects:(id)objects;
- (void)getCountofScoreObjectsByType:(int64_t)type :(id)a4;
- (void)getCountofScoreObjectsForBundleID:(id)d completion:(id)completion;
- (void)getCountofScoreObjectsPerBundleID:(id)d;
- (void)getMostRecentScores:(id)scores;
- (void)getNWActivityByUUID:(id)d completion:(id)completion;
@end

@implementation NWSClient

- (void)getCountofScoreObjects:(id)objects
{
  objectsCopy = objects;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__NWSClient_getCountofScoreObjects___block_invoke;
    v7[3] = &unk_27996D100;
    v8 = objectsCopy;
    [prepareRemoteConnection getTotalAlgosScoreObjectCountWithCompletion:v7];
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

- (void)getCountofScoreObjectsForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__NWSClient_getCountofScoreObjectsForBundleID_completion___block_invoke;
    v10[3] = &unk_27996D100;
    v11 = completionCopy;
    [prepareRemoteConnection getTotalAlgosScoreObjectCountForBundleIDWithBundleID:dCopy completion:v10];
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

- (void)getCountofScoreObjectsPerBundleID:(id)d
{
  dCopy = d;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__NWSClient_getCountofScoreObjectsPerBundleID___block_invoke;
    v7[3] = &unk_27996D128;
    v8 = dCopy;
    [prepareRemoteConnection getTotalAlgosScoreObjectCountPerBundleIDWithCompletion:v7];
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

- (void)getCountofScoreObjectsByType:(int64_t)type :(id)a4
{
  typeCopy = type;
  v6 = a4;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__NWSClient_getCountofScoreObjectsByType::__block_invoke;
    v9[3] = &unk_27996D100;
    v10 = v6;
    [prepareRemoteConnection getAlgosScoreObjectCountByTypeWithType:typeCopy completion:v9];
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

- (void)getAlgosScoreByUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__NWSClient_getAlgosScoreByUUID_completion___block_invoke;
    v10[3] = &unk_27996D150;
    v11 = completionCopy;
    [prepareRemoteConnection getAlgosScoreByUUIDWithUuid:dCopy completion:v10];
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

- (void)getAllScoresForBundleIDAndType:(id)type type:(int64_t)a4 completion:(id)completion
{
  v6 = a4;
  typeCopy = type;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__NWSClient_getAllScoresForBundleIDAndType_type_completion___block_invoke;
    v12[3] = &unk_27996D150;
    v13 = completionCopy;
    [prepareRemoteConnection getAllAlgosScoreDataForBundleIDAndTypeWithBundleID:typeCopy type:v6 completion:v12];
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

- (void)getAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion
{
  dCopy = d;
  startCopy = start;
  endCopy = end;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__NWSClient_getAllScoresForBundleID_start_end_completion___block_invoke;
    v16[3] = &unk_27996D150;
    v17 = completionCopy;
    [prepareRemoteConnection getAllAlgosScoreDataForBundleIDWithBundleID:dCopy start:startCopy end:endCopy completion:v16];
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

- (void)getMostRecentScores:(id)scores
{
  scoresCopy = scores;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__NWSClient_getMostRecentScores___block_invoke;
    v7[3] = &unk_27996D150;
    v8 = scoresCopy;
    [prepareRemoteConnection getMostRecentAlgosScorePerBundleIDWithCompletion:v7];
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

- (void)deleteAllScores:(id)scores
{
  scoresCopy = scores;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__NWSClient_deleteAllScores___block_invoke;
    v7[3] = &unk_27996D178;
    v8 = scoresCopy;
    [prepareRemoteConnection deleteAllAlgosScoreDataWithCompletion:v7];
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

- (void)deleteAllScoresForBundleID:(id)d start:(id)start end:(id)end completion:(id)completion
{
  dCopy = d;
  startCopy = start;
  endCopy = end;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (prepareRemoteConnection)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__NWSClient_deleteAllScoresForBundleID_start_end_completion___block_invoke;
    v16[3] = &unk_27996D100;
    v17 = completionCopy;
    [prepareRemoteConnection deleteAllAlgosScoreDataForBundleIDWithBundleID:dCopy start:startCopy end:endCopy completion:v16];
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

- (void)getCountofNWActivityObjects:(id)objects
{
  objectsCopy = objects;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
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
  v9 = objectsCopy;
  v7 = objectsCopy;
  [prepareRemoteConnection getTotalNWActivityCountWithCompletion:v8];
}

- (void)getNWActivityByUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
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
  v12 = completionCopy;
  v10 = completionCopy;
  [prepareRemoteConnection getNWActivityByUUIDWithUuid:dCopy completion:v11];
}

- (void)deleteAllNWActivities:(id)activities
{
  activitiesCopy = activities;
  prepareRemoteConnection = [(NWSClient *)self prepareRemoteConnection];
  if (!prepareRemoteConnection)
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
  v9 = activitiesCopy;
  v7 = activitiesCopy;
  [prepareRemoteConnection deleteAllNWActivityDataWithCompletion:v8];
}

- (id)prepareRemoteConnection
{
  connection = [(NWSClientConnection *)self connection];

  if (!connection)
  {
    [(NWSClientConnection *)self activateConnectionOn:0];
  }

  connection2 = [(NWSClientConnection *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NWSClient_prepareRemoteConnection__block_invoke;
  v7[3] = &unk_27996CFE0;
  v7[4] = self;
  v5 = [connection2 remoteObjectProxyWithErrorHandler:v7];

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