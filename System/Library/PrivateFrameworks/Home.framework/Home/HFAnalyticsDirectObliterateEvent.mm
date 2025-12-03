@interface HFAnalyticsDirectObliterateEvent
- (HFAnalyticsDirectObliterateEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsDirectObliterateEvent

- (HFAnalyticsDirectObliterateEvent)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HFAnalyticsDirectObliterateEvent;
  v5 = [(HFAnalyticsEvent *)&v9 initWithEventType:56];
  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:@"error"];
    [(HFAnalyticsDirectObliterateEvent *)v5 setError:v6];

    v7 = [dataCopy objectForKeyedSubscript:@"problemFlags"];
    [(HFAnalyticsDirectObliterateEvent *)v5 setProblemFlags:v7];
  }

  return v5;
}

- (id)payload
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  error = [(HFAnalyticsDirectObliterateEvent *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(error, "code")}];
  [v3 setObject:v6 forKeyedSubscript:@"errorCode"];

  error2 = [(HFAnalyticsDirectObliterateEvent *)self error];
  domain = [error2 domain];
  [v3 setObject:domain forKeyedSubscript:@"errorDomain"];

  problemFlags = [(HFAnalyticsDirectObliterateEvent *)self problemFlags];
  [v3 setObject:problemFlags forKeyedSubscript:@"problemFlags"];

  v10 = [v3 copy];

  return v10;
}

@end