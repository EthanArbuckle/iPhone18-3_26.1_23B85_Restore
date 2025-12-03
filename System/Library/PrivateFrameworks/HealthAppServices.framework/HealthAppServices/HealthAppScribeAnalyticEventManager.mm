@interface HealthAppScribeAnalyticEventManager
- (id)createEventPayloadWithDataType:(id)type requestCategory:(id)category requestType:(int64_t)requestType requestInterval:(id)interval hourOfDay:(id)day userAction:(id)action hasHealthDataAuthorization:(BOOL)authorization isFirstInvocation:(BOOL)self0;
- (id)createHealthEventPayloadWithDescription:(id)description requestInterval:(id)interval;
- (void)submitEventWithDataType:(id)type requestCategory:(id)category requestType:(int64_t)requestType requestInterval:(id)interval hourOfDay:(id)day userAction:(id)action hasHealthDataAuthorization:(BOOL)authorization isFirstInvocation:(BOOL)self0;
- (void)submitHealthEventWithDescription:(id)description requestInterval:(id)interval;
@end

@implementation HealthAppScribeAnalyticEventManager

- (void)submitEventWithDataType:(id)type requestCategory:(id)category requestType:(int64_t)requestType requestInterval:(id)interval hourOfDay:(id)day userAction:(id)action hasHealthDataAuthorization:(BOOL)authorization isFirstInvocation:(BOOL)self0
{
  LOWORD(v10) = __PAIR16__(invocation, authorization);
  v11 = [(HealthAppScribeAnalyticEventManager *)self createEventPayloadWithDataType:type requestCategory:category requestType:requestType requestInterval:interval hourOfDay:day userAction:action hasHealthDataAuthorization:v10 isFirstInvocation:?];
  AnalyticsSendEvent();
}

- (id)createEventPayloadWithDataType:(id)type requestCategory:(id)category requestType:(int64_t)requestType requestInterval:(id)interval hourOfDay:(id)day userAction:(id)action hasHealthDataAuthorization:(BOOL)authorization isFirstInvocation:(BOOL)self0
{
  typeCopy = type;
  categoryCopy = category;
  dayCopy = day;
  v18 = MEMORY[0x277CBEB38];
  actionCopy = action;
  intervalCopy = interval;
  v21 = objc_alloc_init(v18);
  isImproveHealthAndActivityEnabled = [(HealthAppScribeAnalyticEventManager *)self isImproveHealthAndActivityEnabled];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:isImproveHealthAndActivityEnabled];
  [v21 setObject:v23 forKeyedSubscript:@"isIHA"];

  v24 = @"unknown";
  if (requestType == 1)
  {
    v24 = @"write";
  }

  if (requestType)
  {
    v25 = v24;
  }

  else
  {
    v25 = @"read";
  }

  [v21 setObject:v25 forKeyedSubscript:{@"requestType", typeCopy}];
  [v21 setObject:intervalCopy forKeyedSubscript:@"requestInterval"];

  [v21 setObject:actionCopy forKeyedSubscript:@"userAction"];
  v26 = [MEMORY[0x277CCABB0] numberWithBool:invocation];
  [v21 setObject:v26 forKeyedSubscript:@"isFirstInvocation"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:authorization];
  [v21 setObject:v27 forKeyedSubscript:@"isSiriAuthenticated"];

  if (isImproveHealthAndActivityEnabled)
  {
    identifier = [v31 identifier];
    [v21 setObject:identifier forKeyedSubscript:@"HKDataType"];

    [v21 setObject:categoryCopy forKeyedSubscript:@"requestCategory"];
    [v21 setObject:dayCopy forKeyedSubscript:@"hourOfDay"];
  }

  return v21;
}

- (void)submitHealthEventWithDescription:(id)description requestInterval:(id)interval
{
  v4 = [(HealthAppScribeAnalyticEventManager *)self createHealthEventPayloadWithDescription:description requestInterval:interval];
  AnalyticsSendEvent();
}

- (id)createHealthEventPayloadWithDescription:(id)description requestInterval:(id)interval
{
  descriptionCopy = description;
  v7 = MEMORY[0x277CBEB38];
  intervalCopy = interval;
  v9 = objc_alloc_init(v7);
  isImproveHealthAndActivityEnabled = [(HealthAppScribeAnalyticEventManager *)self isImproveHealthAndActivityEnabled];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:isImproveHealthAndActivityEnabled];
  [v9 setObject:v11 forKeyedSubscript:@"isIHA"];

  [v9 setObject:intervalCopy forKeyedSubscript:@"requestInterval"];
  [v9 setObject:@"health" forKeyedSubscript:@"userAction"];
  if (isImproveHealthAndActivityEnabled)
  {
    [v9 setObject:descriptionCopy forKeyedSubscript:@"HKDataType"];
    v12 = [MEMORY[0x277CBEAA8] now];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v14 = [currentCalendar component:32 fromDate:v12];

    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v14];
    [v9 setObject:v15 forKeyedSubscript:@"hourOfDay"];
  }

  return v9;
}

@end