@interface GDXPCInternalService
- (BOOL)behaviorUnderstandingClearEntityTaggingInjectedTagsWithError:(id *)error;
- (BOOL)behaviorUnderstandingInjectTagForPersonID:(id)d tagType:(id)type confidence:(double)confidence error:(id *)error;
- (BOOL)behaviorUnderstandingMockEntityRelevanceContextWithDate:(id)date error:(id *)error;
- (BOOL)benchmarkWithError:(id *)error;
- (BOOL)clearStatusWithError:(id *)error;
- (BOOL)runDeltaUpdatePipelineWithSource:(id)source error:(id *)error;
- (BOOL)runToMatchingPipelineWithError:(id *)error;
- (BOOL)stopPipelineWithError:(id *)error;
- (GDXPCInternalService)init;
- (id)behaviorUnderstandingEvaluateForBehaviorType:(id)type queryName:(id)name inferenceServiceInstanceId:(id)id error:(id *)error;
- (id)behaviorUnderstandingFeaturizeBehaviorOfType:(id)type identifier:(id)identifier usingContextAt:(id)at error:(id *)error;
- (id)behaviorUnderstandingFeaturizedBehaviorsForFeatureName:(id)name behaviorType:(id)type error:(id *)error;
- (id)behaviorUnderstandingHistogramsOfKind:(id)kind behaviorType:(id)type viewName:(id)name error:(id *)error;
- (id)behaviorUnderstandingRecentBehaviorsOfType:(id)type error:(id *)error;
- (id)behaviorUnderstandingSampleEntityTaggingFeaturesForPersonID:(id)d error:(id *)error;
- (id)behaviorUnderstandingShowEntityTaggingInjectedTagsWithError:(id *)error;
- (id)behaviorUnderstandingStatusWithError:(id *)error;
- (id)contextDataForSource:(id)source startDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)featureKeysWithError:(id *)error;
- (id)generateActivityCentricLifeEventsFromStartDate:(id)date toEndDate:(id)endDate error:(id *)error;
- (id)statsWithError:(id *)error;
- (id)statusWithError:(id *)error;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)triplesQueryWithQuery:(id)query;
- (id)validateGraph:(id *)graph;
- (id)vectorSearchBenchmarkWithConfigFilePath:(id)path error:(id *)error;
- (id)viewInfoWithViewQuery:(id)query rows:(id)rows error:(id *)error;
- (id)viewSqlWithName:(id)name statement:(id)statement error:(id *)error;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCInternalService

- (id)featureKeysWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF14434;
  v17 = sub_1ABF14444;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEBUG, "GDXPCInternalService: featureKeysWithError called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1444C;
  v11[3] = &unk_1E79628C8;
  v11[4] = &v13;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF14518;
  v10[3] = &unk_1E79625F0;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 featureKeys:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)viewSqlWithName:(id)name statement:(id)statement error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  statementCopy = statement;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1ABF14434;
  v31 = sub_1ABF14444;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1ABF14434;
  v25 = sub_1ABF14444;
  v26 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = nameCopy;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewSql called [name=%@].", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1ABF1484C;
  v18[3] = &unk_1E79626B8;
  v11 = nameCopy;
  v19 = v11;
  v20 = &v21;
  v12 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF14928;
  v17[3] = &unk_1E79627E8;
  v17[4] = &v27;
  v17[5] = &v21;
  [v12 viewSqlWithName:v11 statement:statementCopy completion:v17];

  v13 = v28[5];
  if (error && !v13)
  {
    *error = v22[5];
    v13 = v28[5];
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)viewInfoWithViewQuery:(id)query rows:(id)rows error:(id *)error
{
  queryCopy = query;
  rowsCopy = rows;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1ABF14434;
  v28 = sub_1ABF14444;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF14434;
  v22 = sub_1ABF14444;
  v23 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewInfo called.", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF14C14;
  v16[3] = &unk_1E79628C8;
  v16[4] = &v18;
  v11 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1ABF14CE0;
  v15[3] = &unk_1E79625F0;
  v15[4] = &v24;
  v15[5] = &v18;
  [v11 viewInfoWithViewQuery:queryCopy rows:rowsCopy completion:v15];

  v12 = v25[5];
  if (error && !v12)
  {
    *error = v19[5];
    v12 = v25[5];
  }

  v13 = v12;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v13;
}

