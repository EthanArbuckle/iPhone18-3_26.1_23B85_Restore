@interface InternalXPC.Server
- (void)behaviorUnderstandingEvaluateForBehaviorType:(NSString *)type queryName:(NSString *)name inferenceServiceInstanceId:(NSString *)id completion:(id)completion;
- (void)behaviorUnderstandingFeaturizeBehaviorOfType:(id)type identifier:(id)identifier usingContextAt:(id)at completion:(id)completion;
- (void)behaviorUnderstandingFeaturizedBehaviorsForFeatureName:(id)name behaviorType:(id)type completion:(id)completion;
- (void)behaviorUnderstandingHistogramsOfKind:(id)kind behaviorType:(id)type viewName:(id)name completion:(id)completion;
- (void)behaviorUnderstandingInjectTagForPersonID:(id)d tagType:(id)type confidence:(double)confidence completion:(id)completion;
- (void)behaviorUnderstandingMockEntityRelevanceContextWithDate:(NSDate *)date completion:(id)completion;
- (void)behaviorUnderstandingRecentBehaviorsOfType:(id)type completion:(id)completion;
- (void)behaviorUnderstandingSampleEntityTaggingFeaturesForPersonID:(id)d completion:(id)completion;
- (void)contextDataForSource:(NSString *)source startDate:(NSDate *)date endDate:(NSDate *)endDate completion:(id)completion;
- (void)featureKeys:(id)keys;
- (void)generateActivityCentricLifeEventsFromStartDate:(NSDate *)date toEndDate:(NSDate *)endDate completion:(id)completion;
- (void)photosMetadataWithStartDate:(id)date endDate:(id)endDate maxEvents:(int64_t)events newestFirst:(BOOL)first completion:(id)completion;
- (void)resolveEntityWithRequest:(GDEntityResolutionRequest *)request enableSessionLogging:(BOOL)logging configName:(NSString *)name encodedConfig:(NSString *)config completion:(id)completion;
- (void)runDeltaUpdatePipelineWithSource:(NSString *)source completion:(id)completion;
- (void)triplesQueryWithQuery:(id)query completion:(id)completion;
- (void)vectorSearchBenchmarkWithConfigFilePath:(NSString *)path completion:(id)completion;
- (void)viewInfoWithViewQuery:(GDViewQuery *)query rows:(NSNumber *)rows completion:(id)completion;
- (void)viewSqlWithName:(NSString *)name statement:(NSString *)statement completion:(id)completion;
@end

@implementation InternalXPC.Server

- (void)behaviorUnderstandingRecentBehaviorsOfType:(id)type completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (type)
  {
    v7 = sub_1C4F01138();
    type = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_1C495FE04(v7, type, selfCopy, v6);
  _Block_release(v6);
}

- (void)behaviorUnderstandingFeaturizeBehaviorOfType:(id)type identifier:(id)identifier usingContextAt:(id)at completion:(id)completion
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  v14 = sub_1C4F01138();
  v16 = v15;
  v17 = sub_1C4F01138();
  v19 = v18;
  sub_1C4EF9C78();
  _Block_copy(v13);
  selfCopy = self;
  sub_1C4960E88(v14, v16, v17, v19, v12, selfCopy, v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)behaviorUnderstandingHistogramsOfKind:(id)kind behaviorType:(id)type viewName:(id)name completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_1C4F01138();
  v11 = v10;
  v12 = sub_1C4F01138();
  v14 = v13;
  if (name)
  {
    v15 = sub_1C4F01138();
    name = v16;
  }

  else
  {
    v15 = 0;
  }

  _Block_copy(v8);
  selfCopy = self;
  sub_1C4962C8C(v9, v11, v12, v14, v15, name, selfCopy, v8);
  _Block_release(v8);
}

- (void)behaviorUnderstandingFeaturizedBehaviorsForFeatureName:(id)name behaviorType:(id)type completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_1C4F01138();
  v9 = v8;
  v10 = sub_1C4F01138();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_1C4964488(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
}

