@interface InternalXPC.Server
- (void)behaviorUnderstandingEvaluateForBehaviorType:(NSString *)a3 queryName:(NSString *)a4 inferenceServiceInstanceId:(NSString *)a5 completion:(id)a6;
- (void)behaviorUnderstandingFeaturizeBehaviorOfType:(id)a3 identifier:(id)a4 usingContextAt:(id)a5 completion:(id)a6;
- (void)behaviorUnderstandingFeaturizedBehaviorsForFeatureName:(id)a3 behaviorType:(id)a4 completion:(id)a5;
- (void)behaviorUnderstandingHistogramsOfKind:(id)a3 behaviorType:(id)a4 viewName:(id)a5 completion:(id)a6;
- (void)behaviorUnderstandingInjectTagForPersonID:(id)a3 tagType:(id)a4 confidence:(double)a5 completion:(id)a6;
- (void)behaviorUnderstandingMockEntityRelevanceContextWithDate:(NSDate *)a3 completion:(id)a4;
- (void)behaviorUnderstandingRecentBehaviorsOfType:(id)a3 completion:(id)a4;
- (void)behaviorUnderstandingSampleEntityTaggingFeaturesForPersonID:(id)a3 completion:(id)a4;
- (void)contextDataForSource:(NSString *)a3 startDate:(NSDate *)a4 endDate:(NSDate *)a5 completion:(id)a6;
- (void)featureKeys:(id)a3;
- (void)generateActivityCentricLifeEventsFromStartDate:(NSDate *)a3 toEndDate:(NSDate *)a4 completion:(id)a5;
- (void)photosMetadataWithStartDate:(id)a3 endDate:(id)a4 maxEvents:(int64_t)a5 newestFirst:(BOOL)a6 completion:(id)a7;
- (void)resolveEntityWithRequest:(GDEntityResolutionRequest *)a3 enableSessionLogging:(BOOL)a4 configName:(NSString *)a5 encodedConfig:(NSString *)a6 completion:(id)a7;
- (void)runDeltaUpdatePipelineWithSource:(NSString *)a3 completion:(id)a4;
- (void)triplesQueryWithQuery:(id)a3 completion:(id)a4;
- (void)vectorSearchBenchmarkWithConfigFilePath:(NSString *)a3 completion:(id)a4;
- (void)viewInfoWithViewQuery:(GDViewQuery *)a3 rows:(NSNumber *)a4 completion:(id)a5;
- (void)viewSqlWithName:(NSString *)a3 statement:(NSString *)a4 completion:(id)a5;
@end

@implementation InternalXPC.Server

- (void)behaviorUnderstandingRecentBehaviorsOfType:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = sub_1C4F01138();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_1C495FE04(v7, a3, v9, v6);
  _Block_release(v6);
}

- (void)behaviorUnderstandingFeaturizeBehaviorOfType:(id)a3 identifier:(id)a4 usingContextAt:(id)a5 completion:(id)a6
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a6);
  v14 = sub_1C4F01138();
  v16 = v15;
  v17 = sub_1C4F01138();
  v19 = v18;
  sub_1C4EF9C78();
  _Block_copy(v13);
  v20 = self;
  sub_1C4960E88(v14, v16, v17, v19, v12, v20, v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)behaviorUnderstandingHistogramsOfKind:(id)a3 behaviorType:(id)a4 viewName:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_1C4F01138();
  v11 = v10;
  v12 = sub_1C4F01138();
  v14 = v13;
  if (a5)
  {
    v15 = sub_1C4F01138();
    a5 = v16;
  }

  else
  {
    v15 = 0;
  }

  _Block_copy(v8);
  v17 = self;
  sub_1C4962C8C(v9, v11, v12, v14, v15, a5, v17, v8);
  _Block_release(v8);
}

- (void)behaviorUnderstandingFeaturizedBehaviorsForFeatureName:(id)a3 behaviorType:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1C4F01138();
  v9 = v8;
  v10 = sub_1C4F01138();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_1C4964488(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
}

- (void)photosMetadataWithStartDate:(id)a3 endDate:(id)a4 maxEvents:(int64_t)a5 newestFirst:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v11 = sub_1C4EF9CD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  v19 = _Block_copy(a7);
  sub_1C4EF9C78();
  sub_1C4EF9C78();
  _Block_copy(v19);
  v20 = self;
  sub_1C4965B50(v18, v16, a5, v8, v20, v19);
  _Block_release(v19);

  v21 = *(v12 + 8);
  v21(v16, v11);
  v21(v18, v11);
}

- (void)behaviorUnderstandingEvaluateForBehaviorType:(NSString *)a3 queryName:(NSString *)a4 inferenceServiceInstanceId:(NSString *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_1C446D134(&unk_1C4F3DD30, v11);
}

- (void)behaviorUnderstandingSampleEntityTaggingFeaturesForPersonID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C4F01138();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1C496937C(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)behaviorUnderstandingMockEntityRelevanceContextWithDate:(NSDate *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1C446D134(&unk_1C4F3DD20, v7);
}

- (void)behaviorUnderstandingInjectTagForPersonID:(id)a3 tagType:(id)a4 confidence:(double)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_1C4F01138();
  v11 = v10;
  v12 = sub_1C4F01138();
  v14 = v13;
  _Block_copy(v8);
  v15 = self;
  sub_1C496BB14(v9, v11, v12, v14, a5, v15, v8);
  _Block_release(v8);
}

- (void)contextDataForSource:(NSString *)a3 startDate:(NSDate *)a4 endDate:(NSDate *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_1C446D134(&unk_1C4F3DF90, v11);
}

- (void)vectorSearchBenchmarkWithConfigFilePath:(NSString *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1C446D134(&unk_1C4F3E618, v7);
}

- (void)resolveEntityWithRequest:(GDEntityResolutionRequest *)a3 enableSessionLogging:(BOOL)a4 configName:(NSString *)a5 encodedConfig:(NSString *)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = self;

  sub_1C446D134(&unk_1C4F3E988, v13);
}

- (void)generateActivityCentricLifeEventsFromStartDate:(NSDate *)a3 toEndDate:(NSDate *)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1C446D134(&unk_1C4F3ED90, v9);
}

- (void)viewInfoWithViewQuery:(GDViewQuery *)a3 rows:(NSNumber *)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1C446D134(&unk_1C4F3EF88, v9);
}

- (void)viewSqlWithName:(NSString *)a3 statement:(NSString *)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1C446D134(&unk_1C4F3EF78, v9);
}

- (void)featureKeys:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1C446D134(&unk_1C4F3EF68, v5);
}

- (void)triplesQueryWithQuery:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C4F00ED8();
  _Block_copy(v5);
  v7 = self;
  sub_1C498FD90(v6, v7, v5);
  _Block_release(v5);
}

- (void)runDeltaUpdatePipelineWithSource:(NSString *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1C446D134(&unk_1C4F3F198, v7);
}

@end