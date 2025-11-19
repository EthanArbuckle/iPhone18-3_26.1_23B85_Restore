@interface HFAnalyticsCCPredictionEvent
+ (void)sendMetricsForPredictionEventAtStage:(unint64_t)a3 withCount:(unint64_t)a4;
- (HFAnalyticsCCPredictionEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsCCPredictionEvent

- (HFAnalyticsCCPredictionEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"predictionStage"];
  v6 = [v5 integerValue];

  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsccp.isa);
  }

  v7 = [v4 objectForKeyedSubscript:@"predictionCount"];
  v8 = [v7 integerValue];

  v12.receiver = self;
  v12.super_class = HFAnalyticsCCPredictionEvent;
  v9 = [(HFAnalyticsEvent *)&v12 initWithEventType:1];
  v10 = v9;
  if (v9)
  {
    v9->_predictionStage = v6;
    v9->_predictionCount = v8;
  }

  return v10;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsCCPredictionEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFAnalyticsCCPredictionEvent predictionStage](self, "predictionStage")}];
  [v4 setObject:v5 forKeyedSubscript:@"predictionStage"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFAnalyticsCCPredictionEvent predictionCount](self, "predictionCount")}];
  [v4 setObject:v6 forKeyedSubscript:@"predictionCount"];

  return v4;
}

+ (void)sendMetricsForPredictionEventAtStage:(unint64_t)a3 withCount:(unint64_t)a4
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v8 setObject:v6 forKeyedSubscript:@"predictionStage"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v8 setObject:v7 forKeyedSubscript:@"predictionCount"];

  [HFAnalytics sendEvent:1 withData:v8];
}

@end