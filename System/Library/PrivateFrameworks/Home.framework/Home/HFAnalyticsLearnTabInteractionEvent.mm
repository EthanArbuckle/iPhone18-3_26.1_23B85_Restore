@interface HFAnalyticsLearnTabInteractionEvent
- (HFAnalyticsLearnTabInteractionEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsLearnTabInteractionEvent

- (HFAnalyticsLearnTabInteractionEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"learnInteractionLinkType"];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11.receiver = self;
  v11.super_class = HFAnalyticsLearnTabInteractionEvent;
  v8 = [(HFAnalyticsEvent *)&v11 initWithEventType:8];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interactionType, v6);
  }

  return v9;
}

- (id)payload
{
  v7.receiver = self;
  v7.super_class = HFAnalyticsLearnTabInteractionEvent;
  payload = [(HFAnalyticsEvent *)&v7 payload];
  v4 = [payload mutableCopy];

  interactionType = [(HFAnalyticsLearnTabInteractionEvent *)self interactionType];
  [v4 na_safeSetObject:interactionType forKey:@"linkType"];

  return v4;
}

@end