- (BOOL)behaviorUnderstandingClearEntityTaggingInjectedTagsWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF14434;
  v16 = sub_1ABF14444;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding clearEntityTaggingInjectedTags called.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF14F64;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF15048;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 behaviorUnderstandingClearEntityTaggingInjectedTagsWithCompletion:v9];
  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (id)behaviorUnderstandingShowEntityTaggingInjectedTagsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF14434;
  v17 = sub_1ABF14444;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding showEntityTaggingInjectedTags called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF152A0;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1538C;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 behaviorUnderstandingShowEntityTaggingInjectedTagsWithCompletion:v10];
  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (BOOL)behaviorUnderstandingInjectTagForPersonID:(id)d tagType:(id)type confidence:(double)confidence error:(id *)error
{
  dCopy = d;
  typeCopy = type;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v12 = GDXPCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v12, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding injectTagForPerson called.", buf, 2u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF15644;
  v17[3] = &unk_1E7962878;
  v17[4] = &v19;
  v17[5] = &v25;
  v13 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF15728;
  v16[3] = &unk_1E79628A0;
  v16[4] = &v25;
  v16[5] = &v19;
  [v13 behaviorUnderstandingInjectTagForPersonID:dCopy tagType:typeCopy confidence:v16 completion:confidence];
  v14 = *(v26 + 24);
  if (error && (v26[3] & 1) == 0)
  {
    *error = v20[5];
    v14 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v14 & 1;
}

- (BOOL)behaviorUnderstandingMockEntityRelevanceContextWithDate:(id)date error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1ABF14434;
  v18 = sub_1ABF14444;
  v19 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = dateCopy;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding mockEntityRelevanceContext called with date: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1ABF15994;
  v13[3] = &unk_1E7962878;
  v13[4] = &v14;
  v13[5] = &v20;
  v8 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF15A78;
  v12[3] = &unk_1E79628A0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 behaviorUnderstandingMockEntityRelevanceContextWithDate:dateCopy completion:v12];

  v9 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v9 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

