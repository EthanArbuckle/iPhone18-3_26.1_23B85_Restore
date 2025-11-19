@interface CSSearchMetrics
+ (id)shared;
- (NSDictionary)searchLatencyDict;
- (NSDictionary)startTimeDict;
- (void)logSearchBarTap;
- (void)logSearchLatency;
- (void)searchFinishedForController:(unsigned int)a3 startTime:(id)a4 searchLength:(int64_t)a5 resultsCount:(int64_t)a6;
- (void)setSearchLatencyDict:(id)a3;
- (void)setStartTimeDict:(id)a3;
@end

@implementation CSSearchMetrics

- (NSDictionary)startTimeDict
{
  v2 = *(self + OBJC_IVAR___CSSearchMetrics_startTimeDict);
  sub_1CFB5D38C(0, &qword_1EE04BCE8, 0x1E695DF00);

  v3 = sub_1CFB8FA30();

  return v3;
}

- (void)setStartTimeDict:(id)a3
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

- (void)setSearchLatencyDict:(id)a3
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
  v4 = self;
  v2 = [(CSSearchMetrics *)v4 analyticsLogger];
  v3 = sub_1CFB8FA80();
  [(MPAnalyticsLogger *)v2 logEvent:v3];
}

- (void)searchFinishedForController:(unsigned int)a3 startTime:(id)a4 searchLength:(int64_t)a5 resultsCount:(int64_t)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC588, &qword_1CFB92050);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  if (a4)
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

  v17 = self;
  CSSearchMetrics.searchFinished(forController:startTime:searchLength:resultsCount:)(a3, v14, a5, a6);

  sub_1CFB5DDDC(v14, &qword_1EC4EC588, &qword_1CFB92050);
}

- (void)logSearchLatency
{
  v2 = self;
  sub_1CFB6A798();
}

@end