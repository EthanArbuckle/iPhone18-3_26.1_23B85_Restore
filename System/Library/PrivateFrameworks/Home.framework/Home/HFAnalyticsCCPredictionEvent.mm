@interface HFAnalyticsCCPredictionEvent
+ (void)sendMetricsForPredictionEventAtStage:(unint64_t)stage withCount:(unint64_t)count;
- (HFAnalyticsCCPredictionEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsCCPredictionEvent

- (HFAnalyticsCCPredictionEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"predictionStage"];
  integerValue = [v5 integerValue];

  if (!integerValue)
  {
    NSLog(&cfstr_Hfanalyticsccp.isa);
  }

  v7 = [dataCopy objectForKeyedSubscript:@"predictionCount"];
  integerValue2 = [v7 integerValue];

  v12.receiver = self;
  v12.super_class = HFAnalyticsCCPredictionEvent;
  v9 = [(HFAnalyticsEvent *)&v12 initWithEventType:1];
  v10 = v9;
  if (v9)
  {
    v9->_predictionStage = integerValue;
    v9->_predictionCount = integerValue2;
  }

  return v10;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsCCPredictionEvent;
  payload = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [payload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFAnalyticsCCPredictionEvent predictionStage](self, "predictionStage")}];
  [v4 setObject:v5 forKeyedSubscript:@"predictionStage"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFAnalyticsCCPredictionEvent predictionCount](self, "predictionCount")}];
  [v4 setObject:v6 forKeyedSubscript:@"predictionCount"];

  return v4;
}

+ (void)sendMetricsForPredictionEventAtStage:(unint64_t)stage withCount:(unint64_t)count
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stage];
  [dictionary setObject:v6 forKeyedSubscript:@"predictionStage"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [dictionary setObject:v7 forKeyedSubscript:@"predictionCount"];

  [HFAnalytics sendEvent:1 withData:dictionary];
}

@end