- (id)generateActivityCentricLifeEventsFromStartDate:(id)date toEndDate:(id)endDate error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1ABF14434;
  v28 = sub_1ABF14444;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF14434;
  v22 = sub_1ABF14444;
  v23 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = dateCopy;
    v32 = 2112;
    v33 = endDateCopy;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: generateActivityCentricLifeEvents called [startDate: %@, endDate: %@].", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF15D4C;
  v17[3] = &unk_1E7962878;
  v17[4] = &v18;
  v17[5] = &v24;
  v11 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF15E38;
  v16[3] = &unk_1E79625F0;
  v16[4] = &v24;
  v16[5] = &v18;
  [v11 generateActivityCentricLifeEventsFromStartDate:dateCopy toEndDate:endDateCopy completion:v16];

  v12 = v25[5];
  if (error && !v12)
  {
    *error = v19[5];
    v12 = v25[5];
  }

  v13 = v12;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)behaviorUnderstandingSampleEntityTaggingFeaturesForPersonID:(id)d error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1ABF14434;
  v29 = sub_1ABF14444;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = dCopy;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding sampleEntityTaggingFeatures called [personID=%@].", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1ABF1615C;
  v15[3] = &unk_1E79625C8;
  v8 = dCopy;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  v9 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1ABF16258;
  v14[3] = &unk_1E79627E8;
  v14[4] = &v25;
  v14[5] = &v19;
  [v9 behaviorUnderstandingSampleEntityTaggingFeaturesForPersonID:v8 completion:v14];

  v10 = v26[5];
  if (error && !v10)
  {
    *error = v20[5];
    v10 = v26[5];
  }

  v11 = v10;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)behaviorUnderstandingEvaluateForBehaviorType:(id)type queryName:(id)name inferenceServiceInstanceId:(id)id error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  nameCopy = name;
  idCopy = id;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1ABF14434;
  v39 = sub_1ABF14444;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1ABF14434;
  v33 = sub_1ABF14444;
  v34 = 0;
  v13 = GDXPCLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = typeCopy;
    v43 = 2112;
    v44 = nameCopy;
    v45 = 2112;
    v46 = idCopy;
    _os_log_impl(&dword_1ABA78000, v13, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding evaluate called [behaviorType=%@, queryName=%@, inferenceServiceInstanceId=%@].", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1ABF165EC;
  v23[3] = &unk_1E7962618;
  v14 = typeCopy;
  v24 = v14;
  v15 = nameCopy;
  v25 = v15;
  v16 = idCopy;
  v26 = v16;
  v27 = &v29;
  v28 = &v35;
  v17 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1ABF166FC;
  v22[3] = &unk_1E79627B0;
  v22[4] = &v35;
  v22[5] = &v29;
  [v17 behaviorUnderstandingEvaluateForBehaviorType:v14 queryName:v15 inferenceServiceInstanceId:v16 completion:v22];

  v18 = v36[5];
  if (error && !v18)
  {
    *error = v30[5];
    v18 = v36[5];
  }

  v19 = v18;

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)contextDataForSource:(id)source startDate:(id)date endDate:(id)endDate error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1ABF14434;
  v39 = sub_1ABF14444;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1ABF14434;
  v33 = sub_1ABF14444;
  v34 = 0;
  v13 = GDXPCLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = dateCopy;
    v43 = 2112;
    v44 = endDateCopy;
    v45 = 2112;
    v46 = sourceCopy;
    _os_log_impl(&dword_1ABA78000, v13, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: ContextData fetch called [startDate=%@, endDate=%@, source=%@].", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1ABF16F4C;
  v23[3] = &unk_1E7962618;
  v14 = dateCopy;
  v24 = v14;
  v15 = endDateCopy;
  v25 = v15;
  v16 = sourceCopy;
  v26 = v16;
  v27 = &v29;
  v28 = &v35;
  v17 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1ABF1705C;
  v22[3] = &unk_1E79627E8;
  v22[4] = &v35;
  v22[5] = &v29;
  [v17 contextDataForSource:v16 startDate:v14 endDate:v15 completion:v22];

  v18 = v36[5];
  if (error && !v18)
  {
    *error = v30[5];
    v18 = v36[5];
  }

  v19 = v18;

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)behaviorUnderstandingFeaturizedBehaviorsForFeatureName:(id)name behaviorType:(id)type error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1ABF14434;
  v34 = sub_1ABF14444;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1ABF14434;
  v28 = sub_1ABF14444;
  v29 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = nameCopy;
    v38 = 2112;
    v39 = typeCopy;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding featurizedBehaviors called [featureName=%@, behaviorType=%@].", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1ABF173C0;
  v19[3] = &unk_1E7962640;
  v11 = nameCopy;
  v20 = v11;
  v12 = typeCopy;
  v21 = v12;
  v22 = &v24;
  v23 = &v30;
  v13 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1ABF174C4;
  v18[3] = &unk_1E7962668;
  v18[4] = &v30;
  v18[5] = &v24;
  [v13 behaviorUnderstandingFeaturizedBehaviorsForFeatureName:v11 behaviorType:v12 completion:v18];

  v14 = v31[5];
  if (error && !v14)
  {
    *error = v25[5];
    v14 = v31[5];
  }

  v15 = v14;

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)behaviorUnderstandingHistogramsOfKind:(id)kind behaviorType:(id)type viewName:(id)name error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  typeCopy = type;
  nameCopy = name;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1ABF14434;
  v37 = sub_1ABF14444;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1ABF14434;
  v31 = sub_1ABF14444;
  v32 = 0;
  v13 = GDXPCLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = kindCopy;
    v41 = 2112;
    v42 = typeCopy;
    _os_log_impl(&dword_1ABA78000, v13, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding histograms called [kind=%@, behaviorType=%@].", buf, 0x16u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1ABF1783C;
  v22[3] = &unk_1E7962640;
  v14 = kindCopy;
  v23 = v14;
  v15 = typeCopy;
  v24 = v15;
  v25 = &v27;
  v26 = &v33;
  v16 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1ABF17940;
  v21[3] = &unk_1E7962668;
  v21[4] = &v33;
  v21[5] = &v27;
  [v16 behaviorUnderstandingHistogramsOfKind:v14 behaviorType:v15 viewName:nameCopy completion:v21];

  v17 = v34[5];
  if (error && !v17)
  {
    *error = v28[5];
    v17 = v34[5];
  }

  v18 = v17;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)behaviorUnderstandingFeaturizeBehaviorOfType:(id)type identifier:(id)identifier usingContextAt:(id)at error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  atCopy = at;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1ABF14434;
  v39 = sub_1ABF14444;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1ABF14434;
  v33 = sub_1ABF14444;
  v34 = 0;
  v13 = GDXPCLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = typeCopy;
    v43 = 2112;
    v44 = identifierCopy;
    v45 = 2112;
    v46 = atCopy;
    _os_log_impl(&dword_1ABA78000, v13, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding featurizeBehavior called [type=%@, identifier=%@, date=%@].", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1ABF17CD4;
  v23[3] = &unk_1E7962618;
  v14 = typeCopy;
  v24 = v14;
  v15 = identifierCopy;
  v25 = v15;
  v16 = atCopy;
  v26 = v16;
  v27 = &v29;
  v28 = &v35;
  v17 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1ABF17DE4;
  v22[3] = &unk_1E79627B0;
  v22[4] = &v35;
  v22[5] = &v29;
  [v17 behaviorUnderstandingFeaturizeBehaviorOfType:v14 identifier:v15 usingContextAt:v16 completion:v22];

  v18 = v36[5];
  if (error && !v18)
  {
    *error = v30[5];
    v18 = v36[5];
  }

  v19 = v18;

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)behaviorUnderstandingRecentBehaviorsOfType:(id)type error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1ABF14434;
  v29 = sub_1ABF14444;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = typeCopy;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding recentBehaviorsOfType called [type=%@].", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1ABF18108;
  v15[3] = &unk_1E79625C8;
  v8 = typeCopy;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  v9 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1ABF18204;
  v14[3] = &unk_1E79625F0;
  v14[4] = &v25;
  v14[5] = &v19;
  [v9 behaviorUnderstandingRecentBehaviorsOfType:v8 completion:v14];

  v10 = v26[5];
  if (error && !v10)
  {
    *error = v20[5];
    v10 = v26[5];
  }

  v11 = v10;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)behaviorUnderstandingStatusWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF14434;
  v17 = sub_1ABF14444;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: Behavior Understanding Status called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF18AF4;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF18BE0;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 behaviorUnderstandingStatusWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)vectorSearchBenchmarkWithConfigFilePath:(id)path error:(id *)error
{
  pathCopy = path;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1ABF14434;
  v25 = sub_1ABF14444;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1ABF14434;
  v19 = sub_1ABF14444;
  v20 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: vectorSearchBenchmark called.", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1ABF192EC;
  v13[3] = &unk_1E7962878;
  v13[4] = &v15;
  v13[5] = &v21;
  v8 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF193D8;
  v12[3] = &unk_1E79627E8;
  v12[4] = &v21;
  v12[5] = &v15;
  [v8 vectorSearchBenchmarkWithConfigFilePath:pathCopy completion:v12];

  v9 = v22[5];
  if (error && !v9)
  {
    *error = v16[5];
    v9 = v22[5];
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v10;
}

- (id)validateGraph:(id *)graph
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF14434;
  v17 = sub_1ABF14444;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: validateGraph called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF19698;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF19784;
  v10[3] = &unk_1E79627B0;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 validateGraphWithCompletion:v10];

  v7 = v20[5];
  if (graph && v7)
  {
    *graph = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (BOOL)benchmarkWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF14434;
  v16 = sub_1ABF14444;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: benchmark called.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF19A08;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF19AEC;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 benchmarkWithCompletion:v9];

  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (BOOL)runToMatchingPipelineWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF14434;
  v16 = sub_1ABF14444;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: runToMatchingPipeline called.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF19D08;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF19DEC;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 runToMatchingPipelineWithCompletion:v9];

  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (BOOL)runDeltaUpdatePipelineWithSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1ABF14434;
  v18 = sub_1ABF14444;
  v19 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: runDeltaUpdatePipeline called.", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF1A020;
  v12[3] = &unk_1E7962878;
  v12[4] = &v14;
  v12[5] = &v20;
  v8 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1A104;
  v11[3] = &unk_1E79628A0;
  v11[4] = &v20;
  v11[5] = &v14;
  [v8 runDeltaUpdatePipelineWithSource:sourceCopy completion:v11];

  v9 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v9 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v9 & 1;
}