- (void)photosMetadataWithStartDate:(id)date endDate:(id)endDate maxEvents:(int64_t)events newestFirst:(BOOL)first completion:(id)completion
{
  firstCopy = first;
  v11 = sub_1C4EF9CD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  v19 = _Block_copy(completion);
  sub_1C4EF9C78();
  sub_1C4EF9C78();
  _Block_copy(v19);
  selfCopy = self;
  sub_1C4965B50(v18, v16, events, firstCopy, selfCopy, v19);
  _Block_release(v19);

  v21 = *(v12 + 8);
  v21(v16, v11);
  v21(v18, v11);
}

- (void)behaviorUnderstandingEvaluateForBehaviorType:(NSString *)type queryName:(NSString *)name inferenceServiceInstanceId:(NSString *)id completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = type;
  v11[3] = name;
  v11[4] = id;
  v11[5] = v10;
  v11[6] = self;
  typeCopy = type;
  nameCopy = name;
  idCopy = id;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3DD30, v11);
}

- (void)behaviorUnderstandingSampleEntityTaggingFeaturesForPersonID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1C4F01138();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1C496937C(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)behaviorUnderstandingMockEntityRelevanceContextWithDate:(NSDate *)date completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = date;
  v7[3] = v6;
  v7[4] = self;
  dateCopy = date;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3DD20, v7);
}

- (void)behaviorUnderstandingInjectTagForPersonID:(id)d tagType:(id)type confidence:(double)confidence completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_1C4F01138();
  v11 = v10;
  v12 = sub_1C4F01138();
  v14 = v13;
  _Block_copy(v8);
  selfCopy = self;
  sub_1C496BB14(v9, v11, v12, v14, confidence, selfCopy, v8);
  _Block_release(v8);
}

- (void)contextDataForSource:(NSString *)source startDate:(NSDate *)date endDate:(NSDate *)endDate completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = source;
  v11[3] = date;
  v11[4] = endDate;
  v11[5] = v10;
  v11[6] = self;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3DF90, v11);
}

- (void)vectorSearchBenchmarkWithConfigFilePath:(NSString *)path completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = path;
  v7[3] = v6;
  v7[4] = self;
  pathCopy = path;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3E618, v7);
}

- (void)resolveEntityWithRequest:(GDEntityResolutionRequest *)request enableSessionLogging:(BOOL)logging configName:(NSString *)name encodedConfig:(NSString *)config completion:(id)completion
{
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = request;
  *(v13 + 24) = logging;
  *(v13 + 32) = name;
  *(v13 + 40) = config;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  requestCopy = request;
  nameCopy = name;
  configCopy = config;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3E988, v13);
}

- (void)generateActivityCentricLifeEventsFromStartDate:(NSDate *)date toEndDate:(NSDate *)endDate completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = date;
  v9[3] = endDate;
  v9[4] = v8;
  v9[5] = self;
  dateCopy = date;
  endDateCopy = endDate;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3ED90, v9);
}

- (void)viewInfoWithViewQuery:(GDViewQuery *)query rows:(NSNumber *)rows completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = query;
  v9[3] = rows;
  v9[4] = v8;
  v9[5] = self;
  queryCopy = query;
  rowsCopy = rows;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3EF88, v9);
}

- (void)viewSqlWithName:(NSString *)name statement:(NSString *)statement completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = name;
  v9[3] = statement;
  v9[4] = v8;
  v9[5] = self;
  nameCopy = name;
  statementCopy = statement;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3EF78, v9);
}

- (void)featureKeys:(id)keys
{
  v4 = _Block_copy(keys);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3EF68, v5);
}

- (void)triplesQueryWithQuery:(id)query completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1C4F00ED8();
  _Block_copy(v5);
  selfCopy = self;
  sub_1C498FD90(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)runDeltaUpdatePipelineWithSource:(NSString *)source completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = source;
  v7[3] = v6;
  v7[4] = self;
  sourceCopy = source;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3F198, v7);
}

@end