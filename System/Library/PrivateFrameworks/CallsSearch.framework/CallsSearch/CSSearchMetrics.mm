@interface CSSearchMetrics
+ (id)shared;
- (NSDictionary)searchLatencyDict;
- (NSDictionary)startTimeDict;
- (void)logSearchBarTap;
- (void)logSearchLatency;
- (void)searchFinishedForController:(unsigned int)controller startTime:(id)time searchLength:(int64_t)length resultsCount:(int64_t)count;
- (void)setSearchLatencyDict:(id)dict;
- (void)setStartTimeDict:(id)dict;
@end

@implementation CSSearchMetrics

- (NSDictionary)startTimeDict
{
  v2 = *(self + OBJC_IVAR___CSSearchMetrics_startTimeDict);
  sub_1CFB5D38C(0, &qword_1EE04BCE8, 0x1E695DF00);

  v3 = sub_1CFB8FA30();

  return v3;
}

- (void)setStartTimeDict:(id)dict
{
  sub_1CFB5D38C(0, &qword_1EE04BCE8, 0x1E695DF00);
  v4 = sub_1CFB8FA40();
  v5 = *(self + OBJC_IVAR___CSSearchMetrics_startTimeDict);
  *(self + OBJC_IVAR___CSSearchMetrics_startTimeDict) = v4;
}

- (NSDictionary)searchLatencyDict
{
  v2 = *(self + OBJC_IVAR___CSSearchMetrics_searchLatencyDict);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
  v3 = sub_1CFB8FA30();

  return v3;
}

- (void)setSearchLatencyDict:(id)dict
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
  v4 = sub_1CFB8FA40();
  v5 = *(self + OBJC_IVAR___CSSearchMetrics_searchLatencyDict);
  *(self + OBJC_IVAR___CSSearchMetrics_searchLatencyDict) = v4;
}

+ (id)shared
{
  if (qword_1EE04BD40 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE04BD48;

  return v3;
}

- (void)logSearchBarTap
{
  selfCopy = self;
  analyticsLogger = [(CSSearchMetrics *)selfCopy analyticsLogger];
  v3 = sub_1CFB8FA80();
  [(MPAnalyticsLogger *)analyticsLogger logEvent:v3];
}

- (void)searchFinishedForController:(unsigned int)controller startTime:(id)time searchLength:(int64_t)length resultsCount:(int64_t)count
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC588, &qword_1CFB92050);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  if (time)
  {
    sub_1CFB8F6C0();
    v15 = sub_1CFB8F6F0();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_1CFB8F6F0();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  selfCopy = self;
  CSSearchMetrics.searchFinished(forController:startTime:searchLength:resultsCount:)(controller, v14, length, count);

  sub_1CFB5DDDC(v14, &qword_1EC4EC588, &qword_1CFB92050);
}

- (void)logSearchLatency
{
  selfCopy = self;
  sub_1CFB6A798();
}

@end