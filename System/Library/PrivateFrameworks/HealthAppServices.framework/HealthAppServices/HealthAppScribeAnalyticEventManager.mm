@interface HealthAppScribeAnalyticEventManager
- (id)createEventPayloadWithDataType:(id)a3 requestCategory:(id)a4 requestType:(int64_t)a5 requestInterval:(id)a6 hourOfDay:(id)a7 userAction:(id)a8 hasHealthDataAuthorization:(BOOL)a9 isFirstInvocation:(BOOL)a10;
- (id)createHealthEventPayloadWithDescription:(id)a3 requestInterval:(id)a4;
- (void)submitEventWithDataType:(id)a3 requestCategory:(id)a4 requestType:(int64_t)a5 requestInterval:(id)a6 hourOfDay:(id)a7 userAction:(id)a8 hasHealthDataAuthorization:(BOOL)a9 isFirstInvocation:(BOOL)a10;
- (void)submitHealthEventWithDescription:(id)a3 requestInterval:(id)a4;
@end

@implementation HealthAppScribeAnalyticEventManager

- (void)submitEventWithDataType:(id)a3 requestCategory:(id)a4 requestType:(int64_t)a5 requestInterval:(id)a6 hourOfDay:(id)a7 userAction:(id)a8 hasHealthDataAuthorization:(BOOL)a9 isFirstInvocation:(BOOL)a10
{
  LOWORD(v10) = __PAIR16__(a10, a9);
  v11 = [(HealthAppScribeAnalyticEventManager *)self createEventPayloadWithDataType:a3 requestCategory:a4 requestType:a5 requestInterval:a6 hourOfDay:a7 userAction:a8 hasHealthDataAuthorization:v10 isFirstInvocation:?];
  AnalyticsSendEvent();
}

- (id)createEventPayloadWithDataType:(id)a3 requestCategory:(id)a4 requestType:(int64_t)a5 requestInterval:(id)a6 hourOfDay:(id)a7 userAction:(id)a8 hasHealthDataAuthorization:(BOOL)a9 isFirstInvocation:(BOOL)a10
{
  v30 = a3;
  v16 = a4;
  v17 = a7;
  v18 = MEMORY[0x277CBEB38];
  v19 = a8;
  v20 = a6;
  v21 = objc_alloc_init(v18);
  v22 = [(HealthAppScribeAnalyticEventManager *)self isImproveHealthAndActivityEnabled];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v22];
  [v21 setObject:v23 forKeyedSubscript:@"isIHA"];

  v24 = @"unknown";
  if (a5 == 1)
  {
    v24 = @"write";
  }

  if (a5)
  {
    v25 = v24;
  }

  else
  {
    v25 = @"read";
  }

  [v21 setObject:v25 forKeyedSubscript:{@"requestType", v30}];
  [v21 setObject:v20 forKeyedSubscript:@"requestInterval"];

  [v21 setObject:v19 forKeyedSubscript:@"userAction"];
  v26 = [MEMORY[0x277CCABB0] numberWithBool:a10];
  [v21 setObject:v26 forKeyedSubscript:@"isFirstInvocation"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:a9];
  [v21 setObject:v27 forKeyedSubscript:@"isSiriAuthenticated"];

  if (v22)
  {
    v28 = [v31 identifier];
    [v21 setObject:v28 forKeyedSubscript:@"HKDataType"];

    [v21 setObject:v16 forKeyedSubscript:@"requestCategory"];
    [v21 setObject:v17 forKeyedSubscript:@"hourOfDay"];
  }

  return v21;
}

- (void)submitHealthEventWithDescription:(id)a3 requestInterval:(id)a4
{
  v4 = [(HealthAppScribeAnalyticEventManager *)self createHealthEventPayloadWithDescription:a3 requestInterval:a4];
  AnalyticsSendEvent();
}

- (id)createHealthEventPayloadWithDescription:(id)a3 requestInterval:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB38];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [(HealthAppScribeAnalyticEventManager *)self isImproveHealthAndActivityEnabled];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [v9 setObject:v11 forKeyedSubscript:@"isIHA"];

  [v9 setObject:v8 forKeyedSubscript:@"requestInterval"];
  [v9 setObject:@"health" forKeyedSubscript:@"userAction"];
  if (v10)
  {
    [v9 setObject:v6 forKeyedSubscript:@"HKDataType"];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [MEMORY[0x277CBEA80] currentCalendar];
    v14 = [v13 component:32 fromDate:v12];

    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v14];
    [v9 setObject:v15 forKeyedSubscript:@"hourOfDay"];
  }

  return v9;
}

@end