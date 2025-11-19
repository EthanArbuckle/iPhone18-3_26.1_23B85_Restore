@interface HFAnalyticsDirectObliterateEvent
- (HFAnalyticsDirectObliterateEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsDirectObliterateEvent

- (HFAnalyticsDirectObliterateEvent)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFAnalyticsDirectObliterateEvent;
  v5 = [(HFAnalyticsEvent *)&v9 initWithEventType:56];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"error"];
    [(HFAnalyticsDirectObliterateEvent *)v5 setError:v6];

    v7 = [v4 objectForKeyedSubscript:@"problemFlags"];
    [(HFAnalyticsDirectObliterateEvent *)v5 setProblemFlags:v7];
  }

  return v5;
}

- (id)payload
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HFAnalyticsDirectObliterateEvent *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "code")}];
  [v3 setObject:v6 forKeyedSubscript:@"errorCode"];

  v7 = [(HFAnalyticsDirectObliterateEvent *)self error];
  v8 = [v7 domain];
  [v3 setObject:v8 forKeyedSubscript:@"errorDomain"];

  v9 = [(HFAnalyticsDirectObliterateEvent *)self problemFlags];
  [v3 setObject:v9 forKeyedSubscript:@"problemFlags"];

  v10 = [v3 copy];

  return v10;
}

@end