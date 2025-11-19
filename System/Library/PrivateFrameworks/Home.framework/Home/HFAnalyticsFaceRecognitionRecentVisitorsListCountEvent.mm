@interface HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent
- (HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent

- (HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"faceCropCount"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ErrorObjectFor.isa);
  }

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"clusteredNoNamePersonCount"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    NSLog(&cfstr_ErrorObjectFor_0.isa);
  }

  objc_opt_class();
  v11 = [v4 objectForKeyedSubscript:@"unknownFaceCropCount"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    NSLog(&cfstr_ErrorObjectFor_1.isa);
  }

  v19.receiver = self;
  v19.super_class = HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent;
  v14 = [(HFAnalyticsEvent *)&v19 initWithEventType:7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_faceCropCount, v6);
    objc_storeStrong(&v15->_clusteredNoNamePersonCount, v9);
    objc_storeStrong(&v15->_unknownFaceCropCount, v12);
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue") + objc_msgSend(v10, "unsignedIntegerValue")}];
    unknownPersonCountTotal = v15->_unknownPersonCountTotal;
    v15->_unknownPersonCountTotal = v16;
  }

  return v15;
}

- (id)payload
{
  v10.receiver = self;
  v10.super_class = HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent;
  v3 = [(HFAnalyticsEvent *)&v10 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent *)self faceCropCount];
  [v4 na_safeSetObject:v5 forKey:@"faceCropCount"];

  v6 = [(HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent *)self clusteredNoNamePersonCount];
  [v4 na_safeSetObject:v6 forKey:@"clusteredNoNamePersonCount"];

  v7 = [(HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent *)self unknownFaceCropCount];
  [v4 na_safeSetObject:v7 forKey:@"unknownFaceCropCount"];

  v8 = [(HFAnalyticsFaceRecognitionRecentVisitorsListCountEvent *)self unknownPersonCountTotal];
  [v4 na_safeSetObject:v8 forKey:@"unknownCountIdentityTotal"];

  return v4;
}

@end