- (BOOL)stopPipelineWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF14434;
  v16 = sub_1ABF14444;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: stopPipeline called.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1A320;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF1A404;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 stopPipelineWithCompletion:v9];
  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (id)triplesQueryWithQuery:(id)query
{
  queryCopy = query;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1ABF14434;
  v15 = sub_1ABF14444;
  v16 = objc_opt_new();
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: triplesQuery called.", buf, 2u);
  }

  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:&unk_1F20A1CD8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF1A5B4;
  v9[3] = &unk_1E7962578;
  v9[4] = &v11;
  [v6 triplesQueryWithQuery:queryCopy completion:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (id)statsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF14434;
  v17 = sub_1ABF14444;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: stats called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1A910;
  v11[3] = &unk_1E79628C8;
  v11[4] = &v13;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1A9DC;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 statsWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (BOOL)clearStatusWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF14434;
  v16 = sub_1ABF14444;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: clearStatus called.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1AC60;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF1AD44;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 clearStatusWithCompletion:v9];

  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (id)statusWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF14434;
  v23 = sub_1ABF14444;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF14434;
  v17 = sub_1ABF14444;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: status called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1AF9C;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCInternalService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1B088;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 statusWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCInternalService *)selfCopy locked_establishConnection];
  v6 = [(NSXPCConnection *)selfCopy->_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)locked_establishConnection
{
  if (!self->_connection)
  {
    v3 = GDXPCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.Internal" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1CB8];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF1B2F4;
    v6[3] = &unk_1E7962850;
    objc_copyWeak(&v7, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = GDXPCInternalService;
  [(GDXPCInternalService *)&v3 dealloc];
}

- (GDXPCInternalService)init
{
  v21.receiver = self;
  v21.super_class = GDXPCInternalService;
  v2 = [(GDXPCInternalService *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E64B0];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;

    v5 = v2->_serverInterface;
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v7 initWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    [(NSXPCInterface *)v5 setClasses:v13 forSelector:sel_statsWithCompletion_ argumentIndex:0 ofReply:1];

    v14 = v2->_serverInterface;
    v15 = objc_autoreleasePoolPush();
    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 initWithObjects:{v17, v18, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v15);
    [(NSXPCInterface *)v14 setClasses:v19 forSelector:sel_featureKeys_ argumentIndex:0 ofReply:1];
  }

  return v2;
}

@end